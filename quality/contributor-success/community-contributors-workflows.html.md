---
layout: handbook-page-toc
title: "Workflows for working with community contributions"
description: All processes that Contributor Success work with
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

- - -

# Workflows for working with community contributions (Issues & MRs)

## Community contribution labels

- The `Community contribution` label is automatically applied by the [GitLab Bot](https://gitlab.com/gitlab-bot) to MRs submitted by wider community members. 
  * You can see the list of MRs in [`gitLab-org` list of merge requests](https://gitlab.com/groups/gitlab-org/-/merge_requests?label_name[]=Community+contribution).
  * [Learn more about the cadence and conditions for this automation](/handbook/engineering/quality/triage-operations/#label-community-contributions).
- The `1st contribution` label is added to first-time contributions. Every time a contributor is opening a merge request under the `gitlab-org` namespace for the first time, the label `1st contribution` is automatically applied to the merge request.
  - You can see the list of MRs in [`gitlab-org` list of merge requests](https://gitlab.com/groups/gitlab-org/-/merge_requests?label_name%5B%5D=1st+contribution).
  - [First-time contributors](/handbook/marketing/community-relations/code-contributor-program/#first-time-contributors) are also awarded a gift as our way to say thanks.

### Granting additional CI minutes to a contributor

You can use [ChatOps](https://docs.gitlab.com/ee/development/chatops_on_gitlabcom.html) commands to grant extra CI minutes to a community contributor.

- Investigate the account:

  ```
  /chatops run namespace find USERNAME
  ```

- Adjust the _extra minutes_ for the account.
  These extra minutes go on top of their [base amount](https://docs.gitlab.com/ee/ci/pipelines/cicd_minutes.html#cost-factor-for-community-contributions-to-gitlab-projects) of minutes.

  ```
  /chatops run namespace minutes USERNAME 1000
  ```

  There is only one contingent of extra minutes per account.
  If you execute the above command twice, the account still has only 1000 extra minutes because you set the amount of extra minutes to 1000 twice.

- Track the added extra minutes.
  These extra minutes apply automatically every month until manually canceled, and will be audited regularly.

## Community issues workflow manual process

See the [partial issue triage checklist](/handbook/engineering/quality/issue-triage/#partial-triage-checklist).


## Community merge request workflow automations

Community merge requests are MRs opened by a person that's not present on https://about.gitlab.com/company/team/ (excluding any bot and service account users).

### Triage reports

See [Community-related triage reports](/handbook/engineering/quality/triage-operations/#community-related-triage-reports).

### Scheduled workflow automation

See [Community-related scheduled workflow automation](/handbook/engineering/quality/triage-operations/#community-related-scheduled-workflow-automation).

### Reactive workflow automation

See [Community-related reactive workflow automation](/handbook/engineering/quality/triage-operations/#community-related-reactive-workflow-automation).

## Merge request coaches

[Merge request coaches](/job-families/expert/merge-request-coach/) are available to help contributors with their MRs. This includes: 
- Identifying reviewers for the MR.
- Answering questions from contributors.
- Educating contributors on the [contribution acceptance criteria](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#contribution-acceptance-criteria).
- Or completing the MR if the contributor is unresponsive or unable to complete.
  - In that case, the `coach will finish` label will be added to the MR and the coach will either directly push new commits to the MR, or re-create a new MR with the original changes. 
  - Contributors can mention the coaches in their MRs by typing `@gitlab-org/coaches`.

The list of current merge request coaches can be found in the [team page](/company/team/) by selecting `Merge Request
Coach` in the department filter.

There is also the [`#mr-coaching`](https://gitlab.slack.com/archives/C2T9APP9C) channel in GitLab Slack if GitLab team
members have any questions related to community contributions.

More information on merge request coaches (including how to become a merge request coach) can be found in the 
[MR coach lifecycle page](/handbook/marketing/community-relations/code-contributor-program/resources/merge-request-coach-lifecycle.html).

## Creating educational materials

1. [Gitpod with GDK - Introduction (video)](https://www.youtube.com/watch?v=OzgGP5tT4bo)
1. [Gitpod with GDK - Setup  (video)](https://www.youtube.com/watch?v=6VNm36wdXnI)

## DCO and CLA Guidance

All external contributions to GitLab are subject to the [GitLab DCO or CLA](/community/contribute/dco-cla/), depending
on where the contribution is made and on whose behalf.

Instructions for corporate contributors to enter into an overarching Corporate CLA covering all contributions made on
their behalf are set out on the [DCO-CLA page](/community/contribute/dco-cla/#need-a-corporate-cla-covering-all-contributors-on-behalf-of-your-organization). 

## Recognizing contributors 

We work with the Community Relations team, to [recognize contributors](/handbook/marketing/community-relations/code-contributor-program/#recognition-for-contributors) 

A nomination process is also available to [nominate a contributor](/handbook/marketing/community-relations/code-contributor-program/community-appreciation/)

## Leading Organizations

### How do I add an organization or a user to an organization?

* Navigate to the [Contributing Org Tracker](/handbook/engineering/quality/contributor-success/contributing-org-tracker.html).
* Go to the **MRARR Organization** tab. 
* If a user is not listed here, you can add it to the respective row, or add a new 
row at the bottom with the same structure.

### How do I enable the Leading Organizations program benefits for organizations

* Navigate to the [Contributing Org Tracker](/handbook/engineering/quality/contributor-success/contributing-org-tracker.html).
* Go to the **Leading Organization** tab. 
* Add the organization to the list with the exact same name as found in the **MRARR Organization** tab. 
* Make sure you enter an entry date & current MR count from the last 3 months so we can look back and understand their performance over time.

### How do I stop the Leading Organizations program benefits for organizations

* Navigate to the [Contributing Org Tracker](/handbook/engineering/quality/contributor-success/contributing-org-tracker.html).
* Go to the **Leading Organization** tab. 
* Enter the exit date next to the respective organization that should no longer receive the benefits. 

Caution: If an organization reaches the threshold it will be auto-enrolled in the program for receiving the review-time SLO.