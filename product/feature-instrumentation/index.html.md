---
layout: handbook-page-toc
title: "Feature Instrumentation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Instrumentation at GitLab

Tracking feature engagement after we've shipped is an important part of product management 
and software development. To accomplish this in the GitLab product, we use different approaches 
for self-managed and GitLab.com. To visualize the data we extract from both, we use our [data visualization tool](/handbook/business-ops/data-team/data-platform/#visualization).

### Instrumentation for Self-managed instances

Self-managed instances are not required to maintain a connection with GitLab, Inc. Instead,
we rely on an [on-by-default usage ping](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html)
that can be optionally disabled by any instance. Instances attempt to send this weekly.

To visualize and explore our existing dataset, please see our [data visualization tool](/handbook/business-ops/data-team/data-platform/#visualization).

#### Version Check

Self-managed instances perform a [version check-in](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#version-check-core-only),
where GitLab collects your version and host URL.

#### Usage Ping

Even though PMs are strongly encouraged to ship features with robust metrics for tracking success from day 1, they should feel free to continue iterating in order to improve data collection.
(see [usage_data.rb](https://gitlab.com/gitlab-org/gitlab/blob/master/lib/gitlab/usage_data.rb) for the current schema). 

For more information, see our [Usage Ping](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#usage-ping-core-only) documentation.

##### Process to add additional instrumentation to the Usage Ping:

1. **Detail any desired additions in an issue.** You can see examples of similar issues by 
[searching for closed "usage ping" issues](https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=✓&state=closed&label_name%5B%5D=telemetry%20🔮).
1. **Work with the relevant team to schedule the work.** In general, the team that owns a feature should also be responsible 
for any instrumentation. 
1. **Work with the Analytics team to model the new attributes in our data visualization tool.** After your addition ships and instances begin 
sending us the updated Usage Ping, create an issue in the [Analytics project](https://gitlab.com/meltano/analytics/issues) (or even better, merge requests, see examples below) to
model and visualize the new attributes in our visualization tool. 
    * Generally speaking, this involves:
      * *Updating any relevant ETL jobs to include the addition.* Simple additions ([example](https://gitlab.com/gitlab-org/gitlab/merge_requests/5307)) 
  to existing columns may not require this, whereas adding new columns ([example](https://gitlab.com/gitlab-org/gitlab/merge_requests/5373)) will likely
  require an extractor update. Here's an [example](https://gitlab.com/gitlab-data/analytics/merge_requests/692) of an extractor update.
      * *Updating the model in the project repo for our visualization tool.* Before we're able to see the new dimension in our data visualization tool, we need to define what to visualize in dbt.
  Please ping the data team in the #analytics channel for guidance or see [working with dbt](/handbook/business-ops/data-team/#tips-and-tricks-about-working-with-dbt). 
1.  Update the [Version application](https://gitlab.com/gitlab-services/version-gitlab-com). 
    * Generally speaking, this involves:
      * Ensuring any field added to the [counts](https://gitlab.com/gitlab-org/gitlab/blob/c9e6b390d8907d4b7c06867137cee39fbce10bd0/lib/gitlab/usage_data.rb#L45) always has an integer value.
      * If adding a new field outside of counts, update [usage data table](https://gitlab.com/gitlab-services/version-gitlab-com/blob/65546726604975cea1643127e2d2925b35a9aef1/db/schema.rb#L144) appropriately,
      ensuring the new parameters added are [permitted](https://gitlab.com/gitlab-services/version-gitlab-com/blob/65546726604975cea1643127e2d2925b35a9aef1/app/controllers/usage_data_controller.rb#L17) from the controller level as well.


### Instrumentation for GitLab.com

We use the open-source [Snowplow](https://github.com/snowplow/snowplow) for identifying users and events on GitLab.com. These events are 
extracted to a Snowflake data warehouse and - like usage ping - visualized in our [data visualization tool](/handbook/business-ops/data-team/data-platform/#visualization).

Since GitLab.com is an GitLab EE instance, we're also able to query tables in PostgreSQL that are detailed in [schema.rb](https://gitlab.com/gitlab-org/gitlab-ee/blob/master/db/schema.rb)
for analytical purposes. As of November 2018, query access is dependent on
[allowing SSH access to a dedicated read-only replica](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/4924).

#### Differences with Usage Ping

Since GitLab.com is maintained by GitLab, Inc. and Snowplow allows for much richer event tracking, we capture better data more frequently. A comparison:

| Compared dimension | Self-managed (Usage Ping) | GitLab.com |
| ------ | ------ | ------ |
| Frequency | Infrequent; sent weekly from instances | Frequent; hours to see new events |
| Fidelity | Low; anonymized counts | High; page views, clicks, time spent on page, anything in schema.rb |
| User penetration | Low; most instances opt-out | High; users can opt out of event tracking in browser, but Snowplow/PSQL captures almost everything |
| Customer representation  | Fair; self-managed is more representative of EE use, but opt-out remains high | Poor; high proportion of free individual users |
| SMAU eligible  | Yes - events tracked with usage ping can be added to a stage's SMAU definition | No - events tracked with Snowplow are not able to be added to SMAU as user_id is not tracked. |

The last item is the most salient; analyses should consider differences in population and behavior (and ideally control for them, such as filtering 
individuals/non-groups out of analysis), as usage across GitLab.com will likely differ significantly from usage on a large self-managed instance.

#### Adding events to Snowplow

Like Usage Ping, individual teams are free to prioritize and capture events using the existing Snowplow implementation.

**Page views and page pings (time spent on page).** Captured automatically. [Snowplow was introduced](https://gitlab.com/gitlab-org/gitlab-ee/merge_requests/6642) as a configurable
setting that when enabled, sits in the header of every page on GitLab.com. As a result, we get a destination and referral URL for each page (using [the `trackPageView` method](https://github.com/snowplow/snowplow/wiki/2-Specific-event-tracking-with-the-Javascript-tracker#trackPageView)) along with page pings every 30 seconds (using [the `enableActivityTracking` method](https://github.com/snowplow/snowplow/wiki/2-Specific-event-tracking-with-the-Javascript-tracker#enableActivityTracking)).

**Custom click events.** Capturing specific click events on individual pages requires specification of what we'd like to track. Tracking click events is accomplished by calling a [generic JS function](https://gitlab.com/gitlab-org/gitlab-ee/merge_requests/7403) wherever desired. When clicked, the client sends a defined click event to our Snowplow endpoint. This function is based on [Snowplow's built-in `trackStructEvent` method](https://github.com/snowplow/snowplow/wiki/2-Specific-event-tracking-with-the-Javascript-tracker#trackStructEvent).

To send additional click events to Snowplow:
1. **Detail any desired additions in an issue.** See examples([1](https://gitlab.com/gitlab-org/gitlab-ee/issues/7429), [2](https://gitlab.com/gitlab-org/gitlab-ee/issues/7427)) of other issues. 
Issues should be as specific as possible. 
  * Note that our current approach doesn't require tracking for actions that send the user to another URL (e.g. clicking a "Submit" CTA). Since capturing this event would require delaying the user from the new page while the event is sent, we rely on the referrer URL we obtain from page views.
  * See the section below on taxonomy.
1. **Work with the relevant team to schedule the work.** As mentioned above, the team that owns a feature should also be responsible for any instrumentation.

#### Taxonomy

When adding new click events, we should add them in a way that's internally consistent. If we don't, it'll be very painful to perform analysis across features since each feature will be capturing events differently.

The [current method](https://gitlab.com/gitlab-org/gitlab-ee/merge_requests/7403) provides 5 attributes that are sent on each click event. Please try to follow these guidelines when specifying events to capture:

| attribute | type     | required | description |
|:----------|:---------|:---------|:------------|
| category  | text     | true     | The page or backend area of the application. Unless infeasible, please use the Rails page attribute by default in the frontend (`document.body.dataset.page`), and namespace + classname on the backend. |
| action    | text     | true     | The action the user is taking, or aspect that's being instrumented. The first word should always describe the action or aspect: clicks should be `click`, activations should be `activate`, creations should be `create`, etc. Use underscores to describe what was acted on; for example, activating a form field would be `activate_form_input`. An interface action like clicking on a dropdown would be `click_dropdown`, while a behavior like creating a project record from the backend would be `create_project` | 
| label     | text     | false    | The specific element, or object that's being acted on. This is either the label of the element (e.g. a tab labeled 'Create from template' may be `create_from_template`) or a unique identifier if no text is available (e.g. closing the Groups dropdown in the top navbar might be `groups_dropdown_close`), or it could be the name or title attribute of a record being created. |
| property  | text     | false    | Any additional property of the element, or object being acted on. |
| value     | decimal  | false    | Describes a numeric value or something directly related to the event. This could be the value of an input (e.g. `10` when clicking `internal` visibility). |
| context   | json     | false    | Context is in the process of being defined. |

Other guidelines:
1. The existing category name can be attained by convention on the frontend via `document.body.dataset.page` 
1. Use underscores, not camelcase.
1. Descriptive strings should always begin with a general term and become more specific. For example, say `click_tab` (general action taken -> what the action was taken on).
