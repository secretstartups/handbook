---

title: "Data Catalog"
description: "The Data Catalog page indexes Analytics Dashboards, Workflows, and Terms."
---







---

# Purpose

The purpose of this **Data Catalog** is to help you understand and make use of the data that is available in our [Snowflake Data Warehouse](/handbook/business-technology/data-team/platform/infrastructure/#system-diagram) for reporting and analysis. Snowflake contains [Data Sources](/handbook/business-technology/data-team/platform/#data-sources) extracted from [Tech Stack Applications](/handbook/business-technology/tech-stack-applications/), then transformed and integrated into the [Trusted Data Model](/handbook/business-technology/data-team/platform/edw/#background) for simple and easy reporting and analysis. Trusted Data Models are expressed using standard [dimensional modeling](https://en.wikipedia.org/wiki/Dimensional_modeling). Reporting and analysis is performed using either SQL run versus Snowflake (UI or Command Line), or using [the Sisense BI Tool](/handbook/business-technology/data-team/platform/sisensecdt/) that connects to Snowflake.

- See [Data Sources](/handbook/business-technology/data-team/platform/#data-sources) for a list of all data sourced into Snowflake. Not all Tech Stack Application Data is sourced into Snowflake, but most critical application data is. If there is data you would like sourced into Snowflake, follow our [New Data Source](/handbook/business-technology/data-team/how-we-work/new-data-source/) guide.
- Refer to the [tech stack YAML file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) for a comprehensive list of all Tech Stack Applications. The YAML file is the SSOT for key application information, such as business owner, technical owner, data classification, and access request process.
- This Data Catalog is organized by the major cross functional workflows and then by the [function and results](/handbook/handbook-usage/#organized-by-function-and-results).

## Important: How Data Extraction, Loading, and Transformation Works

We follow [an ELT approach, not an ETL approach](https://rivery.io/blog/etl-vs-elt/#:~:text=ETL%20transforms%20data%20on%20a,directly%20to%20the%20data%20warehouse.) because the ELT approach gives us more flexibility in storing historical data and transforming it all within Snowflake. Data is stored in different schemas and databases in Snowflake as it progresses through Loading and Transformation Stages. For Data Access and Security reasons, only data surfaced in the `PROD` database is accessible to Sisense. Learn more about our Snowflake Data Storage process design in the [Data Storage guide](/handbook/business-technology/data-team/platform/#data-storage)

- **Extraction and Loading:** We use a variety of tools to extract data from Tech Stack applications and follow the [Extraction Solution decision tree](/handbook/business-technology/data-team/how-we-work/new-data-source/#extraction-solution) to ultimately decide which is the best tool to use for a given data source. The [Pipelines guide](/handbook/business-technology/data-team/platform/pipelines/#background) contains more information about our Extraction processes.

- **Transformation**: [dbt](https://www.getdbt.com/) is used for all in transformations. See our [dbt guide](/handbook/business-technology/data-team/platform/dbt-guide/) for more details on why and how we use this tool. All dbt code is stored in our [Analytics Project](/handbook/business-technology/data-team/platform/#folder-structure-in-analytics-project).

## Sisense Enterprise BI Tool

[Sisense](/handbook/business-technology/data-team/platform/sisensecdt/) is our enterprise standard BI tool. See how Sisense is being used with the [Sisense Usage Overview](https://app.periscopedata.com/app/gitlab/410320/Periscope-Usage!-%F0%9F%93%88?) dashboard.

## Tableau Enterprise BI Tool

We are migrating to [Tableau](/handbook/business-technology/data-team/platform/tableau/) as our Enterprise BI Tool in FY24. During the transition period, we will use both Sisense and Tableau.

### Tableau Production Workbooks Catalog

We used a boring solution for our first iteration of the Tableau production workbooks catalog. The production workbooks with meta data about the workbooks, handbook urls, and workbook urls are contained in YAML files in the [GitLab Tableau Repository](https://gitlab.com/gitlab-data/tableau/-/tree/main/site_gitlab/Production). In a future iteration, we intend to render the contents of the YAML files directly in the Data Catalog to provide a more direct method to access the workbooks. You can access the department or business motion YAML files below.  

1. [go_to_market_production_workbooks.yml](https://gitlab.com/gitlab-data/tableau/-/blob/main/site_gitlab/Production/Go%20To%20Market/go_to_market_production_workbooks.yml)
1. [sales_production_workbooks.yml](https://gitlab.com/gitlab-data/tableau/-/blob/main/site_gitlab/Production/Sales/sales_production_workbooks.yml)
1. [marketing_production_workbooks.yml](https://gitlab.com/gitlab-data/tableau/-/blob/main/site_gitlab/Production/Marketing/marketing_production_workbooks.yml)
1. [finance_production_workbooks.yml](https://gitlab.com/gitlab-data/tableau/-/blob/main/site_gitlab/Production/Finance/finance_production_workbooks.yml)
1. [customer_success_production_workbooks.yml](https://gitlab.com/gitlab-data/tableau/-/blob/main/site_gitlab/Production/Customer%20Success/customer_success_production_workbooks.yml)
1. [people_production_workbooks.yml](https://gitlab.com/gitlab-data/tableau/-/blob/main/site_gitlab/Production/People/people_production_workbooks.yml)

## Lead to Cash Catalog

### Analytics Hubs, Data Guides, and ERDs

The analytics hubs provide links to the current SSOT dashboards for an area of business analysis. The data guides provide solution recipes to develop reporting, insights, and analysis for a business area. The ERDs provide the entity relationships between data objects in the enterprise dimensional model.

<details markdown=1>

<summary><b>Analytics Hubs</b></summary>

- [GTM Analytics Hub](https://app.periscopedata.com/app/gitlab:safe-dashboard/919263/Go-To-Market-Analytics-Hub-v1.0)
- [Marketing Analytics Hub](https://app.periscopedata.com/app/gitlab:safe-intermediate-dashboard/969815/Marketing-Analytics-Hub)
- Sales Analytics Hub `Coming Soon`
- Finance Analytics Hub `Coming Soon`

</details>

<details markdown=1>

<summary><b>Data Guides</b></summary>

- [Data Guide to Customer Master Prototype](/handbook/business-technology/data-team/data-catalog/customer-master/)
- [Data Guide to Finance ARR](/handbook/business-technology/data-team/data-catalog/finance-arr/)
- [Data Guide to Opportunity to Subscription Mapping](/handbook/business-technology/data-team/data-catalog/opportunity_subscription_mapping/)
- [Data Guide to Zuora Revenue Waterfall](/handbook/business-technology/data-team/data-catalog/zuora_revenue_waterfall/)
- [Data Guide to Available to Renew](/handbook/business-technology/data-team/data-catalog/available_to_renew/)
- [Data Guide to Email Marketing Data Mart](/handbook/business-technology/data-team/data-catalog/email-data-mart)
- [Data Guide to Sales Funnel Analysis](/handbook/business-technology/data-team/data-catalog/sales-funnel/)
- [Data Guide to Customer Segmentation](/handbook/business-technology/data-team/data-catalog/customer-segmentation/)

</details>

<details markdown=1>

<summary><b>Entity Relationship Diagrams</b></summary>

[Lead to Cash ERDs](/handbook/business-technology/data-team/platform/edw/#lead-to-cash-erds)

</details>

### dbt Data Lineage Diagrams

These data lineage diagrams illustrate how the data from critical Lead to Cash source tables flow through the Snowflake data models.

<details markdown=1>

<summary><b>Zuora Data Lineages</b></summary>

- [Zuora Account Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.zuora_account_source?g_v=1&g_i=zuora_account_source%2B)
- [Zuora Rate Plan Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.zuora_rate_plan_source?g_v=1&g_i=zuora_rate_plan_source%2B)
- [Zuora Rate Plan Charge Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.zuora_rate_plan_charge_source?g_v=1&g_i=zuora_rate_plan_charge_source%2B)
- [Zuora Subscription Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.zuora_subscription_source?g_v=1&g_i=zuora_subscription_source%2B)
- [Zuora Contact Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.zuora_contact_source?g_v=1&g_i=zuora_contact_source%2B)

</details>

<details markdown=1>

<summary><b>Salesforce Data Lineages</b></summary>

- [Salesforce Opportunity Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.sfdc_opportunity_source?g_v=1&g_i=sfdc_opportunity_source%2B)
- [Salesforce Account Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.sfdc_account_source?g_v=1&g_i=sfdc_account_source%2B)
- [Salesforce Zuora Quote Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.sfdc_zqu_quote_source?g_v=1&g_i=sfdc_zqu_quote_source%2B)
- [Salesforce Zuora Quote Rate Plan Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.sfdc_zqu_quote_rate_plan_source?g_v=1&g_i=%2Bsfdc_zqu_quote_rate_plan_source%2B)
- [Salesforce Zuora Quote Rate Plan Charge Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.sfdc_zqu_quote_rate_plan_charge_source?g_v=1&g_i=sfdc_zqu_quote_rate_plan_charge_source%2B)

</details>

<details markdown=1>

<summary><b>CustomerDot Data Lineages</b></summary>

- [CustomerDot License Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.customers_db_licenses_source?g_v=1&g_i=customers_db_licenses_source%2B)
- [CustomersDot Orders Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.customers_db_orders_source?g_v=1&g_i=customers_db_orders_source%2B)
- [CustomersDot Lead Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.customers_db_leads_source?g_v=1&g_i=customers_db_leads_source%2B)
- [CustomersDot Trial History Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.customers_db_trial_histories_source?g_v=1&g_i=customers_db_trial_histories_source%2B)
- [CustomerDot Versions Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.customers_db_versions_source?g_v=1&g_i=customers_db_versions_source%2B)
- [CustomerDot Customers Source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.customers_db_customers_source?g_v=1&g_i=customers_db_customers_source%2B)

</details>

### dbt Data Dictionaries

These data dictionaries provide definitions for the Lead to Cash fields used in the Snowflake Enterprise Dimensional Data Model.

<details markdown=1>

<summary><b>Lead to Cash Dimensions (Context)</b></summary>

- [dim_billing_account](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_billing_account#columns)
- [dim_subscription](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_subscription#columns)
- [dim_amendment](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_amendment#columns)
- [dim_product_detail](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_product_detail#columns)
- [dim_product_tier](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_product_tier#columns)
- [dim_charge](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_charge#columns)
- [dim_crm_account](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_crm_account#columns)
- [dim_crm_person](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_crm_person#columns)
- [dim_crm_user](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_crm_user#columns)
- [dim_license](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_license#columns)
- [dim_order](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_order#columns)
- [dim_order_action](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_order_action#columns)
- [dim_crm_opportunity](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_crm_opportunity#columns)

</details>

<details markdown=1>

<summary><b>Lead to Cash Facts (Measures)</b></summary>

- [fct_charge](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_charge#columns)
- [fct_mrr](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_mrr#columns)
- [fct_crm_account](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_crm_account#columns)
- [fct_crm_person](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_crm_person#columns)
- [fct_crm_opportunity](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_crm_opportunity#columns)
- [fct_invoice](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_invoice#columns)
- [fct_invoice_item](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_invoice_item#columns)
- [fct_quote](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_quote#columns)
- [fct_quote_item](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_quote_item#columns)

</details>

### Analysis

The analysis section provides references to analytical projects developed by the Functional Analysts teams.

<details markdown=1>

<summary><b>Sales</b></summary>

`Coming soon`

</details>

<details markdown=1>

<summary><b>Marketing</b></summary>

`Coming soon`

</details>

<details markdown=1>

<summary><b>Finance</b></summary>

`Coming soon`

</details>

<details markdown=1>

<summary><b>Data Science and Business Insights</b></summary>


- Propensity to Expand: [Project](https://gitlab.com/gitlab-data/data-science-projects/propensity-to-expand), [Handbook](/handbook/business-technology/data-team/organization/data-science/#revenue-expansion), [Presentation](https://docs.google.com/presentation/d/1Aaf2HzFYrYDPgrZKDHxS9gzep4LHGMlwF5SxYs-her0)
- Propensity to Contract and Churn: [Project](https://gitlab.com/gitlab-data/data-science-projects/propensity-to-contract-and-churn), [Handbook](/handbook/business-technology/data-team/organization/data-science/#loss-prevention), [Presentation](https://docs.google.com/presentation/d/1Gd-GhHhWHHc1N8zJtLGKtNF4W2T9d82Sv_fZ_j2236U/edit#slide=id.g29a70c6c35_0_68)
- Propensity to Purchase: [Project](https://gitlab.com/gitlab-data/data-science-projects/propensity-to-purchase), [Handbook](/handbook/business-technology/data-team/organization/data-science/#conversion), [Trails Presentation](https://docs.google.com/presentation/d/1EyS9Wq6F0qlQwt5sj7x8VnSSGD1vIy3AcSpMGddZdbk/edit#slide=id.g12e25a29994_0_0), [Free Presentation](https://docs.google.com/presentation/d/1UNfthItOOfT3L4v5PkZh4z4hVPKdCcn8aQg_raVflxg/edit#slide=id.g12e25a29994_0_0)
- [2021-10-01 SAO Analysis](https://docs.google.com/presentation/d/1kmkmSRoAC7-CyNRzLc3vmH8NE-Abn6A-X6Z2JstCk1I/edit?usp=sharing)
- [2022-01-10 Free Account conversion to First-Order Closed Won](https://docs.google.com/presentation/d/1_kNZww2gEBlMINa67PXpkhllHsU16mVzo_dM0Qx8d14/edit#slide=id.gedf1d4ec40_0_0)

</details>

## Product Release to Adoption Catalog

### Analytics Hubs, Data Guides, and ERDs

The analytics hubs provide links to the current SSOT dashboards for an area of business analysis. The data guides provide solution recipes to develop reporting, insights, and analysis for a business area. The ERDs provide the entity relationships between data objects in the enterprise dimensional model.

<details markdown=1>

<summary><b>Analytics Hubs</b></summary>

- [Engineering Analytics Hub](https://app.periscopedata.com/app/gitlab/1052283/)
- [Product Analytics Hub](https://app.periscopedata.com/app/gitlab/1052689/Product-Analytics-Hub)

</details>

<details markdown=1>

<summary><b>Data Guides</b></summary>

- [Data Guide to Namespace Analysis](/handbook/business-technology/data-team/data-catalog/namespace/)
- [Data Guide to Self-Managed Analysis](/handbook/business-technology/data-team/data-catalog/self-managed/)
- [Data Guide to XMAU Analysis](/handbook/business-technology/data-team/data-catalog/xmau-analysis/)
- [Data Guide to Self-Managed Estimation Methodology](/handbook/business-technology/data-team/data-catalog/xmau-analysis/estimation-xmau-algorithm.html)
- [Data Guide to Product Usage Data](/handbook/business-technology/data-team/data-catalog/product-usage-data/)
- [Data Guide to SaaS Product Events](/handbook/business-technology/data-team/data-catalog/saas-product-events-data/)
- [Data Guide to CI Runner Activity](/handbook/business-technology/data-team/data-catalog/ci-runner-activity/)
- [Data Guide to Manual Usage Data Upload Process](/handbook/business-technology/data-team/data-catalog/manual-data-upload/)
- [Data Guide to MR Rate](https://about.gitlab.com/handbook/engineering/performance-indicators/#engineering-mr-rate)
- [Data Guide to Product Geolocation](/handbook/business-technology/data-team/data-catalog/product-geolocation/)
- [Data Guide to Pricing Analysis](/handbook/business-technology/data-team/data-catalog/pricing/)
- [Data Guide to Service Data Inspector](/handbook/business-technology/data-team/data-catalog/service-data-inspector/)
- [Data Guide to SaaS Service Ping Automation](/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/)
- [Data Guide for Adding Service Ping Metrics to Gainsight](/handbook/business-technology/data-team/data-catalog/gainsight-metrics/)

</details>

<details markdown=1>

<summary><b>Entity Relationship Diagrams</b></summary>

[Product Release to Adoption ERDs](/handbook/business-technology/data-team/platform/edw/#product-release-to-adoption-erds)

</details>

### dbt Data Lineage Diagrams

These data lineage diagrams illustrate how the data from critical Release to Adoption source tables flow through the Snowflake data models.

<details markdown=1>

<summary><b>Release to Adoption Data Lineage Diagrams</b></summary>

`Coming Soon`

</details>

### dbt Data Dictionaries

These data dictionaries provide definitions for the Release to Adoption fields used in the Snowflake Enterprise Dimensional Data Model.

<details markdown=1>

<summary><b>Release to Adoption Dimensions (Context)</b></summary>

- [dim_ping_instance](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_ping_instance#columns)
- [dim_ping_metric](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_ping_metric#columns)
- [dim_installation](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_installation#columns)
- [dim_gitlab_releases](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_gitlab_releases#columns)
- [dim_user](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_user#columns)
- [dim_namespace](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_namespace#columns)
- [dim_project](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_project#columns)
- [dim_ci_build](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_ci_build#columns)
- [dim_ci_pipeline](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_ci_pipeline#columns)
- [dim_ci_runner](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_ci_runner#columns)
- [dim_ci_stage](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_ci_stage#columns)
- [dim_epic](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_epic#columns)
- [dim_issue](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_issue#columns)
- [dim_issue_links](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_issue_links#columns)
- [dim_merge_request](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_merge_request#columns)
- [dim_note](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_note#columns)

</details>

<details markdown=1>

<summary><b>Release to Adoption Facts (Measures)</b></summary>

- [fct_event](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_event#columns)
- [fct_event_valid](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_event_valid#columns)
- [fct_event_user_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_event_user_daily#columns)
- [fct_event_namespace_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_event_namespace_daily#columns)
- [fct_event_namespace_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_event_namespace_monthly#columns)
- [fct_ping_instance](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance#columns)
- [fct_ping_instance_metric](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance_metric#columns)
- [fct_ping_instance_metric_7_day](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance_metric_7_day#columns)
- [fct_ping_instance_metric_28_day](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance_metric_28_day#columns)
- [fct_ping_instance_metric_all_time](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance_metric_all_time#columns)
- [fct_ping_instance_metric_none_null](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance_metric_none_null#columns)
- [fct_ping_instance_metric_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance_metric_monthly#columns)
- [fct_ping_instance_metric_weekly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ping_instance_metric_weekly#columns)
- [fct_ci_runner_activity](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ci_runner_activity#columns)
- [fct_usage_ci_minutes](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_usage_ci_minutes#columns)
- [fct_usage_storage](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_usage_storage#columns)

</details>

### Analysis

The analysis section provides references to analytical projects developed by the Functional Analysts teams.

<details markdown=1>

<summary><b>Product Data Insights</b></summary>

- [Collection of Dashboards, Analysis, & Insights](/handbook/product/product-analysis/dashboards-analysis-insights/)
- [PDI Data Model Cheat Sheet](/handbook/product/product-analysis/data-model-cheat-sheet/)
- [PDI Crash Course for Product Stage Resources](/handbook/product/product-analysis/crash-course/)
- [PDI Experimentation Design & Analysis](/handbook/product/product-analysis/experimentation/)
- [FY22-Q1 Growth Team KPI Review](https://docs.google.com/presentation/d/1VX85L9UTD7PQbb_aPJolqhRkq2KE7r8up2dSOzWNTeo/edit#slide=id.gdd1aebac8e_0_0)
- [2021-08 Customer Centric Product Insights](https://docs.google.com/presentation/d/10soQFzNH6dguVMIuzsd8b8ODmyDyycxU1dyefUTODqk/edit#slide=id.gcf1e8c1d1f_7_180)
- [2021-08 Experimentation Workshop](https://docs.google.com/presentation/d/1nmStWChWkYad9K-dced9wS4jS7XLIrHB-WKafc7jrMU/edit#slide=id.gca4c496ea4_0_0)

</details>

<details markdown=1>

<summary><b>Customer Success</b></summary>

- Account IQ (`Coming Soon`)

</details>

<details markdown=1>

<summary><b>Engineering</b></summary>

`Coming Soon`

</details>


## Team Member Catalog

### Analytics Hubs, Data Guides, and ERDs

The analytics hubs provide links to the current SSOT dashboards for an area of business analysis. The data guides provide solution recipes to develop reporting, insights, and analysis for a business area. The ERDs provide the entity relationships between data objects in the enterprise dimensional model.

<details markdown=1>

<summary><b>Analytics Hubs</b></summary>

- [People Analytics Hub](https://app.periscopedata.com/app/gitlab/1104972/People-Analytics-Hub)

</details>

<details markdown=1>

<summary><b>Data Guides</b></summary>

- [People Analytics Data Guide](/handbook/people-group/people-ops-tech-analytics/people-analytics/data-guide/)

</details>

<details markdown=1>

<summary><b>Entity Relationship Diagrams</b></summary>

[Team Member ERDs](/handbook/business-technology/data-team/platform/edw/#team-member-erds)

</details>

### dbt Data Lineage Diagrams

These data lineage diagrams illustrate how the data from critical Team Member source tables flow through the Snowflake data models.

<details markdown=1>

<summary><b>Team Member Data Lineage Diagrams</b></summary>

`Coming Soon`

</details>

### dbt Data Dictionaries

These data dictionaries provide definitions for the Team Member fields used in the Snowflake Enterprise Dimensional Data Model.

<details markdown=1>

<summary><b>Team Member Data Dictionaries</b></summary>

`Coming Soon`

</details>

### Analysis

The analysis section provides references to analytical projects developed by the Functional Analysts teams.

<details markdown=1>

<summary><b>People Group</b></summary>

`Coming Soon`

</details>


## Central Data Team Catalog

### Analytics Hubs, Data Guides, and ERDs

The analytics hubs provide links to the current SSOT dashboards for an area of business analysis. The data guides provide solution recipes to develop reporting, insights, and analysis for a business area. The ERDs provide the entity relationships between data objects in the enterprise dimensional model.

<details markdown=1>

<summary><b>Analytics Hubs</b></summary>

- Central Data Team Analytics Hub `Coming Soon`
- [Sisense Usage and Adoption](https://app.periscopedata.com/app/gitlab/topic/Sisense-Maintenance/abde7717743143098ac071be8c646bdb)
- [Trusted Data Health](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

</details>

<details markdown=1>

<summary><b>Data Guides</b></summary>

`Coming Soon`

</details>

<details markdown=1>

<summary><b>Entity Relationship Diagrams</b></summary>

`Coming Soon`

</details>

### dbt Data Lineage Diagrams

These data lineage diagrams illustrate how the data from critical Team Member source tables flow through the Snowflake data models.

<details markdown=1>

<summary><b>Central Data Lineage Diagrams</b></summary>

`Coming Soon`

</details>

### dbt Data Dictionaries

These data dictionaries provide definitions for the Team Member fields used in the Snowflake Enterprise Dimensional Data Model.

<details markdown=1>

<summary><b>Central Data Dictionaries</b></summary>

`Coming Soon`

</details>

### Analysis

The analysis section provides references to analytical projects developed by the Central Data Team.

<details markdown=1>

<summary><b>Central Data Team</b></summary>

`Coming Soon`

</details>




# Metrics and Terms Index

- [Sales Term Glossary](https://about.gitlab.com/handbook/sales/sales-term-glossary/)
- ARR: [Annual Recurring Revenue](https://about.gitlab.com/handbook/sales/sales-term-glossary/arr-in-practice/)
- ATR: Available To Renew
- CAC: Customer Acquisition Cost
- LTV: *customer* LifeTime Value
- [Namespace](https://docs.gitlab.com/ee/user/group/#namespaces)
- NDR: [Net Dollar Retention](https://about.gitlab.com/handbook/customer-success/vision/#retention-gross--net-dollar-weighted)
- PQL: [Product Qualified Lead](/handbook/product/product-principles/#product-qualified-leads-pqls)
- [Product Stage](/handbook/product/categories/#devops-stages)
- SM: [Self-Managed aka Self-Hosted](/features/)
- UPA: Ultimate Parent Account
- xMAU: [x Monthly Active Users](/handbook/product/performance-indicators/#structure/)

# Legend

📊 indicates that the solution is operational and is embedded in the handbook.

🚧 indicates that the solution is in a `Work In Progress` and is actively being developed. When using this indicator, an issue should also be linked from this page.

🐔 indicates that the solution is unlikely to be operationalized in the near term.
