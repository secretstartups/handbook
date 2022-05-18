---
layout: handbook-page-toc
title: JiHu Contribution Review Process
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## JiHu contribution identification

Contributions from [JiHu team members](https://gitlab.com/groups/gitlab-jh/jh-team/-/group_members?with_inherited_permissions=exclude) are labeled with `JiHu contribution` label via:
* [Event driven automation](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/triage/processor/jihu_contribution.rb)
* [Scheduled automation](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/policies/stages/hygiene/label-jihu-contribution.yml) as backup. 

## What approvals are required

Upstream merge requests require the same level of review and approval as all merge requests including:

- [Regular code review](https://docs.gitlab.com/ee/development/code_review.html)
- [Security review](jihu-security-review-process.html)
- [Database migration review](jihu-database-change-process.html) when applicable

Upstream merge requests may require additional [specific team reviews](https://docs.gitlab.com/ee/development/code_review.html#approval-guidelines) based on changed files. High impact code is identified with [CODEOWNERS](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/CODEOWNERS) rules and required approvals for specific files. For example, if the merge request includes changes related to authentication or authorization, it must be approved by a [Manage:Authentication and Authorization team member](https://about.gitlab.com/company/team/)

## What to review

- Do not review changes inside `jh/`:
  - If the specific change is only needed for JiHu, it should go into `jh/`
  directory in the JiHu project repository.
- Changes outside of `jh/` directory. Some examples include:
  - Features which can be added to CE/EE.
  - Refactoring which can make CE/EE code more clean or more modular.
  - Changes for prepending the classes/modules should be reviewed based on
    [JH features based on CE or EE features](https://docs.gitlab.com/ee/development/jh_features_review.html#jh-features-based-on-ce-or-ee-features).
  - Database migrations related changes should be reviewed following
    [database migration review process](jihu-database-change-process.html).

## Review process

1. JiHu author submits upstream merge request in draft
1. JiHu author's manager is mentioned in the merge request description
1. JiHu team will conduct a peer-review
1. Once JiHu team peer review is complete. JiHu R&D manager or maintainer will add `LGTM` or `Looks good` comment in the MR. 
1. Merge request is then set to 'ready' state by JiHu team.
1. JiHu author will request a review using `@gitlab-bot request_review` to identify and work on merging the MR with a merge request coach
1. The MR goes through our documented review process which includes:
    1. [Code review by domain experts](#what-approvals-are-required)
    1. Review from owners of specific code files. JiHu merge request author is responsible to mention team members from list of require approvals in the MR Approvals widget. Currently for the following area:
        1. Authentication related code
    1. [GitLab Security Review](jihu-security-review-process.html#security-review-workflow-for-jihu-contributions), which will be triggered automatically.
