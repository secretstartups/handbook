---
layout: handbook-page-toc
title: "Tableau"
description: "Tableau at GitLab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

---

## Quick Links

* [Tableau Online GitLab instance](https://10az.online.tableau.com/#/site/gitlab/home)
* [Internal Slack channel](https://app.slack.com/client/T02592416/C03RMCEHVCP)
* [External Slack channel](https://app.slack.com/client/T02592416/C031QE95QJU)

## Tableau

[Tableau](https://www.tableau.com) is our newest Business Intelligence tool. It is a [leader](https://interworks.com/blog/2021/02/24/the-2021-gartner-bi-magic-quadrant-visualized-in-tableau/) in the Business Intelligence space. We are currently deploying it as part of a pilot project for key use cases. 

## Acceptable Use

Acceptable use:
-  Ad-hoc analysis and data exploration
- One-off or temporary dashboards or reporting
- Creating data visualizations for screenshots in presentations
- Dashboard prototyping, mockups and proof-of-value
- Dashboards for specific use cases accessed only by a single-team

It should not be used for:
- SSOT reporting
- Replacing Sisense for Cloud Data Teams
- Cross-departmental reporting
- Use cases with an audience of greater than 5-10 people
- Embedding data visualizations in the handbook
- Reporting in key meetings

## Access

### Tableau Online Access

Users can request access by creating an issue and assigning it to the Data Collaboration Team. The Data Collaboration team will then send them an invitation via email to access [GitLab's Tableau Online](https://10az.online.tableau.com/#/site/gitlab/home) instance.

Future access will be provided through Okta (coming soon).

### Tableau Desktop Access

Creators with an active license to Tableau Online can also use Tableau Desktop for local development for specific use cases. Locally developed Data Sources or Workbooks can later be published to Tableau Online, provided they fall under the acceptable use cases.

* [Tableau Desktop Download](https://www.tableau.com/products/desktop)
* [Tableau Prep Builder Download](https://www.tableau.com/products/prep)

Activate your Tableau Desktop or Tableau Prep Builder clients:
1. Download and install the software listed above by signing up for a free trial
1. Open your Tableau Desktop and/or Tableau Prep Builder
1. Search for Data > Tableau Server
1. Quick Connect: Tableau Online
1. Sign into Tableau Online - note: only users with active Creator licenses will be able to complete this step

Alternatively, Account Owners in the Data Team assign a Creator License Code under the License or License section of the [Tableau Customer Portal](https://customer-portal.tableau.com/s/my-keys).

### Licenses

GitLab has 120 licenses available for the duration of the Tableau Pilot project.
- 60 Creators: Full editor capabilities, including Data Modeling, Data Prep and Data Visualizations. 
- 10 Explorers: Ability to edit Data Visualizations
- 50 Viewers: for Data Consumers, which includes the ability to filtering the data and the use of [Ask Data](https://www.tableau.com/about/blog/2021/6/tableau-release-ask-data-explain-data-viewers-collections) natural language querying. 

The number of licenses is limited for the duration of the pilot, and is meant for teams working on specific use cases. The Data Team will unassign licenses by people who are not using it, or are in breach of the acceptable use policy listed above. 

https://customer-portal.tableau.com/s/

### Data Source Access

* Snowflake (coming soon)
    * Service Account
    * Virtual Connections
    * Oauth
* Google Docs (coming soon)
* Manual Uploads (formats: xls/xlsx, csv, tsv, kml, geojson, topojson, json)
    1. Home/Explore > New > Workbook
    1. Files > Drag and drop a file / Upload from computer

### Dashboard Access

`coming soon`

## Tracking Usage

* [Assigned Licenses](https://10az.online.tableau.com/#/site/gitlab/users) (Admins only)
* [Licenses Used](https://10az.online.tableau.com/#/site/gitlab/analysis/LoginBasedLicenseUsage)
* [Actions by Users](https://10az.online.tableau.com/#/site/gitlab/analysis/ActionsbyAllUsers)

Unused licenses will be reclaimed by the data team.

## Training Resources & Support

### Official Training Resources

* [Free Training](https://www.tableau.com/learn/training/20222)
* [Training Portal](https://elearning.tableau.com/domain/access?next=%2Fauth%2Fendpoint%2Flogin%2Fresult%3Fnext%3D%252F%26d%3D1ih3zgkgrbeqr)
    * Request Access Code from Data Team. Account Owners in the Data Team can find the Access Code under the eLearning or License section of the [Tableau Customer Portal](https://customer-portal.tableau.com/s/my-elearning).
* [Tableau Community](https://community.tableau.com/s/)
* [Tableau Support](https://www.tableau.com/support?uid=2371123726-ce770707e25d4b2491f19c52e850db5b&serverSiteUserId=890552&serverSiteId=2ae725b5-5a7b-40ba-a05c-35b7aa9ab731&serverInstanceId=prod_online)

### Third Party Training Resources

* [YouTube Intellipaat - Tableau Online Training](https://www.youtube.com/watch?v=ttCDqyfrcEc)
* [YouTube edureka! - Tableau Full Course](https://www.youtube.com/watch?v=aHaOIvR00So)
* [YouTube Simplilearn - Tableau Tutorial](https://www.youtube.com/watch?v=fO7g0pnWaRA)

Note: training videos listed above are provided for free by third parties and their content has not been fully vetted by the GitLab Data Team. 
