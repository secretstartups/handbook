---
layout: handbook-page-toc
title: Meeting Service Level Objectives (Ticket SLAs)
description: "Meeting Support SLAs with the First Response and Service Level Agreement Hawk roles"
category: Handling tickets
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

The Support team currently have two rotating roles to help ensure tickets get replies within the [Service Level Agreement](https://about.gitlab.com/support/#gitlab-support-service-levels) we have with our customers.

1. [First Response Time Hawk](#first-response-time-hawk)
1. [SLA Hawk](#sla-hawk)

## First Response Time Hawk

### What is a First Response Time Hawk?

This is a rotating role, where someone is "on point" weekly (Monday to Friday), to make sure:

1. new Support tickets get a first response as soon as possible and do not breach
1. all new tickets are appropriately categorized and prioritized as they arrive

First Response Time Hawks directly drive achievement in our [Service Level Agreement KPI](/handbook/support/performance-indicators/#service-level-agreement-sla).

### FRT Hawk in Action

1. Every Week on Fridays, Managers will add a **F**irst **R**esponse **T**ime Hawk for each region to the Support Week in Review to announce who will be responsible that week.
1. If you are FRT Hawk, you are responsible for:
    1. Helping facilitate first replies within SLA times for *new* tickets from 9am - 5pm in your time zone
       - **Note:** if you are a US Citizen and have access to the Federal instance, this should also be a part of your rotation.
    2. [Triaging tickets](/handbook/support/workflows/ticket_triage.html) to make sure they have:
      * The correct ticket form (such as GitLab.com, if they're asking for GitLab.com support). Take special notice of tickets with form `Other Request`. This is usually because the ticket was created by email. **Note that a form change results in an auto-reply for tickets that don't have an org associated yet. Hence, it is recommended to first associate the user with an appropriate org and then change the form to the most relevant form type and fill in additional metadata where possible**.
      * [An associated organization](/handbook/support/workflows/associating_needs_org_tickets_with_orgs.html)
      * [The correct priority](/handbook/support/workflows/setting_ticket_priority.html#setting-ticket-priority)
      * The correct **Problem Type** selected
2. [Keep an eye on the FRTH View in ZenDesk](https://gitlab.zendesk.com/agent/filters/360038124359)
3. Ask your Support team mates for help if volume is high, or you are stumped.
4. You should expect to see new and different things that you are not an expert in. Where possible, take the time to dive deep and try and understand the problem.

### Things for an FRT Hawk to be mindful of

1. Given that there's a FRT Hawk _per region_, your shift will overlap with another hawk.
    * This means you have a teammate within a team; yay! Be sure to communicate with your fellow hawk so you can help each other out in case one of you is stuck on a ticket, and also to make sure you're not
    both quietly working on the same ticket
2. Your focus should be facilitating replies for tickets in the First Response Hawk queue and [associating needs-org tickets with the appropriate organization](associating_needs_org_tickets_with_orgs.html).
3. You might not cover all the tickets you wanted to cover on your shift, and that's okay
   * Just do your best
   * Take a break if you need one - making sure your team knows you're stepping away by posting in `#support_team_chat`
   * Ask the rest of the team for help when needed in `#support_self-managed`
4. You may see tickets requesting information that is not in the realm of support. For example, you may get a ticket from a job applicant to GitLab requesting information on their application. In these cases, do your best to direct them to an appropriate contact and close the support ticket. In the case of hiring questions, you can ping the #recruiting channel in Slack to inform them that the candidate reached out, and update the candidate via the ticket.
   * There is a macro called `General::Job Application Questions` for hiring-specific questions in Zendesk.
   * For other common requests, see the [Triaging tickets](/handbook/support/workflows/ticket_triage.html#other-requests) page.

### FRT Dashboards

You can track your progress and see global results on this [Zendesk Explore Dashboard](https://gitlab.zendesk.com/explore/dashboard/36925DBD1F5E3C7BA541DB38D11AC51E0EAAFDD30DCB63FDE83CF1389E555D96/tab/10602202)

## SLA Hawk

### What is the SLA Hawk role?

The SLA Hawk is a rotating role that you will carry out for one week at a time (Monday to Friday). You can [view the rotations in PagerDuty](https://gitlab.pagerduty.com/schedules#?query=sla%20hawk)

The SLA Hawk is responsible for ensuring that action is taken on the 'most breached' and 'next to breach' tickets in order to meet our SLAs and so that difficult tickets are not ignored. **NOTE:** It is the responsibility of all Support team members to ensure customer tickets are responded to within our SLA times. The SLA Hawk is **not expected to reply to tickets themselves - your job is to find team members to help get a reply out (see below for more info)**

The SLA Hawk should also perform a queue tidy up:

* Ensure tickets are in correct queue
* Tickets have the correct Priority
* Tickets have the correct self-managed problem type
* The Customer has a Support Contract
* Solve the ticket if the support request is solved

SLA Hawks drive achievement via our KPIs for [Service Level Agreement KPI](/handbook/support/performance-indicators/#service-level-agreement-sla) and [Customer Satisfaction](/handbook/support/performance-indicators/#support-satisfaction-ssat) by making sure our customers are updated in a timely manner.

### SLA Hawk in Action

1. Each day, sort the Zendesk view for [SM with SLA](https://gitlab.zendesk.com/agent/filters/360038124139) by '*Next SLA Breach*' ascending, starting with most breached ticket first.
2. Read the ticket yourself and if you feel you know what the next action is, do that (e.g. ask the customer for more information, solve the ticket if the issue is resolved, send your own reply if you have a great idea). There's no need to spend too long at this stage - 10 minutes at most. If the next action requires more work move on to the next step.
3. If you feel the priority does not match our [Definitions of Support Impact](/support/#definitions-of-support-impact) reach out to the customer and agree on the new priority. Use the macro [General::Changed priority](https://gitlab.zendesk.com/agent/admin/macros/360093631494).
4. If a ticket **has an assignee**:
   1. If the assignee is in your Region, link the ticket in `#support-self-managed` and ping them asking if they are able to take a look. We've adopted a convention of prefixing your message in Slack with `[SLAH]` so that folks know you're currently in that role.
   1. If the assignee is from another Region and it's during their “office hours” ask them if they could take a look.
   1. If the assignee is offline and the ticket/customer needs an update, follow the **has no assignee** process below.
   1. If assignee can’t currently work the ticket ask them to follow the Process in action for [Working on Tickets](#the-process-in-action-2).
5. If a ticket **has no assignee**, or **assignee is offline**:
   1. Check to see if an engineer from your region has previously responded on the ticket, if so, ask them would they have the bandwidth to take the ticket.
   2. If the ticket is about a problem with a specific feature or specialized area of GitLab, reach out to any subject matter experts or stable counterparts in your region to see if they can assist in getting a reply out.
   3. If you can't locate a specific teammate to get a reply, let your regional team know (e.g. `@support-team-<region>` ) about the ticket. Once you have one or two volunteers, let the team know the ticket is taken care of via the thread.
   4. If you’re not getting any traction, and you feel you need help, ping your manager to let them know that noone is available to help.
   5. Once someone has taken ownership of the ticket, ask them if they're happy to assign it to themselves.
   6. If there are no imminent breaches (e.g. less than 2 to 4 hours) in the 'SM with SLA' queue - work on Needs Org & Triage and My Assigned Tickets queues.

   ```mermaid
   graph TD
   A[Sort 'Premium and Ultimate view by <br> 'Next SLA Breach'] -->
   B(Open the <br> top ticket)
   B --> C{Can you reply <br> to the ticket?}
   C -->|Yes| D[Send <br> reply] --> H
   C -->|No| E[Ask for help in Slack <br> and link the ticket]
   E -->|Help received| F[Send <br> reply] --> H
   E -->|No help received| G[Mention your manager in Slack <br> on the ticket thread] --> H[Go to the next ticket <br> - if no imminent breaches - <br> go to 'Starter and Free' view] --> B
   ```

### Team Responsibilities for the SLA Hawk

* Help the SLA Hawk! If they ask you for help, please acknowledge (You may not be able to help, just let them know).
* Follow the [Support Modes of Work](#the-process-in-action-2) for the tickets in your own queue (including finding another engineer to help or takeover the ticket).
* When looking for your next ticket, follow the [same process](#the-process-in-action-1) as the SLA Hawk above (most breached ticket first).
* If you take a next response ticket and the ticket doesn’t have an assignee, assign yourself to the ticket.

### FAQ about SLA Hawk role

1. **Do I need to do the SLA Hawk role all day every day?** The role is not to work the tickets yourself but rather find an engineer to respond to the ticket. You probably only need to check for breached and breaching tickets 3 or 4 times per day, which fits in with our asynchronous working environment while ensuring that synchronous customer interaction is still maintained. This should make the role light-weight. Between ticket checkins, you can continue with your planned day.
1. **I feel uncomfortable asking someone else to reply to a ticket** We recommend prefixing your message in Slack with `[SLAH]`, this lets people know that you've been given the role to find people to help. We assume positive intent and the team knows that this is the job of the SLA Hawk.
1. **What do I do if the ticket assignee is on PTO?** It can happen that you come across the ticket that is about to breach and which has the assignee that is on PTO (e.g. you get a message from PTO by Roots after you ping them in the thread). In that case, consider letting the customer know that the person who worked with them so far is on PTO (make the judgment if this is appropriate in your situation) and asking them whether they would like for their ticket to get the new assignee or they would like to wait for the original assignee to come back from PTO to continue working with them. If this is not appropriate, continue with the SLA Hawk workflow without relying on the current assignee (e.g. ask the help from the team or send a next response about their issue if you are able to). Either way, remind the person about [support guidelines for taking time off](../support-time-off.html).
1. **It's my first time as SLA Hawk, any suggestions?**
   - This role feels harder than it really is when you're anticipating it - once you actually do it, you'll be surprised! You'll learn so much and gain confidence in handling any type of ticket.
   - The hawk is the manager of the queues, not the responder to the tickets - if you suspect that getting involved and sending a reply will take more than 15m, try to delegate getting a reply out to someone else (assignee, cc:. recent replier, or subject matter expert).
   - Your best is good enough! Realistically, you're unlikely to stop every ticket from breaching - if you’ve stopped even a handful then you’ve done a great job, that’s 2 or 3 fewer breaches that day.
   - Clear down the easy replies first - `That's great, I'll mark the ticket solved.` and so on. It improves the signal:noise ratio and someone has to write that reply.
   - Look after yourself.  Set a timer to remember to take breaks and eat. The hawk roles are easy to get into a groove and forget to get up all day. Go outside, take a breather, then come back. See the first point in the FAQ as well. 
   - You're not alone. You have a full team with you! Re-read the [SLA Hawk in action](#sla-hawk-in-action) section above - particularly points 4 & 5, and related...
   - Don't be tempted to take ownership of tickets.  You will most likely NOT get to them later!
   - If there's a wave of soon to breach tickets rolling down the queue, ping the team so they know.
   - Remember your manager is there to support you - reach out to them (or other support managers).
   - Communicate/share feedback on your experience with the workflow in an issue or with support managers.

### SLA Hawk Dashboards

You can see how we're doing on [this Zendesk Explore Dashboard](https://gitlab.zendesk.com/explore/dashboard/36925DBD1F5E3C7BA541DB38D11AC51E0EAAFDD30DCB63FDE83CF1389E555D96/tab/10602202).

Look a the 'Self Managed NRT SLA achieved charts' for this week and last week. We're aiming for 85% achievement. If we can get to 95% that would be awesome! The 'this week' chart updates hourly.
