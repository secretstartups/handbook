---
layout: handbook-page-toc
title: "Engineering Workflow"
---

This document explains the workflow for anyone working with issues in GitLab Inc.
For the workflow that applies to everyone please see [PROCESS.md](https://gitlab.com/gitlab-org/gitlab-foss/-/blob/master/PROCESS.md).

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## GitLab Flow

Products at GitLab are built using the [GitLab Flow](https://docs.gitlab.com/ee/topics/gitlab_flow.html).

We have [specific rules around code review](/handbook/engineering/workflow/code-review/).

## Reverting a merge request

In line with our values of [short toes](/handbook/values/#short-toes), [making two-way-door decisions](handbook/values/#make-two-way-door-decisions)
and [bias for action](/handbook/values/#bias-for-action), anyone can
propose to revert a merge request. When deciding whether an MR should be reverted,
the following should be true:

* Something broke and there is no acceptable work around. Examples of this include:
  * A feature broke and is categorized as `~severity::1` or `~severity::2`.
  [See severity labels](/handbook/engineering/quality/issue-triage/#severity)  
  * [Master broke](#broken-master)
  * There are failing migrations
* There are no dependencies on the change. For example, a database
migration has not been run on production.

Reverting merge requests that add non-functional changes and don't remove any existing capabilities
should be avoided in order to prevent designing by committee.

The intent of a revert is never to place blame on the original author. Additionally, it is helpful
to inform the original author so they can participate as a DRI on any necessary follow up actions.

## Broken `master`

If you notice that pipelines for the `master` branch of [GitLab] or [GitLab FOSS] is failing (red) or broken (green as a false positive), returning the build to a passing state takes priority over everything else development related, since everything we do while tests are broken may break existing functionality, or introduce new bugs and security issues.

[GitLab]: https://gitlab.com/gitlab-org/gitlab
[GitLab FOSS]: https://gitlab.com/gitlab-org/gitlab-foss

### What is a broken `master`?

All tests (unit, integration, **and** E2E QA) that fail on master are treated as `~"master:broken"`.

Any test failures or flakiness (either false positive or false negative) causes productivity impediments for all of engineering and our release processes.
If a change causes new test failures, the fix to the test should be made in the same Merge Request.
If the change causes new QA test failures, in addition to fixing the QA tests, the `package-and-qa` or `review-qa-all` job must be run to validate the fix before the Merge Request can be merged.

The cost to fix test failures increases exponentially as time passes. Our aim should be to keep `master` free from failures, not to fix `master` only after it breaks.

### Broken `master` service level objectives

There are two phases for fixing a `~"master:broken"` issue which have a target SLO to clarify the urgency. The resolution phase is dependent on the completion of the triage phase.

| Phase | Service level objective | DRI |
| --- | --- | --- |
| [Triage](#triage-broken-master) | 4 hours from the initial master pipeline failure until assigned `~"master:broken"` issue | Engineering Productivity team |
| [Resolution](#resolution-of-broken-master) | 4 hours from assignment to DRI until issue is closed | Merge request author or team of merge request author |

Additional details about the phases are listed below.

### Triage broken master

The [Engineering Productivity team](/handbook/engineering/quality/engineering-productivity-team/) is the triage DRI for monitoring master pipeline failures, identification and communication of `~"master:broken"` issues.

#### Triage DRI Responsibilities

1. Monitor
   * Pipeline failures are sent to [`#master-broken`](https://gitlab.slack.com/archives/CR6QH3D7C) and will be reviewed by the team. These reactions will be applied by the triage DRI to signal current status:
     * `:eyes:` - signals the triage DRI is investigating a failing pipeline
     * `:boom:` - signals the pipeline contains a **new** failure. The triage DRI will create a new `~"master:broken"` issue and reply in the thread with a link to the issue.
     * `:fire_engine:` - signals the pipeline is failing due to a known issue. The triage DRI will reply in the thread with a link to the existing issue(s).
     * `:retry:` - signals a system failure (e.g., Docker failure) is responsible and a retry has been triggered.
1. Identification
   * Create an [issue](https://gitlab.com/gitlab-org/gitlab/issues/new) based on:
      * `master` failing for a non-flaky reason - create an issue with the following labels: `~"master:broken"`, `~"Engineering Productivity"`,`~priority::1`, `~severity::1`.
      * `master` failing for a flaky reason that cannot be reliably reproduced - create an issue with the following labels: `~"failure::flaky-test"`, `~"Engineering Productivity"`,`~priority::2`, `~severity::2`.
   * Identify the merge request that introduced the failures.
   * Assign the issue to the `~"master:broken"` merge request author if they are available at the moment. If the author is not available, mention the team Engineering Manager and seek assistance in the `#development` Slack channel.
     * Ask for assistance in the `#development` Slack channel if there is no
       merge request that caused the `~"master:broken"`.
1. Communication
   * Communicate `~"master:broken"` in `#development`, `#backend`, and `#frontend`.
1. (Optional) Pre-resolution
   * If the triage DRI believes that there's an easy resolution by either:
     * Reverting a particular merge request.
     * Making a quick fix (for example, one line or a few similar simple changes in a few lines).
     The triage DRI can create a merge request, assign to any available maintainer,
     and ping the resolution DRI with a `@username FYI` message.
     Additionally, a message can be posted in `#backend_maintainers` or `#frontend_maintainers` to get a maintainer take a look at the fix ASAP.

An example of the reactions for a failure is:

![pipeline failures example](pipeline-failure-emoji.png)

### Resolution of broken master

The merge request author of the change that broke master is the resolution DRI. In the event the merge request author is not available, the team of the merge request author will assume the resolution DRI responsibilities. If a DRI has not acknowledged or signaled working on a fix, any developer can take ownership using the reaction guidance below and assume the resolution DRI responsibilities.

#### Responsibilities of the resolution DRI

1. Prioritize resolving `~"master:broken"` over new bug/feature work. Resolution options include:
   * Revert the merge request which caused the broken master. If a revert is performed,
     create an issue to reinstate the merge request and  assign it to the author
     of the reverted merge request. Reverts can go straight to maintainer review and require 1 maintainer approval. The maintainer can request additional review/approvals if the revert is not trivial.
   * Create a new merge request to fix the failure if revert is not possible or would introduce additional risk. This should be treated as a `~priority::1` `~severity::1` issue.
   * [Quarantine](https://docs.gitlab.com/ee/development/testing_guide/flaky_tests.html#quarantined-tests) the failing test if you can confirm that it is flaky (e.g. it wasn't touched recently and passed after retrying the failed job).
     * Remove the `~"master:broken"` label from the issue and apply  `~"failure::flaky-test"`
1. If the broken `master` affects any auto-deploy, add the relevant `~"Pick into auto-deploy"` label.
1. If the broken `master` affects any stable branches (e.g. <https://gitlab.com/gitlab-org/gitlab/-/merge_requests/25274>),
   open new merge requests **directly against the stable branches** which are
   broken and ping the current release manager in the merge requests to avoid
   delays in releases / security releases. Optionally, post a message in `#releases`.
1. Reactions by the resolution DRI in `#development` should follow this guidance:
   * `:eyes:` - applied by the resolution DRI (or backup) to signal acknowledgment
   * `:construction:` - applied by the resolution DRI to signal that work is in progress on a fix
   * `:white_check_mark:` - applied by the resolution DRI to signal the fix is complete.
1. Communicate in `#development`, `#backend`, and `#frontend` when the fix is in
   `master`.
1. When `master` build was failing and the underlying problem was quarantined /
   reverted / temporary workaround created but the root cause still needs to be
  discovered: create a new issue with the `~"master:needs-investigation"` label
1. Create an [issue](https://gitlab.com/gitlab-org/quality/team-tasks/issues/new) for the [Engineering Productivity team](/handbook/engineering/quality/engineering-productivity-team/) describing how the `~"master:broken"` could have been prevented in the Merge Request pipeline.

#### Responsibilities of authors and maintainers

Once the resolution DRI announces that `master` is fixed:

* Maintainers should start a new Pipeline for Merged Results (for canonical MRs)
  and enable "Merge When Pipeline Succeeds" (MWPS).
* (For forks only) Authors should rebase their open merge requests (since
  [Pipeline for Merged Results](https://docs.gitlab.com/ee/ci/merge_request_pipelines/pipelines_for_merged_results/#pipelines-for-merged-results)
  isn't supported in these cases).

### Maintaining throughput during broken master

When `master` is red, we need to try hard to avoid introducing **new** failures,
since it's easy to lose confidence if it stays red for a long time.

Most merge requests don't need to be merged *immediately*, so the priority should
always be maintaining the stability of `master` over keeping a high throughput.

In the rare cases where `master` is broken for more than 4 hours (from the
notification in `#master-broken`), maintainers are allowed to merge with a
broken pipeline if all the following conditions are met:

1. The failures also happen on `master` **for at least 4 hours**.
1. Only one or two tests are failing and they are not directly related to
   functionality touched by the merge request.
1. There is [an issue labelled `~"master:broken"`][broken-master-issues] for it,
   see the "Triage DRI Responsibilities" steps above for more details
1. That issue is already assigned to someone
1. The assignee is actively working on it (i.e. they are not on PTO, at a conference, etc.)

Before asking a maintainer to review, or before merging the merge request,
add a comment mentioning that the failure happens in `master`,
and post a reference to the issue. For instance:

```
Failure in <JOB_URL> happens in `master` and is being worked on in #XYZ.
```

Whether the merge requests pipeline is failing or not, if `master` is red:

* For canonical merge requests, always start a new merge request pipeline and check that the
  failure happens in `master` with a link to the `~"master:broken"` issue before
  clicking the red "Merge" button.
* For forks, check how far behind `master` the source branch is. If it's more
  than 100 commits behind `master`, ask the author to rebase it before merging.

This reduces the chance of introducing new failures, and also acts to slow
(but not stop) the rate of change in `master`, helping us to make it green again.

[broken-master-issues]: https://gitlab.com/groups/gitlab-org/-/issues?state=all&label_name[]=master%3Abroken

## Security Issues

Security issues are managed and prioritized by the security team. If you are assigned to work on a security issue in a milestone,
you need to follow the [Security Release process](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md).

If you find a security issue in GitLab, create a **confidential issue** mentioning the relevant security and engineering managers, and post about it in `#security`.

If you accidentally push security commits to `gitlab-org/gitlab`, we recommend that you:

1. Delete the relevant branch ASAP
2. Inform a release manager in `#releases`. It may be possible to execute a garbage collection (via the Housekeeping task in the repository settings) to remove the commits.

For more information on how the entire process works for security releases, see the
[documentation on security releases](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md).

## Basics

1. Start working on an issue you’re assigned to. If you’re not assigned to any issue, find the issue with the highest priority and relevant label you can work on, and assign it to yourself. [You can use this query, which sorts by priority for the started milestones][priority-issues], and filter by the label for your team.
1. If you need to schedule something or prioritize it, apply the appropriate labels (see [Scheduling issues](#scheduling-issues)).
1. If you are working on an issue that touches on areas outside of your expertise, be sure to mention someone in the other group(s) as soon as you start working on it. This allows others to give you early feedback, which should save you time in the long run.
1. When you start working on an issue:
  - Add the `workflow::in dev` label to the issue.
  - Create a merge request (MR) by clicking on the **Create merge request** button in the issue. This creates a MR with the labels, milestone and title of the issue. It also relates the just created MR to the issue.
  - Remove the `Closes #issue_id` from the MR description, to prevent automatically closing of the issue after merging. Be careful not to use other keywords in the MR description given the [default closing pattern](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#default-closing-pattern) that can also automatically close issues.
  - Assign the MR to yourself.
  - Work on the MR until it is ready, it meets GitLab's [definition of done](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done), and the pipeline succeeds.
  - Edit the description and click on the **Remove the WIP: prefix from the title** button.
  - Assign it to the suggested reviewer(s) from [Reviewer Roulette](https://docs.gitlab.com/ee/development/code_review.html#reviewer-roulette). If there are reviewers for multiple categories, for example: frontend, backend and database, assign all of them. Alternatively, assign someone who specifically needs to review. When assigning, also @mention them in the comments, requesting a review.
  - (Optionally) Unassign yourself from the MR.
      - Some may find leaving the MR assigned to themselves easier to track the MRs they are responsible for by using the built in MR button/notification icon in the GitLab navigation bar.
  - Change the workflow label of the issue to `workflow::in review`. If multiple people are working on the issue or multiple workflow labels might apply, consider breaking the issue up. Otherwise, default to the workflow label farthest away from completion.
  - Potentially, a reviewer offers feedback and assigns back to the author.
  - The author addresses the feedback and this goes back and forth until all reviewers approve the MR.
  - After approving, the reviewer in each category unassigns themselves and assigns the suggested maintainer in their category.
  - Maintainer reviews take place with any back and forth as necessary and attempts to resolve any open threads.
  - The last maintainer to approve the MR, follows the [Merging a merge request](https://docs.gitlab.com/ee/development/code_review.html#merging-a-merge-request) guidelines.
  - (Optionally) Change the workflow label of the issue to `workflow::verification`, to indicate all the development work for the issue has been done and it is waiting to be deployed and verified.  We will use this label in cases where the work was requested to be verified by product OR we determined we need to perform this verification in production.
1. You are responsible for the issues assigned to you. This means it has to ship with the milestone it's associated with. If you are not able to do this, you have to communicate it early to your manager and other stakeholders (e.g. the product manager, other engineers working on dependent issues). In teams, the team is responsible for this (see [Working in Teams](#working-in-teams)). If you are uncertain, err on the side of overcommunication. It's always better to communicate doubts than to wait.
1. You (and your team, if applicable) are responsible for:
  - Ensuring that your changes [apply cleanly to GitLab Enterprise Edition][ce-ee-docs].
  - The testing of a new feature or fix, especially right after it has been merged and packaged.
  - Creating any [relevant feature or API documentation](https://docs.gitlab.com/ee/development/documentation/workflow.html#developers)
  - Shipping secure code, (see [Security is everyone's responsibility](#security-is-everyones-responsibility)).
1. Once a release candidate has been deployed to the staging environment, please verify that your changes work as intended. We have seen issues where bugs did not appear in development but showed in production (e.g. due to CE-EE merge issues).

Be sure to read general guidelines about [issues](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html) and [merge requests](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html).

[priority-issues]: https://gitlab.com/groups/gitlab-org/-/issues?scope=all&utf8=%E2%9C%93&state=opened&milestone_title=%23started&assignee_id=None&sort=priority
[ce-ee-docs]: https://docs.gitlab.com/ee/development/ee_features.html
[gitlab-workflow]: /handbook/communication/#gitlab-workflow

## Working in Teams

For larger issues or issues that contain many different moving parts, you'll be likely working in a team. This team will typically consist of a [backend engineer](/job-families/engineering/backend-engineer/), a [frontend engineer](/job-families/engineering/frontend-engineer/), a [Product Designer](/job-families/engineering/product-designer/) and a [product manager](/job-families/product/product-manager/).

1. Teams have a shared responsibility to ship the issue in the planned release.
    1. If the team suspects that they might not be able to ship something in time, the team should escalate / inform others as soon as possible. A good start is informing your manager.
    1. It's generally preferable to ship a smaller iteration of an issue, than ship something a release later.
1. Consider starting a Slack channel for a new team, but remember to write all relevant information in the related issue(s). You don't want to have to read up on two threads, rather than only one, and Slack channels are not open to the greater GitLab community.
1. If an issue entails frontend and backend work, consider separating the frontend and backend code into separate MRs and merge them independently under [feature flags](https://docs.gitlab.com/ee/development/feature_flags.html). This will ensure frontend/backend engineers can work and deliver independently.
    1. It's important to note that even though the code is merged behind a feature flag, it should still be production ready and continue to hold our [definition of done](https://gitlab.com/gitlab-org/gitlab-foss/-/blob/master/doc/development/contributing/merge_request_workflow.md#definition-of-done).
    1. A separate MR containing the integration, documentation (if applicable) and removal of the feature flags should be completed in parallel with the backend and frontend MRs, but should only be merged when both the frontend and backend MRs are on the master branch.

In the spirit of [collaboration](/handbook/values/#collaboration) and [efficiency](/handbook/values/#efficiency-for-the-right-group), members of teams should feel free to discuss issues directly with one another while [being respectful of others' time](/handbook/communication/#be-respectful-of-others-time).

## Convention over Configuration

Avoid adding configuration values in the application settings or in
`gitlab.yml`. Only add configuration if it is absolutely necessary. If you
find yourself adding parameters to tune specific features, stop and consider
how this can be avoided. Are the values really necessary? Could constants be
used that work across the board? Could values be determined automatically?
See [Convention over Configuration](/handbook/product/product-principles/#convention-over-configuration)
for more discussion.

## Choosing Something to Work On

Start working on things with the highest priority in the current milestone. The priority of items are defined under labels in the repository, but you are able to sort by priority.

After sorting by priority, choose something that you’re able to tackle and falls under your responsibility. That means that if you’re a frontend developer, you work on something with the label `frontend`.

To filter very precisely, you could filter all issues for:

- Milestone: Started
- Assignee: None (issue is unassigned)
- Label: Your label of choice. For instance `CI/CD`, `Discussion`, `Quality`, `frontend`, or `Platform`
- Sort by priority

[Use this link to quickly set the above parameters][priority-issues]. You'll still need to filter by the label for your own team.

If you’re in doubt about what to work on, ask your lead. They will be able to tell you.

## Triaging and Reviewing Code from the rest of the Community

It's every [developers' responsibilities] to triage and review code contributed by the rest of the community, and work with them to get it ready for production.

Merge requests from the rest of the community should be labeled with the `Community Contribution` label.

When evaluating a merge request from the community, please ensure that a relevant PM is aware of the pending MR by mentioning them.

This should be to be part of your daily routine. For instance, every morning you could triage new merge requests from the rest of the community that are not yet labeled `Community Contribution` and either review them or ask a relevant person to review it.

Make sure to follow our [Code Review Guidelines](https://docs.gitlab.com/ee/development/code_review.html).

[developers' responsibilities]: /job-families/engineering/backend-engineer/#responsibilities

## Workflow Labels

Labels are described in our [Contribution guide][contrib-labels-guide].

[contrib-labels-guide]: https://gitlab.com/gitlab-org/gitlab-foss/-/blob/master/doc/development/contributing/issue_workflow.md

## Working with GitLab.com

GitLab.com is a very large instance of GitLab Enterprise Edition. It runs release candidates for new releases, and sees a lot of issues because of the amount of traffic it gets. There are several internal tools available for developers at GitLab to get data about what's happening in the production system:

### Performance Data

There is extensive [monitoring](https://dashboards.gitlab.com/) publicly available for GitLab.com. For more on this and related tools, see the [monitoring handbook](/handbook/engineering/monitoring/).

More details on [GitLab Profiler](http://redash.gitlab.com/dashboard/gitlab-profiler-statistics) are also found in the [monitoring performance handbook](/handbook/engineering/monitoring/).

### Error Reporting

- [Sentry](https://sentry.gitlab.net/) is our error reporting tool
- [log.gprd.gitlab.net](https://log.gprd.gitlab.net/) has production logs
- [prometheus.gitlab.com](https://prometheus.gitlab.com/alerts) has alerts for the [production team](/handbook/engineering/infrastructure/#production-team)

### Feature Flags

If you've built feature flags into your code, be sure to read about [how to use the feature flag to test a feature on GitLab.com](https://docs.gitlab.com/ee/development/feature_flags.html).

#### Feature Flag Removal

Once a feature has been thoroughly tested the [feature flag](https://docs.gitlab.com/ee/development/feature_flags/index.html) should be removed. The engineer who implemented the feature flag should ensure that it gets removed.

## Scheduling Issues

GitLab Inc has to be selective in working on particular issues. We have a limited capacity to work on new things. Therefore, we have to schedule issues carefully.

Product Managers are responsible for scheduling all issues in their respective [product areas](/handbook/product/product-categories/#devops-stages), including features, bugs, and tech debt. Product managers alone determine the [prioritization](/handbook/product/product-processes/#how-we-prioritize-work), but others are encouraged to influence the PMs decisions. The UX Lead and Engineering Leads are responsible for allocating people making sure things are done on time. Product Managers are _not_ responsible for these activities, they are not project managers.

Direction issues are the big, prioritized new features for each release. They are limited to a small number per release so that we have plenty of capacity to work on other important issues, bug fixes, etc.

If you want to schedule an `Accepting merge requests` issue, please remove the label first.

Any scheduled issue should have a team label assigned, and at least one type label.

### Requesting Something to be Scheduled

To request scheduling an issue, ask the [responsible product manager](/handbook/product/product-categories/#devops-stages)

We have many more requests for great features than we have capacity to work on.
There is a good chance we’ll not be able to work on something.
Make sure the appropriate labels (such as `customer`) are applied so every issue is given the priority it deserves.

## Product Development Timeline

[![](gitlab-release-timelines.png)](https://gitlab.com/gitlab-org/gitlab-foss/-/snippets/1731455)

Teams (Product, UX, Engineering) continually work on issues according to their respective workflows.
There is no specified process whereby a particular person should be working on a set of issues in a given time period.
However, there are specific deadlines that should inform team workflows and prioritization.
Suppose we are talking about milestone `m` that will be shipped in month `M` (on the 22nd).
We have the following deadlines:

- By month `M-1, 4th` (at least 14 days before milestone `m` begins):
  - Draft of the issues that will be included in the next release (released 22nd of next month).
  - Start capacity and technical discussions with engineering/UX.
- By month `M-1, 13th` (at least 5 days before milestone `m` begins):
  - Release scope is finalized. In-scope issues marked with milestone `m`; label `deliverable` applied.
  - Kickoff document is updated with relevant items to be included.
- By month `M-1, 16th` (at least 1 day before milestone `m` begins):
  - [Group Kickoffs calls](/handbook/product/product-processes/#kickoff-meetings) recorded and uploaded.
- On month `M-1, 18th` (or next business day, milestone `m` begins): **Kick off!** 📣
  - [Company Kickoff](#kickoff) call live streamed.
  - Development on milestone `m` begins
- On `M-1 26th`: GitLab Bot opens [Team Retrospective](/handbook/engineering/management/team-retrospectives/) issue for the current milestone.
- By month `M, 17th`:
  - Completed `m` issues with docs have been merged into master.
  - Feature flags should be flipped from default off to default on after verification to be in the `m` release. See [feature flags](https://docs.gitlab.com/ee/development/feature_flags/process.html).
  - Merging by the 17th **does not guarantee** that the feature will be in the `m` release. See [release timelines](/handbook/engineering/releases/#timelines).
  - Individual [release post entries](/handbook/marketing/blog/release-posts/index.html#contribution-instructions) merged for all relevant issues.
  - By end of the day, milestone `m` is expired.
- On or around `M, 19th`:
  - [Team Retrospectives](/handbook/engineering/management/team-retrospectives/) should happen so they can inform the [public retrospective summary and discussion](#retrospective)
- On `M, 19th`, or `M, 20th`, or `M, 21st`:
  - [Milestone Cleanup](#milestone-cleanup) runs on the schedule at [Milestone cleanup schedule](#milestone-cleanup-schedule)
- On month `M, 22nd`: **Release Day** 🚀
  - Release shipped to production.
  - Release post published.
- On month `M, 23rd` (the day after the release):
  - The patch release process for milestone `m` starts. This includes regular and security patch releases.
  - All unfinished `m` issues and merge requests are automatically moved to milestone `m+1`, with the exception of `~security` issues.
- On `M, 24th`: Moderator opens the [Retrospective planning and execution issue](#retrospective).
- Between `M, 24th` to `M+1, 3rd`: Participants complete the [Retrospective planning and execution issue](#retrospective), add their notes to the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit#), and suggest and vote on discussion topics.
- On or around `M, 26th`:
  - [Product plans](/handbook/product/product-processes/#managing-your-product-direction) are to update to reflecting previous and current releases, including category epics and direction pages.
- On `M+1, 4th`: Moderator records the [Retrospective Summary](#retrospective-summary) video and announces the video and discussion topics.
- On `M+1, 6th:` [Retrospective Discussion](#retrospective) is held.

Refer to [release post content reviews](/handbook/marketing/blog/release-posts/#content-reviews) for additional deadlines.

Note that deployments to GitLab.com are more frequent than monthly major/minor releases on the 22nd.
See [auto deploy transition](https://gitlab.com/gitlab-org/release/docs/blob/21cbd409dd5f157fe252f254f3e897f01908abe2/general/deploy/auto-deploy-transition.md#transition) guidance for details.

## Updating Issues Throughout Development

Team members use labels to track issues throughout development. This gives visibility to other developers, product managers, and designers, so that they can adjust their plans during a monthly iteration. An issue should follow these stages:

- `workflow::in dev`: A developer indicates they are developing an issue by applying the `in dev` label.
- `workflow::in review`: A developer indicates the issue is in code review and UX review by removing the `in dev` label, and applying the `in review` label.
- `workflow::verification`: A developer indicates that all the development work for the issue has been done and is waiting to be deployed and verified.

When the issue has been verfied and everything is working, it can be closed.

## Kickoff

At the beginning of each release, we have a kickoff meeting, publicly livestreamed to YouTube. In the call, the Product Development team (PMs, Product Designers, and Engineers) communicate with the rest of the organization which issues are in scope for the upcoming release. The call is structured by [product area](/handbook/product/product-categories/#devops-stages) with each PM leading their part of the call.

The notes are available in a publicly-accessible [Google doc](https://docs.google.com/document/d/1ElPkZ90A8ey_iOkTvUs_ByMlwKK6NAB2VOK5835wYK0/edit?usp=sharing). Refer to the doc for details on viewing the livestream.

## Retrospective

The purpose of our retrospective is to help our team at GitLab learn and improve as much as possible from every monthly release.

Each retrospective consist of three parts:

- [Team Retrospectives](https://about.gitlab.com/handbook/engineering/management/team-retrospectives/): retrospectives held by individual teams
- [Retrospective Summary](https://about.gitlab.com/handbook/engineering/workflow/#retrospective-summary): a short pre-recorded video which summarizes the learnings across all team retrospectives
- [Retrospective Discussion](https://about.gitlab.com/handbook/engineering/workflow/#retrospective-discussion): a 25 minute live discussion diving into retrospective discussion topics]

**Timeline**

- `M-1 26th`: GitLab Bot opens [Team Retrospective](/handbook/engineering/management/team-retrospectives/) issue for the current milestone.
- `M, 19th`: Team Retrospectives should be held.
- `M, 24th`: Moderator opens the Retrospective planning and execution issue.
- `M, 24th` to `M+1, 3rd`: Participants complete the Retrospective planning and execution issue, add their notes to the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit#), and suggest and vote on discussion topics.
- `M+1, 4th`: Moderator records the Retrospective Summary video and announces the video and discussion topics.
- `M+1, 6th`: Retrospective Discussion is held.
   - OR, the next Monday if `M+1, 6th` falls in a weekend.
   - OR, the 2nd working day after `M+1, 6th` if `M+1, 6th` is a holiday.

**Moderator**

The moderator of each retrospective is responsible for:

- Coordinating the Retrospective planning and execution issue.
- Presenting the Retrospective Summary.
- Hosting the Retrospective Discussion.

The job of a moderator is to remain objective and is focused on guiding conversations forward. The moderator for each retrospective is assigned by the VP Development in each milestone.

**Retrospective planning and execution issue**

For each monthly release, a Retrospective planning and execution issue ([example](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/8418)) is opened by the moderator to help us coordinate this work.

**Retro doc**

The [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit) is a Google Doc we use to collaborate on for our Retrospective Summary and Retrospective Discussion.

### Team Retrospectives

At the end of every release, each team should host their own retrospective. For details on how this is done, see [Team Retrospectives](/handbook/engineering/management/team-retrospectives/).

### Retrospective Summary

The Retrospective Summary is a short pre-recorded video which summarizes the learnings across all [Team Retrospectives](/handbook/engineering/management/team-retrospectives/) ([example video](https://www.youtube.com/watch?v=XdENBhVOSiw&feature=youtu.be), [example presentation](https://docs.google.com/presentation/d/1kH9TwUAXbslM1cac938hS4Y-3mEBojQlwHw_Mm44kDE/edit?usp=sharing)).

Once all Team Retrospectives are completed, each team inputs their learnings into a single publicly-accessible [retro doc](https://docs.google.com/document/d/1ElPkZ90A8ey_iOkTvUs_ByMlwKK6NAB2VOK5835wYK0/edit?usp=sharing). The  moderator then pre-records a video of the highlights. This video is then announced in the Retrospective planning and execution issue along with the #whats-happening-at-gitlab slack channel. In line with our value of [transparency](/handbook/values/#transparency), we also post this video to our public [Gitlab Unfiltered channel](https://www.youtube.com/c/GitLabUnfiltered/videos).

**Steps for participants**
1. Please host your Team Retrospective following the guidelines outlined in the [handbook](https://about.gitlab.com/handbook/engineering/management/team-retrospectives/).
1. After the Team Retrospective is complete, please choose a subset some of your most interesting learnings to share company-wide in the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit).  Please try to group by these by our [CREDIT values](https://about.gitlab.com/handbook/values/).
1. In the retro doc, if there is a learning that you would like to explicitely highlight, please add the text **highlight** at the beginning of the text. The moderator will highlight this along with other learnings listed in the retro doc when they create the pre-recorded video.
1. If there are improvement tasks for your team from the previous retrospective, please provide an update on them in the retro doc. They will be verbalized during the Retrospective Discussion.
1. If there are improvement tasks for your team in the current retrospective, please add them in the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit). They will be verbalized during the Retrospective Discussion.
1. Add a checkbox in the table of the Retrospective planning and execution issue when your Team Retrospective is complete and when the retro doc is updated.

**Steps for the moderator**
1. Please read through the Team Retrospective learnings in the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit).
1. Add the learnings into a slide deck and identify the highlights you would like to cover.
1. Record a video presentation summarizing the highlights.
1. Upload this video to our public [Gitlab Unfiltered channel](https://www.youtube.com/c/GitLabUnfiltered/videos).
1. Announce the video and discussion topics in Retrospective planning and execution issue, the #whats-happening-at-gitlab slack channel, and the retro doc.

### Retrospective Discussion

The Retrospective Discussion is a 25 minute live discussion among participants where we deep dive into discussion topics from our Team Retrospectives ([example](https://www.youtube.com/watch?v=WP9E7RbNSPw)). In line with our value of [transparency](/handbook/values/#transparency), we livestream this meeting to YouTube and monitor chat for questions from viewers. Please check the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit?usp=sharing) for details on joining the livestream.

**Discussion Topics**

For each retrospective discussion, we aim to host an interactive discussion covering two discussion topics. We limit this to two topics due to the length of the meeting.

The discussion topics stem from our Team Retrospective learnings and should be applicable to the majority of participants.

Discussion topics are suggested by participants by commenting on the Retrospective planning and execution issue. Participants can vote on these topics by adding a :thumbsup: reaction. The two topics with the most :thumbsup: votes will be used as the discussion topics. If there are not enough votes or if the discussion topics are not relevant to the majority of participants, the moderator can choose other discussion topics.

**Meeting Agenda**

* Improvement tasks from the previous release (5 minutes)
* Discussion topics (14 minutes, 2 topics at 7 minutes each)
* Improvement tasks from the current release (5 minutes)
* Wrap up (1 minute)

**Steps for participants**

1. Suggest discussion topics by commenting on to the Retrospective planning and execution issue.
1. Vote on discussion topics by adding a :thumbsup: reaction. Voting closes on `M+1, 3rd`.
1. Once discussion topics are announced on `M+1, 4th`, begin adding your comments to the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit).
1. During the Retrospective Discussion, be prepared to verbalize any improvement tasks or commentary on the discussion topics. If you can't make the meeting and there is an item for you to verbalize, please ask someone else on your team to attend to do so.

**Steps for the moderator**

1. In the Retrospective planning and execution issue, create a thread asking participants to suggest and vote on topics.
1. Voting ends at the close of business on `M+1, 3rd`. Take note of which discussion topics have the most votes at this time. If there are not enough votes or if you deem the discussion topics as not relevant to the majority of participants, please choose other discussion topics.
1. Announce the discussion topics alongside of the Retrospective Summary video in the Retrospective planning and execution issue, the #whats-happening-at-gitlab slack channel, and the [retro doc](https://docs.google.com/document/d/1nEkM_7Dj4bT21GJy0Ut3By76FZqCfLBmFQNVThmW2TY/edit)
1. Ensure the Retrospective Discussion calendar invite is sent to participants by coordinating with the VP Development.
1. Host the Retrospective Discussion and press livestream to Youtube.
1. After the Retrospective Discussion, close the Retrospective planning and execution issue.

### Triaging retrospective improvements

At the end of each retrospective the [Engineering Productivity team](/handbook/engineering/quality/#engineering-productivity-structure) is responsible for triaging improvement items identified from the retrospective.
This is needed for a single owner to be aware of the bigger picture technical debt and backstage work. The actual work can be assigned out to other teams or engineers to execute.

## Milestone Cleanup

Engineering Managers are responsible for capacity planning and scheduling for their respective teams with guidance from their counterpart Product Managers.

To ensure hygiene across Engineering, we run scheduled pipelines to move
unfinished work (open issues and merge requests) with the expired milestone to
the next milestone, and label `~"missed:x.y"` for the expired milestone.
Additionally, label `~"missed-deliverable"` whenever `~"Deliverable"` is
presented.

This is currently implemented as part of our [automated triage operations](https://gitlab.com/gitlab-org/quality/triage-ops/blob/master/policies/move-milestone-forward.yml). Additionally, issues with the `~Deliverable` label which have a milestone beyond current +1, will have the `~Deliverable` label removed.

We keep the milestone open for 3 months after it's expired, based on the [release and maintenance policy](https://docs.gitlab.com/ee/policy/maintenance.html).

The milestone cleanup is currently applied to the [following groups and projects](https://gitlab.com/gitlab-org/quality/triage-ops/blob/master/.gitlab/ci/missed-resources.yml):
* [GitLab](https://gitlab.com/gitlab-org/gitlab), [schedule](https://gitlab.com/gitlab-org/quality/triage-ops/pipeline_schedules/10515/edit)
* [GitLab Runner](https://gitlab.com/gitlab-org/gitlab-runner), [schedule](https://gitlab.com/gitlab-org/quality/triage-ops/pipeline_schedules/29681/edit)
* [GitLab Gitaly](https://gitlab.com/gitlab-org/gitaly), [schedule](https://gitlab.com/gitlab-org/quality/triage-ops/pipeline_schedules/29054/edit)
* [GitLab charts](https://gitlab.com/gitlab-org/charts), [schedule](https://gitlab.com/gitlab-org/quality/triage-ops/pipeline_schedules/39481/edit)
* [GitLab QA](https://gitlab.com/gitlab-org/gitlab-qa), [schedule](https://gitlab.com/gitlab-org/quality/triage-ops/pipeline_schedules/29050/edit)
* [Omnibus GitLab](https://gitlab.com/gitlab-org/omnibus-gitlab), [schedule](https://gitlab.com/gitlab-org/quality/triage-ops/pipeline_schedules/31880/edit) (only moving milestone for now, not labelling)

Milestones closure is in the remit of [the Delivery team](/handbook/engineering/infrastructure/team/delivery/). At any point in time a release might need to be created for an active milestone,and once that is no longer the case, the Delivery team closes the milestone.

### Milestone cleanup schedule

- On `M, 19th` if `M, 22nd` is Monday:
- On `M, 20th` or `M, 21st` whichever is Friday, if `M, 22nd` is on weekend.
- On `M, 21st` if `M, 22nd` is any other day

These actions will be applied to open issues:
- Open issues and merge requests will be moved to the next milestone, and
  labelled with `~"missed:x.y"`.
- `~"missed-deliverable"` will also be added whenever `~"Deliverable"`
    is presented.

Milestones are closed when the Delivery team no longer needs to create a backport release for a specific milestone.

## Kickoff and Retrospective Public Stream Instructions

Both the monthly kickoff and retrospective meetings are publicly streamed to the [GitLab Unfiltered YouTube Channel](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A?view_as=subscriber). The [EBA](https://about.gitlab.com/job-families/people-ops/executive-business-administrator/) for Engineering is the [moderator](/handbook/people-group/group-conversations/#moderator) and responsible for initiating the Public Stream or designating another moderator if EBA is unable to attend.


## Use Group Labels and Group Milestones

When working in GitLab (and in particular, the GitLab.org group), use group labels and group milestones as much as you can. It is easier to plan issues and merge requests at the group level, and exposes ideas across projects more naturally. If you have a project label, you can promote it to a group milestone. This will merge all project labels with the same name into the one group label. The same is true for promoting group milestones.

## Technical debt

We definitely don't want our technical debt to grow faster than our code base. To prevent this from happening we should consider not only the impact of the technical debt but also a contagion. How big and how fast is this problem going to be over time? Is it likely a bad piece of code will be copy-pasted for a future feature? In the end, the amount of resources available is always less than amount of technical debt to address.

To help with prioritization and decision-making process here, we recommend thinking about contagion as an interest rate of the technical debt. There is [a great comment](http://disq.us/p/1ros2o9) from the internet about it:

> You wouldn't pay off your $50k student loan before first paying off your $5k credit card and it's because of the high interest rate. The best debt to pay off first is one that has the highest loan payment to recurring payment reduction ratio, i.e. the one that reduces your overall debt payments the most, and that is usually the loan with the highest interest rate.

Technical debt is prioritized like [other technical decisions](/handbook/engineering/#prioritizing-technical-decisions) in [product groups](/company/team/structure/#product-groups) by [product management](/handbook/product/product-processes/#how-we-prioritize-work).

For technical debt which might span, or fall in gaps between groups they should be brought up for a [globally optimzed](/handbook/values/#global-optimization) prioritization in [retrospectives](/handbook/engineering/management/team-retrospectives/) or directly with the appropriate member of the [Product Leadership team](/handbook/product/product-leadership/). Additional avenues for addressing technical debt outside of product groups are [Rapid Action issues](/handbook/engineering/development/#rapid-action-issue) and [working groups](/company/team/structure/working-groups/).

## UX debt

Sometimes features release to production without meeting design and [Pajamas](https://design.gitlab.com/) specifications. We create UX debt issues to capture these discrepancies. For the same reasons as technical debt, we don't want UX debt to grow faster than our code base.

We apply the `UX debt` label to these issues, and it is prioritized like [other technical decisions](/handbook/engineering/#prioritizing-technical-decisions) in [product groups](/company/team/structure/#product-groups) by [product management](/handbook/product/product-processes/#how-we-prioritize-work). You can see the number of UX debt issues on the [UX Debt dashboard](https://app.periscopedata.com/app/gitlab/641753/UX-Debt).

As with [technical debt](#technical-debt), UX debt should be brought up for [globally optimized](/handbook/values/#global-optimization) prioritization in [retrospectives](/handbook/engineering/management/team-retrospectives/) or directly with the appropriate member of the [Product Leadership team](/handbook/product/product-leadership/).

## Monitor Merge Request Trends

Open merge requests sometimes become idle (not updated by a human in more than a month). Once a month, engineering managers will receive an [`idle MR triage issue`](https://about.gitlab.com/handbook/engineering/quality/triage-operations/#group-level-idle-merge-requests) that includes all (non-WIP/Draft) MRs for their group and use it to determine if any action should be taken (such as nudging the author/reviewer/maintainer). This assists in getting merge requests merged in a reasonable amount of time (which we track as the metric MTTR: Mean Time to Merge).

Open merge requests may also have other properties that indicate that the engineering manager should research them and potentially take action to improve efficiency. One key property is the number of threads, which, when high, may indicate a need to update the plan for the MR or that a synchronous discussion should be considered. Another property is the number of pipelines, which, when high, may indicate a need to revisit the plan for the MR. These metrics are not yet included in an automatically created a triage issue. However, they are available in a [Sisense dashboard](https://app.periscopedata.com/app/gitlab/663398/Merge-requests-that-may-warrant-attention). Engineering managers are encouraged to check this dashboard for their group periodically (once or twice a month) in the interim.

## Security is everyone's responsibility

[Security](/security/) is our top priority. Our Security Team is raising the bar on security every day to protect users' data and make GitLab a safe place for everyone to contribute. There are many lines of code, and Security Teams need to scale. That means shifting security left in the [Software Development LifeCycle (SDLC)](/stages-devops-lifecycle/). Being able to start the security review process earlier in the software development lifecycle means we will catch vulnerabilities earlier, and mitigate identified vulnerabilities before the code is merged. We are fixing the obvious security issues before every merge, and therefore, scaling the security review process. Our workflow includes a check and validation by the reviewers of every merge request, thereby enabling developers to act on identified vulnerabilities before merging. As part of that process, developers are also empowered to reach out to the Security Team to discuss the issue at that stage, rather than later on, when mitigating vulnerabilities becomes more expensive. After all, security is everyone's job. See also our [Security Paradigm](/direction/secure/#security-paradigm)

## Rapid Engineering Response

From time to time, there are occasions that engineering team must act quickly in response to urgent issues. This section describes how the engineering team handles certain kinds of such issues.

### Scope

Not everything is urgent. See below for a non-exclusive list of things that are in-scope and not in-scope. As always, use your experience and judgment, and communicate with others.

* In Scope
  * Last-minute release blocking bug or security patch before an imminent release.
  * High severity (severity::1/priority::1) security issues. Refer to [security severity and priority](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues).
  * Highest priority and severity customer issues based on the [priority and severity definitions](https://gitlab.com/gitlab-org/gitlab-foss/-/blob/master/doc/development/contributing/issue_workflow.md#priority-labels).
* Not In Scope
  * An operational issue of GitLab.com or a self managed customer environment. This falls under the [on-call](/handbook/on-call/index.html) process.
  * Self developed and maintained tools that are not officially supported products by GitLab.
  * Feature request by a specific customer.

### Process

1. Person requesting Rapid Engineering Response creates an issue supplying all known information and applies [priority and severity](https://gitlab.com/gitlab-org/gitlab-foss/-/blob/master/doc/development/contributing/issue_workflow.md#priority-labels) (or [security severity and priority](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)) to the best of their ability.
1. Person requesting Rapid Engineering Response raises the issue to their own manager and the [subject matter domain](/handbook/product/product-categories/index.html) engineering manager (or the delegation if OOO).
   1. In case a specific group cannot be determined, raise the issue to the Director of Engineering (or the delegation if OOO) of the [section](/handbook/product/product-categories/index.html).
   1. In case a specific section cannot be determined, raise the issue to the Sr. Director of Development (or the delegation if OOO).
1. The engineering sponsor (subject matter Manager, Director, and/or Sr. Director) invokes all stakeholders of the subject matter as a rapid response task force to determine the best route of resolution:
   1. Engineering manager(s)
   1. Product Management
   1. QE
   1. UX
   1. Docs
   1. Security
   1. Support
   1. Distribution engineering manager
   1. Delivery engineering manager (Release Management)
1. Adjust [priority and severity](https://gitlab.com/gitlab-org/gitlab-foss/-/blob/master/doc/development/contributing/issue_workflow.md#priority-labels) or [security severity and priority](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues) if necessary, and work collaboratively on the determined resolution.

## Performance Refinement

A bi-weekly performance refinement session is held by the Development and QE teams jointly to raise awareness and foster wider collaboration about high-impact performance issues.
A high impact issue has a direct measurable impact on GitLab.com [service levels or error budgets](/handbook/engineering/infrastructure/library/service-levels-error-budgets/).

### Scope

The [Performance Refinement issue board](https://gitlab.com/groups/gitlab-org/-/boards/1233204) is reviewed in this refinement exercise.

### Process

1. To participate in the bi-weekly refinement, ask your engineering director to forward the invite of the *Performance Refinement* meeting which is at 15:00 UTC every other Thursday. Here is the [meeting agenda](https://docs.google.com/document/d/1icG6yrW2oebXz8iXvgfM5JjtMqpsDBCn1v3_VO2ghS0/edit#).
1. To nominate issues to the board:
   1. Assign [a performance severity](/handbook/engineering/quality/issue-triage/#severity) on the issue to help asses the priority assignment for the refinement session.
   1. Ensure that the issue clearly explains the problem, the (potential) impact on GitLab.com's availability, and ideally, clearly defines a proposed solution to the problem.
   1. Use the label `performance-refinement`.
1. For the issues under the **Open** column:
   1. An engineering manager will be assigned if either the `Milestone` or the label `workflow::ready for development` is missing.
   1. Engineering manager brings assigned issue(s) to the Product Manager for prioritization and planning.
   1. Engineering manager unassigns themselves once the issue is planned for an iteration, i.e. associated with a `Milestone` and the label `workflow::ready for development`.
1. To highlight high-impact issues which need additional discussion, please add an agenda item.
1. If a guest attendee would be helpful for collaboration, please forward the invite. For example, a TAM or Support Engineer may have information that would be helpful for an upcoming topic.

## Infradev

The infradev process is established to identify Issues requiring priority attention in support of SaaS availability and reliability. These escalations are intended to primarily be asyncronous as timely triage and attention is required. In addition to primary management through the Issues, any gaps, concerns, or critical triage is handled in the weekly [GitLab SaaS Infrastructure](/handbook/engineering/infrastructure/#gitlab-saas-infrastructure) meeting.

### Scope

The [infradev issue board](https://gitlab.com/groups/gitlab-org/-/boards/1193197?label_name[]=infradev) is the primary focus of this process. 

### Process

1. Issues are nominated to the board through the inclusion of the label `infradev`
1. Issues in the **Open** column require triage by Development Engineering Management to identify and/or refine the correct assignment.
1. All Issues should be prioritized into the appropriate workflow stage.

### A Guide to Effective Infradev Triage

Triage of infradev Issues is desired to occur asynchronously. There is also a section of the [Weekly GitLab SaaS meeting](https://about.gitlab.com/handbook/engineering/infrastructure/#gitlab-saas-infrastructure) which aims to address anything requiring synchronous discussion or which hasn't been triaged. This meeting has time constraints and many of the participants may not have a detailed understanding of the problems being presented. For maximum efficiency, please ensure the following, so that your infradev issues can gain maximum traction.


1. **Clearly state the scope of the problem, and how it affects GitLab.com**. Examples could include:
   1. Reliability issues: the problem could cause a widespread outage or degradation on GitLab.com. [example](https://gitlab.com/gitlab-org/gitlab/-/issues/244865)
   1. Saturation issues: the problem could leave to increased saturation, latency issues due to resource over-utilization. [example](https://gitlab.com/gitlab-org/charts/gitlab/-/issues/2458)
   1. Service-level degradation: the problem is causing our service-level monitoring to degrade, impacting the overall SLA of GitLab.com and potentially leaving to SLA violations. [example](https://gitlab.com/gitlab-org/gitlab/-/issues/292732)
   1. Unnecessary alerts: the problem does not have a major impact on users, but is leading to extraneous alerts, impacting the ability of SREs to effectively triage incidents due to alerting noise. [example](https://gitlab.com/gitlab-org/gitlab/-/issues/292732)
   1. Problems which extend the time to diagnosis of incidents: for example, issues which degrade the observability of GitLab.com, swallow user-impacting errors or logs, etc. These could lead to incidents taking much longer to clear, and impacting availability. [example](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/10933#note_464394760)
   1. Deficiencies in our public APIs which lead to customers compensating by generating substantially more traffic to get the required results. [example](https://gitlab.com/gitlab-org/gitlab/-/issues/232887)
1. **Quantify the effect of the problem** to help ensure that correct prioritization occurs.
   1. Include costs to availability. The [Incident Budget Explorer](https://dashboards.gitlab.net/d/general-incident-budget-explorer/general-incident-budget-explorer?orgId=1) dashboard can help here. 
   1. Include the number of times alerts have fired owing to the problem, how much time was spent dealing with the problem, and how many people were involved. 
   1. Include screenshots of visualization from Grafana or Kibana. 
   1. **Always include a permalink to the source of the screenshot so that others can investigate further**.
1. **Provide a clear, unambiguous, self-contained solution to the problem**. Do not add the `infradev` label to architectural problems, vague solutions, or requests to investigate an unknown root-cause. 
1. **Ensure scope is limited**. Each issue should be able to be owned by a single stage group team and should not need to be broken down further. Single task solutions are best. 
1. **Ensure a realistic severity is applied**: review the [availability severity label guidelines](/handbook/engineering/quality/issue-triage/#availability) and ensure that applied severity matches. Always ensure all issues have a severity, even if you are unsure.
1. **If possible, include ownership labels** for more effective triage. The [product categories](/handbook/product/product-categories/) can help determine the appropriate stage group to assign the issue to. 
1. **Cross-reference links to Production Incidents, Pagerduty Alerts, Slack Alerts and Slack Discussions**. To help ensure that the team performing the triage have all the available data. 
1. **Ensure that the issue title is accurate, brief and clear**. Change the title over time if you need to keep it accurate.
1. **By adding an infradev label to an issue, you are assuming responsibility and becoming the sponsor/champion of the issue**. 
