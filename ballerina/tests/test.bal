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

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListApps() returns error? {
    AppsResponse response = check appStore->listApps();
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetApp() returns error? {
    AppResponse response = check appStore->getApp(TEST_APP_ID);
    test:assertEquals(response.data.'type, "apps");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdateApp() returns error? {
    AppResponse response = check appStore->updateApp(TEST_APP_ID, {data: {id: TEST_APP_ID, 'type: "apps", attributes: {primaryLocale: "en-US"}}});
    test:assertTrue(response.data.id.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListCustomerReviewsForApp() returns error? {
    CustomerReviewsResponse response = check appStore->listCustomerReviewsForApp(TEST_APP_ID);
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBuilds() returns error? {
    BuildsResponse response = check appStore->listBuilds();
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetBuild() returns error? {
    BuildResponse response = check appStore->getBuild("build-1001");
    test:assertEquals(response.data.'type, "builds");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testUpdateBuild() returns error? {
    BuildResponse response = check appStore->updateBuild("build-1001", {data: {id: "build-1001", 'type: "builds", attributes: {expired: false}}});
    test:assertTrue(response.data.id.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListBetaGroups() returns error? {
    BetaGroupsResponse response = check appStore->listBetaGroups();
    test:assertTrue(response.data.length() > 0);
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
    BetaGroupResponse response = check appStore->getBetaGroup("grp-1001");
    test:assertEquals(response.data.id, "grp-1001");
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
    test:assertTrue(response.data.length() > 0);
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
    BetaTesterResponse response = check appStore->getBetaTester("tester-1001");
    test:assertEquals(response.data.id, "tester-1001");
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
    test:assertTrue(response.data.length() > 0);
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
    BundleIdResponse response = check appStore->getBundleId("bid-1001");
    test:assertEquals(response.data.id, "bid-1001");
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
    test:assertTrue(response.data.length() > 0);
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
    test:assertTrue(response.data.length() > 0);
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testGetUser() returns error? {
    UserResponse response = check appStore->getUser("user-1001");
    test:assertEquals(response.data.id, "user-1001");
}

@test:Config {groups: ["live_tests", "mock_tests"]}
function testListCertificates() returns error? {
    CertificatesResponse response = check appStore->listCertificates();
    test:assertTrue(response.data.length() > 0);
}
