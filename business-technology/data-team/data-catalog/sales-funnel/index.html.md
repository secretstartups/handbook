---
layout: handbook-page-toc
title: "Sales Funnel"
---
## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Sales Funnel

The Sales Funnel is a core component of GitLab's Lead to Cash process and it tracks an inquiry from a potential customer all the way to a closed won opportunity. Along the way, a customer passes from a lead, to a marketing qualified lead, to a sales accepted opportunity, and finally to a closed won or lost opportunity. This handbook page provides analytical tools and resources to help GitLab team members analyze the entire sales funnel and generate insights. 

The goal of this page:

* Help you understand how to navigate through the [TD: Sales Funnel - Target vs. Actual Dashboard](https://app.periscopedata.com/app/gitlab/761665/TD:-Sales-Funnel---Target-vs.-Actual) and its derived dashboards.
* Help you understand the data models used to create the TD: Sales Funnel - Targets vs. Actuals Dashboard.
* Have you assess your understanding by taking a certification most applicable to your role at GitLab.
    * To learn more about how to use the dashboard, take the [Dashboard user certification](https://docs.google.com/forms/d/e/1FAIpQLScTU4iVXI0yw0QSDjZbznbIMmhZSs1GxCoTsVOlg1lQdgUSGg/viewform).
    * To learn more about developing Sisense dashboards, take the [Dashboard Developer certification](https://docs.google.com/forms/d/e/1FAIpQLSdWz4VNYM5ItjzmgeU6H3hafY_zycd2NkAlAM4sPXJCqrtoUw/viewform).
* And overall help everyone contribute!

### Release Train Cadence:

1. Requirements gathering due date: 1 week after the Sales Key Meeting.
1. Release shipped for UAT: 1 week before Sales Key Meeting.

### Maintenance Schedule:

1. As needed, Scheduled Maintenance will be performed every two weeks on Friday, from 9am to 11am EST.

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/761665/TD:-Sales-Funnel---Targets-vs.-Actuals" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">TD: Sales Funnel - Targets vs. Actuals Dashboard</a>
  <a href="https://www.youtube.com/watch?v=AuMV-cq04cs&feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Sales Funnel Dimensional Model and Dashboard Training</a>
  <a href="https://app.periscopedata.com/app/gitlab/828239/TD:-Sales-Funnel-Management-View---Preloaded-Cuts" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">TD: Sales Funnel Management View - Preloaded Cuts</a>
  <a href="https://app.periscopedata.com/app/gitlab/831911/TD:-Standard-Bookings-Cuts" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">TD: Standard Bookings Cuts</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started using Sisense Discovery</a>
</div>
<br><br><br><br><br><br><br><br><br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Getting Started </h1>

To get started we want to make sure you understand:

* What KPIs/PIs are supported using this dashboard
* Key terms that will explain how we account for the metrics
* The data source behind the dashboard
* To explore further, you can create visual and analysis yourself in Sisense. A great way to start is using the Sisense Discovery tool. Want to get started in Sisense head here.
* To go even deeper, you can explore data in snowflake. The benefit of exploring in Snowflake is you can join to additional information (i.e. other data sources). Additional information on exploring in Snowflake can be found here.


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

* [Order Type](https://about.gitlab.com/handbook/sales/sales-term-glossary/#order-type-20-field-values)
* **Sales Qualified Source:** How the opportunity was created.
* **Purchase Channel:** The method in which the account purchased.
* **Focus Account:** These represent the accounts where our Account Based Marketing team is working closely with Sales and Field Marketing to specifically target. GTM Strategy values of Account Centric, Account Based - Net New, and Account Based - Expand GTM Strategy Accounts represent Focus Accounts.
* [Marketing Channel (Initial Source)](https://about.gitlab.com/handbook/marketing/marketing-operations/#initial-source)
* **Sales Hierarchy Live:** Sales Area > Sales Region > Location Region > Sales Segment
* **Sales Hierarchy Stamped:** Sales Area > Sales Region > Location Region > Sales Segment

</details>

<details>
<summary markdown='span'>
  Key Metrics, KPIs, and PIs
</summary>
Facts:

* **Marketing Qualified Lead (MQL):** Count of qualified leads that could become a sales opportunity. Today a person can MQL once, but in the future, a MQL can qualify multiple times as we nurture contacts. A MQL is a lead that has reached a certain threshold, we have determined to be 100 points accumulated, based on demographic/firmographic and/or behavioral information. The "MQL score" is comprised of various actions and/or profile data that are weighted with positive or negative point values. Every time a Person Score is updated, LeanData will run a check to see if the record needs to be processed through the flow.
* **Sales Accepted Opportunity (SAO):** An Opportunity that has a meeting set with a contact at a prospect who has authority to buy, or an initiative where GitLab can be the solution, or a fit that includes a use case and potential number of seats and a next step in the next 60 days. This opportunity has been validated and accepted by a sales rep that was generated by SDR.
* **SAO/MQL:** Snapshotted conversion rate of all MQLs that convert to SAOs in a month. Divide number of SAOs in a month by the number of MQLs in a month.
* **New Logos:** The number of first order accounts that we acquire.
* **Closed Won IACV (Net_ARR):** Bookings revenue for closed won deals.
* **Closed Won Deals:** The number of opportunities that have converted into revenue.
* **Win Rate:** Of the opportunities that get to resolution, how many do we win in a period.
* **ASP on New First Order Deals:** Average deal size of first order deals.
* **IACV (Net_ARR) Created:** The value of pipeline that was created on each day. Pipeline can change over time. This is the current pipeline based on creation date.
* **Cycle Time, SAO to Closed Won Deal:** Time it takes on average for an opportunity to reach conclusion for Closed Won deals.
* **SAO to Closed Won Conversion Rate:** Conversion rate of SAOs that convert to Closed Won deals on a monthly basis.
* **SAO to Closed Won - Closed Buckets:** Count of SAOs based on time it takes for SAO to reach conclusion for Closed Won deals.
</details>

<details>
<summary markdown='span'>
  Key Fields and Business Logic
</summary>
* There are three critical dates on opportunities to be aware of: created date, accepted date, and closed date. Created date is applicable when calculating the IACV created metrics. Accepted date is applicable when calculating the Sales Accepted Opportunity Metrics (SAOs). Closed date is applicable when calculating the closed won and lost related metrics. 
* GitLab does not have a specific trial tier for the Gold and Ultimate trials; however, it is helpful to think about trials in the context of product tiers when building the Enterprise Dimensional Model (EDM) and producing insights and analytics from the EDM. We use Ultimate - Trial and Gold - Trial values in our Product Tier Dimension to be able to easily report on and analyze trials across the Enterprise.
* Boolean flags are available to use in Sisense. These are helpful when creating charts that require repetitive filters.
1. `is_net_arr_closed_deal` - Calculate metrics such as Net_ARR from Closed Won and Closed Lost-Renewals.
1. `is_new_logo_first_order` - Calculate metrics such as Net_ARR from First Order Accounts that we acquire.
1. `is_net_arr_pipeline_created` - Calculate metrics such as Net_ARR from the pipeline that was created.
1. `is_win_rate_calc` - Fetch opportunities in scope for the win rate calculation.
1. `is_closed_won` -  Calculate metrics such as Net_ARR for Closed Won deals.
</details>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Understanding the Data Sources and Data Models</h1>
<br>
**TD: Sales Funnel - Target vs. Actual Dashboard** is created off report views generated from 3 primary mart views in Sisense, **[mart_crm_opportunity]**, **[mart_crm_person]**, and **[mart_sales_funnel_target]**. Sisense views allow us to reference a simple string of sql in as many charts as we want. This helps to take the guess work out for an end user in understanding logic behind calculations like New Logo Counts, or number of Sales Accepted Opportunity (SAOs) counts, and also takes the guesswork out of understanding which joins are possible.

To create your own dashboards, you can reference the following views available in Sisense:
* **[mart_crm_opportunity]** - mart table that joins the applicable facts and dimensions together to get a view of the opportunity section of the Sales Funnel.
* **[mart_crm_person]** - mart table that joins applicable facts and dimensions together to get a view of the marketing qualified lead section of the Sales Funnel.
* **[mart_sales_funnel_target]** - mart table that joins applicable facts and dimensions together to get a view of the Sales Funnel Targets.
* **[rpt_crm_opportunity_closed_period]** - report that pivots the **[mart_crm_opportunity]** view on the closed period and generaties useful date aggreation fields.
* **[rpt_crm_opportunity_accepted_period]** - report that pivots the **[mart_crm_opportunity]** view on the accepted period and generaties useful date aggreation fields.
* **[rpt_crm_opportunity_created_period]** - report that pivots the **[mart_crm_opportunity]** view on the created period and generaties useful date aggreation fields.
* **[rpt_sales_funnel_target]** - report that pivots the **[mart_sales_funnel_target]** view on the target period and generaties useful date aggreation fields. 
* **[rpt_crm_person_mql]** - report that filters **[mart_crm_person]** WHERE is_mql = 1 that is used to count MQLs.

This views takes into account the data models as seen in the Entity Relationship Diagram (ERD):

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/b09f9e0a-e695-4cba-882d-981a93216293" id="7Da6Neo1dhab"></iframe></div>



<details>
<summary markdown='span'>
  Data Lineage
</summary>
* Data is sourced from Salesforce.com
* The dbt solution generates a dimensional model from RAW source data. The documentation and SQL for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_crm_opportunity">mart_crm_opportunity can be found here </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_crm_opportunity?g_v=1&g_i=%2Bmart_crm_opportunity%2B"> dbt mart_crm_opportunity lineage chart </a>
* The dbt solution generates a dimensional model from RAW source data. The documentation and SQL for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_crm_person">mart_crm_person can be found here </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_crm_person?g_v=1&g_i=%2Bmart_crm_person%2B"> dbt mart_crm_person lineage chart </a>
* The dbt solution generates a dimensional model from RAW source data. The documentation and SQL for <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_sales_funnel_target">mart_sales_funnel_target can be found here </a>, and the complete data lineages can be found at <a href = "https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_sales_funnel_target?g_v=1&g_i=%2Bmart_sales_funnel_target%2B"> dbt mart_sales_funnel_target lineage chart </a>
</details>

<details>
<summary markdown='span'>
  Example Queries
</summary>
Let's calculate SAOs, MQLs, and pull the targets for SAOs using the Marts. You can use these queries in both Snowflkae and Sisense.
<br>
```sql
--select the targets for SAOs
SELECT 
  target_month,
  kpi_name,
  sales_segment_name_live,
  location_region_name_live,
  sales_region_name_live,
  sales_area_name_live,
  order_type_name,
  opportunity_source_name,
  SUM(allocated_target)   AS allocated_target
FROM "PROD"."COMMON_MART_SALES"."MART_SALES_FUNNEL_TARGET"
WHERE kpi_name = 'Stage 1 Opportunities'
GROUP BY 1,2,3,4,5,6,7,8
ORDER BY 1,2,3,4,5,6,7,8

--Count MQLs
SELECT 
  DATE_TRUNC('month',mql_date_first)  AS mql_month,
  COUNT(mql_date_first_id)            AS actual_mqls
FROM "PROD"."COMMON_MART_MARKETING"."MART_CRM_PERSON"
WHERE is_mql = 1
GROUP BY 1
ORDER BY 1 DESC

--Count SAOs
SELECT
  DATE_TRUNC('month',sales_accepted_date) AS sao_month,
  COUNT(*)                                AS actual_saos
FROM "PROD"."COMMON_MART_SALES"."MART_CRM_OPPORTUNITY"
WHERE is_sao = TRUE
GROUP BY 1
ORDER BY 1 DESC

```

</details>
<br>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Sales Funnel Standard Reports</h1>
<br>

<details>
<summary markdown='span'>
  Sales Funnel Management View - Preloaded Cuts
</summary>

The [TD: Sales Funnel Management View - Preloaded Cuts](https://app.periscopedata.com/app/gitlab/828239/TD:-Sales-Funnel-Management-View---Preloaded-Cuts) dashboard tracks the main 9 KPIs from the Sales Funnel:

1. Net ARR
1. New Logos
1. Pipeline Created
1. Sales Accepted Opportunities (SAO)
1. Marketing Qualified Leads (MQLs)
1. Trials
1. Average Sales Price (ASP)
1. MQLs to SAOs
1. Win Rate

The KPIs are compared to their respective targets at a quarter to date (QTD) pacing, slicing them by different dimensions. These cuts allow management to get a quick high level overview on how the business is performing across different dimensions. It answers the question of what areas of the business are on track and which need more attention.

Currently, the sales management cuts are powered by the following snippets (instructions on how to use them are in the description section of the snippet):

1. [main_qtd_view_sales_funnel](https://app.periscopedata.com/app/gitlab/snippet/main_qtd_view_sales_funnel/55d49d17d8cf4cc6bf976c61da2d0017/edit)
1. [ratio_qtd_view_sales_funnel](https://app.periscopedata.com/app/gitlab/snippet/ratio_qtd_view_sales_funnel/55d5211e130f45a29a3a1562307f95d9/edit)

The [sales management python module](https://gitlab.com/gitlab-data/periscope/-/tree/periscope/master/custom_modules/sales_management), along with the snippets, are used to visualize the reports in the BI layer.

</details>

<details>
<summary markdown='span'>
  Standard Bookings Cuts
</summary>

The [TD: Standard Bookings Cuts](https://app.periscopedata.com/app/gitlab/831911/TD:-Standard-Bookings-Cuts) dashboard tracks the performance of Booked Net ARR against the Previous Year (Year over Year, Y/Y) and against the quarterly and yearly financial target by different dimensions.

Each cut is composed of a Quarter View and a Fiscal Year View.

To use the dashboard select a Fiscal Quarter in the filters and any of the options of the `Drilldown` filter. The latter selects the granularity of the `Sales Segment Drilldown` field:

| Overall | Large - PubSec Breakdown | Large - Region Breakdown | Mid-Market Breakdown |
|     --         | --           | --              | --                |
|                |              | US East         | US East           |
|                |              | US West         | US West           |
|                |              | EMEA            | EMEA              |
|                |              | APAC            | APAC              |
|                |  Large       | Large           | Large             | 
|                |  PubSec      | PubSec          | PubSec            |
| Large + PubSec |              | Large + PubSec  | Large + PubSec    |
|                |              |                 | First Order Team  |
|                |              |                 | Territory (<500)  |       
| Mid - Market   | Mid - Market | Mid - Market    | Mid - Market      |
| SMB            | SMB          | SMB             | SMB               |
| WW             | WW           | WW              | WW                |

#### Key Fields and Business Logic

* [ATR (Available To Renew)](https://about.gitlab.com/handbook/sales/sales-term-glossary/#available-to-renew-atr)
* %ATR: Net ARR for a given category / subtotal ATR. E.g. when calculating %ATR for the segment SMB and growth type Contraction: `Net ARR for SMB | Contraction` / `ATR for SMB`
* TRX: Number of opportunities
* %MIX(ARR): Net ARR for a given category / subtotal ARR. E.g. when calculating %MIX(ARR) for the segment SMB and Deal Size 5-25k: `Net ARR for SMB | 5-25k` / `ARR for SMB`
* % of Bookings: Net ARR for a given category / total ARR for a given quarter
* % of Total Bookings: Net ARR for a given category / total ARR for a given category subtotal
* ProServ #: Number of opportunities with a proserv_amount different from zero
* A R (Attach Rate)
* The `US East` row shown in the sales segment drilldown field is composed of both the `East` and `LATAM` region
* Sales segment drilldown = APAC is composed of all the regions that are not `East`, `West`, `LATAM` and `EMEA`
* Sales segment drilldown = SMB is composed of the segment SMB plus all the segments that are not `Large` and `Mid-Market`
* Channel Type = Fulfilled is composed of the Channel Type Fulfilled plus NULL/Missing Channel Type

</details>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Additional Resources </h1>

<details>
<summary markdown='span'>
  Trusted Data Solution
</summary>

Sales Funnel models use the `sales_funnel` tag for Trusted Data tests and their results. This can be seen most easily using the [Trusted Data Dashboard](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

See overview at [Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

[dbt guide examples](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) for
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
Much of the data within and supporting Sales Funnel Analysis is [Orange](/handbook/engineering/security/data-classification-standard.html#orange) or [Yellow](/handbook/engineering/security/data-classification-standard.html#yellow). This includes ORANGE customer metadata from the account and GitLab's Non public financial information, all of which shouldn't be publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-technology/data-team/platform/sisensecdt/) and should ideally be shared only through those applications unless otherwise approved.

**ORANGE**

- Description: Customer and Personal data at the row or record level.
- Objects:
  - `dim_crm_person`
  - `dim_crm_account`

**YELLOW**

- Description: GitLab Financial data, which includes aggregations or totals.
- Objects:
  - `fct_crm_person`
  - `fct_crm_opportunity`
</details>

<details>
<summary markdown='span'>
  Solution Ownership
</summary>
* Source System Owner:
  * Salesforce: `@jbrennan1`
* Source System Subject Matter Expert:
  * Salesforce: `@jbrennan1`
* Data Team Subject Matter Expert: `@paul_armstrong` `@jeanpeguero` `@jjstark` `@iweeks`
</details>
