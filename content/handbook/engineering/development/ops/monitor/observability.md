---
title: "Monitor:Observability Group"
---

## Who we are?

The Observability group is part of the GitLab [Monitor stage](/handbook/engineering/development/ops/monitor/) and builds [GitLab Observability product](https://about.gitlab.com/direction/monitor/observability/).

### Team members

<%= direct_team(manager_role: 'Engineering Manager, Monitor:Observability') %>

### Stable counterparts

<%= stable_counterparts(role_regexp: /(?<!:)Monitor(?!:Respond)/, direct_manager_role: 'Engineering Manager, Monitor:Observability') %>

## Technical Architecture

### Architecture Blueprints

* [Error Tracking](https://gitlab.com/gitlab-org/opstrace/opstrace/-/blob/main/docs/architecture/error-tracking.md)
* [Tracing](https://docs.gitlab.com/ee/architecture/blueprints/observability_tracing/)
* [Metrics](https://docs.gitlab.com/ee/architecture/blueprints/observability_metrics/)
* [Logs](https://docs.gitlab.com/ee/architecture/blueprints/observability_logging/)

### Architecture Documentation

* See [this page](https://gitlab.com/gitlab-org/opstrace/opstrace/-/tree/main/docs/architecture)

### ClickHouse Datastore

Observability and analytics features have big data and insert heavy requirements which are not a good fit for Postgres or Redis. [ClickHouse](https://github.com/ClickHouse/ClickHouse) was selected as a good fit to meet these features requirements. ClickHouse is an open-source column-oriented database management system. It is attractive for these use cases because it can efficiently filter, aggregate, and sum across large numbers of rows. ClickHouse is not intended to replace Postgres or Redis in GitLab's stack.

We initially managed our own self-hosted Clickhouse instance, but decided to migrate to Clickhouse Cloud to enable the team to move quicker by offloading maintenance and scalability to Clickhouse.

Learn more: [Clickhouse Datastore Working Group](/handbook/company/working-groups/clickhouse-datastore/)

## How we work?

### Async Standups

We have slack-based standups (using [Geekbot](https://geekbot.com/)) on Wednesdays and retrospectives on Fridays. We use these async standups to communicate what we have accomplished, any current blockers and what we plan to work on next.

### Async Updates

Every Friday, the EM provides an async update of the team's progress, following the [Ops sub-department async updates](/handbook/engineering/development/ops/#async-updates-no-status-in-meetings) process.

These updates are published as [issues in the `general` project](https://gitlab.com/gitlab-org/opstrace/general/-/issues/?sort=created_date&state=all&label_name%5B%5D=OpsSection%3A%3AWeekly-Update&first_page_size=100).

Updates and highlights from all teams in Ops are collected automatically [here](https://gitlab.com/gitlab-com/ops-sub-department/ops-status-updates/-/issues/?sort=created_date&state=opened&first_page_size=20), grouped by week / month / quarter.

### Meetings

- **Weekly Team Sync:** These are focused on organizing ongoing work or specific efforts such as rollout-outs or bigger initiatives.
- Bi-monthly social hour: This meeting is non-work related and helps team socialize and get to know each other better.
- **Team member coffee chats:** Each team member should schedule a coffee chat with all other team members rough every 4-6 weeks. Feel free to discuss work or non-work topics. If timezones are an issue find another way to connect, such as a async slack thread to checkin. The goal is to get to know your other team members on a 1:1 basis.
- **Dev Syncs:** These are developer-organized sync meetings where ICs can meet and discuss technical issues or organize technical work amongst themselves without requiring the presence of a EM.

### Communication

We use several Slack channels to organize ourselves:

- Primary channel: [#g_observability](https://gitlab.slack.com/archives/C02Q93U8J07)
- Standup channel: [#g_observability_standup](https://gitlab.slack.com/archives/C02VAHG10HW)
- Social channel: [#g_observability_random](https://gitlab.slack.com/archives/C02QLQUB0JZ)

### How we do planning?

We are following the monthly milestone cadence. Work is organized into [epics](https://gitlab.com/groups/gitlab-org/opstrace/-/epics/92 "Observability Group - FY25 HQ") and assigned to the relevant milestones:

- Two weeks before the beginning of the Milestone, the EM or PM start a [new planning issue ](https://gitlab.com/gitlab-org/opstrace/general/-/issues/?sort=updated_desc&state=all&label_name%5B%5D=Planning%20Issue&first_page_size=20)and define high level milestone goals.
- Individual contributors recommend epics and issues related to these goals or carried over from previous milestones.
- One week before the beginning of the milestone, milestone goals and related epics and issues should be finalized and prioritized.
- All Planning work can be seen on the [Planning Board](https://gitlab.com/groups/gitlab-org/opstrace/-/boards/3657448)
- Throughout the Milestone we analyze progress and reprioritize as needed.

### How to find something to work on

Normally at the beginning of the Milestone the EM will discuss an overview of the work and what relevant areas you will focus on. Sometimes issues will already be assigned to you before the Milestone begins.

If you are ever looking for additional issues to work on:

1. Look at the [Development board](https://gitlab.com/groups/gitlab-org/opstrace/-/boards/4463190)
2. Identify an issue in the Ready for Development or Open columns that are unassigned.
3. Assign yourself to the issue.
4. Add a `workflow:in dev` label to the issue
5. If the scope or description are unclear, connect with the EM and or PM for clarification or (if feeling confident) groom the issue yourself and proceed.
6. Begin working on the issue.
7. Once you are done with the issue, make sure any relevant MRs are linked and close the issue.
8. Repeat.

## Weekly Project Plan for Tracing

Epic: https://gitlab.com/groups/gitlab-org/opstrace/-/epics/73

**Week of 2023-10-23**

- [Show all span attrs in details drawer](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/2388 "Show all span attributes in details drawer")

**Week of 2023-11-06**

- [Add Tracing Documentation with Beta features](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/2439 "Update Tracing documentation with beta features")

**Week of 2023-11-13**

- [Sort traces by recency & duration](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/2385 "Sort traces by recency & duration")
- [Show traces for search that matches root and child spans](https://gitlab.com/gitlab-org/opstrace/opstrace/-/issues/2381 "Show context for why trace is shown in filtered list")

**Week of 2023-11-20**

- [ClickHouse Cloud Migration completed](https://gitlab.com/groups/gitlab-org/opstrace/-/epics/82 "Clickhouse cloud migration")

**Week of 2023-11-27**

**Week of 2023-12-04**

- [Accepted Production readiness review for Tracing](https://gitlab.com/gitlab-com/gl-infra/readiness/-/issues/91 "Readiness review: Observability Tracing")

## Dashboards

<%= partial "handbook/engineering/metrics/partials/\_cross_functional_dashboard.erb", locals: { filter_value: "Observability" } %>

