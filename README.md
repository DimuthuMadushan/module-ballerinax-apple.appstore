# Ballerina Apple App Store connector

[![Build](https://github.com/ballerina-platform/module-ballerinax-apple.appstore/actions/workflows/ci.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-apple.appstore/actions/workflows/ci.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-apple.appstore.svg)](https://github.com/ballerina-platform/module-ballerinax-apple.appstore/commits/main)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/apple.appstore.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%2Fapple.appstore)

## Overview

[Apple App Store Connect](https://appstoreconnect.apple.com/) is Apple's platform for managing apps on the App Store. The App Store Connect API lets you automate the tasks you perform on the App Store Connect website, such as managing apps, builds, TestFlight testing, app metadata, pricing and availability, users and access, and reviews.

This connector provides a Ballerina client for version 4.5.1 of the App Store Connect API, letting integrations manage App Store Connect resources without handling the REST details directly.

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

1. [Beta testing setup](examples/beta_testing_setup/beta_testing_setup.md) - Create a TestFlight beta group for an app and add a tester to it.
2. [App review insights](examples/app_review_insights/app_review_insights.md) - Summarise the latest customer reviews of an app.

## Build from the source

### Setting up the prerequisites

1. Download and install Java SE Development Kit (JDK) version 21. You can download it from either of the following sources:

    * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
    * [OpenJDK](https://adoptium.net/)

   > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

   > **Note**: Ensure that the Docker daemon is running before executing any tests.

4. Export Github Personal access token with read package permissions as follows,

    ```bash
    export packageUser=<Username>
    export packagePAT=<Personal access token>
    ```

### Build options

Execute the commands below to build from the source.

1. To build the package:

   ```bash
   ./gradlew clean build
   ```

2. To run the tests:

   ```bash
   ./gradlew clean test
   ```

3. To build the without the tests:

   ```bash
   ./gradlew clean build -x test
   ```

4. To run tests against different environments:

   ```bash
   ./gradlew clean test -Pgroups=<Comma separated groups/test cases>
   ```

5. To debug the package with a remote debugger:

   ```bash
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:

   ```bash
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:

    ```bash
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:

   ```bash
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* For more information go to the [`apple.appstore` package](https://central.ballerina.io/ballerinax/apple.appstore/latest).
* For example demonstrations of the usage, go to [Ballerina By Examples](https://ballerina.io/learn/by-example/).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
* Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
