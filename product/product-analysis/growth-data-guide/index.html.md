---
layout: handbook-page-toc
title: Data Guide for Growth
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Objectives for this Page

1. Enable Growth team members of all SQL abilities to build their own queries and make simple customizations to fit their needs.
2. Alert all team members on newly discovered caveats, query improvements, or data changes that may impact current or future reports.
3. Educate all team members on best practices when writing queries for growth-focused data.

## Differences in Growth Data Needs

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
- `legacy.gitlab_dotcom_users_blocked_xf`
- `legacy.gitlab_dotcom_members`
- `legacy.gitlab_dotcom_user_preferences`

**Fields:**

- `namespace_id`: Unique identifier of namespace
- `creator_id`: Unique user identifier (`user_id`) of namespace creator
- `namespace_created_at`: Timestamp of namespace creation
- `namespace_creation_date`: Date of namespace creation
- `company_setup_filter`: Transformed `setup_for_company`: `'True'`, `'False'`, `'None'`. Used for 
`setup_for_company` filter
- `namespace_visibility_level`: Visibility level of namespace: `'public'`, `'private'`, `'internal'`. 
Used for `visibility_level` filter

**Automatic Filters:**

- Filters OUT namespaces created by blocked users
- Filters OUT internal namespaces
- Filters OUT namespaces created within 2 minutes of creator accepting their invite
- Filters FOR top-level namespaces
- Filters FOR `Group` namespaces

**Filtering Options (if filters aren't enabled, will show all results):**

- `setup_for_company`
- `DateRange`: Select what range of `namespace_created_at` dates you want included in the report
- `Aggregation`: Aggregate how to group the `namespace_created_at` dates (daily, weekly, monthly, etc)
- `namespace_visibility`

**How to Use and Sample Output (if copy/pasted into Sisense):**

These snippets are written as plug-and-play CTEs. You can apply your own name to these CTEs

``` sql
WITH namespaces AS [growth_data_namespaces]

SELECT * 
FROM namespaces 
LIMIT 5
;
```

</details>

#### Namespaces with Trials and Subscriptions
_Simplifed namespaces data set that includes trials and subscriptions_

<details markdown="1"><summary>Click to expand</summary>

**Options for accessing this snippet:**

- Copy/paste `[growth_data_namespaces_with_trials_subscriptions]` into your Sisense report.
- Copy/paste [SQL code](https://gitlab.com/gitlab-data/sisense-safe/-/blob/periscope/master/snippets/growth_data_namespaces_with_trials_subscriptions/growth_data_namespaces_with_trials_subscriptions.sql) to customize query within your Sisense report.

**Granularity:** One record per namespace

**Data Sets Used:** 

- `legacy.gitlab_dotcom_namespaces_xf`
- `legacy.gitlab_dotcom_users_blocked_xf`
- `legacy.gitlab_dotcom_members`
- `legacy.gitlab_dotcom_user_preferences`
- `legacy.customers_db_trial_histories`
- `restricted_safe_legacy.customers_db_charges_xf`

**Fields:**

- `namespace_id`: Unique identifier of namespace
- `creator_id`: Unique user identifier (`user_id`) of namespace creator
- `namespace_created_at`: Timestamp of namespace creation
- `namespace_creation_date`: Date of namespace creation
- `company_setup_filter`: Transformed `setup_for_company`: `'True'`, `'False'`, `'None'`
- `namespace_visibility_level`: Visibility level of namespace: `'public'`, `'private'`, `'internal'`
- `did_start_trial`: Boolean denoting whether namespace started a free trial
- `trial_start_date`: Start date of trial
- `did_start_subscription`: Boolean denoting whether namespace started a paid subscription
- `min_subscription_start_date`: Start date of namespace's first subscription
- `first_paid_plan_name`: Plan name of namespace's first subscription: `Premium`, `Ultimate`, 
`Bronze`
- `is_purchased_through_subscription_portal`: Boolean denoting whether namespace's first 
subscription was purchased through a purchase order or directly from the web portal (will be `NULL` if namespace did not start a subscription)
  - Documentation in [dbt](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.customers_db_charges_xf)

**Automatic Filters:**

- _This snippet includes all automatic filters used in the `[growth_data_namespaces]` snippet_
- Filters OUT Storage and Self-Managed plans
- Filters FOR a namespace's first subscription

**Filtering Options (if filters aren't enabled, will show all results):**

- _This snippet includes all filtering options used in the `[growth_data_namespaces]` snippet_

**Filtering Options (if filters aren't enabled, will show all results):**

- `setup_for_company`
- `DateRange`: Select what range of `namespace_created_at` dates you want included in the report
- `Aggregation`: Aggregate how to group the `namespace_created_at` dates (daily, weekly, monthly, etc)
- `namespace_visibility`

**How to Use and Sample Output (if copy/pasted into Sisense):**

These snippets are written as plug-and-play CTEs. You can apply your own name to these CTEs

``` sql
WITH namespaces_w_trials_subs AS [growth_data_namespaces_with_trials_subscriptions]

SELECT * 
FROM namespaces_w_trials_subs 
LIMIT 5
;
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

**Granularity:** One record per namespace

**Data Sets Used:**

- `legacy.gitlab_dotcom_daily_usage_data_events`
- `legacy.gitlab_dotcom_xmau_metrics`
- `legacy.gitlab_dotcom_namespaces_xf`
- `legacy.gitlab_dotcom_users_blocked_xf`
- `legacy.gitlab_dotcom_members`
- `legacy.gitlab_dotcom_user_preferences`

**Fields:**

- `namespace_id`: Unique identifier of namespace
- `namespace_creation_date`: Date of namespace creation
- `stage_count`: Count of unique stages with representative stage event adopted within time window
- `active_users`: Count of unique namespace users that adopted at least one representative stage 
event within time window
- `active_days`: Count of unique days that at least one namespace user completed at least one 
representative stage event within the time window

**Automatic Filters:**

- _This snippet includes all automatic filters used in the `[growth_data_namespaces]` snippet_
- Filters OUT stage events for `manage` and `monitor` since reporting is not currently available for SaaS
- Filters FOR stage events that are _representative_ of the stage being adopted (indicating a SMAU)
- Filters OUT `namespace_created_at` dates that are _immature_, meaning they were created less 
than `First_X_Days_Filter` days before today

**Filtering Options (if filters aren't enabled, will show all results):**

- _This snippet includes all filtering options used in the `[growth_data_namespaces]` snippet_
- `event_plan_name`: Namespace's plan level at the time of the stage event
- `First_X_Days_Filter`: Filters for the first x days after namespace creation

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
- Calculating SpO: This snippet is meant to analyze the adoption of particular stages. Use the `[growth_data_spo]` snippet for a more general SpO analysis.

**Fields:**

- `namespace_id`: Unique identifier of namespace
- `namespace_creation_date`: Date of namespace creation
- `namespace_creation_[aggregation]`: Date of namespace creation truncated by `[aggregation]`
- `stage_name`
- `initial_stage_adopted_at`: Timestamp of first adoption of stage
- `days_till_first_adoption`: Count of days from namespace creation to the namespace's initial 
stage adoption
- `stage_users`: Count of unique namespace users that adopted at least one representative stage 
event within time window
- `stage_usage_days`: Count of unique days that at least one namespace user completed at least 
one representative stage event within the time window
- `stage_order_adopted`: Order of stages adopted by namespace (integer)
- `stages_adopted_by_namespace`: Total count of unique stages adopted in the namespace's first 
`[First_X_Days_Filter]` days after creation

**Automatic Filters:**

- _This snippet includes all automatic filters used in the `[growth_data_namespaces]` snippet_
- Filters OUT stage events for `manage` and `monitor` since reporting is not currently available for SaaS
- Filters FOR stage events that are _representative_ of the stage being adopted (indicating a SMAU)
- Filters OUT `namespace_created_at` dates that are _immature_, meaning they were created less than `First_X_Days_Filter` days before today.
- Filters OUT default stage events from the Learn GitLab project.

**Filtering Options (if filters aren't enabled, will show all results):**

- _This snippet includes all filtering options used in the `[growth_data_namespaces]` snippet_
- `event_plan_name`: Namespace's plan level at the time of the stage event
- `First_X_Days_Filter`: Filters for the first x days after namespace creation

```sql
WITH stages AS [growth_data_stage_adoption]

SELECT * 
FROM stages 
LIMIT 5
;
```

</details>

#### Group Namespace Invites & Member Counts

_Group namespace-level invites. More details on invite data [below](/handbook/product/product-analysis/growth-data-guide/#invites)_

<details markdown="1"><summary>Click to expand</summary>

**Options for accessing this snippet:**
- Copy/paste `[growth_data_group_namespace_invites]` into your Sisense report.
- Copy/paste [SQL code](https://gitlab.com/gitlab-data/periscope/-/blob/periscope/master/snippets/growth_data_group_namespace_invites/growth_data_group_namespace_invites.sql) to customize query within your Sisense report.

**Dashboards:**

The [Invite Acceptance Dashboard](https://app.periscopedata.com/app/gitlab:safe-dashboard/922565/Invite-Acceptance-Dashboard) 
is a good jumping-off point for working with this data. It leverages the more granular snippet 
detailed below, `[growth_data_group_namespace_invites_w_metadata]`.
- Note: This dashboard is in the SAFE space. Instructions on how to request access [here](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/#accessing-a-safe-dashboard)

**Granularity:** One record per invited user per namespace (one record per `member_id`)

_Note: Currently this snippet only looks at invitations to the top-level namespace. It does not include invites to sub-groups or projects. This will be updated in a future iteration but is an important caveat when using the snippet in its current state._

Since the grain is at the member level, there can be multiple records per user (one for each 
namespace they have been invited to) and multiple records per namespace (one per invited user). 
Please be careful of this when `JOIN`ing to other tables! You need to join on both the `user_id` 
and the `namespace_id` to avoid potential errors or duplicate records.

**Dependencies:** Snippet includes `[growth_data_namespaces]` snippet

**Data Sets Used:** 

- `legacy.gitlab_dotcom_namespaces_xf`
- `legacy.gitlab_dotcom_users_blocked_xf`
- `legacy.gitlab_dotcom_user_preferences`
- `legacy.gitlab_dotcom_members`
- `legacy.gitlab_dotcom_memberships`
- `common.dim_user`

**Fields:**

- `namespace_id`: Unique identifier of namespace
- `namespace_created_at`: Timestamp of namespace creation
- `namespace_visibility_level`: Visibility level of namespace: `'public'`, `'private'`, `'internal'`
- `user_id`: Unique identifier of user
- `member_id`: Identifier unique to the user and namespace
- `invite_created_at`: Timestamp that user was invited to namespace
- `invite_accepted_at`: Timestamp that user accepted the invitation (will be `NULL` if access was 
automatically granted)
- `invite_expires_at`: Timestamp of invite expiration, defined as `invite_created_at` + 90 days 
(unless explicitly set by inviter)
- `invite_success_at`: Timestamp that user joined the namespace (either via invite acceptance 
or access granted)
- `user_created_at`: Timestamp of user creation
- `invited_user_type`: `'NEW'` (user did not have GitLab account at time of invite) or 
`'EXISTING'` (user had GitLab account at time of invite)
- `invite_status`: Current status of invite: `'INVITE_ACCEPTED'`, `'ACCESS_GRANTED'`, 
'`INVITE_EXPIRED'`, `'INVITE_PENDING'`
- `invite_was_successful`: Denotes whether user successfully joined namespace 
(`'INVITE_ACCEPTED'` or `'ACCESS_GRANTED'`)

**Automatic Filters:**

- _This snippet includes all automatic filters used in the `[growth_data_namespaces]` snippet_

**Filtering Options (if filters aren't enabled, will show all results):**

- _This snippet includes all filtering options used in the `[growth_data_namespaces]` snippet_

**How to Use and Sample Output (if copy/pasted into Sisense):**

These snippets are written as plug-and-play CTEs. You can apply your own name to these CTEs

``` sql
WITH invites AS [growth_data_group_namespace_invites]

SELECT * 
FROM invites 
LIMIT 5
;
```

**Snippet with additional metadata:**

There is another version of this snippet, [`[growth_data_group_namespace_invites_w_metadata]`](https://gitlab.com/gitlab-data/periscope/-/blob/periscope/master/snippets/growth_data_group_namespace_invites_w_metadata/growth_data_group_namespace_invites_w_metadata.sql), 
which includes the following additional fields:

- `invite_created_rnk`: Order of invites created
- `invite_accepted_rnk`: Order of invites accepted (does not include access granted use case)
- `invite_success_at`: Order of successful invites (either accepted or access granted)
- `days_from_namespace_created_to_invite_created`: Count of days between namespace creation and 
invite creation
- `days_from_namespace_created_to_invite_accepted`: Count of days between namespace creation and 
invite acceptance (does not include access granted use case)
- `days_from_namespace_created_to_invite_success`: Count of days between namespace creation and 
invite success (either accepted or access granted)
- `days_from_invite_created_to_accepted`: Count of days between invite creation and invite 
acceptance (does not include access granted use case)
- `days_from_invite_created_to_success`: Count of days between invite creation and invite 
success (either accepted or access granted)

**Additional details:**

Please see below for [additional details about invite data](/product/product-analysis/growth-data-guide/#invites).

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

**Fields:**

- `event_id`: Unique identifier of Snowplow event
- `experiment_name`
- `experiment_variant`
- `context_key`
- `derived_tstamp`: Timestamp of event (with millisecond granularity)
- `event_action`
- `event_property`
- `event_value`
- `environment`: `'production'` or `'staging'` (based on `app_id`)

**Filtering Options (if filters aren't enabled, will show all results):**

- `select_experiment`: Applied to `experiment_name`
- `DateRange`: Applied to `derived_tstamp`
- `snowplow_environment`: `'production'` or `'staging'`

_NOTE: Due to the size of the Snowplow data set and performance concerns, please be sure to apply, 
at minimum, the `select_experiment` filter. Queries will be much more performant if you also 
apply the `DateRange` filter._

**Sample Output:**

``` sql
WITH events AS ([experiment events])

SELECT *
FROM events
WHERE experiment_name = 'new_repo'
LIMIT 10
;
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

_Provides helpful fields on every namespace such as the `dim_namespace_id`, `created_at` date, and `namespace_type`._

<details markdown="1"><summary>Click to expand</summary>

`common.dim_namespace` [(dbt)](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_namespace)

**[Data Team's Definitive Guide to Namespace Analysis](/handbook/business-technology/data-team/data-catalog/namespace/)** 

**[Product Data Insights documented differences between legacy and common models](https://gitlab.com/gitlab-data/product-analytics/-/issues/363)** 

**Summary:** Provides helpful fields on every namespace such as the `dim_namespace_id`, `created_at` date, and `namespace_type`. This can be joined with numerous event, subscription, and member tables. In addition, this table can usefully be joined to certain user-centric tables for enhanced filtering capabilities such as removing blocked users and filtering for namespaces that are set up for a company account.

**Granularity:** 1 record per namespace

**Key Filters:**

- `namespace_is_internal = FALSE`: Excludes internal namespaces
- `ultimate_parent_namespace_id = dim_namespace_id`: Includes only top-level namespaces
- `namespace_type = 'Group'`: Recommended since most Growth initiatives are built around Group namespaces

**Items of Note:**

- Plan-related and member count data points: Since there is only one record per namespace, that means plan changes are not captured in this data set. Especially from a Growth mindset, the plan at certain points in a namespace's lifecycle (namespace creation, 90 days after creation, etc) and the transition from one plan to the next (such as Free to Trial to Paid) are more helpful. Please reference [common.dim_namespace_plan_hist](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_namespace_plan_hist) and [common.dim_namespace_hist](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.dim_namespace_hist) documentation which outline models containing historical snapshots.

</details>

### Invites

_Two main tables used to calculate invites, [`legacy.gitlab_dotcom_members`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_dotcom_members) 
and [`legacy.gitlab_dotcom_memberships`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships)._

<details markdown="1"><summary>Click to expand</summary>

**Two different types of "invites"**

There are two main invite use cases:

1. An invite is sent to the user and they need to accept it in order to join the namespace. The 
invited user needs to take action in order to accept the invite.
    - This happens when the invited user does not yet have a GitLab.com account that is visible 
    to the invitee. In most cases this is because the invited user does not yet have a GitLab.com 
    account
    - If invite is accepted, `invite_status = 'INVITE_ACCEPTED'`
    - If invite is not accepted, `invite_status = 'INVITE_PENDING'` or 
    `invite_status = 'INVITE_EXPIRED'`
2. An actual invite is not sent, the user is added to the namespace automatically. The invited 
user does _not_ need to take any action to accept the invite. The Product Analysis team refers 
to this as the "access granted" use case.
    - This happens when the invited user already has a GitLab.com account that is visible 
    to the inviter (ex: public profile, within the same organization, etc). 
    - `invite_status = 'ACCESS_GRANTED'`

`legacy.gitlab_dotcom_members` ([dbt](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_dotcom_members))

**Summary:** `legacy.gitlab_dotcom_members` is a type 2 table with records for both successful and 
unsuccessful invites.

- This is a type 2 table with multiple records per primary key, `member_id` (unique to the 
`user_id` and `source_id`)
  - Type 2 documented in source table: [`PREP.gitlab_dotcom.gitlab_dotcom_members_source`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_dotcom_members_source#description)
  - There is only one record per primary key (`member_id`) where `is_currently_valid = TRUE`
- A record is added any time a user is invited to a namespace/group/project (regardless of 
whether an actual invite is sent or access is automatically granted) OR any time a user's status 
changes (ex: their [permissions change](https://docs.gitlab.com/ee/user/permissions.html#group-members-permissions))

**Notable columns:**

- `member_id`: Unique identifier specific to the `user_id` and `source_id` (namespace/group/project)
- `user_id`: Unique identifier of invited user
- `source_id`: Unique identifier of namespace/group/project user is invited to (ex: `namespace_id`)
- `member_source_type`: Type of entity user is invited to (`'Namespace'` or `'Project'`)
- `invite_created_at` Timestamp of invite creation
  - Populated for all invites, even if they fall into the "access granted" use case
- `invite_accepted_at`: Timestamp of invite acceptance
  - Only populated when the invited user needed to take action to accept the invite. This column 
  is `NULL` for the "access granted" use case
- `access_level`: Numeric value that represents the member's [permissions](https://docs.gitlab.com/ee/development/permissions.html#members) 
at a point in time
  - Note: Since this is a type 2 table, this value can differ across records if a member's 
  permissions change

`legacy.gitlab_dotcom_memberships` ([dbt](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships))

**Summary:** `legacy.gitlab_dotcom_memberships` has records if a user successfully joins a 
group/namespace/project (the user has a "membership").

- A record is added _after_ a user is successfully added to a namespace/group/project, either 
via invite acceptance or access automatically granted.

**Notable columns:**

- `user_id`: Unique identifier of namespace/group/project member
- `membership_source_id`: Unique identifier of namespace/group/project
- `is_billable`: Boolean denoting whether a member should be counted toward the seat count 
for a subscription ([source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_dotcom_memberships#description))
  - Note: This also applies to namespaces/groups/projects without a subscription
- `access_level`: Numeric value that represents the member's current [permissions](https://docs.gitlab.com/ee/development/permissions.html#members)
  - Note: This captures the member's _current_ `access_level`. Use `legacy.gitlab_dotcom_members` 
  to view historic

**Example of how and when different use cases appear in the two tables:**

Invite sent use case:

1. User A invites user B to join namespace 1. User B does not have a GitLab.com account, so an 
invite is sent to the specified email address
    - A record is added to `legacy.gitlab_dotcom_members`
1. User B accepts invitation to join namespace 1
    - The record in `legacy.gitlab_dotcom_members` updated to reflect time of acceptance 
    (`invite_accepted_at IS NOT NULL`)
    - A record is added to `legacy.gitlab_dotcom_memberships`

Access granted use case:

1. User A invites user B to join namespace 1. User B has a GitLab.com account, and is 
automatically granted access to namespace 1.
    - A record is added to `legacy.gitlab_dotcom_members` (where `invite_accepted_at IS NULL`)
    - A record is added to `legacy.gitlab_dotcom_memberships`

**Invite status**

Product Analysis uses the following to define `invite_status`:

- `INVITE_ACCEPTED`: Appears in memberships table, `invite_accepted_at IS NOT NULL`
- `ACCESS_GRANTED`: Appears in memberships table, `invite_accepted_at IS NULL`
- `INVITE_EXPIRED`: Does not appear in the memberships table, `invite_created_at` over 90 days ago 
OR past inviter-specified `invite_expires_at`
  - Invites expire after 90 days per [GitLab docs](https://docs.gitlab.com/ee/user/project/members/#add-users-to-a-project)
- `INVITE_PENDING`: Does not appear in the memberships table, `invite_created_at` in last 90 days OR 
before inviter-specific `invite_expires_at`

**Successful invites**

Invites with either the `INVITE_ACCEPTED` or `ACCESS_GRANTED` status are considered to be 
"successful" invites. Since there is no single column in either table that represents the 
time a user successfully joined the namespace/group/project, the Product Analysis team uses the 
following definition for `invite_success_at` (as of December 2021):

- `IFF(memberships.user_id IS NOT NULL, IFNULL(members.invite_accepted_at, members.invite_created_at), NULL)`

We use `invite_success_at` to determine member counts at any point in time.

**"Invite Acceptance Rate" Calculations**

The methodology to calculate "invite acceptance rate" has changed over time:

- Until mid-2021, invite acceptance rate included `ACCESS_GRANTED` invites in the denominator, 
but not in the numerator. As such, the metric was under-reported.
- Starting in mid-2021, invite acceptance rate only includes invites actually sent in the 
denominator (`ACCESS_GRANTED` invites are excluded).
- Starting in mid-2021, Product Analysis started reporting "invite success rate", which includes 
both use cases (invite sent and access granted) in the numerator and the denominator.

**Member `access_level`/permissions**

As noted above, `access_level` is present in both `legacy.gitlab_dotcom_members` and `legacy.gitlab_dotcom_memberships`

- `legacy.gitlab_dotcom_members` will track changes to a member's `access_level` over time
- `legacy.gitlab_dotcom_memberships` represents the member's current `access_level`

Here is a `CASE` statement that can be used to map the [numeric values to permissions](https://docs.gitlab.com/ee/development/permissions.html#members)

``` sql
SELECT
  access_level,
  CASE access_level --https://docs.gitlab.com/ee/development/permissions.html#members
    WHEN 50 THEN 'Owner'
    WHEN 40 THEN 'Maintainer'
    WHEN 30 THEN 'Developer'
    WHEN 20 THEN 'Reporter'
    WHEN 10 THEN 'Guest'
    WHEN 5 THEN 'Minimal Access'
  END AS member_permissions,
  COUNT(*)
FROM legacy.gitlab_dotcom_memberships
GROUP BY 1
ORDER BY 1
;
```

</details>

### Events Data (Coming Soon)

### Projects Data (Coming Soon)

### Trial Data (Coming Soon)

## Best Practices (Coming Soon)

_This section will include a list of tips for dealing with data._

## Adding to this page

Feel free to submit any questions, comments, or suggestions to the [issue associated with upcoming additions (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/9110) to this page.
