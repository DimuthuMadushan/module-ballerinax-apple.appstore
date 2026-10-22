// Copyright (c) 2026, WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.


import ballerina/http;
import ballerina/os;
import ballerina/test;

final boolean isLiveServer = os:getEnv("IS_LIVE_SERVER") == "true";
final string serviceUrl = isLiveServer ? "https://api.appstoreconnect.apple.com" : "http://localhost:9090";
final string token = isLiveServer ? os:getEnv("APPLE_APPSTORE_TOKEN") : "test_token";

final Client appStore = check new ({auth: {token}, httpVersion: http:HTTP_1_1}, serviceUrl);

const string TEST_APP_ID = "6740000001";

// A live account may hold no data, so list results are only required to be non-empty against the mock.
function assertListed(int count) {
    test:assertTrue(isLiveServer || count > 0, "expected the mock to return at least one item");
}

// The app to look up: the fixed mock ID, or the first app of the live account (nil when it has none).
function appId() returns string?|error {
    if !isLiveServer {
        return TEST_APP_ID;
    }
    AppsResponse apps = check appStore->listApps();
    return apps.data.length() > 0 ? apps.data[0].id : ();
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListApps() returns error? {
    AppsResponse response = check appStore->listApps();
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetApp() returns error? {
    string? id = check appId();
    if id is () {
        return;
    }
    AppResponse response = check appStore->getApp(id);
    test:assertEquals(response.data.'type, "apps");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdateApp() returns error? {
    if isLiveServer {
        return;
    }
    AppResponse response = check appStore->updateApp(TEST_APP_ID, {data: {id: TEST_APP_ID, 'type: "apps", attributes: {primaryLocale: "en-US"}}});
    test:assertTrue(response.data.id.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListCustomerReviewsForApp() returns error? {
    string? id = check appId();
    if id is () {
        return;
    }
    CustomerReviewsResponse response = check appStore->listCustomerReviewsForApp(id);
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBuilds() returns error? {
    BuildsResponse response = check appStore->listBuilds();
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetBuild() returns error? {
    string id = "build-1001";
    if isLiveServer {
        BuildsResponse builds = check appStore->listBuilds();
        if builds.data.length() == 0 {
            return;
        }
        id = builds.data[0].id;
    }
    BuildResponse response = check appStore->getBuild(id);
    test:assertEquals(response.data.'type, "builds");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdateBuild() returns error? {
    if isLiveServer {
        return;
    }
    BuildResponse response = check appStore->updateBuild("build-1001", {data: {id: "build-1001", 'type: "builds", attributes: {expired: false}}});
    test:assertTrue(response.data.id.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBetaGroups() returns error? {
    BetaGroupsResponse response = check appStore->listBetaGroups();
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testCreateBetaGroup() returns error? {
    if isLiveServer {
        return;
    }
    BetaGroupResponse response = check appStore->createBetaGroup({
        data: {
            'type: "betaGroups",
            attributes: {name: "External Testers"},
            relationships: {app: {data: {id: TEST_APP_ID, 'type: "apps"}}}
        }
    });
    test:assertEquals(response.data.'type, "betaGroups");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetBetaGroup() returns error? {
    string id = "grp-1001";
    if isLiveServer {
        BetaGroupsResponse groups = check appStore->listBetaGroups();
        if groups.data.length() == 0 {
            return;
        }
        id = groups.data[0].id;
    }
    BetaGroupResponse response = check appStore->getBetaGroup(id);
    test:assertEquals(response.data.id, id);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdateBetaGroup() returns error? {
    if isLiveServer {
        return;
    }
    BetaGroupResponse response = check appStore->updateBetaGroup("grp-1001", {data: {id: "grp-1001", 'type: "betaGroups", attributes: {name: "Renamed Group"}}});
    test:assertEquals(response.data.id, "grp-1001");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testDeleteBetaGroup() returns error? {
    if isLiveServer {
        return;
    }
    BetaGroupResponse created = check appStore->createBetaGroup({
        data: {
            'type: "betaGroups",
            attributes: {name: "Group To Delete"},
            relationships: {app: {data: {id: TEST_APP_ID, 'type: "apps"}}}
        }
    });
    error? response = appStore->deleteBetaGroup(created.data.id);
    test:assertTrue(response is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBetaTesters() returns error? {
    BetaTestersResponse response = check appStore->listBetaTesters();
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testCreateBetaTester() returns error? {
    if isLiveServer {
        return;
    }
    BetaTesterResponse response = check appStore->createBetaTester({data: {'type: "betaTesters", attributes: {email: "jane.doe@example.com", firstName: "Jane", lastName: "Doe"}}});
    test:assertEquals(response.data.'type, "betaTesters");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetBetaTester() returns error? {
    string id = "tester-1001";
    if isLiveServer {
        BetaTestersResponse testers = check appStore->listBetaTesters();
        if testers.data.length() == 0 {
            return;
        }
        id = testers.data[0].id;
    }
    BetaTesterResponse response = check appStore->getBetaTester(id);
    test:assertEquals(response.data.id, id);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testDeleteBetaTester() returns error? {
    if isLiveServer {
        return;
    }
    BetaTesterResponse created = check appStore->createBetaTester({data: {'type: "betaTesters", attributes: {email: "delete.me@example.org", firstName: "Delete", lastName: "Me"}}});
    error? response = appStore->deleteBetaTester(created.data.id);
    test:assertTrue(response is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBundleIds() returns error? {
    BundleIdsResponse response = check appStore->listBundleIds();
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testCreateBundleId() returns error? {
    if isLiveServer {
        return;
    }
    BundleIdResponse response = check appStore->createBundleId({data: {'type: "bundleIds", attributes: {identifier: "com.example.sample", name: "Sample App ID", platform: "IOS"}}});
    test:assertEquals(response.data.'type, "bundleIds");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetBundleId() returns error? {
    string id = "bid-1001";
    if isLiveServer {
        BundleIdsResponse bundleIds = check appStore->listBundleIds();
        if bundleIds.data.length() == 0 {
            return;
        }
        id = bundleIds.data[0].id;
    }
    BundleIdResponse response = check appStore->getBundleId(id);
    test:assertEquals(response.data.id, id);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testDeleteBundleId() returns error? {
    if isLiveServer {
        return;
    }
    BundleIdResponse created = check appStore->createBundleId({data: {'type: "bundleIds", attributes: {identifier: "com.example.todelete", name: "Bundle To Delete", platform: "IOS"}}});
    error? response = appStore->deleteBundleId(created.data.id);
    test:assertTrue(response is ());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListDevices() returns error? {
    DevicesResponse response = check appStore->listDevices();
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testCreateDevice() returns error? {
    if isLiveServer {
        return;
    }
    DeviceResponse response = check appStore->createDevice({data: {'type: "devices", attributes: {name: "Test iPhone", udid: "00008030-001A2B3C4D5E802E", platform: "IOS"}}});
    test:assertEquals(response.data.'type, "devices");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListUsers() returns error? {
    UsersResponse response = check appStore->listUsers();
    assertListed(response.data.length());
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetUser() returns error? {
    string id = "user-1001";
    if isLiveServer {
        UsersResponse users = check appStore->listUsers();
        if users.data.length() == 0 {
            return;
        }
        id = users.data[0].id;
    }
    UserResponse response = check appStore->getUser(id);
    test:assertEquals(response.data.id, id);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListCertificates() returns error? {
    CertificatesResponse response = check appStore->listCertificates();
    assertListed(response.data.length());
}
