---
layout: handbook-page-toc
title: "Data Catalog"
description: "The Data Catalog page indexes Analytics Dashboards, Workflows, and Terms."
---
{::options parse_block_html="true" /}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

---

## GitLab Data Catalog Index

The Data Catalog page indexes Analytics Solutions, Dashboards, Workflows, and Key Terms. Please feel free to contribute to add additional links and resources.

## Sisense Dashboards

[Sisense](https://about.gitlab.com/handbook/business-technology/data-team/platform/periscope/) is our enterprise standard BI tool. 

`IMPORTANT: 2021-09-08 SAFE Dashboard Changes`

**On 2021-09-08 Sisense dashboard access will be changing, driven by GitLab's maturation and the [SAFE Data Framework](https://about.gitlab.com/handbook/legal/safe-framework/). The following section describes the planned access process.**

Access to Sisense dashboards is based on job role and goverened by the [SAFE Data Access Framework](https://about.gitlab.com/handbook/legal/safe-framework/). In Sisense, dashboards are classified into the following spaces:
- the **GitLab** space is a General Access area which houses dashboards which do not require SAFE handling. General Access Dashboards are accessible by all GitLab Team Members.
- the **SAFE Intermediate Dashboard** space houses dashboards which do not require SAFE handling, but are based on data models that contain SAFE Data.  SAFE Intermediate Dashboards are available to GitLab Team Members based on job role or demonstrated need.
- the **SAFE Dashboard** space houses all dashboards that meet [GitLab's SAFE criteria](https://about.gitlab.com/handbook/legal/safe-framework/#safe-flowchart). SAFE Dashboards are available to GitLab Team Members based on job role or demonstrated need.

A complete list of Dashboards, including SAFE Dashboards, is available in the [GitLab Dashboard Index](https://app.periscopedata.com/app/gitlab/910238/GitLab-Dashboard-Index).

### Accessing a GitLab General Access Dashboard

General Access Dashboards are available to all GitLab Team members and no Access Request issue is required. Access instructions are covered in the [Sisense overview and development page.](https://about.gitlab.com/handbook/business-technology/data-team/platform/periscope/#access)

### Accessing a SAFE Dashboard

All SAFE Dashboards are stored within the Sisense SAFE Dashboard space and access is granted at the Sisense space level. Access to a single SAFE Dashboard provides access to all SAFE Dashboards. Access to a SAFE Dashboard (and the space) requires:
1. Your immediate manager's approval
2. Departmental VP (or equivalent) approval
3. Approval of the SAFE Dashboard Space Owner defined in the GitLab Dashboard Index

To gain access to SAFE Dashboards:

1. Create an [Access Request](https://gitlab.com/gitlab-com\team-member-epics/access-requests/-/issues\new?issuable_template=Individual_Bulk_Access_Request) and list up to three SAFE Dashboards from the [GitLab Dashboard Index](https://app.periscopedata.com/app/gitlab/910238/GitLab-Dashboard-Index) you require access to. This list of SAFE Dashboards will help approvers understand your needs and intent.
2. Request approval from your immediate manager, your Departmental VP (or equivalent), and the SAFE Space Owner defined in the GitLab Dashboard Index header. Approval is **not needed**, if you have an approval for SAFE Data [access](/handbook/business-technology/data-team/platform/#warehouse-access) in Snowflake, that is not older than 60 days. Skip this step and link to the particular AR. 
3. Once the request is approved, follow the instructions in the tech_stack.yml file for provisioning. 
4. After processing is complete you will be able to login to Sisense and access your requested SAFE dashboard and all other dashboards within the SAFE Dashboard Space.

![Sisense Spaces](sisense_spaces_singular.png)

Please see the [Accessing](/handbook/business-technology/data-team/platform/#warehouse-access) SAFE Data in Snowflake for instructions on to access the SAFE data in Snowflake.

SAFE Data in Google Sheets files can be accessed using the instructions for [Accessing a SAFE Dashboard](/handbook/business-technology/data-team/data-catalog/#accessing-a-safe-dashboard). Please follow those instructions to gain access to SAFE Data in Google Sheets. 

`END OF 2021-09-08 SAFE Dashboard Change Announcement`

`IMPORTANT: 2021-12-17 SAFE Intermediate Dashboard Changes`

**On 2021-12-17 We will iterate on the SAFE Dashboard Program by creating a new **SAFE Intermediate Dashboard** space. The **SAFE Intermediate Dashboard** space is driven by GitLab's maturation and the [SAFE Data Framework](https://about.gitlab.com/handbook/legal/safe-framework/). The following section describes the planned access changes.**

Access to the **SAFE Dashboard** space is not changing and team members can continue to follow the [Accessing a SAFE Dashboard](/handbook/business-technology/data-team/data-catalog/#accessing-a-safe-dashboard) instructions to gain access to the space. Access to the **GitLab** space is not changing and that continues to be a baseline entitlement for all team members. What is changing is the creation of a new **SAFE Intermediate Dashboard** space that will be governed as follows: 

### Accessing a SAFE Intermediate Dashboard

- The **SAFE Intermediate Dashboard** space houses dashboards that do NOT expose Material Non-Public Information (MNPI); however, they are built using restricted data models that contain sensitive financial data. Having VIEW only access to the space will NOT result in a team member being added to the designated insiders list by being included in the space. However, a team member could still be added to the designated insiders list for having access to sensitive information in other applications outside of Sisense. Having the EDITORS role in the **SAFE Intermediate Dashboard** space WILL result in the team member being added to the designated insiders list. This is because EDITORS in the Space will have access to all of the sensitive data in the restricted schemas in the space. Team members should check to see if the dashboard they require VIEW only access is available in the **SAFE Intermediate Dashboard** space so they can avoid be adding to the **SAFE Dashboard** space and thereby being added to the designated insiders list. A complete list of Dashboards, including SAFE and SAFE Intermediate Dashboards, is available in the [GitLab Dashboard Index](https://app.periscopedata.com/app/gitlab/910238/GitLab-Dashboard-Index).

- Editors in the **SAFE Intermediate Dashboard** space should not expose MNPI in the charts and dashboards. Generally speaking, data insights that show Total Company ARR, Net and Gross Dollar Retention, Revenues, and Expenses should not not be exposed in the SAFE Intermediate Space and should continue to be built in the **SAFE Dashboard** space. Data insights that show a partial view of the Sales Funnel, a partial view of ARR or other sensitve financial data, or an abstraction of senstive financial data such that one cannot determine what the Total Company metrics would be are ok to visualize in the **SAFE Intermediate Dashboard**. Should Editors in the space have any questions about a specific dashboard, they can ask in the #safe Slack channel and ping a member of the data team for assistance.

- SAFE Intermediate Dashboard Change Management: ALL new dashboards in the space will require review by the Data Team, Corporate Finance, and Legal to ensure no MNPI data has been exposed in the dashboard. The recommended development workflow is to develop your new dashboard in the SAFE space and when you are ready to release the dashboard, you could open an issue in the Data Team project, have the dashboard reviewed, and then migrate it to the SAFE Intermediate Dashboard space. The Data Team can assist with this process and request for the dashboard to be copied over. Any new charts added to existing dashboards in the space or any material changes to existing charts in the dashboard that would cause the insights to change require review by the Data Team, Corporate Finance, and Legal.  Please open a ticket in the Data Team project and request review of the dashboard when you make updates. This change management policy is to insure that no material MNPI is exposed in the space and will help keep the space safe.  

To gain access to SAFE Intermediate Dashboards:

1. To receive VIEW access only, create an [Access Request](https://gitlab.com/gitlab-com\team-member-epics/access-requests/-/issues\new?issuable_template=Individual_Bulk_Access_Request) and follow the instructions in the tech_stack.yml file.
2. Due to the sensitive and nuanced nature of data in this **SAFE Intermediate Dashboard** space, only a select few Functional and Central Data Analysts have been added to the Space as Editors. Any additional Editor users would be added on a case by case basis when new Functional and/or Central Data Analysts join the team and would need access to develop dashboards in the Space. Team members are permitted to gain view access as needed with Manager approval.
3. Once the request is approved, follow the instructions in the tech_stack.yml file for provisioning. 
4. After processing is complete you will be able to login to Sisense and access your requested SAFE Intermediate dashboard and all other dashboards within the SAFE Intermediate Dashboard Space.

![Sisense Spaces](safe_intermediate.png)

### Sisense Data Access Matrix:

| Space | Read-Only | Editor |
| ----- | --------- | ------ |
| General / GitLab | Baseline entitlement | AR with manager approval |
| SAFE Intermediate Dashboard | AR with manager approval | AR with manager, departmental VP (or equivalent) and SAFE Intermediate Space owner approval | 
| SAFE Dashboard | AR with manager, departmental VP (or equivalent) and SAFE Space owner approval | AR with manager, departmental VP (or equivalent) and SAFE Space owner approval |

`END OF 2021-12-17 SAFE Intermediate Dashboard Change Announcement`

## Data By Subject Area

### Marketing

#### Dashboards

* [TD: Marketing Data Mart](/handbook/business-technology/data-team/data-catalog/email-data-mart)
* [TD: SDR Performance Dashboard](https://app.periscopedata.com/app/gitlab/894285/TD-SDR-Performance-Dashboard---V1.0)

#### Analytics Projects

* [2021-10-01 SAO Analysis](https://docs.google.com/presentation/d/1kmkmSRoAC7-CyNRzLc3vmH8NE-Abn6A-X6Z2JstCk1I/edit?usp=sharing)

### Sales

#### Dashboards

* [TD: Customer Segmentation](/handbook/business-technology/data-team/data-catalog/customer-segmentation/)
* [TD: Sales Funnel](/handbook/business-technology/data-team/data-catalog/sales-funnel/)
* [Manual Usage Data Upload Process](/handbook/business-technology/data-team/data-catalog/manual-data-upload/)

#### Analytics Projects

* Propensity to Buy: [Project](https://gitlab.com/gitlab-data/propensity-to-buy), [Handbook](/handbook/business-technology/data-team/organization/data-science/#propensity-to-expand)
* Propensity to Contract and Churn: [Project](https://docs.google.com/presentation/d/1Gd-GhHhWHHc1N8zJtLGKtNF4W2T9d82Sv_fZ_j2236U/edit#slide=id.g29a70c6c35_0_68), 
,[Handbook](/handbook/business-technology/data-team/organization/data-science/#propensity-to-contract), [Presentation](https://docs.google.com/presentation/d/1Gd-GhHhWHHc1N8zJtLGKtNF4W2T9d82Sv_fZ_j2236U/edit#slide=id.g29a70c6c35_0_68)

### Finance

* [TD: Finance ARR](/handbook/business-technology/data-team/data-catalog/finance-arr/)
* [Opportunity to Subscription Mapping](/handbook/business-technology/data-team/data-catalog/opportunity_subscription_mapping/)
* [Zuora Revenue Waterfall](/handbook/business-technology/data-team/data-catalog/zuora_revenue_waterfall/)
* [TD: Available to Renew](/handbook/business-technology/data-team/data-catalog/available_to_renew/)

### Product

#### Dashboards

* [TD: Product Geolocation](/handbook/business-technology/data-team/data-catalog/product-geolocation/)
* [TD: Pricing Analysis](/handbook/business-technology/data-team/data-catalog/pricing/)

#### Data Models and Processes

* [Product Usage Data](/handbook/business-technology/data-team/data-catalog/product-usage-data/)
* [SaaS Service Ping](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/)
* [SaaS Product Events](/handbook/business-technology/data-team/data-catalog/saas-product-events-data/)

#### Analytics Projects

* [2020-12 Product Analytics Offsite](https://docs.google.com/presentation/d/1y9iTbHBNSCoq26Wxb0MnGAP7vlcPdAG5Ehigsyr3Hpw/edit#slide=id.g29a70c6c35_0_68)

### Growth

#### Dashboards

* [XMAU Analysis](/handbook/business-technology/data-team/data-catalog/xmau-analysis/)
* [Growth Dashboards](/direction/growth/#dashboards)

#### Analytics Projects

* [2021-08 Customer Centric Product Insights](https://docs.google.com/presentation/d/10soQFzNH6dguVMIuzsd8b8ODmyDyycxU1dyefUTODqk/edit#slide=id.gcf1e8c1d1f_7_180)
* [2021-08 Experimentation Workshop](https://docs.google.com/presentation/d/1nmStWChWkYad9K-dced9wS4jS7XLIrHB-WKafc7jrMU/edit#slide=id.gca4c496ea4_0_0)
* [2021-08 Stage:Secure Adoption and Conversion Analysis](https://docs.google.com/presentation/d/1bbvfsNzKoZw4kCYB9coexiXzPiLZ5E3XPe6hOsbZlag/edit#slide=id.g29a70c6c35_0_68)
* [2021-08 Namespace Conversion Analysis](https://docs.google.com/presentation/d/10soQFzNH6dguVMIuzsd8b8ODmyDyycxU1dyefUTODqk/edit#slide=id.gcf1e8c1d1f_7_180)
* [FY22-Q1 Growth Team KPI Review](https://docs.google.com/presentation/d/1VX85L9UTD7PQbb_aPJolqhRkq2KE7r8up2dSOzWNTeo/edit#slide=id.gdd1aebac8e_0_0)
* [2021-08 SSO Login Deep Dive Analysis](https://docs.google.com/presentation/d/1j66MejLh8uKhUDUkSVIhPLI79M1LtbgCSxuvJKzRRaI/edit#slide=id.p)
* [Growth Insights](/direction/growth/#insights)
* [Concluded Growth Experiments](/direction/growth/#growth-experiments-knowledge-base---concluded-experiments)
* [FY22-Q3 xMAU Estimation Exploration](https://docs.google.com/presentation/d/1ifKhhGw2rWF33g22n42bdD6Yqq6m3o_djqxo6qvJVoo/edit#slide=id.gf7594bb92d_0_190)

### Customer Success

* `Under Construction`

### Engineering

* [MR Rate](/handbook/engineering/performance-indicators/#engineering-mr-rate)

### People

* [People Metrics Overview](/handbook/business-technology/data-team/data-catalog/people-analytics/)
* [PTO By Roots (Slack)](/handbook/business-technology/data-team/data-catalog/people-analytics/pto/pto.html)
* [People Key Metrics](/handbook/business-technology/data-team/data-catalog/people_key_metrics_dashboard/)
* [People KPI Deck](/handbook/business-technology/data-team/data-catalog/people-analytics/people_kpi_deck.htm)
* [Promotions Report](/handbook/business-technology/data-team/data-catalog/people-analytics/promotions_report.html)
* [Talent Acquisition Metrics](/handbook/business-ops/data-team/data-catalog/people-analytics/talent-acquisition-metrics.html)
* [People Metrics - Data Discovery in Sisense Dashboard](https://app.periscopedata.com/app/gitlab/831245/People-Data-Discovery-Feature)

### Data Team

* [Sisense Usage and Adoption](https://app.periscopedata.com/app/gitlab/topic/Sisense-Maintenance/abde7717743143098ac071be8c646bdb)
* [Trusted Data Health](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

## Metrics and Terms Index

* [Sales Term Glossary](https://about.gitlab.com/handbook/sales/sales-term-glossary/)
* ARR: [Annual Recurring Revenue](/handbook/sales/sales-term-glossary/arr-in-practice/)
* ATR: [Available To Renew](/handbook/sales/sales-term-glossary/#available-to-renew-atr)
* CAC: [Customer Aquisition Cost](/handbook/sales/sales-term-glossary/#customer-acquisition-cost-cac)
* LTV: [_customer_ LifeTime Value](/handbook/sales/sales-term-glossary/#life-time-value-ltv)
* [Namespace](https://docs.gitlab.com/ee/user/group/#namespaces)
* NDR: [Net Dollar Retention](/handbook/customer-success/vision/#retention-gross--net-dollar-weighted)
* PQL: [Product Qualified Lead](/handbook/product/product-principles/#product-qualified-leads-pqls)
* [Product Stage](/handbook/product/product-categories/#devops-stages)
* SM: [Self-Managed aka Self-Hosted](/handbook/marketing/strategic-marketing/dot-com-vs-self-managed/#why-you-probably-want-gitlab-saas)
* UPA: [Ultimate Parent Account](/handbook/sales/sales-term-glossary/#additional-customer-definitions)
* xMAU: [x Monthly Active Users](/handbook/product/performance-indicators/#structure/)

### Legend

📊 indicates that the solution is operational and is embedded in the handbook.

🚧 indicates that the solution is in a `Work In Progress` and is actively being developed. When using this indicator, an issue should also be linked from this page.

🐔 indicates that the solution is unlikely to be operationalized in the near term.
