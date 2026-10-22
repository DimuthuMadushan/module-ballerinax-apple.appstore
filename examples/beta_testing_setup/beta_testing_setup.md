# Beta testing setup

This example finds an app by its bundle identifier, creates a TestFlight beta group for it when one with that name does not exist yet, and adds a tester to the group. Changes are only made when `applyChanges` is `true`; otherwise the example reports what it would do.

Adding a tester does not send a TestFlight invitation by itself: the invitation goes out once an eligible build has been added to the group.

## Prerequisites

1. Create an App Store Connect API key and generate a JSON Web Token (JWT) for it, as described in the connector's setup guide.

2. Create a `Config.toml` in this directory:

    ```toml
    token = "<App Store Connect API JWT>"
    bundleIdentifier = "<App bundle identifier>"
    betaGroupName = "<Beta group name>"
    testerEmail = "<Tester email address>"
    testerFirstName = "<Tester first name>"
    testerLastName = "<Tester last name>"
    applyChanges = false
    ```

## Run the example

```bash
bal run
```
