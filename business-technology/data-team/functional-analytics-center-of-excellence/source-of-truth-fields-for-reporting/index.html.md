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
| Customer          | Customer ID | CUSTOMER_ID        | prod.legacy.customers_db_customers          |          |
| Customer          | Customer Portal User Created Date (not Namespace creation date/subscription date) | CUSTOMER_CREATED_AT        | prod.legacy.customers_db_customers          |          |
| Customer          | Is this a paid or formerly paid customer? | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID, if CURRENT_CUSTOMER_ID is not null then is paid customer        | prod.restricted_safe_legacy.customers_db_charges_xf          |          |
| Customer          | Is this a current paid customer? | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID, if CURRENT_CUSTOMER_ID is not null and SUBSCRIPTION_STATUS = 'Active' and EFFECTIVE_END_DATE is in the future then is current paid customer        | prod.restricted_safe_legacy.customers_db_charges_xf          |          |
| Customer          | First trial start date | Join on CUSTOMER_ID = CUSTOMER_ID to get MIN(TRIAL_START_DATE)        | prod.legacy.customers_db_trials          |          |
| Customer          | First paid subscription date | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get MIN(SUBSCRIPTION_START_DATE)        | prod.restricted_safe_legacy.customers_db_charges_xf           |          |
| Customer          | Subscriptions associated with Customer | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get SUBSCRIPTION_NAME_SLUGIFY        | prod.legacy.customers_db_orders          |          |
| Customer          | Rate Plan/Product Type associated with Customer | Join on CUSTOMER_ID = CURRENT_CUSTOMER_ID to get PRODUCT_CATEGORY or RATE_PLAN_ID        | prod.restricted_safe_legacy.customers_db_charges_xf          |          |
| Trials | Trial start date | TRIAL_START_DATE | prod.legacy.customers_db_trials | |
| Trials | Email associated with trial user | Join on CUSTOMER_ID = CUSTOMER_ID to get CUSTOMER_EMAIL_HASH | prod.legacy.customers_db_customers | |
| Trials | Did trial convert to paid? | IS_CONVERTED | prod.legacy.customers_db_trials | |
| Leads | Lead type - Trial or PQL | PRODUCT_INTERACTION | prod.restricted_safe_legacy.customers_db_leads | |
| Leads | Customer comments on hand raise | COMMENT_CAPTURE | prod.restricted_safe_legacy.customers_db_leads | |

### Zuora [PLACEHOLDER]

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Lead          | Segment | Owner/User Segment        |           |          |
| Lead          | Geo     | Owner/User Geo            |           |          |
| Lead          | Region  | Owner/User Region         |           |          |
| Lead          | Country | Person Country            |           |          |
| Lead          | State   | Person State              |           |          |
| Lead          | Owner   | Lead Owner                |           |          |

### Person [PLACEHOLDER]

| Object        | Field   | SoT Field API Name   | Table | Approver/Owner |
|---------------|---------|---------------------------|-----------|----------|
| Lead          | Segment | Owner/User Segment        |           |          |
| Lead          | Geo     | Owner/User Geo            |           |          |
| Lead          | Region  | Owner/User Region         |           |          |
| Lead          | Country | Person Country            |           |          |
| Lead          | State   | Person State              |           |          |
| Lead          | Owner   | Lead Owner                |           |          |

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
