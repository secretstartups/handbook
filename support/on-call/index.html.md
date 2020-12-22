---
layout: handbook-page-toc
title: GitLab Support On-Call Guide
description: >-
  For customers that have Priority Support, the Support Engineering Team is
  on-call and available to assist with emergencies
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

For the customers that have [Priority Support](/support/#priority-support), the Support Engineering Team is on-call and available to assist with emergencies. What constitutes an emergency is defined in our [definitions of support impact](/support/#definitions-of-support-impact).

We take on-call seriously. There are [escalation policies](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH) in place so that if a first responder does not respond fast enough another team member or members is/are alerted. Such policies aren't expected to ever be triggered, but they cover extreme and unforeseeable circumstances.

## Expectations for Support Engineer on-call

### Be alert and available

When you are on call you are expected to be available and ready to respond to PagerDuty pings as soon as possible, and certainly within the emergency response time set by our [Service Level Agreements](/support/#priority-support).

If you have plans outside of your work space while being on call, then being available may require bringing a laptop and reliable internet connection with you.

You should not be chained to your desk, but you should be equipped to acknowledge and act on PD alerts in a timely manner.

Be proactive in communicating your availability. Sometimes you can't be _immediately_ available for every minute of your on-call shift. If you expect to be unavailable for a short period of time, send an FYI in Slack.

### Communicate

When you get an alert, you should immediately start a Slack thread and take notes therein. Tag the Technical Account Manager (TAM) - "cc @user" is good enough - if the customer has one (steps [here](/handbook/support/workflows/support-sales-escalations.html#role-technical-account-manager-tam) for how to identify TAMs). This creates visibility around the situation and opens the door to let the team join in.

Good notes in Slack help others follow along, and help you with your follow-ups after the call.

Try to communicate complete ideas rather than snippets of thought. Something like "that's not good" as a response to something happening within the call isn't as helpful as "gitaly timings are really high".

Take and share screenshots of useful info the customer is showing you. Make sure you're not sharing anything sensitive. Let the customer know you're taking screenshots: "Could you pause there? I want to screenshot this part to share with my team".

### Assume good intent

If the problem stated in the emergency ticket doesn't meet the [definition of an emergency support impact](/support/#definitions-of-support-impact), inform the customer's Technical Account Manager or a Support Manager. Unless one of these managers ask you to do otherwise, however, continue to treat the ticket with the [emergency SLA](/handbook/support/#priority-support).

We [assume positive intent](/handbook/values/#assume-positive-intent) from the customer. Even though we may not think a particular ticket qualifies for [emergency support](/support/#priority-support), we treat all emergency pages from customers with priority support as if they qualify. During any crisis, the customer may be stressed and have immense pressure on them. Later, after the crisis, if we've determined that the ticket didn't qualify as an emergency, the customer's TAM or a Support Manager can discuss that with the customer.

### Ask for help when needed

Rest assured: escalation is okay -- other GitLab team members are happy to help. Caring for our customers is a shared responsibility. Tag a Slack support-team Group if you haven't gotten help in your Slack thread. Tag the support managers if you need to escalate further.

If another support engineer joins your emergency call, feel free to assign them a role to divide up the labor.

> So and so would you please (take notes, reach out to this product team and ask for help, look up the code for this and see what you can find)?

### Take care of yourself

Make a real effort to de-stress during your on-call shift. After being on-call, consider taking time off, as noted in the [main GitLab Handbook](/handbook/paid-time-off). Just being available for emergencies and outages causes stress, even if there are no pages. Resting is critical for proper functioning. Just let your team know.

When you're in a customer call, you do **not** need to provide _immediate_ answers. You're allowed to pause for a few minutes for researching, asking for help, etc. Make sure to communicate -- let the customer know what you're doing. Example: "I need a few minutes to work through the code here and make sense of it".

## How Support On-call works

### Schedule and escalation policy

We do 7 days of 8-hour shifts in a follow-the-sun style, based on your location.

**NOTE:** If a new alert has not been acknowledged after 10 minutes, the Support Manager on-call is alerted. After a further 5 minutes, if there is no acknowledgement, Senior Support Managers are alerted.

There are several ways to view current and future schedules:

1. On gitlab.io: [View the current and next week's assignments](https://gitlab-com.gitlab.io/support/team/oncall.html)
1. In PagerDuty: View the [Customer Emergencies schedule](https://gitlab.pagerduty.com/schedules#PIQ317K) and the [escalation policy](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH)
1. In Google Calendar, [subscribe to your on-call schedule](https://support.pagerduty.com/docs/schedules-in-apps#section-export-only-your-on-call-shifts)

#### Your first on-call shift

For new team members approaching their first on-call shift, your [Support onboarding issue](https://gitlab.com/gitlab-com/support/support-training/-/blob/master/.gitlab/issue_templates/New-Support-Team-Member-Start-Here.md) includes a section suggesting that you shadow a current on-call to gain familiarity with the process. After completing your shadow shift, work with your manager to get yourself added to the on-call rotation. For your first on-call week we recommend asking your Onboarding Buddy to be available as a secondary to help if an emergency comes in.

#### Make the schedule work for you

Your role is to make sure _someone_ is available to respond to emergencies during the week you are scheduled. Flexibility is possible -- you can split work with others, or schedule overrides for a few hours or days. **You don't have to change vacation plans, or be at your desk all week!** It's OK to take a walk outside, if you have your phone and reception. This way you can acknowledge the page, and locate someone to help (using Slack).

If you prefer to work with a colleague as a secondary, discuss with team members or your manager and find partners who like sharing the role. You can work together during the week, and update PagerDuty as you wish (options include: split days into mornings and evenings, take alternate days, work as a primary and secondary). Your manager can play an active role in helping pair people who want to work like this.

**TIP:** In Google Calendar, add Busy entries for the days/items you are on-call. Because your Google Calendar is [linked to Calendly](/handbook/support/workflows/calendly.html) for [Customer Calls](/handbook/support/workflows/customer_calls.html), Busy entries ensure you will not receive round-robin calls during your on-call shift.

#### Swapping on-call duty

To swap on-call duty with a colleague:

- Check with your team, see who has availability, and get confirmation from the person willing to cover you. Generally, it's best to ask for help as far in advance as possible.
- If you're unable to find coverage, alert your manager.
- To swap an on-call shift, or temporarily replace someone, create an override on the main schedule in PagerDuty.
    1. Open the [correct schedule](https://gitlab.pagerduty.com/schedules) in PagerDuty.
    1. Click on the relevant block of time in PagerDuty.
    1. Select "override" and fill in the name of the person you are swapping with.

See [the PagerDuty documentation](https://support.pagerduty.com/docs/editing-schedules#create-and-delete-overrides) for complete steps.

### Starting on-call

Before your shift starts, _always_ double-check that your alerts are working. Send a test page to make sure that you are receiving alerts correctly.

When your on-call shift starts, you should get notification(s) that your shift is starting (email or text, depending on your PagerDuty preferences).

### Responding to PagerDuty alerts

1. When an emergency is triggered, you will receive an alert from PD. This could be a text, phone call, email, Slack message, or a combination of those (depending on your PagerDuty notification preferences).
1. Acknowledge the alert in PagerDuty or Slack. This means that you received the emergency page, and are starting the response process.
1. **OPTIONAL:** Create a new Issue using the [Emergency Runbook Issue Template](https://gitlab.com/gitlab-com/support/emergency-runbook/-/issues/new), to guide you through the emergency response process for Customer Emergency tickets.
1. Open the Zendesk ticket.
    1. Most PagerDuty notification formats provide a direct link to the ticket.
    1. Alternatively, use Zendesk search with the term `priority: urgent` to find the ticket.
1. If you are simultaneously on an [FRT or SLA Hawk shift](/handbook/support/workflows/meeting-service-level-objectives.html), ask in Slack for someone to takeover those duties.
1. Create a Public Comment in the ticket acknowledging the emergency; offer a Zoom call to the customer.
1. Only Resolve the PagerDuty alert _after_ you have contacted the customer. This means that you are actively handling the emergency now and will see it through.
1. Start a thread in `#support_self-managed` with the ticket link. _"Thread for emergency ticket LINK HERE"_.
1. **OPTIONAL:** Consult our [definitions of support impact](/support/#definitions-of-support-impact) and evaluate the customer's problem statement against the "Emergency" definition there. Even if you don't think that this qualifies as an emergency, follow the guidance given in the [Assume Good Intent](#assume-good-intent) section.
1. After 30 minutes, if the customer has not responded to our initial contact with them, let them know that the emergency ticket will be closed and that you are opening a normal priority ticket on their behalf. Also let them know that they are welcome to open a new emergency ticket if necessary.

**NOTE:** If you need to reach the current on-call engineer and they're not accessible on Slack (e.g., it's a weekend, or the end of a shift), you can [manually trigger a PagerDuty incident](https://support.pagerduty.com/docs/incidents#section-manually-trigger-an-incident) to get their attention, selecting **Customer Support** as the Impacted Service and assigning it to the relevant Support Engineer.

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

### What to do if you don't know what to do

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

### Post-call

Before ending an emergency customer call, let the customer know what to do if there is any follow-up, and who will be available if any follow-up is required.

For example:

> It seems like we've solved the root problem here, but if you need any help I'll be on-call for the next two hours. Feel free to **open a new emergency ticket** and I'll get back on a call with you right away. If it's after two hours, my colleague Francesca will be responding. I'll make sure that she has the background of the situation before I leave for the day.

When the call has ended:

1. Write post-call notes relevant to the customer in a public reply on the ticket.
1. Add all relevant internal-only information as an internal note on the ticket.
1. Tag the next on-call engineer in the emergency's Slack thread.

## GitLab.com Emergencies

Starting Sept 2020, we're beginning to trial GitLab.com emergency support with a small number of customers. The initial workflow for these calls is the same as with self-managed emergencies.
However, you have additional visibility into problems that a customer may be facing that they will not.

Review:

- [Using Kibana](/handbook/support/workflows/kibana.html) - explore GitLab.com log files to find the errors customers are encountering.
- [Using Sentry](/handbook/support/workflows/sentry.html) - get access to the full stacktrace of errors a customer might encounter.

During this trial period, please page the manager on-call using `/pd-support-manager` for any GitLab.com emergencies so they can offer additional support.

After you have identified the error and found reproduction steps, it's likely that you'll need to [declare an incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack)
and coordinate with incident management team to reach resolution. If the error is a result of a product defect, you may also need to engage the [InfraDev Escalation Process](/handbook/engineering/development/processes/Infra-Dev-Escalation/).

We're expecting, broadly that emergencies will fall into one of three categories:

- **broken functionality due to a regression being pushed to GitLab.com** => reproduce, identify, escalate to have a patch created and deployed.
- **broken functionality due to an inconsistency in data unique to the customer**, for example: a group name used to be able to have special characters in it, and now something broke because our group name has a special character in it. => reproduce, identify, escalate to have the specific data corrected (and create a bug report so our code is better)
- **GitLab.com access or "performance" degradation to the level of unusability**, for example: no access in a geographical area, CI jobs aren't being dispatched => This is the hardest class, but will generally be operational emergencies. Success here means making sure it's not actually one of the top two before [declaring an incident](/handbook/engineering/infrastructure/incident-management/#report-an-incident-via-slack)

## Expectations for Support Manager On-call

Support Managers also have an on-call rotation. The support manager on-call is responsible for the below:

### Customer emergency pages and other incidents

- Act as an escalation point for missed customer emergency pages.
- Find staff to help with [multiple emergencies](#handling-multiple-simultaneous-emergencies).
- Act as a notification point for [security incidents](/handbook/engineering/security/security-incident-communication-plan.html#extended-team-roles-responsibilities-and-points-of-contact).

### Escalations, requests and questions in #support_escalations _(business days only)_

- Triage and investigate tickets that are escalated in `#support_escalations` to understand the scope of the request.
     - After initial triage of a new escalation in `#support_escalations`, if the determined action to take needs input and help from engineers, initiate a new thread in `#support_gitlab-com`, `#support_self-managed` or `#support_licensing-subscription`. Loop in relevant engineers (support and/or dev) or groups there and let the person who raised the escalation in `#support_escalations` know that all technical ticket-related discussion will happen in the new thread. This helps avoid engineers being looped into multiple threads and channels, and helps keep the technical discussion in one place.
- Provide ownership and assignment for tickets that are escalated in `#support_escalations`; [Support Team Skills by Subject](https://gitlab-com.gitlab.io/support/team/skills-by-subject.html) can be used to find an appropriate engineer to work the ticket.
- Inform those who have posted an escalation request in `#support_self-managed` or `#support_dot-com` to post their escalation request instead in `#support_escalations`. Do this by responding to their request with only the :escalate: emoji, which will send an automated and anonymous reply describing the correct process.
- Coordinate [live upgrade assistance](https://about.gitlab.com/support/scheduling-live-upgrade-assistance.html) requests.

If you will be unable to handle on-call for a few hours on a weekday due to being engaged in a customer call or otherwise, arrange for another manager to handle on-call responsibilities temporarily by:

    1. asking a specific manager to cover, and then if necessary,
    1. posting a request in `#spt_managers` for any manager to volunteer to cover if the specific request goes unanswered.

To swap your on-call duty with someone, follow the steps listed under [Swapping on-call duty](/handbook/support/on-call/#paging-the-on-call-manager).

### Seeing which manager is on-call

To see who the current manager on-call is you can:

- use ChatOps to query the on-call schedule with `/chatops run oncall manager`
- log in to PagerDuty view the [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR)
- View the individual on-call schedules for
    - [Support Manager - AMER](https://gitlab.pagerduty.com/schedules/PTI56V1)
    - [Support Manager - APAC](https://gitlab.pagerduty.com/schedules/PWBXTYX)
    - [Support Manager - EMEA](https://gitlab.pagerduty.com/schedules/PXQ2ZAZ)
- Ask in `#spt_managers` (where you may or may not be referred to the above steps!)

### Paging the on-call manager

- First, try pinging the on-call manager by name in Slack.
- If it's important and urgent, you can:
    - Use the `/pd-support-manager` command to page the on-call manager
    - Manually create a new incident from the [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR)

### Resolving issues as the support manager on-call
We currently consider :green_check_mark: in slack on the original slack request as a signal that the escalation has been resolved.

## Mobile phone service and data reimbursement

We want to minimize the affect of on-call duty on your life. One way we do that is by offsetting any impact on your personal expenses.

You may expense the cost of your mobile phone service for the month when you begin your on-call rotation. This is limited to **your** service cost itself, not any costs relating to the phone device, to a personal hotspot device or to services for other people on your phone plan.

We understand you may have plans outside of your normal workspace while you're on-call. If as a result you **need** to use your phone to provide internet service to your computer, then you may include additional data charges in your expense report.

## US Federal on-call

[US Federal](/handbook/support/support-ops/processes/us-federal-zendesk.html) on-call support is provided 7 days a week between the hours of 0600 and 1800 Pacific Time.

The current on-call schedule can be viewed in [PagerDuty](https://gitlab.pagerduty.com/schedules#P89ZYHZ)(Internal Link), or in the [Support Team on-call page](https://gitlab-com.gitlab.io/support/team/oncall.html)(Public Link). The schedule is currently split into two, 6 hour shifts, an AM and a PM shift. The AM shift starts at 0600 Pacific Time and runs until 1200 Pacific Time. The PM shift starts at 1200 Pacific Time and runs until 1800 Pacific Time.
