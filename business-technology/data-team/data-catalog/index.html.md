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

# Purpose

The purpose of this **Data Catalog** is to help you understand and make use of the data that is available in our [Snowflake Data Warehouse](https://about.gitlab.com/handbook/business-technology/data-team/platform/infrastructure/#system-diagram) for reporting and analysis. Snowflake contains [Data Sources](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-sources) extracted from [Tech Stack Applications](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/), then transformed and integrated into the [Trusted Data Model](https://about.gitlab.com/handbook/business-technology/data-team/platform/edw/#background) for simple and easy reporting and analysis. Trusted Data Models are expressed using standard [dimensional modeling](https://en.wikipedia.org/wiki/Dimensional_modeling). Reporting and analysis is performed using either SQL run versus Snowflake (UI or Command Line), or using [the Sisense BI Tool](https://about.gitlab.com/handbook/business-technology/data-team/platform/periscope/) that connects to Snowflake.

- See [Data Sources](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-sources) for a list of all data sourced into Snowflake. Not all Tech Stack Application Data is sourced into Snowflake, but most critical application data is. If there is data you would like sourced into Snowflake, follow our [New Data Source](https://about.gitlab.com/handbook/business-technology/data-team/how-we-work/new-data-source/) guide.
- Refer to the [tech stack YAML file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) for a comprehensive list of all Tech Stack Applications. The YAML file is the SSOT for key application information, such as business owner, technical owner, data classification, and access request process.
- This Data Catalog is organized by [function and results](https://about.gitlab.com/handbook/handbook-usage/#organized-by-function-and-results), with a separate section focusing on cross-functional analysis.

## Important: How Data Extraction, Loading, and Transformation Works

We follow [an ELT approach, not an ETL approach](https://rivery.io/blog/etl-vs-elt/#:~:text=ETL%20transforms%20data%20on%20a,directly%20to%20the%20data%20warehouse.) because the ELT approach gives us more flexibility in storing historical data and transforming it all within Snowflake. Data is stored in different schemas and databases in Snowflake as it progresses through Loading and Transformation Stages. For Data Access and Security reasons, only data surfaced in the `PROD` database is accessible to Sisense. Learn more about our Snowflake Data Storage process design in the [Data Storage guide](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-storage)

- **Extraction and Loading:** We use a variety of tools to extract data from Tech Stack applications and follow the [Extraction Solution decision tree](https://about.gitlab.com/handbook/business-technology/data-team/how-we-work/new-data-source/#extraction-solution) to ultimately decide which is the best tool to use for a given data source. The [Pipelines guide](https://about.gitlab.com/handbook/business-technology/data-team/platform/pipelines/#background) contains more information about our Extraction processes.

- **Transformation**: [dbt](https://www.getdbt.com/) is used for all in transformations. See our [dbt guide](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/) for more details on why and how we use this tool. All dbt code is stored in our [Analytics Project](https://about.gitlab.com/handbook/business-technology/data-team/platform/#folder-structure-in-analytics-project).


## Definitive Guides

* [Definitive Guide to Namespace Analysis](/handbook/business-technology/data-team/data-catalog/namespace/) 
* [Definitive Guide to Self-Managed Analyis](/handbook/business-technology/data-team/data-catalog/self-managed/)
* [Definitive Guide to XMAU Analysis](/handbook/business-technology/data-team/data-catalog/xmau-analysis/)

## [GTM Analytics Hub](https://app.periscopedata.com/app/gitlab:safe-dashboard/919263/Go-To-Market-Analytics-Hub-v1.0)

- [Marketing Analytics Hub](https://app.periscopedata.com/app/gitlab:safe-intermediate-dashboard/969815/Marketing-Analytics-Hub)
- Sales Analytics Hub `Coming Soon`

## R&D Analytics Hub 

- [Engineering Analytics Hub](https://app.periscopedata.com/app/gitlab/1052283/)
- [Product Analytics Hub](https://app.periscopedata.com/app/gitlab/1052689/Product-Analytics-Hub)

## G&A Analytics Hub 

- People Analytics Hub `Coming Soon`
- Finance Analytics Hub `Coming Soon`

## Snowflake Dimensional Models

### Product 

* [Product Usage Data](/handbook/business-technology/data-team/data-catalog/product-usage-data/)
* [SaaS Product Events](/handbook/business-technology/data-team/data-catalog/saas-product-events-data/)
* [CI Runner Activity](/handbook/business-technology/data-team/data-catalog/ci-runner-activity/) 

## Sisense Dashboards

[Sisense](https://about.gitlab.com/handbook/business-technology/data-team/platform/periscope/) is our enterprise standard BI tool. See how Sisense is being used with the [Sisense Usage Overview](https://app.periscopedata.com/app/gitlab/410320/Periscope-Usage!-%F0%9F%93%88?) dashboard.

# Marketing

## Dashboards

* [TD: Marketing Data Mart](/handbook/business-technology/data-team/data-catalog/email-data-mart)
* [TD: SDR Performance Dashboard](https://app.periscopedata.com/app/gitlab/894285/TD-SDR-Performance-Dashboard---V1.0)

## Analytics Projects

* [2021-10-01 SAO Analysis](https://docs.google.com/presentation/d/1kmkmSRoAC7-CyNRzLc3vmH8NE-Abn6A-X6Z2JstCk1I/edit?usp=sharing)
* [2022-01-10 Free Account conversion to First-Order Closed Won](https://docs.google.com/presentation/d/1_kNZww2gEBlMINa67PXpkhllHsU16mVzo_dM0Qx8d14/edit#slide=id.gedf1d4ec40_0_0)

# Sales

## Dashboards

* [TD: Customer Segmentation](/handbook/business-technology/data-team/data-catalog/customer-segmentation/)
* [TD: Sales Funnel](/handbook/business-technology/data-team/data-catalog/sales-funnel/)
* [Manual Usage Data Upload Process](/handbook/business-technology/data-team/data-catalog/manual-data-upload/)

## Analytics Projects

* Propensity to Expand: [Project](https://gitlab.com/gitlab-data/propensity-to-buy), [Handbook](/handbook/business-technology/data-team/organization/data-science/#projects), [Presentation](https://docs.google.com/presentation/d/1Aaf2HzFYrYDPgrZKDHxS9gzep4LHGMlwF5SxYs-her0)
* Propensity to Contract and Churn: [Project](https://docs.google.com/presentation/d/1Gd-GhHhWHHc1N8zJtLGKtNF4W2T9d82Sv_fZ_j2236U/edit#slide=id.g29a70c6c35_0_68), [Handbook](/handbook/business-technology/data-team/organization/data-science/#projects), [Presentation](https://docs.google.com/presentation/d/1Gd-GhHhWHHc1N8zJtLGKtNF4W2T9d82Sv_fZ_j2236U/edit#slide=id.g29a70c6c35_0_68)

# Finance

## Dashboards

* [TD: Finance ARR](/handbook/business-technology/data-team/data-catalog/finance-arr/)
* [Opportunity to Subscription Mapping](/handbook/business-technology/data-team/data-catalog/opportunity_subscription_mapping/)
* [Zuora Revenue Waterfall](/handbook/business-technology/data-team/data-catalog/zuora_revenue_waterfall/)
* [TD: Available to Renew](/handbook/business-technology/data-team/data-catalog/available_to_renew/)

# Product

## Dashboards

* [TD: Product Geolocation](/handbook/business-technology/data-team/data-catalog/product-geolocation/)
* [TD: Pricing Analysis](/handbook/business-technology/data-team/data-catalog/pricing/)
* [TD: Service Data Inspector](/handbook/business-technology/data-team/data-catalog/service-data-inspector/)

## Data Models and Processes

* [Product Usage Data](/handbook/business-technology/data-team/data-catalog/product-usage-data/)
* [SaaS Service Ping](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/)
* [SaaS Product Events](/handbook/business-technology/data-team/data-catalog/saas-product-events-data/)
* [CI Runner Activity](/handbook/business-technology/data-team/data-catalog/ci-runner-activity/) 
* [Namespace Data](/handbook/business-technology/data-team/data-catalog/namespace/) 

## Analytics Projects

* [2020-12 Product Analytics Offsite](https://docs.google.com/presentation/d/1y9iTbHBNSCoq26Wxb0MnGAP7vlcPdAG5Ehigsyr3Hpw/edit#slide=id.g29a70c6c35_0_68)

# Growth

## Dashboards

* [XMAU Analysis](/handbook/business-technology/data-team/data-catalog/xmau-analysis/)
* [Growth Dashboards](/direction/growth/#dashboards)
* [Junkmail Domain Analysis](https://app.periscopedata.com/app/gitlab:safe-dashboard/939155/Growth:Conversion-SaaS-PII-Trial-Analysis)

## Analytics Projects

* [FY22-Q1 Growth Team KPI Review](https://docs.google.com/presentation/d/1VX85L9UTD7PQbb_aPJolqhRkq2KE7r8up2dSOzWNTeo/edit#slide=id.gdd1aebac8e_0_0)
* [2021-08 Customer Centric Product Insights](https://docs.google.com/presentation/d/10soQFzNH6dguVMIuzsd8b8ODmyDyycxU1dyefUTODqk/edit#slide=id.gcf1e8c1d1f_7_180)
* [2021-08 Experimentation Workshop](https://docs.google.com/presentation/d/1nmStWChWkYad9K-dced9wS4jS7XLIrHB-WKafc7jrMU/edit#slide=id.gca4c496ea4_0_0)
* [2021-08 Stage:Secure Adoption and Conversion Analysis](https://docs.google.com/presentation/d/1bbvfsNzKoZw4kCYB9coexiXzPiLZ5E3XPe6hOsbZlag/edit#slide=id.g29a70c6c35_0_68)
* [2021-08 Namespace Conversion Analysis](https://docs.google.com/presentation/d/10soQFzNH6dguVMIuzsd8b8ODmyDyycxU1dyefUTODqk/edit#slide=id.gcf1e8c1d1f_7_180)
* [2021-08 SSO Login Deep Dive Analysis](https://docs.google.com/presentation/d/1j66MejLh8uKhUDUkSVIhPLI79M1LtbgCSxuvJKzRRaI/edit#slide=id.p)
* [2021-10 SpO Retention Analysis](https://docs.google.com/presentation/d/1RR5qwaE2E2OUtfSgU53GMs8FHjexNx2CFJcUbtiNS-0/edit#slide=id.g29a70c6c35_0_68)
* [Growth Insights](/direction/growth/#insights)
* [Concluded Growth Experiments](/direction/growth/#growth-experiments-knowledge-base---concluded-experiments)
* [FY22-Q3 xMAU Estimation Exploration](https://docs.google.com/presentation/d/1ifKhhGw2rWF33g22n42bdD6Yqq6m3o_djqxo6qvJVoo/edit#slide=id.gf7594bb92d_0_190)

# Customer Success

* Account IQ (url to be included)

# Engineering

* [MR Rate](/handbook/engineering/performance-indicators/#engineering-mr-rate)

# People

## Dashboards

* [People Analytics Overview](/handbook/people-group/people-ops-tech-analytics/people-analytics/)
* [PTO By Roots (Slack)](/handbook/business-technology/data-team/data-catalog/people-analytics/pto/pto.html)
* [People Key Metrics](/handbook/business-technology/data-team/data-catalog/people_key_metrics_dashboard/)
* [People KPI Deck](/handbook/business-technology/data-team/data-catalog/people-analytics/people_kpi_deck.html)
* [Promotions Report](/handbook/business-technology/data-team/data-catalog/people-analytics/promotions_report.html)
* [Talent Acquisition Metrics](/handbook/business-ops/data-team/data-catalog/people-analytics/talent_acquisition-metrics.html)
* [People Metrics - Data Discovery in Sisense Dashboard](https://app.periscopedata.com/app/gitlab/831245/People-Data-Discovery-Feature)

# Data Team

## Dashboards

* [Sisense Usage and Adoption](https://app.periscopedata.com/app/gitlab/topic/Sisense-Maintenance/abde7717743143098ac071be8c646bdb)
* [Trusted Data Health](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

# Metrics and Terms Index

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

# Legend

📊 indicates that the solution is operational and is embedded in the handbook.

🚧 indicates that the solution is in a `Work In Progress` and is actively being developed. When using this indicator, an issue should also be linked from this page.

🐔 indicates that the solution is unlikely to be operationalized in the near term.
