---
layout: handbook-page-toc
title: Meeting the FRT Service Level Agreement (SLA)
description: "Meeting FRT SLA"
category: Handling tickets
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Aim: 95% or better FRT SLA achievement

**Everyone in the Support team contributes every day to ensure tickets get first replies within the [Service Level Agreement](https://about.gitlab.com/support/#gitlab-support-service-levels)** we have with our customers.

Our goal is to reply to [at least 95% of new tickets within the ticket's SLA](https://about.gitlab.com/handbook/support/performance-indicators/#service-level-agreement-sla).

You can track your progress and see global results on this [Zendesk Explore Dashboard](https://gitlab.zendesk.com/explore/dashboard/36925DBD1F5E3C7BA541DB38D11AC51E0EAAFDD30DCB63FDE83CF1389E555D96/tab/10602202)

## How:

### Reply and assign 'new' tickets every day

On each working day, all Support Engineers reply and take ownership of 'new' tickets:

1. **Self-managed focus: 1 ticket per day, 2 tickets on one day per week (6 per week)**
1. **SaaS focus: 2 tickets per day (10 per week - includes SaaS account tickets)**
1. **L&R focus: 3 tickets per day (15 per week)**

These numbers are based on our current ticket volume, number of SEs and average PTO (15%). We will continue to monitor ticket volume and number of SEs to make sure the above guidelines are accurate. If everyone contributes on days they are available we will exceed the 95% target above.

### Find 'new' tickets from the `Needs Org / FRT` and `Handover Needed` views

'New' tickets you can take ownership of can be found in two views:

1. `Needs Org / FRT` (tickets needing a first reply)
1. `Handover Needed` (tickets needing an owner)

The priority is to prevent tickets breaching SLA in the `Needs Org / FRT` view.

The `Handover Needed` view has tickets that have already had a first reply but are not assigned. This happens when someone sends a first reply to prevent the ticket from breaching SLA, but doesn't assign as the preferred region is not theirs. We consider these tickets as 'new' (Zendesk status will say 'open') since they need an owner.

### Taking action in the `Needs Org / FRT` view

1. Choose a ticket at or near the top of the `Needs Org / FRT` view
1. Assign it to yourself (this takes it out of the view - see [Why assign first?](#why-assign-first))
1. Write your reply to the customer
1. Choose one of the following:
    1. If the preferred region is your region or 'all regions' submit as Pending.
    1. If the preferred region is neither your region nor 'all regions', use the [`Handover to Preferred Region`](#using-the-handover-to-preferred-region-macro)
    1. If you can't reply:
        1. try to collaborate first (see [Tips for sending first replies](#tips-for-sending-first-replies))
        1. leave an internal note describing your investigation
        1. put the ticket back in the FRT view by assigning it to `GitLab Support`

#### Why assign first?

The workflow calls for assigning a ticket first, then replying. This is to take the ticket out of the view and help avoid confusion with the 👁 presence indicator. You can always un-assign (see above) if you're unable to make the first reply after some investigation. If you do this, please be sure to leave an internal note describing your investigation and anything you found.

#### Using the `Handover to Preferred Region` macro

This macro will un-assign and prompt you to write an internal note summarizing next steps. When the customer replies the ticket will appear in the `Handover Needed` view.

### Taking action in the `Handover Needed` view

This is basically the same as above:

1. Choose a ticket at or near the top of the `Handover Needed` view with preferred region equal to your region
1. Assign it to yourself (this takes it out of the view - see [Why assign first?](#why-assign-first))
1. Write your reply to the customer
1. Choose one of the following:
    1. Submit as Pending.
    1. If you can't reply:
        1. try to collaborate first
        1. leave an internal note describing your investigation
        1. put the ticket back in the `Handover Needed` view by assigning it to `GitLab Suppport`

### How do I choose between `Needs Org / FRT` and `Handover Needed` view?

1. The top priority is to prevent tickets in the 'FRT' view from breaching SLA.
1. If there are no imminent breaches, pick a ticket from the view with the most tickets to keep things balanced.

### Taking action on 'Needs org' tickets (triaging)

Everyone is responsible for [Triaging tickets](/handbook/support/workflows/ticket_triage.html) to make sure they have:

1. The correct ticket form (such as GitLab.com, if they're asking for GitLab.com support).
1. [An associated organization](/handbook/support/workflows/associating_needs_org_tickets_with_orgs.html)
1. [The correct priority](/handbook/support/workflows/setting_ticket_priority.html#setting-ticket-priority)
1. The correct 'Problem Type'

A form change results in an auto-reply for tickets that don't have an org associated yet. Hence, it is recommended to first associate the user with an appropriate org. Then change the form to the most relevant form type and fill in additional metadata where possible.

### What does success look like?

1. We meet or exceed our 95% FRT SLA achievement target.
1. The `Needs Org / FRT` view ticket count stays in the single digits.
1. The `Handover Needed` view ticket count stays in the single digits.

### Tips for sending first replies

1. If the **ticket priority** does not match our [Definitions of Support Impact](/support/#definitions-of-support-impact) let the customer know and agree on the new priority. Use the macro [General::Changed priority](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/blob/master/macros/active/General/Changed%20priority.yaml).
1. If the ticket has the potential to become an emergency, ping the engineer on-call for a heads-up.
1. You can send a quick reply and follow up with the customer later.
    1. Ask any clarifying questions and let them know when you plan to work on it and when they can expect a reply.
    1. Submit as `on-hold`.
    1. You can use the 'Due Date' and 'Reminder' apps in Zendesk to remind you when to follow up. If it's not an urgent ticket it might be that you'll work on it the next day. The customer has an opportunity to reply to you if this isn't soon enough for them. The [4-minute SLA Clock video](https://www.youtube.com/watch?v=CVue_aHcGlc&list=PL05JrBw4t0Kq13oaMq0DCl2gUz_g1u29o&index=30) gives general guidance on this workflow.
1. Collaborate! Not sure how to reply? Speak with the team and work together.

### Manager responsibilities

The manager on-call in each region will keep an eye on the 'FRT' and 'Handover' views and alert the team if extra focus is needed. Managers also [take one or two tickets each per week](https://about.gitlab.com/handbook/support/managers/manager-responsibilities.html#develop-your-skills-through-direct-interactions-with-customers-and-support-engineers). 
