---
layout: handbook-page-toc
title: "CI Runner Activity"
---

## On this page
- TOC
{:toc}

{::options parse_block_html="true" /}

---
## CI Runner Activity

Today we don't have a way to tie cost directly to CI usage without making assumptions. This method is not scalable, and will likely not work in near future, so a better solution is needed.

For this purpose, a Unified model for CI Minutes/Cost has been created as a part of Enterprise Dimensional Model that ties the cost from app usage table (postgres) to gcp_billing and labels our runners in GCP with job_id labels to join to ci_builds table.

### Business Use Cases/Example KPIs:

- Cost of All CI Pipelines run in gitlab-org-gitlab project in January 2021
- Average Cost per pipeline for all GitLab.com CI usage
- Count of CI pipelines run by namespace X last month
- Count and Cost of CI minutes run in project X over past year.

In the future, we plan on adding support for the following use cases:
- Tracking of stage adoption by a customer and eventually teams for ROI and maturity. This will also act as insight to progress against the customer success plan objectives.
- Driving digital engagement (i.e., actions and content) based on utilization, customer lifecycle phase and engagement (i.e., time-to-value).

### Key Field Descriptions

- CI Build ID 
    - Sets granularity level of table at level of 1 GitLab job that runs (ci_builds table)
- CI Build Duration 
    - Currently calculated from start time -> end time of single job in ci_builds table   
- Runner type 
    - Determines whether GitLab pays for the runner cost or if it's hosted by user (ci_runners table)
- Project ID
    - Determines what project runner activity linked to and all related info
- Namespace id
    - Determines subscription and if usage is internal or not
- User ID
    - Determines user that ran the job

### Table Join Details

Most of these fields can be source from gitlab_dotcom_ci_builds, and related tables are linked to ci_builds as:
- ci_runners: gitlab_dotcom_ci_builds.ci_build_runner_id -> gitlab_dotcom_ci_runners.runner_id
- ci_stages: gitlab_dotcom_ci_builds.ci_build_stage_id -> gitlab_dotcom_ci_stages.ci_stage_id
    - ci_pipelines: gitlab_dotcom_ci_stages.pipeline_id -> gitlab_dotcom_ci_pipelines.ci_pipeline_id
- projects: gitlab_dotcom_ci_builds.ci_build_project_id -> gitlab_dotcom_projects_xf.project_id
    - namespace: gitlab_dotcom_projects_xf.namespace_id -> gitlab_dotcom_namespaces_xf.namespace_id
- users: gitlab_dotcom_ci_builds.ci_build_user_id -> gitlab_dotcom_users_xf.user_id

### Sources of Data

Data is sourced from GitLab.com.
    
#### Entity Relationship Diagrams, Data Flows and Table Definitions

| Diagram/Entity                                                                                              | Grain | Purpose | Keywords |
| ------------------------------------------------------------------------------------------------------------| ----- | ------- | -------- |
| [Product Usage Data ERD](https://lucid.app/lucidchart/232217df-3928-4756-bab5-ff5d9e9f8e1d/view?page=AD~qmCVo1T~c#) |  All of the below | Shows all table structures, including column name, column data type, column constraints, primary key, foreign key, and relationships between tables.| Customer, Usage Ping, Subscription, Seat Link, Self- Managed, SaaS, Product, Delivery, Accounts |

## Self-Service Capabilities

The data solution delivers three [Self-Service Data](/handbook/business-technology/data-team/direction/self-service/) capabilities:

1. **Gainsight Users**:  Self-Managed product usage data is now avilable within Gainsight, enabling Gainsight users to  create specific workflows, visualize trends, build customer health scorecards, and review use case adoption strategies. The [Using Product Usage Data in Gainsight](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/) a full guide.
1. **Dashboard Developer**: A new Sisense data model containing the complete dimensional model components to build new dashboards and link existing dashboards to Customer Product Adoption Data.
1. **SQL Developer**: A [Enterprise Dimensional Model](https://lucid.app/lucidchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19/view?page=B47EyN20O.G6#) subject area. Refer to the `R2A Objects` tab.

### Data Platform Components

From a Data Platform technology perspective, the solution delivers:

1. Gainsight Data Pump - EDW to Gainsight and Gainsight to EDW
1. An extension to the Enterprise Dimensional Model for Product Usage data
1. Testing and data validation extensions to the Data Pipeline Health dashboard
1. ERDs, dbt models, and related platform components





### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://about.gitlab.com/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Product Usage Data in Gainsight</a>
  <a href="https://about.gitlab.com/handbook/customer-success/tam/gainsight/#access-via-salesforce" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Using Gainsight within Customer Success</a>
  <a href="https://app.periscopedata.com/app/gitlab/803470/WIP:-Customer-Product-Adoption-Dashboard" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">WIP: Customer Product Adoption Dashboard</a>
  <a href="https://forms.gle/9E9GBFhzFViCnB9q7" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">WIP: Product Usage Data - Knowledge Assessment</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started using Sisense Discovery</a>
   <a href="https://www.youtube.com/watch?v=Fdl6mdlp1-Y&amp;feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Self Service Walk-through Video</a>
</div>
<br><br><br><br><br><br><br><br><br>

### Data Security Classification

Much of the data within and supporting the Product Usage Data is [Orange](/handbook/engineering/security/data-classification-standard.html#orange) or [Yellow](/handbook/engineering/security/data-classification-standard.html#yellow). This includes ORANGE customer metadata from the account, contact data from Salesforce and Zuora and GitLab's Non public financial information, all of which shouldn't be publicly available. Care should be taken when sharing data from this dashboard to ensure that the detail stays within GitLab as an organization and that appropriate approvals are given for any external sharing. In addition, when working with row or record level customer metadata care should always be taken to avoid saving any data on personal devices or laptops. This data should remain in [Snowflake](/handbook/business-technology/data-team/platform/#data-warehouse) and [Sisense](/handbook/business-technology/data-team/platform/periscope/) and should ideally be shared only through those applications unless otherwise approved.

  
**ORANGE**

- Description: Customer and Personal data at the row or record level.
- Objects:
  - `dim_crm_account`
  - `dim_billing_account`
  - `dim_ip_to_geo`
  - `dim_location`

**YELLOW**

- Description: GitLab Financial data, which includes aggregations or totals.
- Objects:
  - `dim_subscriptions`
  - `prep_recurring_charge`

### Solution Ownership

- Source System Owner:
    - Usage Ping: `@jfarris`
    - Salesforce: `@jbrennan1`
- Source System Subject Matter Expert:
    - Usage Ping: `@jfarris`
    - Gainsight:  `@jbeaumont`
    - Salesforce: `@jbrennan1`
- Data Team Subject Matter Expert: `@rparker` `@snalamaru`

### Key Terms

1. [Customer](/handbook/sales/sales-term-glossary/#customer)
1. [Usage Ping](https://docs.gitlab.com/ee/development/usage_ping/)
1. [GitLab Self-Managed Subscription](https://docs.gitlab.com/ee/subscriptions/self_managed)
1. [GitLab SaaS subscription](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#gitlab-saas-subscription)
1. [Seat Link](https://docs.gitlab.com/ee/subscriptions/self_managed/#seat-link)
1. [Product Category, Product Tier, Delivery](/handbook/marketing/strategic-marketing/tiers/#overview)
1. [Version Check](/handbook/sales/process/version-check/)
1. Billable Members: [API](https://docs.gitlab.com/ee/api/members.html#list-all-billable-members-of-a-group), [Definition](https://docs.gitlab.com/ee/subscriptions/self_managed/#billable-users), EDM Field Name: `billable_user_count`
1. Active Users: [Customer Docs](https://docs.gitlab.com/ee/user/admin_area/index.html#users-statistics), [Metric Dictionary](https://docs.gitlab.com/ee/development/usage_ping/dictionary.html#active_user_count), EDM Field Name: `active_user_count`

### Key Metrics, KPIs, and PIs

1. [Data Mart - Metric Definitions](https://docs.google.com/spreadsheets/d/1EhSXqx6YXcpqHg2TpS0ZN5Rk_d2hhrTPrW5FTbmuZjw/edit#gid=0)
1. [Event-based Metrics](https://docs.gitlab.com/ee/development/usage_ping/dictionary.html)
1. [User-based Metrics](https://docs.gitlab.com/ee/development/usage_ping/dictionary.html)
1. [Stage and Group Performance Indicators](https://about.gitlab.com/handbook/product/stage-and-group-performance-indicators/)
1. [ARR](https://about.gitlab.com/handbook/sales/sales-term-glossary/)


### Metric Formats

1. **User-based metrics**: # of users who performed an action/event
   - Last 28 days
   - Last 7 days
     - Example: "# of users who completed a merge request in the last 28 days"
1. **Event-based metrics**: # of [actions performed]
1. **Total counts** # of [events/attributes/users]
   1. Example: "# of runners" or "# of auto_devops_enabled projects"
1. **Indicator Metrics**: Whether an attribute is true or false
   1. Example: "Whether shared runners are enabled or not"
1. **Power user metrics**: # of users who did this action, and this action, and that action


## Self-Service Data Solution

### Self-Service Dashboard Developer

A great way to get started building charts in Sisense is to watch this 10 minute [Data Onboarding Video](https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be) from Sisense. After you have built your dashboard, you will want to be able to easily find it again. Topics are a great way to organize dashboards in one place and find them easily. You can add a topic by clicking the `add to topics` icon in the top right of the dashboard. A dashboard can be added to more than one topic that it is relevant for. Some topics include Finance, Marketing, Sales, Product, Engineering, and Growth to name a few.

### Self-Service SQL Developer

#### Key Fields and Business Logic

- The Product Usage data sourced from GitLab SaaS and GitLab Self-Managed customer deployments is fed into the Enterprise Data Warehouse on a regular basis to be consumed by Gainsight and Salesforce.
- We utilize Usage Ping to derive self-managed customer usage data. Self-Managed customer product usage data is largely contained in the self-contained Usage Ping packets.
- The SaaS Customer Product Usage Data is rebuilt using source database tables.
- The Seat Link data encompasses license utilization data for all customers, regardless of type (self-managed or SaaS).
- The Aggregated metrics are collected in 7 and 28 day time frames are added into Usage Ping payload under the aggregated_metrics sub-key in the counts_weekly and counts_monthly top level keys.
- Aggregated metrics for all time frame are present in the count top level key, with the aggregate_ prefix added to their name.
- The underlying tables for Gainsight's consumption are built on the set of all Zuora subscriptions that are associated with a Self-Managed rate plans. Seat Link data from Customers DB is combined with high priority Usage Ping metrics to build out the set of facts included in this table.Tthe most recently received and the latest Usage Ping (by created_at date for a given subscription_id) and Seat Link (by dim_subscription_id) payload from each month are reported.





#### Reference SQL

| Snippet Library                                                                                                            | Description |
| -------------------------------------------------------------------------------------------------------------------------- | -------- |
| |  |

## Data Platform Solution

### Gainsight Data Pump



#### EDW to Gainsight Data Pump:

The Data Team has leveraged the native capabilities in Gainsight to read data from the Snowflake Enterprise Data Warehouse. The Data Team has build a read-only mart-level table for Gainsight to access and it will contain all of the data currently available. Over time as the Data Team adds more metrics or customer segments, this table will automatically be refreshed with the additional data. This “interface” is called the `Gainsight Data Pump`.

#### Gainsight to Snowflake Data Pipeline:

The Data Team to develop a new source data pipeline from Gainsight into Snowflake to include new custom objects and data created in Gainsight to increase the usage ping match rate, among other improvements.

The diagram [Product Usage data developemental Streams](https://lucid.app/lucidchart/232217df-3928-4756-bab5-ff5d9e9f8e1d/view?page=UJ-bqxNqcUw2#)
illustrates our development approach for managing the delivery of Self-Managed and SaaS Product Usage to Gainsight.

## Trusted Data Solution

See overview at [Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

Kindly refer the [dbt guide examples](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) for
details and examples on implementing further tests.

