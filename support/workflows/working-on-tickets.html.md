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

## Views to use in our SGG system

The views within Zendesk are arranged as follows:

| Name | Purpose |
|------|---------|
| [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834) | Use this view to manage all of your assigned tickets that are not yet in a `Closed` state. |
| [Needs Org](https://gitlab.zendesk.com/agent/filters/360076150200) | This view shows all new tickets that will not get assigned to an SGG group and that do not have an organization associated with them. |
| SGG: [group name] | You'll see an alphabetical list of group views here. Each view shows all the non-solved, non-pending tickets for its group. |
| [Needs Collaboration](https://gitlab.zendesk.com/agent/filters/360080204660) | This view shows all tickets on which the assignee is asking for help. See the [How to get help workflow](./how-to-get-help.html#how-to-get-help-workflow) for details. |

## Selecting tickets

Support Engineers should make decisions about what to work on based on the SGG
description of [prioritizing work](../support-global-groups/#prioritizing-work).
Through that process you may:

1. Select a new, unassigned ticket in your group's view

   There are no special considerations here. Proceed to
   [ticket assignment](#ticket-assignment)

1. Select a new, unassigned ticket in another group's view

   In this situation, follow the guidance in the SGG FAQ to
   [move the ticket to your group](../support-global-groups/sgg-faq.html/#3-how-do-i-move-a-ticket-to-a-different-group)
   before proceeding to [ticket assignment](#ticket-assignment)

1. Select an in-progress ticket assigned to someone else

   In this situation, proceed according to the guidance in our SGG FAQ about
   [responding to other SEs’ tickets](../support-global-groups/sgg-faq.html#1-should-ses-respond-to-other-ses-tickets).

## Ticket assignment

When you begin work on a new ticket, as your first step please assign the ticket
to yourself. In the SGG environment, that shouldn't stop anybody from
collaborating with you on the ticket. What it will do is let others know that
you have taken responsibility for the ticket, allowing them to help you or to
move on to another new ticket.

*NOTE: The SLA clock continues to run until you've sent a public response to
the user!*

As you're working on tickets each day, be aware of the number of tickets in your
`My Assigned Tickets` view, and of their statuses and needs, so that you can
decide whether you have the right number of tickets. There's no specific number.
Aim to take as many tickets as you can while maintaining customer happiness and
good progress toward resolution on each, **and** having some amount of time to
meet [other responsibilities](../support-global-groups/#se-responsibilities-and-priorities).
While some people might maintain three to ten open, pending and on-hold tickets
in their
[My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834)
view, others might comfortably maintain closer to twenty tickets. Each person
will need to find the right ticket load for themself.

You might at times know that you can provide a good response on a specific new
ticket, and yet not have room to assign it to yourself. Since **every response
should be part of a ticket that is assigned to somebody**, please place an
internal note describing what your first response would be. You might consider
then looking for another person in your group who can take the ticket, and even
offering to pair with them.

You might also at times feel prepared to provide a good first response and yet
not prepared to keep the ticket progressing. When that happens, remember you
have your group, and in fact the whole global team, ready to help you drive the
ticket to a great resolution. You're never alone. So go ahead and accept the
challenge! Assign the ticket to yourself, send out your first response, and
seek help as soon as you need it. 

## Providing a first response to a ticket

It's always a good idea when beginning work on a ticket to perform a few routine
steps that can help you to provide a good solution that meets the customer's
needs, and that might save you and the customer time and effort as well.

1. **If you take none of the other steps described in this topic, take this one. It is the one most likely to get you very quickly on the right path.**
   
   Confirm with the customer your understanding of their situation, needs, and
   problem to be solved or question to be answered.
   1. If you're not confident about one or more of these, consider making your
      entire first response a request for clarification **or** a request to
      schedule a quick (15 minute?) meeting solely for clarifying things.
   1. Otherwise, include a quick summary of your understanding near the
      beginning of your response.
1. Look at other current and recent tickets from this customer to find:
   1. Is this ticket related to any of those in any way?
   1. Is there background information in those tickets that give you potentially
      useful information about the customer or their environment? Be sure to
      confirm with the customer that any environmental information is still
      correct and applicable.
   1. Are there any logs you might be able to reuse? Again, confirm their
      relevance with the customer.
1. If there is an organizational note attached to the customer's organization
   in Zendesk, read it carefully for any details about the customer that might
   require you to take specific actions. The note might guide you in how or
   where to communicate with the customer, or provide you with special handling
   instructions, and so on.

## FAQ

### 1. How many new tickets should I pick up each day?

   See [Meeting FRT SLA](/handbook/support/workflows/meeting-frt-sla.html).

### 2. What can I do when I'm stuck and I really need help?

   Follow the [how to get help workflow](https://about.gitlab.com/handbook/support/workflows/how-to-get-help.html)
   for guidance on this. Reach out to a manager for guidance if you are still
   stuck.

### 3. I'm going to be absent, what do I do with my assigned tickets?

   Please see the [Support Team Member Time Off page](../support-time-off.html)
   for a full description of this situation.

### 4. May I reassign a ticket to someone else?

   There are some situations in which it is appropriate to reassign a ticket:

   1. If you'll be absent, follow the guidance given on the
      [Support Team Member Time Off page](../support-time-off.html).
   1. If you've determined that specific expertise outside your own is required
      to resolve the ticket, pair with an expert so that you can get the ticket
      resolved and learn in the process. If that person determines that they
      need to take the lead due to the advanced or complex nature of the
      problem, then:

      1. send a message to the customer informing them that you’ve asked
         another support engineer with relevant expertise to take the ticket,
         that you’ve reviewed the ticket with that engineer, and that you'll
         stay involved in order to help in any way you can
      1. assign the ticket to the expert

   1. If you've become overloaded with tickets, you may look to find one or more
      other SEs to take some of your tickets. Start with your Support Global
      Group, and then look to the larger team if necessary. Be sure you
      discuss each ticket before reassigning it to gain agreement and so that
      the other support engineers don't have to start from scratch. Then add an
      internal note stating the reassignment agreement **and** add a public
      meessage informing the user that you’ve asked another support engineer to
      take the ticket due to your time constraints.

### 5. A customer has confirmed a ticket can be closed but the ticket has no assignee - what should I do?

   This should only happen on rare occasions since in the SGG system all tickets
   should be assigned from the time the first response is made. When it does
   happen, please:
   1. inform the customer that you are changing the ticket status to solved
   1. assign the ticket to the engineer who provided the solution, or if you
      can't make that determination, assign it to an engineer who has
      significantly contributed to the ticket throughout its life cycle
