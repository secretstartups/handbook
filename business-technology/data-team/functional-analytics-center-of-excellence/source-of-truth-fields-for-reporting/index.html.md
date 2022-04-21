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

### Gitlab dot com [PLACEHOLDER]

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Lead          | Segment | Owner/User Segment        |           |          |
| Lead          | Geo     | Owner/User Geo            |           |          |
| Lead          | Region  | Owner/User Region         |           |          |
| Lead          | Country | Person Country            |           |          |
| Lead          | State   | Person State              |           |          |
| Lead          | Owner   | Lead Owner                |           |          |

### Customers DB

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Customer          | Customer ID | CUSTOMER_ID        | [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers)          |          |
| Customer          | Customer Portal User Created Date (not Namespace creation date/subscription date) | CUSTOMER_CREATED_AT        | [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers)          |          |
| Customer          | Is this a paid or formerly paid customer? | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID, if CURRENT_CUSTOMER_ID is not null then is paid customer        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)          |          |
| Customer          | Is this a current paid customer? | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID, if CURRENT_CUSTOMER_ID is not null and SUBSCRIPTION_STATUS = 'Active' and EFFECTIVE_END_DATE is in the future then is current paid customer        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)          |          |
| Customer          | First trial start date | Join on CUSTOMER_ID = CUSTOMER_ID to get MIN(TRIAL_START_DATE)        | [prod.legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials)          |          |
| Customer          | First paid subscription date | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get MIN(SUBSCRIPTION_START_DATE)        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)           |          |
| Customer          | Subscriptions associated with Customer | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get SUBSCRIPTION_NAME_SLUGIFY        | [prod.legacy.customers_db_orders](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_orders)          |          |
| Customer          | Rate Plan/Product Type associated with Customer | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get PRODUCT_CATEGORY or RATE_PLAN_ID        | [prod.restricted_safe_legacy.customers_db_charges_xf](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_charges_xf)          |          |
| Trials | Trial start date | TRIAL_START_DATE | [prod.legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials) | |
| Trials | Email associated with trial user | Join on CUSTOMER_ID = CUSTOMER_ID to get CUSTOMER_EMAIL_HASH | [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers) | |
| Trials | Did trial convert to paid? | IS_CONVERTED | [prod.legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials) | |
| Leads | Lead type - Trial or PQL | PRODUCT_INTERACTION | [prod.restricted_safe_legacy.customers_db_leads](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_leads) | |
| Leads | Customer comments on hand raise | COMMENT_CAPTURE | [prod.restricted_safe_legacy.customers_db_leads](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_leads) | |

### Zuora [PLACEHOLDER]

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Lead          | Segment | Owner/User Segment        |           |          |
| Lead          | Geo     | Owner/User Geo            |           |          |
| Lead          | Region  | Owner/User Region         |           |          |
| Lead          | Country | Person Country            |           |          |
| Lead          | State   | Person State              |           |          |
| Lead          | Owner   | Lead Owner                |           |          |

### Person [WIP]

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Person          | Segment | ACCOUNT_DEMOGRAPHIC_SALES_SEGMENT        |   [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)        |          |
| Person          | Geo     | ACCOUNT_DEMOGRAPHICS_GEO           |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          |
| Person          | Region  | ACCOUNT_DEMOGRAPHICS_REGION         |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          |
| Person          | Country (as entered) | COUNTRY            |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          |
| Person          | State (as entered)   | STATE             |   [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |         |
| Person          | Lead Owner   | DIM_CRM_USER_ID                 |          [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         ||
| Person          | Person ID   | DIM_CRM_PERSON_ID                | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          |
| Person          | SFDC Record ID (lead or contact)   | SFDC_RECORD_ID                | [common.dim_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_person)          |          |
| Person          | SFDC Record Type (lead or contact)  |  SFDC_RECORD_TYPE               |  [common.dim_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_person)         |          |
| Person          | SFDC Account ID   |  DIM_CRM_ACCOUNT_ID              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          |
| Person          | Lead Creation Date   |  LEAD_CREATED_DATE              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          |
| Person          | Inquiry Date   |  TRUE_INQUIRY_DATE              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          |
| Person          | MQL Date   |   MQL_DATE_FIRST             |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          |
| Person          | Is MQL   |    IS_MQL            |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          |
| Person          | Is Inquiry   |  IS_INQUIRY              |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)         |          |
| Person          | Converted to Contact?   |  See SFDC Record Type              |           |          |
| Person          | Email   |  EMAIL_HASH              | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          |
| Person | Lead Status | STATUS | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person) | |
| Person          | Business or personal email domain | EMAIl_DOMAIN_TYPE   |  [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)              |           |          
| Person          | Original Lead Source (first lead by email) | LEAD_SOURCE  | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)               |           |          
| Person          | Company size (as entered)   | ACCOUNT_DEMOGRAPHICS_EMPLOYEE_COUNT               | [common_mart_marketing.mart_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.mart_crm_person)          |          |
| Person          | Zoominfo Company ID   |  ZOOMINFO_COMPANY_ID              | Join to [WORKSPACE_MARKETING.GITLAB_CONTACT_ENHANCE](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_contact_enhance) on EMAIL_HASH = EMAIL_ID_HASH         |          |
| Person          | Zoominfo Segment   |  ZOOMINFO_COMPANY_SEGMENT              | Join to [WORKSPACE_MARKETING.GITLAB_CONTACT_ENHANCE](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_contact_enhance) on EMAIL_HASH = EMAIL_ID_HASH          |          |
| Person          | Associated with Trial   |  If not null then this person started a trial              |  Join [legacy.customers_db_trials](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_trials) to [legacy.customers_db_customers](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.customers_db_customers) on CUSTOMER_ID to get CUSTOMER_EMAIL_HASH and MIN(TRIAL_START_DATE)         |          |
| Person          | Lead Person Score   |  PERSON_SCORE              | [common.dim_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.dim_crm_person)          |          |
| Person          | Bizible ID   |  BIZIBLE_PERSON_ID              | [common.fct_crm_person](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.fct_crm_person)          |          |


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
