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

The Customer Emergencies rotation is one of the rotations that make up [GitLab Support On-call](/handbook/support/on-call/).

## Expectations for Support Engineers in the Customer Emergencies Rotation

### Communicate

When you get an alert, you should immediately start a Slack thread and take notes therein. Tag the Technical Account Manager (TAM) - "cc @user" is good enough - if the customer has one (steps [here](/handbook/support/workflows/support-sales-escalations.html#role-technical-account-manager-tam) for how to identify TAMs). This creates visibility around the situation and opens the door to let the team join in.

Good notes in Slack help others follow along, and help you with your follow-ups after the call.

Try to communicate complete ideas rather than snippets of thought. Something like "that's not good" as a response to something happening within the call isn't as helpful as "gitaly timings are really high".

Take and share screenshots of useful info the customer is showing you. Make sure you're not sharing anything sensitive. Let the customer know you're taking screenshots: "Could you pause there? I want to screenshot this part to share with my team".

### Assume good intent

If the problem stated in the emergency ticket doesn't meet the [definition of an emergency support impact](/support/#definitions-of-support-impact), inform the customer's Technical Account Manager or a Support Manager. Unless one of these managers ask you to do otherwise, however, continue to treat the ticket with the [emergency SLA](/handbook/support/#priority-support).

We [assume positive intent](/handbook/values/#assume-positive-intent) from the customer. Even though we may not think a particular ticket qualifies for [emergency support](/support/#priority-support), we treat all emergency pages from customers with priority support as if they qualify. During any crisis, the customer may be stressed and have immense pressure on them. Later, after the crisis, if we've determined that the ticket didn't qualify as an emergency, the customer's TAM or a Support Manager can discuss that with the customer.

### (Optional) Contact the on-call Support Manager

If at any point you would like advice or help finding additional support, go ahead and [contact the on-call Support Manager](/handbook/support/on-call/#paging-the-on-call-manager). The on-call manager is there to support you. They can locate additional Support Engineers if needed. This can make it easier to handle a complex emergency by having more than one person on the call, so you can share responsibilities (e.g., one person takes notes in Slack while the other communicates verbally on the call). Managers are on-call during weekends, so you can page for help at any time.

### Respond to PagerDuty alerts

1. When an emergency is triggered, you will receive an alert from PD. This could be a text, phone call, email, Slack message, or a combination of those (depending on your PagerDuty notification preferences).
1. Acknowledge the alert in PagerDuty or Slack. This means that you received the emergency page, and are starting the response process.
1. **OPTIONAL:** Create a new Issue using the [Emergency Runbook Issue Template](https://gitlab.com/gitlab-com/support/emergency-runbook/-/issues/new), to guide you through the emergency response process for Customer Emergency tickets.
1. Open the Zendesk ticket.
    1. Most PagerDuty notification formats provide a direct link to the ticket.
    1. Alternatively, use Zendesk search with the term `priority: urgent` to find the ticket.
1. Verify that the requester is a customer with emergency support entitlement:
   1. If the customer's email address is not associated with an org in Zendesk,
      plan to start the Zoom call by verifying support entitlement **and** to
      end the call gracefully if they do not have sufficient entitlement. In
      they are a free user, mark the ticket `solved`. Otherwise, lower the
      priority.
   1. If the customer is associated with an org in Zendesk, verify that their
      subscription is Premium or above. If it is not, lower the priority of
      the ticket and inform the customer kindly that their subscription does
      not include emergency support.
1. Create a Public Comment in the ticket acknowledging the emergency; offer a Zoom call to the customer if appropriate to the reported situation. A SaaS emergency related to a public incident published on the status page, for example, would not warrant a call.
   * Example of self-managed emergency ticket which was resolved without a call: https://gitlab.zendesk.com/agent/tickets/148028
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

Try to find a colleague to join the call with you. A second person on the call can take notes, search for solutions, raise additional help in Slack, and take on the role of co-host in the event of system or network-related issues. They can also discuss and confirm ideas with you in Slack.

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

If you encounter a SaaS emergency at the weekend that you are unable to progress, then consider checking if the [CMOC engineer on call](https://gitlab.pagerduty.com/escalation_policies#PNH1Z1L) is available to offer any help or guidance.

If you are still stuck _and_ are having difficulty finding help, contact the [manager on-call](/handbook/support/on-call/#paging-the-on-call-manager) or initiate the [dev-escalation process](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#escalation-process).

## License Emergencies

### Self-managed Subscription Emergencies
{:.no_toc}

There may be times when a customer's subscription expires over the weekend, leaving their instance unusable until a new subscription is generated.

For non-trial subscriptions, you can remind the customer that subscriptions have [a 14 days grace period](https://about.gitlab.com/pricing/licensing-faq/#what-happens-when-my-subscription-is-about-to-expire-or-has-expired). If the expiration will not fall outside the grace period before the next business day, kindly let the user know that their request will be handled as a standard L&R case during normal business hours. You should reduce the priority of the case and inform the L&R team of the issue.

Otherwise, you will need to login to [CustomersDot Admin](https://customers.gitlab.com/admin) and generate a short term (7-14 days) **trial license** for them by following [this workflow](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/self-managed/creating_licenses.html). 
The idea is to get them through the weekend so they can solve this with their TAM, Sales Rep, and the L&R Support team during the regular workweek.

### SaaS Subscription Emergencies
{:.no_toc}

A customer may be blocked because of a license expiring or neglecting to apply a renewal. If you're familiar with [L&R Workflows](/handbook/support/license-and-renewals/workflows/), you may solve the case completely by yourself. If you are not, you may:

1. Use the mechanizer app from the ticket in the `Update GitLab Plan` option and making sure to add the existing subscription name.  
1. Alert `#support_licensing-subscription` that you've done so and link to the ticket for follow-up.

## SaaS Emergencies

The workflow for these calls is the same as with self-managed emergencies: success means that the customer is unblocked. In some cases,
you may even be able to fully resolve a customer's problem.

For any customer facing a SaaS Emergency you are empowered to perform any [two-way door](/handbook/values/#make-two-way-door-decisions) action required to unblock them without seeking approval first.

Some examples:
 - manually setting a subscription level
 - adding additional storage
 - adding extra CI minutes
 - toggling a feature flag

During a SaaS Emergency, you have additional visibility into problems that a customer may be facing.

Review:

- [Using Kibana](/handbook/support/workflows/kibana.html) - explore GitLab.com log files to find the errors customers are encountering.
- [Using Sentry](/handbook/support/workflows/sentry.html) - get access to the full stacktrace of errors a customer might encounter.

We're expecting, broadly that emergencies will fall into one of five categories:

- **broken functionality due to a regression being pushed to GitLab.com**
   - Success may mean: reproducing, identifying or creating a bug report and escalating to have a patch created and deployed.
- **broken functionality due to an inconsistency in data unique to the customer**, for example: a group name used to be able to have special characters in it, and now something broke because our group name has a special character in it.
    - Success may mean reproducing the error, identifying it Sentry/Kibana, escalating to have the specific data corrected (and creating a bug report so our code is better)
- **GitLab.com access or "performance" degradation to the level of unusability**, for example: no access in a geographical area, CI jobs aren't being dispatched. This is the hardest class, but will generally be operational emergencies.
   - Success here means making sure it's not actually one of the top two before [declaring an incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack) and letting the SRE team diagnose and correct the root cause.

- **License / Consumption issues are preventing access to the product**
   - Success here means getting the customer into a state where they're unblocked and making sure the license team is equipped to take the handover.
- **a widespread incident causes multiple, successive PagerDuty alerts**
   - Success here means tagging and bulk responding to the issues pointing to the [GitLab.com Status Page](https://status.gitlab.com) and production issue.

### Broken Functionality
If a customer is reporting that behaviour has recently changed, first check [GitLab.com Status](https://status.gitlab.com) and `#incident-management` for any on-going incidents. If there's no known incident:

1. Initiate a call with the customer. You're specifically looking to:
   - observe broken behavior.
   - determine if there's a known issue, bug report, or other customers reporting similar behavior.
   - ascertain whether or not a feature flag that may have been recently turned on (see: [Enabling Feature Flags on GitLab.com](https://docs.gitlab.com/ee/development/feature_flags/controls.html#enabling-a-feature-for-gitlabcom))
   - find/build reproduction steps devoid of customer data to build a bug report if none exists.

#### Broken functionality due to a regression or feature flag

1. Create a `~"type::bug"` issue and have the customer review it.
1. Escalate the `~"type::bug"` issue
   - If it's a new bug, or a bug with [S1/S2 severity](/handbook/engineering/quality/issue-triage/#severity) escalate using the [InfraDev Escalation Process](/handbook/engineering/development/processes/Infra-Dev-Escalation/). In most cases we will generate a roll-back patch and apply it to Gitlab.com.
   - If it's a feature flag, work with the who turned it on to [disable it through ChatOps](https://docs.gitlab.com/ee/development/feature_flags/controls.html#disabling-feature-flags). In some cases, you may need to use the [InfraDev Escalation Process](/handbook/engineering/development/processes/Infra-Dev-Escalation/) to raise a developer.
1. If this is affecting multiple customers, [declare an incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack) to engage the incident response team who will update the status page.
1. Once the original functionality is restored, update the customer.

#### Broken functionality due to something specific to the customer

1. [Page the Support Manager on-call](/handbook/support/on-call/#paging-the-on-call-manager) to review the best way to unblock the customer. It may be that you will need someone with .com console access to fully investigate / resolve.

#### Broken functionality due to an incident

If there is a known incident, it's acceptable to link to the public status page and related incident issue. Consider using [`Support::SaaS::Incident First Response`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros/-/blob/master/macros/active/Support/SaaS/Incident%20First%20Response.yaml).

#### Example tickets:
{:.no_toc}

- [Feature flag broke previously working behaviour](https://gitlab.zendesk.com/agent/tickets/204073): resolution was to turn off a feature-flag.
- [Regression on GitLab.com broke previously working pipeline](https://gitlab.zendesk.com/agent/tickets/147266): resolution was to revert a recently deployed MR.
- [Customer locked themselves out of their group by changing SAML settings](https://gitlab.zendesk.com/agent/tickets/146611)


### Consumption Issues

#### CI Minutes quota is blocking a production deployment

A customer may be blocked because they have run out of CI minutes.

1. Advise them to purchase additional minutes or set up individual runners.
1. At your discretion, as a courtesy, [set an additional 1000 minutes on their namespace through ChatOps](/handbook/support/workflows/chatops.html#setting-additional-minutes-quota-for-a-namespace)

#### Customer has exceeded their storage quota

A customer may be blocked because they've exceeded their storage quota.

1. Advise them to purchase additional storage
1. In cases where a customer is unable to complete a purchase because of a defect or outage, as a courtesy, someone with GitLab.com admin can override the storage limit on a group.

### A widespread incident causes multiple, successive PagerDuty alerts

If an incident occurs on GitLab.com and hasn't been posted on the status page, SaaS customers may raise emergencies in bulk.
Success in such a situation is two-fold:
1. Route customers reporting the incident to our status page, `@gitlabstatus` on Twitter and the production incident issue.
1. Sort through the alerts to ensure that there are no emergencies raised that are unrelated to the on-going incident.

If this occurs:
1. Don't panic! Slack and PD alerts may come quickly and frequently. Consider silencing both temporarily and focus on ZD.
1. Verify that an [incident has been declared](https://about.gitlab.com/handbook/support/workflows/cmoc_workflows.html#how-are-incidents-declared) and that the incident is actively being worked.
1. If there is no update on the status page yet, advocate for urgency with the [CMOC](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#communications-manager-on-call-cmoc-responsibilities) so that you can point to it in responses.
1. Choose a unique tag that will help you identify tickets, using the incident number would be typical. For example: `incident-12345`
1. Create a bulk response that points to the incident on the status page, `@gitlabstatus` on Twitter and the production issue. If any of these aren't available yet, you can send a response without to keep customers informed. You can include them in a future update.
   - Share the response that you draft or otherwise coordinate with `#support_gitlab-com` and others fielding first responses. There are likely non-emergency tickets being raised about the incident. Using the same response increases the efficiency with which we can all respond to customer inquiries about the problem.
1. Create the tag by typing it into the tag field of at least **one** ticket and submitting it - if you don't, it won't show as available in the bulk edit view of Zendesk.
1. Use Zendesk search to identify customer-raised emergencies:
   - [`priority:urgent order_by:created_at sort:desc`](https://gitlab.zendesk.com/agent/search/1?type=ticket&q=priority%3Aurgent%20order_by%3Acreated_at%20sort%3Adesc) will show all emergency tickets, sorted by those opened most recently
   - [`priority:urgent order_by:created_at sort:desc status:new`](https://gitlab.zendesk.com/agent/search/1?type=ticket&q=priority%3Aurgent%20order_by%3Acreated_at%20sort%3Adesc%20status%3Anew) will show all **new** emergencies
   - **CAREFUL**: Verify that each ticket is related to the incident - if it is not, follow [handling multiple simultaneous emergencies](#handling-multiple-simultaneous-emergencies)
1. Use [Zendesk Bulk Update](#using-zendesk-bulk-update) to respond to all open tickets.

At any point, you may ack/resolve PD alerts. It may be faster to do so through the PagerDuty web interface.

During an incident:
 - *If there is no production issue to link to yet*: let customers know we are actively working to address the problem and that we will follow-up with a link to a tracking issue as soon as one is created. Set the ticket to **Open**. Once the issue is available, send a follow-up note letting the customer know that they should follow along with the issue and that we are marking the ticket as **Solved**. Include a note that they should reply if they still have trouble once the production issue has been closed / the incident has been declared resolved.
- *If there is a production issue to link to*: let customers know we are actively working to address the problem, that they should follow along at the issue, that we are marking the ticket as **Solved** and they should reply if they still have trouble once the production issue has been closed / the incident has been declared resolved.

#### Using Zendesk Bulk Update

[Zendesk Bulk Update](https://support.zendesk.com/hc/en-us/articles/203690866-Managing-tickets-in-bulk#topic_oth_lkp_gk) is a way to mass edit and respond to tickets. During an incident, you can use it to:
- automatically tag tickets
- send a bulk response
- set status _en masse_

You can bulk edit tickets by:
1. From a Zendesk search click one or more checkboxes
2. Click "Edit `n` tickets" in the upper right-hand corner
3. Edit the properties of the ticket you'd like to update. During an incident that will probably be:
  - A public reply
  - A ticket tag
4. Click Submit with the appropriate status change

![ZD Bulk Update View](/images/support/zd-bulk-update.png){: .shadow}

## US Federal Emergencies

US Federal on-call support is provided 7 days a week between the hours of 0500 and 1700 Pacific Time.

The current on-call schedule can be viewed in [PagerDuty](https://gitlab.pagerduty.com/schedules#P89ZYHZ)(Internal Link), or in the [Support Team on-call page](https://gitlab-com.gitlab.io/support/team/oncall.html)(GitLab Employees only). The schedule is currently split into two, 6 hour shifts, an AM and a PM shift. The AM shift starts at 0500 Pacific Time and runs until 1100 Pacific Time. The PM shift starts at 1100 Pacific Time and runs until 1700 Pacific Time.

Customers are permitted to submit emergencies via email or via the emergency form in the US Federal support portal. 

#### Emergencies outside on-call hours
If a customer submits an emergency case outside the [working hours of Federal Support](https://about.gitlab.com/support/us-federal-support/#hours-of-operation) the following will occur:

 - A slack notification will trigger in the #spt_us-federal channel alerting the team to an off hours emergency and indicating follow-up is needed at the start of business hours
 - The `Off hours emergency request` trigger will inform the ticket submitter that it is after hours and give them the option to either create an emergency case in Global support or wait for US Federal support to follow-up at the next start of business hours. 

## Special handling notes

There are a few cases that require special handling. If an emergency page falls in one of these categories please follow these special handling instructions. If you think an emergency is special and not called out below, connect with the Support Manager On-call for help as how best to approach it.

### Compromised instances

In the event that an emergency is raised about a compromised instance a call can quickly move well beyond the scope of support.

Use the Zendesk macro `Incident::Compromised Instance` which expands on the approach below.

The customer should:
1. Shut the instance down immediately.
1. Create a new instance at the exact same version and restore their most recent backup into it.
   - Avoid exposing the new instance to the Internet
   - If they do not have a copy of their `gitlab-secrets.json`, or if the only backups available are stored in `/var/opt/gitlab/backups`, mount the volume of the compromised instance to retrieve it.
1. Rotate secrets on the new instance:
   - All secrets contained within the `gitlab.rb` (such as LDAP/email passwords)
   - All secrets in CI jobs such as API keys or remote server credentials
   - GitLab Runner registration tokens and Runner environment variables 
1. If the exploit used to compromise this instance is known, then upgrade **the new instance** to a version that contains a fix for it or apply any known patches/workarounds. 
   - In the case that public access is required by the organization, remove network access restrictions once the new instance is appropriately secured.
1. Retain the compromised instance for forensics and additional data recovery.

Do not offer or join a call without engaging the Support Manager on-call to align and set expectations with the customer through the ticket.

### Single user, same day purchases

There have been a few documented cases of folks purchasing a single user GitLab license specifically to raise an emergency. If you 
encounter such a case, engage the Support manager on-call before offering a call.

# Customer Emergency On-Call Training Resources

### Customer Emergency Shadow PagerDuty Schedule
{:.no_toc}

The [Customer Emergency Shadow Schedule](https://gitlab.pagerduty.com/schedules#PY3KXMC) can be used by anyone who wishes to shadow customer emergencies to learn before being Customer Emergency On-Call. To add yourself to the shadow rotation create an [issue](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty/-/issues/new#) using the "Add User to a Rotation" template. To modify your rotation schedule use the edit user rotation template. To shadow for a short span of days, you can click _Schedule an Override_, then click _Custom duration_ and then select the time zone and the start and end dates and times before clicking the _Create Override_ button to save the changes. To remove overrides, click the **x** on the override to be removed in the list of **Upcoming Overrides** on the right side of the screen. 


