_Author_:  @DimuthuMadushan \
_Created_: 2026/10/21 \
_Updated_: 2026/10/22 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from Apple App Store Connect. 
The OpenAPI specification is obtained from [wso2/api-specs](https://github.com/wso2/api-specs/blob/main/openapi/apple/appstore/4.5.1/openapi.json).
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.

1. Change `AppClipAdvancedExperienceCreateRequestDataAttributes businessCategory` to nullable
- **Original**: The `businessCategory` field in `AppClipAdvancedExperienceCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `businessCategory` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


2. Change `AppCustomProductPageVersionInlineCreateAttributes deepLink` to nullable
- **Original**: The `deepLink` field in `AppCustomProductPageVersionInlineCreateAttributes` was `not nullable`.
- **Updated**: The `deepLink` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


3. Change `BackgroundAssetUploadFileUpdateRequestDataAttributes uploaded` to nullable
- **Original**: The `uploaded` field in `BackgroundAssetUploadFileUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `uploaded` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


4. Change `BetaRecruitmentCriterionUpdateRequestDataAttributes deviceFamilyOsVersionFilters` to nullable
- **Original**: The `deviceFamilyOsVersionFilters` field in `BetaRecruitmentCriterionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `deviceFamilyOsVersionFilters` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


5. Change `AppClipAdvancedExperienceImageUpdateRequestDataAttributes uploaded` to nullable
- **Original**: The `uploaded` field in `AppClipAdvancedExperienceImageUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `uploaded` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


6. Change `AppClipAdvancedExperienceImageUpdateRequestDataAttributes sourceFileChecksum` to nullable
- **Original**: The `sourceFileChecksum` field in `AppClipAdvancedExperienceImageUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `sourceFileChecksum` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


7. Change `AppEventVideoClipCreateRequestDataAttributes previewFrameTimeCode` to nullable
- **Original**: The `previewFrameTimeCode` field in `AppEventVideoClipCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `previewFrameTimeCode` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


8. Change `AppStoreReviewDetailCreateRequestDataAttributes demoAccountPassword` to nullable
- **Original**: The `demoAccountPassword` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `demoAccountPassword` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


9. Change `AppStoreReviewDetailCreateRequestDataAttributes notes` to nullable
- **Original**: The `notes` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `notes` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


10. Change `AppStoreReviewDetailCreateRequestDataAttributes contactEmail` to nullable
- **Original**: The `contactEmail` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `contactEmail` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


11. Change `AppStoreReviewDetailCreateRequestDataAttributes contactFirstName` to nullable
- **Original**: The `contactFirstName` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `contactFirstName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


12. Change `AppStoreReviewDetailCreateRequestDataAttributes demoAccountRequired` to nullable
- **Original**: The `demoAccountRequired` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `demoAccountRequired` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


13. Change `AppStoreReviewDetailCreateRequestDataAttributes demoAccountName` to nullable
- **Original**: The `demoAccountName` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `demoAccountName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


14. Change `AppStoreReviewDetailCreateRequestDataAttributes contactLastName` to nullable
- **Original**: The `contactLastName` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `contactLastName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


15. Change `AppStoreReviewDetailCreateRequestDataAttributes contactPhone` to nullable
- **Original**: The `contactPhone` field in `AppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `contactPhone` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


16. Change `AppPreviewUpdateRequestDataAttributes uploaded` to nullable
- **Original**: The `uploaded` field in `AppPreviewUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `uploaded` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


17. Change `AppPreviewUpdateRequestDataAttributes sourceFileChecksum` to nullable
- **Original**: The `sourceFileChecksum` field in `AppPreviewUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `sourceFileChecksum` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


18. Change `AppPreviewUpdateRequestDataAttributes previewFrameTimeCode` to nullable
- **Original**: The `previewFrameTimeCode` field in `AppPreviewUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `previewFrameTimeCode` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


19. Change `AppClipDefaultExperienceLocalizationCreateRequestDataAttributes subtitle` to nullable
- **Original**: The `subtitle` field in `AppClipDefaultExperienceLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `subtitle` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


20. Change `UserUpdateRequestDataAttributes roles` to nullable
- **Original**: The `roles` field in `UserUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `roles` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


21. Change `UserUpdateRequestDataAttributes allAppsVisible` to nullable
- **Original**: The `allAppsVisible` field in `UserUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `allAppsVisible` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


22. Change `UserUpdateRequestDataAttributes provisioningAllowed` to nullable
- **Original**: The `provisioningAllowed` field in `UserUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `provisioningAllowed` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


23. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsAudioDescriptions` to nullable
- **Original**: The `supportsAudioDescriptions` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsAudioDescriptions` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


24. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsSufficientContrast` to nullable
- **Original**: The `supportsSufficientContrast` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsSufficientContrast` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


25. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsVoiceControl` to nullable
- **Original**: The `supportsVoiceControl` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsVoiceControl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


26. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsVoiceover` to nullable
- **Original**: The `supportsVoiceover` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsVoiceover` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


27. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsCaptions` to nullable
- **Original**: The `supportsCaptions` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsCaptions` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


28. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsDarkInterface` to nullable
- **Original**: The `supportsDarkInterface` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsDarkInterface` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


29. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsDifferentiateWithoutColorAlone` to nullable
- **Original**: The `supportsDifferentiateWithoutColorAlone` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsDifferentiateWithoutColorAlone` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


30. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsLargerText` to nullable
- **Original**: The `supportsLargerText` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsLargerText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


31. Change `AccessibilityDeclarationCreateRequestDataAttributes supportsReducedMotion` to nullable
- **Original**: The `supportsReducedMotion` field in `AccessibilityDeclarationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsReducedMotion` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


32. Change `AppAssetLibraryImageUpdateRequestDataAttributes archived` to nullable
- **Original**: The `archived` field in `AppAssetLibraryImageUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `archived` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


33. Change `AppAssetLibraryImageUpdateRequestDataAttributes uploaded` to nullable
- **Original**: The `uploaded` field in `AppAssetLibraryImageUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `uploaded` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


34. Change `AppAssetLibraryImageUpdateRequestDataAttributes referenceName` to nullable
- **Original**: The `referenceName` field in `AppAssetLibraryImageUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `referenceName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


35. Change `BetaBuildLocalizationUpdateRequestDataAttributes whatsNew` to nullable
- **Original**: The `whatsNew` field in `BetaBuildLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `whatsNew` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


36. Change `BuildBetaDetailUpdateRequestDataAttributes autoNotifyEnabled` to nullable
- **Original**: The `autoNotifyEnabled` field in `BuildBetaDetailUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `autoNotifyEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


37. Change `AppEventLocalizationUpdateRequestDataAttributes longDescription` to nullable
- **Original**: The `longDescription` field in `AppEventLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `longDescription` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


38. Change `AppEventLocalizationUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `AppEventLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


39. Change `AppEventLocalizationUpdateRequestDataAttributes shortDescription` to nullable
- **Original**: The `shortDescription` field in `AppEventLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `shortDescription` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


40. Change `AppClipAppStoreReviewDetailCreateRequestDataAttributes invocationUrls` to nullable
- **Original**: The `invocationUrls` field in `AppClipAppStoreReviewDetailCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `invocationUrls` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


41. Change `AppInfoLocalizationUpdateRequestDataAttributes subtitle` to nullable
- **Original**: The `subtitle` field in `AppInfoLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `subtitle` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


42. Change `AppInfoLocalizationUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `AppInfoLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


43. Change `AppInfoLocalizationUpdateRequestDataAttributes privacyPolicyText` to nullable
- **Original**: The `privacyPolicyText` field in `AppInfoLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyPolicyText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


44. Change `AppInfoLocalizationUpdateRequestDataAttributes privacyPolicyUrl` to nullable
- **Original**: The `privacyPolicyUrl` field in `AppInfoLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyPolicyUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


45. Change `AppInfoLocalizationUpdateRequestDataAttributes privacyChoicesUrl` to nullable
- **Original**: The `privacyChoicesUrl` field in `AppInfoLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyChoicesUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


46. Change `AppStoreVersionCreateRequestDataAttributes copyright` to nullable
- **Original**: The `copyright` field in `AppStoreVersionCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `copyright` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


47. Change `AppStoreVersionCreateRequestDataAttributes earliestReleaseDate` to nullable
- **Original**: The `earliestReleaseDate` field in `AppStoreVersionCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `earliestReleaseDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


48. Change `AppStoreVersionCreateRequestDataAttributes releaseType` to nullable
- **Original**: The `releaseType` field in `AppStoreVersionCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `releaseType` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


49. Change `AppStoreVersionCreateRequestDataAttributes reviewType` to nullable
- **Original**: The `reviewType` field in `AppStoreVersionCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `reviewType` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


50. Change `AppAssetLibraryVideoUpdateRequestDataAttributes archived` to nullable
- **Original**: The `archived` field in `AppAssetLibraryVideoUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `archived` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


51. Change `AppAssetLibraryVideoUpdateRequestDataAttributes uploaded` to nullable
- **Original**: The `uploaded` field in `AppAssetLibraryVideoUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `uploaded` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


52. Change `AppAssetLibraryVideoUpdateRequestDataAttributes previewFrameTimeCode` to nullable
- **Original**: The `previewFrameTimeCode` field in `AppAssetLibraryVideoUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `previewFrameTimeCode` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


53. Change `AppAssetLibraryVideoUpdateRequestDataAttributes referenceName` to nullable
- **Original**: The `referenceName` field in `AppAssetLibraryVideoUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `referenceName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


54. Change `ReviewSubmissionUpdateRequestDataAttributes canceled` to nullable
- **Original**: The `canceled` field in `ReviewSubmissionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `canceled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


55. Change `ReviewSubmissionUpdateRequestDataAttributes submitted` to nullable
- **Original**: The `submitted` field in `ReviewSubmissionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `submitted` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


56. Change `AndroidToIosAppMappingDetailUpdateRequestDataAttributes appSigningKeyPublicCertificateSha256Fingerprints` to nullable
- **Original**: The `appSigningKeyPublicCertificateSha256Fingerprints` field in `AndroidToIosAppMappingDetailUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `appSigningKeyPublicCertificateSha256Fingerprints` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


57. Change `AndroidToIosAppMappingDetailUpdateRequestDataAttributes packageName` to nullable
- **Original**: The `packageName` field in `AndroidToIosAppMappingDetailUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `packageName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


58. Change `AppCustomProductPageUpdateRequestDataAttributes visible` to nullable
- **Original**: The `visible` field in `AppCustomProductPageUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `visible` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


59. Change `AppCustomProductPageUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `AppCustomProductPageUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


60. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsAudioDescriptions` to nullable
- **Original**: The `supportsAudioDescriptions` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsAudioDescriptions` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


61. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsSufficientContrast` to nullable
- **Original**: The `supportsSufficientContrast` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsSufficientContrast` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


62. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsVoiceControl` to nullable
- **Original**: The `supportsVoiceControl` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsVoiceControl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


63. Change `AccessibilityDeclarationUpdateRequestDataAttributes publish` to nullable
- **Original**: The `publish` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publish` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


64. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsVoiceover` to nullable
- **Original**: The `supportsVoiceover` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsVoiceover` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


65. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsCaptions` to nullable
- **Original**: The `supportsCaptions` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsCaptions` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


66. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsDarkInterface` to nullable
- **Original**: The `supportsDarkInterface` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsDarkInterface` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


67. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsDifferentiateWithoutColorAlone` to nullable
- **Original**: The `supportsDifferentiateWithoutColorAlone` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsDifferentiateWithoutColorAlone` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


68. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsLargerText` to nullable
- **Original**: The `supportsLargerText` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsLargerText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


69. Change `AccessibilityDeclarationUpdateRequestDataAttributes supportsReducedMotion` to nullable
- **Original**: The `supportsReducedMotion` field in `AccessibilityDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportsReducedMotion` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


70. Change `WebhookUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `WebhookUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


71. Change `WebhookUpdateRequestDataAttributes secret` to nullable
- **Original**: The `secret` field in `WebhookUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `secret` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


72. Change `WebhookUpdateRequestDataAttributes eventTypes` to nullable
- **Original**: The `eventTypes` field in `WebhookUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `eventTypes` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


73. Change `WebhookUpdateRequestDataAttributes enabled` to nullable
- **Original**: The `enabled` field in `WebhookUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `enabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


74. Change `WebhookUpdateRequestDataAttributes url` to nullable
- **Original**: The `url` field in `WebhookUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `url` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


75. Change `AppStoreVersionExperimentTreatmentCreateRequestDataAttributes appIconName` to nullable
- **Original**: The `appIconName` field in `AppStoreVersionExperimentTreatmentCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `appIconName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


76. Change `AppAssetLibraryImageCreateRequestDataAttributes referenceName` to nullable
- **Original**: The `referenceName` field in `AppAssetLibraryImageCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `referenceName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


77. Change `BetaBuildLocalizationCreateRequestDataAttributes whatsNew` to nullable
- **Original**: The `whatsNew` field in `BetaBuildLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `whatsNew` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


78. Change `BetaAppLocalizationCreateRequestDataAttributes marketingUrl` to nullable
- **Original**: The `marketingUrl` field in `BetaAppLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `marketingUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


79. Change `BetaAppLocalizationCreateRequestDataAttributes description` to nullable
- **Original**: The `description` field in `BetaAppLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


80. Change `BetaAppLocalizationCreateRequestDataAttributes tvOsPrivacyPolicy` to nullable
- **Original**: The `tvOsPrivacyPolicy` field in `BetaAppLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `tvOsPrivacyPolicy` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


81. Change `BetaAppLocalizationCreateRequestDataAttributes privacyPolicyUrl` to nullable
- **Original**: The `privacyPolicyUrl` field in `BetaAppLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyPolicyUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


82. Change `BetaAppLocalizationCreateRequestDataAttributes feedbackEmail` to nullable
- **Original**: The `feedbackEmail` field in `BetaAppLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `feedbackEmail` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


83. Change `BundleIdCapabilityCreateRequestDataAttributes settings` to nullable
- **Original**: The `settings` field in `BundleIdCapabilityCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `settings` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


84. Change `NominationCreateRequestDataAttributes supplementalMaterialsUris` to nullable
- **Original**: The `supplementalMaterialsUris` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supplementalMaterialsUris` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


85. Change `NominationCreateRequestDataAttributes notes` to nullable
- **Original**: The `notes` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `notes` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


86. Change `NominationCreateRequestDataAttributes hasInAppEvents` to nullable
- **Original**: The `hasInAppEvents` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `hasInAppEvents` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


87. Change `NominationCreateRequestDataAttributes deviceFamilies` to nullable
- **Original**: The `deviceFamilies` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `deviceFamilies` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


88. Change `NominationCreateRequestDataAttributes launchInSelectMarketsFirst` to nullable
- **Original**: The `launchInSelectMarketsFirst` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `launchInSelectMarketsFirst` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


89. Change `NominationCreateRequestDataAttributes preOrderEnabled` to nullable
- **Original**: The `preOrderEnabled` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `preOrderEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


90. Change `NominationCreateRequestDataAttributes locales` to nullable
- **Original**: The `locales` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `locales` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


91. Change `NominationCreateRequestDataAttributes publishEndDate` to nullable
- **Original**: The `publishEndDate` field in `NominationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publishEndDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


92. Change `MarketplaceSearchDetailUpdateRequestDataAttributes catalogUrl` to nullable
- **Original**: The `catalogUrl` field in `MarketplaceSearchDetailUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `catalogUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


93. Change `AppCustomProductPageLocalizationUpdateRequestDataAttributes promotionalText` to nullable
- **Original**: The `promotionalText` field in `AppCustomProductPageLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `promotionalText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


94. Change `SandboxTesterV2UpdateRequestDataAttributes interruptPurchases` to nullable
- **Original**: The `interruptPurchases` field in `SandboxTesterV2UpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `interruptPurchases` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


95. Change `SandboxTesterV2UpdateRequestDataAttributes subscriptionRenewalRate` to nullable
- **Original**: The `subscriptionRenewalRate` field in `SandboxTesterV2UpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `subscriptionRenewalRate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


96. Change `AppTagUpdateRequestDataAttributes visibleInAppStore` to nullable
- **Original**: The `visibleInAppStore` field in `AppTagUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `visibleInAppStore` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


97. Change `AppStoreVersionLocalizationUpdateRequestDataAttributes whatsNew` to nullable
- **Original**: The `whatsNew` field in `AppStoreVersionLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `whatsNew` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


98. Change `AppStoreVersionLocalizationUpdateRequestDataAttributes keywords` to nullable
- **Original**: The `keywords` field in `AppStoreVersionLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `keywords` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


99. Change `AppStoreVersionLocalizationUpdateRequestDataAttributes marketingUrl` to nullable
- **Original**: The `marketingUrl` field in `AppStoreVersionLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `marketingUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


100. Change `AppStoreVersionLocalizationUpdateRequestDataAttributes supportUrl` to nullable
- **Original**: The `supportUrl` field in `AppStoreVersionLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


101. Change `AppStoreVersionLocalizationUpdateRequestDataAttributes description` to nullable
- **Original**: The `description` field in `AppStoreVersionLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


102. Change `AppStoreVersionLocalizationUpdateRequestDataAttributes promotionalText` to nullable
- **Original**: The `promotionalText` field in `AppStoreVersionLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `promotionalText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


103. Change `BuildUpdateRequestDataAttributes expired` to nullable
- **Original**: The `expired` field in `BuildUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `expired` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


104. Change `BuildUpdateRequestDataAttributes usesNonExemptEncryption` to nullable
- **Original**: The `usesNonExemptEncryption` field in `BuildUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `usesNonExemptEncryption` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


105. Change `AppEventCreateRequestDataAttributes territorySchedules` to nullable
- **Original**: The `territorySchedules` field in `AppEventCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `territorySchedules` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


106. Change `AppEventCreateRequestDataAttributes badge` to nullable
- **Original**: The `badge` field in `AppEventCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `badge` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


107. Change `AppEventCreateRequestDataAttributes deepLink` to nullable
- **Original**: The `deepLink` field in `AppEventCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `deepLink` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


108. Change `AppEventCreateRequestDataAttributes purchaseRequirement` to nullable
- **Original**: The `purchaseRequirement` field in `AppEventCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `purchaseRequirement` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


109. Change `AppEventCreateRequestDataAttributes purpose` to nullable
- **Original**: The `purpose` field in `AppEventCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `purpose` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


110. Change `AppEventCreateRequestDataAttributes priority` to nullable
- **Original**: The `priority` field in `AppEventCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `priority` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


111. Change `AppEventCreateRequestDataAttributes primaryLocale` to nullable
- **Original**: The `primaryLocale` field in `AppEventCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `primaryLocale` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


112. Change `DeviceUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `DeviceUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


113. Change `DeviceUpdateRequestDataAttributes status` to nullable
- **Original**: The `status` field in `DeviceUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `status` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


114. Change `AppStoreVersionUpdateRequestDataAttributes copyright` to nullable
- **Original**: The `copyright` field in `AppStoreVersionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `copyright` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


115. Change `AppStoreVersionUpdateRequestDataAttributes downloadable` to nullable
- **Original**: The `downloadable` field in `AppStoreVersionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `downloadable` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


116. Change `AppStoreVersionUpdateRequestDataAttributes earliestReleaseDate` to nullable
- **Original**: The `earliestReleaseDate` field in `AppStoreVersionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `earliestReleaseDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


117. Change `AppStoreVersionUpdateRequestDataAttributes versionString` to nullable
- **Original**: The `versionString` field in `AppStoreVersionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `versionString` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


118. Change `AppStoreVersionUpdateRequestDataAttributes releaseType` to nullable
- **Original**: The `releaseType` field in `AppStoreVersionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `releaseType` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


119. Change `AppStoreVersionUpdateRequestDataAttributes reviewType` to nullable
- **Original**: The `reviewType` field in `AppStoreVersionUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `reviewType` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


120. Change `BetaGroupUpdateRequestDataAttributes publicLinkLimit` to nullable
- **Original**: The `publicLinkLimit` field in `BetaGroupUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publicLinkLimit` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


121. Change `BetaGroupUpdateRequestDataAttributes iosBuildsAvailableForAppleSiliconMac` to nullable
- **Original**: The `iosBuildsAvailableForAppleSiliconMac` field in `BetaGroupUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `iosBuildsAvailableForAppleSiliconMac` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


122. Change `BetaGroupUpdateRequestDataAttributes publicLinkEnabled` to nullable
- **Original**: The `publicLinkEnabled` field in `BetaGroupUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publicLinkEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


123. Change `BetaGroupUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `BetaGroupUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


124. Change `BetaGroupUpdateRequestDataAttributes feedbackEnabled` to nullable
- **Original**: The `feedbackEnabled` field in `BetaGroupUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `feedbackEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


125. Change `BetaGroupUpdateRequestDataAttributes publicLinkLimitEnabled` to nullable
- **Original**: The `publicLinkLimitEnabled` field in `BetaGroupUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publicLinkLimitEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


126. Change `BetaGroupUpdateRequestDataAttributes iosBuildsAvailableForAppleVision` to nullable
- **Original**: The `iosBuildsAvailableForAppleVision` field in `BetaGroupUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `iosBuildsAvailableForAppleVision` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


127. Change `BetaAppLocalizationUpdateRequestDataAttributes marketingUrl` to nullable
- **Original**: The `marketingUrl` field in `BetaAppLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `marketingUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


128. Change `BetaAppLocalizationUpdateRequestDataAttributes description` to nullable
- **Original**: The `description` field in `BetaAppLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


129. Change `BetaAppLocalizationUpdateRequestDataAttributes tvOsPrivacyPolicy` to nullable
- **Original**: The `tvOsPrivacyPolicy` field in `BetaAppLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `tvOsPrivacyPolicy` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


130. Change `BetaAppLocalizationUpdateRequestDataAttributes privacyPolicyUrl` to nullable
- **Original**: The `privacyPolicyUrl` field in `BetaAppLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyPolicyUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


131. Change `BetaAppLocalizationUpdateRequestDataAttributes feedbackEmail` to nullable
- **Original**: The `feedbackEmail` field in `BetaAppLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `feedbackEmail` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


132. Change `AppClipDefaultExperienceLocalizationUpdateRequestDataAttributes subtitle` to nullable
- **Original**: The `subtitle` field in `AppClipDefaultExperienceLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `subtitle` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


133. Change `BetaAppClipInvocationUpdateRequestDataAttributes url` to nullable
- **Original**: The `url` field in `BetaAppClipInvocationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `url` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


134. Change `BundleIdCapabilityUpdateRequestDataAttributes settings` to nullable
- **Original**: The `settings` field in `BundleIdCapabilityUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `settings` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


135. Change `CiBuildRunCreateRequestDataAttributes clean` to nullable
- **Original**: The `clean` field in `CiBuildRunCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `clean` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


136. Change `ReviewSubmissionItemUpdateRequestDataAttributes removed` to nullable
- **Original**: The `removed` field in `ReviewSubmissionItemUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `removed` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


137. Change `ReviewSubmissionItemUpdateRequestDataAttributes resolved` to nullable
- **Original**: The `resolved` field in `ReviewSubmissionItemUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `resolved` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


138. Change `BetaTesterCreateRequestDataAttributes firstName` to nullable
- **Original**: The `firstName` field in `BetaTesterCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `firstName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


139. Change `BetaTesterCreateRequestDataAttributes lastName` to nullable
- **Original**: The `lastName` field in `BetaTesterCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `lastName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


140. Change `AppCustomProductPageLocalizationInlineCreateAttributes promotionalText` to nullable
- **Original**: The `promotionalText` field in `AppCustomProductPageLocalizationInlineCreateAttributes` was `not nullable`.
- **Updated**: The `promotionalText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


141. Change `AppAssetLibraryVideoCreateRequestDataAttributes previewFrameTimeCode` to nullable
- **Original**: The `previewFrameTimeCode` field in `AppAssetLibraryVideoCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `previewFrameTimeCode` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


142. Change `AppAssetLibraryVideoCreateRequestDataAttributes referenceName` to nullable
- **Original**: The `referenceName` field in `AppAssetLibraryVideoCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `referenceName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


143. Change `CertificateUpdateRequestDataAttributes activated` to nullable
- **Original**: The `activated` field in `CertificateUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `activated` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


144. Change `AgeRatingDeclarationUpdateRequestDataAttributes messagingAndChat` to nullable
- **Original**: The `messagingAndChat` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `messagingAndChat` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


145. Change `AgeRatingDeclarationUpdateRequestDataAttributes sexualContentGraphicAndNudity` to nullable
- **Original**: The `sexualContentGraphicAndNudity` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `sexualContentGraphicAndNudity` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


146. Change `AgeRatingDeclarationUpdateRequestDataAttributes gambling` to nullable
- **Original**: The `gambling` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `gambling` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


147. Change `AgeRatingDeclarationUpdateRequestDataAttributes horrorOrFearThemes` to nullable
- **Original**: The `horrorOrFearThemes` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `horrorOrFearThemes` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


148. Change `AgeRatingDeclarationUpdateRequestDataAttributes parentalControls` to nullable
- **Original**: The `parentalControls` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `parentalControls` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


149. Change `AgeRatingDeclarationUpdateRequestDataAttributes advertising` to nullable
- **Original**: The `advertising` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `advertising` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


150. Change `AgeRatingDeclarationUpdateRequestDataAttributes ageRatingOverrideV2` to nullable
- **Original**: The `ageRatingOverrideV2` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `ageRatingOverrideV2` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


151. Change `AgeRatingDeclarationUpdateRequestDataAttributes violenceRealisticProlongedGraphicOrSadistic` to nullable
- **Original**: The `violenceRealisticProlongedGraphicOrSadistic` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `violenceRealisticProlongedGraphicOrSadistic` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


152. Change `AgeRatingDeclarationUpdateRequestDataAttributes matureOrSuggestiveThemes` to nullable
- **Original**: The `matureOrSuggestiveThemes` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `matureOrSuggestiveThemes` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


153. Change `AgeRatingDeclarationUpdateRequestDataAttributes healthOrWellnessTopics` to nullable
- **Original**: The `healthOrWellnessTopics` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `healthOrWellnessTopics` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


154. Change `AgeRatingDeclarationUpdateRequestDataAttributes unrestrictedWebAccess` to nullable
- **Original**: The `unrestrictedWebAccess` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `unrestrictedWebAccess` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


155. Change `AgeRatingDeclarationUpdateRequestDataAttributes violenceCartoonOrFantasy` to nullable
- **Original**: The `violenceCartoonOrFantasy` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `violenceCartoonOrFantasy` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


156. Change `AgeRatingDeclarationUpdateRequestDataAttributes medicalOrTreatmentInformation` to nullable
- **Original**: The `medicalOrTreatmentInformation` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `medicalOrTreatmentInformation` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


157. Change `AgeRatingDeclarationUpdateRequestDataAttributes lootBox` to nullable
- **Original**: The `lootBox` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `lootBox` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


158. Change `AgeRatingDeclarationUpdateRequestDataAttributes alcoholTobaccoOrDrugUseOrReferences` to nullable
- **Original**: The `alcoholTobaccoOrDrugUseOrReferences` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `alcoholTobaccoOrDrugUseOrReferences` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


159. Change `AgeRatingDeclarationUpdateRequestDataAttributes gamblingSimulated` to nullable
- **Original**: The `gamblingSimulated` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `gamblingSimulated` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


160. Change `AgeRatingDeclarationUpdateRequestDataAttributes violenceRealistic` to nullable
- **Original**: The `violenceRealistic` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `violenceRealistic` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


161. Change `AgeRatingDeclarationUpdateRequestDataAttributes profanityOrCrudeHumor` to nullable
- **Original**: The `profanityOrCrudeHumor` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `profanityOrCrudeHumor` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


162. Change `AgeRatingDeclarationUpdateRequestDataAttributes socialMedia` to nullable
- **Original**: The `socialMedia` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `socialMedia` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


163. Change `AgeRatingDeclarationUpdateRequestDataAttributes contests` to nullable
- **Original**: The `contests` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `contests` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


164. Change `AgeRatingDeclarationUpdateRequestDataAttributes koreaAgeRatingOverride` to nullable
- **Original**: The `koreaAgeRatingOverride` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `koreaAgeRatingOverride` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


165. Change `AgeRatingDeclarationUpdateRequestDataAttributes ageAssurance` to nullable
- **Original**: The `ageAssurance` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `ageAssurance` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


166. Change `AgeRatingDeclarationUpdateRequestDataAttributes userGeneratedContent` to nullable
- **Original**: The `userGeneratedContent` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `userGeneratedContent` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


167. Change `AgeRatingDeclarationUpdateRequestDataAttributes gunsOrOtherWeapons` to nullable
- **Original**: The `gunsOrOtherWeapons` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `gunsOrOtherWeapons` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


168. Change `AgeRatingDeclarationUpdateRequestDataAttributes socialMediaAgeRestricted` to nullable
- **Original**: The `socialMediaAgeRestricted` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `socialMediaAgeRestricted` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


169. Change `AgeRatingDeclarationUpdateRequestDataAttributes gracRatingClassificationNumber` to nullable
- **Original**: The `gracRatingClassificationNumber` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `gracRatingClassificationNumber` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


170. Change `AgeRatingDeclarationUpdateRequestDataAttributes developerAgeRatingInfoUrl` to nullable
- **Original**: The `developerAgeRatingInfoUrl` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `developerAgeRatingInfoUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


171. Change `AgeRatingDeclarationUpdateRequestDataAttributes sexualContentOrNudity` to nullable
- **Original**: The `sexualContentOrNudity` field in `AgeRatingDeclarationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `sexualContentOrNudity` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


172. Change `AppEventVideoClipUpdateRequestDataAttributes uploaded` to nullable
- **Original**: The `uploaded` field in `AppEventVideoClipUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `uploaded` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


173. Change `AppEventVideoClipUpdateRequestDataAttributes previewFrameTimeCode` to nullable
- **Original**: The `previewFrameTimeCode` field in `AppEventVideoClipUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `previewFrameTimeCode` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


174. Change `AppClipAdvancedExperienceUpdateRequestDataAttributes isPoweredBy` to nullable
- **Original**: The `isPoweredBy` field in `AppClipAdvancedExperienceUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `isPoweredBy` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


175. Change `AppClipAdvancedExperienceUpdateRequestDataAttributes removed` to nullable
- **Original**: The `removed` field in `AppClipAdvancedExperienceUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `removed` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


176. Change `AppClipAdvancedExperienceUpdateRequestDataAttributes businessCategory` to nullable
- **Original**: The `businessCategory` field in `AppClipAdvancedExperienceUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `businessCategory` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


177. Change `BundleIdCreateRequestDataAttributes seedId` to nullable
- **Original**: The `seedId` field in `BundleIdCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `seedId` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


178. Change `AppStoreVersionExperimentTreatmentUpdateRequestDataAttributes appIconName` to nullable
- **Original**: The `appIconName` field in `AppStoreVersionExperimentTreatmentUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `appIconName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


179. Change `AppStoreVersionExperimentTreatmentUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `AppStoreVersionExperimentTreatmentUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


180. Change `AppEventScreenshotUpdateRequestDataAttributes uploaded` to nullable
- **Original**: The `uploaded` field in `AppEventScreenshotUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `uploaded` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


181. Change `NominationUpdateRequestDataAttributes supplementalMaterialsUris` to nullable
- **Original**: The `supplementalMaterialsUris` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supplementalMaterialsUris` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


182. Change `NominationUpdateRequestDataAttributes notes` to nullable
- **Original**: The `notes` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `notes` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


183. Change `NominationUpdateRequestDataAttributes hasInAppEvents` to nullable
- **Original**: The `hasInAppEvents` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `hasInAppEvents` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


184. Change `NominationUpdateRequestDataAttributes description` to nullable
- **Original**: The `description` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


185. Change `NominationUpdateRequestDataAttributes deviceFamilies` to nullable
- **Original**: The `deviceFamilies` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `deviceFamilies` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


186. Change `NominationUpdateRequestDataAttributes type` to nullable
- **Original**: The `type` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `type` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


187. Change `NominationUpdateRequestDataAttributes launchInSelectMarketsFirst` to nullable
- **Original**: The `launchInSelectMarketsFirst` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `launchInSelectMarketsFirst` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


188. Change `NominationUpdateRequestDataAttributes preOrderEnabled` to nullable
- **Original**: The `preOrderEnabled` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `preOrderEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


189. Change `NominationUpdateRequestDataAttributes archived` to nullable
- **Original**: The `archived` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `archived` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


190. Change `NominationUpdateRequestDataAttributes locales` to nullable
- **Original**: The `locales` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `locales` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


191. Change `NominationUpdateRequestDataAttributes submitted` to nullable
- **Original**: The `submitted` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `submitted` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


192. Change `NominationUpdateRequestDataAttributes publishStartDate` to nullable
- **Original**: The `publishStartDate` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publishStartDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


193. Change `NominationUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


194. Change `NominationUpdateRequestDataAttributes publishEndDate` to nullable
- **Original**: The `publishEndDate` field in `NominationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publishEndDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


195. Change `CiWorkflowCreateRequestDataAttributes isLockedForEditing` to nullable
- **Original**: The `isLockedForEditing` field in `CiWorkflowCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `isLockedForEditing` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


196. Change `AppEventUpdateRequestDataAttributes territorySchedules` to nullable
- **Original**: The `territorySchedules` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `territorySchedules` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


197. Change `AppEventUpdateRequestDataAttributes badge` to nullable
- **Original**: The `badge` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `badge` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


198. Change `AppEventUpdateRequestDataAttributes deepLink` to nullable
- **Original**: The `deepLink` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `deepLink` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


199. Change `AppEventUpdateRequestDataAttributes purchaseRequirement` to nullable
- **Original**: The `purchaseRequirement` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `purchaseRequirement` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


200. Change `AppEventUpdateRequestDataAttributes purpose` to nullable
- **Original**: The `purpose` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `purpose` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


201. Change `AppEventUpdateRequestDataAttributes priority` to nullable
- **Original**: The `priority` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `priority` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


202. Change `AppEventUpdateRequestDataAttributes primaryLocale` to nullable
- **Original**: The `primaryLocale` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `primaryLocale` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


203. Change `AppEventUpdateRequestDataAttributes referenceName` to nullable
- **Original**: The `referenceName` field in `AppEventUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `referenceName` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


204. Change `BetaAppClipInvocationLocalizationUpdateRequestDataAttributes title` to nullable
- **Original**: The `title` field in `BetaAppClipInvocationLocalizationUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `title` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


205. Change `UserInvitationCreateRequestDataAttributes allAppsVisible` to nullable
- **Original**: The `allAppsVisible` field in `UserInvitationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `allAppsVisible` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


206. Change `UserInvitationCreateRequestDataAttributes provisioningAllowed` to nullable
- **Original**: The `provisioningAllowed` field in `UserInvitationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `provisioningAllowed` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


207. Change `AppUpdateRequestDataAttributes accessibilityUrl` to nullable
- **Original**: The `accessibilityUrl` field in `AppUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `accessibilityUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


208. Change `AppUpdateRequestDataAttributes bundleId` to nullable
- **Original**: The `bundleId` field in `AppUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `bundleId` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


209. Change `AppUpdateRequestDataAttributes subscriptionStatusUrlForSandbox` to nullable
- **Original**: The `subscriptionStatusUrlForSandbox` field in `AppUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `subscriptionStatusUrlForSandbox` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


210. Change `AppUpdateRequestDataAttributes subscriptionStatusUrl` to nullable
- **Original**: The `subscriptionStatusUrl` field in `AppUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `subscriptionStatusUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


211. Change `AppUpdateRequestDataAttributes primaryLocale` to nullable
- **Original**: The `primaryLocale` field in `AppUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `primaryLocale` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


212. Change `AppUpdateRequestDataAttributes contentRightsDeclaration` to nullable
- **Original**: The `contentRightsDeclaration` field in `AppUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `contentRightsDeclaration` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


213. Change `AppUpdateRequestDataAttributes streamlinedPurchasingEnabled` to nullable
- **Original**: The `streamlinedPurchasingEnabled` field in `AppUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `streamlinedPurchasingEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


214. Change `BetaGroupCreateRequestDataAttributes publicLinkLimit` to nullable
- **Original**: The `publicLinkLimit` field in `BetaGroupCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publicLinkLimit` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


215. Change `BetaGroupCreateRequestDataAttributes publicLinkEnabled` to nullable
- **Original**: The `publicLinkEnabled` field in `BetaGroupCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publicLinkEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


216. Change `BetaGroupCreateRequestDataAttributes hasAccessToAllBuilds` to nullable
- **Original**: The `hasAccessToAllBuilds` field in `BetaGroupCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `hasAccessToAllBuilds` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


217. Change `BetaGroupCreateRequestDataAttributes isInternalGroup` to nullable
- **Original**: The `isInternalGroup` field in `BetaGroupCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `isInternalGroup` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


218. Change `BetaGroupCreateRequestDataAttributes feedbackEnabled` to nullable
- **Original**: The `feedbackEnabled` field in `BetaGroupCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `feedbackEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


219. Change `BetaGroupCreateRequestDataAttributes publicLinkLimitEnabled` to nullable
- **Original**: The `publicLinkLimitEnabled` field in `BetaGroupCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `publicLinkLimitEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


220. Change `BackgroundAssetUpdateRequestDataAttributes archived` to nullable
- **Original**: The `archived` field in `BackgroundAssetUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `archived` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


221. Change `AppPriceV2InlineCreateAttributes endDate` to nullable
- **Original**: The `endDate` field in `AppPriceV2InlineCreateAttributes` was `not nullable`.
- **Updated**: The `endDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


222. Change `AppPriceV2InlineCreateAttributes startDate` to nullable
- **Original**: The `startDate` field in `AppPriceV2InlineCreateAttributes` was `not nullable`.
- **Updated**: The `startDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


223. Change `AppClipAdvancedExperienceLocalizationInlineCreateAttributes subtitle` to nullable
- **Original**: The `subtitle` field in `AppClipAdvancedExperienceLocalizationInlineCreateAttributes` was `not nullable`.
- **Updated**: The `subtitle` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


224. Change `AppClipAdvancedExperienceLocalizationInlineCreateAttributes title` to nullable
- **Original**: The `title` field in `AppClipAdvancedExperienceLocalizationInlineCreateAttributes` was `not nullable`.
- **Updated**: The `title` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


225. Change `CiWorkflowUpdateRequestDataAttributes isLockedForEditing` to nullable
- **Original**: The `isLockedForEditing` field in `CiWorkflowUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `isLockedForEditing` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


226. Change `CiWorkflowUpdateRequestDataAttributes description` to nullable
- **Original**: The `description` field in `CiWorkflowUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


227. Change `CiWorkflowUpdateRequestDataAttributes clean` to nullable
- **Original**: The `clean` field in `CiWorkflowUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `clean` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


228. Change `CiWorkflowUpdateRequestDataAttributes containerFilePath` to nullable
- **Original**: The `containerFilePath` field in `CiWorkflowUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `containerFilePath` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


229. Change `CiWorkflowUpdateRequestDataAttributes isEnabled` to nullable
- **Original**: The `isEnabled` field in `CiWorkflowUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `isEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


230. Change `CiWorkflowUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `CiWorkflowUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


231. Change `CiWorkflowUpdateRequestDataAttributes actions` to nullable
- **Original**: The `actions` field in `CiWorkflowUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `actions` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


232. Change `AppInfoLocalizationCreateRequestDataAttributes subtitle` to nullable
- **Original**: The `subtitle` field in `AppInfoLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `subtitle` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


233. Change `AppInfoLocalizationCreateRequestDataAttributes privacyPolicyText` to nullable
- **Original**: The `privacyPolicyText` field in `AppInfoLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyPolicyText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


234. Change `AppInfoLocalizationCreateRequestDataAttributes privacyPolicyUrl` to nullable
- **Original**: The `privacyPolicyUrl` field in `AppInfoLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyPolicyUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


235. Change `AppInfoLocalizationCreateRequestDataAttributes privacyChoicesUrl` to nullable
- **Original**: The `privacyChoicesUrl` field in `AppInfoLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `privacyChoicesUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


236. Change `BetaLicenseAgreementUpdateRequestDataAttributes agreementText` to nullable
- **Original**: The `agreementText` field in `BetaLicenseAgreementUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `agreementText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


237. Change `AppStoreVersionLocalizationCreateRequestDataAttributes whatsNew` to nullable
- **Original**: The `whatsNew` field in `AppStoreVersionLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `whatsNew` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


238. Change `AppStoreVersionLocalizationCreateRequestDataAttributes keywords` to nullable
- **Original**: The `keywords` field in `AppStoreVersionLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `keywords` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


239. Change `AppStoreVersionLocalizationCreateRequestDataAttributes marketingUrl` to nullable
- **Original**: The `marketingUrl` field in `AppStoreVersionLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `marketingUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


240. Change `AppStoreVersionLocalizationCreateRequestDataAttributes supportUrl` to nullable
- **Original**: The `supportUrl` field in `AppStoreVersionLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `supportUrl` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


241. Change `AppStoreVersionLocalizationCreateRequestDataAttributes description` to nullable
- **Original**: The `description` field in `AppStoreVersionLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `description` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


242. Change `AppStoreVersionLocalizationCreateRequestDataAttributes promotionalText` to nullable
- **Original**: The `promotionalText` field in `AppStoreVersionLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `promotionalText` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


243. Change `AppEventLocalizationCreateRequestDataAttributes longDescription` to nullable
- **Original**: The `longDescription` field in `AppEventLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `longDescription` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


244. Change `AppEventLocalizationCreateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `AppEventLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


245. Change `AppEventLocalizationCreateRequestDataAttributes shortDescription` to nullable
- **Original**: The `shortDescription` field in `AppEventLocalizationCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `shortDescription` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


246. Change `BundleIdUpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `BundleIdUpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


247. Change `TerritoryAvailabilityInlineCreateAttributes releaseDate` to nullable
- **Original**: The `releaseDate` field in `TerritoryAvailabilityInlineCreateAttributes` was `not nullable`.
- **Updated**: The `releaseDate` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


248. Change `TerritoryAvailabilityInlineCreateAttributes available` to nullable
- **Original**: The `available` field in `TerritoryAvailabilityInlineCreateAttributes` was `not nullable`.
- **Updated**: The `available` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


249. Change `TerritoryAvailabilityInlineCreateAttributes preOrderEnabled` to nullable
- **Original**: The `preOrderEnabled` field in `TerritoryAvailabilityInlineCreateAttributes` was `not nullable`.
- **Updated**: The `preOrderEnabled` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


250. Change `AppStoreVersionExperimentV2UpdateRequestDataAttributes trafficProportion` to nullable
- **Original**: The `trafficProportion` field in `AppStoreVersionExperimentV2UpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `trafficProportion` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


251. Change `AppStoreVersionExperimentV2UpdateRequestDataAttributes name` to nullable
- **Original**: The `name` field in `AppStoreVersionExperimentV2UpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `name` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


252. Change `AppStoreVersionExperimentV2UpdateRequestDataAttributes started` to nullable
- **Original**: The `started` field in `AppStoreVersionExperimentV2UpdateRequestDataAttributes` was `not nullable`.
- **Updated**: The `started` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


253. Change `AppPreviewCreateRequestDataAttributes mimeType` to nullable
- **Original**: The `mimeType` field in `AppPreviewCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `mimeType` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->


254. Change `AppPreviewCreateRequestDataAttributes previewFrameTimeCode` to nullable
- **Original**: The `previewFrameTimeCode` field in `AppPreviewCreateRequestDataAttributes` was `not nullable`.
- **Updated**: The `previewFrameTimeCode` field has been updated to be `nullable`.
- **Reason**: The API can return a null value for this field.
<!-- auto-generated -->

255. **Removed the in-app purchase, Game Center and subscription APIs** (made in the original spec, `docs/spec/openapi.json`). The connector is scoped to leave these areas out, including win-back offers and promoted purchases. Every operation whose path matches `gamecenter|inapppurchase|subscription|winbackoffer|promotedpurchase` (case-insensitive) was dropped: 582 operations and the 434 path items they left empty (1303 → 721 operations), together with the 595 schemas that became unreferenced. This includes 8 operations of the previous connector release: `GET /v1/inAppPurchases/{id}`, `GET /v1/apps/{id}/inAppPurchases` and the 6 `gameCenterEnabledVersions` operations.

   The removal was made with [`resources/prune_deprecated.py`](resources/prune_deprecated.py). To reproduce it on a fresh copy of the vendor spec, run the script from the repository root **before** the generating-connectors skill:

   ```bash
   python3 docs/spec/resources/prune_deprecated.py --repo . --path-regex 'gamecenter|inapppurchase|subscription|winbackoffer|promotedpurchase' --dry-run   # review what goes
   python3 docs/spec/resources/prune_deprecated.py --repo . --path-regex 'gamecenter|inapppurchase|subscription|winbackoffer|promotedpurchase'             # apply
   ```

   The script is idempotent: on the committed spec it finds nothing to remove.

256. **Added `info.description`** (made in the original spec, `docs/spec/openapi.json`). The vendor spec has no `info.description`, so the generated `Client` had no doc comment. It now reads: "Lets you automate the tasks you perform on the App Store Connect website, such as managing apps, builds, TestFlight testing, app metadata, pricing and availability, users and access, reviews, and sales and analytics reports."

257. **Removed everything marked deprecated** (made in the original spec, `docs/spec/openapi.json`). The vendor spec marks parts of the API `deprecated: true`, and the generated client reported "usage of construct is deprecated" warnings for them. All of it was removed with [`resources/prune_deprecated.py`](resources/prune_deprecated.py) (`--all`): 18 operations (721 → 703), 19 deprecated schemas plus 2 schemas orphaned by the removal, 42 deprecated properties, 22 deprecated parameters, 12 union members and 12 discriminator mapping entries that referenced removed schemas. No further operations or schemas were cascaded, and no `deprecated: true` is left.

   The removed operations are `appStoreVersionExperiments_createInstance`, `_getInstance`, `_updateInstance` and `_deleteInstance`, `appStoreVersionSubmissions_deleteInstance`, the four `marketplaceWebhooks` operations (`getCollection`, `createInstance`, `updateInstance`, `deleteInstance`), `appEncryptionDeclarations_app_getToOneRelationship`, `appEncryptionDeclarations_app_getToOneRelated`, `appEncryptionDeclarations_builds_createToManyRelationship`, `appStoreVersionExperiments_appStoreVersionExperimentTreatments_getToManyRelationship` and `_getToManyRelated`, `appStoreVersions_appStoreVersionExperiments_getToManyRelationship` and `_getToManyRelated`, and `appStoreVersions_appStoreVersionSubmission_getToOneRelationship` and `_getToOneRelated`.

   To reproduce it on a fresh copy of the vendor spec, run it from the repository root after item 255: `python3 docs/spec/resources/prune_deprecated.py --repo . --all`. The script is idempotent.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --license docs/license.txt --client-methods remote
```

Note: The license year is hardcoded to 2026, change if necessary.
