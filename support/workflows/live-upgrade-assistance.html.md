---
layout: handbook-page-toc
title: Live Upgrade Assistance workflow
description: "Support team Workflow for providing Live Upgrade Assistance to customers"
category: Self-managed
subcategory: Live Upgrade Assistance
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

The GitLab support team is here to help. As a part of our [Priority Support](/support/index.html#priority-support)
we offer [Live Upgrade Assistance](/support/scheduling-live-upgrade-assistance.html). That is, we'll host a live screen share
session to help you through the process and ensure there aren't any surprises.

In addition to the live assistance, it is important for GitLab Support to ensure
the customer's plan for the upgrade is accurate and fully supported by GitLab in
advance of the production upgrade.

#### Initiating The Process

1. The end user initiating the request will open a new Support Request using the Support for Self managed Instance form with the problem type set to "Live Upgrade Assistance Request" or for eligible users, the [US Federal Live Upgrade Assistance Request](https://federal-support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360001434131) form in the respective Support Portal. This will generate a high priority ticket in the instance.
1. The triaging engineer should assign the ticket to themselves and review the provided information. US engineers should retain assignment of the ticket and proceed to step 3, whilst EMEA engineers should consult the [EMEA Live Upgrade Assistance Request Tracker](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3562) and APAC engineers should consult the
[APAC Live Upgrade Assistance Request Tracker](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3399) to determine who they should ask to perform the upgrade. Once agreement has been reached with the engineer scheduled to perform the upgrade then the ticket should be reassigned to that engineer.
1. The ticket assignee should review if the organization has a TAM, if so then the TAM should be added as a CC or follower to the ticket.
1. The user provided information must include all of the [required information](https://about.gitlab.com/support/scheduling-live-upgrade-assistance.html#what-information-do-i-need-to-schedule-live-upgrade-assistance).
1. If there is missing, incomplete, or erroneous information the Engineer should highlight the deficiencies and provide any insight that may be helpful to correcting them to the user.
    - The engineer may opt to use the `Live Upgrade Request Missing Info` macro in Zendesk to help the user understand that we cannot proceed with scheduling
until we have the necessary information to review.
1. Once all the required information has been confirmed and the engineer is ready to schedule the call the engineer (performing the upgrade) should send a personal one time use Calendly link for a 30 minute meeting with a 7 day lead time. 
    - There is a Calendly event template that is available, navigate to your [event types](https://calendly.com/event_types/user/me), select the downward arrow next to `+ New Event Type` and select `Live Upgrade Assistance - 30 Minute Kick off session`. This event type has a 7 day lead time built in.
    - In the event the user has indicated they would like a weekend upgrade and/or the available times in the individual engineer's calendly link are not favorable for their upgrade timeframe the engineer should reach out in the [#spt_managers](https://gitlab.slack.com/archives/C01F9S37AKT) Slack channel and `@` their manager for visibility. The managers would then be responsible to find another engineer who has availability for the requested date/time.
    - If the reviewing engineer does need to hand off the ticket they **must** sync up with the engineer who will be performing the live assistance to ensure proper handoff.
1. Once the user has scheduled the upgrade the ticket assignee should put the ticket in an `on-hold` state while waiting to begin the upgrade assistance live session. The ticket owner should also notify the on-call engineer who is scheduled during the upgrade window in Slack and add them as a CC or follower to the ticket.
1. Post call, the Engineer will comment on the ticket with a post-mortem of sorts. This should detail any issues that occurred or comments that might be relevant for the TAM, the customer, or Support.


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
