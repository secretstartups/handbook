---

title: TD Campaign Performance Dashboard
description: >- 
   Campaign Performance is designed as a source of truth dashboard on campaign performance.
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## TD: Campaign Performance Dashboard

[TD: Campaign Performance](https://10az.online.tableau.com/#/site/gitlab/views/DraftTDCampaigns-L2RInteractions/Overview?:iid=4) is the source of truth dashboard for marketing campaign performance and is the single pane of glass view for tracking campaign performance from an Inquiry to a closed won SAO.

This dashboard is based on [Marketo Measure (Bizible)](https://handbook.gitlab.com/handbook/marketing/marketing-operations/bizible/) Touchpoints, where each Touchpoint represents a form submitted to a GitLab Marketing website from an inquiry. TD: Campaign Performance (TDP) is based on MS&A’s Lead to Revenue model that combines Touchpoints, persons and Opportunities, allowing TDP to create a single pane of glass view from Inquiry to closed won SAO.

## Cohorting

Unlike many of our other dashboards, all the metrics on TDP are chorted to the Touchpoint Created Date. Cohorting to Touchpoint date lets us show a single date filter and makes all the metrics relative to when the touchpoint happened. 

## Dashboard Tabs


### Drill Down Tabs

The Campaign, Regional, and Bizible Drill Down Tabs show point-in-time campaign information. These three tabs show the same information by different cuts.

Each tab has a different Tableau Hierarchy in the table view, the hierarchy can be expand to show more details. Below is a list of a the hierarchies with thier fields name.

- Campaign - Bizible Integrated Campaign > Bizible Marketing Channel > Bizible Marketing Channel Path > UTM Contnet
- Regional - Account Demographics Geo > Sales Segmenet > Region > Area
- Bizible  - Bizible Channel > Bizible Channel Path > Campaign

### By Single Field

The Overview section shows an overview of leads and contacts for a selected time period. This section deduplicates leads and contacts, counting each person only one time regardless of the number of campaigns they belong to. 

Key metrics are presented together with the live status of associated inquiries and MQLs of selected campaigns. 


### Performance by Campaign 

In the Performance by Campaign section, each unique person is counted as one per campaign, meaning that if the same person was in more than 1 campaign they would be counted in each. 

In addition to the key metrics per campaign, we’ve added additional fields related to the budgeted and actual spend of the campaign. These are pulled from the Salesforce Campaign object, in order to estimate the Pipeline to Campaign Spend Ratio (P2S). The SFDC campaign object gets its budget information either from directly entering the budget in SFDC or from a linked Allocadia line item through the integration from Allocadia to SFDC.


### Person Status Change 

This section of the dashboard shows the first status change of the person associated with a particular campaign after engaging with it. It is best used when the dashboard is filtered for a specific campaign, with the goal of understanding sales follow up on the campaign engagement. 

The bar chart on the right side shows the total breakdown of different status changes. The table on the left side provides additional information with the live status of those records, after that first change as well. 

In the table at the bottom  - Person Status Change [Post Campaign by Record ID], update details are provided on an individual record basis, such as who owns the lead, who performed the last action on the lead, as well as the time since the last sales engagement. 

## Metrics

- **Touchpoints** - Number of unique persons that have engaged with the specific campaigns
- **Inquiries** - Number of people who have reached (or pasted) the inquiry stage and have a touchpoint associated with the campaign.*
- **MQLs** - Number of people who have reached (or pasted) the marketing qualified lead stage and have a touchpoint associated with the campaign.*
- **Sales Accepted Leads** - Number of leads who have reached (or pasted) the Sales Accepted Lead stage and have a touchpoint associated with the campaign.*
- **Influenced SAOs** - Number of Sales Accepted Opportunities with influence from Marketing campaigns calculated using our custom multi-touch attribution model.*
- **Influenced SAOs [OC]** - Number of Sales Accepted Opportunities with influence from Marketing campaigns calculated using our custom multi-touch attribution model limited to touchpoints that were the last one before opportunity creation.*
- **Influenced Net ARR** - The amount of NET ARR influenced by our Marketing campaigns using our custom multi-touch attribution model.*
- **Touched SAOs** - The number of SAOs with at least one Marketing touchpoint.*
- **Cost** - The cost the campaign reported from the Campaing Object in SFDC. If the campaign cost is $1, then the value is ignored. The fileds first looks like the actual cost for a value greater than $5, if one in not use present, it uses the esistatmed cost.

* The `Advanced Filters` can control the date range for these metrics, limiting them to only {MQLs, SAOs, etc} created in a given timeframe.

## Dashboard Filters

Unless otherwise stated, all filters on the dashboard will filter data on all tabs. 

The filters are divided into two groups, `Primary Filters` are shown all times. `Advanced Filters` accessible by opening `Advanced Filters` panel on the `Campaign Drill Down` tab.

The bullets below descibes the source of the values in the filters. 

### Primary Filters

- **Touchpoint Date** - Date range during which marketing touchpoint occurred
- **Intergrated Budget Holder** - Filters campaigns based on the `Budget Holder` field in SFDC/UTM parameters.
- **Person Grouping** - Filters to either First Order Persons and/or First Order Opps, plus all the combonations in between.
- **SFDC Campaign Type** - The Campaign Type field from SFDC. Selecting any non-null value will remove all touchpoints without a SFDC Campaign. 
- **Bizible Intergrated Campaign Name** - Either the SFDC Campaign name or the value `utm_campaign` parameter.
- **Medium** - A combined field from `utm_medium` and Bizible Medium
- **Source** - A combined field from `utm_source` and Bizible Source
- **UTM Content** - The value of the `utm_content` parameter.

- **Alternative_Segment** - Segment of the Person that interacted with the campaign defined using [waterfall logic from multiple fields](/handbook/marketing/strategy-performance/marketing-metrics/#alternative-method-for-account-demographics-fields-on-leads)
- **Alternative_Geo** - Geo Region of the person that interacted with the campaign defined using [waterfall logic from multiple fields](/handbook/marketing/strategy-performance/marketing-metrics/#alternative-method-for-account-demographics-fields-on-leads)
- **Bizible_Channel** - Marketing channel that the campaign belongs to


- **Campaign_Region** - Salesforce field on the Campaign 
- **Campaign_Sub_Region** - Salesforce field on the Campaign 

- **Order_Type** - Filters for Person/Opportunity of particular order type
- **Account_Territory** - Account Territory of the Opportunity / Person where available. Currently this field is not populated for many leads, but it’s reliable on the opportunity object for SAOs / Pipeline / Closed Won metrics. 
- **Sales_Accepted_Date** - Date range during which opportunity became SAO (filters only opportunity level information)


## Default Setup and Filters

The Dashboard is set up by default to show the last 90 days of campaign engagement by touchpoint creation. 

For different teams within GitLab in order to assess their campaign performance it is recommended to filter for a budget holder of their team within the filters.
