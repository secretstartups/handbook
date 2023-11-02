---

title: "IT Engineering - How We Work - Labels"
description: "This handbook page provides information about how we use GitLab.com labels to categorize and visualize our work."
---


{:.no_toc}


{:toc}

## Overview

The IT Engineering team uses multiple labels to help us categorize our work. These labels are always applied to issues. Most merge requests are created from issues and inherit the issue labels.

Our issue trackers and most of our source code repositories are located in the [gitlab-com/business-technology/engineering](https://gitlab.com/gitlab-com/business-technology/engineering) group.

Most issues are created in the [IT Engineering Operations (EngOps)](https://gitlab.com/gitlab-com/business-technology/engineering/operations/issue-tracker/-/issues) or [IT Infrastructure](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure/issue-tracker/-/issues) issue trackers.

We also have private repositories for infrastructure-related least privilege on [ops.gitlab.net/it-infra-realm](https://ops.gitlab.net/it-infra-realm) that are restricted to select IT Engineering and Security team members. We do not use labels on our `ops` projects since these issues and MRs are specific to infrastructure-as-code and code deployment changes, and the business context and any comments are contained in a linked gitlab.com issue for change management tracking.

## Labels

All labels are created in the `gitlab.com/gitlab-com` top-level group so they can be applied to any projects that we work on. We do not use labels in our `ops.gitlab.net` projects.

- [it-difficulty::*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-difficulty)
- [it-metric::*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-metric)
- ~~[it-eng-metric::*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-eng-metric)~~
- [it-eng-priority::*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-eng-priority)
- [it-eng-service::*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-eng-service)
- [it-eng-status::*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-eng-status)
- [it-eng-type::*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-eng-type)

For source code related work, we also apply a changelog label that is used during [changelog generation](https://gitlab.com/gitlab-com/business-technology/engineering/tools/it-ops-laravel-cli-scripts/-/blob/main/app/Console/Commands/GenerateChangelog.php) to categorize commits and MRs ([example](https://gitlab.com/glamstack/gitlab-sdk/-/blob/main/changelog/2.1.14.md)).
- [it-eng-changelog*](https://gitlab.com/groups/gitlab-com/-/labels?subscribed=&search=it-eng-changelog)

If you're not sure what labels to use on a new issue, here are suggested defaults:
- `~"it-eng-type::ops-triage"`
- `~"it-eng-priority::p2"`
- `~"it-eng-service::(choose from list)"`
- `~"it-eng-status::inbox"`

## Issue Boards and Project Management

You can use the [IT Ops Laravel CLI Scripts](https://gitlab.com/gitlab-com/business-technology/engineering/tools/it-ops-laravel-cli-scripts#gitlab-issue-tracker-kanban-board) to get real time stats using your terminal. This provides more multi-dimensional categorization and sorting than is available in a GitLab issue board. You can see screenshots of how this works in the [v2.1.3 changelog](https://gitlab.com/gitlab-com/business-technology/engineering/tools/it-ops-laravel-cli-scripts/-/blob/main/changelog/2.1.3.md#screenshots).

You can visualize all issues in our queue across all projects on our [Kanban spreadsheet](https://docs.google.com/spreadsheets/d/1lOMKOMoPoYsnSH_INDuAXokXRR3IB7sJVlKCMndAgZY/edit#gid=0) (data is imported manually from CLI Scripts at least once weekly). This is used by our leadership team for quick reference and allows filtering during team project management meetings.

You can see high level activity and progress in our weekly [standup reports](https://gitlab.com/gitlab-com/business-technology/engineering/standup-reports/-/issues).

