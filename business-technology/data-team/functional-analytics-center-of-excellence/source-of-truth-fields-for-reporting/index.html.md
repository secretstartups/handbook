---
layout: handbook-page-toc
title: "Functional Analytics Center of Excellence"
description: "The FACE is a cross-functional group of functional analytics teams that aim to make our teams more efficient by solving and validating shared data questions which results in cohesive measurement approaches across teams."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## FACE: Source of Truth Fields for Reporting

Below is a series of tables containing the standard fields to use when pulling data from various systems.

🚧  This page is currently a work in progress. 🚧 

### Salesforce dot com

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Opportunity | Segment | Owner/User Segment        |           |          |
| Opportunity | Geo     | Owner/User Geo            |           |          |
| Opportunity | Region  | Owner/User Region         |           |          |
| Opportunity | Country |                           |           |          |
| Opportunity | State   |                           |           |          |
| Opportunity | Owner   | Opp Owner                 |           |          |
| Opportunity | Order Type   | Opp Owner                 |           |          |
| Opportunity | Sales Qualified Source   | Opp Owner                 |           |          |
| Account | Segment | | | |
| Account | Account Type | | | |
| Account | First Order available | | | |
| Account | JiHu | | | |
| Account | Geo | | | |
| Account | Region | | | |
| Account | Owner ||||
| User | Role ||||

### Gitlab.com db

| Object | Field | Table | Description | Notes for Analysis |
| --- | --- | --- | --- | --- |
| Namespace | `namespace_type` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* | `Group`, `User` (personal namespace automatically created upon user creation/registration), `Project` (new addition to namespace "type" as part of [this Workspace work](https://gitlab.com/groups/gitlab-org/-/epics/6473)) | Analysis is commonly limited to `Group` namespaces | 
| Namespace | `is_setup_for_company` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespace_settings`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespace_settings) | Set at namespace creation, but there are a lot of `NULL`s, so we must be missing some use cases. <br> We started collecting this data at the namespace level on `2021-08-26` ([issue](https://gitlab.com/gitlab-org/growth/team-tasks/-/issues/413)). | While this is available on the namespace-level, some groups (ex: Growth) leverage user-level `setup_for_company` (details below) |
| Namespace | `namespace_creator_is_blocked` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); `LEFT JOIN` [`legacy.gitlab_dotcom_users_blocked_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_users_blocked_xf)* `ON namespace.creator_id = blocked.user_id` | Namespaces are considered to be blocked if the creator is in a `blocked` or `banned` state | Namespaces created by blocked users are usually excluded from analysis |
| Namespace | `visibility_level` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* | Namespace or group's visibility setting: `private`, `public`, `internal` (no longer in use). <br> The `internal` visibility setting means the project is accessible by [any signed in user](https://docs.gitlab.com/ee/public_access/public_access.html#internal-projects-and-groups), and has been [disabled on GitLab.com since 2019](https://gitlab.com/gitlab-org/gitlab/-/issues/12388). `internal` does _not_ necessarily mean it is associated with GitLab (the company) | Growth KPIs frequently limit to private namespaces |
| Namespace | `ultimate_parent_namespace_id` / `namespace_ultimate_parent_id` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* | Unique identifier of a namespace/group's ultimate parent. Many models (ex: [`legacy.gitlab_dotcom_usage_data_events`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_usage_data_events)) attribute activity to the ultimate parent namespace | Analysis is commonly limited to (or grouped by) ultimate parent namespace |
| Namespace | `namespace_is_ultimate_parent` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* `WHERE namespace_id = namespace_ultimate_parent_id` | Denotes whether the namespace is the top-level or ultimate parent. Many models (ex: [`legacy.gitlab_dotcom_usage_data_events`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_usage_data_events)) attribute activity to the ultimate parent namespace | Analysis is commonly limited to (or grouped by) ultimate parent namespace |
| Namespace | `namespace_is_internal` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* | Denotes whether the namespace's ultimate parent is identified as belonging to GitLab (the company). <br> The mapping of internal namespaces in `dim_namespace` is defined using [`common_mapping.map_namespace_internal`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.map_namespace_internal). The mapping of internal namespaces in `gitlab_dotcom_namespaces_xf` is defined using the [`get_internal_parent_namespaces`](https://gitlab-data.gitlab.io/analytics/#!/macro/macro.gitlab_snowflake.get_internal_parent_namespaces) dbt macro. | Internal namespaces are usually excluded from analysis |
| Namespace | `creator_id` | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* | `dim_user_id`/`user_id` of the namespace's creator. A namespace's creator is derived using gitlab.com audit events | Some groups (ex: Growth) use namespace creator to attribute values like `setup_for_company` (see details below) |
| Namespace | ⚠️ `owner_id` ⚠️ | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* | This field is frequently NULL. Do not use this field, see row below about namespace owner |  |
| Namespace | Owner | [`legacy.gitlab_dotcom_memberships`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships) `WHERE access_level = 50` | `legacy.gitlab_dotcom_memberships.access_level` reflects a user's _current_ access. `access_level` mapping available [here](https://docs.gitlab.com/ee/development/permissions.html#members). A single namespace can have multiple owners |  |
| Namespace | ⚠️ `current_member_count` / `member_count` ⚠️ | [`common.dim_namespace`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_namespace); [`legacy.gitlab_dotcom_namespaces_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf)* | This field is incorrect. Do not use this field, see below for details on member count. <br> Issue to fix logic [here](https://gitlab.com/gitlab-data/analytics/-/issues/12566) |  |
| Project | `visibility_level` | [`common.dim_project`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_project); [`legacy.gitlab_dotcom_projects_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_projects_xf)* | Project's visibility setting: `private`, `public`, `internal` (no longer in use). A project's visibility setting can be different than that of its parent group/namespace <br> The `internal` visibility setting means the project is accessible by [any signed in user](https://docs.gitlab.com/ee/public_access/public_access.html#internal-projects-and-groups), and has been [disabled on GitLab.com since 2019](https://gitlab.com/gitlab-org/gitlab/-/issues/12388). `internal` does _not_ necessarily mean it is associated with GitLab (the company). |  |
| Project | ⚠️ `member_count` ⚠️ | [`common.dim_project`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_project); [`legacy.gitlab_dotcom_projects_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_projects_xf)*  | This field is incorrect. Do not use this field, see below for details on member count. <br> Issue to fix logic [here](https://gitlab.com/gitlab-data/analytics/-/issues/12566) |  |
| User | `setup_for_company` | [`legacy.gitlab_dotcom_user_preferences`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_user_preferences) | Set when a user creates their first namespace, but there are a lot of NULLs and therefore some use cases where the value is not captured. In that case, the value is set the _next_ time a user creates a namespace. <br> This value used to be overwritten to `TRUE` at time of conversion to a paid plan ([issue](https://gitlab.com/gitlab-org/gitlab/-/issues/336975), fix merged `2021-08-27`). | Some groups (ex: Growth) attribute `setup_for_company` to a namespace based on the value of a namespace's creator |
| User | `is_blocked_user` | [`common.dim_user`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_user); presence in [`legacy.gitlab_dotcom_users_blocked_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_users_blocked_xf)* | Users in a `blocked` or `banned` state are considered to be blocked. <br> Blocked users are filtered out of several legacy models, including [`legacy.gitlab_dotcom_users_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_users_xf). See "Additional notes" below for more details. | Namespaces created by blocked users are usually excluded from analysis |
| User/Member | Member of project/group/namespace | Presence in [`legacy.gitlab_dotcom_memberships`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships) | This model reflects the _current_ state of memberships and excludes blocked users. <br> ⚠️ Use caution as this is a particularly confusing data set ⚠️ | Join on `ultimate_parent_id` to get members of the ultimate parent namespace |
| User/Member | `is_billable` | [`legacy.gitlab_dotcom_memberships`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships) | The `is_billable` flag denotes whether the user would count against a subscription seat count _if it was a paid namespace_. This field does _not_ mean that it is a paid namespace | Analysis frequently limits to memberships where `is_billable = TRUE` |

_*Note: These `legacy` models will be deprecated in the future in favor of models built in the 
`common` schema. Existing queries, snippets, and dashboards using them can be trusted but any 
net-new code should use common models, when possible._
<br><br>
Models in the `common` schema are built to the Data program's [EDM Standards](/handbook/business-technology/data-team/platform/edw/#enterprise-dimensional-model-governance) 
and are subject to a greater level of validation than the legacy models. Only models in the 
`common*` schemas can meet [Trusted Data Standards](https://about.gitlab.com/handbook/business-technology/data-team/data-development/#trusted-data-development), 
and any reference to a legacy a model's lineage makes it ineligible to meet the TD requirements.
{: .alert .alert-info}

**Additional notes**

* Blocked users are filtered out of several legacy models:
  * [`legacy.gitlab_dotcom_users_xf`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_users_xf)
  * [`legacy.gitlab_dotcom_usage_data_events`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_usage_data_events) 
  and downstream models (ex: [`legacy.gitlab_dotcom_daily_usage_data_events`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_daily_usage_data_events))
  * [`legacy.gitlab_dotcom_memberships`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships)
* [`legacy.gitlab_dotcom_memberships`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships) 
and [`legacy.gitlab_dotcom_members`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_members) 
are particularly confusing data sets. Use with caution, always ask for a code review, and do not 
hesitate to reach out to other analysts for help.

**Other resources**

* [gitlab.com database table information](https://gitlab.com/gitlab-org/gitlab/-/tree/master/db/docs)
  * Soon to be added to the metrics dictionary (Epic [here](https://gitlab.com/groups/gitlab-org/-/epics/7919))
* [Epic related to setup_for_company data](https://gitlab.com/groups/gitlab-org/-/epics/6487)
* [Explanation of namespace hierarchy](https://gitlab.com/gitlab-data/analytics/-/issues/11921#note_901793813)

**Feedback**

Please add any feedback on the gitlab.com content (including requests for additional fields) to 
[this issue](https://gitlab.com/gitlab-data/product-analytics/-/issues/423).

### Customers DB

| Object        | Field   | SoT Field API Name   | Table | Description | Responsible Team | 
|---------------|---------|---------------------------|-----------|----------|----------|
| Customer          | Customer ID | CUSTOMER_ID        | [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers)          |          ||
| Customer          | Customer Portal User Created Date (not Namespace creation date/subscription date) | CUSTOMER_CREATED_AT        | [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers)          |          ||
| Customer          | Is this a paid or formerly paid customer? | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID, if CURRENT_CUSTOMER_ID is not null then is paid customer        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)          |          ||
| Customer          | Is this a current paid customer? | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID, if CURRENT_CUSTOMER_ID is not null and SUBSCRIPTION_STATUS = 'Active' and EFFECTIVE_END_DATE is in the future then is current paid customer        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)          |          ||
| Customer          | First trial start date | Join on CUSTOMER_ID = CUSTOMER_ID to get MIN(TRIAL_START_DATE)        | [prod.legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials)          |          ||
| Customer          | First paid subscription date | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get MIN(SUBSCRIPTION_START_DATE)        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)           |          ||
| Customer          | Subscriptions associated with Customer | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get SUBSCRIPTION_NAME_SLUGIFY        | [prod.legacy.customers_db_orders](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_orders)          |          ||
| Customer          | Rate Plan/Product Type associated with Customer | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get PRODUCT_CATEGORY or RATE_PLAN_ID        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)          |          ||
| Trials | Trial start date | TRIAL_START_DATE | [prod.legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials) | ||
| Trials | Email associated with trial user | Join on CUSTOMER_ID = CUSTOMER_ID to get CUSTOMER_EMAIL_HASH | [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers) | ||
| Trials | Did trial convert to paid? | IS_CONVERTED | [prod.legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials) | ||
| Leads | Lead type - Trial or PQL | PRODUCT_INTERACTION | [prod.restricted_safe_legacy.customers_db_leads](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_leads) | ||
| Leads | Customer comments on hand raise | COMMENT_CAPTURE | [prod.restricted_safe_legacy.customers_db_leads](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_leads) | ||

### Zuora [WIP]

|Object                |Field                                        |Table                                                                                                                                                                                                                         |Description                                                                                                                                                                                                                             |Responsible Team|
|----------------------|---------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------|
|Subscription          |`SUBSCRIPTION_NAME`                          |[`common.dim_subscription`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_subscription)                                                                                                         |Formatted as "A-S######". Must be combined with `SUBSCRIPTION_VERSION` to get the unique Subscription ID. `DIM_SUBSCRIPTION_ID` can be used as a key to join to other DIM tables including Amendments, Charges, and Billing Accounts.   |                |
|Subscription          |`SUBSCRIPTION_VERSION`                       |[`common.dim_subscription`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_subscription)                                                                                                         |Increments every time a Subscription is amended. For point-in-time analysis, query the Subscription Version Effective Date as of the target date range. For current state analysis, query the highest Subscription Version.             |                |
|Subscription Amendment|`CHARGE_AMENDMENT_TYPE` or `AMENDMENT_TYPE`  |[`common.mart_charge`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_charge) or [`common.dim_amendment`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_amendment)|Amendments can include product changes, quantity changes, renewals, contractions, and other Subscription changes. Each Subscription change generates an Amendment, and also increments the Subscription Version.                        |                |
|Subscription          |`DIM_BILLING_ACCOUNT` / `DIM_CRM_ACCOUNT`    |[`common.dim_subscription`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_subscription)                                                                                                         |Zuora Billing Account is the entity that is charged for the subscription. Billing Accounts should be 1:1 with SFDC Accounts. If the Billing Account changes (e.g. corporate merger), a new Subscription/Billing Account will be created.|                |
|Subscription          |`PRODUCT_TIER_NAME` / `PRODUCT_DELIVERY_TYPE`|[`common.mart_charge`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_charge)                                                                                                                   |As products on a Subscription can change over time, use `MART_CHARGE` to identify the `QUANTITY` of each `PRODUCT_TIER_NAME` for the target TERM dates.                                                                                 |                |
|Subscription          |`ARR`                                        |[`common.mart_arr`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_arr)                                                                                                                         |ARR data at a monthly grain. Join to Subscription for a specific month to get the ARR on that Subscription at that point in time.                                                                                                       |                |
|Subscription          |`DELTA_ARR`                                  |[`common.mart_charge`](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_charge)                                                                                                                   |`MART_CHARGE` has the `DELTA_ARR` resulting from specific Subscription Amendments/Charges including Rate Plan changes. `MART_DELTA_ARR_SUBSCRIPTION_MONTH` and related tables have monthly grain `DELTA_ARR` at the Subscription level. |                |

**Additional notes and resources**

* [Zuora Subscription ERD](https://gitlab.com/gitlab-data/analytics/-/issues/8270)
* [Zuora data model memo](https://docs.google.com/document/d/1TFHInlFG2-oOSfNOyl2ktjAfHCi3qnmNVct0yO-ffgI/edit)
* [Zuora amendment tutorial](https://knowledgecenter.zuora.com/BB_Introducing_Z_Business/B_Getting_Started_Tutorial/B_Billing/E_Amendments)

**Feedback and Questions**

* Direct data model questions to @statimatla or @iweeks
* Add any feedback or questions to [this issue](https://gitlab.com/gitlab-com/sales-team/self-service/-/issues/72)


### Person [WIP]

| Object        | Field   | SoT Field API Name   | Table | Description | Responsible Team |
|---------------|---------|---------------------------|-----------|----------|----------|
| Person          | Segment | ACCOUNT_DEMOGRAPHIC_SALES_SEGMENT        |   [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)        |          ||
| Person          | Geo     | ACCOUNT_DEMOGRAPHICS_GEO           |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          ||
| Person          | Region  | ACCOUNT_DEMOGRAPHICS_REGION         |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          ||
| Person          | Country (as entered) | COUNTRY            |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          ||
| Person          | State (as entered)   | STATE             |   [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |         ||
| Person          | Lead Owner   | DIM_CRM_USER_ID                 |          [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |||
| Person          | Person ID   | DIM_CRM_PERSON_ID                | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          ||
| Person          | SFDC Record ID (lead or contact)   | SFDC_RECORD_ID                | [common.dim_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_person)          |          ||
| Person          | SFDC Record Type (lead or contact)  |  SFDC_RECORD_TYPE               |  [common.dim_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_person)         |          ||
| Person          | SFDC Account ID   |  DIM_CRM_ACCOUNT_ID              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          ||
| Person          | Lead Creation Date   |  LEAD_CREATED_DATE              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          ||
| Person          | Inquiry Date   |  TRUE_INQUIRY_DATE              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          ||
| Person          | MQL Date   |   MQL_DATE_FIRST             |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          ||
| Person          | Is MQL   |    IS_MQL            |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          ||
| Person          | Is Inquiry   |  IS_INQUIRY              |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          ||
| Person          | Converted to Contact?   |  See SFDC Record Type              |           |          ||
| Person          | Email   |  EMAIL_HASH              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          ||
| Person | Lead Status | STATUS | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person) | ||
| Person          | Business or personal email domain | EMAIl_DOMAIN_TYPE   |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)              |           |  |        
| Person          | Original Lead Source (first lead by email) | LEAD_SOURCE  | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)               |           |  |        
| Person          | Company size (as entered)   | ACCOUNT_DEMOGRAPHICS_EMPLOYEE_COUNT               | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          ||
| Person          | Zoominfo Company ID   |  ZOOMINFO_COMPANY_ID              | Join to [WORKSPACE_MARKETING.GITLAB_CONTACT_ENHANCE](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_contact_enhance) on EMAIL_HASH = EMAIL_ID_HASH         |          ||
| Person          | Zoominfo Segment   |  ZOOMINFO_COMPANY_SEGMENT              | Join to [WORKSPACE_MARKETING.GITLAB_CONTACT_ENHANCE](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_contact_enhance) on EMAIL_HASH = EMAIL_ID_HASH          |          ||
| Person          | Associated with Trial   |  If not null then this person started a trial              |  Join [legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials) to [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers) on CUSTOMER_ID to get CUSTOMER_EMAIL_HASH and MIN(TRIAL_START_DATE)         |          ||
| Person          | Lead Person Score   |  PERSON_SCORE              | [common.dim_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_person)          |          ||
| Person          | Bizible ID   |  BIZIBLE_PERSON_ID              | [common.fct_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.fct_crm_person)          |          ||


### Bizible [PLACEHOLDER]

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Lead          | Segment | Owner/User Segment        |           |          |
| Lead          | Geo     | Owner/User Geo            |           |          |
| Lead          | Region  | Owner/User Region         |           |          |
| Lead          | Country | Person Country            |           |          |
| Lead          | State   | Person State              |           |          |
| Lead          | Owner   | Lead Owner                |           |          |

### Google Analytics [PLACEHOLDER]

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Lead          | Segment | Owner/User Segment        |           |          |
| Lead          | Geo     | Owner/User Geo            |           |          |
| Lead          | Region  | Owner/User Region         |           |          |
| Lead          | Country | Person Country            |           |          |
| Lead          | State   | Person State              |           |          |
| Lead          | Owner   | Lead Owner                |           |          |

### Coming in V2: Marketo, Snowplow
