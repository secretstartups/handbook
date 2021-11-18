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

## What to review

- Changes outside of `jh/` directory.

## What approvals are required

- [Regular code review](https://docs.gitlab.com/ee/development/code_review.html)
- [Security review](jihu-security-review-process.html)
- [Database migration review](jihu-database-change-process.html) when applicable
