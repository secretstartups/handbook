---
title: "Core Platform:Gitaly Team"
---

## What is Gitaly?

The Gitaly team is responsible for building and maintaining systems to ensure
that the Git data storage tier of GitLab instances, and _GitLab.com in particular_,
is reliable, secure and fast. For more information about Gitaly, see the [README in the repository](https://gitlab.com/gitlab-org/gitaly/-/blob/master/README.md) and the [roadmap](#roadmap) below.

The team includes [Backend Engineers](/job-families/engineering/development/backend/#gitaly) and [SREs](/job-families/engineering/infrastructure/site-reliability-engineer/#gitaly) collaborating to deliver a reliable, scalable and fast data storage to our customers.

### Functional boundary

While GitLab is the primary consumer of the Gitaly project, Gitaly is a standalone product which can be used external to GitLab. As such, we strive to achieve a functional boundary around Gitaly. The goal of this is to ensure that the Gitaly project creates an interface to manage Git data, but does not make business decisions around how to manage the data.

For example, Gitaly can provide a robust and efficient set of APIs to move Git repositories between storage solutions, but it would be up to the calling application to decide when such moves should occur.

Processes fully independent of business inputs (such as repository maintenance) should be fully contained within Gitaly as they provide substantial value to anyone using the Gitaly project.

### Roadmap

Please see the public [product direction for Gitaly](https://about.gitlab.com/direction/gitaly/).

The [vision and principles](https://internal.gitlab.com/handbook/engineering/infrastructure/core-platform/systems/gitaly/roadmap/) driving the roadmap can be found in the internal handbook.

The current roadmap is [this epic board](https://gitlab.com/groups/gitlab-org/-/epic_boards/1058926?label_name[]=Roadmap&label_name[]=group%3A%3Agitaly). See [Roadmap planning](#roadmap-planning) below as to how this is managed.

#### Featured upcoming large architectural changes

- [Iterate on the design of object pools](https://docs.gitlab.com/ee/architecture/blueprints/object_pools/)
- [Rework repository backups](https://docs.gitlab.com/ee/architecture/blueprints/repository_backups/)
- [Gitaly Adaptive Concurrency Limit](https://docs.gitlab.com/ee/architecture/blueprints/gitaly_adaptive_concurrency_limit/)
- [Handle upload-pack traffic in a pure HTTP/2 server](https://docs.gitlab.com/ee/architecture/blueprints/gitaly_handle_upload_pack_in_http2_server/)
- [Transaction management in Gitaly](https://docs.gitlab.com/ee/architecture/blueprints/gitaly_transaction_management/)

## Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts role="[&,] Systems:Gitaly( API)?" manager-role="Backend Engineering Manager, Gitaly" >}}

## How to contact the team

### Urgent issues and outages

If you're not part of the Support organization, please consider seeking help from them first -- Support has better availability and can help in most common cases.

If you still need help, please file an issue [here](https://gitlab.com/gitlab-org/gitaly/-/issues/new?issuable_template=Support%20Request). Post it on [#g_gitaly](https://gitlab.slack.com/archives/g_gitaly) for more immediate visibility and tag EM and PM, and the Support person you're working with.

#### Future oncall rotation

NOTE: Gitaly is working on second-tier [on-call coverage](#gitaly-oncall-rotation) for well-defined emergencies only. This is not enabled yet; the tentative start date is 2025-01-01.

Please do not page oncall outside of these cases; contact Support instead!

- For **production incidents only**, SRE or IMOC on-call can page the current [Gitaly oncall](#gitaly-oncall-rotation) manually.
- For **customer emergencies**, Support engineers and managers can page the current [Gitaly oncall](#gitaly-oncall-rotation) manually.
- If you're working on a customer emergency but not part of Support, please contact Support instead.

For these cases, use `/pd trigger` on Slack, then select the Gitaly rotation. For all other cases please file an issue under [Customer issues](#customer-issues).

### Customer issues

Please file an issue [here](https://gitlab.com/gitlab-org/gitaly/-/issues/new?issuable_template=Support%20Request). Post it on [#g_gitaly](https://gitlab.slack.com/archives/g_gitaly) for more immediate visibility.

**A note on customer escalations and engagements**

We are happy to help when a customer needs it! But please keep in mind that we are primarily a _development_ team, not equipped for "field engineering".

Our _engineers_ can help, preferably [async](/handbook/company/culture/all-remote/asynchronous/), with:

- deep technical investigation based on _data_ and able technical collaboration, in close partnership with Support and CSM
- providing product-level fixes or improvements, work to be scheduled and results released as usual, under [direction of EM and PM](#working-with-product)
- improving our documentation if something's unclear

_Engineering Managers_ (`@jcaigitlab` & `@andrashorvath`) and _Product Managers_ (`@mjwood`) are also happy to engage with customers if you need assistance clarifying roadmaps, product features and timelines, or to ensure the correct prioritization.

We are not a good fit however if you need:

- advice on GitLab instance configuration or architecture in self-hosted scenarios ([Reference Architectures](https://docs.gitlab.com/ee/administration/reference_architectures/) and Professional Services can help)
- engagements without clear exit criteria (please clarify them first, "let's jump on a call to discuss" is usually in this category)
- long-term "advise us" scenarios (please refer to Support and the documentation, or engage Professional Services)

This [epic](https://gitlab.com/groups/gitlab-org/-/epics/11576) discusses possible development of this engagement model.

### Normal priority requests

To get Gitaly team work on something, it's best to create an issue on the [Gitaly issue tracker](https://gitlab.com/gitlab-org/gitaly/issues)
and add the `group::gitaly` and `workflow::problem validation` labels,
along with any other appropriate labels.  Then, feel free to tag the relevant
Product Manager and/or Engineering Manager as listed above.

For information requests and other quick one-offs, feel free to use [#g_gitaly](https://gitlab.slack.com/archives/g_gitaly) on Slack to get attention on the issue.

### Issues with `Infradev` labels

These are typically [Corrective Actions or other followup items](/handbook/engineering/workflow/#infradev) that have strict
SLO tracking. They will be scheduled through either of the above paths, by EM
and/or PM polling [these dashboards](#useful-links).

### Gitaly oncall rotation

Gitaly team is in the process of establishing an oncall rotation to provide focused expertise to production SaaS systems. This is currently in [pilot](https://gitlab.com/groups/gitlab-org/core-platform-section/-/epics/4), and replaces the **Incident Manager On-Call (IMOC)** and **Engineer On-Call (EOC)** responsibilities for Gitaly team members. **The tentative start date is 2025-01-01.**

- Rotation is staffed during working hours of team members (no weekends). This still covers 24h of workdays, given the distribution of Gitaly team members, but without guarantees (see [Who is oncall](#who-is-oncall) below)
  - Weekends are explicitly out of scope (not staffed), and escalation must fall back to the current EOC rotation.
  - Given that responsibilities are only during working hours, there's no additional compensation unless explicitly specified otherwise.
  - You can choose to take time in lieu via Workday, selecting `the On-Call Time in Lieu` option after a shift.
- Gitaly team members are expected to provide technical assistance for ONLY the cases described in [Urgent issues and outages](#urgent-issues-and-outages)
  - There is no intention to trigger this rotation directly from monitoring at this time.
  - All contact **must** follow the process described in [How to contact the team](#how-to-contact-the-team) above, including who and why can page.
- Team members provide 15 minutes response time while oncall.
  - The team member on-call is expected to be _available and reachable_ (but not necessarily actively working, as long as you can start the investigation within this SLO.)
  - If paged less than 15 minutes before the end of a shift, you still must respond and explicitly hand off the incident.
- Ongoing production incidents and customer escalations are explicitly handed off by the person leaving shift to the next Gitaly oncall using the incident channel on Slack.

#### Training material

- https://handbook.gitlab.com/handbook/engineering/on-call/#expectations-for-on-call
- [Debugging Gitaly](debug.md)
- [Production Training](https://gitlab.com/gitlab-org/gitaly/-/issues/new?issuable_template=Production%20Training) issues

#### Joining the rotation

File and complete a [Production Training](https://gitlab.com/gitlab-org/gitaly/-/issues/new?issuable_template=Production%20Training) issue. It includes instructions for joining the rotation.

#### Who is oncall

The source of truth is the [PagerDuty rotation](https://gitlab.pagerduty.com/schedules#POS76YN). If you're scheduled but want to take PTO, you're responsible for finding coverage. (In case of emergencies, managers will take over this duty.)

#### Roster management

Please refer to https://handbook.gitlab.com/handbook/engineering/on-call/#pagerduty for the mechanics (swapping oncall, adding new team members to the rotation).

## Cluster team

**Mission**: Provide a durable, performant, and reliable Git storage layer for GitLab.

[Responsibilities](/job-families/engineering/backend-engineer/#cluster) |
[In the product hierarchy](/handbook/product/categories/#gitalycluster-group)

{{< team-by-departments "Gitaly Cluster Team" >}}

## Working with product

### Agile workflow in Gitaly

We generally follow the [Product Development Flow](/handbook/product-development-flow/#workflow-summary) to schedule and track our work.

Work is executed in small chunks (2-3 days of work), each tracked as an issue. This allows for natural "checkpoints" for safe context switching.
Triaging and scheduling is separate from executing the current work. All incoming work is tracked and we are intentional about picking up new work.

Incoming work of all kind (both projects and ad-hoc interrupts) passes by EM and PM for triage. There may be some engineering consultation here about feasibility,
fit with the product's strategy roadmap etc. Some will get scheduled, some goes to the backlog. If the effort is not deemed necessary or not believed
to align with the roadmap, we will close the issue with commentary as to why it is not being pursued for future reference.

We aim to scope milestones such that we have a task list that is ambitious, but not overwhelming. We deliberatly leave some capacity for incoming incidents.
We want to avoid the feeling of a never ending mountain of work to promote a healthy work / life balance.
It is also important to stress that milestones are recommendations only and we work on a best effort basis.

For issues with a strict SLO, we follow the process defined [below](#handling-issues-with-strict-slo)

We use the following workflow labels on the issues:

1. `workflow::problem validation` - A good spot to put features that we may / may not want to pursue. This is where product can do some user interviews, cost analysis, market fit, etc to decide if it's an opportunity we wish to pursue.
1. `workflow::solution validation` - Use this label for features / issues where Engineering needs to investigate / propose a solution going forward, or break it down into smaller issues.
1. `workflow::planning breakdown` - Issues ready to be scheduled in the next few milestones (unblocked or soon unblocked, with a known solution). Leaders of long-running (pre-approved) projects use this to communicate with PM.
1. `workflow::ready for development` - Work that is scheduled for a milestone (either the current one, or one in the future).
1. `workflow::in dev` - Actively being worked by the Engineering team
1. `workflow::in review` - Work that is in review
1. `workflow::verification` - code is in production and pending verification by the DRI engineer
1. `workflow::complete` - changes are verified, issue can be closed

Issues that we definitely want to prioritize for a release receive a `Deliverable` label and are moved to the top of the list.
These `Deliverable` issues help show our commitment to GitLab and our customers around working on these issues.

#### Picking up new work

We work off the [Gitaly ongoing work issue board](https://gitlab.com/groups/gitlab-org/-/boards/1140874?label_name%5B%5D=group%3A%3Agitaly&milestone_title=Upcoming), where the `workflow::ready for development` column is loosely sorted with higher priority items on top. Engineers ready to pick up more work do not necessarily need to assign the topmost item, but rather make an informed choice with affinity (area of expertise, relative urgency, interest etc). However, please take care not to work "siloed" for long periods, but rather use the opportunity of picking up new work to address infrastructure issues (eg flaky tests) or to help out and learn in another area.

Assign yourself to the item of choice and move it to `workflow::in dev` (and later as appropriate).

Note that P1/S1 work should be the only one to preempt this default flow. Do involve PM and EM if urgent work needs to be prioritized, but for P1/S1 burning fires a [bias for action](/handbook/values/#bias-for-action) is of course preferred, just keep everyone informed.

#### Blocked issues

If your work is blocked, use `workflow::blocked` and set a blocking issue for clarity. Then consider asking for help and/or helping to unblock another team member's blocked work before picking up something else.

Issues blocked for a long time should be removed from this process by removing the milestone and unassigning.

#### Adding more work for the team

Everyone can file new issues as more work is discovered, and feed them into this process. To do so, file an issue, tag EM and PM, and assign `workflow::planning breakdown` without a milestone. Please explain both _what_ needs to be done and _why_ (ie the impact and urgency), and make it clear whether the work is ready to be picked up. (This is also how project DRIs add the next steps in their projects to the workflow.)

#### Meta

A weekly call is held between the product manager and engineering managers (of both Cluster and Git teams).
Everyone is welcome to join and these calls are used to discuss any roadblocks, concerns, status updates, deliverables, or other thoughts that impact the group.

### Roadmap planning

The current roadmap is [this epic board](https://gitlab.com/groups/gitlab-org/-/epic_boards/1058926?label_name[]=Roadmap&label_name[]=group%3A%3Agitaly). It consists of themes/projects running for a quarter or longer (in some cases, much longer). It is okay to add sub-projects directly to the roadmap in the latter case.

- Anyone can propose a project: file an epic and discuss with the team (and EM+PM). Don't forget the `group::gitaly` label.
- Once accepted, we add the `Roadmap` label.
- Ongoing roadmap items get `roadmap::now`,  while `roadmap::next` and `roadmap::later` show what's been triaged and pushed into the future for now.
- At each quarterly planning:
  - we review roadmap items (using arguments from the [vision and principles](https://internal.gitlab.com/handbook/engineering/infrastructure/core-platform/systems/gitaly/roadmap/), current business priorities etc)
  - and then take on OKRs that push those goals forward.

### Quarterly OKR planning

OKR planning is done before every quarter for the next 3 milestones, with input from everyone. At that time, we must already have a good idea of the work that needs to be done.

The process is as follows:

1. EM+PM (with input from engineers and stakeholders): decide the scope we'll be working on. Update roadmap items.

1. EM+PM+Engineers: Based on roadmap items, file smaller epics/issues if needed that can be completed in 3 milestones (ie one quarter). Tie them to the overall project epics. This is where we'll track the actual work.

1. EM: File Objectives and Key Results [here](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&label_name%5B%5D=group%3A%3Agitaly&first_page_size=20) and tie them to the actual work. We use these for reporting/communication of what we want to work on, project goals for the quarter, and its progress. Where possible, align with the larger organization's objectives. If possible, add a preliminary scoring table ("what does it mean to reach 20% of this OKR?").

1. PM: Once the scope of the quarter is clear, take the list of issues and assign one of the three milestones, along with `workflow::planning breakdown` (for large issues in need of breakdown) or `workflow::ready for development`.

1. Engineers: help break down `workflow::planning breakdown` items and file smaller issues if needed, adding them to the same 3 milestones as reasonable. Raise exceptions as needed.

### Handling issues with strict SLO

Issues with `Infradev` label are typically [Corrective Actions or other followup items](/handbook/engineering/workflow/#infradev) that have strict
SLO tracking. They will be scheduled through either of the above paths, by EM
and/or PM polling these dashboards:

[Infradev Dashboard](https://10az.online.tableau.com/#/site/gitlab/views/DraftInfrastructureEmbeddedDashboard/InfradevDashboard?:iid=1)
[Past due Infradev issues](https://10az.online.tableau.com/#/site/gitlab/views/DraftInfrastructureEmbeddedDashboard/InfrastructureEmbeddedDashboard?:iid=1)

1. EM+PM: Poll the dashboards at least weekly. Triage and schedule these issues so that SLOs can be met. If needed, move the issue to the Gitaly tracker, or file a proxy issue there so that it shows up on work boards, and mark it as blocking. Drag issues to the top of the workflowready for development column.

1. EM+PM: If the issue is blocked or depends on ongoing work, add a Milestone that fits the SLO and the pending work (so that we don't forget it). Ensure that blocking work gets scheduled before.

1. Engineers: please prioritize picking up this work, and post frequent (at most weekly, even if no changes) updates in the original issue. Mark any blocking issues as such.

## Gitaly consumers

To have a constant communication flow about planned changes, updates and maybe
breaking changes we have the [#g_gitaly](https://gitlab.slack.com/archives/g_gitaly) Slack channel. In the
channel we will provide updates for all teams using the service but also ask
for assistance to provide feedback and insights about planned changes or improvements.

To support this pro-active communication additionally there is also an individual
counterpart on the consumer side to help with research in the codebases and
coordination with all the teams consuming Gitaly. The DRI on Consumer side is Igor Drozdov.

The Gitaly consumers are:

- [GitLab Rails](https://gitlab.com/gitlab-org/gitlab)
- [GitLab Shell](https://gitlab.com/gitlab-org/gitlab-shell)
- [GitLab Workhorse](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/development/workhorse/index.md)
- [GitLab Elasticsearch Indexer](https://gitlab.com/gitlab-org/gitlab-elasticsearch-indexer)

## Gitaly Deprecations

Gitaly offers many customer facing features. As such, all deprecations to customer facing features will follow the standard [GitLab feature deprecations guidance](/handbook/marketing/blog/release-posts/#deprecations-removals-and-breaking-changes) and announced within the [deprecations documentation page](https://docs.gitlab.com/ee/update/deprecations.html).

Gitaly also offers many non-customer facing features, which are used by GitLab and other customers who directly interface with Gitaly. These Gitaly level deprecations will not be announced using the above methods as they are not designed for GitLab end users to interface with directly. Some examples of these non-customer facing features are storage level APIs, which should never be called by GitLab users.

## Retrospectives

At the beginning of each release, the Gitaly EM will create a retrospective issue
to collect discussion items during the release. The first weekly Gitaly meeting
after the 18th that issue will be used to discuss what was brought up.

## Metrics

### On gitlab.com

- [Incidents](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/?sort=created_date&state=all&label_name%5B%5D=Service%3A%3AGitaly&label_name%5B%5D=incident&first_page_size=100) (not all pages are incidents)
- [Pages](https://nonprod-log.gitlab.net/goto/2e1a9f00-f006-11ed-bb50-33eb1f5eb489)
- [Global Apdex](https://dashboards.gitlab.net/d/gitaly-main/gitaly-overview?orgId=1&viewPanel=3357097446)
- [Alerts](https://log.gprd.gitlab.net/goto/17c536b0-efd0-11ed-8afc-c9851e4645c0) (S1/S2 are paging, S3/S4 are not)

### Useful links

- [Debugging Gitaly](debug.md)
- [Actual pending Infradev issues](https://10az.online.tableau.com/#/site/gitlab/views/DraftInfrastructureEmbeddedDashboard/InfrastructureEmbeddedDashboard?:iid=1) (sort by group, focus on gitaly)
- [Out of SLO Infradev issues](https://10az.online.tableau.com/#/site/gitlab/workbooks/2219735/views)
- [Error budget](https://dashboards.gitlab.net/d/stage-groups-detail-gitaly/stage-groups-gitaly-group-error-budget-detail?orgId=1&from=now-28d%2Fm&to=now)
- [MR review workload](https://gitlab-org.gitlab.io/gitlab-roulette/?currentProject=gitaly)

### Dashboards

{{< tableau height="600px" toolbar="hidden" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/TopEngineeringMetrics/TopEngineeringMetricsDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="gitaly" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/MergeRequestMetrics/OverallMRsbyType_1" >}}
  {{< tableau/filters "GROUP_LABEL"="gitaly" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/Flakytestissues/FlakyTestIssues" >}}
  {{< tableau/filters "GROUP_NAME"="gitaly" >}}
{{< /tableau >}}

{{< tableau height="600px" src="https://us-west-2b.online.tableau.com/t/gitlabpublic/views/SlowRSpecTestsIssues/SlowRSpecTestsIssuesDashboard" >}}
  {{< tableau/filters "GROUP_LABEL"="gitaly" >}}
{{< /tableau >}}

## Team development

### Onboarding

To complete team-specific onboarding, please file an issue
[here](https://gitlab.com/gitlab-org/gitaly/-/issues/new?issuable_template=Team%20Member%20Onboarding).

### Offboarding

Maintainer rights are revoked, and to remove the developer from the list of
authorized approvers, remove them from the `gl-gitaly` GitLab.com group.
