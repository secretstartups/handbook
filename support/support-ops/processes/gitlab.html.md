---
layout: handbook-page-toc
title: Support Operations GitLab Processes
description: List of Support Operations GitLab Processes which includes Time Tracking, Triage, Priority, Stage and Category.
---

# GitLab Processes

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Time Tracking

Support-Ops utilizes 
[Time Tracking](https://docs.gitlab.com/ee/user/project/time_tracking.html)
in the issues/MRs we work. We utilize this time tracking to help define our
hiring model, measure workload, and etc. As you work issues and merge requests,
make sure you utilize this feature. 

## Triage

At least once a day, Support-Ops should triage the
[issues](https://gitlab.com/groups/gitlab-com/support/support-ops/-/issues) and
[MRs](https://gitlab.com/groups/gitlab-com/support/support-ops/-/merge_requests)
that appear under the
[support-ops group](https://gitlab.com/gitlab-com/support/support-ops).

Support-Ops also makes use of the
[GitLab Triage Gem](https://gitlab.com/gitlab-org/gitlab-triage) to assist in
ensuring all issues/merge requests are triaged. 

## Labels

For a list of the labels we use and what they mean, please see the [Support Ops Project README](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project#what-do-all-the-labels-mean)

## Changelog

Our [changelog](https://gitlab-com.gitlab.io/support/support-ops/changelog/) is
auto-generated once a day. It locates issues and MRs using the quarter's epic
milestone. The format of these is FYxxQy.

When working issues/MRs, make sure to apply the correct epic/milestone. You can
do this during creation, using the right-hand side panel, or via a comment on
the issue/MR. Examples of doing this via a comment can be seen below:

| What to do | Comment box text |
|---|---|
| Add issue to epic FY22Q1 | `/epic &3` |
| Add MR to milestone FY22Q1 | `/milestone %FY22Q1` |
