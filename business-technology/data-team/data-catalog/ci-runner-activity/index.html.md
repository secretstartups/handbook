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
    
### Related Data Artifacts

The Data Team maintains these Data artifcats related to CI Runner Activity :

- **ERD**
    - The [CI Runner Activity Physical Data Model](https://lucid.app/lucidchart/fe967fe7-5cb8-4a83-96f6-17ba824275b9/edit?beaconFlowId=3414471839151653&invitationId=inv_2c1487d9-d40c-4cda-b983-198344a56a7d&page=csqmM_lDyM2l#) shows all table structures, including column name, column data type, column constraints, primary key, foreign key, and relationships between tables that are used for the data.

<br>
- **Data Fow Diagram**
   - The [CI Runner Activity Data Flow diagram](https://lucid.app/lucidchart/fe967fe7-5cb8-4a83-96f6-17ba824275b9/edit?beaconFlowId=3414471839151653&page=0_0&invitationId=inv_2c1487d9-d40c-4cda-b983-198344a56a7d#) provides a high level overviw of how the Data flows in to the `fact model` - [fct_ci_runner_activity](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ci_runner_activity) and `Mart models` - [mart_ci_runner_activity_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ci_runner_activity_daily) and [mart_ci_runner_activity_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ci_runner_activity_monthly) from `Prep/Intermediate` and other `Dimension` tables. 
<br>

- **Table Definitions**



## Self-Service Capabilities

The data solution delivers three [Self-Service Data](/handbook/business-technology/data-team/direction/self-service/) capabilities:

1. **Gainsight Users**:  Self-Managed product usage data is now avilable within Gainsight, enabling Gainsight users to  create specific workflows, visualize trends, build customer health scorecards, and review use case adoption strategies. The [Using Product Usage Data in Gainsight](/handbook/customer-success/product-usage-data/using-product-usage-data-in-gainsight/) a full guide.
1. **Dashboard Developer**: A new Sisense data model containing the complete dimensional model components to build new dashboards and link existing dashboards to Customer Product Adoption Data.
1. **SQL Developer**: A [Enterprise Dimensional Model](https://lucid.app/lucidchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19/view?page=B47EyN20O.G6#) subject area. Refer to the `R2A Objects` tab.

### Data Platform Components

From a Data Platform technology perspective, the solution delivers:

1. An extension to the Enterprise Dimensional Model for CI Runner Activity data
1. Testing and data validation extensions to the Data Pipeline Health dashboard
1. ERD, Data Flow diagam, dbt models, and related platform components


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


## Trusted Data Solution

See overview at [Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

Kindly refer the [dbt guide examples](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) for
details and examples on implementing further tests.

