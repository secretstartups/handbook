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

When you get an alert, you should immediately start a Slack thread and take notes within. Tag the Technical Account Manager (TAM) - something like "cc @user" is good enough - if the customer has one. This creates visibility around the situation and opens the door to let the team join in.

Good notes in Slack will help people follow along and will help you with your follow-up email after the call.

Try to communicate complete ideas rather than snippets of thought. Something like "that's not good" as a response to something happening within the call isn't as helpful as "their gitaly timings are really high".

Take and share screenshots of useful info the customer is showing you. Make sure you're not sharing anything sensitive. Let the customer know that you're doing that. "Could you pause there? I'm gonna screenshot this little bit and share it with my team".

### Assume good intent

If the problem stated in the emergency ticket doesn't meet the
[definition of an emergency support impact](/support/#definitions-of-support-impact),
inform the customer's technical account manager (if they have one) or a support manager.
Unless they ask you to do otherwise, however, continue to treat the ticket
with the [emergency SLA](/support/#priority-support).

We like to assume good intent by the customer. Even though we may not
think a particular ticket qualifies for [emergency
support](/support/#priority-support), we'll treat all
emergency pages from customers with priority support as if they qualify. During any crisis, the customer may be incredibly
stressed and have immense pressure on them. We should be helpful when we can
and, if we've determined that their ticket didn't qualify as an emergency, then after the call
the customer's technical account manager or a support manager can discuss that
with them.

### Ask for help when needed

Rest assured that escalation is okay, and that other GitLab team members are happy to help. The care of the customers is a shared responsibility. Tag the support team if you haven't started getting help in your Slack thread. Tag the support managers if you need to escalate further.

If another support engineer joins your emergency call, feel free to assign them a role to divide up the labor. 

> So and so would you please (take notes, reach out to this product team and ask for help, look up the code for this and see what you can find)?

### Take care of yourself

Make an effort to actively de-stress during your on-call shift. After being on-call you should consider taking time off, as noted in the [main handbook](/handbook/paid-time-off). Being available for issues and outages will wear on you even if there were no pages. Resting is critical for proper functioning. Just let your team know.

When you're in a call, don't feel too much pressure to have _immediate_ answers. You're allowed to pause for a few minutes for researching, asking for help, etc. A five minute reply is still much better than waiting for SLA email replies. Make sure to communicate and let the customer know what you're doing. Example: "I'm gonna take a few minutes to work through the code here and make sense of it".

### Create issue in [Emergency Runbook](https://gitlab.com/gitlab-com/support/emergency-runbook/-/issues/new)

We have a project called [Emergency Runbook](https://gitlab.com/gitlab-com/support/emergency-runbook/) where you can use the issue template to help you handle Customer Emergency tickets.
Creating an issue and following the template can help you and other Support Engineers keep track of steps that you already did to pinpoint the problem.

## How it works

### Schedule

We do 7 days of 8-hour shifts in a follow-the-sun style, based on your location.

You can view the [schedule](https://gitlab.pagerduty.com/schedules#PIQ317K) and the [escalation policy](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH) on PagerDuty. You can also opt to [subscribe to your on-call schedule](https://support.pagerduty.com/docs/schedules-in-apps#section-export-only-your-on-call-shifts), which is updated daily.

#### Your first on-call

For new team members approaching their first on-call schedule, the Support onboarding issue already includes a section suggesting that you shadow a current on-call period to gain familiarity with the process. After completing this, consider your preferred approach to on-call and discuss with your manager how you feel about it and if you'd like to work with a partner during on-call weeks. For the first week we recommend asking your Onboarding Buddy to be available as a secondary to help if an emergency comes in.

#### Make the schedule work for you (working with a partner)

Your role is to make sure someone is available to respond to emergencies during the week you are scheduled. You should make this work for you by working with others, scheduling overrides etc. **You don't have to be at your desk all week!** It's OK to take a walk outside if you have your phone and reception. This way you can acknowledge the page and locate someone to help in Slack via your phone.

If you prefer to work with someone as a secondary, discuss with team members or your manager and find partners who like sharing the role. You can then work together during the week and update PagerDuty as you wish (e.g. split days into mornings and evenings, take alternate days, work as a primary and secondary etc). Your manager can play an active role in helping pair people who want to work like this.

Additionally, block your calendar for the week you are on-call. This is needed as it is possible that you will get [customer call](/handbook/support/workflows/customer_calls.html) scheduled for the same week you're on-call and that can lead to the situation where you are in the call with one customer and different customer creates emergency ticket at the same time.

#### Swapping On-Call Duty

To swap on-call duty with a fellow support engineer:

* First you should check with your team, see who has availability, and get confirmation from somebody that they're okay with covering for you. Generally, more advanced notice is better.
* If you're unable to find coverage by the end of your shift, alert your manager.
* To swap an on-call shift or temporarily replace someone input this as an override on the main schedule in PagerDuty.
  This is done by clicking on the relevant block of time in PagerDuty, selecting "override" and
  filling in the name of the person you swapped with. Also see [this article](https://support.pagerduty.com/hc/en-us/articles/202830170-Creating-and-Deleting-Overrides) for reference.

### Starting on-call

Please double-check that your alerts are working. You can send a test page to make sure that you're being alerted appropriately.

When your on-call shift starts, you should get some sort of notification(s) that your shift is starting.

### PagerDuty Alerts

1. When an emergency is triggered, you'll receive an alert from PD. This will probably be a text, phone call, email, Slack message, and/or boot to the head (depending on your notification preferences).
1. Typically, you will have a direct link to the ticket in Slack or through the PD Incident. Alternatively, you can use Zendesk search with the term `priority: urgent` to find the ticket.
1. Acknowledge the alert in PagerDuty or Slack. This means that you are handling the emergency and are starting to look into it. After 10 minutes, if the alert has not been acknowledged, _everyone_ on the customer on-call rotation is alerted. After a further 5 minutes, management is alerted.
1. If you're currently an FRT Hawk, ask your team for someone to takeover your duties.
1. Refer to our [definitions of support impact](/support/#definitions-of-support-impact) and evaluate the customer's problem statement against the "Emergency" definition there. If you don't think that this qualifies as an emergency, follow the guidance given in the [Assume Good Intent](#assume-good-intent) section.
1. Reply to the customer and offer a Zoom call.
1. Click "resolve" after you've replied to the customer. This means that you are actively handling the emergency now and will see it through.
1. Start a thread in `#support_self-managed` with the ticket link. _"Thread for emergency ticket LINK HERE"_.

1. After 30 minutes, if the customer has not responded to our initial contact with them, let them know that the emergency ticket will be closed and that you are opening a normal priority ticket on their behalf. Also let them know that they are welcome to open a new emergency ticket if necessary.

- If you need to reach the current on-call engineer and they're not accessible on Slack (e.g. it's a weekend, or the end of a shift), you can [manually trigger a PagerDuty incident](https://support.pagerduty.com/docs/incidents#section-manually-trigger-an-incident) to get their attention, selecting **Customer Support** as the Impacted Service and assigning it to the relevant Support Engineer.

### Taking a call
Taking a call isn't significantly different from a normal call outside of two unique points:
- You (likely) won't have any forewarning about the subject of the call
- The desired end state is a functioning system

It's recommended to find someone from the Support team to join the call with you. A second person on the call can take notes, search for solutions and raise additional help in Slack. They can also help you confirm ideas that you can discuss in Slack.

During the call, try to establish a rapport with the customer; empathizing with the situation and setting a communicative tone.

As early as possible, determine your options. In some cases, the best option may be rolling back a change or upgrade. The best
option may also involve losing production data. If either of those is the case, it's okay to ask the customer if they see
any other options before executing on that plan.

### What to do if you don't know what to do

First, remember that as the on-call engineer you're playing the role of incident manager. You're not expected to have all the answers personally.

Your job is to coordinate the emergency response. That could mean:
- directing the customer to take specific actions
- finding relevant documentation or doing other research into the problem
- identifying a known bug or regression and providing a workaround
- analyzing log data

It could _equally_ mean:
- identifying other experts on the Support team to help do the above
- reaching out to development teams to find a subject matter expert (SME)
- suggesting that the customer reach out to additional experts on their side (*e.g.* if the problem is slow storage, you might suggest getting someone from their storage team)

When you're not sure what to do, you might also be unsure what to say. Here are some phrases that might help:
- *I'm working on finding someone who has more experience in this area.*
- *Please give me a few minutes to check the documentation on that.*
- *I'm doing some research to find the answer to that; please give me a few minutes.*
- *What have you done up until now to try to resolve this?*
- *I don't know the answer just yet, but I'm here for you and I will use all the resources at my disposal to get this resolved.*


If you're stuck and are having difficulty finding help, please page the [manager on-call](#manager-on-call) or initiate the [dev-escalation process](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#escalation-process).

### Post-call
Before getting off the call, make sure that you let the customer know what to do if there is any follow-up and who will be available
if any follow-up is required.

For example:
> It seems like we've solved the root problem here, but if you need any help I'll be on-call for the next two hours. Feel free to 
**open a new emergency ticket** and I'll get back on a call with you right away. If it's after that, it's Francesca who will be responding.
I'll make sure that she has the background of the situation before I leave for the day. 

Once the call has ended, make sure you write up post-call notes relevant to the customer in a public reply, any internal notes as an internal notes on the ticket and note that you did so when you tag the next on-call engineer in the relevant Slack thread.

## Manager On-call
Support Managers also have an on-call rotation. During their rotation, managers will:
- act as an escalation point for missed emergency pages
- provide ownership and assignment for tickets that are escalated in `#support_managers`. 
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
- If it's important, but not urgent simply ping the on-call manager on Slack.
- If it's important and urgent, you can:
   - Use the `/pd-support-manager` command to page the on-call manager
   - Create a new incident from the [Support Managers Service](https://gitlab.pagerduty.com/services/PTFI8XR) if you have PagerDuty access

## Mobile Phone Service and Data Reimbursement
We want to minimize the affect of on-call duty on your life. One way we do that
is by offsetting any impact on your personal expenses.

You may expense the cost of your mobile phone service for the month when you
begin your on-call rotation. This is limited to **your** service cost itself,
not any costs relating to the phone device, to a personal hotspot device or to
services for other people on your phone plan.

We understand you may have plans outside of your normal workspace while you're
on-call. If as a result you **need** to use your phone to provide internet service
to your computer, then you may include additional data charges in your expense report.

## US Federal On-Call

US Federal on-call support is provided 7 days a week between the hours of 1:00PM and 1:00AM UTC time.

Currently, there are five Support Engineers working an on-call rotation consisting of 6 hour shifts,
7 days a week, one week on, two weeks off, one week on, one week off, alternating mornings and evenings.

For example:

| Week - Shift | Support Engineer |
|---|---|
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
