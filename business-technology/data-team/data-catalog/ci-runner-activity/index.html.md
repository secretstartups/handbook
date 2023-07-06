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

Previously, there wasn't an easy way to tie cost directly to CI usage without making assumptions. And the process was not scalable, so a better solution was needed for the future.

For this purpose, a Unified model for **Compute minutes/Cost** has been created as a part of [Enterprise Dimensional Model](https://lucid.app/lucidchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19/view?page=B47EyN20O.G6#) that ties the cost from app usage table (Postgres) to `gcp_billing` and labels our runners in GCP with `job_id` labels to join to `ci_builds` table.

### Business Use Cases/Example KPIs:

- Cost of All CI Pipelines run in gitlab-org-gitlab project in January 2021
- Average Cost per pipeline for all GitLab.com CI usage
- Count of CI pipelines run by namespace X last month
- Count of compute minutes used in project X over past year
- Cost of compute minutes used in project X over past year

### Key Field Descriptions

- `CI Build ID` 
    - Sets granularity level of table at level of a single GitLab job that runs (ci_builds table)
- `CI Build Duration` 
    - Currently calculated from start time -> end time of a single job in ci_builds table   
- `Runner type` 
    - Determines scope of runners. See https://docs.gitlab.com/ee/ci/runners/runners_scope.html for more details. GitLab only pays for shared runners that customers use as well as group/specific runners that are used within our own projects. (ci_runners table)
- `Project ID`
    - Determines what project runner activity linked to and all related info
- `Namespace ID`
    - Determines subscription and if usage is internal or not
- `User ID`
    - Determines user that ran the job

### Table Relationship Details

Most of these fields can be sourced from `gitlab_dotcom_ci_builds`, and related tables are linked to `ci_builds` by using below relationships:
- `ci_runners`: gitlab_dotcom_ci_builds.ci_build_runner_id -> gitlab_dotcom_ci_runners.runner_id
- `ci_stages`: gitlab_dotcom_ci_builds.ci_build_stage_id -> gitlab_dotcom_ci_stages.ci_stage_id
    - ci_pipelines: gitlab_dotcom_ci_stages.pipeline_id -> gitlab_dotcom_ci_pipelines.ci_pipeline_id
    - Stages table is normally used to bridge `pipeline -> builds` but we sometimes use `ci_stage_name` to look at the longest duration by stage.
- `projects`: gitlab_dotcom_ci_builds.ci_build_project_id -> gitlab_dotcom_projects_xf.project_id
    - namespace: gitlab_dotcom_projects_xf.namespace_id -> gitlab_dotcom_namespaces_xf.namespace_id
- `users`: gitlab_dotcom_ci_builds.ci_build_user_id -> gitlab_dotcom_users_xf.user_id

### Sources of Data

Data is sourced from `GitLab.com` models.
    
### Related Data Artifacts

The Data Team maintains these Data artifacts related to `CI Runner Activity` :

- **ERD**
   - The [CI Runner Activity Physical Data Model](https://lucid.app/lucidchart/fe967fe7-5cb8-4a83-96f6-17ba824275b9/edit?beaconFlowId=3414471839151653&invitationId=inv_2c1487d9-d40c-4cda-b983-198344a56a7d&page=csqmM_lDyM2l#) shows all table structures, including column name, column data type, column constraints, primary key, foreign key, and relationships between tables that are used for this data. 
<br>

- **Data Flow Diagram**
   - The [CI Runner Activity Data Flow diagram](https://lucid.app/lucidchart/fe967fe7-5cb8-4a83-96f6-17ba824275b9/edit?beaconFlowId=3414471839151653&page=0_0&invitationId=inv_2c1487d9-d40c-4cda-b983-198344a56a7d#) provides a high level overview of how the Data flows in to the `fact model` - [fct_ci_runner_activity](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ci_runner_activity) and `Mart models` - [mart_ci_runner_activity_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ci_runner_activity_monthly) and [mart_ci_runner_activity_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ci_runner_activity_daily) from `Prep/Intermediate` and other `Dimension` tables. 
<br>

- **Table Definitions**
   - [fct_ci_runner_activity](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_ci_runner_activity) - Fact table containing quantitative data related to CI runner activity on GitLab.com. The grain of the table would be a single GitLab job that ran (successful or not) determined by `dim_ci_build_id` which is the unique key for each CI build.
   - [mart_ci_runner_activity_monthly](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ci_runner_activity_monthly) - Mart table containing quantitative data related to CI runner activity on GitLab.com. These metrics are aggregated at a monthly grain per `dim_namespace_id`. Additional identifier/key fields - `dim_ci_runner_id`, `dim_ci_pipeline_id`, `dim_ci_stage_id` have been included for Reporting purposes. Only activity since 2020-01-01 is being processed due to the high volume of the data.
   - [mart_ci_runner_activity_daily](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mart_ci_runner_activity_daily) - Mart table containing quantitative data related to CI runner activity on GitLab.com. These metrics are aggregated at a daily grain per `dim_project_id`. Additional identifier/key fields - `dim_ci_runner_id`, `dim_ci_pipeline_id`, `dim_ci_stage_id` have been included for Reporting purposes. Only activity since 2020-01-01 is being processed due to the high volume of the data.

   
## Self-Service Capabilities

The data solution delivers two [Self-Service Data](/handbook/business-technology/data-team/direction/self-service/) capabilities:

1. **Dashboard Developer**: The CI data related existing Sisense data models containing different widget charts now uses the complete dimensional model components built for CI Runner Activity data.
1. **SQL Developer**: A [Enterprise Dimensional Model](https://lucid.app/lucidchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19/view?page=B47EyN20O.G6#) subject area. Refer to the `R2A Objects` tab.

### Data Platform Components

From a Data Platform technology perspective, the solution delivers:

1. An extension to the Enterprise Dimensional Model for CI Runner Activity data
1. Testing and data validation extensions to the Data Pipeline Health dashboard
1. ERD, Data Flow diagram, dbt models, and related platform components


### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/690666/GitLab.com-CI-Cost-Stats" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">CI Cost Stats</a>
  <a href="https://app.periscopedata.com/app/gitlab/780726/WIP:-Blocked-User-Usage-Data" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Blocked User/Usage Data</a>
  <a href="https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Getting started using Sisense Discovery</a>
   <a href="https://www.youtube.com/watch?v=Fdl6mdlp1-Y&amp;feature=youtu.be" class="btn btn-purple" style="width:33%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Self Service Walk-through Video</a>
</div>
<br><br><br><br><br><br><br><br><br>


## Self-Service Data Solution

### Self-Service Dashboard Developer

A great way to get started building charts in Sisense is to watch this 10 minute [Data Onboarding Video](https://www.youtube.com/watch?v=F4FwRcKb95w&feature=youtu.be) from Sisense. After you have built your dashboard, you will want to be able to easily find it again. Topics are a great way to organize dashboards in one place and find them easily. You can add a topic by clicking the `add to topics` icon in the top right of the dashboard. A dashboard can be added to more than one topic that it is relevant for. Some topics include Finance, Marketing, Sales, Product, Engineering, and Growth to name a few.


## Trusted Data Solution

See overview at [Trusted Data Framework](https://about.gitlab.com/handbook/business-technology/data-team/platform/#tdf)

Kindly refer the [dbt guide examples](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) for
details and examples on implementing further tests.

