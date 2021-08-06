---
layout: handbook-page-toc
title: Emergency -> Escalation
description: Guidance to support engineers on when and how to escalate an emergency
category: On-call
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Overview

In the course of our work as Support Engineers, there are instances where an Emergency may end up being larger than we expect, or unsolvable in one call. If so, this document acts as a guide on how to convert from an Emergency to an Escalation.

## It starts with mindset

In our day-to-day work, Support Engineers are naturally reactive: ticket exists -> we work on that ticket. This changes in an Escalated state, where we need to switch to be more proactive by acting as a guide through the entirety of the escalation.

## When to start an escalation

We don't have a definitive list of criteria to follow, so this must be determined on a case-by-case basis. Here are some questions that can guide this decision:

- Is the emergency running for more than 3 hours, with no clear resolution in sight?
- Are there outside factors (Renewals/Migrations/Other initiatives) that are being blocked by the emergency?

If so, reach out in #support-managers slack first, as a quick touch base. At this point, a manager should be available to engage to help manage and start the escalation with you.

## How to start an escalation

At this point, review the [TAM handbook for escalation levels](/handbook/customer-success/tam/escalations/#definitions-of-severity-levels) to see which best applies. The most important thing for a Support Engineer here is to create a Slack room that will live for the duration of the escalation. If there is a TAM, they will start an escalation document to help manage the escalation internally. If there isn't a TAM, coordinate with the on-call Support Manager to get that document created, as per [the TAM Handbook](/handbook/customer-success/tam/escalations/index.html). 

## Expectations during an escalation

As the slack room forms, it's important to note that our role changes from "problem solver" to "problem definer + problem solver". You should be balancing your time between communicating in the Slack room, updating the ticket, and getting on calls with the customer.

Here are a few things to keep in mind 

- As the on-call Support Engineer, assign the emergency ticket to yourself. Once assigned, link to the escalation doc and the Slack room in a comment, so anyone who sees the ticket will know how to get caught up on the latest.
- At the end of your shift, update the next on-call Support Engineer & Manager of the escalation so they can take over.
- Post updates in the Slack room as you get them.
- If calls are running past 3 hour mark, consider a break, re-defining the problem, and re-meeting at an agreed upon time.
- During an escalation, we should be leading, which means we should have clarity as to when the next touch-point will happen. The customer shouldn't have to create another emergency ticket to get back in touch with us.
- Once we are in an Escalated state, we have full access to development via [Dev Escalations](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html) so consider of there are people that could help fill any skill gaps.
