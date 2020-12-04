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

### Marketing Metrics Dashboard

The [Marketing Metrics Dashboard](https://app.periscopedata.com/app/gitlab/431555/Marketing-Metrics) is the centralized hub of all major marketing metrics and [marketing KPIs](/handbook/marketing/revenue-marketing/#revenue-marketing-kpi-definitions). It is an evergreen source of information brought in from Salesforce that is comprised of numerous individual graphs/charts (defined below) and allows the viewer to quickly filter results using pre-defined filters on the dashboard itself.

### Marketing Attribution

The [Marketing Linear Attribution Dashboard](https://app.periscopedata.com/app/gitlab/556414/Marketing-Linear-Attribution) provides insight into the campaigns, channels, assets, forms and landing pages that drive our goals.

### Marketing trial sign up flow

We use a variety of methods and systems to collect leads and understand how people discover GitLab. This is a basic overview of these visitors move through marketing systems. 
Note: The time delay between a record being added to SFDC and the time it takes to process in Marketo, get a score, and get pushed back to SFDC as a MQL causes a discrepancy between Inquiries and MQLs for trials on a given day or in a given month (when the trial occurs on the first/last day of the month) when viewed on the [Marketing Metrics Dashboard](https://app.periscopedata.com/app/gitlab/431555/Marketing-Metrics).

![Trial sign up flow](/images/handbook/marketing/marketing-operations/trial-sign-up-flow.png)

### Marketing Metric Charts - Base Fields and Base Data Filters

#### New Unique Emails Added
**Base Fields**
1. Salesforce `Leads` and `Contacts` - sum of unique SFDC IDs
1. `Created Date` - SFDC System field - grouped by Month
1. [Net New Source Categories](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields) or [Contact's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Contact&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DContact%26setupid%3DContactFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DContact&setupid=ContactFields) - By Default `DiscoverOrg` is removed, but can be added in with a Sisense filter.   

**Base Filter**
`Email` is not NULL.

### MQLs by Date by Initial Source
**Base Fields**
1. Salesforce `Leads` and `Contacts` - sum of unique SFDC IDs
1. `MQL Date` - [Lead MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) or [Contact MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - grouped by Month
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields) or [Contact's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Contact&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DContact%26setupid%3DContactFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DContact&setupid=ContactFields)

**Base Filter**
`MQL Date` is not from `2018-12-03 08:00:00` to `2018-12-04 07:00:00` (UTC)

### MQLs by Date by Segment
**Base Fields**
1. Salesforce `Leads` and `Contacts` - sum of unique SFDC IDs
1. `MQL Date` - [Lead MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) or [Contact MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - grouped by Month
1. `Sales Segment` - [Lead Sales Segment](https://gitlab.my.salesforce.com/00N6100000HHdoa?setupid=LeadFields) or [Contact/Account UPA Sales Segment](https://gitlab.my.salesforce.com/00N6100000IOi8o?setupid=AccountFields) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields) or [Contact's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Contact&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DContact%26setupid%3DContactFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DContact&setupid=ContactFields)

**Base Filter**
`MQL Date` is not from `2018-12-03 08:00:00` to `2018-12-04 07:00:00` (UTC)

### Converted MQLs by Converted Date
**Base Fields**
1. Salesforce `Leads` - sum of unique SFDC IDs
1. `Converted Date` - SFDC System Field - grouped by Month
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields)

**Base Filter**
`MQL Date` is not from `2018-12-03 08:00:00` to `2018-12-04 07:00:00` (UTC)
`MQL Date` is not NULL
`Is Converted` - SFDC System Field - is not `False`

### Opportunity Creation - Count by Source
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. `Created Date` - SFDC System Field - Grouped by Month
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - Using the [Opportunity Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields)

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`

### Opportunity Creation - IACV by Segment
**Base Fields**
1. [Opportunity's IACV](https://gitlab.my.salesforce.com/00N6100000HJpyB?setupid=OpportunityFields) - sum of IACV
1. `Created Date` - SFDC System Field - Grouped by Month
1. `Sales Segment` - Using the [Account UPA Sales Segment](https://gitlab.my.salesforce.com/00N6100000IOi8o?setupid=AccountFields)

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`

### XDR Opportunity Creation by XDR
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. `Created Date` - SFDC System Field - Grouped by Month
1. `XDR` - by User Name -  Using the [SDR](https://gitlab.my.salesforce.com/00N6100000HmyBe?setupid=OpportunityFields) or [BDR](https://gitlab.my.salesforce.com/00N6100000HmyBZ?setupid=OpportunityFields) fields on the Opportunity.

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`
`XDR` is not NULL or `Sales Admin`

### XDR Opportunity Creation by Source
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. `Created Date` - SFDC System Field - Grouped by Month
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Opportunity's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`
`XDR` is not NULL or `Sales Admin` - by User Name - Using the [SDR](https://gitlab.my.salesforce.com/00N6100000HmyBe?setupid=OpportunityFields) or [BDR](https://gitlab.my.salesforce.com/00N6100000HmyBZ?setupid=OpportunityFields) fields on the Opportunity.

### XDR Pipeline Creation - IACV
**Base Fields**
1. [Opportunity's IACV](https://gitlab.my.salesforce.com/00N6100000HJpyB?setupid=OpportunityFields) - sum of IACV
1. `Created Date` - SFDC System Field - Grouped by Month
1. `Sales Segment` - Using the [Account UPA Sales Segment](https://gitlab.my.salesforce.com/00N6100000IOi8o?setupid=AccountFields)

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`
[Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) is `SDR Generated` or `BDR Generated`

### XDR SAOs by XDR
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by Month
1. `XDR` - by User Name - Using the [SDR](https://gitlab.my.salesforce.com/00N6100000HmyBe?setupid=OpportunityFields) or [BDR](https://gitlab.my.salesforce.com/00N6100000HmyBZ?setupid=OpportunityFields) fields on the Opportunity.

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`
`XDR` is not NULL or `Sales Admin`

### XDR SAOs by Source
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by Month
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Opportunity's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`
`XDR` is not NULL or `Sales Admin`

### XDR SAOs - Opp per XDR
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields) - Grouped by Month
1. Salesforce `XDR`s - count of unique users in that role
1. count of `Opportunities` / count of `XDR`s as - Opps per XDR

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`
`XDR` is not NULL or `Sales Admin` - by User Name - Using the [SDR](https://gitlab.my.salesforce.com/00N6100000HmyBe?setupid=OpportunityFields) or [BDR](https://gitlab.my.salesforce.com/00N6100000HmyBZ?setupid=OpportunityFields) fields on the Opportunity.

### XDR Closed Won by Segment - Count
**Base Fields**
1. Salesforce `Opportunities` - sum of unique SFDC IDs
1. [Closed Date](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=CloseDate&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields) - Grouped by Month
1. `Sales Segment` - Using the [Account UPA Sales Segment](https://gitlab.my.salesforce.com/00N6100000IOi8o?setupid=AccountFields)

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is 'Closed Won' or '7-Closed Won'
`XDR` is not NULL or `Sales Admin` - by User Name - Using the [SDR](https://gitlab.my.salesforce.com/00N6100000HmyBe?setupid=OpportunityFields) or [BDR](https://gitlab.my.salesforce.com/00N6100000HmyBZ?setupid=OpportunityFields) fields on the Opportunity.

### XDR Closed Won by Segment - IACV
**Base Fields**
1. [Opportunity's IACV](https://gitlab.my.salesforce.com/00N6100000HJpyB?setupid=OpportunityFields) - sum of IACV
1. [Closed Date](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=CloseDate&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields) - Grouped by Month
1. `Sales Segment` - Using the [Account UPA Sales Segment](https://gitlab.my.salesforce.com/00N6100000IOi8o?setupid=AccountFields)

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is 'Closed Won' or '7-Closed Won'
`XDR` is not NULL or `Sales Admin` - by User Name - Using the [SDR](https://gitlab.my.salesforce.com/00N6100000HmyBe?setupid=OpportunityFields) or [BDR](https://gitlab.my.salesforce.com/00N6100000HmyBZ?setupid=OpportunityFields) fields on the Opportunity.

### Converted MQLs by Converted Date - daily
**Base Fields**
1. Salesforce `Leads` - sum of unique SFDC IDs
1. `Converted Date` - SFDC System Field - grouped by Day
1. [Source Buckets](https://docs.google.com/spreadsheets/d/1s0n1vrcROrG7qjJ55hz3qs5UyOLvSO-ljEx4IT5ENf4/edit?usp=sharing) - using the [Lead's Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Lead&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DLead%26setupid%3DLeadFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DLead&setupid=LeadFields)

**Base Filter**
`MQL Date` is not from `2018-12-03 08:00:00` to `2018-12-04 07:00:00` (UTC)
`MQL Date` is not NULL
`Is Converted` - SFDC System Field - is not `False`

### MQL Goals
**Base Fields**
1. Salesforce `Leads` and `Contacts` - sum of unique SFDC IDs
1. `MQL Date` - [Lead MQL Date](https://gitlab.my.salesforce.com/00N6100000CJuLB?setupid=LeadFields) or [Contact MQL Date](https://gitlab.my.salesforce.com/00N4M00000IW0Jx?setupid=ContactFields) - grouped by Month 
1. [MQL Goal](https://docs.google.com/spreadsheets/d/15GDBF9OI3WSZKO3osODafY1u6tf5OG01Za8srO85pyY/edit#gid=0) - Displayed by Month

**Base Filter**
`MQL Date` is not from `2018-12-03 08:00:00` to `2018-12-04 07:00:00` (UTC)

### IACV Pipeline Creation
**Base Fields**
1. [Opportunity's IACV](https://gitlab.my.salesforce.com/00N6100000HJpyB?setupid=OpportunityFields) - sum of IACV
1. `Created Date` - SFDC System Field - Grouped by Month
1. [Net New IACV Goal](https://docs.google.com/spreadsheets/d/15GDBF9OI3WSZKO3osODafY1u6tf5OG01Za8srO85pyY/edit#gid=0) - Displayed by Month

**Base Filter**
[Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields) is not `Duplicate` or `10-Duplicate`
[Opportunity Type](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Type&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields) is `Net New Business`

### New Hire Location Factor - Marketing
**Base Fields**
1. `Hire Date` - Grouped by Month
1. `Location Factor` - Averaged

**Base Filter**
`Location Factor` is not NULL
`Department` is not NULL
`Division` is `Marketing`

Note: This data is from BambooHR

## Filters on Marketing Dashboards
Filters are a native and integral piece of any dashboard! They allow you to quickly and easily isolate and filter your data based on pre-determined values and sets. They are of *no use* to anyone if we don't all know what a specific filter represents though! Here are the most common filters used on marketing dashboards, what data they pull from, and what they mean to you as the end-user!   

### Date Filters
1. DateRange - DateRange is the standard date filter in Sisense. Unless otherwise noted it is the X-axis of an individual chart. Note: DateRange works as an `after` filter of the first date, so if you want to see all of February 2020, your `DateRange` filter must be set to `2020-01-31 to 2020-02-29`.
1. Fiscal Quarter - this groups the X-axis dates (unless noted on the chart) by GitLab's [Fiscal Quarters](/handbook/finance/#fiscal-year)
1. Fiscal Year - this groups the X-axis dates (unless noted on the chart) by GitLab's [Fiscal Years](/handbook/finance/#fiscal-year)

### Salesforce Data Filters
All of these filters pull from the linked/specified field(s) from Salesforce. Notes will indicate when there are groupings used. As all of these pull directly from SFDC and are not cleaned (except for those specified as being bucketed/grouped, anomalies may occur when our data is not properly maintained in SFDC)
1. Sales Segment - this pulls from SoT for `Segment` for each object as shown below in the [Reporting Fields Source of Truth](/handbook/marketing/marketing-operations/marketing-metrics/#reporting-fields-source-of-truth) section.
1. Source Bucket - this pulls from the `Lead Source` for Leads/Contacts as shown below in the [Reporting Fields Source of Truth](/handbook/marketing/marketing-operations/marketing-metrics/#reporting-fields-source-of-truth) section. Note: these are grouped into **buckets** which, once updatd, will be displayed in a table below. This is considered the SoT for where a specific Lead/Contact came from/was sourced.
1. Sales Qualified Source - this pulls from the [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields) of the Opportunity. This is considered the SoT for where an Opportunity came from/was sourced.
1. Opp Sales Type - this pulls from the [Type](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Type&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields) field on the Opportunity. It is used to define whether an Opportunity is `New Business`, `Add-On Business`, etc.
1. Net New Category_ToIgnore - this is a special exclusive filter used *only* for the `New Unique Emails Added` chart on the Marketing Metrics Dashboard. When `DiscoverOrg` is checked, no Leads/Contacts with `DiscoverOrg` as their `Lead Source` will be shown on that chart. 



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
1. Sales Segment - See the Account `TSP Sales Segment` field. 

### Account
1. [TSP Sales Segment](https://gitlab.my.salesforce.com/00N4M00000IPFvy?setupid=AccountFields)

### Opportunity
1. [BDR](https://gitlab.my.salesforce.com/00N6100000HmyBZ?setupid=OpportunityFields)
1. [Closed Date](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=CloseDate&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)
1. [IACV](https://gitlab.my.salesforce.com/00N6100000HJpyB?setupid=OpportunityFields)
1. [Lead Source](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=LeadSource&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields)
1. [Sales Accepted Date](https://gitlab.my.salesforce.com/00N6100000HmPaK?setupid=OpportunityFields)
1. [Sales Qualified Source](https://gitlab.my.salesforce.com/00N6100000HZPjd?setupid=OpportunityFields)
1. [SDR](https://gitlab.my.salesforce.com/00N6100000HmyBe?setupid=OpportunityFields) 
1. [Stage Name](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=StageName&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields%26retURL%3D%252Fui%252Fsetup%252FSetup%253Fsetupid%253DOpportunity&setupid=OpportunityFields)
1. [Type](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Type&type=Opportunity&retURL=%2Fp%2Fsetup%2Flayout%2FLayoutFieldList%3Ftype%3DOpportunity%26setupid%3DOpportunityFields&setupid=OpportunityFields)








