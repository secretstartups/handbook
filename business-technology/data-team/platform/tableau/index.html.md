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
* [Tableau eLearning Portal](https://elearning.tableau.com)
* [Tableau Customer Portal](https://customer-portal.tableau.com/s/)
* [Tableau Status Page](https://trust.tableau.com)
* [Internal Slack channel](https://app.slack.com/client/T02592416/C03RMCEHVCP)
* [External Slack channel](https://app.slack.com/client/T02592416/C031QE95QJU)

## Tableau

[Tableau](https://www.tableau.com) is our newest Business Intelligence tool. It is a [leader](https://interworks.com/blog/2021/02/24/the-2021-gartner-bi-magic-quadrant-visualized-in-tableau/) in the Business Intelligence space. We are currently deploying it as part of a pilot project for key use cases and are readying the environment for a full production release. 

## Access

### Tableau Online Access

Users can request access by creating an issue in the [access requests project](https://gitlab.com/gitlab-com/team-member-epics/access-requests) documenting the level of access required and assigning it to the Data Collaboration Team. To make a request, please navigate to the **Choose a template** dropdown menu and select the **Tableau_Request** template to get your AR started.

For most Creators Tableau access also requires [Snowflake access](https://about.gitlab.com/handbook/business-technology/data-team/platform/snowflake/), manager approval, and approval by your respective Tableau department owner. Please tag the designated Lead Approver(s) for your team / department from below for review and approval in your AR issue:

| **Team / Department** | **Approver(s) / Project Leader** |
| ------- |------- |
| Customer Success  | `@jdbeaumont`  |
| Data & Business Insights  | `@mlaanen`, `@ttnguyen28` |
| Marketing         | `@jahye1` |
| People            | `@aperez349`, `@mccormack514` |
| Product           | `@cbraza` |
| Sales             | `@aileenlu` |
| Finance: Sales Finance  | `@ofalken` |
| Finance: FP&A | `@james.shen` |

Tableau Desktop users will also need a Yubikey set up in Okta to access content published in Tableau Online. One can be requested using a by filling in a [form](https://docs.google.com/forms/d/e/1FAIpQLScKJ2Th2TU2YZ97WMfU_y2nC5AQKsiNeZ7kXea6-IS2CrEyzA/viewform).

Once approved, the Data Collaboration team will then add the user to the `okta-tableau-users` [Google Group](https://groups.google.com/a/gitlab.com/g/okta-tableau-users), add the user in [Tableau Online](https://10az.online.tableau.com/#/site/gitlab/users) and assign the correct license, then add the user to the right [Tableau Group](https://10az.online.tableau.com/#/site/gitlab/groups). 

### Tableau Online Admins

| **Primary / Backup** | **User** |  Designated Support Contact with Tableau Support |
| ------- |------- | ------- |
| Primary | `@ttnguyen28` | Yes |
| Primary | `@mlaanen` | Yes |
| Backup  | `@snalamaru`  | Yes |
| Backup  | `@pempey`  | Yes |

### Permissions Best Practices for Admins & Project Leaders

- Don’t publish in the parent folder(s) and create nested subfolders instead.
- Set permission on a project folder level, not an individual workbook.
- Assign permissions to a group, not an individual person.
- Required course to complete: [Site Management](https://elearning.tableau.com/path/site-administrator/site-management)
- Ensure non-SAFE users cannot access SAFE content. This is the only time you should make use of the "deny" permissions functionality.

### Tableau Online Status

To check the current status of Tableau Online and if there are any reported outages, visit the [Tableau Status Page](https://trust.tableau.com). On that page you can also sign up for notifications in the event of an outage. For reference, GitLab's Tableau Online instance is located in `United States - West - (10AZ)`.

### Tableau Desktop Access

Creators with an active license to Tableau Online can also use Tableau Desktop for local development for specific use cases. Locally developed Data Sources or Workbooks can later be published to Tableau Online, provided they fall under the acceptable use cases.

Download Tableau Desktop using the links below, or follow the link from the [Home Page](https://10az.online.tableau.com/#/site/gitlab/home) of Tableau Online.
* [Tableau Desktop Download](https://www.tableau.com/products/desktop)
* [Tableau Prep Builder Download](https://www.tableau.com/products/prep)

Any user can download the desktop tools and start a 14-day free trial without limitation. After the 14 days they will need to activate Tableau Desktop and/or Tableau Prep Builder clients:
1. Download and install the software listed above by signing up for a free trial
1. Open your Tableau Desktop and/or Tableau Prep Builder
1. Search for Data > Tableau Server
1. Quick Connect: Tableau Online
1. Log in to Okta using a Yubikey - if Okta isn't set up for your account, login using your Tableau login & MFA. Note: only users with active licenses will be able to complete this step, and this will only work when using a Yubikey, not when using fingerprints to authenticate to Okta.

Alternatively, Account Owners in the Data Team assign a Creator License Code under the License or License section of the [Tableau Customer Portal](https://customer-portal.tableau.com/s/my-keys).

### Licenses

GitLab has 120 user licenses available for the duration of the Tableau Pilot project. These licenses can be reassigned during the pilot project. More licenses will be acquired in FY24 =. 
- 60 Creators: Full editor capabilities, including Data Modeling, Data Prep and Data Visualizations. 
- 10 Explorers: Ability to edit Data Visualizations.
- 50 Viewers: for Data Consumers, which includes the ability to filtering the data and the use of [Ask Data](https://www.tableau.com/about/blog/2021/6/tableau-release-ask-data-explain-data-viewers-collections) natural language querying. 

GitLab also has 60 eLearning credits available for Creators. These cannot be reassigned.

Licences will be revoked if not used for 90 days. 

### Data Source Access

**Using Tableau Online:**

* Snowflake 
    * Service Account
        * The Data Team has access to the credentials of the Tableau and Tableau restricted service accounts. The respective Snowflake roles to use for those accounts are `REPORTER` and `RESTRICTED_SAFE`. 
    * Virtual Connections
        * Virtual Connections to PROD tables in Snowflake are stored in either the `Data Team - Connections` or `Data Team - SAFE Connections` project folders in Tableau Online and accessible to all users during the pilot.
        1. Home/Explore > New Workbook
        1. Connect to Data > On This Site > Content Type: Virtual Connections
        1. Select your table and press `Connect`.
    * Oauth
        1. Home/Explore > New Workbook
        1. Connectors > Snowflake
            1. Fill in the following:
                - Server: `gitlab.snowflakecomputing.com`
                - Role: For Production releases: RESTRICTED_SAFE. For ad-hoc or development you can use your Snowflake username (you can find it in Snowflake in the top right section of your screen)
                - Authentication: `Sign in using OAuth`
            1. Click on `Sign in`
            1. Click on `Sign Sign On`
            1. Log in to Okta
            1. Click `Allow`
            * Note: If you use Oauth to connect, use the `Embed password for data source` option when publishing so others can also access it.
            * Note: The Snowflake Oauth token for Tableau Online expires in 90 days. You'll need to reauthenticate after 90 days to keep working with the data.
* Flat files (formats: xls/xlsx, csv, tsv, kml, geojson, topojson, json)
    1. Home/Explore > New > Workbook
    1. Files > Drag and drop a file / Upload from computer
* Google Sheets 
    1. Home/Explore > New Workbook
    1. Connectors > Google Drive
    1. Sign in with Google
    1. Check all the boxes
    1. Click `Allow`
    1. Double click on the Google Sheet you want to use


**Using Tableau Desktop or Tableau Prep Builder:**

*Important:* In order to connect Tableau Desktop to Tableau Online, you need to set up a [Yubikey](https://about.gitlab.com/handbook/security/#security-process-and-procedures-for-team-members) in Okta. Fingerprints will not work.

* Snowflake 
    1. Connect > To a Server > Snowflake
    1. Fill in the following:
        - Server: `gitlab.snowflakecomputing.com`
        - Role: For Production releases: RESTRICTED_SAFE. For ad-hoc or development you can use your Snowflake username (you can find it in Snowflake in the top right section of your screen)
        - Authentication: `Sign in using OAuth`
    1. Click on `Sign in`
    1. It should open a browser tab. Click on `Sign Sign On`
    1. Log in to Okta
    1. Click `Allow`
    1. Your browser tab should display the following message: `Tableau created this window to authenticate. It is now safe to close it.`
    1. Close your browser tab and continue in Tableau Desktop
    * Note: The Snowflake Oauth token for Tableau Desktop expires in a day. You'll need to reauthenticate every day to keep working with the data.
* Data Sources published in Tableau Online
    1. Connect > Search for Data > Tableau Server
    1. Quick Connect > Tableau Online
    1. Log in to Okta - if Okta isn't set up for your account, login using your Tableau login & MFA
    1. Pick a published data source or virtual connection
* Flat files (formats: xls/xlsx, csv, tsv, kml, geojson, topojson, json)
    1. Home/Explore > New > Workbook
    1. Files > Drag and drop a file / Upload from computer
* Google Sheets 
    1. Home/Explore > New Workbook
    1. Connectors > Google Drive
    1. Sign in with Google
    1. Check all the boxes
    1. Click `Allow`
    1. Click on the Google Sheet you want to use
    1. Click Connect

### Tracking Usage

* [Assigned Licenses](https://10az.online.tableau.com/#/site/gitlab/users) (Admins only)
* [Licenses Used](https://10az.online.tableau.com/#/site/gitlab/analysis/LoginBasedLicenseUsage)
* [Actions by Users](https://10az.online.tableau.com/#/site/gitlab/analysis/ActionsbyAllUsers)
* [eLearning Usage](https://dashboard.skilljar.com/analytics/) (Admins only)

Unused licenses will be reclaimed by the data team.

## Production and Pilot environment

In FY24 we are readying our environment for true production releases. 

### Timeline

- FY24Q1
    - Ready Tableau Online environment for Production Releases
    - Move the first dashboards to full Production
    - Focus on GTM and Finance
- Middle of FY24: 
    - Purchase additional user licenses
    - Focus on the rest of the organization
    - Business teams to migrate key content
- Late FY24
    - Complete migration efforts

### Folder structure and permissions

|  Folder Environment |  What can be published |  Who can publish | Who can view |
| ------ |  ------ |  ------ | ------ |
| Development - SAFE | Any data from Snowflake and GSheets  | Any SAFE Creator in their own department’s folders | Any SAFE Creator can see their own department’s folders |
| Development - General Access | Any non-SAFE data from Snowflake and GSheets | Any non-SAFE Creator in their own department’s folders | Any non-SAFE Creator can see their own department’s folders |
| Sandbox - SAFE | Any data from Snowflake and GSheets | Any SAFE Creator in their own department’s folders | Any SAFE User |
| Sandbox - General Access | Any non-SAFE data from Snowflake and GSheets | Any non-SAFE Creator in their own department’s folders | Any User  |
| Production - SAFE | Any trusted data from Snowflake EDM | Site Admin (data team)  | Any SAFE User |
| Production - General Access |  Any non-SAFE trusted data from Snowflake EDM | Site Admin (data team)  | Any User  |
| Pilot (SAFE) | Any data from Snowflake and GSheets | Any SAFE Creator in their own department’s folders | Any SAFE User |
| Future: Public Broadcast | Any publicly shareable data | Site Admin (data team) | Public |

- Restricted subfolders have access limited to only users from their departments
- SAFE Creators can access, but not publish in non-SAFE environments
- Non-SAFE Creators cannot access nor publish in SAFE environments
- Only Site Admins can publish in Production, after review
- All users are added to appropriate User Groups:  department group, SAFE or non-SAFE, developer or not, admin or not
- Publishing permissions are based on Site role (Creator or Viewer) and RBAC permissions (see previous slide)

Environments designated as SAFE, including our Pilot folders, are treated as a [SAFE](https://about.gitlab.com/handbook/legal/safe-framework/) environment, just like our [Sisense SAFE dashboard space](https://about.gitlab.com/handbook/business-technology/data-team/platform/safe-data/). 

### Production Requirements

Production releases need to meet the following criteria:
* Data has been validated
* Business owner has signed off on both the functionality of the content and the validity of the numbers
* Uses virtual connections, or a service account. If not, have data team change credentials to using the service account
* Data source is published separately
* Data comes from trusted enterprise data models (EDM) in Snowflake. If data comes from other sources, including legacy tables in Snowflake, there is an open issue with the Data Team to get data added to the EDM. 
* Where possible, Custom SQL statements are avoided. 
* GitLab's standard colors are used in the UI
* Performance tuning has been performed
* Content has been reviewed by the Data Team
* For general access (non-SAFE) data, confirm that no restricted (SAFE) data is used
* Data and content is not duplicated in other production dashboards

Production releases will be reviewed bi-weekly. 

## Training Resources & Support

### Official Training Resources

* [Free Training](https://www.tableau.com/learn/training/20222)
* [Training Portal](https://elearning.tableau.com/)
    * Request Access Code from Data Team. Account Owners in the Data Team can find the Access Code under the eLearning section of the [Tableau Customer Portal](https://customer-portal.tableau.com/s/my-elearning). The Data Collaboration team will share the Access Code via [1password](https://about.gitlab.com/handbook/security/#1password-guide).
    * New Creators without prior Tableau experience should complete the Tableau Fundamentals training course at the minimum. Tableau Intermediate is also recommended as a follow up course.
    * If you experience any issues accessing the training content, check [this page](https://support.skilljar.com/hc/en-us/articles/360033553054) for solutions to the most common problems.
* [Tableau Community](https://community.tableau.com/s/)
* [Tableau Support](https://www.tableau.com/support)
* [Tableau Classroom training](https://www.tableau.com/learn/classroom/course-catalog) & [Training Pass](https://www.tableau.com/tableau-training-pass)
    * These could be options for you to use as part of your [growth and development benefit](https://about.gitlab.com/handbook/total-rewards/benefits/general-and-entity-benefits/growth-and-development/). Bring this up with your manager during your [career development conversations](https://about.gitlab.com/handbook/people-group/learning-and-development/career-development/#what-is-career-development).

### Third Party Training Resources

* [YouTube Intellipaat - Tableau Online Training](https://www.youtube.com/watch?v=ttCDqyfrcEc)
* [YouTube edureka! - Tableau Full Course](https://www.youtube.com/watch?v=aHaOIvR00So)
* [YouTube Simplilearn - Tableau Tutorial](https://www.youtube.com/watch?v=fO7g0pnWaRA)

Note: training videos listed above are provided for free by third parties and their content has not been fully vetted by either Tableau or the GitLab Data Team. 

### Troubleshooting and Support

1. Post your questions in the `#data-tableau` internal slack channel to see if someone in the company has the answer.
1. Post your questions in the `#ext-gitlab-tableau` external slack channel if you need someone from Tableau to look at it.
1. Post your questions in the [Tableau Community](https://community.tableau.com/s/) to see if someone in the wider Tableau user community has the answer.
1. Open a support case with [Tableau Support](https://www.tableau.com/support) if you're experiencing a technical issue with the Tableau Online platform or Tableau Desktop.
    - Anyone can open a support case, however if you want expediated response and resolutions times based on [Tableau Premium Support's](https://www.tableau.com/resources/teams-organizations/premium-support) SLAs ask one of the designated support contacts to open the support case for you instead. Currently the listed contacts are:
        - `@mlaanen`
        - `@ttnguyen28`
        - `@snalamaru`
        - `@pempey`

#### Tableau Office Hours

We hold weekly office hours (8:30-8:55AM PST) for Tableau users to be able to regularly meet and showcase their work, as well as discuss topics / ask questions on anything relating to the tool. Please refer to our running [Meeting Agenda and Question & Answer document](https://docs.google.com/document/d/1i23bIsoupKC7rTepbU2lVXTHB5vxKuAgl07kAQq2EBA/edit) for content covered in our sessions.

| Office Hours Date | Agenda |
| ------- | ------- |------- |
| 09/14/2022 | [Show-and-tell: Headcount Dashboard (People Analytics)](https://gitlab.zoom.us/rec/share/0MphAkpYATvSoUpIohaV-txJ0FYDrAbhZWLcLDc8a7wKXI81087HFNJz7JPDqhlO.JEjb5PcYVKklF9pp) |
| 09/21/2022 | [How to Get Started: Data Connectivity](https://gitlab.zoom.us/rec/share/a12XqymuT2jN5zYCKp3pWdGEd442C4DonmqL9d1Qpn0303e1377L4NXyg5cCXspT.bWgjHRtOQ2dGa5G5) |
|09/28/2022 | [Design Templates and Best Practices](https://gitlab.zoom.us/rec/share/CZIolPQw04BR3gDT5oO-Hodino24oBtdkxZhZExR1B6LCcXP-6fsL6LrWqakOC6F.Xq-NdWe6HBq-et8A) |

#### Tips and Tricks

| Environment | Tips | 
| ------- | ------- | 
| Tableau Desktop | Certain features are only available to Creators when using Tableau Desktop, and might not be there in Tableau Online. For the best experience building dashboards, use Tableau Desktop if the size of the data and the performance of your laptop allows it. |
| Tableau Online / Desktop | When your data set allows it, use data extracts for the best performance and end user experience | 
| Tableau Online | Always save a newly created workbook first in your personal space before working on it. If you run into any issues while developing, the latest draft version can always be retrieved from there. If you don't it could disappear if you run into any issues. |
| Tableau Desktop | If you run into a problem where Tableau Desktop crashes, clear out the logs and try to reproduce the error. Then send the logs to @mlaanen or @ttnguyen28 or post it in our external slack channel with Tableau. Follow these steps to generate the logs: Close Tableau Desktop, go to Documents > My Tableau Repository > logs, delete all the logs, Open Tableau Desktop, replicate the issue, close Tableau Desktop, open up the log files in the file path mentioned above. |


#### Common Problems

| Environment | Problem | Solution | 
| ------- | ------- |------- | 
| Tableau Desktop | Error FAB9A2C5 Connecting to Snowflake when using Tableau Desktop | Check to see if the simba.snowflake.ini file is showing as DriverManagerEncoding=UTF-32. If it is set to 16 you'll have trouble connecting. [Tableau Knowledge article](https://kb.tableau.com/articles/issue/error-fab9a2c5-connecting-to-snowflake-via-odbc?lang=en-gb). | 
| Tableau Online | Invalid Consent Request when opening a workbook that asks you to log into Snowflake. | If the data source for the workbook was created using Oauth, have the workbook owner republish it using the `Embed password for data source` feature, or alternatively ask the Data Team to switch it to using the service account instead. |
| Tableau Desktop | When publishing to Tableau Online from Tableau Desktop, all project folders are greyed out. | Click on the `>` icon next to your department's foldername to see the subfolders. You should be able to publish into those subfolders. | 
| Tableau eLearning | Error Message: "Missing Authentication Cookie" |  Change your browser settings as described on the [Skilljar Help Center](https://support.skilljar.com/hc/en-us/articles/360033553054) | 
| Tableau Online or Desktop | When using "Initial SQL": "An error occured when connecting to Snowflake" | To run your own SQL queries in Tableau, don't use the `Initial SQL` functionality. Snowflake doesn't support that in this context. Use `Customer SQL Query` instead. It will be found on the bottom left of the screen after connecting to Snowflake, picking a warehouse and schema. It's found underneath the listed tables. |
| Tableau Online or Desktop | Error "There was a problem connecting to the data source "Untitled Data Source"" when connecting to Virtual Connections  |  The password for the Snowflake service account expired. For Tableau admins: Connect to Snowflake via Oath as the service account. It will prompt you to change the password. Afterwards, edit all the virtual connections and republish them. |
| Tableau Online or Desktop | Nondescript error when connecting to Virtual Connections |  The underlying table changed, likely with fields removed. Ask a Tableau admin to Edit the virtual connection, find the affected table/field (check 'Alerts' when editing the virtual connection), and `Exclude` the deleted field. Then republish the virtual connection. |
| Tableau Desktop | Screen gets stuck on authenticating to Okta when connecting Tableau Desktop to Tableau Online |  Use a Yubikey to connect to Okta when using Tableau Desktop. Fingerprint authentication will not work. |
