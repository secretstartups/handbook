---
layout: handbook-page-toc
title: A Support Engineering Manager guide to account escalations
description: Guidance to Support Managers for how to handle account escalations
category: Manager
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This page guides Support Managers on how to identify and reduce the risk present during a Customer [Account Escalation](/handbook/customer-success/csm/escalations/), and how to manage information to successfully collaborate with the customer within a well defined scope.

An Account Escalation can be initiated by the Customer Success team, By a Support Manager, By a Support Engineer or [a customer emergency can be converted to an Account Escalation](/handbook/support/workflows/emergency-to-escalation-process.html).
## Responsibilities of the Support Manager

The Support Manager has two main goals during an Account Escalation:

1. Minimize uncertainty by turning it into a well defined risk.
1. Define a set of exit criteria (goals) for the escalation, and guide the work done by the Support team according to those criteria.

## Uncertainty

Uncertainty is defined as a situation with unknown information. As managers we need to ask the right questions so we can turn that into a well defined risk, which is something we can manage. Uncertainty is something we can't prepare for, and in the majority of circumstances it may lead to a higher use of resources than is necessary to resolve the situation.

### Example of Uncertainty
{:.no_toc}

Consider the following scenario:

```plain
A customer is having problems with their LDAP setup, causing users to be unable to authenticate. The Support team works across regions for two days, pursuing multiple courses of investigation and troubleshooting based on assumptions about the customer's LDAP setup. On the third day of the Account Escalation, we learn from a new customer comment that the customer uses an LDAP proxy, and the proxy was misconfigured.

Not knowing this proxy existed caused `uncertainty` that led us to an extended troubleshooting, and a longer time to resolve the problem. Asking questions about the customer architecture could have revealed this information earlier, so a better course of action could have been taken from the start. 
```

Not all uncertainties can be accounted for, but we can attempt to minimize them so we can better scope our work towards the exit criteria for the Account Escalation.

## Workflow

To serve as Support Manager for an Account Escalation, use the following steps.

### Step 0: Preparation

- Ensure the [Customer Success Escalations Process](/handbook/customer-success/tam/escalations/) has been followed.
- Review all recent support tickets that have been opened by the customer to help you determine the right Lead Support Engineer for the escalation.

### Step 1: Lead Support Engineer Assignment

- Assign a Support Engineer to act as the **Lead Support Engineer** during the Account Escalation and who is in the same region as the affected customer.
- Sync with the lead engineer to evaluate their workload and help them hand-off tickets or other responsibilities if necessary

#### Note

The lead Support Engineer will orchestrate the resolution from a technical perspective, and is not expected to be the sole owner of the escalation but instead guide the collaboration effort towards all regions to ensure a prompt resolution.

### Step 2: Define Scope

- Define a clear scope of work with the Account Owner and Lead Support Engineer. This should include listing the exit criteria for the Account Escalation.
- Get agreement from the customers what tickets are related and which are not related to the escalation
- Make sure the customer understands lower priority tickets may be delayed to ensure our focus on the escalated ticket(s).

### Step 3: Daily Updates

Post daily updates in the Slack channel being used for the Account Escalation. This is a channel with a name in the format `#a_<CUSTOMER>_escalation`. These updates should include the following:

- Progress toward achieving the Account Escalation exit criteria
- Status
- Current tasks with associated tickets
- Next steps
- Blockers

### Step 4: Evaluate Progress

Determine if progress on the current tasks has slowed or stalled. If either of these is true, decide whether to [escalate further to a specialized team](/handbook/engineering/development/processes/Infra-Dev-Escalation/) to ensure that work is progressing in the right direction.

### Step 5: Evaluate Stability to enter monitoring phase

Once the customer has stabilized, work with the Account Owner(s) and agree on a closing strategy. In most cases, we keep the customer in an escalated state for an agreed period of time to monitor their status. Once the monitoring period has passed with the customer remaining stable, they can be returned to normal status.

Before closing the Account Escalation:

- Review the steps listed in the [Customer Success Escalation Page](/handbook/customer-success/csm/escalations/#closing-the-escalation) and collaborate as needed to complete them.

### Step 6: Retrospective

- Open an issue using the `Retro` template in the [Escalated Customers](https://gitlab.com/gitlab-com/support/escalated-customers/-/issues/new?issuable_template=Retro) project.

## FAQ

- How do we handle emergency tickets opened by the customer during an Account Escalation?
>The Lead Support Engineer's main priority during their workday is the escalated customer. In general, an escalated customer should **not** trigger the [regular emergency process](/handbook/support/workflows/customer_emergencies_workflows.html). Instead, the Lead Support Engineer should work directly with the customer, and request more resources as needed. The Account Owner should notify us of the emergency in the `#a_customer_escalation` channel.

- What if an emergency occurs out-of-hours for the Lead Engineer? 
>In this case, the customer can trigger our [emergency support process](https://about.gitlab.com/support/#how-to-trigger-emergency-support).  When the DRI manager and Lead Engineer are online they will review any work done during the emergency and add it to the troubleshooting effort for the escalated account. 

- How often should I initiate a sync meeting? Daily? Weekly?
>It depends; you should work with the Account Owner(s) to determine the best cadence for a sync meeting. In most cases, it is relative to the urgency of the Account Escalation, but it varies from case to case.

- If the customer is stable, how long do I need to wait to close the Account Escalation?
>It depends; ensure the customer is comfortable with the current solution, and their instance status. Sync with the Account Owner and make a decision together. There is not a hard rule for this.
