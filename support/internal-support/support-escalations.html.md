---
layout: handbook-page-toc
title: GitLab Support - Escalations
description: Process documentation for ticket escalation to support leadership.
---

## Overview

This document outlines the process for managing existing support tickets or [internal requests](https://gitlab.com/gitlab-com/support/internal-requests), which, due to business-critical situations, require a resolution faster than what is defined by our [normal Support response times](https://about.gitlab.com/support/#priority-support).

## What is an escalation?

There are two types of escalations:

1. A functional escalation is when the progress of a ticket has stalled, and the ticket needs to be elevated to a more experienced engineer (based on their skill set) so that GitLab can resolve the ticket more quickly
1. A hierarchal escalation is when management oversight is required to bring structure and focus to a ticket and ensure the necessary resources are allocated to it. This type of escalation typically encompasses the following situations:
    - The SLA of the ticket has been significantly or repeatedly breached.
    - It is a business-critical situation where existing or future business is at risk.
    - The ticket requires immediate intervention to address a high level of customer dissatisfaction.

- TOC
{:toc .hidden-md .hidden-lg}

## Scope

The following two types of tickets can be escalated using this process.

1. Zendesk Support tickets from a customer with a license or subscription.
1. Issues in the [internal-requests](https://gitlab.com/gitlab-com/support/internal-requests) tracker.


Either of these can be escalated if the current course of action is unlikely to provide a positive outcome and meet critical business objectives.

## Out of Scope

1. Topics that fall into our general out-of-scope [definition](https://about.gitlab.com/support/statement-of-support.html#out-of-scope)
1. Escalating tickets for which there is no acceptable business case provided, requiring the acceleration of a resolution.
1. Add email to org or tickets that are not getting the correct SLA.

## About Escalations

GitLab Support targets a 95% SLA achievement KPI. This means that some tickets breaching is expected. Our SLA is for a _First Reply_ but we also internally track the next reply.

**Requesting eyes on, asking for an immediate opinion on, or requesting the escalation of a ticket in any Support related Slack channel creates unnecessary stress on Support Engineers who may be in the midst of working on other priority tickets.**

Depending on whether you want to draw attention to either a Zendesk ticket or an issue created in `internal-requests`, follow the steps below.

### Zendesk Tickets
{: .no_toc}

1. Review the SLA associated with the account and the amount of time left until a breach by logging into [Zendesk](https://gitlab.zendesk.com) using Okta. It's not typically necessary to escalate an issue that is hours away from a breach. If the ticket has had the first reply, then you are looking at an "internal (next reply) breach".
1. Ensure the latest response is from the customer. If the latest response is from us, we're waiting on the customer to reply.

>**Note:** If you do not have Zendesk access, please [request a Light Agent account](/handbook/support/internal-support/#viewing-support-tickets) to obtain it.


### Ticket De-escalation

Sometimes the Support Manager on-call may feel that an escalation request is without merit. In these cases, it's important to set expectations with the requester by documenting the following in the escalation issue.

1. Reasons why the ticket doesn't qualify for an escalation.
1. Agreement with requester on an acceptable alternative path.

Every escalation that is `de-escalated` must include the `De-Escalation` label.

## Definition of Urgency

| Urgency Level | Definition |
|---------------|------------|
| Not Urgent    | We need increased visibility on the ticket/issue and a response from Support within the next 2 hours. This escalation is not urgent, and the overall impact is `low`.|
| Timely        | We need to address potential or existing customer dissatisfaction on the ticket/issue with a response from Support within the next 1 hour. This escalation has a certain level of urgency, and the overall impact is `medium`.|
| Urgent        | The ticket/issue may become an [emergency](https://about.gitlab.com/support/#definitions-of-support-impact) if no follow-up is provided within the next 30 minutes and may lead to customer dissatisfaction. This escalation is urgent, and the overall impact is `high`.|

## Requesting an Escalation

The following instructions apply to escalating both Zendesk tickets and issues within the `internal-requests` issue tracker.

>**WARNING:** When escalating a US Federal case, **do not** fill in the customer's name, instead populate the `Customer` field with a link to the organization in SFDC.

1. Go to the [Support Escalation Form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor//support_escalation/).
1. Fill out each field. **All of them are required**.
1. Click `Submit Escalation Request`.

Once submitted, an issue is created in the [Escalations](https://gitlab.com/gitlab-com/support/escalations/-/issues) issue tracker. The issue is automatically assigned to the Support Manager on-call and will be used to keep a log of the escalation. Additionally, a thread will be created in the [#support_escalations](https://gitlab.slack.com/archives/CBVAE1L48) Slack channel.

Please be aware that we take into consideration the current state of the entirety of the ticket queue and already existing escalations when determining the appropriate prioritization for your escalation.

## Redirecting Escalations (Support Use Only)

If a request for an escalation is posted in the wrong channel, simply add the `:escalate:` emoji as a reaction to the post, and the user will be advised of the proper way to request an escalation via a [Slack Workflow](https://gitlab.com/gitlab-com/support/toolbox/slack-workflows).
