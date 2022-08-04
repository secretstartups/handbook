---
layout: handbook-page-toc
title: Upgrade Assistance workflow
description: "Support team Workflow for providing Upgrade Assistance to customers"
category: Self-managed
subcategory: Upgrade Assistance
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

As a part of our [Priority Support](/support/index.html#priority-support),
GitLab Support offer [Upgrade Assistance](/support/scheduling-upgrade-assistance.html). That is, we'll review upgrade and rollback plans, providing feedback and suggestions to the customer to help ensure a smooth upgrade. **Optionally**, we can host a 30-minute screen share with the customer to answer any final questions and run a final review of their overall plan.

In addition to the upgrade assistance, it is important for GitLab Support to ensure
the customer's plan for the upgrade is accurate and fully supported by GitLab in
advance of the production upgrade.

If the customer has not provided a plan, or it lacks the detail we need to support them in their upgrade, feel free to ask for a plan. We have [guidance to assist customers in planning their upgrade](https://docs.gitlab.com/ee/update/plan_your_upgrade.html).

#### Initiating The Process

1. The end user initiating the request will open a new Support Request using the Support for Self managed Instance form with the problem type set to "Upgrade Assistance Request" or for eligible users, the [US Federal Upgrade Assistance Request](https://federal-support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360001434131) form in the respective Support Portal. This will generate a high priority ticket in the instance.
2. The triaging engineer should assign the ticket to themselves. 
3. The ticket assignee should review if the organization has a TAM, if so then the TAM should be added as a CC or follower to the ticket.
4. The user provided information must include all of the [required information](https://about.gitlab.com/support/scheduling-upgrade-assistance.html#what-information-do-i-need-to-schedule-upgrade-assistance).
5. If there is missing, incomplete, or erroneous information the Engineer should highlight the deficiencies and provide any insight that may be helpful to correcting them to the user.
    - The engineer may opt to use the `Upgrade Request Missing Info` macro in Zendesk to help the user understand that we cannot proceed with scheduling
until we have the necessary information to review.
1. (Optional) When the required information has been collected, the assignee can reach out to any of the folks with an `Upgrade` or `Upgrade Assistance` focus on the [Skills by Subject](https://gitlab-com.gitlab.io/support/team/skills-by-subject.html) page to pair or offer insight asynchronously.
Based on the region, consult one of the following trackers to determine who to ask.
    - [AMER Upgrade Assistance Request Tracker](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3789)
    - [EMEA Upgrade Assistance Request Tracker](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3562) (deprecated, Check within your SGG)
    - [APAC Upgrade Assistance Request Tracker](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/3399) (deprecated, Check within your SGG)
3. If the customer requests to have the optional 30-minute call for a final review, send a personal one time use Calendly link for a 30 minute meeting at least 2-3 days in advance of when the customer plans to upgrade their GitLab instance.
    - If the reviewing engineer needs to hand off the ticket, they **must** sync up with the engineer who will be performing the final review to ensure proper handoff.
3. Once the user has scheduled the upgrade, the ticket assignee should put the ticket in an `on-hold` state until the customer has confirmed that the upgrade has been successfully completed. 

#### What to do if issues occur during the course of upgrade assistance

Should issues occur, the Support Engineer should encourage the user to initiate
the reviewed rollback plan. If the Support Engineer feels confident they can
resolve the issues they have encountered, they may do so. However, the planned
maintenance window of the user should be taken into consideration. Ensure there is
enough time to rollback should it be required.

#### Can a request for upgrade assistance be declined?

It is possible for this to occur, especially in situations where the upgrade
is poorly planned or likely to cause production downtime. We should encourage
the user to reschedule the window so we can allow for more time to test out
changes and ensure a smooth upgrade.

In cases where emergency support is utilized, often the best answer will be to rollback to the last working GitLab
version.
