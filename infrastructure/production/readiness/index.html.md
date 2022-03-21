---
layout: markdown_page
title: "Production Readiness Review"
---

The Production Readiness Review is a process that helps identify the reliability needs of a service, feature or significant change to infrastructure for GitLab.com.
It loosely follows the [production readiness review](https://sre.google/sre-book/evolving-sre-engagement-model/) from the SRE book.
The goal of the readiness review is to make sure we have enough documentation, observability, and reliability for the feature, change, or service to run at GitLab.com production scale.

For GitLab, this review is meant to facilitate collaboration between Service Owners, Application Security, and Site Reliability teams to share and help bridge any gaps about a new service.
The review document will serve as a snapshot of what is being deployed and the discussions that surround it. It is not intended to be constantly updated.

The review starts by [creating a new issue][new issue] in the [readiness project].
After this, an MR is created using the [example template] which is the baseline for the review.
We prefer to use an MR for reviewing the readiness document since it allows for inline comments, threaded discussions, and explicit assignments for review.

The readiness review MR may go through multiple rounds of review, including merges to mainline.
It is recommended to send the first review to team members who are closest to the service or feature.
Though most essential readiness questions should be captured in the template, it is fine to add more details as necessary.
**All non-applicable sections should be noted in the MR.**

The readiness review needs to be approved by all required reviewers before the change is deployed and is taking production traffic.
It is important to start the readiness as early as possible, as early as development and design.
If it's not clear on what is needed to make a service scale for GitLab SaaS, engage with SREs on the design phase to receive guidance on the direction.

## Process

The Production Readiness process is authored by the DRI of the work that is being delivered.

1. The author [creates an issue][new issue] which uses the issue template in the [readiness project].
1. The title of the issue should be a descriptive name of change.
1. The process for the readiness review is specified in the issue in the form of a checklist, the instructions will guide the review author until the review is complete.

## Examples

The production readiness review process has been used for a wide range of changes to GitLab.com.
These include new services, larger features in GitLab Rails, infrastructure migrations, and architecture changes.
For examples see folders in the [readiness project]; note that every review is different so it is best to always start from the [example template] instead of an existing review.

## Guidelines for the author

- Be as descriptive as possible when writing this review. Avoid terminology that makes it appear as if something is already well known.
  What may be known by one may not be well understood by another.
- Make no assumptions. If an answer cannot be provided, it is better to explain why we lack the ability to provide details.
  This assists in fostering discussion and enables us to spawn new issues if we identify areas of improvement.
  This is also an excellent avenue for asking for help as needed.
- It is acceptable to have issues created for line items which may not be complete or not yet well known.
  Link to those issues as necessary. One issue must _NOT_ be created as a catchall;
  instead for each item, a dedicated issue should be created. As details emerge from those issues, that information should then be fed back into the readiness review.
- It is also acceptable to have issues created as a basis for visiting after the service has been introduced into production.
  For these items, an issue must already be created and a statement indicating why it is safe to proceed without it being a blocker.
- For any question or section which simply may not have an answer, or if it isn't relevant, leave it in the MR and state why it is not applicable.
  Doing so ensures that we've performed a review of all possible subject areas.

## Guidelines for the reviewer

- As a reviewer of the Production Readiness proposal,
  your task is to collaborate with the author and decide whether information provided in the proposal is sufficient for production readiness.
  Ultimately the author is the DRI and responsible for putting the service in production.
  This review helps the DRI work with you to ensure that what is being proposed meet our reliability needs.
- Consider how sections listed in the [issue template][] are addressed.
  It is important that you highlight any shortcomings that you observe.
  Ensure that non-applicable sections are properly noted and that issues are created if there are gaps that need to be addressed following the change.
- If the MR has gone through prior reviews, use the `Show all lines` option in the merge request diff to review and comment on unchanged lines.
  Leave questions as you would with regular code review.

## Completing the readiness review

Once all discussions have been addressed all mandatory items have satisfactory answers, the author will request approvals in the tracking issue in the "Reviewers" section of the tracking issue.
Following this, the issue will be closed and the change can be applied in production.


[new issue]: https://gitlab.com/gitlab-com/gl-infra/readiness/-/issues/new?issuable_template=production_readiness
[readiness project]: https://gitlab.com/gitlab-com/gl-infra/readiness
[issue template]: https://gitlab.com/gitlab-com/gl-infra/readiness/blob/master/.gitlab/issue_templates/production_readiness.md
[example template]: https://gitlab.com/gitlab-com/gl-infra/readiness/blob/master/.gitlab/issue_templates/production_readiness.md#readiness-mr-template
