---
layout: handbook-page-toc
title: JiHu Contribution Review Process
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## JiHu Contribution Review Process

In order to make sure that a release with JiHu contributions can be certified, members of the AppSec team
need to perform a security review of any JiHu contribution and explicitly approve them.  The JiHu team will be contributing code to
[a number of repositories](https://about.gitlab.com/handbook/ceo/chief-of-staff-team/jihu-support/#projects).
These contributions should be labeled with the `JiHu contribution` label
and the AppSec team should additionally receive a ping for each one of these contributions.

### Who can perform a security review of a JiHu contribution

Any member of the AppSec or Federal AppSec team is eligible to perform a security review of a JiHu contribution.

### Determining who will perform a security review of a JiHu contribution

When the AppSec team is pinged on a JiHu contribution, it will typically be first seen by
the AppSec engineer on [Triage (mentions and issues) Rotation](./triage-rotation.html). This person should:

1. Ping the stable counterpart for the [relevant part of the codebase](/handbook/product/categories/#devops-stages) and ask them to perform the review
1. If the stable counterpart is unavailable or unassigned, the AppSec engineer on Triage Rotation can perform the review
1. Alternatively, they can ask that someone else review it by linking to the MR in the `#sec-appsec` Slack channel and asking for a reviewer to volunteer

### Review Workflow

When performing the security review of a JiHu contribution, the reviewer needs to:

1. [Add themselves as a reviewer](https://docs.gitlab.com/ee/user/project/merge_requests/getting_started.html#reviewer)
1. Double check that the merge request is properly labeled as a `JiHu contribution` and apply it if it is missing
1. Perform a security review of the merge request
    * Make any comments or ask any clarifications necessary to complete the review
    * Look to make sure that the code does not introduce any new vulnerabilities
1. If the merge request looks acceptable:
    * Apply the `sec-planning::complete` label
    * Make a comment indicating that everything looks okay from a security perspective
    * Click the 'Approve' button on the merge request
    * Should the code change after an AppSec team member approved it, the AppSec reviewer should be pinged to give it a quick re-review to make sure everything still looks okay
1. If the merge request does not look acceptable at this time and/or introduces new vulnerabilities:
    * Apply the `sec-planning::pending followup` label
    * If possible, work with the creator to make it secure. Follow the steps above once it looks acceptable 
    * If inherently unacceptable or a wider discussion is needed, express any concerns and work with the creator and the relevant product and engineering teams to move forward
