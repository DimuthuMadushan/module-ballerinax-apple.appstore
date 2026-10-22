# App review insights

This example finds an app by its bundle identifier, fetches its most recent customer reviews, and prints the average rating, a star-by-star breakdown, and the text of the latest critical reviews (one or two stars). It reads from the latest page of reviews only, up to 200 reviews.

## Prerequisites

1. Create an App Store Connect API key and generate a JSON Web Token (JWT) for it, as described in the connector's setup guide.

2. Create a `Config.toml` in this directory:

    ```toml
    token = "<App Store Connect API JWT>"
    bundleIdentifier = "<App bundle identifier>"
    reviewCount = 100
    ```

## Run the example

```bash
bal run
```
