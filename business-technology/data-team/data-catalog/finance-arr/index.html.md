---
layout: handbook-page-toc
title: "Finance ARR"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Purpose

`This page contains forward-looking content and may not accurately reflect current-state or planned feature sets or capabilities.`


## Solution Overview - Finance ARR

`Coming Soon`

### Knowledge Assessment & Certification

`Coming Soon`

### Data Classification

`Coming Soon`

### Solution Ownership

- Source System Owner: `@rparker2`
- Source System Subject Matter Expert: `@jeromezng`
- Data Team Subject Matter Expert: `@rparker2`, `@iweeks`, `@msendal`

### Key Terms

`Coming Soon`

### Key Metrics, KPIs, and PIs

`Coming Soon`

## Self-Service Data Solution

### Self-Service Dashboard Viewer

| Dashboard | Purpose |
| ----- | ----- |

### Self-Service Dashboard Developer

| Data Space | Description |
| ----- | ----- |


### Self-Service SQL Analysis

#### Key Fields and Business Logic

`Coming Soon`

#### Entity Relationship Diagrams

| Diagram/Entity | Grain | Purpose | Keywords |
| ----- | ----- | ----- |  ----- |
| [Finance ARR Analysis](https://app.lucidchart.com/documents/view/998dbbae-f04e-4310-9d85-0c360a40a018) | MRR by month / customer / subscription / product | Dimensions and Facts that can be used to analyze MRR and Customer Counts | dim_dates, dim_customers, dim_product_details, dim_subscription, fct_mrr |
| dim_date | Day | Central dimension for all dates. | |

#### Reference SQL
All production SQL in Sisense or dbt must adhere to our [SQL Style Guide](/handbook/business-technology/data-team/platform/sql-style-guide/) for legibility and maintainability.

##### Total ARR month by month
```sql
SELECT
  date_actual AS arr_month,
  SUM(arr)    AS arr
FROM analytics.analytics_staging.fct_mrr
INNER JOIN Analytics_staging.dim_dates
  ON dim_dates.date_id = fct_mrr.date_id
GROUP BY 1
ORDER BY 1;
```

##### ARR by product_category in Jul 2020
```sql
SELECT
  date_id,
  product_category,
  SUM(arr) AS arr
FROM analytics.analytics_staging.fct_mrr
INNER JOIN analytics.analytics_staging.dim_product_details
 ON dim_product_details.product_details_id = fct_mrr.product_details_id
WHERE date_id = 20200701
GROUP BY 1, 2;
```

##### ARR by delivery for Jul 2020
```sql
SELECT
  date_id,
  delivery,
  SUM(arr) AS arr
FROM analytics.analytics_staging.fct_mrr
INNER JOIN analytics.analytics_staging.dim_product_details
 ON dim_product_details.product_details_id = fct_mrr.product_details_id
WHERE date_id = 20200701
GROUP BY 1, 2;
```

##### Customer count and parent account count month by month
```sql
SELECT
  date_actual,
  COUNT(DISTINCT ultimate_parent_account_id),
  COUNT(DISTINCT dim_crm_accounts.crm_account_id)
FROM analytics.analytics_staging.fct_mrr
INNER JOIN analytics.analytics_staging.dim_crm_accounts
 ON dim_crm_accounts.crm_account_id = fct_mrr.crm_account_id
INNER JOIN analytics.analytics_staging.dim_dates
  ON dim_dates.date_id = fct_mrr.date_id
GROUP BY 1
ORDER BY 1;
```

## Data Platform Solution

The overall solution adheres to our [Enterprise Dimensional Model](/handbook/business-technology/data-team/platform/edw/) guidelines.

### Data Lineage

`Coming Soon`

### DBT Solution

`Coming Soon`

## Trusted Data Solution

### Enterprise Dimensional Model Validations

| Validation | Expected Result |
| ------ | ------ |
| 1 |  |
| 2 |   |
| 3 |  |

### Source Data Pipeline validations

| Validation | Expected Result |
| ------ | ------ |
| 1 |  |
| 2 |  |
| 3 |  |

