import ballerina/io;
import ballerinax/apple.appstore;

configurable string token = ?;
configurable string bundleIdentifier = ?;
configurable string betaGroupName = ?;
configurable string testerEmail = ?;
configurable string testerFirstName = ?;
configurable string testerLastName = ?;
// Creating the beta group and adding the tester change your App Store Connect account.
configurable boolean applyChanges = false;

public function main() returns error? {
    appstore:Client appStore = check new ({auth: {token}});

    // Step 1: Find the app by its bundle identifier.
    appstore:AppsResponse apps = check appStore->listApps(filterBundleId = [bundleIdentifier]);
    if apps.data.length() == 0 {
        return error(string `No app found with bundle identifier ${bundleIdentifier}`);
    }
    appstore:App app = apps.data[0];
    io:println("Found app ", app.attributes?.name, " (", app.id, ")");

    // Step 2: List the existing beta groups so a duplicate is not created.
    appstore:BetaGroupsResponse groups = check appStore->listBetaGroups(filterName = [betaGroupName], filterApp = [app.id]);
    string groupId;
    if groups.data.length() > 0 {
        groupId = groups.data[0].id;
        io:println("Beta group already exists: ", groupId);
    } else if applyChanges {
        // Step 3: Create the beta group.
        appstore:BetaGroupResponse created = check appStore->createBetaGroup({
            data: {
                'type: "betaGroups",
                attributes: {name: betaGroupName},
                relationships: {app: {data: {id: app.id, 'type: "apps"}}}
            }
        });
        groupId = created.data.id;
        io:println("Created beta group: ", groupId);
    } else {
        io:println("Dry run: set applyChanges = true to create the beta group ", betaGroupName);
        return;
    }

    // Step 4: Add the tester to the group.
    if applyChanges {
        appstore:BetaTesterResponse tester = check appStore->createBetaTester({
            data: {
                'type: "betaTesters",
                attributes: {email: testerEmail, firstName: testerFirstName, lastName: testerLastName},
                relationships: {betaGroups: {data: [{id: groupId, 'type: "betaGroups"}]}}
            }
        });
        io:println("Added tester ", tester.data.attributes?.email, " to the group with id ", tester.data.id);
    }
}
