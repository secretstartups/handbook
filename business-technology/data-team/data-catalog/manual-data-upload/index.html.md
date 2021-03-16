---
layout: handbook-page-toc
title: "Manual Upload of Usage Payload"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Activities for the User with Usage Data

* If this is your first time manually uploading usage ping data, you will need access to the `snowflake_imports` GCS bucket.  Create an [access request](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/#individual-or-bulk-access-request).  Tag the `@gitlab-data/engineers` group in the access request when access is ready to be provisioned.
* If a folder for the customer does not yet exist in the [`snowflake_imports` GCS bucket](https://console.cloud.google.com/storage/browser/snowflake_imports), create one.
* Place usage ping payload files in the [`snowflake_imports` GCS bucket](https://console.cloud.google.com/storage/browser/snowflake_imports), in that customer's folder: First, click into the folder. Then, press the `UPLOAD FILES` button, select the files, and press upload.
* Organize the file(s), ideally the file(s) will be in json format _i.e companyname_usage_payload_00_00_0000.json_

* Usage ping data captures information that details which features and services are being utilized within a GitLab instance. To learn more please visit this [link](https://docs.gitlab.com/ee/development/usage_ping/).
