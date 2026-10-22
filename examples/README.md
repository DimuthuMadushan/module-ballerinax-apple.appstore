# Examples

The `ballerinax/apple.appstore` connector provides practical examples illustrating usage in various scenarios.

1. [Beta testing setup](./beta_testing_setup/beta_testing_setup.md) - Create a TestFlight beta group for an app and add a tester to it.
2. [App review insights](./app_review_insights/app_review_insights.md) - Summarise the latest customer reviews of an app.

## Prerequisites

Provide an App Store Connect API JSON Web Token (`token`) and the example's other settings in a `Config.toml` in the example directory.

## Running an example

Execute the following commands to build an example from the source:

* To build an example:

    ```bash
    bal build
    ```

* To run an example:

    ```bash
    bal run
    ```

## Building the examples with the local module

**Warning**: Due to the absence of support for reading local repositories for single Ballerina files, the Bala of the module is manually written to the central repository as a workaround. Consequently, the bash script may modify your local Ballerina repositories.

Execute the following commands to build all the examples against the changes you have made to the module locally:

* To build all the examples:

    ```bash
    ./build.sh build
    ```

* To run all the examples:

    ```bash
    ./build.sh run
    ```
