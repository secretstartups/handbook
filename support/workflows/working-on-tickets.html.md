---
layout: handbook-page-toc
title: Working on Tickets
category: Handling tickets
description: How to resolve users' problems by solving tickets on a daily basis. Covers the Support Process, Zendesk views, assignment, escalation
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Finding tickets in Zendesk

The views within Zendesk are arranged as follows:

| Name | Purpose |
|------|---------|
| [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834) | Keep your customers up to date and moving towards solutions once you've made sure no tickets are breaching. |
| [Needs Org / FRT](https://gitlab.zendesk.com/agent/filters/360076150200) | These tickets are the top priority; start here. |
| Handover Needed (REGION) | If nothing in `Needs Org / FRT` is in danger of breaching, grab these. |
| [SaaS Account](https://gitlab.zendesk.com/agent/filters/360050768099) | A subset of Handover Needed focused on SaaS account issues. |
| [Free user tickets](https://gitlab.zendesk.com/agent/filters/360038103100) | help when you have capacity |
| [Needs Collaboration](https://gitlab.zendesk.com/agent/filters/360080204660) | Tickets on which the assignee is asking for help. See the [How to get help workflow](https://about.gitlab.com/handbook/support/workflows/how-to-get-help.html#how-to-get-help-workflow) for details. |

### Ticket assignment

1. **I'm working on a ticket, how do I let the team know?**

   Assign the ticket to yourself if it's **in your region** or all regions. This
   takes it out of the 'Needs assignee' view so other engineers know to look at
   other tickets instead.

   *NOTE: The SLA clock continues to run until you've sent a public response to
   the user!*

1. **How many tickets should I have assigned to me?**

   There's no specific number. Aim to take as many tickets as you can while
   being sure that you can give good attention to each of them daily. You might
   expect that to be somewhere between three and ten open, pending or on-hold
   tickets in your [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834)
   view.

1. **A ticket is assigned to someone else - can I work on it?**

   Absolutely! Support Engineers should [balance their day](/handbook/support/support-engineer-responsibilities.html#2-help-meet-our-service-level-objectives-for-ticket-reply-times-daily)
   between working on their assigned tickets and helping others to make progress
   on their tickets. If your own tickets are up to date then please look for opportunities to contribute on someone else's. Tickets breaching soon may be assigned to a team member
   in a different region. When replying to these tickets, be sure that your next
   steps align with the action plan that the assignee has described on their
   replies or ticket summary.

1. **If I can provide a good response on a new (unassigned) ticket, but I don't
   want to assign to myself, may I?**

   Every response should be part of a ticket that is assigned to somebody. If
   the ticket is unassigned (new) and **it's in your region** or all regions,
   please assign it to yourself and then send your first response to the ticket
   requester. And remember, you have a whole team ready to help you drive that
   ticket to a great resolution, so you're never alone.

1. **I'm going to be absent, what do I do with my assigned tickets?**

   Please see the [Support Team Member Time Off page](/handbook/support/support-time-off.html)
   for a full description of this situation.

1. **Can I reassign a ticket to someone else?**

   There are some situations in which you should look to reassign a ticket:

   1. If you'll be absent, see the FAQ above about reassigning tickets when
      you'll be absent.
   1. If you've determined that specific expertise outside your own is required
      to resolve the ticket, your first choice should be to pair with an expert
      so that you can get the ticket resolved and learn in the process. If
      pairing is not reasonable, then:

      1. ask the expert to review the ticket
      1. get agreement from them to take assignment
      1. add an internal note to the ticket that you have their agreement
      1. add a public message to the ticket informing the user that you’ve asked
         another support engineer with relevant expertise to take the ticket,
         and that you’ve reviewed the ticket with that engineer
      1. assign the ticket to the expert

   1. If you've become overloaded with tickets, feel free to rebalance your load
      by finding one or more teammates to take some of your tickets. Be sure you
      discuss each ticket before reassigning it to gain agreement and so that
      the other support engineers don't have to start from scratch. Then add an
      internal note stating the reassignment agreement **and** add a public
      meessage informing the user that you’ve asked another support engineer to
      take the ticket due to your time constraints.

1. **A customer has confirmed a ticket can be closed but the ticket has no
   assignee - what should I do?**

   When reviewing tickets or monitoring them to prevent SLA breaches you may
   encounter instances where a customer has confirmed that they have been
   provided with a solution however the ticket has not been assigned to an
   individual support engineer.

   In this type of situation you should inform the customer that you are
   changing the ticket status to solved and assign the ticket to either the
   engineer who provided the technical solution or if this is not
   distinguishable then use good judgement and assign the ticket to an engineer
   who has significantly contributed to the ticket throughout its life cycle.

## Collaborating on tickets

### How can I find opportunities to collaborate with colleages that need help?

Review the `Needs Collaboration` ZenDesk view and look for recent requests for help in the `#support_*` Slack channels.

1. Teamwork is really important with this workflow. Be aware of what's happening
   across the board: watch Slack channels for requests from other SEs on their
   tickets, and check the `Needs Org / FRT`, `Handover Needed`, `SaaS Account` and `Free user tickets`
   views for tickets you can work on.
1. Contribute to tickets that you are CCed on. To find those in ZenDesk, either
   [search for `cc:me`](https://gitlab.zendesk.com/agent/search/1?type=ticket&q=cc%3Ame) or:
    1. Click your avatar in ZenDesk's top right corner.
    1. Select `View profile`.
    1. Switch the `Assigned tickets` dropdown menu to `CCs`.

### What if someone is working on a ticket that I’d like to work on?

If another engineer is looking at a ticket that you’re interested in working on:

1. Contact them in Slack to confirm whether they're actively working the ticket.
1. If they are, ask to pair on the ticket, or share with them any information
   and questions that you have.
1. If they don’t respond in Slack, go ahead and work on the ticket --
   [Bias for Action](/handbook/values/#bias-for-action) is part of our Results
   value.

## FAQ

1. **How many new tickets should I pick up each day?**

   See [Meeting FRT SLA](/handbook/support/workflows/meeting-frt-sla.html).

1. **I am stuck. I really need help. What can I do?**

   Follow the [how to get help workflow](https://about.gitlab.com/handbook/support/workflows/how-to-get-help.html)
   for guidance on this. Reach out to a manager for guidance if you are really
   stuck.

1. **I've taken a new ticket, what are some important things to consider as I make the first response?**

   Does the user already have some recently opened tickets with us? Is there
   background information in those tickets that it is safe to reuse or use to
   confirm back to the user that the information is still valid for this new
   ticket?

   For example, this could be logs/information we have very recently collected,
   or an attached architecture document from a Professional Services team
   engagement.

   1. Referring back to recent docs where applicable, could cut down
      investigation time and provides an improved user experience.

   1. Check the organizational notes for any details about the customer that may
      require a specific action be taken by Support, such as what NOT to ask.
      Additionally, the organizational notes may provide insight into how we
      need to communicate with the customer, or provide special handling
      instructions.

1. **I am interested in a specific subject area that's not covered by the views
   provided and I would like to see tickets assigned to other team members.**

   Create [Zendesk personal views](https://support.zendesk.com/hc/en-us/articles/203690806-Creating-views-to-manage-ticket-workflow) and add filters for the
   subject area. This will list all the new tickets and the already assigned
   tickets for that area.
