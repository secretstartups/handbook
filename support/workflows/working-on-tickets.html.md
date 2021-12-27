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

## Why do we work on tickets?

The [core responsibility of GitLab Support Engineers](/handbook/support/support-engineer-responsibilities.html)
is to resolve user problems. One key way we do this is by **being responsible for
the continuous progress toward resolution of a specific set of tickets**.

Resolving tickets as quickly and effectively as possible contributes to the
achievement of our teamwide customer-related [performance indicators](/handbook/support/performance-indicators/).

## Finding tickets to work on

### Key principles

1. Contribute to [meeting our first reply time target](meeting-frt-sla.html) by
   taking ownership of new tickets before they breach.
1. Ensure tickets don't languish by taking ownership of tickets that don't yet
   have an owner.
1. Work on your assigned tickets and collaborate with others.

### Priorities and impact


| What                   | Impact | What PI does this affect? |
|------------------------|------|-|
| New Tickets            | First replies to tickets are a contractual obligation. We must respond within SLA (Service Level Agreement). | [First Reply Time (FRT) SLA](/handbook/support/performance-indicators/#service-level-agreement-sla) |
| Tickets without owners | These tickets represent risk. Without a DRI they are likely to languish. | [SSAT](/handbook/support/performance-indicators/#support-satisfaction-ssat), [Customer Wait Time](/handbook/support/performance-indicators/#customer-wait-times) |
| Tickets you own        | These tickets are the ones you're the DRI of. Keep your customers up to date and moving towards solutions.| [SSAT](/handbook/support/performance-indicators/#support-satisfaction-ssat), [Customer Wait Time](/handbook/support/performance-indicators/#customer-wait-times) |
| Everything else        | Collaborate with others on the tickets they own, work on learning tasks, handbook or docs updates | [SSAT](/handbook/support/performance-indicators/#support-satisfaction-ssat), [Customer Wait Time](/handbook/support/performance-indicators/#customer-wait-times), [Support MR Rate](/handbook/support/performance-indicators/#support-mr-rate-inherited), [Support Handbook MR Rate](/handbook/support/performance-indicators/#support-handbook-mr-rate-inherited) |

At times the usual ticket priorities may be interrupted by a new
[customer emergency ticket](/handbook/support/on-call/#sts=Taking%20an%20emergency%20customer%20call)
or an [escalated situation](/handbook/support/internal-support/#i-want-to-escalate-a-ticket).
There may be a need to reprioritise workload to accomodate these. If you
anticipate a problem with prioritization please let your manager know so that
they can help with next steps.

### Finding tickets in Zendesk

The views within Zendesk are arranged as follows:

| Name | Purpose |
|------|---------|
| [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834) | Keep your customers up to date and moving towards solutions once you've made sure no tickets are breaching. |
| [Needs Org / FRT](https://gitlab.zendesk.com/agent/filters/360076150200) | These tickets are the top priority; start here. |
| Handover Needed (REGION) | If nothing in `Needs Org / FRT` is in danger of breaching, grab these. |
| [SaaS Account](https://gitlab.zendesk.com/agent/filters/360050768099) | A subset of Handover Needed focused on SaaS account issues. |
| [Free user tickets](https://gitlab.zendesk.com/agent/filters/360038103100) | help when you have capacity |
| [Needs Collaboration](https://gitlab.zendesk.com/agent/filters/360080204660) | Tickets where your colleagues are looking for help. |

#### The `Needs Collaboration` view

The `Needs Collaboration` ZenDesk view includes tickets on which the assignee
requested help by using the `Collaboration` Zendesk macro. This will add the
`needs_collaboration` label to the ticket.

The ZenDesk view contains tickets with the `needs_collaboration` label sorted in
Ascending order by "Next SLA breach".

If you find a `needs_collaboration` ticket you can assist with, leave an
internal note, offer to pair, or ping the ticket assignee to share any knowledge,
insight, or next steps to help move the ticket toward resolution.

##### Ticket Assignee Needing Collaboration Assistance

1. Ticket assignee gets stuck and wants a second set of eyes.
1. Ticket assignee uses the `Collaboration` macro to add an internal note
   summarizing the problem, the steps taken and why, the results of those steps,
   and the current status.
1. Ticket macro adds the `needs_collaboration` label.
1. Ticket assignee gets help from others via pairing sessions, internal notes
   and Slack.
1. Ticket assignee removes the `needs_collaboration` label once
   sufficient assistance has been obtained.

##### Support Team Providing Collaboration Assistance

- SEs check the `Needs Collaboration` view when caught up on their assigned
  tickets and other work.
- If an SE sees the opportunity to help with a ticket, they do so via
  internal note (async), Slack (async), and/or pairing session (sync).

#### The `Free user tickets` view

Free users receive support in a few specified cases following the
[free users section of the statement of support.](/support/statement-of-support.html#free-users).
See the [Handling Free User tickets section of the triaging workflow](/handbook/support/workflows/ticket_triage.html#handling-free-user-tickets)
for more details on how to triage these tickets.

### Understanding SLAs

Our SLA workflow relies on end-users who submit tickets belonging to an organization and that organization having a GitLab Plan. Organization information is automatically added to Zendesk via a Salesforce Integration. We sync all records with Account Type equal to `Customer` from Salesforce to Zendesk. The information we get from Salesforce includes but is not limited to: Account Owner, Technical Account Manager, GitLab Plan and Salesforce ID. Organizations should never be created manually in Zendesk as that can cause our sync to be ineffective.  If you think an Account in Salesforce doesn't have an equivalent Organization in Zendesk, please let the [Support Operations Specialist](/handbook/support/support-ops/#introduction-to-support-operations-team-support-ops) know so a manual sync can be run.

## Working with customers

### Understanding needs

If a customer asks a question, make sure you fully understand the reason for
their question and what is the end result they are looking for. There may be a
different and better way to achieve their desired end result, so always feel
comfortable asking 'why'.

### Understanding impact

While waiting for a resolution to this ticket, is the user's business being
affected?

If you don't know the answer to this, make sure you check with the user early on
in the life of the ticket to prevent the ticket becoming an escalation.
Understanding the timescales the user is working to will help you set
expectations and help them meet or adjust project timescales.

### Setting expectations

When you send a user an update, the normal action is to set the ticket status to
`Pending`, which indicates that you are waiting for a reply from them.

You might consider setting an expectation with the customer that you'll check
back with them after an appropriate amount of time to ensure continued progress.

You may also set the ticket status to `On-Hold`, indicating that you are taking some
action and will follow up with the user at a later time.

When putting a ticket `On-Hold`, you should:

* Inform the user when to expect your follow-up message.
* Invite them to inform you if your chosen schedule does not meet their needs
  so that you can adjust your plans accordingly. See also [Understanding Impact](#understanding-impact).
* Aim to provide updates daily, and no less than every four days, which is the [`On-Hold` period length](#behavior-of-on-hold-tickets).

When setting a ticket to `Pending` or `On-Hold`, consider using our [Due Date](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#due-date-picker)
and [Reminders](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#gitlab-reminders-app)
apps to help you to meet commitments you make.

### Emotionally-charged tickets

When customers are putting negative emotions into ticket communications, refer
to the handbook entry on
[how to keep a ticket moving toward resolution when emotions are getting involved](./emotionally-charged-tickets.html)
for helpful tips and guidance.

## Working on individual tickets

### Ticket statuses

#### Ticket statuses and their purpose

Each ticket in Zendesk has a [status](https://support.zendesk.com/hc/en-us/articles/212530318-Updating-and-solving-tickets)
that tells you what state it's currently in.

| Status   | State | Notes |
| -------- | ------- | ----- |
| New      | The ticket has just been opened and has had no replies. |  |
| Open     | The ticket has had one or more replies, and the user is waiting on GitLab Support to provide the next reply. | |
| Pending  | Support has replied to the ticket and is waiting on the user to provide additional information. | If there are no responses after a total of 20 days, Zendesk will move the ticket to `Solved`. |
| On-Hold  | GitLab support is working on the ticket and may be waiting for information from another team | See [Behavior of `On-Hold` tickets](#behavior-of-on-hold-tickets) |
| Solved   | The ticket has been solved | When a user replies to a `Solved` ticket, Zendesk reopens it. A Solved ticket will transition to `Closed` after 7 days. |
| Closed   | The ticket is archived | When a user replies to a `Closed` ticket, Zendesk opens a new ticket with a note that relates the new ticket to the closed ticket. |

#### Make sure to reply to the user

If a user's reply is the last one in the ticket, make sure to send a public
reply when changing the ticket status.

Changing a ticket's status (except for `Solved`) without replying will not stop
the ticket's breach clock. See [breach clocks](#breach-clocks) for more details.

#### Avoiding status change automations

By default, Zendesk will move a ticket from pending to solved after 20 days
with no replies. It will also move a solved ticket to closed after 7 days with
no replies. While this is normally the right workflow, there might be situations
in which you need to prevent this from occurring. To do so, use the appropriate
Zendesk labels:

| Label | What it does |
|-------|--------------|
| skip_autosolve | This tells Zendesk to refrain from moving the ticket to `Solved` automatically |
| skip_autoclose | This tells Zendesk to refrain from moving the ticket to `Closed` automatically |

NOTE: If the ticket has been reopened after already auto-solving and we want to
prevent autosolve from happening again, the `autosolve` and `autosolve_message`
tags will be present. These do NOT need to be removed  when adding the
`skip_autosolve` tag.

#### Behavior of `On-Hold` tickets

We have a number of automations around tickets in an `On-Hold` status:

* When a ticket is set to `On-Hold`, it will be automatically assigned to you by
  the trigger [`Automatically assign on-hold ticket to the engineer who put it to the on-hold status`](https://gitlab.zendesk.com/agent/admin/triggers/360033242313).
* Tickets without an assignee will be automatically reopened by the trigger
[`Automatically reopen on-hold tickets without assignee`](https://gitlab.zendesk.com/agent/admin/triggers/360028981853).
* Tickets with an assignee will be automatically reopened in 4 days by the
  automation [`Reopen on-hold tickets after 4 days`](https://gitlab.zendesk.com/agent/admin/automations/360028978393).

### Breach clocks

If a customer's reply is the last one in the ticket, do not set it to any status
silently (except for `Solved`), because the breach clock will continue to run
and the ticket may breach silently. Instead, send a confirmation, greeting, or
other message, while also changing the status.

#### A ticket is close to breaching; I need more time for my full reply

1. Please send the user a short message to update them on the action plan and
   [set clear expectations](#setting-expectations). Doing this will not only
   prevent an SLA breach, it will very likely be well-received by the user.
   Remember, you don't need to have a full answer in order for your message to
   be useful.
1. When sending the short public reply, set the ticket status to `On-hold` or
   `Open`. `On-hold` is useful when waiting for information from another team.
   `Open` is useful when you want to keep the ticket visible to the rest of the
   Support team.
1. When you take the above action, **keep your commitment and get back to the
   user on time and with a full reply including next steps**. Keep in mind
   that you've stopped the SLA clock, so it's up to you to respond on time. **Do
   not take this action if you are not planning to be the one to follow up.**

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

### Ticket subject

Ensure that the subject of a support ticket is both descriptive and accurate.
You can edit the Subject to fix typos or make the problem clearer. Some examples
include:

- gitlab error 500 on login -> gitlab error 500 on login due to no partition of
  relation "audit_events"
- My Account was Blockes -> My Account was Blocked
- git reconfigure with below errors -> git reconfigure with
  letsencrypt_certificate errors

### Ticket fields

Ticket fields help us capture important data that will help us improve the user
experience.

Depending on the view you are working on and the form the ticket belongs to, you
might need to fill out some ticket fields manually. As a high percentage of our
tickets are solved/closed automatically through our workflows, it is important
to make sure that before you submit your response to a ticket, you check that
all required (*) fields and relevant non-required fields have been filled out.

### Handling Large Files

Zendesk has a [fixed maximum attachment size](https://support.zendesk.com/hc/en-us/articles/235860287-What-is-the-maximum-attachment-size-I-can-include-in-ticket-comments-) of 20MB per file. If you need a user to share a larger file than this, then see [Provide Large Files to GitLab Support](/support/providing-large-files.html) for information on how to do so.

### Merging tickets

**WARNING:** Any attached files in the to be merged tickets will be shared
across the tickets. Everyone in CC on both of these tickets will receive the
files.

If you're merging two of a user's tickets that are related or are duplicates, be
sure to send a message letting them know what you've done and why. If you don't,
it often causes confusion and they open follow-ups asking why it was closed
without comment. Please note that your Zendesk signature will not be
automatically applied to this message.

Additionally, when [Merging Tickets](https://support.zendesk.com/hc/en-us/articles/203690916-Merging-tickets),
leave `Requester can see this comment` **unchecked** in the ticket that's being
merged into (the second ticket from the top) in order to maintain the SLA. If
the merge comment is made public, Zendesk considers it a response and removes
the SLA. The ticket that was merged into another ticket is closed while the
status of the target ticket is unaffected.

**NOTE:** Any ticket merge is final -- there is no option to undo it.

### Splitting tickets

Sometimes, it emerges that a customer is dealing with multiple independent
problems in a single ticket, or a user asks about a different problem in an
existing ticket.

It's recommended to keep tickets focused on a single problem that's clearly
described by the ticket Title. You are encouraged to "split" the ticket
**by creating a new ticket on behalf of the user**.

The new ticket should focus on a single issue and keep the original ticket on
the original issue. This helps reduce time to resolution and makes it easier
for us to focus on fixing the problem at hand.

To split a ticket:

1. Click `+ Add` near the top of the Zendesk screen to create a new ticket
1. Set the user as the Requester (use the same email address as the original ticket)
1. Give the new ticket a helpful 'Subject'
1. Paste or write in the relevant text for the new ticket description
1. Set the correct ticket form and other meta data from the sidebar
1. Submit as 'New' if the next action is for GitLab or as 'Pending' if the next action is for the user
1. Add a reply on the original ticket, letting the user know that you've split their ticket. (You could also add an internal note with a link to the new ticket you created if that seems helpful.)

### Removing Information From Tickets

We ask users to send us logs and other files that are crucial in helping us solve the problems they are experiencing. If a user requests deletion of information shared in a support ticket, or if we suspect sensitive information was accidentally shared, the information can be deleted using the [`Ticket Redaction`](https://www.zendesk.com/apps/support/ticket-redaction/) app.

To delete text or attachments from a ticket:

1. Go to the ticket in question and on the right hand nav bar, scroll down until you are able to locate the Ticket Redaction app.
1. In the text box, enter a string of text or source image URL you wish to redact.
1. If you wish to remove an attachment, you can click on the `Redact Attachment` button and choose the attachment you would like to remove.
1. Let the user know what actions you have taken and why.

If you don't see the Ticket Redaction App in the sidebar, it is likely that you are not assigned to one of the authorized roles (you can check your role in Zendesk profile). In this case, please reach out to `@support_operations` or `@support-managers` in Slack to request deletion. Zendesk roles that have access to Ticket Redaction App:

* Support Staff - Explore
* Support Staff
* Support Managers
* Administrators

### Customer Feedback submitted in ticket instead of feedback form

A customer always has the option to submit feedback on how their support
experience is going via the [customer feedback form](https://gitlab-com.gitlab.io/support/customer-feedback/).
The link to this form is included in the signature of all outgoing replies from
Support Engineers in Zendesk.

Sometimes a customer may provide feedback via the ticket directly. To ensure
this feedback is captured, you can create an issue in the [Customer Feedback](https://gitlab.com/gitlab-com/support/feedback/-/issues/new)
project using the `Indirect Feedback` template and copy the feedback into the
issue. The [SSAT Reviewing Manager](https://gitlab.pagerduty.com/schedules#P9UIIDY)
should be assigned to the issue and they will review the feedback and take the
appropriate action.

In the meantime, you should continue to assist the customer with their queries
and address their feedback if appropriate. If you are unsure on how to proceed,
do ask for help in the [#spt_managers](https://gitlab.slack.com/archives/C01F9S37AKT)
Slack channel.

### Handling tickets created by GitLab team members

Every now and then, a GitLab team member will forward a support request from a
customer, prospective customer, user, etc. These requests then appear as tickets
from the team member, instead of from the original requestor.

Always reply directly to the original requester, keeping the person who
forwarded it in the CC. You will need to manually alter the "Requester" field of
the ticket, by clicking on the "(change)" link next to the email address of the
apparent requester in the ticket title.

Please see [Requesting Support for Customers](/handbook/support/internal-support/#requesting-support-for-customers)
for more details.

## Collaborating on tickets

### Document your work; provide all context

Add research notes to your tickets, as it's important that we clearly document
all of our work performed throughout a ticket's lifecycle. Not only is this a
good way for you to track your own progress, particularly for lengthy and
challenging tickets, but it also provides your colleagues with a clear
understanding of what has been tried thus far, and enables a smoother transition
if a ticket needs to be reassigned.

#### Copying contents of Slack discussions to internal notes

When using Slack to work with others or communicate internally regarding a
support ticket, please bear in mind [our chat retention policy](/handbook/communication/#slack)
and the [Communication Guidelines (esp. 9.)](/handbook/communication/#general-guidelines).
It's best for future searches in Zendesk to copy relevant advice, notes, ideas,
etc. from Slack to an internal note in Zendesk.

#### Closure summary

If you are the assignee of a ticket, and the customer has confirmed that the
solution you provided has resolved the issue, add a **closure summary** to the
ticket prior to changing the ticket status to solved.

The closure summary should provide a brief outline of the confirmed solution. It
should be written with the goals of giving clarity to the customer with regard
to the solution as well as providing your colleagues with a quick and easy way
to see what solved the customer's problem.

To make it easier for yourself to create a summary, please consider using the
[General::Closing Summary](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/blob/master/macros/active/General/Closing%20Summary.yaml) macro, which adds a template as an internal note
populated with some information. You will then need only to fill in the
remaining items with relevant information before copying the completed message
to a public comment for the customer.

Some caveats to bear in mind:

1. You should add a closure summary if the ticket is a long ongoing ticket where
   multiple suggestions have been provided to the customer throughout the ticket
   lifecycle.
1. The macro template ‘Closure Summary’ is available in Zendesk to help guide
   you with formatting a closure summary, you can modify or remove template
   content as deemed necessary.
1. You should not feel the need to add a closure summary if the customer has not
   responded and the ticket has been automatically closed.
1. You should not feel the need to add a closure summary if the ticket has a
   short life span and the solution is easy identifiable from the ticket history.
   (For example: If the resolution was a simple link to documentation.)

### How can I find opportunities to collaborate with colleages that need help?

Review the `Needs Collaboration` ZenDesk view and look for recent requests for help in the `#support_*` Slack channels.

1. Teamwork is really important with this workflow. Be aware of what's happening
   across the board: watch Slack channels for requests from other SEs on their
   tickets, and check the `Needs Org / FRT`, `Handover Needed`, `SaaS Account` and `Free user tickets`
   views for tickets you can work on.

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
