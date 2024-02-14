---

title: Demand Generation Reporting
description: Demand Generation reporting in sisense and other systems.
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---






## Overview
This handbook page covers key dashboards and reports, and tips on how we leverage the metrics presented in order to optimize our demand generation campaigns.

### Key Reports
{: #key-reports}
<!-- DO NOT CHANGE THIS ANCHOR -->

**Main reports used (in order from zoomed-out to zoomed-in):**
* [(Gsheet) Pipeline X-Ray](https://docs.google.com/spreadsheets/d/1B4M60jehG4lfxoHgZeUCXRw9HUECFZarkKvFAvBwrR8/edit#gid=395575352): proactively review and address areas of concern in pipeline coverage in future quarters; based on trending from previous quarters
   - Visual: [SS&A - Pipeline Velocity & Generation](https://app.periscopedata.com/app/gitlab/799969/SS&A---Pipeline-Velocity-&-Generation)
   - [See more deails on the metrics and what to look at in the sheet](/handbook/marketing/demand-generation/#pipeline-xray)
* [(Sisense) WIP: Key Monthly Marketing Metrics](https://app.periscopedata.com/app/gitlab/775108/WIP:-Key-Monthly-Marketing-Metrics)
   - expand here
* [(Sisense) TD - Marketing Metrics](https://app.periscopedata.com/app/gitlab/798262/TD---Marketing-Metrics)
   - Look here for "best attempt" at overall MQL, SAO by segment/region
   - Salesforce Reports: *need to figure out how to replicate this for INQs/MQLs/SAOs from the TD Dashboard*
   - Includes everything, not just Demand Gen, but we can't use the DG Dash for accurate totals of INQs/MQLs/SAOs
   - INQ cannot be filtered by region on this dashboard, only by segment
* [(Gsheet) Demand Gen Metrics FY21 to FY22](https://docs.google.com/spreadsheets/d/1Jn3ywQMCdeBVT2OpAxFtiffZLAwDC_1dgcgAxLWc80w/edit#gid=1035863569): shows month-over-month total (and delta) in digital spend ($); INQ, MQL, SAO, Won (totals); conversion rates (%); cost-per ($); pipeline and won ($).
   - Total spend sourced from PMG invoice data (including PMG commission)
   - Totals (INQ, MQL, SAO) sourced from `GET FROM DUNK`
   - Pipeline & Won ($) sourced from `GET FROM DUNK`
   - Breaks out by segment for INQ, MQL, SAO; and conversion rates toward bottom of sheet
* [(Sisense) Demand Gen Dashboard](https://app.periscopedata.com/app/gitlab/793304/Demand-Gen-Dashboard): zoom-in to results with metrics on campaigns, channels, offers, and more by segment/region.
   - Use only for directional data on channels and campaigns (note that it won't match up with other dashboards, but is the best we have to answer questions about which campaigns/channels are resonating. We are working with MS&P on a dashboard to give holistic view - ETA TBD)
   - Missing touchpoints for SaaS trial (does not create a bizible touchpoint)
   - [See more deails on the metrics and what to look at in the dash](/handbook/marketing/demand-generation/#demand-gen-dash)
* [(DataStudio) PMG Dashboard](https://datastudio.google.com/u/1/reporting/19WMqzyDxrl1fK3puZ3kI7Pzig3Oex_BL/page/bFpBB): track spend, impressions, inquiries, and more down to detils of campaigns 
   - Use this for spend data and front-end metrics
   - *Cannot* filter by segment, but can filter by region

### Key Reporting Metrics & Questions
{: #reporting-questions-overall}
<!-- DO NOT CHANGE THIS ANCHOR -->

The below table shares some key metrics, with our current SSoT source, filters to use, and notes (in cases of calculations)

| Metric | Source | Notes |
| --- | --- | --- |
| Linear SAOs by segment/region | DG Dash | Notes |
| MQLs by segment/region | DG Dash | Notes |
| Spend (planned/current) by segment/region | PMG | Notes |
| Spend (past actuals) by segment/region | PMG | Notes |
| Conversion rates by segment/region | DG Dash | Notes |
| Velocity by segment/region | DG Dash | Notes |
| Cost-per by segment/region | DG Dash | [Jump to details on filters and calculation](/handbook/marketing/demand-generation/#cost-per) |
| Pipeline coverage | [Pipeline X-Ray](https://docs.google.com/spreadsheets/d/1B4M60jehG4lfxoHgZeUCXRw9HUECFZarkKvFAvBwrR8/edit#gid=395575352) | Breaks out by segment and New FO/Growth |
| SDR SAOs by segment/region | TD: Marketing Metrics Dash | This CAN be filtered down to segment/region for SAOs only - details below |
| INQ > SAO conversion rate by segment | TD: Marketing Metrics Dash | Need to confirm if this is accurate by region |

#### SSoT for SDR SAOs
{: #ssot-sdr-saos}
<!-- DO NOT CHANGE THIS ANCHOR -->

[TD: Marketing Metrics](https://app.periscopedata.com/app/gitlab/798262/TD---Marketing-Metrics)

To get SAO data by region:
* Select `User_Region_Name` for the region (i.e. east/west)
* The `User_Territory` will then populate with the next level down of data

#### Cost-per by segment/region
{: #cost-per}
<!-- DO NOT CHANGE THIS ANCHOR -->

**Data Source(s):**
* 

**Filters**
* 
* 
* 
* 

**Calculations**



**Crosschecking for Digital:**
- Is there a match up on the dg dash? If not, what might be the cause? Where to troubleshoot?
- Is what was expected to be spent in a given segment/region being spent? (compare against digital quarterization report)
   - [2H Quarterization](https://docs.google.com/spreadsheets/d/1YnVapJGloup6QInhi4alGFpxU8kViPklCx11EH34Y54/edit#gid=1264199374)

### Pipeline X-Ray Report
{: #pipeline-xray}
<!-- DO NOT CHANGE THIS ANCHOR -->

In Google Drive look up `Pipeline X-Ray:  Net ARR - Current & Next Quarter Overview - v0.91`

**Where to focus in this report:**
* Current quarter coverage - how are we doing compared to historical averages?
   - Great to see blue (over 150% of historical average)
   - Good to see green (90-150% of historical average)
   - Focus in on yellow (70-90% of historical average)
   - Discuss/develop plan for red (< 70% of historical average)
   - NOTE: as the quarter progresses, a % of pipeline that is in the current quarter will push into the next quarter or beyond. [See Pipeline Velocity & Generation Sisense Dash](https://app.periscopedata.com/app/gitlab/799969/SS&A---Pipeline-Velocity-&-Generation) and notice that in the `Open Stage 1+ Coverage` and `Open Stage 3+ Coverage` for previous quarters, there is a natural curve up as pipeline is added within the quarter, and a natural curve down to zero as the quarter comes to a close. This is due to pipeline that was previously anticipated for the current quarter, moves to future quarters.
   - COMMENTARY: if you were to see red for Pipeline Coverage for *next quarter*, yet Pipeline Coverage for *current quarter* is blue, it may not be distinct need to sound the alarm just yet - a % of pipeline will carry into next quarter. Something to discuss and address, but recognize that there is movement.
   - COMMENTARY: the data for this report is refreshed weekly (check if weekly is accurate) and will continue to change. Don't be surprised by continued changes as deals close and push throughout the quarter.
* Coverage by source (generated by SDR, AE, Channel, Web Direct) - how are we performing against historical averages?

**Metrics in Pipeline X-Ray**

****Calculations****
* Target (Net ARR)
* QTD Closed Net ARR ($)
* QTD Historical Avg $ - Last 3Q
* QTD over Historical QTD - Avg $
* QTD Closed Net ARR Pacing
* QTD Pacing Historical - Last 4Q
* Pacing Over Historical - QTD
* QTD Closed Deals (#)
* QTD Sales Funnel Target
* QTD over Target QTD - Closed (#)

### Sisense Demand Generation Dashboard
{: #demand-gen-dash}
<!-- DO NOT CHANGE THIS ANCHOR -->

**[(Sisense) Demand Gen Dashboard](https://app.periscopedata.com/app/gitlab/793304/Demand-Gen-Dashboard)**

The Demand Generation Dashboard uses
* [Bizible touchpoints](/handbook/marketing/marketing-operations/bizible/#bizible-touchpoints) to track Inquiries, MQLs, and SDR Accepted metrics
* [Linear Bizible Attribution touchpoints model](/handbook/marketing/marketing-operations/bizible/#linear-attribution) to track Opportunities, Total IACV$, SAO, Pipeline IACV$, Won Deals count, and Won IACV $

[See this epic for additional updates being requested/made to the Demand Gen Dashboard](https://gitlab.com/groups/gitlab-com/-/epics/629). 

To add a new integrated campaign group, open an issue by using the [demand-gen-dashboard template](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/blob/master/.gitlab/issue_templates/demand-gen-dashboard.md) in the Marketing Strategy & Performance project

#### Metrics in Demand Generation Dashboard
{: #dashboard-metrics}
<!-- DO NOT CHANGE THIS ANCHOR -->

- **Inquiries**: Form fills on the campaign landing page + form fills tagged with the campaign utms anywhere on our marketing site. The Inquiry numbers are based on touchpoints, and deduplicated by email address in the topline metrics view. The pivot table view is not deduplicated and will show all touchpoints.
- **MQL**: Campaign inquiries that have MQL'ed (MQL date  is not blank). Estimated Free Trial Paid MQLs are also included.
- **SDR Accepted**: Number of campaign inquiries worked by the SDRs.
- **New Inquiries**: Number of new emails created from campaign inquiries.
- **New MQL**: Number of new emails generated by campaign inquiries that have MQL'ed (MQL date  is not blank).
- **New SDR Accepted**: Number of new emails generated by campaign inquiries worked by the SDRs.
- **[Linear] Opps Created**: Opportunities (All stages) attributed to  campaign inquiries using the linear model.
- **[Linear] Total IACV $**: IACV $ value of opportunities (all stages)  attributed to  campaign inquiries using the linear model.
- **[Linear] SAO**: Sales Accepted opportunities (Stage 1+) attributed to campaign inquiries using the linear model. Estimated Free Trial Paid SAOs are also included
- **[Linear] Pipeline IACV $**: IACV$ value of Sales Accepted opportunities (Stage 1+) attributed to campaign inquiries using the linear model.
- **[Linear] Won Deals**: Closed won opportunities attributed to campaign inquiries  using the linear model.
- **[Linear] Won IACV$**: IACV$ value of Closed won opportunities attributed to campaign inquiries using the linear model.
- **Total Cost (Excl PMG's commission)**: Total spend for the campaign(s) excluding our Ad agency's (PMG) commission.
- **Cost/Inquiry (Excl PMG's commission)**: Total spend for the campaign(s) excluding our Ad agency's (PMG) commission / Number of Inquiries from the campaign(s).
- **Cost/MQL (Excl PMG's commission)**: Total spend for the campaign(s) excluding our Ad agency's (PMG) commission / Number of MQLs from the campaign(s).
- **Cost/SAO (EXcl PMG's commission)**: Total spend for the campaign(s) excluding our Ad agency's (PMG) commission /  Number of [Linear] SAOs from the campaign(s).
- **Inquiry to MQL Conversion Rate**: Number of MQLs from the campaign(s)/Number of Inquiries from the campaign(s).
- **MQL to [Linear] SAO Conversion Rate**: Number of [Linear] SAOs from the campaign(s)/Number of MQLs from the campaign(s).
- **[Linear] SAO to [Linear] Closed Won Conversion Rate**: Number of [Linear] Won Deals from the campaign(s) / [Linear] SAOs from the campaign(s).
- **Avg Inquiry to MQL Velocity (Days)**: Number of days between first campaign inquiry to MQL date. 
- **Avg MQL to SAO Velocity (Days)**: Number of days between campaign respondent MQL date and resulting first order opportunity sales accepted date .
- **Avg SAO to Won Velocity (Days)**: Average number of days between campaign first order opportunity sales accepted date and first order opportunity closed-won date.
- **Estimated Free Trial Paid MQLs**: This is based on estimation by using a benchmark for conversion rate. Conversion rate benchmark = SaaS Trial Submit / Trial unique pageviews. Estimated nbr of MQLs = Conversion rate benchmark * PMG Free Trial GA Conversion. Since Free Trials auto-MQL, they are not counted in inquiries. Find more details in [this issue](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/180)
- **Estimated Free Trial Paid SAOs**: MQL>SAO Est. Conversion rate * Estimated PMG Free Trial Submit. The MQL>SAO Est. Conversion rate is ~3.6% = for the users who submits Trials and engage with other campaigns. Find more info in [this issue](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/184#note_484817882) (Won Deals, Won $, Pipeline and Velocity is not calculated for Trials)

The above [Linear] attribution metrics are also available in other attribution models: First touch, U-shaped, W-shaped. Find more information about these attribution models on the [Bizible Handbook page](/handbook/marketing/marketing-operations/bizible/#attribution-models)



#### Dashboard Filters and Functionalities
{: #dashboard-filters-functionalities}
<!-- DO NOT CHANGE THIS ANCHOR -->

##### Filters
{: #dashboard-filters}
<!-- DO NOT CHANGE THIS ANCHOR -->

* **Date Range**: based on Bizible touchpoint date
* **Group By Time:** You can toggle between different date aggregation (MoM,QoQ,YoY). _Note: If you use the dashboard for the very first time, you need to select any value in this filter in order to make the charts work on the dashboard._
* **Touchpoint Segment:** multi-select filter with the option of `Demand Gen` and `Other` (if you select both, you would be able to see All touchpoints). `Other` touchpoints cover any non-Demand Gen data (e.g.: FMM, Direct, Organic Search etc.). Touchpoint Segment **does not** filter the PMG cost.
* **Snapshot View:** When you select the `Snapshot View` option, the main KPIs (MQL,Linear SAO, Won) will be filtered by the relevant snapshot date instead of touchpoint date. What does this mean? Touchpoint view is based on Bizible touchpoint dates, while the Snapshot view is based on the relevant SFDC object date filters: for Linear SAO -> SAO date, Closed Won -> Closed date, MQLs -> MQL date. Inquiries is always filtered by the Bizible touchpoint date, so Inquiries and PMG cost is not affected by the Snapshot view. **Important** to know that the Snapshot View is only linked to the main Scorecards and the Funnel chart that are on the top of the Demand Gen dashboard. Note that best practice is to use the `Snapshot View` on this dashboard.
* **Integrated Campaign:** filters the charts and tables by integrated campaign group. `Free Trial` covers the Estimated Free Trials only.
* **SFDC Sales Segment:** based on the sales segment on the lead object and the sales segment on the account linked to the contact. SFDC Sales Segment filters the PMG Cost based on the utm_segment in PMG data, that is defined in the `budget` field in their database. PMG Segments: SMB, Mid-Market, Large, Prospecting, Retargeting
* **SFDC Region Normalized:** it's the Region on the lead object and the region on the account linked to the contact. PMG Cost is filtered by the region taken from the PMG campaign name
* **Country:** mailing address country on the lead and contact records, for the opportunities we are using the contact's mailing address. (Note: Marketo forms collect the mailing address). Country **does not** filter the PMG cost.
* **SFDC Order Type Stamped, Opp Sales Stype, Opp Deal Path:** filters the post opportunity metrics (SAO,WON) only (so it is not linked to Inquiries, MQL, SDR Accepted). PMG Cost is not filtered.

**Default filters**

The Demand Gen dashboard has the following defaults filters set up:
* Touchpoint_Segment=`Demand Gen`
* DateRange =>`2020-02-01`
* SFDC_Order_Type_Stamped = `1. New - First Order`
* Snapshot View is turned on

When you want to reset the filter just open the filter pane and click on `Reset Filter`

**How to filter New First Order Logos?**

Select `SFDC_Order_Type_Stamped = 1. New - First Order` (this does not filter the `Opp_Sales_Type filter`).

**How to filter Growth?**

Select `SFDC_Order_Type_Stamped = 1. New - First Order, 2. New - Connected, 3. Growth` to expand the view beyond first orders.

**How to use `Opp_Deal_Path` filter?**

`Web direct` covers web portal purchase. Deal Path is `Channel` when the Partner Account name is not blank on the opportunity.

**What filters to use for GTM Motion reporting (e.g. DevOps GTM)**

- Select `Integrated_Campaign = DevOps GTM` (depending on which GTM motion you are reporting on).
- Select `Touchpoint_Segment = Demand Gen + Other`
- Only if you are looking to report on First Order, select `SFDC_Order_Type_Stamped = 1. New - First Order`
- Check `Snapshot view`

**Snapshot View vs Touchpoint View:**

Snapshot View is the default on the dashboard and the [best practice for use](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/429#note_655315272).

The following table gives a better understanding of the difference between the 2 views (with dummy data). The table shows 1 SFDC Sales accepted opportunity (SAO) with 4 different touchpoints and the Linear SAO. Each touchpoint happens on a different day and the SAO date of the opportunity is on `2021-01-20`.

* If we report on Touchpoint View, the Linear SAO is shown on the different touchpoint dates: 0.25 Linear SAO on `2021-01-10`, another one on `2021-01-12` and so on).
* If the report is based off of Snapshot View, all Linear SAOs will be shown on the SAO date: `4x0.25=1` on `2021-01-20`

|SFDC Opportunity ID | Bizible Touchpoint ID | Bizible Touchpoint Date | SAO date | Touchpoint Type | Linear SAO |
|--------------------|-----------------------|-------------------------|----------|---------------------|------------|
|0064M00000Wv4i2|a604M000000dMJc|2021-01-10|2021-01-20|Web Visit|0.25|
|0064M00000Wv4i2|a604M000000dMJg|2021-01-12|2021-01-20|CRM|0.25|
|0064M00000Wv4i2|a604M000000dMJd|2021-01-17|2021-01-20|Web Form|0.25|
|0064M00000Wv4i2|a604M000000dMJb|2021-01-18|2021-01-20|Web Visit|0.25|

**MQLs in snapshot view**: The snapshot view calculates the distinct number of Bizible persons who hit MQL status and engaged with any of the demand gen campaigns

##### Functionalities
{: #dashboard-functionalities}
<!-- DO NOT CHANGE THIS ANCHOR -->

* **Dynamic KPI Charts:** Some charts are dynamic meaning that you are able to switch the KPI in the dropdown menu in the top left corner. The Y axis format changes based on the selected KPI ($, %). If you want to temporarly remove some values in the chart series. You can do that by clicking on the relevant label in the legend. Double-clicking on a label in the legend will display the desired label only.
* **Date Aggregation:** with the `Group By Time` filter you can change the date granularity on the [Date Range Comparison table](https://app.periscopedata.com/app/gitlab/793304/Demand-Gen-Dashboard?widget=10984808&udv=1198278) and the trend charts ([Acquisition and Opportunity $ Trend](https://app.periscopedata.com/app/gitlab/793304/Demand-Gen-Dashboard?widget=10531936&udv=1198278),[Conversion % and CPA Trend](https://app.periscopedata.com/app/gitlab/793304/Demand-Gen-Dashboard?widget=10540142&udv=1198278)).
* **Pivot Table:** To create your own pivot table in the tables under the Table Summary sections, click on the top right corner of the table > Edit Pivot. For the conversion rates (INQ>MQL, MQL>SAO, SAO>WON) use average in the Pivot value settings. **Important**: max 5MB data can be downloaded due to browser data download size limitations (eg.: if you select Demand Gen and Other in the Touchpoint Segment filter, the data volume will be too too large to display in the tables)

#### Demand Gen Touchpoints
{: #demand-gen-touchpoints}
<!-- DO NOT CHANGE THIS ANCHOR -->

The below table shows the rules how we select the demand gen related touchpoints and addes them into the integrated campaign groups. We take online touchpoints (utm parameters from the form, landing page URLs) and the offline campaigns (such as LinkedIn Lead Gen) as well.

**How to make sure that the LinkedIn Lead Gen campaigns will be captured properly by the dashboard?**

 You need to follow this steps while setting up the LinkedIn Lead Gen campaigns: [Steps to Setup LinkedIn Lead Gen Form *Gated Content Only](/handbook/marketing/marketing-operations/campaigns-and-programs/#steps-to-setup-linkedin-lead-gen-form-gated-content-only). Important to note that the campaign name should include the campaign parameters, as the dashboard is using them to add into the different campaign groups.

  
| Campaign group                      | UTM string                                                                                        | Ad Campaign name                                                                                                                               |
|-------------------------------------|---------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Increase Operational Efficiencies   | lower-tco or operationalefficiencies or operationalefficiences                                    | campaign name incl. 'lower-tco or operationalefficiencies or operationalefficiences'                                                           |
| Deliver Better Products Faster      | reduce-cycle-time                                                                                 | campaign name incl. 'betterproductsfaster'                                                                                                     |
| Reduce Security and Compliance Risk | secure-apps                                                                                       | campaign name incl. 'reducesecurityrisk'                                                                                                       |
| Jenkins Take Out                    | jenkins-alternative                                                                               | campaign name incl. 'cicdcmp2' or campaign name ='2020_Social_Jenkins_cicdcmp2_LinkedIn Lead Gen                                               |
| CI Build & Test Auto                | single-application-ci                                                                             | campaign name incl. 'cicdcmp3'                                                                                                                 |
| OctoCat                             | github-actions-alternative                                                                        | campaign name incl. 'octocat'                                                                                                                  |
| CI Use Case - FR                    | integration-continue-pour-construire-et-tester-plus-rapidement,  utm_content incl 'french'        | campaign name incl. 'singleappci' or campaign name ='2021_Social_singleappci_French_LinkedIn Lead Gen                                          |
| CI Use Case - DE                    | nutze-continuous-integration-fuer-schnelleres-bauen-und-testen, utm_content incl 'paesslergerman' | campaign name incl. 'singleappci'                                                                                                              |
| CI Use Case                         | use-continuous-integration-to-build-and-test-faster (excluding CI Use Case FR and DE)             | campaign name incl. 'singleappci' or campaign name ='20201013_ActualTechMedia_DeepMonitoringCI or 2020_Social_CI_singleappci_LinkedIn Lead Gen |
| DevSecOps Use Case                  | shift-your-security-scanning-left                                                                 | campaign name incl. 'devsecopsusecase' or parent campaign name='GCP_campaign_parent'                                                           |
| VCC Use Case                        | simplify-collaboration-with-version-control                                                       | campaign name incl. 'vccusecase' or campaign name ='2020_Social_VCC_vccusecase_LinkedIn Lead Gen'                                              |
| GitOps Use Case                     | gitops-infrastructure-automation                                                                  | ad campaign name incl. 'iacgitops' or campaign name ='2020_Social_GitOps_iacgitops_LinkedIn Lead Gen'                                          |
| Evergreen                           | evergreen                                                                                         | ad campaign name incl. 'evergreen'                                                                                                             |
| Brand                               | brand                                                                                             | ad campaign name incl. 'brand'                                                                                                                 |
| AWS                                 | aws-gitlab-serverless or trek10-aws-cicd                                                          | ad campaign name incl. 'awspartner'                                                                                                            |
| SMB Nurture                         | smbnurture or smbagnostic                                                                         | ad campaign name incl. 'smbnurture or smbagnostic' or campaign name ='Nurture - SMB Mixed Use Case'                                            |
| CI/CD Seeing is Believing           | cicdseeingisbelieving                                                                             | ad campaign name incl. 'cicdseeingisbelieving' or campaign name ='20201215_HowCiDifferent'                                                     |
| Simplify DevOps'                    | simplifydevops                                                                                    | ad campaign name incl. 'simplifydevops' or parent campaign name ='FY21_SimplifyDevOps_Commercial'                                              |
| Japan-Digital Readiness             | 21q4-jp                                                                                           | ad campaign name incl. '21q4-jp' or campaign name ='2021_Social_Japan_LinkedIn Lead Gen'                                                       |
| Publishers/Sponsorships             | utm_medium = 'sponsorship' and utm_source ='issa','stackoverflow','securityweekly-appsec'        | parent campaign name='Demand Gen Publishers/Sponsorships' |


## Tactic-Specific Dashboards
{: #dashboard-by-tactic}
<!-- DO NOT CHANGE THIS ANCHOR -->

SFDC reports and dashboards to track program performance real-time. Data from the below SFDC reports/dashboards along with anecdotal feedback gathered during program retros will be used as guidelines for developing and growing various marketing campaigns.

The SFDC report/dashboard is currently grouped by program types so MPMs can easily compare and identify top performing and under performing programs within the areas that they are responsible for.

### Key Metrics tracked on ALL virtual events dashboards
{: #dashboard-virtual-events}
<!-- DO NOT CHANGE THIS ANCHOR -->

*Note: Virtual Events include Webcast, Live Demos and Virtual Sponsorship*

* **Total Registration :** The number of people that registered for the virtual event regardless whether they attend or not.
* **Total Attendance:** The number of people that attended the LIVE virtual event (exclude people who watched the on-demand version).
* **Attendance Rate:** % of people that attended the LIVE virtual event out of the total registered (i.e: Total Attendance / Total Registration).
* **Net New Names:** The number of net new names added to our marketing database driven by the virtual event. Because a net new person record may be inserted into our CRM (SFDC) as a lead or a contact object therefore, we need to add `Total net new leads` and `Total net new contacts` to get the overall total net new names.
* **Influenced Pipe:** Total New and Add-on business pipeline IACV$ influenced by people who attended the LIVE virtual event. The webcast and live demo dashboards currently use SFDC out of the box `Campaigns with Influenced opportunities` report type because Bizible was implemented in June'18 and therefore the attribution report did not capture data prior to this. We plan to migrate webcast and live demo influenced pipe reports to Bizible attribution report in the next dashboard iteration so they align with overall marketing reporting.

#### Virtual Events Reporting
{: #reporting-virtual-events}
<!-- DO NOT CHANGE THIS ANCHOR -->

The [Webcast Dashboard](https://gitlab.my.salesforce.com/01Z6100000079e6) tracks all webcasts hosted on GitLab's internal webcast platform. It is organized into 3 columns. The left and middle columns tracks 2 different webcast series (Release Radar vs. CI/CD webcast series). The right column tracks various one-off webcasts since Jan'18.

The [Live Demo Dashboard](https://gitlab.my.salesforce.com/01Z6100000079f4) is organized into 2 columns. The left column tracks the bi-weekly Enterprise Edition product demos (1 hour duration). The bi-weekly Enterprise Edition product demos ran between Q1'18 - Q2'18.
The right column tracks the weekly high level product demo + Q&A session (30 minutes duration). The weekly high level product demo + Q&A session was launched in Q4'18 and currently running through the end of Feb 2019.

The [Virtual Sponsorship Dashboard](https://gitlab.my.salesforce.com/01Z61000000UD44) focuses on events that are hosted by a 3rd party where GitLab has purchased a virtual booth or sponsorship.
