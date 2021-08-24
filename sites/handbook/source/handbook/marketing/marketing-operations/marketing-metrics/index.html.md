---
layout: handbook-page-toc
title: "Marketing Metrics"
description: "We use Sisense to view and analyze our marketing metrics from multiple data sources."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Marketing Metrics

We use Sisense to view and analyze our marketing metrics from multiple data sources. 

## Marketing Sisense Dashboards
In [Sisense](https://app.periscopedata.com/app/gitlab/403199/Welcome-Dashboard-%F0%9F%91%8B) there are mutlipe marketing metric dashboards. You can quickly find the current source of truth dashboards by referencing the `Marketing` topic within Sisense. There are 3 topics that marketing leverages:   
1. `Marketing` - These are the actively maintained dashboards.
1. `Marketing-WIP` - These are the WIP dashboards. They can be viewed but are not reliable yet.
1. `Marketing-Archive` - These are the archived/old dashboards. They are not to make decisions off of and no longer supported.

Below you can find a few of the major dashboards in use and descriptions/links of/to them. 

### Marketing sources

To help us improve our paid and organic campaigns, we split marketing activities out by source in to Inbound and Demand Generation related activity. Inbound and Demand Generation sources use the following Google Analytics mediums for our breakdown.

#### Inbound
* Organic
* Direct/none
* Non-paid social
* Referral

#### Demand Generation
* Display
* Paid Social
* Generic Paid Search
* Branded Paid Search

### Defining Conversion Rate

There are several ways we can use conversion rate optimization to improve marketing performance on GitLab web properties. To create a common, [MECEFU](/handbook/communication/#mecefu-terms) oriented definition for our teams we use the following formulas.

**Overall conversion rate**
We use the overall conversion rate to quickly measure the effectiveness of our marketing website. This measurement helps us establish a baseline for engagement and move to update CTAs and offers across our marketing website to improve our conversion motions. This is the formula we use to arrive at the overall conversion rate.

overall conversion rate = `goal conversion events on about.gitlab.com/total sessions on about.gitlab.com`

For example, in December 2020 there were 2,829,601 sessions across our Google Analytics profile, with 23,218 goal conversion events.

Our overall conversion rate in December 2020 was 0.82% (23,218/2,829,601).

**Offer specific conversion rate** (trial, demo, etc)
We use offer specific conversion rates to help us measure the effectiveness of pages with conversion events. This includes our trial page, demo, webcasts, resources, and other pages we use to convert visitors to inquiries. We use this formula to calculate the offer conversion rate.

offer conversion rate = `offer conversion/visits to offer pages`

Looking at December 2020 again, there were 7,226 `/demo/` pageviews with 600 `demo` conversion events.

Our demo conversion rate in December 2020 was 8.3% (600/7,226).

### Marketing Metrics Dashboard

The [Marketing Metrics Dashboard](https://app.periscopedata.com/app/gitlab/798262/TD---Marketing-Metrics) is the centralized hub of all major marketing metrics and [marketing KPIs](/handbook/marketing/revenue-marketing/#revenue-marketing-kpi-definitions). It is an evergreen source of information brought in from Salesforce that is comprised of numerous individual graphs/charts (defined below) and allows the viewer to quickly filter results using pre-defined filters on the dashboard itself.

### Marketing Attribution

The [Marketing Linear Attribution Dashboard](https://app.periscopedata.com/app/gitlab/556414/Marketing-Linear-Attribution) provides insight into the campaigns, channels, assets, forms and landing pages that drive our goals.

### Marketing trial sign up flow

We use a variety of methods and systems to collect leads and understand how people discover GitLab. This is a basic overview of these visitors move through marketing systems. 
Note: The time delay between a record being added to SFDC and the time it takes to process in Marketo, get a score, and get pushed back to SFDC as a MQL causes a discrepancy between Inquiries and MQLs for trials on a given day or in a given month (when the trial occurs on the first/last day of the month) when viewed on the [Marketing Metrics Dashboard](https://app.periscopedata.com/app/gitlab/431555/Marketing-Metrics).

![Trial sign up flow](/images/handbook/marketing/marketing-operations/trial-sign-up-flow.png)

### [Marketing Metrics Dashboard](https://app.periscopedata.com/app/gitlab/798262/TD---Marketing-Metrics) Charts - Base Fields, Base Data Filters and SQL Queries

#### New Unique Emails Added
**Base Fields**
1. Salesforce `Leads` and `Contacts` - Count of unique email addresses
1. `Created Date` - SFDC System field - grouped by Month
1. [Net New Source Categories](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields) or [Contact's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Contact&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DContact%26setupid%3DContactFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DContact&setupid=ContactFields) 

**Adjustable Filters**
1. `User_Sales_Segment`
1. `_fiscal_year_`

<details>
<summary><i>SQL Query</i></summary>

```

WITH base AS (
SELECT
  mart_crm_person.*,
  dim_date.fiscal_month_name_fy,
  dim_date.fiscal_quarter_name_fy,  
  dim_date.fiscal_year,
  dim_date.fiscal_year                     AS date_range_year,
  dim_date.fiscal_quarter_name_fy          AS date_range_quarter,
  DATE_TRUNC(month, dim_date.date_actual)  AS date_range_month,
  dim_date.date_id                         AS date_range_id
FROM [mart_crm_person]
LEFT JOIN common.dim_date 
  ON mart_crm_person.created_date = dim_date.date_day
  WHERE [sales_segment_name=user_segment_name]
  AND [fiscal_year=_fiscal_year_]
)
SELECT 
COUNT(DISTINCT email_hash) AS records,
lead_source,
[_Group_By_Time]
FROM base
GROUP BY 2,3
ORDER BY 
3,2

```

</details>

### MQLs by Initial Source Bucket
**Base Fields**
1. Salesforce `Leads` and `Contacts` - Count of unique email addresses
1. `MQL Date` - [Lead MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) or [Contact MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - grouped by `_Group_by_Time` filter
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields) or [Contact's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Contact&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DContact%26setupid%3DContactFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DContact&setupid=ContactFields)

**Adjustable Filters**
1. `User_Sales_Segment`
1. `_fiscal_year_`

<details>
<summary><i>SQL Query</i></summary>

```

WITH base AS (

SELECT 
  [_Group_By_Time],
  sales_segment_name,
  email_hash,
  source_buckets
FROM [rpt_crm_person_mql] 
WHERE [sales_segment_name=user_segment_name]
  AND [fiscal_year=_fiscal_year_]
ORDER BY 1
  
)

SELECT
COUNT(DISTINCT email_hash) AS mqls,
source_buckets,
[_Group_By_Time]
FROM
  base
group by
  3,2
order by
  3,2

```

</details>

### MQLs by Segment
**Base Fields**
1. Salesforce `Leads` and `Contacts` - Count of unique email addresses
1. `MQL Date` - [Lead MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) or [Contact MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - grouped by `_Group_by_Time` filter
1. `Sales Segment` - [Lead Sales Segment](https://gitlab.my.salesforce.com/00N6100000HHdoa?setupid=LeadFields) or [Contact/Account UPA Sales Segment](https://gitlab.my.salesforce.com/00N6100000IOi8o?setupid=AccountFields) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields) or [Contact's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Contact&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DContact%26setupid%3DContactFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DContact&setupid=ContactFields)

**Adjustable Filters**
1. `User_Sales_Segment`
1. `_fiscal_year_`
1. `Source_Bucket`

<details>
<summary><i>SQL Query</i></summary>

```

WITH base AS (
SELECT 
  [_Group_By_Time],
  sales_segment_name,
  dim_crm_person_id
  --bizible_marketing_channel_path_name
 -- COUNT(mql) AS actual_mqls --this counts mqls by ID, not by email hash
FROM [rpt_crm_person_mql] 
WHERE [sales_segment_name=user_segment_name]
  AND [fiscal_year=_fiscal_year_]
ORDER BY 1
)
, unioned AS (
  SELECT 
base.dim_crm_person_id,
[_Group_By_Time],
sales_segment_name,
  common.dim_crm_person.email_hash AS email_hash,
  source_buckets
  FROM base
  LEFT JOIN common.dim_crm_person 
  ON base.dim_crm_person_id = common.dim_crm_person.dim_crm_person_id
)
SELECT
[_Group_By_Time],
COUNT(DISTINCT email_hash) AS mqls,
sales_segment_name--,
--sales_segment_name AS segment
FROM
  unioned
WHERE
[source_buckets=Source_Bucket]
GROUP BY
  1,3
ORDER BY
  1,3

```

</details>

### MQLs by Detailed Initial Source
**Base Fields**
1. Salesforce `Leads` - Count of unique email addresses
1. `MQL Date` - [Lead MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) or [Contact MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - grouped by `_Group_by_Time` filter
1. `Initial Source` - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields)

**Adjustable Filters**
1. `User_Sales_Segment`
1. `_fiscal_year_`
1. `Source_Bucket`

<details>
<summary><i>SQL Query</i></summary>

```

WITH base AS (
SELECT 
  [_Group_By_Time],
  sales_segment_name,
  dim_crm_person_id
FROM [rpt_crm_person_mql] 
WHERE [sales_segment_name=user_segment_name]
  AND [fiscal_year=_fiscal_year_]
ORDER BY 1
)
, unioned AS (
  SELECT 
base.dim_crm_person_id,
[_Group_By_Time],
sales_segment_name,
  common.dim_crm_person.email_hash AS email_hash,
  lead_source
  FROM base
  LEFT JOIN common.dim_crm_person 
  ON base.dim_crm_person_id = common.dim_crm_person.dim_crm_person_id
)
SELECT
[_Group_By_Time],
COUNT(DISTINCT email_hash) AS mqls,
lead_source
FROM
  unioned
WHERE
[source_buckets=Source_Bucket]
GROUP BY
  1,3
ORDER BY
  1,3

```

</details>

### MQLs by Detailed Initial Source - Daily
**Base Fields**
1. Salesforce `Leads` - Count of unique email addresses
1. `MQL Date` - [Lead MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) or [Contact MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - grouped by day
1. `Initial Source` - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields)

**Adjustable Filters**
1. `User_Sales_Segment`
1. `_fiscal_year_`
1. `Source_Bucket`

<details>
<summary><i>SQL Query</i></summary>

```

WITH base AS (
SELECT 
  mql_date_first,
  sales_segment_name,
  dim_crm_person_id
FROM [rpt_crm_person_mql] 
WHERE [sales_segment_name=user_segment_name]
  AND [fiscal_year=_fiscal_year_]
ORDER BY 1
)
, unioned AS (
  SELECT 
base.dim_crm_person_id,
mql_date_first AS mql_date,
sales_segment_name,
  common.dim_crm_person.email_hash AS email_hash,
  lead_source
  FROM base
  LEFT JOIN common.dim_crm_person 
  ON base.dim_crm_person_id = common.dim_crm_person.dim_crm_person_id
)
SELECT
date_trunc('day',mql_date)::Date AS mql_month,
COUNT(DISTINCT email_hash) AS mqls,
lead_source
FROM
  unioned
WHERE
[source_buckets=Source_Bucket]
GROUP BY
  1,3
ORDER BY
  1,3

```

</details>

### Opportunity Creation - Count by Source
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. `Created Date` - SFDC System Field - Grouped by `Group_by_Time` filter
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - Using the [Opportunity Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields)

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `Sales_Qualified_Source`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`
1. `source_bucket`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  COUNT(*) AS actual_created,
 source_buckets
FROM [rpt_crm_opportunity_created_period]
WHERE [order_type=order_type]
  AND [sales_qualified_source_name=sales_qualified_source]
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
    AND [source_buckets=Source_Bucket]
  AND is_edu_oss = 0
   AND stage_name != '10-Duplicate'
GROUP BY 1,3
ORDER BY 1
  
)

SELECT
actual_created,
source_buckets,
[_Group_By_Time]
FROM actual_created
ORDER BY 3

```

</details>

### Opportunity Creation - Net ARR by Segment
**Base Fields**
1. [Opportunity's Net ARR](https://gitlab.my.salesforce.com/00N4M00000Ib5n8?setupid=OpportunityFields) - sum of Net ARR
1. `Created Date` - SFDC System Field - Grouped by `_Group_by_Time` filter
1. `Sales Segment` - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Segment`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `Sales_Qualified_Source`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
 SUM(net_arr) AS actual_net_arr,
  crm_user_sales_segment
FROM [rpt_crm_opportunity_created_period]
WHERE [order_type=order_type]
  AND [sales_qualified_source_name=sales_qualified_source]
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
   AND stage_name != '10-Duplicate'
  --AND is_sao = TRUE
GROUP BY 1,3
ORDER BY 1
)

SELECT
[_Group_By_Time],
crm_user_sales_segment AS sales_segment,
actual_net_arr AS arr

FROM actual_created
ORDER BY 1,2

```

</details>

### SDR Opportunity Creation by SDR
**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. `Created Date` - SFDC System Field - Grouped by `Group_by_Time` filter
1. `SDR` - by User Name -  Using the [SDR/BDR](https://gitlab.my.salesforce.com/00N6100000I1Y02?setupid=OpportunityFields) field on the Opportunity.

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. `SDR` is not NULL
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `Sales_Qualified_Source`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  COUNT(*) AS actual_created,
  opportunity_development_representative
FROM [rpt_crm_opportunity_created_period]
WHERE [order_type=order_type]
  AND [sales_qualified_source_name=sales_qualified_source]
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
   AND stage_name != '10-Duplicate'
  AND opportunity_development_representative IS NOT null
GROUP BY 1,3
ORDER BY 1
)

SELECT
[_Group_By_Time],
opportunity_development_representative,
actual_created
FROM actual_created
ORDER BY 1

```

</details>

### SDR Opportunity Creation by Source Bucket
**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. `Created Date` - SFDC System Field - Grouped by `Group_by_Time` filter
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Opportunity's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) = `BDR Generated` or `SDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`
1. `source_bucket`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  COUNT(*) AS actual_created,
  source_buckets
FROM [rpt_crm_opportunity_created_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('BDR Generated','SDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
    AND [source_buckets=Source_Bucket]
  AND is_edu_oss = 0
   AND stage_name != '10-Duplicate'
GROUP BY 1,3--,4
ORDER BY 1
)

SELECT
[_Group_By_Time],
source_buckets,
actual_created
FROM actual_created
ORDER BY 1

```

</details>

### SDR Pipeline Creation - Net ARR
**Base Fields**
1. [Opportunity's Net ARR](https://gitlab.my.salesforce.com/00N4M00000Ib5n8?setupid=OpportunityFields) - sum of Net ARR
1. `Created Date` - SFDC System Field - Grouped by `Group_by_Time` filter
1. `Sales Segment` - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Segment`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  crm_user_sales_segment,
 SUM(net_arr) AS actual_net_arr
FROM [rpt_crm_opportunity_created_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
GROUP BY 1,2
ORDER BY 1
)

SELECT
[_Group_By_Time],
crm_user_sales_segment,
actual_net_arr AS arr

FROM actual_created
ORDER BY 1

```

</details>

### SAO SDR Pipeline Creation - Net ARR
**Base Fields**
1. [Opportunity's Net ARR](https://gitlab.my.salesforce.com/00N4M00000Ib5n8?setupid=OpportunityFields) - sum of Net ARR
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. `Sales Segment` - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Segment`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  crm_user_sales_segment,
 SUM(net_arr) AS actual_net_arr
FROM [rpt_crm_opportunity_accepted_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
GROUP BY 1,2
ORDER BY 1
)

SELECT
[_Group_By_Time],
crm_user_sales_segment,
actual_net_arr AS arr
FROM actual_created
ORDER BY 1

```

</details>

### SDR SAOs by Segment
**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. `Sales Segment` - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Segment`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  crm_user_sales_segment,
COUNT(*) AS actual_saos
FROM [rpt_crm_opportunity_accepted_period]
WHERE [order_type=order_type]
 AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
  AND is_sao = TRUE
GROUP BY 1,2
ORDER BY 1
)

SELECT
[_Group_By_Time],
crm_user_sales_segment,
actual_saos
FROM actual_created
ORDER BY 1

```

</details>


### SDR SAOs by Source
**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Opportunity's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`
1. `source_bucket`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  source_buckets,
COUNT(*) AS actual_saos
FROM [rpt_crm_opportunity_accepted_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
    AND [source_buckets=Source_Bucket]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
  AND is_sao = TRUE
GROUP BY 1,2
ORDER BY 1
)

SELECT
[_Group_By_Time],
source_buckets,
actual_saos

FROM actual_created
ORDER BY 1

```

</details>

### SDR SAOs by Initial Source

**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. [Opportunity's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  lead_source,
COUNT(*) AS actual_saos
FROM [rpt_crm_opportunity_accepted_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
  AND is_sao = TRUE
GROUP BY 1,2
ORDER BY 1
)

SELECT
[_Group_By_Time],
lead_source,
actual_saos
FROM actual_created
ORDER BY 1

```

</details>

### SDR SAOs by SDR
**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. `SDR` - by User Name -  Using the [SDR/BDR](https://gitlab.my.salesforce.com/00N6100000I1Y02?setupid=OpportunityFields) field on the Opportunity.
1. `Sales Segment` - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Segment`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)
1. `SDR` is not null

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  crm_user_sales_segment,
COUNT(*) AS actual_saos,
  opportunity_development_representative
FROM [rpt_crm_opportunity_accepted_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND opportunity_development_representative IS NOT null
  AND stage_name != '10-Duplicate'
  AND is_sao = TRUE
GROUP BY 1,2,4
ORDER BY 1
)

SELECT
[_Group_By_Time],
crm_user_sales_segment,
actual_saos,
 opportunity_development_representative
FROM actual_created
ORDER BY 1

```

</details>

### SDR SAOs - Opp per SDR
**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. `SDR` - Count of SDRs -  Using the [SDR/BDR](https://gitlab.my.salesforce.com/00N6100000I1Y02?setupid=OpportunityFields) field on the Opportunity.
1. Count of `Opportunities` / count of `SDR`s as - `SAOs per SDR`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)
1. `SDR` is not null

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  opportunity_development_representative,
  dim_crm_opportunity_id as opp_id
FROM [rpt_crm_opportunity_accepted_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
     AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
  AND opportunity_development_representative IS NOT null
 AND is_sao = TRUE
ORDER BY 1
)

SELECT
[_Group_By_Time],
COUNT(DISTINCT opportunity_development_representative) as SDRs,
COUNT(DISTINCT opp_id) AS sao_count,
(sao_count/SDRs) AS saos_per_sdr
FROM actual_created
GROUP BY 1
ORDER BY 1

```

</details>


### SDR Closed Won by Segment - Count
**Base Fields**
1. Salesforce `Opportunities` - Count of unique SFDC IDs
1. [Closed Date](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=CloseDate&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. `Sales Segment` - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Segment`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)
1. [is_won](https://gitlab.my.salesforce.com/00N6100000IOu6D?setupid=OpportunityFields) = `True`

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  crm_user_sales_segment,
COUNT(*) AS actual_saos
FROM [rpt_crm_opportunity_closed_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
  AND is_won = True
GROUP BY 1,2
ORDER BY 1
)

SELECT
[_Group_By_Time],
crm_user_sales_segment,
actual_saos
FROM actual_created
ORDER BY 1

```

</details>

### SDR Closed Won by Segment - Net ARR
**Base Fields**
1. [Opportunity's Net ARR](https://gitlab.my.salesforce.com/00N4M00000Ib5n8?setupid=OpportunityFields) - sum of Net ARR
1. [Closed Date](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=CloseDate&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields) - Grouped by `Group_by_Time` filter
1. `Sales Segment` - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Segment`

**Hard Coded Filters**
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `10-Duplicate`
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`
1. [is_edu_oss](https://gitlab.my.salesforce.com/00N6100000IOu68?setupid=OpportunityFields) is `false` (`0`)
1. [is_won](https://gitlab.my.salesforce.com/00N6100000IOu6D?setupid=OpportunityFields) = `True`

**Adjustable Filters**
1. `Order_Type`
1. `_fiscal_year_`
1. `user_segment_name`
1. `user_geo_name`
1. `user_region_name`
1. `user_area_name`

<details>
<summary><i>SQL Query</i></summary>

```

WITH actual_created AS (

SELECT
  [_Group_By_Time],
  crm_user_sales_segment,
SUM(net_arr) AS actual_net_arr
FROM [rpt_crm_opportunity_closed_period]
WHERE [order_type=order_type]
  AND sales_qualified_source_name IN ('SDR Generated','BDR Generated')
  AND [fiscal_year=_fiscal_year_]
    AND [crm_user_sales_segment=user_segment_name]
    AND [crm_user_geo=user_geo_name]
    AND [crm_user_region=user_region_name]
    AND [crm_user_area=user_area_name]
  AND is_edu_oss = 0
  AND stage_name != '10-Duplicate'
  AND is_won = True
GROUP BY 1,2
ORDER BY 1
)

SELECT
[_Group_By_Time],
crm_user_sales_segment,
actual_net_arr AS arr
FROM actual_created
ORDER BY 1

```

</details>


## Filters on Marketing Dashboards
Filters are a native and integral piece of any dashboard! They allow you to quickly and easily isolate and filter your data based on pre-determined values and sets. They are of *no use* to anyone if we don't all know what a specific filter represents though! Here are the most common filters used on marketing dashboards, what data they pull from, and what they mean to you as the end-user!   

### Date Filters
1. `Group_by_Time` - this groups the X-axis dates by the specified value - either Month, Quarter, or Year
1. Fiscal Year - this groups the X-axis dates (unless noted on the chart) by GitLab's [Fiscal Years](/handbook/finance/#fiscal-year)

### Salesforce Data Filters
All of these filters pull from the linked/specified field(s) from Salesforce. Notes will indicate when there are groupings used. As all of these pull directly from SFDC and are not cleaned (except for those specified as being bucketed/grouped, anomalies may occur when our data is not properly maintained in SFDC)
1. User Segment Name - this pulls from SoT for `Segment` for each object as shown below in the [Reporting Fields Source of Truth](/handbook/marketing/marketing-operations/marketing-metrics/#reporting-fields-source-of-truth) section.
1. Source Bucket - this pulls from the `Lead Source` for Leads/Contacts as shown below in the [Reporting Fields Source of Truth](/handbook/marketing/marketing-operations/marketing-metrics/#reporting-fields-source-of-truth) section. Note: these are grouped into **buckets** which, once updatd, will be displayed in a table below. This is considered the SoT for where a specific Lead/Contact came from/was sourced.
1. Sales Qualified Source - this pulls from the [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) of the Opportunity. This is considered the SoT for where an Opportunity came from/was sourced.
1. Order Type - this pulls from the [Order Type](https://gitlab.my.salesforce.com/00N4M00000Ib8Ok?setupid=OpportunityFields) field on the Opportunity. It is used to define whether an Opportunity is `New First Order`, `New Connected`, etc.
1. User Region Name - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Region`
1. User Geo Name - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Geo`
1. User Area Name - Using the [Opportunity Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhObFF4TnpveE56bzBPUzR5TURGYSxWQmZIWkc5eUh2TmFZdmtNbXhOeVBSLFl6UTNNekF5&setupid=OpportunityFields) `User Area`


## Reporting Fields Source of Truth
This section captures and links the most often used fields in reporting so that anyone pulling a Salesforce report can and is using the correct fields and the same fields that are being used in Periscope reports/dashboards.    

Note: There is a current transition to move towards the [Territory Success Planning fields](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/)

### Lead
1. [Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields)
1. [MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) - if this is blank, the record is *not* counted as a `MQL`
1. [Sales Segment](https://gitlab.my.salesforce.com/00N6100000HHdoa?setupid=LeadFields)

### Contact
1. [Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Contact&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DContact%26setupid%3DContactFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DContact&setupid=ContactFields)
1. [MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - if this is blank, the record is *not* counted as a `MQL`
1. Sales Segment - See the Account `Sales Segment` field. 

### Account
1. `Sales Segment` - Using the [Account Owner's](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Owner&type=Account&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DAccount%26setupid%3DAccountFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DAccount&_CONFIRMATIONTOKEN=VmpFPSxNakF5TVMwd05DMHhOMVF4TlRveE5qb3dOaTQzTnpOYSxURnIyR3gyTDhNSWx5dWJmTW1ObUxGLFl6UTNNekF5&setupid=AccountFields) - `User Segment`

### Opportunity
1. [SDR/BDR](https://gitlab.my.salesforce.com/00N6100000I1Y02?setupid=OpportunityFields)
1. [Closed Date](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=CloseDate&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)
1. [Net ARR](https://gitlab.my.salesforce.com/00N4M00000Ib5n8?setupid=OpportunityFields)
1. [Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields)
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields)
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields)
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields)
1. [Order Type](https://gitlab.my.salesforce.com/00N4M00000Ib8Ok?setupid=OpportunityFields)

## Dashboard Review Videos

### [Marketing Metrics](https://app.periscopedata.com/app/gitlab/798262/TD---Marketing-Metrics)

<iframe width="560" height="315" src="https://www.youtube.com/embed/7cT_IsyWrus" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### [SDR Metrics](https://app.periscopedata.com/app/gitlab/641469/SDR-Metrics)

[Video Walkthrough](https://www.youtube.com/watch?v=ygeZvKvU9uc) (Private Video)
## Useful things to know when it comes to Sisense vs. SFDC data
Given the way that our systems are connected and synched, you may see a discrepancy in the data within Sisense vs. Sales Force.com. A few things to note: 
1. Opportunity amount will be updated immediately within sales force, but will NOT show up in Sisense until the next day, as our data synchs overnight. 
1. There is about a 7 hour time difference between Sisense and SFDC, so this time lag can also create discrepancies as well. 






