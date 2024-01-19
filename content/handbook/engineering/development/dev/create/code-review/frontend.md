---
title: "Create:Code Review FE Team"
description: The Create:Code Review FE team is responsible for all frontend aspects of the product categories that fall under the Code Review group of the Create stage.
---

# Common Links

| **Category**            | **Handle** |
|-------------------------|-------------|
| **GitLab Team Handle**  | [@code-review-fe](https://gitlab.com/code-review-fe)
| **Slack Channel**               | [`#g_create_source-code-review-fe`](https://gitlab.enterprise.slack.com/archives/CS5NHHBJ7) |
| **Slack Handle**               | `@code_review_fe` |
| **Team Boards**         | [`Current Milestone`](https://gitlab.com/groups/gitlab-org/-/boards/2177994) |
| **Issue Tracker**       | [`group::code review` + `frontend` in `gitlab-org/gitlab`](https://gitlab.com/groups/gitlab-org/-/issues/?sort=created_date&state=opened&label_name%5B%5D=frontend&label_name%5B%5D=group%3A%3Acode%20review&first_page_size=20) |

# Team Vision

# Team Mission

# Commonly Monitored Issue Lists

* [Code Review + Frontend issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=created_date&state=opened&label_name%5B%5D=frontend&label_name%5B%5D=group%3A%3Acode%20review&first_page_size=20)
* [Milestone Planning Issues](https://gitlab.com/gitlab-org/create-stage/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Planning%20Issue&label_name%5B%5D=group%3A%3Acode%20review&first_page_size=20)
* [Triage reports](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/?sort=created_date&state=opened&label_name%5B%5D=type%3A%3Aignore&label_name%5B%5D=group%3A%3Acode%20review&first_page_size=20)
* [Feature flag reports](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/?sort=created_date&state=opened&label_name%5B%5D=triage%20report&label_name%5B%5D=feature%20flag&label_name%5B%5D=group%3A%3Acode%20review&first_page_size=20)
* [OKRs (confidential)](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&assignee_username%5B%5D=andr3&label_name%5B%5D=group%3A%3Acode%20review&first_page_size=20)

# Team Members

The following people are permanent members of the Create:Code Review FE Team:

{{< team-by-manager-role "Frontend Engineering Manager(.*)Create:Code Review" >}}

# Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts role="Create:Code Review$|Technical Writer(.*)Code Review|Director(.*)Create|Principal(.*)Create|Group(.*)Create" manager-role="Frontend Engineering Manager(.*)Create:Code Review"  >}}

# Core Responsibilities

# Projects

## Active Project Table

| Start Date | Project  | Description | Tech Lead |
| ------ | ------ | ------ |  ------ |
| 2019 | Merge Requests Vue app | The frontend application that renders Merge Requests | — |
| 2023-09 | [New Diffs](https://docs.gitlab.com/ee/architecture/blueprints/new_diffs/index.html) ([Epic](https://gitlab.com/groups/gitlab-org/-/epics/11559)) | A project to deliver a reusable and performant way of rendering diffs across GitLab | — |

# Engineering Onboarding

# Other related pages

<!-- FY25 content above this line -->

The Create:Code Review FE team is responsible for all frontend aspects of the product categories that fall under the [Code Review group][group] of the [Create stage][stage] of the [DevOps lifecycle][lifecycle].

[group]: /handbook/product/categories/#code-review-group
[stage]: /handbook/product/categories/#create-stage
[lifecycle]: /handbook/product/categories/#devops-stages

## Iteration

We held an Iteration Retrospective in April 2020 in order to review past work and discuss how we could improve iteration for upcoming efforts.

- [Frontend: Iteration Retrospective (Source Code)](https://gitlab.com/gl-retrospectives/create-stage/source-code/-/issues/22)

Some overal conclusions/improvements

- Despite having improved the splitting of Merge Requests, we still tend to keep one issue spawning multiple Merge Requests.
- We'll be more strict about splitting the issues in foreseeable iteration steps upon scheduling/assignment
- We must keep in mind the overhead in review times when splitting up related backstage work. ([more info](https://gitlab.com/gl-retrospectives/create-stage/source-code/-/issues/22#note_342547093))

## Work

See the [work section](/handbook/engineering/development/dev/create/code-review/#work) of the main Code Review page.

## Capacity planning


{{% include "includes/engineering/create/weights-fe.md" %}}

### Weights

{{% include "includes/engineering/create/weights-fe.md" %}}

## Kickoff

On the first week of every milestone, we have a sync-call with every IC in which they take turns at presenting their plan for their Deliverables for the new milestone.

This usually happens at the first Thursday of the milestone (at least 5 days into it) at 3PM UTC.

## Relevant issues

- [Merge Request Architecture Walkthrough](https://gitlab.com/gitlab-org/gitlab/-/issues/291035/designs/gl_mr_architecture_boxes.png) (as of December 2020) — an outline of the current status of the entire Merge Request page Frontend components, including the answers to:
  - Component Name
  - Technology
  - State Management (Technology + shared with others?)
  - Responsible Team
  - Shared with other Team?
  - Other comments
