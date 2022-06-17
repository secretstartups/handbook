---
layout: handbook-page-toc
title: Wider Community Merge Request Triage
description: "Guidelines for triaging new merge requests from the wider community opened on GitLab.com projects"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

At GitLab, our mission is to change all creative work from read-only to read-write so that [everyone can contribute](/company/mission/#mission). GitLab highly values community contribution and we want to continue growing community code contribution. GitLab encourages the community to file issues and open merge requests for our projects on [GitLab.com][GitLab.com]. Their contributions are valuable, and we should handle them as effectively as possible. A central part of this is triage - the process of categorization according to type and product group.

Any GitLab team-member can triage merge requests. Keeping the number of un-triaged merge requests low is essential for maintainability, and is our collective responsibility. Consider triaging a few merge requests around your other responsibilities, or scheduling some time for it on a regular basis.

Triaging all new community merge requests in our projects on [GitLab.com][GitLab.com] is divided between several departments. Quality Department maintains triage automation, [Merge Request Coaches](/handbook/marketing/community-relations/code-contributor-program/resources/merge-request-coach-lifecycle.html) take on a partial merge request triage, and finally Engineering Managers in each [Product Group](/handbook/product/categories/#devops-stages) are completing the triage process. Additionally, [Code Contributor Program](/handbook/marketing/community-relations/code-contributor-program/) drives the community collaboration efforts and works with our community to ensure they receive support and recognition for contributing to GitLab.

## Triage levels

We define three levels of triage.

### Initial Triage

A merge request is considered initially triaged when it has a:

- [`~"Community contribution"` label applied](/handbook/engineering/quality/triage-operations/#community-contribution-thank-you-note).
- [Welcome message](/handbook/engineering/quality/triage-operations/#community-contribution-thank-you-note) from the [`@gitlab-bot`](https://gitlab.com/gitlab-bot) user with more details on the process.

The Initial triage is automated by the [Contributor Success team](/handbook/engineering/quality/contributor-success/) via the [Community contribution thank you note](/handbook/engineering/quality/triage-operations/#community-contribution-thank-you-note) reactive triage automation.

### Partial Triage

A merge request is considered partially triaged when it has a:

- [type label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#type-labels) applied.
  - (For `~"type::bug"` and `~"UX Debt"`) It has a [severity label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#severity-labels) applied.
- [stage label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#stage-labels) applied.
- [group label](https://docs.gitlab.com/ee/development/contributing/issue_workflow.html#group-labels) applied (e.g. `~"group:editor"`). If no group label exists, the stage label is enough.

The Partial triage is completed by [Merge Request Coaches](/handbook/marketing/community-relations/code-contributor-program/resources/merge-request-coach-lifecycle.html) via the [Newly created community merge requests](/handbook/engineering/quality/triage-operations/#newly-created-community-merge-requests) triage report.

For MRs related to issues, the Partial Triage can be completed by using the following quick action and confirming proper metadata:

```shell
/copy_metadata <issue link>
```

### Complete Triage

The Complete Triage is divided into 3 subcategories depending on the community merge request state.

#### Complete Triage for Open Merge Requests

A merge request is considered completely triaged when it has:

- a reviewer assigned by [Engineering Managers](/handbook/engineering/quality/triage-operations/#community-merge-requests-requiring-attention).
- been reviewed by a reviewer.

#### Complete Triage for Merged Merge Requests

A merge request is considered completely triaged when it has a:

- milestone set if the merge request with the `~"Community contribution"` label is merged.

This triage process is automated by the [Contributor Success team](/handbook/engineering/quality/contributor-success/) via the [Add milestone to community contributions on Triage Operations](/handbook/engineering/quality/triage-operations/#add-milestone-to-community-merge-requests) scheduled triage automation.

#### Complete Triage for Idle Merge Requests

A merge request is considered completely triaged when it:

- is closed following the [closing policy for issues and merge requests](https://docs.gitlab.com/ee/development/contributing/#closing-policy-for-issues-and-merge-requests).

This triage process is being done manually on a case-by-case basis by [Merge Request Coaches](/job-families/expert/merge-request-coach/#closing-merge-requests) or [Engineering Managers](/handbook/engineering/quality/triage-operations/#community-merge-requests-requiring-attention).

## Triage levels for the www-gitlab-com project

The GitLab Website is owned and managed by a different team than GitLab.org; thus, a further triage process must be defined.

### Initial Triage

A merge request is considered initially triaged when it has a:

- [`~"Community contribution"` label applied](/handbook/engineering/quality/triage-operations/#community-contribution-thank-you-note).
- [Welcome message](/handbook/engineering/quality/triage-operations/#community-contribution-thank-you-note) from the [`@gitlab-bot`](https://gitlab.com/gitlab-bot) user with more details on the process.

The Initial triage is automated by the [Contributor Success team](/handbook/engineering/quality/contributor-success/) via the [Community contribution thank you note](/handbook/engineering/quality/triage-operations/#community-contribution-thank-you-note) reactive triage automation.

### Complete Triage

The Complete Triage is divided into 3 subcategories depending on the community merge request state.

#### Complete Triage for Open Merge Requests

A merge request is considered completely triaged when it has:

- a reviewer assigned by a member of the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community).
- been reviewed by a reviewer.

Typically, the reviewer is the [code owner](https://docs.gitlab.com/ee/user/project/code_owners.html) of the page the merge request is updated. If there is no code owner assigned, the triager will reach out to the relevant team the page belongs to identify a reviewer.

#### Complete Triage for Idle Merge Requests

A merge request is considered completely triaged when it:

- is closed following the [closing policy for issues and merge requests](https://docs.gitlab.com/ee/development/contributing/#closing-policy-for-issues-and-merge-requests).

This triage process is being done manually on a case-by-case basis by a member of the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) or the relevant [code owner](https://docs.gitlab.com/ee/user/project/code_owners.html).

## Inactive MR Triage Policy

The inactive merge request policy was created to enable GitLab teams to focus efforts on active merge request and prevent old merge requests from degrading into a state of disrepair. This is done by creating two thresholds at which GitLab team members attempt to move the merge request forward.

Contributor Success team members attempt to move merge requests that have reached the first threshold forward via the [Community merge requests requiring attention](/handbook/engineering/quality/triage-operations/index.html#community-merge-requests-requiring-attention) triage report.

If that's not successful an Engineering Manager makes a decision at the second threshold. We value your effort - that's why all decisions to close a merge request are made by a human, and are not automated.

## Wider Community Merge Request Triage SLOs

Community contributions are valuable, and we should handle them as effectively as possible to ensure swift feedback to community and increase engagement. To achieve that we define the following [Service-level objectives (SLOs)](https://en.wikipedia.org/wiki/Service-level_objective):

| Triage Level                                                                            | Triage SLO                                 | Escalation path if SLO target is missed                                                                    |
|-----------------------------------------------------------------------------------------|--------------------------------------------|------------------------------------------------------------------------------------------------------------|
| [Initial Triage](#initial-triage)                                                       | 24 hours                                   | Reach out to [Engineering Productivity team][Engineering Productivity team]|
| [Partial Triage](#partial-triage)                                                        | 7 days                                     | Reach out to the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) by directly tagging `@gitlab-com-community` at the merge request.
| [Complete Triage for Open Merge Requests](#complete-triage-for-open-merge-requests)     | - 7 days to assign <br> - 7 days to review | Reach out to the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) by directly tagging `@gitlab-com-community` at the merge request.        |
| [Complete Triage for Merged Merge Requests](#complete-triage-for-merged-merge-requests) | 7 days                                     | Reach out to [Engineering Productivity team][Engineering Productivity team] |
| [Complete Triage for Idle Merge Requests](#complete-triage-for-idle-merge-requests)    | 7 days                                     | Reach out to the [GitLab Website Community Team](https://gitlab.com/gitlab-com-community) by directly tagging `@gitlab-com-community` at the merge request.      |

[GitLab.com]: https://gitlab.com/groups/gitlab-org
[Engineering Productivity team]: /handbook/engineering/quality/engineering-productivity/
