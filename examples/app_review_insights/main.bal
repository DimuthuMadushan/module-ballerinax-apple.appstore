import ballerina/io;
import ballerinax/apple.appstore;

configurable string token = ?;
configurable string bundleIdentifier = ?;
// Number of most recent reviews to analyse (the API allows at most 200 per request).
configurable int reviewCount = 100;

public function main() returns error? {
    if reviewCount < 1 || reviewCount > 200 {
        return error(string `reviewCount must be between 1 and 200, the API's per-request maximum; got ${reviewCount}`);
    }
    appstore:Client appStore = check new ({auth: {token}});

    // Step 1: Find the app by its bundle identifier.
    appstore:AppsResponse apps = check appStore->listApps(filterBundleId = [bundleIdentifier]);
    if apps.data.length() == 0 {
        return error(string `No app found with bundle identifier ${bundleIdentifier}`);
    }
    appstore:App app = apps.data[0];

    // Step 2: Fetch the most recent customer reviews.
    appstore:CustomerReviewsResponse reviews = check appStore->listCustomerReviewsForApp(app.id, sort = ["-createdDate"], 'limit = reviewCount);
    if reviews.data.length() == 0 {
        io:println("The app has no customer reviews yet.");
        return;
    }

    // Step 3: Summarise the ratings.
    int total = 0;
    int[] histogram = [0, 0, 0, 0, 0];
    foreach appstore:CustomerReview review in reviews.data {
        int rating = review.attributes?.rating ?: 0;
        if rating >= 1 && rating <= 5 {
            histogram[rating - 1] += 1;
            total += rating;
        }
    }
    int counted = reviews.data.length();
    io:println("Analysed the latest ", counted, " reviews of ", app.attributes?.name);
    io:println("Average rating: ", <decimal>total / <decimal>counted);
    foreach int star in 1 ... 5 {
        io:println(star, " star: ", histogram[star - 1]);
    }

    // Step 4: Show the most recent critical reviews.
    foreach appstore:CustomerReview review in reviews.data {
        int rating = review.attributes?.rating ?: 0;
        if rating > 0 && rating <= 2 {
            io:println("- ", review.attributes?.title, ": ", review.attributes?.body);
        }
    }
}
