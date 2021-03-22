---
layout: markdown_page
title: How to Perform Customer Emergencies Duties
category: On-call
description: "Describes the role and responsibilities for Customer Emergencies rotation in Support Engineering"
---

- TOC
{:toc}

----

## Introduction

Support Engineers in the Customer Emergencies rotation coordinate operational emergencies from GitLab customers.

## Expectations for Support Engineers in the Customer Emergencies Rotation

### Communicate

When you get an alert, you should immediately start a Slack thread and take notes therein. Tag the Technical Account Manager (TAM) - "cc @user" is good enough - if the customer has one (steps [here](/handbook/support/workflows/support-sales-escalations.html#role-technical-account-manager-tam) for how to identify TAMs). This creates visibility around the situation and opens the door to let the team join in.

Good notes in Slack help others follow along, and help you with your follow-ups after the call.

Try to communicate complete ideas rather than snippets of thought. Something like "that's not good" as a response to something happening within the call isn't as helpful as "gitaly timings are really high".

Take and share screenshots of useful info the customer is showing you. Make sure you're not sharing anything sensitive. Let the customer know you're taking screenshots: "Could you pause there? I want to screenshot this part to share with my team".

### Assume good intent

If the problem stated in the emergency ticket doesn't meet the [definition of an emergency support impact](/support/#definitions-of-support-impact), inform the customer's Technical Account Manager or a Support Manager. Unless one of these managers ask you to do otherwise, however, continue to treat the ticket with the [emergency SLA](/handbook/support/#priority-support).

We [assume positive intent](/handbook/values/#assume-positive-intent) from the customer. Even though we may not think a particular ticket qualifies for [emergency support](/support/#priority-support), we treat all emergency pages from customers with priority support as if they qualify. During any crisis, the customer may be stressed and have immense pressure on them. Later, after the crisis, if we've determined that the ticket didn't qualify as an emergency, the customer's TAM or a Support Manager can discuss that with the customer.

### Respond to PagerDuty alerts

1. When an emergency is triggered, you will receive an alert from PD. This could be a text, phone call, email, Slack message, or a combination of those (depending on your PagerDuty notification preferences).
1. Acknowledge the alert in PagerDuty or Slack. This means that you received the emergency page, and are starting the response process.
1. **OPTIONAL:** Create a new Issue using the [Emergency Runbook Issue Template](https://gitlab.com/gitlab-com/support/emergency-runbook/-/issues/new), to guide you through the emergency response process for Customer Emergency tickets.
1. Open the Zendesk ticket.
    1. Most PagerDuty notification formats provide a direct link to the ticket.
    1. Alternatively, use Zendesk search with the term `priority: urgent` to find the ticket.
1. If you are simultaneously on an [FRT or SLA Hawk shift](/handbook/support/workflows/meeting-service-level-objectives.html), ask in Slack for someone to takeover those duties.
1. Create a Public Comment in the ticket acknowledging the emergency; offer a Zoom call to the customer.
1. Only Resolve the PagerDuty alert _after_ you have contacted the customer. This means that you are actively handling the emergency now and will see it through.
1. Start a thread in `#support_self-managed` or `#support_gitlab-com` with the ticket link. _"Thread for emergency ticket LINK HERE"_.
1. **OPTIONAL:** Consult our [definitions of support impact](/support/#definitions-of-support-impact) and evaluate the customer's problem statement against the "Emergency" definition there. Even if you don't think that this qualifies as an emergency, follow the guidance given in the [Assume Good Intent](#assume-good-intent) section.
1. After 15 minutes, if the customer has not responded to our initial contact with them, send a follow up message covering the following points:
    - The bridge created to work on the emergency.
    - If the customer is not able to join immediately, we can make other arrangements.
    - After another 15 minutes without response the bridge will be closed and the ticket will be assigned a `HIGH` priority.
    - Feel free to open a new emergency request if the need arises.

**NOTE:** If you need to reach the current on-call engineer and they're not accessible on Slack (e.g., it's a weekend, or the end of a shift), you can [manually trigger a PagerDuty incident](https://support.pagerduty.com/docs/incidents#section-manually-trigger-an-incident) to get their attention, selecting **Customer Support** as the Impacted Service and assigning it to the relevant Support Engineer.

#### PagerDuty Status
{:.no_toc}

- **Triggered** - "A customer has requested the attention of the on-call engineer"
- **Acknowledged** - "I have seen the page and am reviewing the ticket"
- **Resolved** - "I've engaged with the customer by sending a reply to the emergency ticket"

**NB:** "Resolved" in PagerDuty does not mean the underlying issue has been resolved.

### Handling multiple simultaneous emergencies

In rare cases, the on-call engineer may experience concurrent emergencies triggered by separate customers. If this happens to you, please remember that you are not alone; you need only take the first step in the following process to ensure proper engagement and resolution of each emergency:

1. **You**: [Contact the on-call Support Manager](/handbook/support/on-call/#paging-the-on-call-manager) to inform them of the new incoming emergency. The Support Manager is responsible for finding an engineer to own the new emergency page.
1. **Support Manager**: In Slack, ping the regional support group (_e.g._ `@support-team-americas`) and request assistance from anyone who is available to assist with the new incoming emergency case.
1. **Second Support Engineer**: Acknowledge and resolve the emergency page to indicate that you are assisting the customer with the case.

### Taking an emergency customer call

Taking an emergency call isn't significantly different from a normal call outside of two unique points:

- You (likely) won't have much forewarning about the subject of the call
- The desired end state is a functioning system

Try to find a colleague to join the call with you. A second person on the call can take notes, search for solutions, and raise additional help in Slack. They can also discuss and confirm ideas with you in Slack.

During the call, try to establish a rapport with the customer; empathize with their situation, and set a collaborative tone.

As early as possible, determine your options. In some cases, the best option may be rolling back a change or upgrade. The best option may also involve some loss of production data. If either of those is the case, it's okay to ask the customer if they see any other options before executing that plan.

### Post-call

Before ending an emergency customer call, let the customer know what to do if there is any follow-up, and who will be available if any follow-up is required.

For example:

> It seems like we've solved the root problem here, but if you need any help I'll be on-call for the next two hours. Feel free to **open a new emergency ticket** and I'll get back on a call with you right away. If it's after two hours, my colleague Francesca will be responding. I'll make sure that she has the background of the situation before I leave for the day.

When the call has ended:

1. Write post-call notes (using macro [`Support::Self-Managed::Post Customer Call`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360028010274)) relevant to the customer in a public reply on the ticket.
1. Add all relevant internal-only information as an internal note on the ticket.
1. Tag the next on-call engineer in the emergency's Slack thread.

## What to do if you don't know what to do

First, remember that your primary role is incident management. You are not expected to have all the answers personally and immediately.

Your primary job is to coordinate the emergency response. That could mean:

- directing the customer to take specific actions
- finding relevant documentation or doing other research into the problem
- identifying a known bug or regression and providing a workaround
- analyzing log data

It could _equally_ mean:

- identifying other experts on the Support team to help do the above
- reaching out to development teams to find a subject matter expert (SME)
- suggesting that the customer reach out to additional experts on their side (for example, if the problem is slow storage, you might suggest getting someone from their storage team)

Remember to say only things that help the customer and that maintain their confidence in you as the person in charge of getting their problem resolved. When you're not sure what to do, you might also be unsure what to say. Here are some phrases that might help:

- _What have you done up until now to try to resolve this?_
- _Please give me a few minutes to check the documentation on that._
- _I'm doing some research to find the answer to that; please give me a few minutes._
- _I'm working on finding someone who has specific expertise in this area._
- _I don't know the answer just yet, but I'm here for you and I will use all the resources at my disposal to get this resolved._

If you're stuck _and_ are having difficulty finding help, contact the [manager on-call](/handbook/support/on-call/#paging-the-on-call-manager) or initiate the [dev-escalation process](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#escalation-process).

## SaaS Emergencies

The workflow for these calls is the same as with self-managed emergencies.
However, you have additional visibility into problems that a customer may be facing that they will not.

Review:

- [Using Kibana](/handbook/support/workflows/kibana.html) - explore GitLab.com log files to find the errors customers are encountering.
- [Using Sentry](/handbook/support/workflows/sentry.html) - get access to the full stacktrace of errors a customer might encounter.

After you have identified the error and found reproduction steps, it's likely that you'll need to [declare an incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack)
and coordinate with incident management team to reach resolution. If the error is a result of a product defect, you may also need to engage the [InfraDev Escalation Process](/handbook/engineering/development/processes/Infra-Dev-Escalation/).

We're expecting, broadly that emergencies will fall into one of three categories:

- **broken functionality due to a regression being pushed to GitLab.com** => reproduce, identify, escalate to have a patch created and deployed.
- **broken functionality due to an inconsistency in data unique to the customer**, for example: a group name used to be able to have special characters in it, and now something broke because our group name has a special character in it. => reproduce, identify, escalate to have the specific data corrected (and create a bug report so our code is better)
- **GitLab.com access or "performance" degradation to the level of unusability**, for example: no access in a geographical area, CI jobs aren't being dispatched => This is the hardest class, but will generally be operational emergencies. Success here means making sure it's not actually one of the top two before [declaring an incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack)

## US Federal on-call

US Federal on-call support is provided 7 days a week between the hours of 0600 and 1800 Pacific Time.

The current on-call schedule can be viewed in [PagerDuty](https://gitlab.pagerduty.com/schedules#P89ZYHZ)(Internal Link), or in the [Support Team on-call page](https://gitlab-com.gitlab.io/support/team/oncall.html)(Public Link). The schedule is currently split into two, 6 hour shifts, an AM and a PM shift. The AM shift starts at 0600 Pacific Time and runs until 1200 Pacific Time. The PM shift starts at 1200 Pacific Time and runs until 1800 Pacific Time.
