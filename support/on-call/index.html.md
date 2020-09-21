---
layout: handbook-page-toc
title: GitLab Support On-Call Guide
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

For the customers that have [Priority Support](/support/#priority-support), the Support Engineering Team is on-call and available to assist with emergencies. What constitutes an emergency is defined in our [definitions of support impact](/support/#definitions-of-support-impact).

We take on-call seriously. There are [escalation policies](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH) in place so that if a first responder does not respond fast enough another team member or members is/are alerted. Such policies aren't expected to ever be triggered, but they cover extreme and unforeseeable circumstances.

## Expectations for on-call

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

You can view the [Customer Emergencies schedule](https://gitlab.pagerduty.com/schedules#PIQ317K) and the [escalation policy](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH) on PagerDuty. You can also opt to [subscribe to your on-call schedule](https://support.pagerduty.com/docs/schedules-in-apps#section-export-only-your-on-call-shifts), which is updated daily.

#### Your first on-call shift

For new team members approaching their first on-call shift, your [Support onboarding issue](https://gitlab.com/gitlab-com/support/support-training/-/blob/master/.gitlab/issue_templates/New-Support-Team-Member-Start-Here.md) includes a section suggesting that you shadow a current on-call to gain familiarity with the process. After completing your shadow shift, consider your preferred approach to on-call; discuss with your manager how you feel about it, and if you'd like to work with a partner during on-call weeks. For the first week we recommend asking your Onboarding Buddy to be available as a secondary to help if an emergency comes in.

#### Make the schedule work for you

Your role is to make sure _someone_ is available to respond to emergencies during the week you are scheduled. Flexibility is possible -- you can split work with others, or schedule overrides for a few hours or days. **You don't have to change vacation plans, or be at your desk all week!** It's OK to take a walk outside, if you have your phone and reception. This way you can acknowledge the page, and locate someone to help (using Slack).

If you prefer to work with a colleague as a secondary, discuss with team members or your manager and find partners who like sharing the role. You can work together during the week, and update PagerDuty as you wish (options include: split days into mornings and evenings, take alternate days, work as a primary and secondary). Your manager can play an active role in helping pair people who want to work like this.

**TIP:** In Google Calendar, add Busy entries for the days/items you are on-call. Because your Google Calendar is [linked to Calendly](/handbook/support/workflows/calendly.html) for [Customer Calls](/handbook/support/workflows/customer_calls.html), Busy entries ensure you will not receive round-robin calls during your on-call shift. 

#### Swapping on-call duty

To swap on-call duty with a colleague:

* Check with your team, see who has availability, and get confirmation from the person willing to cover you. Generally, it's best to ask for help as far in advance as possible.
* If you're unable to find coverage, alert your manager.
* To swap an on-call shift, or temporarily replace someone, create an override on the main schedule in PagerDuty.
   1. Open the [correct schedule](https://gitlab.pagerduty.com/schedules) in PagerDuty.
   1. Click on the relevant block of time in PagerDuty.
   1. Select "override" and fill in the name of the person you are swapping with.
   
See [the PagerDuty documentation](https://support.pagerduty.com/docs/editing-schedules#create-and-delete-overrides) for complete steps.

### Starting on-call

Before your shift starts, _always_ double-check that your alerts are working. Send a test page to make sure that you are receiving alerts correctly.

When your on-call shift starts, you should get notification(s) that your shift is starting (email or text, depending on your PagerDuty preferences).

### Responding to PagerDuty alerts

1. When an emergency is triggered, you receive an alert from PD. This could be a text, phone call, email, and/or Slack message (depending on your PagerDuty notification preferences).
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

In rare cases, the on-call engineer may experience concurrent emergencies triggered by seperate customers. When this happens, please remember that you are not alone; follow these steps to ensure proper engagement and resolution of each emergency:

1. [Contact the on-call Support Manager](/handbook/support/on-call/#paging-the-on-call-manager) to inform them of the new incoming emergency. The Support Manager is responsible for finding an engineer to own the new emergency page.
1. _Support Manager:_ In Slack, ping the regional support group (i.e. `@support-team-americas`) and request assistance from anyone who has free cycles to assist with the new incoming emergency case.
1. When an engineer for the new emergency has been found, they are responsible for acknowledging/resolving the emergency page; this shows that they are assisting the customer with the case.

### Taking an emergency customer call

Taking an emergency call isn't significantly different from a normal call outside of two unique points:
- You (likely) won't have much forewarning about the subject of the call
- The desired end state is a functioning system

Try to find someone from the Support team to join the call with you. A second person on the call can take notes, search for solutions, and raise additional help in Slack. They can also help you confirm ideas that you can discuss in Slack.

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

When you're not sure what to do, you might also be unsure what to say. Here are some phrases that might help:
- *What have you done up until now to try to resolve this?*
- *Please give me a few minutes to check the documentation on that.*
- *I'm doing some research to find the answer to that; please give me a few minutes.*
- *I'm working on finding someone who has specific expertise in this area.*
- *I don't know the answer just yet, but I'm here for you and I will use all the resources at my disposal to get this resolved.*

If you're stuck _and_ are having difficulty finding help, contact the [manager on-call](#manager-on-call) or initiate the [dev-escalation process](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#escalation-process).

### Post-call
Before ending an emergency customer call, make sure that you let the customer know what to do if there is any follow-up, and who will be available if any follow-up is required.

For example:
> It seems like we've solved the root problem here, but if you need any help I'll be on-call for the next two hours. Feel free to **open a new emergency ticket** and I'll get back on a call with you right away. If it's after two hours, my colleague Francesca will be responding. I'll make sure that she has the background of the situation before I leave for the day. 

When the call has ended:
1. Write post-call notes relevant to the customer in a public reply on the ticket.
1. Add any internal notes as an internal note on the ticket.
1. Tag the next on-call engineer in the emergency's Slack thread.

## Support Manager on-call
Support Managers also have an on-call rotation. During their rotation, Support Managers:
- act as an escalation point for missed emergency pages
- find staff to work on emergencies during [multiple emergencies](#handling-multiple-simultaneous-emergencies) 
- provide ownership and assignment for tickets that get formally escalated in `#support_managers`. 
  [Support Team Knowledge areas](/handbook/support/workflows/knowledge_areas.html) can be used to find the right engineer to assign the escalation.
- Redirect escalations from `#support_self-managed` and `#support_dot-com` channels to `#support_managers`. 
- Act as a notification point for security incidents
- Coordinate [live upgrade assistance](https://about.gitlab.com/support/scheduling-live-upgrade-assistance.html) requests.

### Seeing which manager is on-call
To see who the current manager on-call is you can:
 - use ChatOps to query the on-call schedule with `/chatops run oncall manager`
 - log in to PagerDuty view the [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR)
 - View the individual on-call schedules for
    - [Support Manager - AMER](https://gitlab.pagerduty.com/schedules/PTI56V1)
    - [Support Manager - APAC](https://gitlab.pagerduty.com/schedules/PWBXTYX)
    - [Support Manager - EMEA](https://gitlab.pagerduty.com/schedules/PXQ2ZAZ)
 - Ask in `#support_managers` (where you may or may not be referred to the above steps!)

### Paging the on-call manager
- First, try pinging the on-call manager by name in Slack.
- If it's important and urgent, you can:
   - Use the `/pd-support-manager` command to page the on-call manager
   - Manually create a new incident from the [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR)

## Mobile phone service and data reimbursement
We want to minimize the affect of on-call duty on your life. One way we do that is by offsetting any impact on your personal expenses.

You may expense the cost of your mobile phone service for the month when you begin your on-call rotation. This is limited to **your** service cost itself, not any costs relating to the phone device, to a personal hotspot device or to services for other people on your phone plan.

We understand you may have plans outside of your normal workspace while you're on-call. If as a result you **need** to use your phone to provide internet service to your computer, then you may include additional data charges in your expense report.

## US Federal on-call

[US Federal](/handbook/support/support-ops/processes/us-federal-zendesk.html) on-call support is provided 7 days a week between the hours of 1:00PM and 1:00AM UTC time.

Currently, there are five Support Engineers working an on-call rotation consisting of 6 hour shifts, 7 days a week: one week on, two weeks off, one week on, one week off, alternating mornings and evenings.

For example:

| Week - Shift | Support Engineer |
| ------------ | ---------------- |
| 1 - AM | John |
| 1 - PM | Nathan |
| 2 - AM | Aric |
| 2 - PM | Harish |
| 3 - AM | Nathan |
| 3 - PM | David |
| 4 - AM | Harish |
| 4 - PM | John |
| 5 - AM | David |
| 5 - PM | Aric |
| 6 - AM | John |
| 6 - PM | Nathan |
