---
layout: handbook-page-toc
title: "Gainsight Technical Information"
description: "This page shows the data structure, integrations, and other technical information about how GitLab uses Gainsight."
---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## How to contribute to this page

When creating a merge request to update this page, please use the following options:

- Reviewer: Jeff Beaumont or Emily McInerney
- Approver: Jeff Beaumont or Emily McInerney

Assign to Jeff Beaumont.

## Gainsight overview

[Gainsight](https://www.gainsight.com/) is a customer success software that our Technical Account Managers (TAMs) and Enterprise Sales team use in order to support our customers and manage their workflows. This page shows the data structure, integrations, and other technical information about how GitLab uses Gainsight. Gainsight is owned by CS Operations, and Sales Operations and Sales Systems play very active and important roles in its continual expansion and improvement.

## Additional Gainsight technical documentation

The Go-To-Market (GTM) Gainsight technical documentation, which includes rules and sync information, can be found on the [Gainsight Go-To-Market Technical Documentation page](https://about.gitlab.com/handbook/sales/field-operations/customer-success-operations/gainsight/gainsight-gtm.html).

## Gainsight support

All teams should use the `#gainsight_users` Slack Channel for questions or issues with Gainsight for quick attention.

Customer Success Operations provides support for all Customer Success teams.

For Sales teams, we use this escalation path:

1. Log-in problems (Tier 1 support) = Sales Ops
1. If Sales Ops diagnoses the issue to be more significant than log-in problems (Tier 2)
   -  Updates to permissions/access bundles = CS Ops
   - Issues with rules, connectors, etc. that are not sales-specific = CS Ops
     - Example: issue with contact loading in SFDC
   - Issues with rules, connectors, etc. that are sales-specific
     - Example: processes that support account planning 
     - Issue diagnosis and requirements collection = Sales Ops
     - Fixing issue = CS Ops

### Important old issues with resolutions

- [Duplicate records in `Instance Data` table](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues/255)
- [Snowflake > Gainsight connector - known data issues](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues/98)

## Gainsight user provisioning

You can provision users in both Salesforce and Gainsight.

**Note**: Users should access Gainsight through Salesforce.

### License provisioning in Salesforce

This process is typically handled jointly by Sales Ops and CS Ops.

**To give someone a Gainsight license**:

1. In Salesforce, click **Setup**.
1. Select `Installed packages`.
1. Find `Gainsight CSM`.
1. Click **Manage Licenses**. This will display the number of allowed vs used licenses.
1. Click **Add Users** to find a person to add. They must already exist as a user in Salesforce.
1. Add user to the Gainsight Okta group. You must be a `groups.google.com` admin for the Gainsight Okta group.

Removal of licenses is handled by Sales Ops.

### Add and remove Gainsight permissions

Once a license has been provisioned in Salesforce, you amay set them up with the correct permissions in Gainsight.

**Note**: the SFDC > User Sync connector job must run first so that Gainsight has the user information updated correctly.

**To apply full Gainsight access**:

1. Navigate to [User Management](https://gitlab.gainsightcloud.com/v1/ui/usermanagement#/users) in Gainsight.
1. Search for the user.
1. Click the `...` menu and choose `Edit User`.
1. In `License Type`, select `Full User`.
1. Click **Add Permission Bundles** and add the user to the correct bundle. You can also do this from the [Permission Bundles](https://gitlab.gainsightcloud.com/v1/ui/navigation#/bundles) page in Gainsight.
1. Click **Update**.

You may also need to click the `...` menu and select `Activate User` if they still show as `Inactive`.

**To remove Gainsight access**:

1. Verify that the person's license has been revoked in Salesforce. See the [License Provisioning in Salesforce section](#license-provisioning-in-salesforce).
1. Navigate to [User Management](https://gitlab.gainsightcloud.com/v1/ui/usermanagement#/users) in Gainsight.
1. Search for the user.
1. Click the `...` menu and select `Make Inactive`. This should clear the `License Type` and any permission bundles. Check `Edit User` to verify.

## Data permissions

The purpose of data permissions is to give users access to specific records rather than sections of Gainsight, which is what bundle permissions do. We use data permissions to protect PubSec data.

- Sharing Groups

  Set up the user group types on the **Sharing Groups** tab. Users are set up to meet criteria based on Salesforce User Roles.

  For the PubSec group, there isn’t much difference between managers and non-managers.

- User attributes

  Not currently used for anything

- Resources

  Set up who has access to what data here.
  When you go to a specific object and click **Edit**, you can set up which user groups have access to various types of records.
  Currently, in MDA --> Company, there are rules for who can see what type of Account based on Team

From the [Data Permissions page](https://gitlab.gainsightcloud.com/v1/ui/permissions) you can clear the user cache and sync changes. This can come in handy if you are troubleshooting permissions and need to update things manually.

`Data Permissions -> User Attributes -> Refresh User Data`

### Data Permissions -> Sharing Groups

Users should fall into these groups automatically based on their user role. These groups are important for PubSec vs non-PubSec identification.

## Gainsight data structure

Gainsight uses a series of standard and custom objects. Some objects/data closely mirrors others systems (such as Salesforce) while other objects are unique to Gainsight.

### Hierarchy

We use the account structure in Gainsight for hierarchy. There are also subscriptions under accounts.

### Standard objects

These are some notable standard/system objects in Gainsight:

| Object Name | Data Source | Description |
|---|---|---|
| Company | Salesforce Account, manual inputs, calculations from inside Gainsight | Information about specific accounts. Mapping to Account object in Salesforce. Most used object. Where TAMs conduct their work. |
| User | Salesforce User object | Gainsight users, populated by the User object in Salesforce |
| Person/Company Person | Salesforce Contact object, manual inputs | Gainsight contacts, maps to Contact object in Salesforce |
| Scorecard object |  |  |
| Activity Timeline | Manual inputs in Gainsight |  |
| Call to Action | Rules engine, manually created |  |
| Success Plan | Rules engine, manually created |  |
<br>

### Custom objects

These are some notable custom objects that we have created in Gainsight:

| Object Name | Data Source | Description |
|---|---|---|
| Customer Subscription | Salesforce Customer Subscription object |  |
| Gainsight Opportunity | Salesforce Opportunity object |  |
| Stage Adoption | Account Object (SFDC) |  |
| TAM History Tracking | Real time rule in Gainsight |  |
| Zendesk Tickets V2 | Zendesk Organization and Ticket objects |  |
| MonthlyMart SelfManaged Usage Data | Snowflake | All basic product usage from [Snowflake unioned dbt table](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_product_usage_paid_user_metrics_monthly).<br> This product has many records per instance. It should have one record per month per instance.<br> See how this was set up in [this video](https://gainsight.hubs.vidyard.com/watch/oMU8aPjpxK7azFDr87iFVt?). |
| Product Usage Metrics | Data Designer: MonthlyMart SelfManaged Usage Data <br> SaaS Usage Data | Calculated metrics (A/B = C) based on the MonthlyMart table. |
| Instance Data | Data Designer: MonthlyMart SelfManaged Usage Data | Updated rule is set to de-dupe the fetch from MonthlyMart data designer down to a single record for each UUID/Hostname/SFDC_AcctID combination.<br>  SSOT for which instances (self-managed) are Production or not.<br> This object allows TAMs to label the instance as one of the following:<br>  - Unknown (default) <br> - Production <br> - Non-production <br> - Obsolete <br> - Geo secondary mode  <br> This object has only one record per instance. |
<br>

### Data designer objects

- [Issue #276: GS Documentation - Review Data Designer designs and add descriptions](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues/276)
- Defined in Google doc: [Gainsight Data Dictionary](https://docs.google.com/spreadsheets/d/1NxDPleVfKK1wnD0Cp8MdfWgGlUdMVdrK4WIIJKwyKMQ/edit?usp=sharing)

## Gainsight connectors and integrations

The [Gainsight connectors](https://support.gainsight.com/Gainsight_NXT/Connectors_(Horizon_Experience) are the main way we pull data from other systems into Gainsight. We have connectors set up for the following external systems:

- Salesforce
- Zendesk
- Snowflake

### Salesforce connector

We use the Salesforce connector to create and update accounts as well as other information. Currently we have jobs set up to pull information from the following Salesforce objects:

#### SFDC Account > GS Company

- SFDC Company (AMER/LATAM) Sync - syncs important fields from the account. The 3 jobs for the 3 regions run at different times in order to update accounts in the morning for the relevant region.
- SFDC Company (APAC) Sync
- SFDC Company (EMEA) Sync
- SFDC Stage Adoption Sync - This is a separate job just for simplicity, so the other jobs don’t have too many fields.

#### SFDC Opportunity > GS Gainsight Opportunity

- SFDC Opportunity Sync - Loads important opportunity fields to the Gainsight object `Gainsight Opportunity`.

#### SFDC Contact > GS Company Person

- SFDC Company Person Sync - Loads contact records from SFDC to Gainsight
- SFDC Customer Subscription > GS Customer Subscription
- SFDC Subscription Sync - Loads important Customer Subscription fields
- SFDC User > GS User
- SFDC User Sync - Loads users from SFDC to GS

The connector is authenticated using a Gainsight Integration user in our Salesforce Instance.

Although a lot of data is brought over from Salesforce using the connector, other data is brought over with rules. See the  [GS Rules List](https://gitlab.gainsightcloud.com/v1/ui/rulesmanager#/rules/list).

### Zendesk connector

The Zendesk connector has one active job: `Zendesk Sync - Tickets`. This maps to the `Zendesk Tickets V2` custom object and runs daily.

Zendesk objects used in Connector job to load data to `Zendesk Ticket V2 MDA` object:

- Organizations
  - Contains general information about the organization/customer related to the ticket.
- Tickets
  - Contains data on specifics related to individual Zendesk tickets.
  - `Updated_at` field is used as the indicator for the timestamp of date closed or last modified.
- Users
  - User object contains data on both internal (GitLab agents) as well as external requester data (who submitted the ticket.)
- Closed Date
  - Zendesk does not provide a field for the closed date of the ticket. Instead, use `Updated_at` with a filter for `ticket status == closed`. This is based on the assumption that the last update on a ticket is its closure.

### Snowflake connector

More details in the [Product Usage Data]() section.

At the time of writing, the Snowflake connector is only available to use in the Data Designer and in Adoption Explorer. You cannot see the jobs from the Connector 2.0 interface in Gainsight.

We are only using this in Data Designer. We pull product usage data from Snowflake in the `MonthlyMart SelfManaged Usage Data` object.

Username and password are saved in Jeff Beaumont’s 1Password account. If you need to reset permissions, please ask him.

## Gainsight rules engine

The [rules engine](https://support.gainsight.com/Gainsight_NXT/03Rules_Engine) is the main automation tool in Gainsight, and allows us to do a variety of actions including bring in and/or send data to other systems, populate field values, create CTAs, set scores, and many others.

We have a team email address cs-ops@gitlab.com that we use for rule failure emails in Gainsight.

### Rule types and examples

Although we import a lot of information from Salesforce to Gainsight using the Connector, there is some data that we bring in from and send to Salesforce using rules.

See information about bi-directional syncs and how to sync data between Gainsight and Salesforce on the [Gainsight Go-To-Market Technical Documentation page](https://about.gitlab.com/handbook/sales/field-operations/customer-success-operations/gainsight/gainsight-gtm.html).

### TAM assignment push to SFDC

Gainsight is the single source of truth (SSoT) on this field.

- The `Technical Account Manager` field is updated in Gainsight and synced one-way to Salesforce.
- The rule `Admin: Load TAM to SFDC` pushes the `Technical Account Manager` field from the Gainsight Company object to the `Account` object in SFDC. This rule runs every two hours.

### TAM History Tracking object

You can pull reports on when the TAM changed on an account with this object.

The `CSM Change Date Stamp` rule runs every time the `CSM` field changes in Gainsight, for any account. It loads some information to the `TAM History Tracking` object which includes:

- The old CSM name
- The new CSM name
- The timestamp when the `CSM` field was changed

The bionic rule then uses the `TAM History Tracking` object fields to identify accounts where the CSM has changed in the last day, then updates the `Technical Account Manager` field in Salesforce.

A field on the `Company` object called `TAM First Assigned Date` was created based on the MIN date of the CSM Change Date Stamp per Account.

### Create Gainsight CTAs and success plans

We have several rules that create items in Gainsight such as CTAs and Success Plans. Some notable rules are:

- Assignment needed CTA
- Onboarding CTA
- Triggered when an opportunity is greater than $50k
- EBR cta
- ROI success plan

### Set score

All of the scorecard measures in Gainsight are set using rules.

Rules in place:

- Baseline rule
- Changes rule
- Blanks rule
- TAM sentiment
- Engagement
- ROI
- Data designers (null)

#### Rules to null scorecard measures

A rule exists to null Health Score Measures (ROI, Engagement, TAM Sentiment) for Non-TAM owned accounts, or when no TAM is assigned on accoun. The rule runs once per week on Monday.

### Load to Company/Other Gainsight objects

#### Mark for deletion rules and CS Ops dashboard reports

There are many times when accounts, opportunities, and contacts are synced from Salesforce to Gainsight, but then some time later are deleted in Salesforce. Gainsight does not identify these automatically, so we have some rules to catch deleted items.

- Admin - Mark old Account records for Deletion
- Admin - Mark old Opportunity records for deletion

These rules compare records in SFDC and Gainsight and mark a boolean field called `Delete?` on the object in Gainsight if the record no longer exists in SFDC.

Once this boolean field is marked, Gainsight displays these records in reports on the CS Ops dashboard in Gainsight. You can then go into Data Operations, filter for `Delete? = true`, and permanently delete the records.

Note: There is a report on the CS Ops dashboard that identifies accounts that need to be _merged_ instead of deleted. This report looks at any accounts that have been marked as `Delete? = true` and also have a TAM assigned to the account, or have dependencies such as CTAs, Success Plans, or Timeline entries. Instead of deleting these accounts, we need to find the correct account that these items should be transferred to, and perform a merge in Gainsight.

## Best practices

Codification standards and naming conventions can be found in the [Gainsight Architecture doc](https://docs.google.com/spreadsheets/d/1TOYo4prVlitxqJEcMSy__tTKx_xQIXZkBjgAY4QnZ0M/edit#gid=0).

## Rule title labeling

When creating rules, we add the following prefixes to rule titles for organization and clarity:

- STAGING: For any rules that are being tested/are not live/are not active or scheduled. Meant to be either deleted/deactivated or name-changed once done with testing.
- OTR: One-time run rules. These are used in specific situations such as loading historical data, clearing fields, etc. Should be deactivated after use.
- Load to SFDC: Rules that push data to Salesforce. Example: Load to SFDC - Account Attributes
- Load to Company/GS Object Name: Rules that update any Gainsight object. Example: Load to Company - Last Timeline Activity
- CTA
- Set Score

See more about labeling in [this issue](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues/42).
| Gainsight Feature | Admin Best Practice | Example |
|---|---|---|
| Rules | The start of each rule should be named with its primary "action or purpose." Always make sure rules contain a clear description of purpose. When creating new rules that are being built and not yet live, start the rule name with: STAGING so it is clear which rules are currently in the build process. These rules should be put into the STAGING folder and moved to their new applicable folder once they are live. | {Insert Name of CTA} Set Score: {Insert Name of Scorecard Measure} Load to {Object}: {Insert Name of Data Load Task} Load to People: Load Contact Role from Oppty |
| Folders | Folders should be created for each type of Rule | (CTA Rules, Load to Object Rules, Set Score Rules, etc). |
| Rule Chains | Rules should be put into Rules chains when applicable for more efficient management and workflow. | Group CTA rules into a CTA Rule Chain. Group Scorecard Rules into a Scorecard Rule Chain. |
| Inactive Rules | For Inactive rules, if they will need to be referenced in the future for any reason, deactivate the rule and put it in a deprecated folder. For rules that will never need to be referenced or used in the future, delete the rule entirely to keep the instance clean and the # of inactive rules low. |  |
| Reports and Dashboards | Report naming should be up to each admins own discretion to name it accordingly. Stay active on deleting reports that were created or cloned for testing purposes. Do not keep reports that are no longer needed. |  |
| Report Folders | The best naming convention for report folders is to name them by either who they are created for, or the general purpose of the reports; | C360 Reports TAM Reports Manager Reports Executive Reports |
| Dashboards | Dashboards should be named to clearly indicate the purpose/meaning of the dashboard or the user profile/team the dashboard is created for. |  |
| Dashboard Folders | Creating Dashboard folders is often not necessary and can be repetitive. They are useful when your Gainsight instance is very large and there are a lot of different user profiles (TAM, Onboarding, CSM, etc). Remove any unused dashboards or dashboard folders, there is rarely a strong reason to keep deprecated dashboards. |  |
| Data Model Improvements and Upkeep | When managing MDA data tables out of Data Management, always remove unused Data tables to limit technical debt. The only tables that should exist are those that are active or in staging. Always add descriptions to every custom MDA table. The description should clearly indicate what data resides in the table. |  |
| Journey Orchestrator | Remove old/unused templates as well as outdated programs that are no longer in use and analytics will not need to be referenced in the future. Create folders for different types of programs | (Onboarding Programs, Adoption Programs, Retention Programs, Growth Programs) |
| Templates | For any templates used in Email Assist or Programs start all templates with | Email Assist: {Insert Template Name} or Email Program: {insert Template Name} Email # - subject Example: Email Onboarding Program: Email 1 - Intro to GitLab |
| Email Template Folders | Create email template folders that indicate the purpose of the email | Email Assist Templates Onboarding Templates Renewal Templates |
<br>

### Rule descriptions

#### Description best practices

- Always add a rule description when creating rules.
- Link to the GitLab issue in the description: [Issue #275: GS Documentation - Review rule descriptions and titles](https://gitlab.com/gitlab-com/sales-team/field-operations/customer-success-operations/-/issues/275)

## Gainsight Scorecards

We are currently using the following scorecard groups and measures:

| Group Name | Measure Name | Rules and Methodology |
|---|---|---|
| Customer Outcomes | ROI |  |
| Customer Sentiment | TAM Sentiment |  |
|  | Engagement |  |
| Support Experience | Support Issues |  |
| Product Usage | License Usage |  |
|  | User Engagement |  |
|  | SCM Adoption |  |
|  | CI Adoption |  |
|  | DevSecOps Adoption |  |
<br>

## Product usage data in Gainsight

We bring in product usage data to Gainsight directly from Snowflake. We use a Data Designer project called `MonthlyMart SelfManager Usage Data`.

**Note**: This is only self-managed customer data.

The Gainsight integration with Snowflake is still new, so we use a Data Designer project to import the data. Once Gainsight enhances the Snowflake connection we will be able to use a Connector job if needed.

(To be completed:)

- Identifiers explained and why we have multiple identifiers
- How instances roll up to account
- Different types of instances

### Troubleshooting tips

- If you see a null value in Gainsight, check Snowflake. If there are values in Snowflake and not Gainsight, try a Data Designer reset and report update.

### Explanation of redis, namespace_ids, and snowplow collection

The data team does not use Snowplow as a source for the new Automated Service Ping processes. Instead, they use clones of Gitlab.com postgres and GitLab.com Redis counters.

Here are the four types of Service Ping we have:

1. Self-Managed Service Ping
1. Manual SaaS Service Ping
1. Automated SaaS Instance Service Ping
1. Automated SaaS Namespace Service Ping

The namespaces list used by SaaS Namespace Service Ping is driven by a clone of the GitLab namespaces table.

**Caveat**: Redis-sourced metrics (noted in the metric dictionary as either redis or redis_hll) are not yet available at the namespace level. For the time being, SaaS Namespace Service Ping will only have Postgres-sourced metrics (as of 2021-09-08).

### Data definitions

- [UUID](https://docs.gitlab.com/ee/development/usage_ping/dictionary.html#uuid): originally intended as unique identifier
- `Hostname`: the url for the company’s on-prem server (e.g., gitlab.gainsight.com)
- Metric definitions: https://docs.gitlab.com/ee/development/usage_ping/dictionary.html 
- `Ping_date`: The specific date of the Service Ping (e.g., 2021-08-11 12:00). This is a weekly ping so the rows of data are updated with the latest ping values.
  - Use case: Use this field to see the exact date that the ping was sent.
- `Snapshot_month`: each row of data is tied to the snapshot month. The ping_date field will update the values in `Snapshot_month` for the current month.
  - Example: The monthly values (the fields) are updated on a weekly basis (Friday). Using July as an example, the ping date will update (July 1, July 8, July 15, July 22….) but the snapshot_month will remain 2021-07-01. When comparing July and August, you’ll see the value as of July 31 (roughly) and August 7 (assuming 1 week off). Put differently, July and August may be very similar in numbers.
  - Use case: 99% of the time use `snapshot_month` vs. `ping_date`.
  - Reasons we wouldn’t see snapshot month:
    - Canceled subscription (they canceled in May and, thus, stopped sending us data)
    - Data quality (something broke somewhere)
    - For self-managed, the customer disabled or blocked sending us data

### Product usage data flows

![Product Usage Data Flow Diagram](https://lucid.app/publicSegments/view/cba91861-d0aa-4f96-8848-56a2eec5798b/image.jpeg)

### Product usage mapping

GitLab customers will have an account and may have multiple subscriptions. Each subscription may have multiple instances, such as production or staging.

![Instance Mapping](https://lucid.app/publicSegments/view/74e7b4aa-6e71-4f60-83bb-6439c459358c/image.png)

In Gainsight there is a tri-level structure, so an account will have multiple instances related to it. While we have the subscription ID mapped so we can see which subscriptions have instances, the visualization in Gainsight is a one-to-many relationship (Account:instances).

## Snowflake tables

- [Monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_product_usage_wave_1_3_metrics_monthly) metrics
- [Latest](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_product_usage_wave_1_3_metrics_latest) metrics
- [Self-managed and SaaS](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_product_usage_paid_user_metrics_monthly)

