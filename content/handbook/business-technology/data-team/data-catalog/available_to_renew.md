---

title: "TD: Available to Renew (ATR)"
---







---

The goal of this page:

- Help you understand the Available to Renew definitions.
- Help you understand the data models used to create the ATR snapshot models.
- And overall help everyone contribute!

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Available to Renew: High-Level Concept </h1>
In a subscription business, it is crucial to understand what and how much of our subscription revenue is available to renew at a given time. This is important to understand cash flow and predict future earnings.

<br>To calculate the amount of revenue available to renew at a given time, you must first filter your transactions to only recurring charges (i.e. subscriptions, not one-time deals). You must then determine when this subscription is set to renew based on its effective date. From these details you can get a broad view of how much revenue is available to renew at any given time.

Additionally, to get the full picture of what is available to renew you must also determine if a subscription is a multi-year deal. If it is a multi-year deal, the subscription will be available to renew at the end of the multi-year term.

The models mentioned below have been designed to do this, pulling together the universe of potential renewal subscriptions at a point in time. The snapshotting models go further to lock in this data on a given date so we can review how the subscriptions available to renew shift over time compared to the live model.

By using historical data, you can then put weights on the amount of money available to renew to do forecasting for future billings or bookings. This model does not fall under the purview of the Data Team, but is an interesting use case for this particular model.


<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Getting Started with the Data</h1>

To get started we want to make sure you understand:

- What KPIs/PIs are supported using this data model
- Key terms that will explain how we account for the metrics
- The data source behind the dashboard
- To explore further, you can create visual and analysis yourself in Sisense. A great way to start is using the Sisense Discovery tool.
- To go even deeper, you can explore data in snowflake. The benefit of exploring in Snowflake is you can join to additional information (i.e. other data sources).

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Key Terms, Metrics, KPIs/PIs, and Key Field and Business Logic </h1>

<details>
<summary markdown='span'>
  Key Terms
</summary>
Dimensions:

- N/A

</details>

<details>
<summary markdown='span'>
  Key Metrics, KPIs, and PIs
</summary>
Facts:

- N/A

Marts:
- `mart_available_to_renew`
- `mart_available_to_renew_snapshot_model`

Reports:
- `rpt_available_to_renew_8th_calendar_day`
- `rpt_available_to_renew_45th_calendar_day`

Metrics:
- ATR ARR: ARR which is available to renew
- MYB ARR: ARR which is a part of multi-year booking
</details>

<details>
<summary markdown='span'>
  Key Fields and Business Logic
</summary>
* is_available_to_renew: Indicates if ARR is available to renew in the selected time period
* is_multi_year_booking: Indicates if ARR is part of a multi-year deal
</details>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Understanding the Data Sources and Data Models</h1>

We want to make sure you understand:

- What models are available to use to analyze ATR
- The method for snapshotting ATR
- What these data models derive from (lineage)
- Example queries to get you started exploring the data

## Available to Renew

The base for all ATR reporting based on the live data in Zuora and Salesforce. You are able to slice the revenue available to renew by date dimensions, characteristics of a subscription (type, product, etc.), user attributes (geo, region, etc.), or account dimensions which will all reflect the current state of the corresponding objects in the source UI.

This model should be used to analyze what is available to renew right now for upcoming renewal months and to understand what is left on the table from previous renewal months that did not renew or did not have a linked renewal subscription.

#### Live Models
- `mart_available_to_renew`: Model showing subscriptions available to renew based on current data pulled from Zuora and Salesforce. This is live data and will update when changes are made in the source systems.

## Snapshot Available to Renew

ATR in the Zuora and Salesforce data changes on a daily basis as subscriptions are renewed and amended and opportunities are updated. Due to this fluctuation, it is necessary to create a snapshot of the data each day so we can have a historical record of ATR in the data warehouse to use for reporting and analysis. For ATR, we chose to use the simplest snapshotting method we have in our toolbox, explained below. Future iterations may include creating a "bottoms up" method involving snapshotted versions of all the base facts and dimensions involved in the ATR calculation, but this will be left for a future date as the business need arises.

#### Snapshot Method:

We use [dbt snapshots](https://docs.getdbt.com/docs/building-a-dbt-project/snapshots) which implement type-2 Slowly Changing Dimensions over mutable source tables. These Slowly Changing Dimensions (or SCDs) identify how a row in a table changes over time. In this method, called "Method One" by the Data Team, we snapshot the [`mart_available_to_renew`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_available_to_renew) table which is the mart used to generate our live ATR metrics. This method produces an exact replica of `mart_available_to_renew` each day which is then modeled using [date spine techniques](https://discourse.getdbt.com/t/building-models-on-top-of-snapshots/517). In this method, we do not use the snapshotted raw data and instead snapshot the mart table. We found this has benefits of producing a simple model of the snapshotted live ATR table that always stays up to date with the columns in the `mart_available_to_renew` without having to do full refreshes. This is a great fit for the use case of needing an exact `three ring binder` copy of `mart_available_to_renew` that keeps up with the columns and does not need to be fully refreshed. Even if the model is fully refreshed, it would still return the same results all of the time, ensuring long-term data integrity for financial reporting.

#### Snapshot Models
- `mart_available_to_renew_snapshot_model`: Using Method One described above, this is a daily snapshot of `mart_available_to_renew`, expanded using a date spine from the slowly changing dimension created by dbt. Use this model to see how ATR changes on a daily basis.
- `rpt_available_to_renew_snapshot_8th_calendar_day`: This model filters `mart_available_to_renew_snapshot_model` to the 8th calendar day of a snapshot month. This is used in financial reporting to represent what the state of ATR was after month-end-close.
- `rpt_available_to_renew_snapshot_45th_calendar_day`: This model filters `mart_available_to_renew_snapshot_model` to the 45th calendar day of a snapshot month. This model is an experiment to see how ATR continues to shift in the 45 days after month-end-close.
- `rpt_available_to_renew_top_monthly_changes`: Model showing the top changes by month by ARR. This shows subscriptions which became available to renew or were dropped as available to renew in each month. The report also shows new subscriptions and subscriptions which are ending this month. This model was created to help identify changes to accounts which may need further investigation.

<details>
<summary markdown='span'>
  Data Lineage
</summary>
* Data is sourced from Salesforce.com and Zuora
* The dbt solution generates a dimensional model from Mart Snapshot source data. The documentation and SQL for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_available_to_renew_snapshot_model"> mart_available_to_renew_snapshot_model </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_available_to_renew_snapshot_model?g_v=1&g_i=%2Bmart_available_to_renew_snapshot_model%2B"> dbt mart_arr_snapshot_model lineage chart </a>
</details>

<details>
<summary markdown='span'>
  Example Queries
</summary>

ATR and MYB ARR by fiscal year:

```
SELECT
  fiscal_year,
  SUM(arr)                                                  AS arr_base,
  SUM(CASE WHEN is_available_to_renew = TRUE THEN arr END)  AS available_to_renew_arr,
  SUM(CASE WHEN is_available_to_renew = FALSE THEN arr END) AS multi_year_booking_arr
FROM prod.restricted_safe_common_mart_finance.mart_available_to_renew
GROUP BY 1
ORDER BY 1;
```

FY22 ATR and MYB ARR

```
SELECT
  SUM(CASE WHEN is_available_to_renew = TRUE THEN arr END)  AS available_to_renew_arr,
  SUM(CASE WHEN is_available_to_renew = FALSE THEN arr END) AS multi_year_booking_arr
FROM prod.restricted_safe_common_mart_finance.mart_available_to_renew
WHERE fiscal_year = 2022
ORDER BY 1;
```

FY23 ATR ARR by Product Category

```
SELECT
  renewal_month,
  fiscal_quarter_name_fy,
  product_tier_name,
  product_delivery_type,
  SUM(arr) AS arr
FROM prod.restricted_safe_common_mart_finance.mart_available_to_renew
WHERE is_available_to_renew = TRUE
  AND fiscal_year = 2023
GROUP BY 1,2,3,4;
```

ATR ARR on 2021-12-08

```
SELECT
  SUM(arr)                                                  AS arr_base,
  SUM(CASE WHEN is_available_to_renew = TRUE THEN arr END)  AS available_to_renew_arr,
  SUM(CASE WHEN is_available_to_renew = FALSE THEN arr END) AS multi_year_booking_arr
FROM prod.restricted_safe_common_mart_finance.mart_available_to_renew_snapshot_model
WHERE is_available_to_renew = TRUE
  AND fiscal_year = 2023
  AND snapshot_date = '2021-12-08';
```

<br>

</details>
<br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Maintenance Schedule </h1>

As needed, Scheduled Maintenance will be performed every two weeks on Friday, from 9am to 11am EST.

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Additional Resources </h1>

<details>
<summary markdown='span'>
  Trusted Data Solution
</summary>

ARR models use the `atr`, `atr_snapshots`, and `zuora` tags for Trusted Data tests and their results. This can be seen most easily using the [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

See overview at [Trusted Data Framework](/handbook/business-technology/data-team/platform/#tdf)

[dbt guide examples](/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) for
details and examples on implementing further tests
</details>

<details>
<summary markdown='span'>
  EDM Enterprise Dimensional Model Validations
</summary>
The [(WIP) Enterprise Dimensional Model Validation Dashboard](https://app.periscopedata.com/app/gitlab/760445/WIP:-Enterprise-Dimensional-Model-Validation-Dashboard) reports on latest Enterprise Dimensional model test and runs.
</details>

<details>
<summary markdown='span'>
  RAW Source Data Pipeline validations
</summary>
[Data Pipeline Health Validations](https://app.periscopedata.com/app/gitlab/715938/Data-Pipeline-Health-Dashboard)
</details>

<details>
<summary markdown='span'>
  Data Security Classification
</summary>

Coming Soon

**ORANGE**

- Description: Customer and Personal data at the row or record level.

- Objects:
  -

  -

**YELLOW**

- Description: GitLab Financial data, which includes aggregations or totals.

- Objects:
  -

  -
</details>

<details>
<summary markdown='span'>
  Solution Ownership
</summary>
* Source System Owner:
  * Salesforce: `@jbrennan1`
  * Zuora: `@andrew_murray`
* Source System Subject Matter Expert:
  * Salesforce: `@jbrennan1`
  * Zuora: `@andrew_murray`
* Data Team Subject Matter Expert: `@paul_armstrong` `@jeanpeguero` `@jjstark` `@iweeks` `@michellecooper`
</details>

