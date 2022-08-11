---
layout: handbook-page-toc
title: GitLab Support - Support Ticket Attention Requests (STAR)
description: Process documentation for getting additional attention on a ticket from support leadership.
---

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This document outlines the process for managing existing support tickets or [internal requests](https://gitlab.com/gitlab-com/support/internal-requests), which, due to business-critical situations, require a resolution faster than what is defined by our [normal Support response times](https://about.gitlab.com/support/#priority-support).

## What is an Support Ticket Attention Request (STAR)?

Support Ticket Attention Requests (STAR) are the mechanism by which GitLab Team Members can request additional attention be placed on tickets. Feel free to
use pronounce the acronym STAR and use it as a verb (_I starred this ticket because of a request from the customer_) or a noun (_I put a star on this ticket to make sure an engineer with the right expertise is assigned_).

### When should you STAR a ticket?

1. When the progress of a ticket has stalled, and the ticket needs to be elevated to a more experienced engineer (based on their skill set) so that GitLab can resolve the ticket more quickly.
1. When management oversight is required to bring structure and focus to a ticket and ensure the necessary resources are allocated to it. For example, if:
    - The [SLA](https://about.gitlab.com/support/#service-level-agreement-sla-details) of the ticket has been breached by an hour or more.
    - The ticket requires immediate intervention to address a high level of customer dissatisfaction.


### When is a STAR not appropriate?
- It is a business-critical situation where existing or future business is at risk -> [raise an account escalation](/handbook/customer-success/tam/escalations/#initiating-managing-and-closing-an-escalation)
- It is an emergency -> [raise an emergency](https://internal-handbook.gitlab.io/handbook/support/support.html#raising-an-emergency) (internal Handbook, GitLab team members only)
- It is a SaaS incident -> [report an incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack)

### Notes: 
* For L&R (subscription, plan, renewal, licensing) escalations, please see our [Plan/License Escalations Workflow](/handbook/support/license-and-renewals/workflows/managers_working_with_extensions.html#how-to-decide-the-validity-of-an-escalation) and its decision flowchart. Requests for customer convenience (that is, when a loss of functionality is not imminent) may not be prioritized.
* Our [SLA](https://about.gitlab.com/support/#service-level-agreement-sla-details) will cover first responses to tickets. 

## Scope

The following two types of tickets can have additional attention requested using this process.

1. Zendesk Support tickets from a customer with a license or subscription.
1. Issues in the [internal-requests](https://gitlab.com/gitlab-com/support/internal-requests) tracker.


Either of these can be starred if the current course of action is unlikely to provide a positive outcome and meet critical business objectives.

## Out of Scope

1. Topics that fall into our general out-of-scope [definition](https://about.gitlab.com/support/statement-of-support.html#out-of-scope)
1. Starring tickets for which there is no acceptable business case provided that requires the acceleration of a resolution.
1. Add email to org or tickets that are not getting the correct SLA.

## About Support Ticket Attention Requests

GitLab Support targets a 95% SLA achievement KPI. This means that some tickets breaching is expected. Our SLA is for a _First Reply_ but we also internally track the next reply.

**Requesting eyes on, asking for an immediate opinion on, or requesting additional attention for a ticket in any Support related Slack channel creates unnecessary stress on Support Engineers who may be in the midst of working on other priority tickets.**

Depending on whether you want to draw attention to either a Zendesk ticket or an issue created in `internal-requests`, follow the steps below.

### Zendesk Tickets
{: .no_toc}

1. Review the SLA associated with the account and the amount of time left until a breach by logging into [Zendesk](https://gitlab.zendesk.com) using Okta. It's not typically necessary to STAR an issue that is hours away from a breach. If the ticket has had the first reply, then you are looking at an "internal (next reply) breach".
1. Ensure the latest response is from the customer. If the latest response is from us, we're waiting on the customer to reply.

>**Note:** If you do not have Zendesk access, please [request a Light Agent account](/handbook/support/internal-support/#requesting-a-zendesk-light-agent-account) to obtain it.


### Unstarring a ticket

Depending on the request the Support Manager on-call may decide that an STAR is without merit. In these cases, it's important to set expectations with the requester by documenting the following in the STAR issue.

1. Reasons why the ticket doesn't qualify for an STAR.
1. Agreement with requester on an acceptable alternative path.

Every STAR that is `unstarred` must include the `unstarred` label.

## Definition of Urgency

| Urgency Level | Definition |
|---------------|------------|
| Not Urgent    | We need increased visibility on the ticket/issue and a response from Support within the next 2 hours. This request for attention is not urgent, and the overall impact is `low`.|
| Timely        | We need to address potential or existing customer dissatisfaction on the ticket/issue with a response from Support within the next 1 hour. This escalation has a certain level of urgency, and the overall impact is `medium`.|
| Urgent        | The ticket/issue may become an [emergency](https://about.gitlab.com/support/#definitions-of-support-impact) if no follow-up is provided within the next 30 minutes and may lead to customer dissatisfaction. This escalation is urgent, and the overall impact is `high`.|

## Submitting a Support Ticket Attention Request (STAR) / Starring a ticket

**Important**
The STAR form will be available during our [support hours](https://about.gitlab.com/support/#definitions-of-gitlab-global-support-hours), outside of these hours the form will be disabled.

The following instructions apply to STAR both Zendesk tickets and issues within the `internal-requests` issue tracker.

>**WARNING:** When starring a US Federal case, **do not** fill in the customer's name, instead populate the `Customer` field with a link to the organization in SFDC.

1. Go to the [Support Ticket Attention Request Form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/STAR/).
1. Fill out each field. **All of them are required**.
1. Click `Submit Support Ticket Attention Request`.

Once submitted, an issue is created in the [Support Ticket Attention Request](https://gitlab.com/gitlab-com/support/ticket-attention-requests/-/issues) issue tracker. The issue is automatically assigned to the Support Manager on-call and will be used to keep a log of the ticket attention request. Additionally, a thread will be created in the [#support_ticket-attention-requests](https://gitlab.slack.com/archives/CBVAE1L48) Slack channel.

Please be aware that we take into consideration the current state of the entirety of the ticket queue and already existing escalations when determining the appropriate prioritization for your escalation.

## Redirecting Ticket Attention Requests (Support Use Only)

If something that looks like a STAR is posted in the wrong channel, simply add the `:support-ticket-attention-request:` emoji as a reaction to the post, and the user will be advised of the proper way to request a Support Ticket Attention Request via a [Slack Workflow](https://gitlab.com/gitlab-com/support/toolbox/slack-workflows).
