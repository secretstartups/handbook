---
layout: handbook-page-toc
title: "Monte Carlo Guide"
description: "Monte Carlo Guide"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## What and why

[Monte Carlo](https://www.montecarlodata.com/) (MC) is our [Data Observability](https://www.montecarlodata.com/blog-what-is-data-observability/) tool and helps us **deliver better results more efficiently**.

The Data Team default for observing the status of the data is using Monte Carlo. Creating any tests (called monitors in MonteCarlo) are done via the UI of Monte Carlo and reported according to the [notification strategy](/handbook/business-technology/data-team/platform/monte-carlo/#notification-strategy). On another iteration in the near future we plan to implement [Monitors as Code](https://docs.getmontecarlo.com/docs/monitors-as-code) and these tests will also be version controlled. Currently dbt still used for existing tests, there is no roadmap in place to migrate these to Monte Carlo.

## How We Operate Monte Carlo

We use the [#data-pipelines](https://gitlab.slack.com/archives/C0384JBNVDJ) Slack channel for MC platform related alerts.
We are planning on using the [#data-analytics](https://gitlab.slack.com/archives/CBZD1BA5S) Slack channel in the near future for model related alerts, as soon as we have implemented the full notification strategy for Monte Carlo.
This work is planned under this epic for F23Q3: [Onboard Analytics Engineers to the Monte Carlo Tool](https://gitlab.com/groups/gitlab-data/-/epics/615)

Monte Carlo is becoming an integral part of our [Daily Data Triage](https://about.gitlab.com/handbook/business-technology/data-team/how-we-work/triage/) and will replace the [TD Trusted Data Dashboards](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-operations-dashboard).


```mermaid
graph TD

mc(Monte Carlo)
sf(Snowflake Data Warehouse)
de(GitLab Team Member)

mc --> |alerts| de
de --> |improves| sf
sf --> |observes|mc
```


The whole body of work covering the Monte Carlo rollout at GitLab falls under epic [Rollout Data Observability Tool with 100% coverage of Tier 1 Tables to improve Trusted Data, Data Quality, and Data Team member efficiency](https://gitlab.com/groups/gitlab-data/-/epics/567), where the work breakdown has been done and issues have been created to reflect the necessary steps until we are up and running with Monte Carlo on production.


## Logging In


Login to Monte Carlo is done via Okta. Go to https://getmontecarlo.com/signin.
The following screen appears upon login and after providing your email and clicking "Sign in with SSO", you should be redirected to your Okta login.

![image](/handbook/business-technology/data-team/platform/monte-carlo/screenshot-1.png)

A runbook of how everything is technically set up can be found here: https://gitlab.com/gitlab-com/business-technology/team-member-enablement/runbooks/-/wikis/IT-Runbooks/App-Setup/Monte-Carlo:-How-It's-Built

The gist of it is that there is an Okta Group called Data that is a generic group which adds all users with `department = Data` to it.
This department group has the Monte Carlo app assigned to it.
In order to be able to access Monte Carlo via Okta by default, your user should be part of the Data department.

## Navigating the UI

Once logged in, you should be able to see the Monte Carlo Monitors dashboard with details on the objects being monitored and several custom monitors that have already been set up.


![image](/handbook/business-technology/data-team/platform/monte-carlo/screenshot-2.png)


You can create a new monitor or view existing monitor details, such as definition and schedule and any anomalies related to it.
Alternatively, you can also list all the incidents by clicking on the Incidents menu item on the top menu bar, you can search for a specific model by querying the Catalog view or check Pipelines for a detailed lineage information on how the data flows from the source to the production model.

Depending on the role assigned to your user (by default every user logging in via SSO is assigned a Viewer role), you might be able to see Settings and check existing users and integrations (such as Slack integration, Snowflake integration, dbt integration etc.)

If you need your role to be updated, you can reach out to anyone on the data platform team and they will be able to modify your existing role.

More information on navigating the UI can be found in the official documentation: https://docs.getmontecarlo.com/docs/how-to-navigate-the-monte-carlo-ui

## Adding a New Monitor

Monte Carlo will be running volume, freshness and schema change monitors by default on all the objects it has access to.
However, these checks are based on update patterns the tool learns from the data and if you need a specific custom check that runs on a certain schedule, you might want to add a custom monitor for that.

The official Monte Carlo documentation on monitors can be found here: https://docs.getmontecarlo.com/docs/monitors-overview

## Fine-Tuning an Existing Monitor

If you want to modify an existing monitor, depending on the type of monitor, you can modify different parts of it such as the schedule, the timestamp field to be taken into account & the alert condition.


## Responding To A Slack Alert

Currently, when we are getting a notification on the #data-pipelines channel, we can already triage the issue via Slack by assigning a status to it choosing from: Investigating, Expected, Fixed, No Action Needed or False Positive.
Once we start investigating and we have a finding, if we write a comment on Slack in the same notification thread, that comment will automatically be added to the incident on Monte Carlo.

Our goal is to be able to integrate Monte Carlo with GitLab so that whenever we get an alert on Slack, a triage issue would automatically be opened on GitLab and we'd follow the same [Data Triage procedure](https://about.gitlab.com/handbook/business-technology/data-team/how-we-work/triage/) as usual.

There is detailed information including a video section in the official Monte Carlo documentation on [how to respond to an alert](https://docs.getmontecarlo.com/docs/explore-monte-carlo-incidents).

## Note on DWH Permissions

In order for Monte Carlo to be integrated with Snowflake, we have had to run the permissions script as specified in the [official docs](https://docs.getmontecarlo.com/docs/snowflake) for each database we needed to monitor.
The same script  has to be run as many times as we have databases to monitor (in our case `raw`, `prep` and `prod`) with the correct values for the `$database_to_monitor` variable.
The data observability user is stored on our internal data vault.

Please note this is an exception to our usual permission-handling procedure, where we rely on Permifrost, because observability permissions are an edge-case for Permifrost and not yet supported by the tool.
There is an ongoing [feature request](https://gitlab.com/gitlab-data/permifrost/-/issues/120) on Permifrost for adding granularity to the way permissions are set, but no solution has been agreed on yet.

## Notification strategy

All incidents are reported in MonteCarlo incident portal. For triage purposes the most important (which requires action) are routed towards Slack. The following matrix shows per data area which type of monitors are routed and towards which channel:

| Database | DataScope                                               | Volume               | Freshness      |  Schema changes                                   | Custom monitors|
|-----------|------------------------------------------------------|----------------------|----------------------|-------------------------------------|----------------------|
| RAW       | TIER1                                                | #data-pipelines      | #data-pipelines      | #analytics-pipelines (once per day) | #data-pipelines      |
|           | TIER2                                                | #data-pipelines      | #data-pipelines      | #analytics-pipelines (once per day) | #data-pipelines      |
|           | TIER3                                                | #data-pipelines      | #data-pipelines      | #analytics-pipelines (once per day) | #data-pipelines      |
| PREP      | n/a                                                  | -                    | -                    | -                                   | -                    |
| PROD      | COMMON `*` | #analytics-pipelines | #analytics-pipelines | -                                       | #analytics-pipelines                                       |
|           | WORKSPACE  `**`                                      | -                    | -                    | -                                   | -                    |
|           | WORKSPACE-DATA-SCIENCE     | #data-science-pipelines | #data-science-pipelines                     | -                                   | #data-science-pipelines |
|           | LEGACY `***`                                         | -                    | -                    | -                                   | -                    |


`*` COMMON is also the COMMON_RESTRICTED equivalent. It excludes COMMON_PREP and COMMON_MAPPING    
`**` WORKSPACE-DATA-SCIENCE is the only workspace schema we are including in the notification strategy    
`***` Only these two models (`snowplow_structured_events_400` and `snowplow_structured_events_all`) of the `LEGACY` schema have been included temporarily as per [!7049](https://gitlab.com/gitlab-data/analytics/-/merge_requests/7049)
