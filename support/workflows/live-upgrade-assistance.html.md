---
layout: handbook-page-toc
title: Live Upgrade Assistance workflow
description: "Support team Workflow for providing Live Upgrade Assistance to customers"
category: Live Upgrade Assistance
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

The GitLab support team is here to help. As a part of our [Priority Support](/support/index.html#priority-support)
we offer Live Upgrade Assistance. That is, we'll host a live screen share
session to help you through the process and ensure there aren't any surprises.

In addition to the live assistance, it is important for GitLab Support to ensure
the customer's plan for the upgrade is accurate and fully supported by GitLab in
advance of the production upgrade.

#### The Process

1. If the customer has a
   [Technical Account Manager (TAM)](/handbook/customer-success/tam/#what-is-a-technical-account-manager-tam),
   they reach out to the TAM with the required information. From there, the TAM
   creates a support-team-meta issue using the [`Upgrade Assistance Request`](https://gitlab.com/gitlab-com/support/support-team-meta/issues/new?issuable_template=Upgrade%20Assistance%20Request) or [`U.S. Federal Upgrade Assistance Request`](https://gitlab.com/gitlab-com/support/support-team-meta/issues/new?issuable_template=U.S.%20Federal%20Upgrade%20Assistance%20Request) issue template. If the customer does not have an assigned TAM, and reaches out
   to support themselves to schedule, the support engineer should ensure they have provided all necessary information and
   create this issue.
1. The current [manager on-call](/handbook/support/on-call/index.html#manager-on-call) will act as a DRI for the issue at this moment.
   That manager should also ping the Support Manager who will be on-call during
   the upgrade window so they can be involved in this process.
1. The DRIs will locate a Support Engineer to review the current given info
   (upgrade documentation, architecture diagram, etc.).
   * This should occur within 24 hours of the request's creation. Should the
     TAM notice this has not been done, the TAM should escalate the issue via
     the `#support_escalations` slack channel.
   * If the request meets the [minimum notice period](https://about.gitlab.com/support/scheduling-live-upgrade-assistance.html#how-much-advanced-notice-must-i-give):
     * Assign the issue to a Support Engineer in the same region as the
       customer and, if possible, the same region as the Support Engineer that
       will be performing the Live Upgrade Assistance.
   * If the request does not meet the minimum notice period:
     * Explain to the requester that the the request does not meet our minimum
       notice period and that their options are to either (1) reschedule to
       meet the minimum notice period; or (2) rely on emergency support should
       there be an issue.
     * Assign the issue to the Support Engineer who will be on-call during the
       upgrade window.
1. The Support Engineer will review the given information. If a ticket does not
   yet exist for this upgrade request, the Support Engineer will create the
   ticket (using the point of contact email information) to reach out to the
   user. If a ticket does exist, the Support Engineer will reply to the ticket
   with their review findings.
1. The Support Engineer will add the ticket link to the upgrade assistance
   issue via a comment.
1. The Support Engineer will add the issue link to the ticket.
1. Only if the request meets the minimum notice period:
   1. Once the Support Engineer has confirmed a viable path for the upgrade, they
      will comment on the issue notiftying the manager(s) acting as DRI(s) that the
      request can now be scheduled.
   1. The DRI(s) will locate a Support Engineer to perform the live upgrade call.
   1. This Support Engineer will schedule the call via Zoom and reply to the user
      with the details of how to connect. This should occur no later than 24 hours
      before the upgrade window.
   1. The Live Upgrade Assistance call happens (see
      [What does live upgrade assistance look like](/support/scheduling-live-upgrade-assistance.html#what-does-live-upgrade-assistance-look-like)).
   1. Post call, the Support Engineer will comment on the issue with a post-mortem
      of sorts. This should detail any issues that occurred or comments that might
      be relevant for the TAM or Support.
1. If the live upgrade assistance call needs to be rescheduled, the new date
   must also meet the minimum notice period.
1. The Support Engineer will close out the upgrade request issue.

#### What to do if issues occur during the course of upgrade assistance

Should issues occur, the Support Engineer should encourage the user to initiate
the reviewed rollback plan. If the Support Engineer feels confident they can
resolve the issues they have encountered, they may do so. However, the planned
maintenance window of the user should be taken into consideration. Ensure there is
enough time to rollback should it be required.

#### Can a request for live upgrade assistance be declined?

It is possible for this to occur, especially in situations where the upgrade
is poorly planned or likely to cause production downtime. We should encourage
the user to reschedule the window so we can allow for more time to test out
changes and ensure a smooth upgrade.

In cases where we decline to perform live upgrade assistance, we still
allow for the use of emergency support. In cases where emergency support is
utilized, often the best answer will be to rollback to the last working GitLab
version.
