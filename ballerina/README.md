## Overview

[Apple App Store Connect](https://appstoreconnect.apple.com/) is Apple's platform for managing apps on the App Store. The App Store Connect API lets you automate the tasks you perform on the App Store Connect website, such as managing apps, builds, TestFlight testing, app metadata, pricing and availability, users and access, and reviews.

This connector provides a Ballerina client for version 4.5.1 of the App Store Connect API, letting integrations manage App Store Connect resources without handling the REST details directly.

### Key features

- Manage apps, builds, bundle IDs, certificates, devices and provisioning data
- Run TestFlight beta testing by managing beta groups, testers and builds
- Read customer reviews and manage App Store version metadata
- Manage team members, user invitations and API access
- Authenticate with an App Store Connect API JSON Web Token

## Setup guide

To use the Apple App Store connector, you need an Apple Developer account with access to App Store Connect and an App Store Connect API key.

1. Sign in to [App Store Connect](https://appstoreconnect.apple.com/) as an Account Holder or Admin and open **Users and Access**, then the **Integrations** tab.

2. Under **App Store Connect API**, if API access has not been enabled for your team yet, the Account Holder must first request access. Once it is granted, generate a team API key with the access level your integration needs, and download the private key (`.p8` file). It can only be downloaded once.

3. Note the **Issuer ID** shown at the top of the page and the **Key ID** of the key.

4. Create a JSON Web Token (JWT) signed with the private key using the `ES256` algorithm. Set the `kid` header to the Key ID, and the `iss` claim to the Issuer ID, the `aud` claim to `appstoreconnect-v1`, `iat` to the issue time and `exp` to at most 20 minutes after it, both as Unix timestamps in seconds. The connector sends this token as a bearer token.

## Quickstart

To use the `apple.appstore` connector in your Ballerina application, update the `.bal` file as follows:

1. Import the `apple.appstore` module.

    ```ballerina
    import ballerinax/apple.appstore;
    ```

2. Create a `Config.toml` file with your token.

    ```toml
    token = "<App Store Connect API JWT>"
    ```

3. Create an `appstore:ConnectionConfig` and initialize the client.

    ```ballerina
    configurable string token = ?;

    final appstore:Client appStore = check new ({
        auth: {
            token
        }
    });
    ```

4. Invoke the connector operation.

    ```ballerina
    public function main() returns error? {
        appstore:AppsResponse _ = check appStore->listApps();
    }
    ```

## Examples

The `Apple App Store` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/ballerina-platform/module-ballerinax-apple.appstore/tree/main/examples/), covering the following use cases:

1. [Beta testing setup](../examples/beta_testing_setup/beta_testing_setup.md) - Create a TestFlight beta group for an app and add a tester to it.
2. [App review insights](../examples/app_review_insights/app_review_insights.md) - Summarise the latest customer reviews of an app.
