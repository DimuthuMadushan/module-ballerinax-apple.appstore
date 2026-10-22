#!/usr/bin/env python3
"""
Remove every deprecated operation from a connector's original spec, and the components it orphans.

Run this against the ORIGINAL spec (`docs/spec/openapi.*`), before the generating-connectors
skill aligns it, so flatten, align and generation carry the removal everywhere after. Record the
run as one numbered item in `docs/spec/sanitations.md`; the report's `removed_operations` is the
list that item names.

    python3 prune_deprecated.py --repo module-ballerinax-foo --dry-run      # what would go
    python3 prune_deprecated.py --repo module-ballerinax-foo                # apply
    python3 prune_deprecated.py --spec path/to/openapi.yaml --json
    python3 prune_deprecated.py --repo ... --path-regex 'gameCenter' --dry-run   # scope out an area
    python3 prune_deprecated.py --repo ... --all --dry-run                  # every deprecated thing

What goes:
  * every operation with `deprecated: true` — or, with `--path-regex` (repeatable), instead every
    operation whose path matches any of the patterns (case-insensitive `re.search`), whether
    deprecated or not. Use it only when the user has scoped an area out of the connector;
  * with `--all`, also everything else marked `deprecated: true`, to a fixed point (JSON specs only):
      - deprecated `components.schemas` entries, and any component schema that comes to depend on
        one through `allOf`, `items` or a union left with no members;
      - deprecated properties at any depth, and every property whose schema `$ref`s a removed
        schema (directly or through `items`/`allOf`), with its `required` entry; an inline object
        left with no properties goes with the property holding it;
      - `oneOf`/`anyOf` members and `discriminator.mapping` entries pointing at removed schemas
        (a union left empty is itself removed; a single-member union is kept as it is);
      - deprecated parameters (inline, path-level, or `$ref`s to a deprecated component parameter);
      - any operation that can no longer be described: a removed `in: path` parameter, a request
        body with no media type left, or a response whose schema was removed. These are reported
        as `cascaded_operations`, separately from the deprecated ones;
  * a path item left with no operations (its path-level `parameters`, `summary`, … with it);
  * entries of `components.schemas`, `responses`, `parameters`, `requestBodies`, `headers`,
    `examples` and `links` that no longer reach from anything kept, following `$ref` chains and
    discriminator `mapping` values to a fixed point. `securitySchemes`, top-level `security`,
    `tags`, `servers` and every `x-` extension stay as they are;
  * a components section left empty.

Formatting: YAML is edited in place line by line from PyYAML's node positions, so every kept line
stays byte-identical (comments and blank lines directly above a kept key stay with it). JSON is
re-dumped only when a round trip reproduces the file byte for byte (else it refuses). Either way
the written file is re-parsed and data-compared with the expected pruned document; any difference
refuses and writes nothing.

Exit codes: 0 done (or nothing to remove), 1 refused or failed, 2 bad arguments.
"""

from __future__ import annotations

import argparse
import copy
import json
import re
import sys
from pathlib import Path

import yaml

METHODS = ("get", "put", "post", "delete", "patch", "head", "options", "trace")
PRUNABLE = ("schemas", "responses", "parameters", "requestBodies", "headers", "examples", "links")


class _Loader(yaml.SafeLoader):
    """SafeLoader without the timestamp resolver, so unquoted dates stay strings."""


_Loader.yaml_implicit_resolvers = {
    k: [r for r in v if r[0] != "tag:yaml.org,2002:timestamp"]
    for k, v in yaml.SafeLoader.yaml_implicit_resolvers.items()}


# =============================================================================
# planning (format-independent)
# =============================================================================

def refs_in(node, out: set):
    """Collect every local `#/components/<section>/<name>` reached directly from `node`."""
    if isinstance(node, dict):
        for k, v in node.items():
            if k == "$ref" and isinstance(v, str):
                out.add(v)
            elif k == "mapping" and isinstance(v, dict):
                out.update(x for x in v.values() if isinstance(x, str))
                refs_in(v, out)  # a property can be named `mapping` too
            else:
                refs_in(v, out)
    elif isinstance(node, list):
        for x in node:
            refs_in(x, out)


def component_key(ref: str):
    parts = ref.split("/")
    if len(parts) >= 4 and parts[0] == "#" and parts[1] == "components":
        name = parts[3].replace("~1", "/").replace("~0", "~")
        return parts[2], name
    return None


class DeepPrune:
    """`--all`: remove every deprecated schema, property and parameter from `doc`, in place."""

    def __init__(self, doc: dict):
        self.doc = doc
        self.comps = doc.get("components") or {}
        schemas = self.comps.get("schemas") or {}
        self.dead = {n for n, s in schemas.items() if isinstance(s, dict) and s.get("deprecated") is True}
        self.deprecated_schemas = sorted(self.dead)
        self.cascaded_schemas = []
        self.properties, self.union_members, self.mapping_entries = [], [], []
        self.parameters, self.cascaded_ops = [], []

    def is_dead_ref(self, ref) -> bool:
        if not isinstance(ref, str):
            return False
        key = component_key(ref)
        return (key is not None and key[0] == "schemas" and key[1] in self.dead) or ref in self.dead

    def schema(self, node, where: str, root: bool = False) -> bool:
        """Clean `node` in place; False when it can no longer stand and its holder must go."""
        if not isinstance(node, dict):
            return True
        if self.is_dead_ref(node.get("$ref")):
            return False
        if node.get("deprecated") is True and not root:
            return False
        props = node.get("properties")
        if isinstance(props, dict) and props:
            for k in list(props):
                if not self.schema(props[k], f"{where}/properties/{k}"):
                    del props[k]
                    self.properties.append(f"{where}/properties/{k}")
                    req = node.get("required")
                    if isinstance(req, list) and k in req:
                        req.remove(k)
                        if not req:
                            del node["required"]
            if not props and not root:
                return False
        items = node.get("items")
        if isinstance(items, dict) and not self.schema(items, f"{where}/items"):
            return False
        extra = node.get("additionalProperties")
        if isinstance(extra, dict) and not self.schema(extra, f"{where}/additionalProperties"):
            return False
        for key in ("oneOf", "anyOf"):
            members = node.get(key)
            if not isinstance(members, list):
                continue
            keep = []
            for i, m in enumerate(members):
                if self.schema(m, f"{where}/{key}/{i}"):
                    keep.append(m)
                else:
                    name = m.get("$ref", "").split("/")[-1] if isinstance(m, dict) else ""
                    self.union_members.append(f"{where}/{key} -> {name or i}")
            if not keep:
                return False
            members[:] = keep
        members = node.get("allOf")
        if isinstance(members, list):
            for i, m in enumerate(members):
                if not self.schema(m, f"{where}/allOf/{i}"):
                    return False
        disc = node.get("discriminator")
        if isinstance(disc, dict) and isinstance(disc.get("mapping"), dict):
            mapping = disc["mapping"]
            for k, v in list(mapping.items()):
                if self.is_dead_ref(v):
                    del mapping[k]
                    self.mapping_entries.append(f"{where}/discriminator/mapping/{k}")
            if not mapping:
                del disc["mapping"]
        return True

    def param_dead(self, p, where: str) -> bool:
        if not isinstance(p, dict):
            return False
        ref = p.get("$ref")
        if isinstance(ref, str):
            key = component_key(ref)
            target = (self.comps.get("parameters") or {}).get(key[1]) if key else None
            return target is not None and self.param_dead(target, ref)
        return p.get("deprecated") is True or not self.schema(p.get("schema"), f"{where}/schema", root=True)

    def param_in(self, p) -> str | None:
        if isinstance(p, dict) and isinstance(p.get("$ref"), str):
            key = component_key(p["$ref"])
            p = (self.comps.get("parameters") or {}).get(key[1]) if key else None
        return p.get("in") if isinstance(p, dict) else None

    def params(self, holder: dict, where: str) -> bool:
        """Drop dead parameters from `holder`; False when a path parameter died."""
        plist = holder.get("parameters")
        if not isinstance(plist, list):
            return True
        keep = []
        for p in plist:
            if self.param_dead(p, where):
                if self.param_in(p) == "path":
                    return False
                name = p.get("name") or p.get("$ref", "").split("/")[-1]
                self.parameters.append(f"{where} {self.param_in(p)}:{name}")
            else:
                keep.append(p)
        if keep:
            plist[:] = keep
        else:
            del holder["parameters"]
        return True

    def resolve(self, node, sect: str):
        if isinstance(node, dict) and isinstance(node.get("$ref"), str):
            key = component_key(node["$ref"])
            if key and key[0] == sect:
                return (self.comps.get(sect) or {}).get(key[1])
        return node

    def operation(self, op: dict, where: str) -> bool:
        if not self.params(op, where):
            return False
        body = self.resolve(op.get("requestBody"), "requestBodies")
        if isinstance(body, dict) and isinstance(body.get("content"), dict):
            content = body["content"]
            for mt in list(content):
                if not self.schema((content[mt] or {}).get("schema"), f"{where}/requestBody/{mt}", root=True):
                    del content[mt]
            if not content:
                return False
        for code, resp in (op.get("responses") or {}).items():
            resp = self.resolve(resp, "responses")
            for mt, media in ((resp or {}).get("content") or {}).items():
                if not self.schema((media or {}).get("schema"), f"{where}/responses/{code}/{mt}", root=True):
                    return False
        return True

    def run(self):
        schemas = self.comps.get("schemas") or {}
        changed = True
        while changed:
            changed = False
            for name, s in schemas.items():
                if name not in self.dead and not self.schema(s, f"#/components/schemas/{name}", root=True):
                    self.dead.add(name)
                    self.cascaded_schemas.append(name)
                    changed = True
        for name, s in schemas.items():
            if name in self.dead and isinstance(s, dict):
                # a dead schema is dropped as an orphan; keep its refs from pinning other dead ones
                schemas[name] = {}
        for path, item in list((self.doc.get("paths") or {}).items()):
            if not isinstance(item, dict):
                continue
            methods = [m for m in item if m in METHODS and isinstance(item[m], dict)]
            path_ok = self.params(item, path)
            for m in methods:
                if not path_ok or not self.operation(item[m], f"{m.upper()} {path}"):
                    self.cascaded_ops.append({"operationId": item[m].get("operationId"),
                                              "method": m.upper(), "path": path})
                    del item[m]
            if methods and not any(m in item for m in METHODS):
                del self.doc["paths"][path]


def plan(spec: dict, path_res: list | None = None, everything: bool = False) -> dict:
    removed_ops, removed_paths, trimmed_paths = [], [], {}
    for path, item in (spec.get("paths") or {}).items():
        if not isinstance(item, dict):
            continue
        methods = [m for m in item if m in METHODS and isinstance(item[m], dict)]
        if path_res:
            dep = methods if any(r.search(path) for r in path_res) else []
        else:
            dep = [m for m in methods if item[m].get("deprecated") is True]
        if not dep:
            continue
        for m in dep:
            removed_ops.append({"operationId": item[m].get("operationId"),
                                "method": m.upper(), "path": path})
        if len(dep) == len(methods):
            removed_paths.append(path)
        else:
            trimmed_paths[path] = dep

    pruned = copy.deepcopy(spec)
    for path in removed_paths:
        del pruned["paths"][path]
    for path, dep in trimmed_paths.items():
        for m in dep:
            del pruned["paths"][path][m]

    deep = None
    if everything:
        deep = DeepPrune(pruned)
        deep.run()
        for op in deep.cascaded_ops:
            if op["path"] not in (pruned.get("paths") or {}):
                trimmed_paths.pop(op["path"], None)
                if op["path"] not in removed_paths:
                    removed_paths.append(op["path"])
            else:
                trimmed_paths.setdefault(op["path"], []).append(op["method"].lower())

    comps = pruned.get("components") or {}
    # roots: everything except the prunable component sections
    seen, todo = set(), set()
    for k, v in pruned.items():
        if k != "components":
            refs_in(v, todo)
    for sect, v in comps.items():
        if sect not in PRUNABLE:
            refs_in(v, todo)
    while todo:
        ref = todo.pop()
        key = component_key(ref)
        if not key or key in seen:
            continue
        seen.add(key)
        sect, name = key
        target = (comps.get(sect) or {}).get(name)
        if target is not None:
            refs_in(target, todo)

    removed_components, removed_sections = {}, []
    for sect in PRUNABLE:
        entries = comps.get(sect)
        if not isinstance(entries, dict):
            continue
        gone = [n for n in entries if (sect, n) not in seen]
        if gone:
            removed_components[sect] = gone
            for n in gone:
                del entries[n]
            if not entries:
                del comps[sect]
                removed_sections.append(sect)
    if "components" in pruned and not comps:
        del pruned["components"]
        removed_sections.append("components")

    result = {"removed_operations": removed_ops, "removed_paths": removed_paths,
              "trimmed_paths": trimmed_paths, "removed_components": removed_components,
              "removed_sections": removed_sections, "pruned": pruned}
    if deep:
        left = sorted(deep.dead & set((comps.get("schemas") or {})))
        if left:
            raise SystemExit("refused: removed schemas are still referenced from a place --all does "
                             f"not clean (headers, links, examples, callbacks?): {', '.join(left)}")
        result["deep"] = {"deprecated_schemas": deep.deprecated_schemas,
                          "cascaded_schemas": deep.cascaded_schemas,
                          "cascaded_operations": deep.cascaded_ops,
                          "properties": deep.properties,
                          "union_members": deep.union_members,
                          "mapping_entries": deep.mapping_entries,
                          "parameters": deep.parameters}
    return result


# =============================================================================
# writers
# =============================================================================

def write_json(path: Path, text: str, p: dict) -> str:
    orig = json.loads(text)
    for indent in (2, 4):
        for ascii_ in (False, True):
            dumped = json.dumps(orig, indent=indent, ensure_ascii=ascii_)
            for tail in ("", "\n"):
                if dumped + tail == text:
                    return json.dumps(p["pruned"], indent=indent, ensure_ascii=ascii_) + tail
    raise SystemExit(f"refused: {path} does not round-trip byte for byte through json.dumps")


def write_yaml(text: str, p: dict) -> str:
    lines = text.splitlines(keepends=True)
    root = yaml.compose(text, Loader=_Loader)

    def find(node, key):
        if not isinstance(node, yaml.MappingNode):
            return None
        for i, (k, _) in enumerate(node.value):
            if k.value == key:
                return i
        return None

    def child(node, key):
        i = find(node, key)
        return None if i is None else node.value[i][1]

    def is_filler(n: int) -> bool:
        s = lines[n].strip()
        return not s or s.startswith("#")

    def pair_range(mnode, i):
        """[start, end) lines of the i-th pair; filler lines above the next key stay with it."""
        if mnode.flow_style:
            raise SystemExit(f"refused: flow-style mapping at line {mnode.start_mark.line + 1}")
        k, v = mnode.value[i]
        start = k.start_mark.line
        if i + 1 < len(mnode.value):
            end = mnode.value[i + 1][0].start_mark.line
        else:
            # a block node's end mark can sit on the next sibling's line (at its indent), so the
            # end line belongs to this pair only when text precedes the mark there
            end = v.end_mark.line
            if end < len(lines) and lines[end][:v.end_mark.column].strip():
                end += 1
        end = min(end, len(lines))
        while end > start + 1 and is_filler(end - 1):
            end -= 1
        return start, end

    drop = []
    paths = child(root, "paths")
    for path in p["removed_paths"]:
        drop.append(pair_range(paths, find(paths, path)))
    for path, dep in p["trimmed_paths"].items():
        item = child(paths, path)
        for m in dep:
            drop.append(pair_range(item, find(item, m)))
    comps_i = find(root, "components")
    if "components" in p["removed_sections"]:
        drop.append(pair_range(root, comps_i))
    elif comps_i is not None:
        comps = root.value[comps_i][1]
        for sect, names in p["removed_components"].items():
            if sect in p["removed_sections"]:
                drop.append(pair_range(comps, find(comps, sect)))
                continue
            entries = child(comps, sect)
            for n in names:
                drop.append(pair_range(entries, find(entries, n)))

    gone = set()
    for s, e in drop:
        gone.update(range(s, e))
    return "".join(l for n, l in enumerate(lines) if n not in gone)


# =============================================================================
# main
# =============================================================================

def find_spec(repo: Path) -> Path:
    for ext in ("yaml", "yml", "json"):
        f = repo / "docs" / "spec" / f"openapi.{ext}"
        if f.exists():
            return f
    raise SystemExit(f"no docs/spec/openapi.{{yaml,yml,json}} under {repo}")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__.strip().splitlines()[0])
    src = ap.add_mutually_exclusive_group(required=True)
    src.add_argument("--repo", type=Path, help="connector repo; uses docs/spec/openapi.*")
    src.add_argument("--spec", type=Path, help="original spec to prune")
    ap.add_argument("--path-regex", action="append", metavar="REGEX",
                    help="remove operations whose path matches (case-insensitive, repeatable) "
                         "instead of deprecated ones")
    ap.add_argument("--all", action="store_true",
                    help="also remove deprecated schemas, properties and parameters, and what they "
                         "orphan or break (JSON specs only)")
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--json", action="store_true")
    args = ap.parse_args()

    try:
        path_res = [re.compile(r, re.IGNORECASE) for r in args.path_regex or []]
    except re.error as e:
        ap.error(f"--path-regex: {e}")
    if args.all and path_res:
        ap.error("--all and --path-regex are exclusive")
    path = args.spec or find_spec(args.repo)
    text = path.read_text(encoding="utf-8")
    is_json = path.suffix == ".json"
    if args.all and not is_json:
        raise SystemExit("refused: --all edits nested nodes, which the line-preserving YAML writer "
                         "cannot; convert the spec to JSON first")
    spec = json.loads(text) if is_json else yaml.load(text, Loader=_Loader)
    p = plan(spec, path_res, args.all)
    what = "path-matched" if path_res else "deprecated"

    report = {"spec": str(path), "selected_by": [r.pattern for r in path_res] or "deprecated",
              "operations": {"before": sum(1 for it in spec.get("paths", {}).values()
                                           if isinstance(it, dict) for m in it if m in METHODS),
                             "removed": len(p["removed_operations"])},
              "removed_operations": [o["operationId"] for o in p["removed_operations"]],
              "removed_paths": p["removed_paths"],
              "trimmed_paths": p["trimmed_paths"],
              "removed_components": p["removed_components"],
              "removed_sections": p["removed_sections"],
              "written": False}
    deep = p.get("deep")
    if deep:
        report["deep"] = deep
        report["operations"]["removed"] += len(deep["cascaded_operations"])
    report["operations"]["after"] = report["operations"]["before"] - report["operations"]["removed"]

    if p["pruned"] != spec and not args.dry_run:
        new = write_json(path, text, p) if is_json else write_yaml(text, p)
        check = json.loads(new) if is_json else yaml.load(new, Loader=_Loader)
        if check != p["pruned"]:
            raise SystemExit("refused: the edited file does not parse to the expected pruned "
                             "document; nothing written")
        path.write_text(new, encoding="utf-8")
        report["written"] = True

    if args.json:
        print(json.dumps(report, indent=2))
    else:
        ops = report["operations"]
        print(f"\n  {path}\n")
        print(f"    operations   {ops['before']} -> {ops['after']} ({ops['removed']} {what})")
        print(f"    paths        {len(p['removed_paths'])} removed, "
              f"{len(p['trimmed_paths'])} trimmed")
        for sect, names in p["removed_components"].items():
            print(f"    {sect:<12} {len(names)} orphaned: {', '.join(names)}")
        if p["removed_operations"]:
            print("    operationIds " + ", ".join(str(x) for x in report["removed_operations"]))
        if deep:
            print(f"    --all        {len(deep['deprecated_schemas'])} deprecated schemas, "
                  f"{len(deep['cascaded_schemas'])} cascaded, {len(deep['properties'])} properties, "
                  f"{len(deep['parameters'])} parameters, {len(deep['union_members'])} union members, "
                  f"{len(deep['mapping_entries'])} mapping entries")
            if deep["cascaded_operations"]:
                print("    cascaded     " + ", ".join(str(o["operationId"])
                                                      for o in deep["cascaded_operations"]))
        print("\n    " + ("written" if report["written"] else
                          "dry run — nothing written" if args.dry_run else "nothing to remove"))
    return 0


if __name__ == "__main__":
    sys.exit(main())
