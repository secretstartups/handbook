---
layout: handbook-page-toc
title: "Distribution Team Workflow"
description: "Overview of how work is performed by Distribution Engineers, for Omnibus, Helm and other Engineering projects."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Common links

* [Engineering Team Workflow](/handbook/engineering/workflow/)

## Summary

Distribution team members are expected to:

* Be kind in their interaction with the rest of the community and other teams
* Ensure that fixing red master branch in projects takes the highest priority
* Pick items to work on from the project scheduled queues
* Define test plans for changes not covered by integration tests
* Label issues and merge requests to track [engineering metrics](/handbook/engineering/metrics/)

## Groups

The distribution team is comprised of two groups, Distribution:Build and Distribution:Deploy.

### Distribution Build tasks

- Maintain all team pipelines for all Distribution projects
- Research for the support of new clouds, platforms, architecture, and components
- Access controls, permissions, and CVE patches
- Team infrastructure/resource management
- Dependency updates
- License management
- Submissions to Partners for validations/certifications

### Distribution Deploy tasks

- Initial installation and composability
- Upgrades / Downgrades
- Scaling deployments
- Migration between platforms or providers
- Data lifecycle management
- Secure configuration & communication
- Research of clouds and platforms for integration to existing tools

## Scheduled work

Engineering manager and Product manager are responsible for scheduling
work that is a direct responsibility of the Distribution team.

Work can be (very) roughly divided as:

* Work in [the omnibus-gitlab](https://gitlab.com/gitlab-org/omnibus-gitlab/) project
* Work in [the GitLab Helm chart](https://gitlab.com/gitlab-org/charts/gitlab) project
* Other work (in [projects owned by the team](/handbook/engineering/development/enablement/distribution/#projects))

All scheduled work for omnibus-gitlab, Helm charts and team projects is shown on the [Deliverable board](https://gitlab.com/groups/gitlab-org/-/boards/1282058?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Deliverable&label_name[]=group%3A%3Adistribution). Use additional filters to see specific milestones, etc.

### Label definitions

There are a number of labels applied at any time to both issues and merge requests (items),
but there is a priority, first being the highest:

* `Deliverable` - Issues with this label are agreed between team EM and the PM and have the highest overall priority. If you are looking for new work to pick up,
unassigned issues should be tackled in order of priority label. Deliverable issues not closed in a given milestone are auto forwarded
via [milestone cleanup](/handbook/engineering/workflow/#milestone-cleanup) workflow.
* `Distribution:Build` - Issues specific to, and MR's authored by [build](https://about.gitlab.com/handbook/engineering/development/enablement/distribution/#distributionbuild-charter) group. Label is not scoped.
* `Distribution:Deploy` - Issues specific to, and MR's authored by [deployment](https://about.gitlab.com/handbook/engineering/development/enablement/distribution/#distributiondeploy-charter) group. Label is not scoped.
* `Stretch` - Items with this label are scheduled for work similar like
the items with `Deliverable` label but with lower priority. If items with this label are not delivered in the current cycle, they will become `Deliverable` in the next release.
* `Unscheduled` - Items with this label are being worked on in this release but have not been previously scheduled by the EM and PM. Work on this items is
usually event driven - another team requires help, regression affecting users, or technical debt that is causing inefficiency in the team.
* `Internal` - Items with this label contain work that is not directly user facing, work such as technical debt, refactoring and workflow improvements. This label is a direct measurement of team effectiveness. If there are too many
items in this list, project is in danger of being overwhelmed with bugs caused by technical debt.
* `Maintenance` - Items with this label are related to regular maintenance. Items include tasks such as: upgrading versions of libraries that are shipped,
follow ups from review to improve some part of the code and similar.
* `For Scheduling` - Items with this label have been discussed between the team and the item creator,
and they require some work before they are resolved. Items with this label are triaged and will be
picked up by EM and PM for scheduling in the regular process.
* `Blocked` - Items with this label are blocked by other work. When adding this label, always include a comment referencing blocking issues or MRs.
* `spike` - Issues which primarily involve research to understand options and the breakdown of future deliverables. [Spikes](/handbook/product/product-processes/#spikes) are often the first issue in a new Epic where the output defines additional issues and order of serial/parallel work.
* `workflow::In dev` - When an engineer is ready to start on active development, this label should be added. This allows EM and PM to understand which issues are being worked and not just assigned.

In addition to the labels outlined above, see also [workflow labels used during merge request review](merge_requests.html#workflow) and [labels used during issue triage](triage.html#label-glossary).

Any unassigned issue is available for anyone to work on. You can show your interest in working on a specific task by leaving a comment in the issue.
To do so, comment must contain the *date* on which you will commence the work. If the comment does not contain the date, or the date has passed, the item is free to be picked up by anyone again.

All merge requests created by the team must include the `group::distribution` label, and issues to be worked on by the team should also have `group::distribution`.

### omnibus-gitlab project

The omnibus-gitlab project is a long running packaging project for GitLab and
as such it has had a number of years of development behind it. Since it is used to create our bread and butter installation method, the work is carried out
within the regular monthly release cycle to align with the rest of GitLab
development.

The development deadlines as defined in [PROCESS](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/PROCESS.md#feature-freeze-on-the-7th-for-the-release-on-the-22nd) document apply to this project.

### GitLab Helm charts

GitLab Helm charts are the newest installation method maintained by the Distribution team. Even though the project is generally available, the project is very fast paced to match the fast pace of communities around Kubernetes and Helm.

Due to the above, the project has a slightly different workflow compared to the omnibus-gitlab project.

The labels described above apply to this project as well, but there is an additional set of labels being
applied to each item.

All tasks are assigned to a weekly label. Labels are tied to a week of a specific milestone in the projects history:

* Labels in `0.0.X` range show the number of weeks that the project was worked on in pre, Alpha and Beta phases. Last label in that range was `0.0.42` which means that 42 weeks were used to get the project to  generally available status
* Labels in `0.1.X` range show the number of weeks since GA but before the next big milestone.
* Next change in label will be `0.2.X`, and it will describe the moment Chart reaches zero-downtime upgrades.

The label is used as a measure in how much time it is taking to work on one issue from the moment the item has been assigned to a milestone.
This allows us to estimate the priority of an issue or recognise if an issue needs to be split.
This measure is very important for making future decisions as items that seem
very urgent can be safely reprioritised due to previous experiences.

### Other projects

Any of the other projects in teams responsibility do not have a specific process assigned. The items not directly in any of the two above projects
will be assigned directly and deadlines set by the EM.

## Iteration

Use iteration to better control scope and deliver measurable value in each release. A timebox measurement process would ensure that if expected progress isn’t achieved, there’s a procedure to follow.

* If a project goes more than 2 milestones without delivering on the success criteria within the defined MVC/issue, a detailed evaluation/retrospective should be performed.
* If the project goes 3 milestones without meeting success criteria, then a larger evaluation should be performed with the section leaders.

The goal is to catch scope creep, ensure we are iterating in ways that deliver measurable value, and establish circuit breakers to address earlier as needed.
