---
layout: markdown_page
title: Data Guide for Growth
---

## Objectives for this Page ##

1) Enable Growth team members of all SQL abilities to build their own queries and make simple customizations to fit their needs.

2) Alert all team members on newly discovered caveats, query improvements, or data changes that may impact current or future reports.

3) Educate all team members on best practices when writing queries for growth-focused data.


## Differences in Growth Data Needs ##

Growth data insights are often driven by time-to metrics (time to adoption, time to conversion) which requires a much more granular approach to data insights on a namespace- or user-level. Growth data insights are often grouped by the date of creation (just as namespace creation, user creation, or trial started).



## Snippet & Query Templates (for Sisense)

_This will provide a centralized location to find key snippets built for Growth data interests and that are tailored to allow for stated filtering needs._

### About Snippets

Snippets are great ways to allow Sisense users to build charts without writing any SQL. Below is a list of snippets created specifically to help answer growth-related questions and have built-in data source joins to enable enhanced data granularity and filtering capabilities.

Some of the benefits of using these snippets include:
- Save time without having to constantly rewrite SQL code with multiple joins
- Snippets already automatically filter (or allow the option to filter) for key dimensions such as `setup_for_company` selection and `namespace_type`
- Using unified set of snippets will allow for more consistent reporting

### Using Snippets

These snippets can be inserted into the SQL code for a Sisense chart in two ways:
- Insert the snippet name in square brackets (`[insert_snippet_name_here]`)
- Copy/paste the SQL code for the snippet from the GitLab repository. 
  - This approach is primarily helpful if you need to add any customizations to the query (such as integrating different data tables).

Please note that the underlying queries for these snippets may change on occasion. If you copy/paste these snippet code, later changes won't be reflected in your reports. If you use the square bracket approach, any reports using these snippets will automatically update if the snippet code is updated.

#### Enabling Filters Required by Snippets

As listed below in the documentation for each snippet, there will be a series of _filtering options_ that need to be enabled on your Sisense report. To do this, please complete the following steps (screenshots coming soon):

1. Go to the Sisense dashboard where you are using the snippet(s).
2. Click on the Settings menu (hamburger menu) on the top-right of page and click the "Enable Filters" option.
3. Click on the "Filters (0)" dropdown button on the top-left of the dashboard.
4. Click the cog icon on the right-side of the Filters menu.
5. In the "Hidden" side of the "Manage Filters" pop-up, select any of the filters shown in the "Filtering Options" section of the snippet documentation so that they show up in the "Visible" section with a checkmark.
6. Close-out of the "Manage Filters" section and choose the preferred filtering options for the newly-enabled filters.


#### Namespaces with Additional Filtering
_Simplifed namespaces data set that includes enhanced filtering_

<details markdown="1"><summary>Click to expand</summary>

**Options for accessing this snippet:**
- Copy/paste `[growth_data_namespaces]` into your Sisense report.
- Copy/paste [SQL code](https://gitlab.com/gitlab-data/periscope/-/blob/periscope/master/snippets/growth_data_namespaces/growth_data_namespaces.sql) to customize query within your Sisense report.

**Granularity:** One record per namespace

**Data Sets Used:** 
- `legacy.gitlab_dotcom_namespaces_xf`
- `legacy.GITLAB_DOTCOM_USERS_BLOCKED_XF`
- `legacy.gitlab_dotcom_members`
- `legacy.gitlab_dotcom_user_preferences`

**Fields**

- `namespace_id`
- `creator_id`
- `namespace_creation_date` (aggregated `namespace_creation_date`)
- `company_setup_filter` (filter for `setup_for_company`)

**Automatic Filters**

- Filters OUT namespaces created by blocked users
- Filters OUT internal namespaces
- Filters OUT namespaces created within 2 minutes of creator accepting their invite
- Filters FOR top-level namespaces
- Filters FOR `Group` namespaces

**Filtering Options (if filters aren't enabled, will show all results)**

- `setup_for_company`
- `DateRange`: Select what range of `namespace_created_at` dates you want included in the report
- `Aggregation`: Aggregate how to group the `namespace_created_at` dates (daily, weekly, monthly, etc)

How to Use and Sample Output (if copy/pasted into Sisense):

These snippets are written as plug-and-play CTEs. You can apply your own name to these CTEs


```
WITH namespaces AS [growth_data_namespaces]

SELECT * FROM namespaces LIMIT 5
```



</details>




#### SpO within the First X Days

_See namespace stage adoption metrics such as stages adopted and active users within first X days since namespace creation._

<details markdown="1"><summary>Click to expand</summary>

**Options for accessing this snippet:**
- Copy/paste `[growth_data_spo]` into your Sisense report.
- Copy/paste [SQL code](https://gitlab.com/gitlab-data/periscope/-/blob/periscope/master/snippets/growth_data_spo/growth_data_spo.sql) to customize query within your Sisense report.


**Dependencies:** Snippet includes `[growth_data_namespaces]` snippet

DO NOT USE FOR: Individual stage insights (use stage adoption snippet for this)

Granularity: One record per namespace

**Data Sets Used:**
- `legacy.gitlab_dotcom_daily_usage_data_events`
- `legacy.gitlab_dotcom_xmau_metrics`
- `legacy.gitlab_dotcom_namespaces_xf`
- `legacy.GITLAB_DOTCOM_USERS_BLOCKED_XF`
- `legacy.gitlab_dotcom_members`
- `legacy.gitlab_dotcom_user_preferences`

**Fields**

- `namespace_id`
- `namespace_creation_date` (aggregated `namespace_creation_date`)
- `stage_count` (unique stages with representative stage adopted within time window)
- `active_users` (unique namespace users that adopted at least one representative stage event within time window)
- `active_days` (unique days that namespace users completed at least one representative stage event within the time window)

**Automatic Filters**

- _This snippet includes all automatic filters used in the [growth_data_namespaces] snippet_
- Filters OUT stage events for `manage` and `monitor` since reporting is not currently available for SaaS
- Filters FOR stage events that are _representative_ of the stage being adopted (indicating a SMAU)
- Filters OUT `namespace_created_at` dates that are _immature_, meaning they were created less that `First_X_Days_Filter` days before today.

**Filtering Options (if filters aren't enabled, will show all results)**

- _This snippet includes all filtering options used in the [growth_data_namespaces] snippet_
- `event_plan_name`: Select plan name(s) you want to include in the reporting.
- `First_X_Days_Filter`: Filters for the first 

</details>


#### Namespace Stage Adoption

_See namespace-level stage adoption metrics such as time to first adoption, stage usage days, and unique namespace users that adopted stage_

<details markdown="1"><summary>Click to expand</summary>

**Options for accessing this snippet:**
- Copy/paste `[growth_data_stage_adoption]` into your Sisense report.
- Copy/paste [SQL code](https://gitlab.com/gitlab-data/periscope/-/blob/periscope/master/snippets/growth_data_stage_adoption/growth_data_stage_adoption.sql) to customize query within your Sisense report.


**Dependencies:** Snippet includes `[growth_data_namespaces]` snippet

**Granularity:** One record per namespace per stage.

**Do Not Use For:**
- Sequential stage adoption: Since this data is at a day-level granularity, you are unable to see which stage is adopted first, if stages were adopted on the same day.
- Calculating SpO: This snippet is meant to analyze the adoption of particular stages. Use the _[growth_data_spo]_ snippet for a more general SpO analysis.

**Fields**

- `namespace_id`
- `namespace_creation_date` (date field)
- `namespace_creation_[aggregation]` (truncated by selected date [aggregation])
- `stage_name`
- `initial_stage_adopted_at` (timestamp)
- `days_till_first_adoption` (days from namespace creation to the namespace's initial stage adoption)
- `stage_users` (unique namespace users that adopted at least one representative stage event within time window)
- `stage_usage_days` (unique days that namespace users completed at least one representative stage event within the time window)
- `stage_order_adopted`
- `stages_adopted_by_namespace` (total number of unique stages adopted in the namespace's first [First_X_Days_Filter] days.)

**Automatic Filters**

- _This snippet includes all automatic filters used in the [growth_data_namespaces] snippet_
- Filters OUT stage events for `manage` and `monitor` since reporting is not currently available for SaaS
- Filters FOR stage events that are _representative_ of the stage being adopted (indicating a SMAU)
- Filters OUT `namespace_created_at` dates that are _immature_, meaning they were created less that `First_X_Days_Filter` days before today.
- Filters OUT default stage events from the Learn GitLab project.

**Filtering Options (if filters aren't enabled, will show all results)**

- _This snippet includes all filtering options used in the [growth_data_namespaces] snippet_
- `event_plan_name`: Select plan name(s) you want to include in the reporting.
- `First_X_Days_Filter`: Filters for the first 

```
WITH stages AS [growth_data_stage_adoption]

SELECT * FROM stages LIMIT 5
```


</details>


## Resources for Growth Experimentation

_Collection of snippets, query templates, and dashboards designed to facilitate experimentation analysis._

### Experimentation Events Snippet

_Sisense snippet that can easily be adjusted any experiment using Snowplow events data._

<details markdown="1"><summary>Click to expand</summary>

**Granularity:** One record per `event_id`

**Data Sets Used:**
- `legacy.snowplow_structured_events_all`
- `legacy.snowplow_gitlab_events_experiment_contexts_all`

**Fields Included**

- `event_id`
- `event_action`
- `derived_timestamp` (timestamp with millisecond granularity)
- `event_value`
- `event_property`
- `experiment_name`
- `context_key`
- `experiment_variant`

**Sample Output:**
```
WITH events AS ([experiment events])

SELECT *
FROM events
WHERE experiment_name = 'new_repo'
LIMIT 10
```


</details>


### Experimentation Funnel Sisense Query Template

_Template for calculating a funnel with multiple Snowplow events_

<details markdown="1"><summary>Click to expand</summary>

**Granularity:** One record per stage

**Dependencies:** Utilizes the `[Experiment Events]` snippet

**Data Sets Used:**
- `legacy.snowplow_structured_events_all`
- `legacy.snowplow_gitlab_events_experiment_contexts_all`

**How to Use:** 
_Note: Unlike the other snippets listed, this is meant to be used as a query template. The reason being is the user has to adjust this template to fit the specifications needed for the experiment such as number of events in the funnel, which fields are needed for filtering, and other requirements. There is documentation listed within the query template to help guide you to make the needed customizations._
1. Copy and paste SQL code into a new Sisense report.
2. Within the Sisense report, update relevant fields such as `event_action`, `event_label`, and `experiment_name` to fit the experiment you are analyzing.
3. This template includes six unique events, if the funnel you are trying to track needs more or less, just remove or copy the "step_x" table format to fit your experiment's needs.
4. If adding or removing the number of events in the funnel, make sure to remove any mentions or joins in the query involving that table.

**Note on Results:** For a `context_key` to be counted in later steps, that same key must be present in all previous steps. For example, a `context_key` that is recorded as a step three conversion would also have to be present in steps one and two.

**Sample Output:**
_Date-level granularity can be removed._


</details>

### Experiment Data Validation Dashboard
_At a glance, see if the experiment is reporting data, for which events, and what the candidate/control distribution looks like._

<details markdown="1"><summary>Click to expand</summary>

**[Visit Dashboard](https://app.periscopedata.com/app/gitlab/860363/Experiment-Data-Validation)**


**How to Use:** 
- Select your experiment in the `select_experiment` filter dropdown. Data for your experiment will load in approximately two to five minutes.
- Scan through reports to see if all intended events are reporting, and see when they first- and last-reported data.
- View various bar and line charts to see if there were any data outages that might impact the results of the experiment.

**Sample of Charts included in Dashboard**



</details>

## Key Data Source Guide

_A brief guide clarifying the granularity, important fields, recommended filters, and any data constraints or quality issues that come with using these data sets._

### Namespaces

_Provides helpful fields on every namespace such as the `namespace_id`, `namespace_created_at` date, and `namespace_type`._

<details markdown="1"><summary>Click to expand</summary>


`legacy.gitlab_dotcom_namespaces_xf` ([dbt](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_dotcom_namespaces_xf))


**Summary:** Provides helpful fields on every namespace such as the `namespace_id`, `namespace_created_at` date, and `namespace_type`. This can be joined with numerous event, subscription, and member tables. In addition, this table can usefully be joined to certain user-centric tables for enhanced filtering capabilities such as removing blocked users and filtering for namespaces that are set up for a company account.

**Granularity:** 1 record per namespace

**Key Filters:**
- namespace_is_internal = FALSE (Excludes internal namespaces)
- namespace_ultimate_parent_id = namespace_id (includes only top-level namespaces) 
- namespace_type = 'Group' (Recommended since most Growth initiatives are built around Group namespaces)

**Items of Note**
- Plan-related and member count data points: Since there is only one record per namespace, that means plan changes are not captured in this data set. Especially from a Growth mindset, the plan at certain points in a namespace's lifecycle (namespace creation, 90 days after creation, etc) and the transition from one plan to the next (such as Free to Trial to Paid) are more helpful.


</details>

### Events Data (Coming Soon)

### Projects Data (Coming Soon)

### Trial Data (Coming Soon)

## Best Practices (Coming Soon)

_This section will include a list of tips for dealing with data._

## Adding to this page

Feel free to submit any questions, comments, or suggestions to the [issue associated with upcoming additions](https://gitlab.com/gitlab-data/analytics/-/issues/9110) to this page.
