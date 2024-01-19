---
title: "Create:Source Code FE Team"
description: The Create:Source Code FE team is responsible for all frontend aspects of the product categories that fall under the Source Code group of the Create stage.
---

# Common Links

| **Category**            | **Handle** |
|-------------------------|-------------|
| **GitLab Team Handle**  | Not available |
| **Slack Channel**               | [`#g_create_source-code-review-fe`](https://gitlab.enterprise.slack.com/archives/CS5NHHBJ7) |
| **Slack Handle**               | Not available |
| **Team Boards**         | [`Current Milestone`](https://gitlab.com/groups/gitlab-org/-/boards/1149629) |
| **Issue Tracker**       | [`group::source code` + `frontend` in `gitlab-org/gitlab`](https://gitlab.com/groups/gitlab-org/-/issues/?sort=created_date&state=opened&label_name%5B%5D=frontend&label_name%5B%5D=group%3A%3Asource%20code&first_page_size=20) |

# Team Vision

# Team Mission

# Commonly Monitored Issue Lists

* [Source Code + Frontend issues](https://gitlab.com/groups/gitlab-org/-/issues/?sort=created_date&state=opened&label_name%5B%5D=frontend&label_name%5B%5D=group%3A%3Asource%20code&first_page_size=20)
* [Milestone Planning Issues](https://gitlab.com/gitlab-org/create-stage/-/issues/?sort=created_date&state=opened&label_name%5B%5D=Planning%20Issue&label_name%5B%5D=group%3A%3Asource%20code&first_page_size=20)
* [Triage reports](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/?sort=created_date&state=opened&label_name%5B%5D=type%3A%3Aignore&label_name%5B%5D=group%3A%3Asource%20code&first_page_size=20)
* [Feature flag reports](https://gitlab.com/gitlab-org/quality/triage-reports/-/issues/?sort=created_date&state=opened&label_name%5B%5D=triage%20report&label_name%5B%5D=feature%20flag&label_name%5B%5D=group%3A%3Asource%20code&first_page_size=20)
* [OKRs (confidential)](https://gitlab.com/gitlab-com/gitlab-OKRs/-/issues/?sort=created_date&state=opened&assignee_username%5B%5D=andr3&label_name%5B%5D=group%3A%3Asource%20code&first_page_size=20)

# Team Members

The following people are permanent members of the Create:Source Code FE Team:

{{< team-by-manager-role role="Engineering(.*)Manager(.*)Create:Source Code" team="Create:Source Code" >}}

# Stable Counterparts

The following members of other functional teams are our stable counterparts:

{{< stable-counterparts manager-role="Engineering(.*)Manager(.*)Create:Source Code" role="[,&] \(Create(.*)|Create:Source Code|Create \(Source Code|Director(.*)Create|Principal(.*)Create|Group(.*)Create" >}}

# Core Responsibilities

# Projects

# Engineering Onboarding

# Other related pages

<!-- FY25 content above this line -->

The Create:Source Code FE team is responsible for all frontend aspects of the product categories that fall under the [Source Code group][group] of the [Create stage][stage] of the [DevOps lifecycle][lifecycle].

[group]: /handbook/product/categories/#source-code-group
[stage]: /handbook/product/categories/#create-stage
[lifecycle]: /handbook/product/categories/#devops-stages

## Iteration

We held an Iteration Retrospective in April 2020 in order to review past work and discuss how we could improve iteration for upcoming efforts.

- [Frontend: Iteration Retrospective (Source Code)](https://gitlab.com/gl-retrospectives/create-stage/source-code/-/issues/22)

Some overall conclusions/improvements

- Despite having improved the splitting of Merge Requests, we still tend to keep one issue spawning multiple Merge Requests.
- We'll be more strict about splitting the issues in foreseeable iteration steps upon scheduling/assignment
- We must keep in mind the overhead in review times when splitting up related backstage work. ([more info](https://gitlab.com/gl-retrospectives/create-stage/source-code/-/issues/22#note_342547093))

## Work

In general, we use the standard GitLab [engineering workflow]. To get in touch
with the Create:Source Code FE team, it's best to create an issue in the relevant project
(typically [GitLab]) and add the `~"group::source code"` and `~frontend` labels, along with any other
appropriate labels (`~devops::create`, `~section::dev`). Then, feel free to ping the relevant Product Manager and/or
Engineering Manager as listed above.

For more urgent items, feel free to use [#g_create_source_code] or [[#g_create_source_code_fe] on Slack.

[Take a look at the features we support per category here.](/handbook/product/categories/features/#createsource-code-group)

[engineering workflow]: /handbook/engineering/workflow/
[GitLab]: https://gitlab.com/gitlab-org/gitlab
[#g_create_source_code]: https://gitlab.slack.com/archives/g_create_source-code
[#g_create_source_code_fe]: https://gitlab.slack.com/archives/g_create_source-code-review-fe

### Issue refinement

To ensure we are living our iteration value consistenly, we should be intentional in asking ourselves: "is this in the smallest possible form it could be?". To that end engineers, designer, EMs, and PM should work together to find the smallest feature set that delivers value to users and can be used to elicit feedback for future iterations. Once a feasible issue plan comes together. Let's consider the following steps for best results:

1. Once we have validated the problem, product, UX, and engineering will collaborate to propose a solution and decide on what's technically feasible. The proposed solution will be shared with users to validate it solves the problem.
1. Once we have confirmed the proposed solution is viable, we will move to break it down as much as possible. When issues are ready for this stage, PM will mark issues with `workflow::refinement` label to signal next step.
1. EM will work with engineers to decide distribution of work and assign issues for breakdown.
1. Engineers or EM will evaluate the issue, work with PM, UX, and other engineering counterparts where necessary to address questions and concerns.
1. If the planned implementation of the issue can be further broken down, the engineer/EM will work with the PM to reduce scope and create new issues until this is the case (either PM or engineer/EM can create new work items).
1. When the planned implementation of the issue is in its smallest form, the engineer/EM will provide a weight. EM or PM will mark as `workflow::needs issue review`.

**Note**: if an issue receives a weight > 3 after this process, it may indicate the IC may not have a full idea of what is needed and further research is needed.

### Convention over configuration

As stated in our direction, we must place special emphasis on our [convention over configuration](https://about.gitlab.com/direction/create/source_code_management/#critical-product-principles) principle. As the feature set within Create:Source Code grows, it may feel natural to solve problems with configuration. To ensure this is not the case, we must intentionally challenge MVC and new feature issues to check for this. Let's consider the following steps for best results:

1. Once issues have been labeled as `workflow::needs issue review` PM will share the proposal with either a peer or their manager as well as engineering (EM or IC) and product designer.

1. Peers in product and engineering who review the issue should look for opportunities to eliminate configuration where possible. If opportunities are identified, the issue is moved back to `workflow::refinement`.

1. If PM and peers are satisfied with the proposal and it follows our convention over configuration principle as much as possible, those who reviewed the issue indicate their agreement with the proposal (with either 👍 or a comment in the issue). Finally, PM or EM will label issue `workflow:: ready for development`.

### Middle of milestone check-in

{{% include "includes/engineering/midmilestone.md" %}}

## Capacity planning

{{% include "includes/engineering/create/capacity-planning-fe.md" %}}

### Weights

{{% include "includes/engineering/create/weights-fe.md" %}}

## Workflow labels

{{% engineering/workflow-labels group-label="group::source code" %}}

## Async standup

{{% include "includes/engineering/create-async-standup.md" %}}

## Retrospectives

We have 1 regularly scheduled "Per Milestone" retrospective, and can have ad-hoc "Per Feature" retrospectives more focused at analyzing a specific case, usually looking into the Iteration approach.

#### Per Milestone

{{% engineering/create-retrospectives group-label="Source Code" group-slug="source-code" %}}

## Milestone Kickoff & Retrospective review

At the start of each milestone we have a synchronous **Kickoff** session where every IC take turns at presenting their plan for their Deliverables for the new milestone.

This happens at least 2 working days after all Deliverables are assigned, which happens on the first day of the milestone, on the 18th.

During this call, we also do a quick **Retrospective review** going through the highlights of the discussions in the asynchronous issue mentioned above.
