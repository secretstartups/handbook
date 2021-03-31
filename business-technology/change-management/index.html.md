---
layout: markdown_page
title: "Business Technology Change Management"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Business Technology Change Request Workflow

Business Technology Change Management covers changes to System settings in addition to Process and Policy changes.

Making a user- or group-level change doesn't require a Business Technology change request. For example, if your team decides to make a change to one of your team's group settings on GitLab.com, a Business Technology change request isn't required. However, if you decide to make a change to a configuration or setting for GitLab.com globally, that requires a change request. Another example is Google Drive. If you decide to make a change to one of your team's Google Drive folders, no Business Technology change request is required. But if you change the default sharing setting of all of Google Doc for GitLab, a Business Technology change request is required.

Additional examples include: If you are making a Process and/or Policy change that will impact only your team's process, a change management is not required. If you are making a Process and/or Policy change that will impact one or more other departments, a change management is required.

For additional information regarding Change Management, refer to our [Change Management Workflow Control Guidance](/handbook/engineering/security/change-management-guidance.html).

**A Business Technology change request is only needed when a change is being requested for review for applications already listed in our tech stack.**

Business Technology change requests are important because they help us track and manage the risk of making wide-reaching configuration and setting changes. All requests for Application, Process, and/or Policy changes are initiated by the requestor submitting a [Business Technology Change Request](https://gitlab.com/gitlab-com/business-technology/change-management/issues/new?issuable_template=Business%20Technology%20Change%20Management) issue.

To make a global configuration or settings change to a [third-party application or service](/handbook/business-technology/tech-stack-applications/):

- [Create an issue in the Change Management project](https://gitlab.com/gitlab-com/business-technology/change-management/issues/new?issuable_template=Business%20Technology%20Change%20Management)
- A Review Board, consisting of Security, IT, and Legal (as needed) will review the change request.
    - Security and IT will review the change request and engage Legal as needed.
- After Security, IT, and Legal (if applicable) has reviewed and approved the change request, IT will engage our Approval Board (consisting of our Director level team members) for review and approval.
    - To move forward with the change, we will need at least a 75% approval rate from our Approval Board.
- In the event a change request is not approved, IT will work with the individual submitting the change request to address any blockers/concerns.

## Communication Changes

If during the Business Technology change request process it's decided team members should be notified of a change (for example, changing the default Google Doc sharing settings), Business Technology will communicate the change and its impact by posting in `#whats-happening-at-gitlab`.

**If the change is approved and requires communication to team members, communicate the change, its rationale, and its impact.**

Once the change request has been approved, Business Technology will make company announcements providing the change implementation timeline for 4 days prior to completing the change request. Regardless of when the change request has been approved, communication will always begin on a Monday and communicated daily through to Friday. Please note the change will always be implemented on a Monday following the communication schedule. This will allow the ability and coverage should the change need to be backed out and re-reviewed.

**If no communication is required or the change has been communicated already, make the change.**
