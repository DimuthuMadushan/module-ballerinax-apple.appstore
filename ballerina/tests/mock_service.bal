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

listener http:Listener ep0 = new (9090);

@http:ServiceConfig {treatNilableAsOptional: true}
service / on ep0 {
    # + id - the id of the requested resource
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:NoContent (Success (no content))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function delete v1/betaGroups/[string id]() returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|http:NoContent|ErrorResponseTooManyRequests {
        return http:NO_CONTENT;
    }

    # + id - the id of the requested resource
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Accepted (Accepted for future completion)
    # http:NoContent (Success (no content))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function delete v1/betaTesters/[string id]() returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|http:Accepted|http:NoContent|ErrorResponseTooManyRequests {
        return http:NO_CONTENT;
    }

    # + id - the id of the requested resource
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:NoContent (Success (no content))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function delete v1/bundleIds/[string id]() returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|http:NoContent|ErrorResponseTooManyRequests {
        return http:NO_CONTENT;
    }

    # + filterName - filter by attribute 'name'
    # + filterBundleId - filter by attribute 'bundleId'
    # + filterSku - filter by attribute 'sku'
    # + filter\[appStoreVersions\.appStoreState\] - filter by attribute 'appStoreVersions.appStoreState'
    # + filter\[appStoreVersions\.platform\] - filter by attribute 'appStoreVersions.platform'
    # + filter\[appStoreVersions\.appVersionState\] - filter by attribute 'appStoreVersions.appVersionState'
    # + filter\[reviewSubmissions\.state\] - filter by attribute 'reviewSubmissions.state'
    # + filter\[reviewSubmissions\.platform\] - filter by attribute 'reviewSubmissions.platform'
    # + filterAppStoreVersions - filter by id(s) of related 'appStoreVersions'
    # + filterId - filter by id(s)
    # + existsGameCenterEnabledVersions - filter by existence or non-existence of related 'gameCenterEnabledVersions'
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[appEncryptionDeclarations\] - the fields to include for returned resources of type appEncryptionDeclarations
    # + fields\[buildIcons\] - the fields to include for returned resources of type buildIcons
    # + fields\[ciProducts\] - the fields to include for returned resources of type ciProducts
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[appStoreVersions\] - the fields to include for returned resources of type appStoreVersions
    # + fields\[preReleaseVersions\] - the fields to include for returned resources of type preReleaseVersions
    # + fields\[betaAppLocalizations\] - the fields to include for returned resources of type betaAppLocalizations
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + fields\[betaLicenseAgreements\] - the fields to include for returned resources of type betaLicenseAgreements
    # + fields\[betaAppReviewDetails\] - the fields to include for returned resources of type betaAppReviewDetails
    # + fields\[appInfos\] - the fields to include for returned resources of type appInfos
    # + fields\[appClips\] - the fields to include for returned resources of type appClips
    # + fields\[endUserLicenseAgreements\] - the fields to include for returned resources of type endUserLicenseAgreements
    # + fields\[inAppPurchases\] - the fields to include for returned resources of type inAppPurchases
    # + fields\[subscriptionGroups\] - the fields to include for returned resources of type subscriptionGroups
    # + fields\[gameCenterEnabledVersions\] - the fields to include for returned resources of type gameCenterEnabledVersions
    # + fields\[appCustomProductPages\] - the fields to include for returned resources of type appCustomProductPages
    # + fields\[promotedPurchases\] - the fields to include for returned resources of type promotedPurchases
    # + fields\[appEvents\] - the fields to include for returned resources of type appEvents
    # + fields\[reviewSubmissions\] - the fields to include for returned resources of type reviewSubmissions
    # + fields\[subscriptionGracePeriods\] - the fields to include for returned resources of type subscriptionGracePeriods
    # + fields\[gameCenterDetails\] - the fields to include for returned resources of type gameCenterDetails
    # + fields\[appStoreVersionExperiments\] - the fields to include for returned resources of type appStoreVersionExperiments
    # + fields\[androidToIosAppMappingDetails\] - the fields to include for returned resources of type androidToIosAppMappingDetails
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + limitAndroidToIosAppMappingDetails - maximum number of related androidToIosAppMappingDetails returned (when they are included)
    # + limitAppClips - maximum number of related appClips returned (when they are included)
    # + limitAppCustomProductPages - maximum number of related appCustomProductPages returned (when they are included)
    # + limitAppEncryptionDeclarations - maximum number of related appEncryptionDeclarations returned (when they are included)
    # + limitAppEvents - maximum number of related appEvents returned (when they are included)
    # + limitAppInfos - maximum number of related appInfos returned (when they are included)
    # + limitAppStoreVersionExperimentsV2 - maximum number of related appStoreVersionExperimentsV2 returned (when they are included)
    # + limitAppStoreVersions - maximum number of related appStoreVersions returned (when they are included)
    # + limitBetaAppLocalizations - maximum number of related betaAppLocalizations returned (when they are included)
    # + limitBetaGroups - maximum number of related betaGroups returned (when they are included)
    # + limitBuilds - maximum number of related builds returned (when they are included)
    # + limitGameCenterEnabledVersions - maximum number of related gameCenterEnabledVersions returned (when they are included)
    # + limitInAppPurchases - maximum number of related inAppPurchases returned (when they are included)
    # + limitInAppPurchasesV2 - maximum number of related inAppPurchasesV2 returned (when they are included)
    # + limitPreReleaseVersions - maximum number of related preReleaseVersions returned (when they are included)
    # + limitPromotedPurchases - maximum number of related promotedPurchases returned (when they are included)
    # + limitReviewSubmissions - maximum number of related reviewSubmissions returned (when they are included)
    # + limitSubscriptionGroups - maximum number of related subscriptionGroups returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of Apps)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/apps(@http:Query {name: "filter[name]"} string[]? filterName, @http:Query {name: "filter[bundleId]"} string[]? filterBundleId, @http:Query {name: "filter[sku]"} string[]? filterSku, @http:Query {name: "filter[appStoreVersions.appStoreState]"} ("ACCEPTED"|"DEVELOPER_REMOVED_FROM_SALE"|"DEVELOPER_REJECTED"|"IN_REVIEW"|"INVALID_BINARY"|"METADATA_REJECTED"|"PENDING_APPLE_RELEASE"|"PENDING_CONTRACT"|"PENDING_DEVELOPER_RELEASE"|"PREPARE_FOR_SUBMISSION"|"PREORDER_READY_FOR_SALE"|"PROCESSING_FOR_APP_STORE"|"READY_FOR_REVIEW"|"READY_FOR_SALE"|"REJECTED"|"REMOVED_FROM_SALE"|"WAITING_FOR_EXPORT_COMPLIANCE"|"WAITING_FOR_REVIEW"|"REPLACED_WITH_NEW_VERSION"|"NOT_APPLICABLE")[]? filterAppStoreVersionsAppStoreState, @http:Query {name: "filter[appStoreVersions.platform]"} ("IOS"|"MAC_OS"|"TV_OS"|"VISION_OS")[]? filterAppStoreVersionsPlatform, @http:Query {name: "filter[appStoreVersions.appVersionState]"} ("ACCEPTED"|"DEVELOPER_REJECTED"|"IN_REVIEW"|"INVALID_BINARY"|"METADATA_REJECTED"|"PENDING_APPLE_RELEASE"|"PENDING_DEVELOPER_RELEASE"|"PREPARE_FOR_SUBMISSION"|"PROCESSING_FOR_DISTRIBUTION"|"READY_FOR_DISTRIBUTION"|"READY_FOR_REVIEW"|"REJECTED"|"REPLACED_WITH_NEW_VERSION"|"WAITING_FOR_EXPORT_COMPLIANCE"|"WAITING_FOR_REVIEW")[]? filterAppStoreVersionsAppVersionState, @http:Query {name: "filter[reviewSubmissions.state]"} ("READY_FOR_REVIEW"|"WAITING_FOR_REVIEW"|"IN_REVIEW"|"UNRESOLVED_ISSUES"|"CANCELING"|"COMPLETING"|"COMPLETE")[]? filterReviewSubmissionsState, @http:Query {name: "filter[reviewSubmissions.platform]"} ("IOS"|"MAC_OS"|"TV_OS"|"VISION_OS")[]? filterReviewSubmissionsPlatform, @http:Query {name: "filter[appStoreVersions]"} string[]? filterAppStoreVersions, @http:Query {name: "filter[id]"} string[]? filterId, @http:Query {name: "exists[gameCenterEnabledVersions]"} boolean? existsGameCenterEnabledVersions, ("name"|"-name"|"bundleId"|"-bundleId"|"sku"|"-sku")[]? sort, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[appEncryptionDeclarations]"} ("appDescription"|"createdDate"|"usesEncryption"|"exempt"|"containsProprietaryCryptography"|"containsThirdPartyCryptography"|"availableOnFrenchStore"|"platform"|"uploadedDate"|"documentUrl"|"documentName"|"documentType"|"appEncryptionDeclarationState"|"codeValue"|"app"|"builds"|"appEncryptionDeclarationDocument")[]? fieldsAppEncryptionDeclarations, @http:Query {name: "fields[buildIcons]"} ("iconAsset"|"iconType"|"masked"|"name")[]? fieldsBuildIcons, @http:Query {name: "fields[ciProducts]"} ("name"|"createdDate"|"productType"|"app"|"bundleId"|"workflows"|"primaryRepositories"|"additionalRepositories"|"buildRuns")[]? fieldsCiProducts, @http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[appStoreVersions]"} ("platform"|"versionString"|"appStoreState"|"appVersionState"|"copyright"|"reviewType"|"releaseType"|"earliestReleaseDate"|"usesIdfa"|"downloadable"|"createdDate"|"app"|"appStoreVersionLocalizations"|"build"|"appStoreVersionPhasedRelease"|"gameCenterAppVersion"|"routingAppCoverage"|"appStoreReviewDetail"|"appStoreVersionSubmission"|"appClipDefaultExperience"|"appStoreVersionExperiments"|"appStoreVersionExperimentsV2"|"customerReviews"|"alternativeDistributionPackage")[]? fieldsAppStoreVersions, @http:Query {name: "fields[preReleaseVersions]"} ("version"|"platform"|"builds"|"app")[]? fieldsPreReleaseVersions, @http:Query {name: "fields[betaAppLocalizations]"} ("feedbackEmail"|"marketingUrl"|"privacyPolicyUrl"|"tvOsPrivacyPolicy"|"description"|"locale"|"app")[]? fieldsBetaAppLocalizations, @http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, @http:Query {name: "fields[betaLicenseAgreements]"} ("agreementText"|"app")[]? fieldsBetaLicenseAgreements, @http:Query {name: "fields[betaAppReviewDetails]"} ("contactFirstName"|"contactLastName"|"contactPhone"|"contactEmail"|"demoAccountName"|"demoAccountPassword"|"demoAccountRequired"|"notes"|"app")[]? fieldsBetaAppReviewDetails, @http:Query {name: "fields[appInfos]"} ("appStoreState"|"state"|"appStoreAgeRating"|"australiaAgeRating"|"brazilAgeRating"|"brazilAgeRatingV2"|"franceAgeRating"|"koreaAgeRating"|"app"|"ageRatingDeclaration"|"appInfoLocalizations"|"primaryCategory"|"primarySubcategoryOne"|"primarySubcategoryTwo"|"secondaryCategory"|"secondarySubcategoryOne"|"secondarySubcategoryTwo"|"territoryAgeRatings")[]? fieldsAppInfos, @http:Query {name: "fields[appClips]"} ("bundleId"|"app"|"appClipDefaultExperiences"|"appClipAdvancedExperiences")[]? fieldsAppClips, @http:Query {name: "fields[endUserLicenseAgreements]"} ("agreementText"|"app"|"territories")[]? fieldsEndUserLicenseAgreements, @http:Query {name: "fields[inAppPurchases]"} ("referenceName"|"productId"|"inAppPurchaseType"|"state"|"apps"|"name"|"reviewNote"|"familySharable"|"contentHosting"|"inAppPurchaseLocalizations"|"pricePoints"|"content"|"appStoreReviewScreenshot"|"promotedPurchase"|"iapPriceSchedule"|"inAppPurchaseAvailability"|"images"|"offerCodes"|"versions")[]? fieldsInAppPurchases, @http:Query {name: "fields[subscriptionGroups]"} ("referenceName"|"subscriptions"|"subscriptionGroupLocalizations"|"versions")[]? fieldsSubscriptionGroups, @http:Query {name: "fields[gameCenterEnabledVersions]"} ("platform"|"versionString"|"iconAsset"|"compatibleVersions"|"app")[]? fieldsGameCenterEnabledVersions, @http:Query {name: "fields[appCustomProductPages]"} ("name"|"url"|"visible"|"app"|"appCustomProductPageVersions")[]? fieldsAppCustomProductPages, @http:Query {name: "fields[promotedPurchases]"} ("visibleForAllUsers"|"enabled"|"state"|"inAppPurchaseV2"|"subscription")[]? fieldsPromotedPurchases, @http:Query {name: "fields[appEvents]"} ("referenceName"|"badge"|"eventState"|"deepLink"|"purchaseRequirement"|"primaryLocale"|"priority"|"purpose"|"territorySchedules"|"archivedTerritorySchedules"|"localizations")[]? fieldsAppEvents, @http:Query {name: "fields[reviewSubmissions]"} ("platform"|"submittedDate"|"state"|"app"|"items"|"appStoreVersionForReview"|"submittedByActor"|"lastUpdatedByActor")[]? fieldsReviewSubmissions, @http:Query {name: "fields[subscriptionGracePeriods]"} ("optIn"|"sandboxOptIn"|"duration"|"renewalType")[]? fieldsSubscriptionGracePeriods, @http:Query {name: "fields[gameCenterDetails]"} ("arcadeEnabled"|"challengeEnabled"|"app"|"gameCenterAppVersions"|"gameCenterGroup"|"gameCenterLeaderboards"|"gameCenterLeaderboardsV2"|"gameCenterLeaderboardSets"|"gameCenterLeaderboardSetsV2"|"gameCenterAchievements"|"gameCenterAchievementsV2"|"gameCenterActivities"|"gameCenterChallenges"|"defaultLeaderboard"|"defaultLeaderboardV2"|"defaultGroupLeaderboard"|"defaultGroupLeaderboardV2"|"achievementReleases"|"activityReleases"|"challengeReleases"|"leaderboardReleases"|"leaderboardSetReleases"|"blockedPlayers"|"challengesMinimumPlatformVersions")[]? fieldsGameCenterDetails, @http:Query {name: "fields[appStoreVersionExperiments]"} ("name"|"platform"|"trafficProportion"|"state"|"reviewRequired"|"startDate"|"endDate"|"app"|"latestControlVersion"|"controlVersions"|"appStoreVersionExperimentTreatments")[]? fieldsAppStoreVersionExperiments, @http:Query {name: "fields[androidToIosAppMappingDetails]"} ("packageName"|"appSigningKeyPublicCertificateSha256Fingerprints")[]? fieldsAndroidToIosAppMappingDetails, int? 'limit, ("appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaGroups"|"appStoreVersions"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"endUserLicenseAgreement"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"androidToIosAppMappingDetails")[]? include, @http:Query {name: "limit[androidToIosAppMappingDetails]"} int? limitAndroidToIosAppMappingDetails, @http:Query {name: "limit[appClips]"} int? limitAppClips, @http:Query {name: "limit[appCustomProductPages]"} int? limitAppCustomProductPages, @http:Query {name: "limit[appEncryptionDeclarations]"} int? limitAppEncryptionDeclarations, @http:Query {name: "limit[appEvents]"} int? limitAppEvents, @http:Query {name: "limit[appInfos]"} int? limitAppInfos, @http:Query {name: "limit[appStoreVersionExperimentsV2]"} int? limitAppStoreVersionExperimentsV2, @http:Query {name: "limit[appStoreVersions]"} int? limitAppStoreVersions, @http:Query {name: "limit[betaAppLocalizations]"} int? limitBetaAppLocalizations, @http:Query {name: "limit[betaGroups]"} int? limitBetaGroups, @http:Query {name: "limit[builds]"} int? limitBuilds, @http:Query {name: "limit[gameCenterEnabledVersions]"} int? limitGameCenterEnabledVersions, @http:Query {name: "limit[inAppPurchases]"} int? limitInAppPurchases, @http:Query {name: "limit[inAppPurchasesV2]"} int? limitInAppPurchasesV2, @http:Query {name: "limit[preReleaseVersions]"} int? limitPreReleaseVersions, @http:Query {name: "limit[promotedPurchases]"} int? limitPromotedPurchases, @http:Query {name: "limit[reviewSubmissions]"} int? limitReviewSubmissions, @http:Query {name: "limit[subscriptionGroups]"} int? limitSubscriptionGroups) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|AppsResponse|ErrorResponseTooManyRequests {
        AppsResponse res = {
            data: [appRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[appEncryptionDeclarations\] - the fields to include for returned resources of type appEncryptionDeclarations
    # + fields\[buildIcons\] - the fields to include for returned resources of type buildIcons
    # + fields\[ciProducts\] - the fields to include for returned resources of type ciProducts
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[appStoreVersions\] - the fields to include for returned resources of type appStoreVersions
    # + fields\[preReleaseVersions\] - the fields to include for returned resources of type preReleaseVersions
    # + fields\[betaAppLocalizations\] - the fields to include for returned resources of type betaAppLocalizations
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + fields\[betaLicenseAgreements\] - the fields to include for returned resources of type betaLicenseAgreements
    # + fields\[betaAppReviewDetails\] - the fields to include for returned resources of type betaAppReviewDetails
    # + fields\[appInfos\] - the fields to include for returned resources of type appInfos
    # + fields\[appClips\] - the fields to include for returned resources of type appClips
    # + fields\[endUserLicenseAgreements\] - the fields to include for returned resources of type endUserLicenseAgreements
    # + fields\[inAppPurchases\] - the fields to include for returned resources of type inAppPurchases
    # + fields\[subscriptionGroups\] - the fields to include for returned resources of type subscriptionGroups
    # + fields\[gameCenterEnabledVersions\] - the fields to include for returned resources of type gameCenterEnabledVersions
    # + fields\[appCustomProductPages\] - the fields to include for returned resources of type appCustomProductPages
    # + fields\[promotedPurchases\] - the fields to include for returned resources of type promotedPurchases
    # + fields\[appEvents\] - the fields to include for returned resources of type appEvents
    # + fields\[reviewSubmissions\] - the fields to include for returned resources of type reviewSubmissions
    # + fields\[subscriptionGracePeriods\] - the fields to include for returned resources of type subscriptionGracePeriods
    # + fields\[gameCenterDetails\] - the fields to include for returned resources of type gameCenterDetails
    # + fields\[appStoreVersionExperiments\] - the fields to include for returned resources of type appStoreVersionExperiments
    # + fields\[androidToIosAppMappingDetails\] - the fields to include for returned resources of type androidToIosAppMappingDetails
    # + include - comma-separated list of relationships to include
    # + limitAndroidToIosAppMappingDetails - maximum number of related androidToIosAppMappingDetails returned (when they are included)
    # + limitAppClips - maximum number of related appClips returned (when they are included)
    # + limitAppCustomProductPages - maximum number of related appCustomProductPages returned (when they are included)
    # + limitAppEncryptionDeclarations - maximum number of related appEncryptionDeclarations returned (when they are included)
    # + limitAppEvents - maximum number of related appEvents returned (when they are included)
    # + limitAppInfos - maximum number of related appInfos returned (when they are included)
    # + limitAppStoreVersionExperimentsV2 - maximum number of related appStoreVersionExperimentsV2 returned (when they are included)
    # + limitAppStoreVersions - maximum number of related appStoreVersions returned (when they are included)
    # + limitBetaAppLocalizations - maximum number of related betaAppLocalizations returned (when they are included)
    # + limitBetaGroups - maximum number of related betaGroups returned (when they are included)
    # + limitBuilds - maximum number of related builds returned (when they are included)
    # + limitGameCenterEnabledVersions - maximum number of related gameCenterEnabledVersions returned (when they are included)
    # + limitInAppPurchases - maximum number of related inAppPurchases returned (when they are included)
    # + limitInAppPurchasesV2 - maximum number of related inAppPurchasesV2 returned (when they are included)
    # + limitPreReleaseVersions - maximum number of related preReleaseVersions returned (when they are included)
    # + limitPromotedPurchases - maximum number of related promotedPurchases returned (when they are included)
    # + limitReviewSubmissions - maximum number of related reviewSubmissions returned (when they are included)
    # + limitSubscriptionGroups - maximum number of related subscriptionGroups returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Ok (Single App)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/apps/[string id](@http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[appEncryptionDeclarations]"} ("appDescription"|"createdDate"|"usesEncryption"|"exempt"|"containsProprietaryCryptography"|"containsThirdPartyCryptography"|"availableOnFrenchStore"|"platform"|"uploadedDate"|"documentUrl"|"documentName"|"documentType"|"appEncryptionDeclarationState"|"codeValue"|"app"|"builds"|"appEncryptionDeclarationDocument")[]? fieldsAppEncryptionDeclarations, @http:Query {name: "fields[buildIcons]"} ("iconAsset"|"iconType"|"masked"|"name")[]? fieldsBuildIcons, @http:Query {name: "fields[ciProducts]"} ("name"|"createdDate"|"productType"|"app"|"bundleId"|"workflows"|"primaryRepositories"|"additionalRepositories"|"buildRuns")[]? fieldsCiProducts, @http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[appStoreVersions]"} ("platform"|"versionString"|"appStoreState"|"appVersionState"|"copyright"|"reviewType"|"releaseType"|"earliestReleaseDate"|"usesIdfa"|"downloadable"|"createdDate"|"app"|"appStoreVersionLocalizations"|"build"|"appStoreVersionPhasedRelease"|"gameCenterAppVersion"|"routingAppCoverage"|"appStoreReviewDetail"|"appStoreVersionSubmission"|"appClipDefaultExperience"|"appStoreVersionExperiments"|"appStoreVersionExperimentsV2"|"customerReviews"|"alternativeDistributionPackage")[]? fieldsAppStoreVersions, @http:Query {name: "fields[preReleaseVersions]"} ("version"|"platform"|"builds"|"app")[]? fieldsPreReleaseVersions, @http:Query {name: "fields[betaAppLocalizations]"} ("feedbackEmail"|"marketingUrl"|"privacyPolicyUrl"|"tvOsPrivacyPolicy"|"description"|"locale"|"app")[]? fieldsBetaAppLocalizations, @http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, @http:Query {name: "fields[betaLicenseAgreements]"} ("agreementText"|"app")[]? fieldsBetaLicenseAgreements, @http:Query {name: "fields[betaAppReviewDetails]"} ("contactFirstName"|"contactLastName"|"contactPhone"|"contactEmail"|"demoAccountName"|"demoAccountPassword"|"demoAccountRequired"|"notes"|"app")[]? fieldsBetaAppReviewDetails, @http:Query {name: "fields[appInfos]"} ("appStoreState"|"state"|"appStoreAgeRating"|"australiaAgeRating"|"brazilAgeRating"|"brazilAgeRatingV2"|"franceAgeRating"|"koreaAgeRating"|"app"|"ageRatingDeclaration"|"appInfoLocalizations"|"primaryCategory"|"primarySubcategoryOne"|"primarySubcategoryTwo"|"secondaryCategory"|"secondarySubcategoryOne"|"secondarySubcategoryTwo"|"territoryAgeRatings")[]? fieldsAppInfos, @http:Query {name: "fields[appClips]"} ("bundleId"|"app"|"appClipDefaultExperiences"|"appClipAdvancedExperiences")[]? fieldsAppClips, @http:Query {name: "fields[endUserLicenseAgreements]"} ("agreementText"|"app"|"territories")[]? fieldsEndUserLicenseAgreements, @http:Query {name: "fields[inAppPurchases]"} ("referenceName"|"productId"|"inAppPurchaseType"|"state"|"apps"|"name"|"reviewNote"|"familySharable"|"contentHosting"|"inAppPurchaseLocalizations"|"pricePoints"|"content"|"appStoreReviewScreenshot"|"promotedPurchase"|"iapPriceSchedule"|"inAppPurchaseAvailability"|"images"|"offerCodes"|"versions")[]? fieldsInAppPurchases, @http:Query {name: "fields[subscriptionGroups]"} ("referenceName"|"subscriptions"|"subscriptionGroupLocalizations"|"versions")[]? fieldsSubscriptionGroups, @http:Query {name: "fields[gameCenterEnabledVersions]"} ("platform"|"versionString"|"iconAsset"|"compatibleVersions"|"app")[]? fieldsGameCenterEnabledVersions, @http:Query {name: "fields[appCustomProductPages]"} ("name"|"url"|"visible"|"app"|"appCustomProductPageVersions")[]? fieldsAppCustomProductPages, @http:Query {name: "fields[promotedPurchases]"} ("visibleForAllUsers"|"enabled"|"state"|"inAppPurchaseV2"|"subscription")[]? fieldsPromotedPurchases, @http:Query {name: "fields[appEvents]"} ("referenceName"|"badge"|"eventState"|"deepLink"|"purchaseRequirement"|"primaryLocale"|"priority"|"purpose"|"territorySchedules"|"archivedTerritorySchedules"|"localizations")[]? fieldsAppEvents, @http:Query {name: "fields[reviewSubmissions]"} ("platform"|"submittedDate"|"state"|"app"|"items"|"appStoreVersionForReview"|"submittedByActor"|"lastUpdatedByActor")[]? fieldsReviewSubmissions, @http:Query {name: "fields[subscriptionGracePeriods]"} ("optIn"|"sandboxOptIn"|"duration"|"renewalType")[]? fieldsSubscriptionGracePeriods, @http:Query {name: "fields[gameCenterDetails]"} ("arcadeEnabled"|"challengeEnabled"|"app"|"gameCenterAppVersions"|"gameCenterGroup"|"gameCenterLeaderboards"|"gameCenterLeaderboardsV2"|"gameCenterLeaderboardSets"|"gameCenterLeaderboardSetsV2"|"gameCenterAchievements"|"gameCenterAchievementsV2"|"gameCenterActivities"|"gameCenterChallenges"|"defaultLeaderboard"|"defaultLeaderboardV2"|"defaultGroupLeaderboard"|"defaultGroupLeaderboardV2"|"achievementReleases"|"activityReleases"|"challengeReleases"|"leaderboardReleases"|"leaderboardSetReleases"|"blockedPlayers"|"challengesMinimumPlatformVersions")[]? fieldsGameCenterDetails, @http:Query {name: "fields[appStoreVersionExperiments]"} ("name"|"platform"|"trafficProportion"|"state"|"reviewRequired"|"startDate"|"endDate"|"app"|"latestControlVersion"|"controlVersions"|"appStoreVersionExperimentTreatments")[]? fieldsAppStoreVersionExperiments, @http:Query {name: "fields[androidToIosAppMappingDetails]"} ("packageName"|"appSigningKeyPublicCertificateSha256Fingerprints")[]? fieldsAndroidToIosAppMappingDetails, ("appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaGroups"|"appStoreVersions"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"endUserLicenseAgreement"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"androidToIosAppMappingDetails")[]? include, @http:Query {name: "limit[androidToIosAppMappingDetails]"} int? limitAndroidToIosAppMappingDetails, @http:Query {name: "limit[appClips]"} int? limitAppClips, @http:Query {name: "limit[appCustomProductPages]"} int? limitAppCustomProductPages, @http:Query {name: "limit[appEncryptionDeclarations]"} int? limitAppEncryptionDeclarations, @http:Query {name: "limit[appEvents]"} int? limitAppEvents, @http:Query {name: "limit[appInfos]"} int? limitAppInfos, @http:Query {name: "limit[appStoreVersionExperimentsV2]"} int? limitAppStoreVersionExperimentsV2, @http:Query {name: "limit[appStoreVersions]"} int? limitAppStoreVersions, @http:Query {name: "limit[betaAppLocalizations]"} int? limitBetaAppLocalizations, @http:Query {name: "limit[betaGroups]"} int? limitBetaGroups, @http:Query {name: "limit[builds]"} int? limitBuilds, @http:Query {name: "limit[gameCenterEnabledVersions]"} int? limitGameCenterEnabledVersions, @http:Query {name: "limit[inAppPurchases]"} int? limitInAppPurchases, @http:Query {name: "limit[inAppPurchasesV2]"} int? limitInAppPurchasesV2, @http:Query {name: "limit[preReleaseVersions]"} int? limitPreReleaseVersions, @http:Query {name: "limit[promotedPurchases]"} int? limitPromotedPurchases, @http:Query {name: "limit[reviewSubmissions]"} int? limitReviewSubmissions, @http:Query {name: "limit[subscriptionGroups]"} int? limitSubscriptionGroups) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|AppResponse|ErrorResponseTooManyRequests {
        AppResponse res = {
            data: appRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + filter\[territory\] - filter by attribute 'territory'
    # + filterRating - filter by attribute 'rating'
    # + filterReviewTerritory - filter by id(s) of related 'reviewTerritory'
    # + existsPublishedResponse - filter by publishedResponse
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[customerReviews\] - the fields to include for returned resources of type customerReviews
    # + fields\[customerReviewResponses\] - the fields to include for returned resources of type customerReviewResponses
    # + fields\[territories\] - the fields to include for returned resources of type territories
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Ok (List of CustomerReviews)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/apps/[string id]/customerReviews(@http:Query {name: "filter[territory]"} ("ABW"|"AFG"|"AGO"|"AIA"|"ALB"|"AND"|"ANT"|"ARE"|"ARG"|"ARM"|"ASM"|"ATG"|"AUS"|"AUT"|"AZE"|"BDI"|"BEL"|"BEN"|"BES"|"BFA"|"BGD"|"BGR"|"BHR"|"BHS"|"BIH"|"BLR"|"BLZ"|"BMU"|"BOL"|"BRA"|"BRB"|"BRN"|"BTN"|"BWA"|"CAF"|"CAN"|"CHE"|"CHL"|"CHN"|"CIV"|"CMR"|"COD"|"COG"|"COK"|"COL"|"COM"|"CPV"|"CRI"|"CUB"|"CUW"|"CXR"|"CYM"|"CYP"|"CZE"|"DEU"|"DJI"|"DMA"|"DNK"|"DOM"|"DZA"|"ECU"|"EGY"|"ERI"|"ESP"|"EST"|"ETH"|"FIN"|"FJI"|"FLK"|"FRA"|"FRO"|"FSM"|"GAB"|"GBR"|"GEO"|"GGY"|"GHA"|"GIB"|"GIN"|"GLP"|"GMB"|"GNB"|"GNQ"|"GRC"|"GRD"|"GRL"|"GTM"|"GUF"|"GUM"|"GUY"|"HKG"|"HND"|"HRV"|"HTI"|"HUN"|"IDN"|"IMN"|"IND"|"IRL"|"IRQ"|"ISL"|"ISR"|"ITA"|"JAM"|"JEY"|"JOR"|"JPN"|"KAZ"|"KEN"|"KGZ"|"KHM"|"KIR"|"KNA"|"KOR"|"KWT"|"LAO"|"LBN"|"LBR"|"LBY"|"LCA"|"LIE"|"LKA"|"LSO"|"LTU"|"LUX"|"LVA"|"MAC"|"MAR"|"MCO"|"MDA"|"MDG"|"MDV"|"MEX"|"MHL"|"MKD"|"MLI"|"MLT"|"MMR"|"MNE"|"MNG"|"MNP"|"MOZ"|"MRT"|"MSR"|"MTQ"|"MUS"|"MWI"|"MYS"|"MYT"|"NAM"|"NCL"|"NER"|"NFK"|"NGA"|"NIC"|"NIU"|"NLD"|"NOR"|"NPL"|"NRU"|"NZL"|"OMN"|"PAK"|"PAN"|"PER"|"PHL"|"PLW"|"PNG"|"POL"|"PRI"|"PRT"|"PRY"|"PSE"|"PYF"|"QAT"|"REU"|"ROU"|"RUS"|"RWA"|"SAU"|"SEN"|"SGP"|"SHN"|"SLB"|"SLE"|"SLV"|"SMR"|"SOM"|"SPM"|"SRB"|"SSD"|"STP"|"SUR"|"SVK"|"SVN"|"SWE"|"SWZ"|"SXM"|"SYC"|"TCA"|"TCD"|"TGO"|"THA"|"TJK"|"TKM"|"TLS"|"TON"|"TTO"|"TUN"|"TUR"|"TUV"|"TWN"|"TZA"|"UGA"|"UKR"|"UMI"|"URY"|"USA"|"UZB"|"VAT"|"VCT"|"VEN"|"VGB"|"VIR"|"VNM"|"VUT"|"WLF"|"WSM"|"XKS"|"YEM"|"ZAF"|"ZMB"|"ZWE")[]? filterTerritory, @http:Query {name: "filter[rating]"} string[]? filterRating, @http:Query {name: "filter[reviewTerritory]"} string[]? filterReviewTerritory, @http:Query {name: "exists[publishedResponse]"} boolean? existsPublishedResponse, ("rating"|"-rating"|"createdDate"|"-createdDate")[]? sort, @http:Query {name: "fields[customerReviews]"} ("rating"|"title"|"body"|"reviewerNickname"|"createdDate"|"territory"|"response"|"reviewTerritory")[]? fieldsCustomerReviews, @http:Query {name: "fields[customerReviewResponses]"} ("responseBody"|"lastModifiedDate"|"state"|"review")[]? fieldsCustomerReviewResponses, @http:Query {name: "fields[territories]"} ("currency")[]? fieldsTerritories, int? 'limit, ("response"|"reviewTerritory")[]? include) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|CustomerReviewsResponse|ErrorResponseTooManyRequests {
        CustomerReviewsResponse res = {
            data: [reviewRec("rev-1001")],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + filterName - filter by attribute 'name'
    # + filterIsInternalGroup - filter by attribute 'isInternalGroup'
    # + filterPublicLinkEnabled - filter by attribute 'publicLinkEnabled'
    # + filterPublicLinkLimitEnabled - filter by attribute 'publicLinkLimitEnabled'
    # + filterPublicLink - filter by attribute 'publicLink'
    # + filterApp - filter by id(s) of related 'app'
    # + filterBuilds - filter by id(s) of related 'builds'
    # + filterId - filter by id(s)
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + fields\[betaTesters\] - the fields to include for returned resources of type betaTesters
    # + fields\[betaRecruitmentCriteria\] - the fields to include for returned resources of type betaRecruitmentCriteria
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + limitBetaTesters - maximum number of related betaTesters returned (when they are included)
    # + limitBuilds - maximum number of related builds returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of BetaGroups)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/betaGroups(@http:Query {name: "filter[name]"} string[]? filterName, @http:Query {name: "filter[isInternalGroup]"} string[]? filterIsInternalGroup, @http:Query {name: "filter[publicLinkEnabled]"} string[]? filterPublicLinkEnabled, @http:Query {name: "filter[publicLinkLimitEnabled]"} string[]? filterPublicLinkLimitEnabled, @http:Query {name: "filter[publicLink]"} string[]? filterPublicLink, @http:Query {name: "filter[app]"} string[]? filterApp, @http:Query {name: "filter[builds]"} string[]? filterBuilds, @http:Query {name: "filter[id]"} string[]? filterId, ("name"|"-name"|"createdDate"|"-createdDate"|"publicLinkEnabled"|"-publicLinkEnabled"|"publicLinkLimit"|"-publicLinkLimit")[]? sort, @http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, @http:Query {name: "fields[betaTesters]"} ("firstName"|"lastName"|"email"|"inviteType"|"state"|"appDevices"|"apps"|"betaGroups"|"builds")[]? fieldsBetaTesters, @http:Query {name: "fields[betaRecruitmentCriteria]"} ("lastModifiedDate"|"deviceFamilyOsVersionFilters")[]? fieldsBetaRecruitmentCriteria, int? 'limit, ("app"|"builds"|"betaTesters"|"betaRecruitmentCriteria")[]? include, @http:Query {name: "limit[betaTesters]"} int? limitBetaTesters, @http:Query {name: "limit[builds]"} int? limitBuilds) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|BetaGroupsResponse|ErrorResponseTooManyRequests {
        BetaGroupsResponse res = {
            data: [betaGroupRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + fields\[betaTesters\] - the fields to include for returned resources of type betaTesters
    # + fields\[betaRecruitmentCriteria\] - the fields to include for returned resources of type betaRecruitmentCriteria
    # + include - comma-separated list of relationships to include
    # + limitBetaTesters - maximum number of related betaTesters returned (when they are included)
    # + limitBuilds - maximum number of related builds returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Ok (Single BetaGroup)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/betaGroups/[string id](@http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, @http:Query {name: "fields[betaTesters]"} ("firstName"|"lastName"|"email"|"inviteType"|"state"|"appDevices"|"apps"|"betaGroups"|"builds")[]? fieldsBetaTesters, @http:Query {name: "fields[betaRecruitmentCriteria]"} ("lastModifiedDate"|"deviceFamilyOsVersionFilters")[]? fieldsBetaRecruitmentCriteria, ("app"|"builds"|"betaTesters"|"betaRecruitmentCriteria")[]? include, @http:Query {name: "limit[betaTesters]"} int? limitBetaTesters, @http:Query {name: "limit[builds]"} int? limitBuilds) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|BetaGroupResponse|ErrorResponseTooManyRequests {
        BetaGroupResponse res = {
            data: betaGroupRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + filterFirstName - filter by attribute 'firstName'
    # + filterLastName - filter by attribute 'lastName'
    # + filterEmail - filter by attribute 'email'
    # + filter\[inviteType\] - filter by attribute 'inviteType'
    # + filterApps - filter by id(s) of related 'apps'
    # + filterBetaGroups - filter by id(s) of related 'betaGroups'
    # + filterBuilds - filter by id(s) of related 'builds'
    # + filterId - filter by id(s)
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[betaTesters\] - the fields to include for returned resources of type betaTesters
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + limitApps - maximum number of related apps returned (when they are included)
    # + limitBetaGroups - maximum number of related betaGroups returned (when they are included)
    # + limitBuilds - maximum number of related builds returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of BetaTesters)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/betaTesters(@http:Query {name: "filter[firstName]"} string[]? filterFirstName, @http:Query {name: "filter[lastName]"} string[]? filterLastName, @http:Query {name: "filter[email]"} string[]? filterEmail, @http:Query {name: "filter[inviteType]"} ("EMAIL"|"PUBLIC_LINK")[]? filterInviteType, @http:Query {name: "filter[apps]"} string[]? filterApps, @http:Query {name: "filter[betaGroups]"} string[]? filterBetaGroups, @http:Query {name: "filter[builds]"} string[]? filterBuilds, @http:Query {name: "filter[id]"} string[]? filterId, ("firstName"|"-firstName"|"lastName"|"-lastName"|"email"|"-email"|"inviteType"|"-inviteType"|"state"|"-state")[]? sort, @http:Query {name: "fields[betaTesters]"} ("firstName"|"lastName"|"email"|"inviteType"|"state"|"appDevices"|"apps"|"betaGroups"|"builds")[]? fieldsBetaTesters, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, int? 'limit, ("apps"|"betaGroups"|"builds")[]? include, @http:Query {name: "limit[apps]"} int? limitApps, @http:Query {name: "limit[betaGroups]"} int? limitBetaGroups, @http:Query {name: "limit[builds]"} int? limitBuilds) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|BetaTestersResponse|ErrorResponseTooManyRequests {
        BetaTestersResponse res = {
            data: [betaTesterRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + fields\[betaTesters\] - the fields to include for returned resources of type betaTesters
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + include - comma-separated list of relationships to include
    # + limitApps - maximum number of related apps returned (when they are included)
    # + limitBetaGroups - maximum number of related betaGroups returned (when they are included)
    # + limitBuilds - maximum number of related builds returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Ok (Single BetaTester)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/betaTesters/[string id](@http:Query {name: "fields[betaTesters]"} ("firstName"|"lastName"|"email"|"inviteType"|"state"|"appDevices"|"apps"|"betaGroups"|"builds")[]? fieldsBetaTesters, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, ("apps"|"betaGroups"|"builds")[]? include, @http:Query {name: "limit[apps]"} int? limitApps, @http:Query {name: "limit[betaGroups]"} int? limitBetaGroups, @http:Query {name: "limit[builds]"} int? limitBuilds) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|BetaTesterResponse|ErrorResponseTooManyRequests {
        BetaTesterResponse res = {
            data: betaTesterRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + filterVersion - filter by attribute 'version'
    # + filterExpired - filter by attribute 'expired'
    # + filter\[processingState\] - filter by attribute 'processingState'
    # + filter\[betaAppReviewSubmission\.betaReviewState\] - filter by attribute 'betaAppReviewSubmission.betaReviewState'
    # + filterUsesNonExemptEncryption - filter by attribute 'usesNonExemptEncryption'
    # + filterPreReleaseVersionVersion - filter by attribute 'preReleaseVersion.version'
    # + filter\[preReleaseVersion\.platform\] - filter by attribute 'preReleaseVersion.platform'
    # + filter\[buildAudienceType\] - filter by attribute 'buildAudienceType'
    # + filterPreReleaseVersion - filter by id(s) of related 'preReleaseVersion'
    # + filterApp - filter by id(s) of related 'app'
    # + filterBetaGroups - filter by id(s) of related 'betaGroups'
    # + filterAppStoreVersion - filter by id(s) of related 'appStoreVersion'
    # + filterId - filter by id(s)
    # + existsUsesNonExemptEncryption - filter by attribute 'usesNonExemptEncryption'
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + fields\[preReleaseVersions\] - the fields to include for returned resources of type preReleaseVersions
    # + fields\[betaTesters\] - the fields to include for returned resources of type betaTesters
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[betaBuildLocalizations\] - the fields to include for returned resources of type betaBuildLocalizations
    # + fields\[appEncryptionDeclarations\] - the fields to include for returned resources of type appEncryptionDeclarations
    # + fields\[betaAppReviewSubmissions\] - the fields to include for returned resources of type betaAppReviewSubmissions
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[buildBetaDetails\] - the fields to include for returned resources of type buildBetaDetails
    # + fields\[appStoreVersions\] - the fields to include for returned resources of type appStoreVersions
    # + fields\[buildIcons\] - the fields to include for returned resources of type buildIcons
    # + fields\[buildBundles\] - the fields to include for returned resources of type buildBundles
    # + fields\[buildUploads\] - the fields to include for returned resources of type buildUploads
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + limitBetaBuildLocalizations - maximum number of related betaBuildLocalizations returned (when they are included)
    # + limitBetaGroups - maximum number of related betaGroups returned (when they are included)
    # + limitBuildBundles - maximum number of related buildBundles returned (when they are included)
    # + limitIcons - maximum number of related icons returned (when they are included)
    # + limitIndividualTesters - maximum number of related individualTesters returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of Builds)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/builds(@http:Query {name: "filter[version]"} string[]? filterVersion, @http:Query {name: "filter[expired]"} string[]? filterExpired, @http:Query {name: "filter[processingState]"} ("PROCESSING"|"FAILED"|"INVALID"|"VALID")[]? filterProcessingState, @http:Query {name: "filter[betaAppReviewSubmission.betaReviewState]"} ("WAITING_FOR_REVIEW"|"IN_REVIEW"|"REJECTED"|"APPROVED")[]? filterBetaAppReviewSubmissionBetaReviewState, @http:Query {name: "filter[usesNonExemptEncryption]"} string[]? filterUsesNonExemptEncryption, @http:Query {name: "filter[preReleaseVersion.version]"} string[]? filterPreReleaseVersionVersion, @http:Query {name: "filter[preReleaseVersion.platform]"} ("IOS"|"MAC_OS"|"TV_OS"|"VISION_OS")[]? filterPreReleaseVersionPlatform, @http:Query {name: "filter[buildAudienceType]"} ("INTERNAL_ONLY"|"APP_STORE_ELIGIBLE")[]? filterBuildAudienceType, @http:Query {name: "filter[preReleaseVersion]"} string[]? filterPreReleaseVersion, @http:Query {name: "filter[app]"} string[]? filterApp, @http:Query {name: "filter[betaGroups]"} string[]? filterBetaGroups, @http:Query {name: "filter[appStoreVersion]"} string[]? filterAppStoreVersion, @http:Query {name: "filter[id]"} string[]? filterId, @http:Query {name: "exists[usesNonExemptEncryption]"} boolean? existsUsesNonExemptEncryption, ("version"|"-version"|"uploadedDate"|"-uploadedDate"|"preReleaseVersion"|"-preReleaseVersion")[]? sort, @http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, @http:Query {name: "fields[preReleaseVersions]"} ("version"|"platform"|"builds"|"app")[]? fieldsPreReleaseVersions, @http:Query {name: "fields[betaTesters]"} ("firstName"|"lastName"|"email"|"inviteType"|"state"|"appDevices"|"apps"|"betaGroups"|"builds")[]? fieldsBetaTesters, @http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[betaBuildLocalizations]"} ("whatsNew"|"locale"|"build")[]? fieldsBetaBuildLocalizations, @http:Query {name: "fields[appEncryptionDeclarations]"} ("appDescription"|"createdDate"|"usesEncryption"|"exempt"|"containsProprietaryCryptography"|"containsThirdPartyCryptography"|"availableOnFrenchStore"|"platform"|"uploadedDate"|"documentUrl"|"documentName"|"documentType"|"appEncryptionDeclarationState"|"codeValue"|"app"|"builds"|"appEncryptionDeclarationDocument")[]? fieldsAppEncryptionDeclarations, @http:Query {name: "fields[betaAppReviewSubmissions]"} ("betaReviewState"|"submittedDate"|"build")[]? fieldsBetaAppReviewSubmissions, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[buildBetaDetails]"} ("autoNotifyEnabled"|"internalBuildState"|"externalBuildState"|"build")[]? fieldsBuildBetaDetails, @http:Query {name: "fields[appStoreVersions]"} ("platform"|"versionString"|"appStoreState"|"appVersionState"|"copyright"|"reviewType"|"releaseType"|"earliestReleaseDate"|"usesIdfa"|"downloadable"|"createdDate"|"app"|"appStoreVersionLocalizations"|"build"|"appStoreVersionPhasedRelease"|"gameCenterAppVersion"|"routingAppCoverage"|"appStoreReviewDetail"|"appStoreVersionSubmission"|"appClipDefaultExperience"|"appStoreVersionExperiments"|"appStoreVersionExperimentsV2"|"customerReviews"|"alternativeDistributionPackage")[]? fieldsAppStoreVersions, @http:Query {name: "fields[buildIcons]"} ("iconAsset"|"iconType"|"masked"|"name")[]? fieldsBuildIcons, @http:Query {name: "fields[buildBundles]"} ("bundleId"|"bundleType"|"sdkBuild"|"platformBuild"|"fileName"|"hasSirikit"|"hasOnDemandResources"|"hasPrerenderedIcon"|"usesLocationServices"|"isIosBuildMacAppStoreCompatible"|"includesSymbols"|"dSYMUrl"|"supportedArchitectures"|"requiredCapabilities"|"deviceProtocols"|"locales"|"entitlements"|"baDownloadAllowance"|"baMaxInstallSize"|"minimumOsVersion"|"appClipDomainCacheStatus"|"appClipDomainDebugStatus"|"betaAppClipInvocations"|"buildBundleFileSizes")[]? fieldsBuildBundles, @http:Query {name: "fields[buildUploads]"} ("cfBundleShortVersionString"|"cfBundleVersion"|"createdDate"|"state"|"platform"|"uploadedDate"|"build"|"assetFile"|"assetDescriptionFile"|"assetSpiFile"|"buildUploadFiles")[]? fieldsBuildUploads, int? 'limit, ("preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload")[]? include, @http:Query {name: "limit[betaBuildLocalizations]"} int? limitBetaBuildLocalizations, @http:Query {name: "limit[betaGroups]"} int? limitBetaGroups, @http:Query {name: "limit[buildBundles]"} int? limitBuildBundles, @http:Query {name: "limit[icons]"} int? limitIcons, @http:Query {name: "limit[individualTesters]"} int? limitIndividualTesters) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|BuildsResponse|ErrorResponseTooManyRequests {
        BuildsResponse res = {
            data: [buildRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + fields\[builds\] - the fields to include for returned resources of type builds
    # + fields\[preReleaseVersions\] - the fields to include for returned resources of type preReleaseVersions
    # + fields\[betaTesters\] - the fields to include for returned resources of type betaTesters
    # + fields\[betaGroups\] - the fields to include for returned resources of type betaGroups
    # + fields\[betaBuildLocalizations\] - the fields to include for returned resources of type betaBuildLocalizations
    # + fields\[appEncryptionDeclarations\] - the fields to include for returned resources of type appEncryptionDeclarations
    # + fields\[betaAppReviewSubmissions\] - the fields to include for returned resources of type betaAppReviewSubmissions
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + fields\[buildBetaDetails\] - the fields to include for returned resources of type buildBetaDetails
    # + fields\[appStoreVersions\] - the fields to include for returned resources of type appStoreVersions
    # + fields\[buildIcons\] - the fields to include for returned resources of type buildIcons
    # + fields\[buildBundles\] - the fields to include for returned resources of type buildBundles
    # + fields\[buildUploads\] - the fields to include for returned resources of type buildUploads
    # + include - comma-separated list of relationships to include
    # + limitBetaBuildLocalizations - maximum number of related betaBuildLocalizations returned (when they are included)
    # + limitBetaGroups - maximum number of related betaGroups returned (when they are included)
    # + limitBuildBundles - maximum number of related buildBundles returned (when they are included)
    # + limitIcons - maximum number of related icons returned (when they are included)
    # + limitIndividualTesters - maximum number of related individualTesters returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Ok (Single Build)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/builds/[string id](@http:Query {name: "fields[builds]"} ("version"|"uploadedDate"|"expirationDate"|"expired"|"minOsVersion"|"lsMinimumSystemVersion"|"computedMinMacOsVersion"|"computedMinVisionOsVersion"|"iconAssetToken"|"processingState"|"buildAudienceType"|"usesNonExemptEncryption"|"preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload"|"perfPowerMetrics"|"diagnosticSignatures")[]? fieldsBuilds, @http:Query {name: "fields[preReleaseVersions]"} ("version"|"platform"|"builds"|"app")[]? fieldsPreReleaseVersions, @http:Query {name: "fields[betaTesters]"} ("firstName"|"lastName"|"email"|"inviteType"|"state"|"appDevices"|"apps"|"betaGroups"|"builds")[]? fieldsBetaTesters, @http:Query {name: "fields[betaGroups]"} ("name"|"createdDate"|"isInternalGroup"|"hasAccessToAllBuilds"|"publicLinkEnabled"|"publicLinkId"|"publicLinkLimitEnabled"|"publicLinkLimit"|"publicLink"|"feedbackEnabled"|"iosBuildsAvailableForAppleSiliconMac"|"iosBuildsAvailableForAppleVision"|"app"|"builds"|"betaTesters"|"betaRecruitmentCriteria"|"betaRecruitmentCriterionCompatibleBuildCheck")[]? fieldsBetaGroups, @http:Query {name: "fields[betaBuildLocalizations]"} ("whatsNew"|"locale"|"build")[]? fieldsBetaBuildLocalizations, @http:Query {name: "fields[appEncryptionDeclarations]"} ("appDescription"|"createdDate"|"usesEncryption"|"exempt"|"containsProprietaryCryptography"|"containsThirdPartyCryptography"|"availableOnFrenchStore"|"platform"|"uploadedDate"|"documentUrl"|"documentName"|"documentType"|"appEncryptionDeclarationState"|"codeValue"|"app"|"builds"|"appEncryptionDeclarationDocument")[]? fieldsAppEncryptionDeclarations, @http:Query {name: "fields[betaAppReviewSubmissions]"} ("betaReviewState"|"submittedDate"|"build")[]? fieldsBetaAppReviewSubmissions, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, @http:Query {name: "fields[buildBetaDetails]"} ("autoNotifyEnabled"|"internalBuildState"|"externalBuildState"|"build")[]? fieldsBuildBetaDetails, @http:Query {name: "fields[appStoreVersions]"} ("platform"|"versionString"|"appStoreState"|"appVersionState"|"copyright"|"reviewType"|"releaseType"|"earliestReleaseDate"|"usesIdfa"|"downloadable"|"createdDate"|"app"|"appStoreVersionLocalizations"|"build"|"appStoreVersionPhasedRelease"|"gameCenterAppVersion"|"routingAppCoverage"|"appStoreReviewDetail"|"appStoreVersionSubmission"|"appClipDefaultExperience"|"appStoreVersionExperiments"|"appStoreVersionExperimentsV2"|"customerReviews"|"alternativeDistributionPackage")[]? fieldsAppStoreVersions, @http:Query {name: "fields[buildIcons]"} ("iconAsset"|"iconType"|"masked"|"name")[]? fieldsBuildIcons, @http:Query {name: "fields[buildBundles]"} ("bundleId"|"bundleType"|"sdkBuild"|"platformBuild"|"fileName"|"hasSirikit"|"hasOnDemandResources"|"hasPrerenderedIcon"|"usesLocationServices"|"isIosBuildMacAppStoreCompatible"|"includesSymbols"|"dSYMUrl"|"supportedArchitectures"|"requiredCapabilities"|"deviceProtocols"|"locales"|"entitlements"|"baDownloadAllowance"|"baMaxInstallSize"|"minimumOsVersion"|"appClipDomainCacheStatus"|"appClipDomainDebugStatus"|"betaAppClipInvocations"|"buildBundleFileSizes")[]? fieldsBuildBundles, @http:Query {name: "fields[buildUploads]"} ("cfBundleShortVersionString"|"cfBundleVersion"|"createdDate"|"state"|"platform"|"uploadedDate"|"build"|"assetFile"|"assetDescriptionFile"|"assetSpiFile"|"buildUploadFiles")[]? fieldsBuildUploads, ("preReleaseVersion"|"individualTesters"|"betaGroups"|"betaBuildLocalizations"|"appEncryptionDeclaration"|"betaAppReviewSubmission"|"app"|"buildBetaDetail"|"appStoreVersion"|"icons"|"buildBundles"|"buildUpload")[]? include, @http:Query {name: "limit[betaBuildLocalizations]"} int? limitBetaBuildLocalizations, @http:Query {name: "limit[betaGroups]"} int? limitBetaGroups, @http:Query {name: "limit[buildBundles]"} int? limitBuildBundles, @http:Query {name: "limit[icons]"} int? limitIcons, @http:Query {name: "limit[individualTesters]"} int? limitIndividualTesters) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|BuildResponse|ErrorResponseTooManyRequests {
        BuildResponse res = {
            data: buildRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + filterName - filter by attribute 'name'
    # + filter\[platform\] - filter by attribute 'platform'
    # + filterIdentifier - filter by attribute 'identifier'
    # + filterSeedId - filter by attribute 'seedId'
    # + filterId - filter by id(s)
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[bundleIds\] - the fields to include for returned resources of type bundleIds
    # + fields\[profiles\] - the fields to include for returned resources of type profiles
    # + fields\[bundleIdCapabilities\] - the fields to include for returned resources of type bundleIdCapabilities
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + limitBundleIdCapabilities - maximum number of related bundleIdCapabilities returned (when they are included)
    # + limitProfiles - maximum number of related profiles returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of BundleIds)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/bundleIds(@http:Query {name: "filter[name]"} string[]? filterName, @http:Query {name: "filter[platform]"} ("IOS"|"MAC_OS"|"UNIVERSAL")[]? filterPlatform, @http:Query {name: "filter[identifier]"} string[]? filterIdentifier, @http:Query {name: "filter[seedId]"} string[]? filterSeedId, @http:Query {name: "filter[id]"} string[]? filterId, ("name"|"-name"|"platform"|"-platform"|"identifier"|"-identifier"|"seedId"|"-seedId"|"id"|"-id")[]? sort, @http:Query {name: "fields[bundleIds]"} ("name"|"platform"|"identifier"|"seedId"|"profiles"|"bundleIdCapabilities"|"app")[]? fieldsBundleIds, @http:Query {name: "fields[profiles]"} ("name"|"platform"|"profileType"|"profileState"|"profileContent"|"uuid"|"createdDate"|"expirationDate"|"bundleId"|"devices"|"certificates")[]? fieldsProfiles, @http:Query {name: "fields[bundleIdCapabilities]"} ("capabilityType"|"settings")[]? fieldsBundleIdCapabilities, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, int? 'limit, ("profiles"|"bundleIdCapabilities"|"app")[]? include, @http:Query {name: "limit[bundleIdCapabilities]"} int? limitBundleIdCapabilities, @http:Query {name: "limit[profiles]"} int? limitProfiles) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|BundleIdsResponse|ErrorResponseTooManyRequests {
        BundleIdsResponse res = {
            data: [bundleIdRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + fields\[bundleIds\] - the fields to include for returned resources of type bundleIds
    # + fields\[profiles\] - the fields to include for returned resources of type profiles
    # + fields\[bundleIdCapabilities\] - the fields to include for returned resources of type bundleIdCapabilities
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + include - comma-separated list of relationships to include
    # + limitBundleIdCapabilities - maximum number of related bundleIdCapabilities returned (when they are included)
    # + limitProfiles - maximum number of related profiles returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Ok (Single BundleId)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/bundleIds/[string id](@http:Query {name: "fields[bundleIds]"} ("name"|"platform"|"identifier"|"seedId"|"profiles"|"bundleIdCapabilities"|"app")[]? fieldsBundleIds, @http:Query {name: "fields[profiles]"} ("name"|"platform"|"profileType"|"profileState"|"profileContent"|"uuid"|"createdDate"|"expirationDate"|"bundleId"|"devices"|"certificates")[]? fieldsProfiles, @http:Query {name: "fields[bundleIdCapabilities]"} ("capabilityType"|"settings")[]? fieldsBundleIdCapabilities, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, ("profiles"|"bundleIdCapabilities"|"app")[]? include, @http:Query {name: "limit[bundleIdCapabilities]"} int? limitBundleIdCapabilities, @http:Query {name: "limit[profiles]"} int? limitProfiles) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|BundleIdResponse|ErrorResponseTooManyRequests {
        BundleIdResponse res = {
            data: bundleIdRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + filterDisplayName - filter by attribute 'displayName'
    # + filter\[certificateType\] - filter by attribute 'certificateType'
    # + filterSerialNumber - filter by attribute 'serialNumber'
    # + filterId - filter by id(s)
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[certificates\] - the fields to include for returned resources of type certificates
    # + fields\[passTypeIds\] - the fields to include for returned resources of type passTypeIds
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of Certificates)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/certificates(@http:Query {name: "filter[displayName]"} string[]? filterDisplayName, @http:Query {name: "filter[certificateType]"} ("APPLE_PAY"|"APPLE_PAY_MERCHANT_IDENTITY"|"APPLE_PAY_PSP_IDENTITY"|"APPLE_PAY_RSA"|"DEVELOPER_ID_KEXT"|"DEVELOPER_ID_KEXT_G2"|"DEVELOPER_ID_APPLICATION"|"DEVELOPER_ID_APPLICATION_G2"|"DEVELOPMENT"|"DISTRIBUTION"|"IDENTITY_ACCESS"|"IOS_DEVELOPMENT"|"IOS_DISTRIBUTION"|"MAC_APP_DISTRIBUTION"|"MAC_INSTALLER_DISTRIBUTION"|"MAC_APP_DEVELOPMENT"|"PASS_TYPE_ID"|"PASS_TYPE_ID_WITH_NFC")[]? filterCertificateType, @http:Query {name: "filter[serialNumber]"} string[]? filterSerialNumber, @http:Query {name: "filter[id]"} string[]? filterId, ("displayName"|"-displayName"|"certificateType"|"-certificateType"|"serialNumber"|"-serialNumber"|"id"|"-id")[]? sort, @http:Query {name: "fields[certificates]"} ("name"|"certificateType"|"displayName"|"serialNumber"|"platform"|"expirationDate"|"certificateContent"|"activated"|"passTypeId")[]? fieldsCertificates, @http:Query {name: "fields[passTypeIds]"} ("name"|"identifier"|"certificates")[]? fieldsPassTypeIds, int? 'limit, ("passTypeId")[]? include) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|CertificatesResponse|ErrorResponseTooManyRequests {
        CertificatesResponse res = {
            data: [certificateRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + filterName - filter by attribute 'name'
    # + filter\[platform\] - filter by attribute 'platform'
    # + filterUdid - filter by attribute 'udid'
    # + filter\[status\] - filter by attribute 'status'
    # + filterId - filter by id(s)
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[devices\] - the fields to include for returned resources of type devices
    # + 'limit - maximum resources per page
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of Devices)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/devices(@http:Query {name: "filter[name]"} string[]? filterName, @http:Query {name: "filter[platform]"} ("IOS"|"MAC_OS"|"UNIVERSAL")[]? filterPlatform, @http:Query {name: "filter[udid]"} string[]? filterUdid, @http:Query {name: "filter[status]"} ("ENABLED"|"DISABLED")[]? filterStatus, @http:Query {name: "filter[id]"} string[]? filterId, ("name"|"-name"|"platform"|"-platform"|"udid"|"-udid"|"status"|"-status"|"id"|"-id")[]? sort, @http:Query {name: "fields[devices]"} ("name"|"platform"|"udid"|"deviceClass"|"status"|"model"|"addedDate")[]? fieldsDevices, int? 'limit) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|DevicesResponse|ErrorResponseTooManyRequests {
        DevicesResponse res = {
            data: [deviceRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + filterUsername - filter by attribute 'username'
    # + filter\[roles\] - filter by attribute 'roles'
    # + filterVisibleApps - filter by id(s) of related 'visibleApps'
    # + sort - comma-separated list of sort expressions; resources will be sorted as specified
    # + fields\[users\] - the fields to include for returned resources of type users
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + 'limit - maximum resources per page
    # + include - comma-separated list of relationships to include
    # + limitVisibleApps - maximum number of related visibleApps returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:Ok (List of Users)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/users(@http:Query {name: "filter[username]"} string[]? filterUsername, @http:Query {name: "filter[roles]"} ("ADMIN"|"FINANCE"|"ACCOUNT_HOLDER"|"SALES"|"MARKETING"|"APP_MANAGER"|"DEVELOPER"|"ACCESS_TO_REPORTS"|"CUSTOMER_SUPPORT"|"CREATE_APPS"|"CLOUD_MANAGED_DEVELOPER_ID"|"CLOUD_MANAGED_APP_DISTRIBUTION"|"GENERATE_INDIVIDUAL_KEYS")[]? filterRoles, @http:Query {name: "filter[visibleApps]"} string[]? filterVisibleApps, ("username"|"-username"|"lastName"|"-lastName")[]? sort, @http:Query {name: "fields[users]"} ("username"|"firstName"|"lastName"|"roles"|"allAppsVisible"|"provisioningAllowed"|"visibleApps")[]? fieldsUsers, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, int? 'limit, ("visibleApps")[]? include, @http:Query {name: "limit[visibleApps]"} int? limitVisibleApps) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|UsersResponse|ErrorResponseTooManyRequests {
        UsersResponse res = {
            data: [userRec()],
            links: {self: "https://api.appstoreconnect.apple.com/v1/x"},
            meta: {paging: {total: 1, 'limit: 50}}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + fields\[users\] - the fields to include for returned resources of type users
    # + fields\[apps\] - the fields to include for returned resources of type apps
    # + include - comma-separated list of relationships to include
    # + limitVisibleApps - maximum number of related visibleApps returned (when they are included)
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:Ok (Single User)
    # http:TooManyRequests (Rate limit exceeded error)
    resource function get v1/users/[string id](@http:Query {name: "fields[users]"} ("username"|"firstName"|"lastName"|"roles"|"allAppsVisible"|"provisioningAllowed"|"visibleApps")[]? fieldsUsers, @http:Query {name: "fields[apps]"} ("accessibilityUrl"|"name"|"bundleId"|"sku"|"primaryLocale"|"isOrEverWasMadeForKids"|"subscriptionStatusUrl"|"subscriptionStatusUrlVersion"|"subscriptionStatusUrlForSandbox"|"subscriptionStatusUrlVersionForSandbox"|"contentRightsDeclaration"|"streamlinedPurchasingEnabled"|"accessibilityDeclarations"|"appEncryptionDeclarations"|"appStoreIcon"|"ciProduct"|"betaTesters"|"betaGroups"|"appStoreVersions"|"appTags"|"preReleaseVersions"|"betaAppLocalizations"|"builds"|"betaLicenseAgreement"|"betaAppReviewDetail"|"appInfos"|"appClips"|"appPricePoints"|"endUserLicenseAgreement"|"appPriceSchedule"|"appAvailabilityV2"|"inAppPurchases"|"subscriptionGroups"|"gameCenterEnabledVersions"|"performanceOverviews"|"perfPowerMetrics"|"appCustomProductPages"|"inAppPurchasesV2"|"promotedPurchases"|"appEvents"|"reviewSubmissions"|"subscriptionGracePeriod"|"customerReviews"|"customerReviewSummarizations"|"gameCenterDetail"|"appStoreVersionExperimentsV2"|"alternativeDistributionKey"|"analyticsReportRequests"|"marketplaceSearchDetail"|"buildUploads"|"backgroundAssets"|"assetLibrary"|"betaFeedbackScreenshotSubmissions"|"betaFeedbackCrashSubmissions"|"searchKeywords"|"webhooks"|"androidToIosAppMappingDetails")[]? fieldsApps, ("visibleApps")[]? include, @http:Query {name: "limit[visibleApps]"} int? limitVisibleApps) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|UserResponse|ErrorResponseTooManyRequests {
        UserResponse res = {
            data: userRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + payload - App representation 
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:UnprocessableEntity (Unprocessable request entity error(s))
    # http:Ok (Single App)
    # http:Conflict (Request entity error(s))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function patch v1/apps/[string id](@http:Payload AppUpdateRequest payload) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|ErrorResponseUnprocessableEntity|AppResponse|ErrorResponseConflict|ErrorResponseTooManyRequests {
        AppResponse res = {
            data: appRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + payload - BetaGroup representation 
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:UnprocessableEntity (Unprocessable request entity error(s))
    # http:Ok (Single BetaGroup)
    # http:Conflict (Request entity error(s))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function patch v1/betaGroups/[string id](@http:Payload BetaGroupUpdateRequest payload) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|ErrorResponseUnprocessableEntity|BetaGroupResponse|ErrorResponseConflict|ErrorResponseTooManyRequests {
        BetaGroupResponse res = {
            data: betaGroupRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + id - the id of the requested resource
    # + payload - Build representation 
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:NotFound (Not found error)
    # http:UnprocessableEntity (Unprocessable request entity error(s))
    # http:Ok (Single Build)
    # http:Conflict (Request entity error(s))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function patch v1/builds/[string id](@http:Payload BuildUpdateRequest payload) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseNotFound|ErrorResponseUnprocessableEntity|BuildResponse|ErrorResponseConflict|ErrorResponseTooManyRequests {
        BuildResponse res = {
            data: buildRec(id),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/" + id}
        };
        return res;
    }

    # + payload - BetaGroup representation 
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:UnprocessableEntity (Unprocessable request entity error(s))
    # http:Created (Single BetaGroup)
    # http:Conflict (Request entity error(s))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function post v1/betaGroups(@http:Payload BetaGroupCreateRequest payload) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseUnprocessableEntity|BetaGroupResponse|ErrorResponseConflict|ErrorResponseTooManyRequests {
        BetaGroupResponse res = {
            data: betaGroupRec("grp-2002"),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/new"}
        };
        return res;
    }

    # + payload - BetaTester representation 
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:UnprocessableEntity (Unprocessable request entity error(s))
    # http:Created (Single BetaTester)
    # http:Conflict (Request entity error(s))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function post v1/betaTesters(@http:Payload BetaTesterCreateRequest payload) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseUnprocessableEntity|BetaTesterResponse|ErrorResponseConflict|ErrorResponseTooManyRequests {
        BetaTesterResponse res = {
            data: betaTesterRec("tester-3003"),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/new"}
        };
        return res;
    }

    # + payload - BundleId representation 
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:UnprocessableEntity (Unprocessable request entity error(s))
    # http:Created (Single BundleId)
    # http:Conflict (Request entity error(s))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function post v1/bundleIds(@http:Payload BundleIdCreateRequest payload) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseUnprocessableEntity|BundleIdResponse|ErrorResponseConflict|ErrorResponseTooManyRequests {
        BundleIdResponse res = {
            data: bundleIdRec("bid-4004"),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/new"}
        };
        return res;
    }

    # + payload - Device representation 
    # + return - returns can be any of following types 
    # http:BadRequest (Parameter error(s))
    # http:Unauthorized (Unauthorized error(s))
    # http:Forbidden (Forbidden error)
    # http:UnprocessableEntity (Unprocessable request entity error(s))
    # http:Created (Single Device)
    # http:Conflict (Request entity error(s))
    # http:TooManyRequests (Rate limit exceeded error)
    resource function post v1/devices(@http:Payload DeviceCreateRequest payload) returns ErrorResponseBadRequest|ErrorResponseUnauthorized|ErrorResponseForbidden|ErrorResponseUnprocessableEntity|DeviceResponse|ErrorResponseConflict|ErrorResponseTooManyRequests {
        DeviceResponse res = {
            data: deviceRec("dev-5005"),
            links: {self: "https://api.appstoreconnect.apple.com/v1/x/new"}
        };
        return res;
    }
}

// Service-mode response types. `bal openapi --mode client` collapses 4XX/5XX
// to `error` and never emits these, so they are defined here for the mock only.
function appRec(string id = "6740000001") returns App => {
    id,
    'type: "apps",
    attributes: {name: "Sample App", bundleId: "com.example.sample", sku: "SAMPLE-001", primaryLocale: "en-US", contentRightsDeclaration: "DOES_NOT_USE_THIRD_PARTY_CONTENT", isOrEverWasMadeForKids: false},
    links: {self: "https://api.appstoreconnect.apple.com/v1/apps/" + id}
};

function betaGroupRec(string id = "grp-1001") returns BetaGroup => {
    id,
    'type: "betaGroups",
    attributes: {name: "Internal Testers", createdDate: "2026-01-15T10:30:00Z", isInternalGroup: true, hasAccessToAllBuilds: true, publicLinkEnabled: false, feedbackEnabled: true},
    links: {self: "https://api.appstoreconnect.apple.com/v1/betaGroups/" + id}
};

function betaTesterRec(string id = "tester-1001") returns BetaTester => {
    id,
    'type: "betaTesters",
    attributes: {firstName: "Jane", lastName: "Doe", email: "jane.doe@example.com", inviteType: "EMAIL", state: "INVITED"},
    links: {self: "https://api.appstoreconnect.apple.com/v1/betaTesters/" + id}
};

function buildRec(string id = "build-1001") returns Build => {
    id,
    'type: "builds",
    attributes: {version: "42", uploadedDate: "2026-02-01T08:00:00Z", expired: false, processingState: "VALID", minOsVersion: "16.0", usesNonExemptEncryption: false},
    links: {self: "https://api.appstoreconnect.apple.com/v1/builds/" + id}
};

function bundleIdRec(string id = "bid-1001") returns BundleId => {
    id,
    'type: "bundleIds",
    attributes: {identifier: "com.example.sample", name: "Sample App ID", platform: "IOS", seedId: "ABCDE12345"},
    links: {self: "https://api.appstoreconnect.apple.com/v1/bundleIds/" + id}
};

function certificateRec(string id = "cert-1001") returns Certificate => {
    id,
    'type: "certificates",
    attributes: {name: "iOS Distribution", displayName: "Example Inc.", certificateType: "IOS_DISTRIBUTION", platform: "IOS", serialNumber: "5A1B2C3D4E5F", expirationDate: "2027-03-01T00:00:00Z", activated: true},
    links: {self: "https://api.appstoreconnect.apple.com/v1/certificates/" + id}
};

function deviceRec(string id = "dev-1001") returns Device => {
    id,
    'type: "devices",
    attributes: {name: "Test iPhone", udid: "00008030-001A2B3C4D5E802E", deviceClass: "IPHONE", model: "iPhone 15 Pro", platform: "IOS", status: "ENABLED", addedDate: "2026-01-10T12:00:00Z"},
    links: {self: "https://api.appstoreconnect.apple.com/v1/devices/" + id}
};

function userRec(string id = "user-1001") returns User => {
    id,
    'type: "users",
    attributes: {firstName: "Alex", lastName: "Smith", username: "alex.smith@example.com", roles: ["DEVELOPER", "APP_MANAGER"], allAppsVisible: true, provisioningAllowed: true},
    links: {self: "https://api.appstoreconnect.apple.com/v1/users/" + id}
};

function reviewRec(string id = "rev-1001") returns CustomerReview => {
    id,
    'type: "customerReviews",
    attributes: {rating: 5, title: "Great app", body: "Works exactly as expected.", reviewerNickname: "happyuser", createdDate: "2026-03-05T14:20:00Z", territory: "USA"},
    links: {self: "https://api.appstoreconnect.apple.com/v1/customerReviews/" + id}
};

public type ErrorResponseBadRequest record {|
    *http:BadRequest;
    ErrorResponse body;
|};

public type ErrorResponseConflict record {|
    *http:Conflict;
    ErrorResponse body;
|};

public type ErrorResponseForbidden record {|
    *http:Forbidden;
    ErrorResponse body;
|};

public type ErrorResponseNotFound record {|
    *http:NotFound;
    ErrorResponse body;
|};

public type ErrorResponseTooManyRequests record {|
    *http:TooManyRequests;
    ErrorResponse body;
|};

public type ErrorResponseUnauthorized record {|
    *http:Unauthorized;
    ErrorResponse body;
|};

public type ErrorResponseUnprocessableEntity record {|
    *http:UnprocessableEntity;
    ErrorResponse body;
|};

public type ErrorResponse record {
    ErrorResponseErrors[] errors?;
};

public type ErrorResponseErrors record {
    string code;
    string detail;
    string status;
    string title;
    string id?;
    map<json> meta?;
};
