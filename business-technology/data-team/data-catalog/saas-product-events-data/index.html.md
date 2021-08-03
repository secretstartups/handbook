---
layout: handbook-page-toc
title: "SaaS Product Events Data"
description: "Product Events Data provides measurements of how"
---

## On this page
- TOC
{:toc}

{::options parse_block_html="true" /}

---
## SaaS Product Events Data---
layout: handbook-page-toc
title: "SaaS Product Events Data"
description: "Product Usage Data provides quantitative measurement of how, when, and where Paid and Free Users are using GitLab as a product."
---

## On this page
- TOC
{:toc}

{::options parse_block_html="true" /}

---
## SaaS Product Events Data

SaaS Product Events Data Pipeline provides business users (Product Analysts, Growht PMs, Core Product PMs) with a set of fact and mart tables capturing user ans namespace activity for our SaaS Product (Gitlab.com).

The versatility of these table sets allow business stakeholders to perform a large array of analysis described below.

### Type of Analysis that can be performed

1. [User Journey Analysis](https://app.periscopedata.com/app/gitlab/869174/WIP-Cross-Stage-Adoption-Dashboard): See how often different product stages are used by the same namespaces. See what stages are used in combination.
1. [New Namespace Stage Adoption](https://app.periscopedata.com/app/gitlab/761347/Group-Namespace-Conversion-Metrics): Evaluate how often new namespaces are adopting stages such as 'Create' and 'Verify' within their first days of use.
1. [Stages per Organization](https://app.periscopedata.com/app/gitlab/824044/Stages-per-Organization-Deep-Dive---SpO): Identify how namespaces adopt stages within their first days and how this correlates with paid conversion and long-term engagement.


### ERD and Data flows and table description:

The Data Team maintains these fact tables that can be used to :

- [https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.fct_event_400](): fact table at the event-level grain. That means you will find in this table one row per event, an event being for example a issue created or a ci_pipeline started. This fact table contains only events that happened only in the last 400 days. 
- fct_daily_event_400: Table that will be implemented soon, progress [can be tracked in this issue](https://gitlab.com/gitlab-data/analytics/-/issues/9795)
- fct_daily_xmau_400: Table that will be implemented soon, progress [can be tracked in this issue](https://gitlab.com/gitlab-data/analytics/-/issues/9795)

Under the hood, all these models are created through [this dbt model named prep_event](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_event).

`prep_event` model creates monthly partitioned table. Looking at Snowflake you can see one schema per month:

So that means we have one `prep_event` table per month. In dbt, you can see that the schema definition is defined in the `dbt_project.yml`.

In the query, you also see the `WHERE` statement that limits the data to a monthly subset of data.

Here is an ERD of the `prep_event` tables:

<figure style="width: 640px; height: 480px; margin: 10px; position: relative;">
<iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/9893320a-3dc1-4585-b292-c7b3d02c2bea" id="ZEN0ht8-IFF2">
</iframe>
</figure>

The list of events currently tracked in these tables [is available here](https://app.periscopedata.com/app/gitlab/897425/fct_event-workflow?widget=12279318&udv=0). Some new events can be added fairly easily, please see documentation below.

#### How to add new events to this table ?

The whole table complexity is included in the `prep_event` table (dbt documentation available [here](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.prep_events))

This model is a bit long and aggregates/unions data coming from a lot of different tables. Nevertheless, adding a new event is a rather easy operation to perform. Here are the steps to follow:

##### Gitlab Data Team Workflow

Everything starts with an issue, so the first step is to open an issue and a MR in our Data Project. Once on the branch you created with the MR, please follow the following steps:

##### Add the CTE that will contain the data

If the data you want to include in the table is fully captured (without any filtering needed) in a prep table, this is a rather simple action to perform. You need to just add a new tuple in the simple CTE macro showed here:

```
{{ simple_cte([
    ('prep_ci_pipeline', 'prep_ci_pipeline'),
    ('prep_action', 'prep_action'),
    ('prep_ci_build', 'prep_ci_build'),
    ('prep_deployment', 'prep_deployment'),
    ('prep_issue', 'prep_issue'),
    ('prep_merge_request', 'prep_merge_request'),
    ('prep_note', 'prep_note'),
    ('dim_project', 'dim_project'),
    ('dim_namespace', 'dim_namespace'),
    ('prep_user', 'prep_user')
]) }}
```

If the data you want to capture is a subset of an existing table, the operation is slightly more complicatedm you need to:

1. First, add the table cotaining the event you want to capture to the simple_cte macro as described above
1. Then, create another CTE below, which would be filtering the rows from the table you called in the first action.

An example would be that you want to select only succesful CI pipelines. You know that this event is captured in the `prep_ci_build` table and that you just need to filter on the `failure_reason` column.

So the first step would be to add (if it is not already the case) the `prep_ci_build` table to the simple_cte macro. 

Then you need to add a new CTE that filters on the `failure_reason` column:

```
, successful_ci_pipelines AS (
 
    SELECT *
    FROM prep_ci_pipeline
    WHERE failure_reason IS NULL

)
```

##### Add an entry in the JSON `event_ctes`

The JSON will look like that:

```
  {
    "event_name": name of the event,we recommend having an action name like issue_creation,
    "source_cte_name": cte name containing the data you want and that you defined earlier,
    "user_column_name": column containing the user_id, you should refer to dbt to get this info,
    "ultimate_parent_namespace_column_name": column containing the ultimate parent namespace ID, you should refer to dbt to get this info,
    "project_column_name": column containing the ID of the project, you should refer to dbt to get this info,
    "primary_key": primary key of the CTE
  }
```

##### Test your MR

The easiest way to test your changes would be to do it through our CI Pipelines capabilities. The first step would be to clone the production database (example below). This takes from 10 to 15 minutes.

Then, you need to run a dbt job as shown in the small video below:

![gif](/handbook/business-technology/data-team/data-catalog/saas-product-events-data/clone-prod-2.gif)


Run the dbt job `specify_l_model` by clicking on the ⚙️ then add the following variable: 

- key: `DBT_MODELS`
- value: `prep_event`

![gif](/handbook/business-technology/data-team/data-catalog/saas-product-events-data/run-job-2.gif)

Once the jobs have run succesfully, ask for a review of a team member of the R&D Team.

Don't hesitate to ask any questions regarding your MR to Data Team members either through Slack #data channel or through the Merge Request itself.

##### Backfill the data

Once the data is merged, you need to backfill the prep_event data. For this, please ask a Data Engineer to trigger the [Airflow Dag called t_prep_dotcom_usage_events_backfill](https://airflow.gitlabdata.com/tree?dag_id=t_prep_dotcom_usage_events_backfill) which will run the backfill for the last 3 years of data.





