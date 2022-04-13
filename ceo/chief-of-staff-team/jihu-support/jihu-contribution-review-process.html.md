---
layout: handbook-page-toc
title: JiHu Contribution Review Process
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What qualifies as a JiHu contribution

- Any contributions from [JiHu team members](https://gitlab.com/groups/gitlab-jh/jh-team/-/group_members?with_inherited_permissions=exclude)

There is automation to apply `JiHu contribution` label to those qualified
merge requests as a [scheduled policy](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/policies/stages/hygiene/label-jihu-contribution.yml)
and a [reactive one](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/triage/processor/jihu_contribution.rb).

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
