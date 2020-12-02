---
layout: handbook-page-toc
title: Working on Tickets
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What is the "Working on Tickets" workflow?

The [core responsibility of GitLab Support Engineers](/handbook/support/support-engineer-responsibilities.html) is to resolve user problems by solving support tickets on a daily basis. You accomplish this using the "Working on Tickets" workflow. The focus is **being responsible for the continuous progress toward resolution of a specific set of tickets**. What does this look like?

**Ideally it starts with taking responsibility for a ticket by assigning it to yourself at the moment you make the first public comment on it.** From that point forward you should be thinking about how you can keep that ticket moving toward a resolution that's acceptable to the user. Don't worry - you're not responsible for creating the solution, only for making the solution happen and ensuring the user is kept up to date with what's happening. **You're the leader, not the sole contributor.** If you can resolve the ticket independently, great! If not, ask others (*e.g.* create a Slack thread) to help by pairing with you or by providing internal comments in the ticket to suggest next steps. Note that Senior and Staff Support Engineers are specifically charged with putting a large percentage of their time into helping the rest of the team, so they're a great resource when you need ticket help. If you're not able to find someone to work with you, please let your manager know so that they can help with next steps.

Benefits of working on tickets assigned to yourself:
1.  You won't have to read through a series of updates from multiple support engineers, and the customer, to understand the ticket history, current status, or plan of action. In fact, we encourage you to include a brief description of those items - history (what's happened so far), current status, next steps - in most of your updates to the customer so that your last update always tells you what you need to know.
1.  With one person in charge of each ticket, you can take a consistent approach to resolving the problem, you can explain why and what you're doing, and you won't repeat or contradict an action taken by somebody else on the ticket. This is a much better experience for the customer.
1.  Knowing that you're in charge of a ticket gives you freedom to set and manage customer expectations at each step along the way, so the customer will know what's going on and who's working on their behalf. Again, this is a customer experience enhancement.

When you're "Working on Tickets", you're driving achievement of our KPI of [Support Satisfaction](/handbook/support/performance-indicators/#support-satisfaction-ssat) by helping to resolve tickets as quickly and effectively as possible.

### The Process in Action

#### Brief Summary
Here's what to do when you're actively working on tickets in Zendesk. Divide your efforts between:

1. taking **next** steps on tickets that are already in your
   [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834)
   view, and
2. assigning yourself new tickets from the main view for your region and
   current focus (see [Main Views](#main-views) table), and identifying and
   taking **first** steps on those tickets )in line with [Meeting Service Level Objectives](/handbook/support/workflows/meeting-service-level-objectives.html).

If you are part of a [Support Response Crew](/handbook/support/workflows/meeting-service-level-objectives.html#support-response-crew) this will influence how you divide your efforts as you will have more focus on incoming ticckets on your crew day.

#### Main Views
These views show all the unassigned tickets for their respective region and
focus. All tickets in these views should be new, since all tickets should be
assigned when the first reply is made.

<table>
  <tr><th>Current Focus</th><th>Region</th><th>Main View Name with Link</th></tr>
  <tr>
    <td rowspan="3">Self-Managed</td>
    <td>AMER</td>
    <td><a href="https://gitlab.zendesk.com/agent/admin/views/360038123559">SM Need Assignee: AMER+All Region</a></td>
  </tr>
  <tr>
    <td>APAC</td>
    <td><a href="https://gitlab.zendesk.com/agent/admin/views/360038102880">SM Need Assignee: APAC+All Region</a></td>
  </tr>
  <tr>
    <td>EMEA</td>
    <td><a href="https://gitlab.zendesk.com/agent/admin/views/360038102260">SM Need Assignee: EMEA+All Region</a></td>
  </tr>
  <tr>
    <td rowspan="3">GitLab.com</td>
    <td>AMER</td>
    <td><a href="https://gitlab.zendesk.com/agent/admin/views/360038122359">.com Need Assignee: AMER+All Region</a></td>
  </tr>
  <tr>
    <td>APAC</td>
    <td><a href="https://gitlab.zendesk.com/agent/admin/views/360038122399">.com Need Assignee: APAC+All Region</a></td>
  </tr>
  <tr>
    <td>EMEA</td>
    <td><a href="https://gitlab.zendesk.com/agent/admin/views/360038102160">.com Need Assignee: EMEA+All Region</a></td>
  </tr>
</table>

*NOTE*: For more information about views, see the [Views section of our Zendesk Overview page](/handbook/support/workflows/zendesk-overview.html#views).

#### The Full Workflow
1. Start your work at the top of your own view
1. Determine whether you can identify any next steps to make progress
   1. If you can, then take those steps, including updating the customer
   1. If not, then link the ticket in Slack and ask for help from your teammates
1. If it's been an hour or more since you checked the [Main Views](#main-views), or your own view is up-to-date or empty, and **you have the capacity to take on another ticket**, then:
   1. Assign to yourself the top ticket (new or open) in the view [for your region](#main-views)
1. If you've asked in Slack for help on a ticket, and nobody has stepped up to help, and you feel you can't wait any longer for help, then:
   1. `@mention` your manager in Slack in the thread where you requested help, and ask them what the next steps should be
1. If there are tickets left in your view to work on, then go back to step 1, else go back to step 3

#### Workflow Visual
See the [Working on Tickets Flowchart](#working-on-tickets-flowchart) for a visual representation.

<!-- ![Working on Tickets process flowchart](assets/working-on-tickets-workflow.png) -->

### Keep In Mind:

1. Teamwork is really important with this workflow. Be aware of what's happening
   across the board: watch Slack channels for requests from other SEs on their
   tickets, and check the `.com with SLA`, `.com Accounts, Groups, Login`, or
   `SM with SLA` view (depending on your current focus) occasionally for tickets
   that need some help. To be sure that your suggestions align with the work
   the assignee has already done, it's best to post an internal note or to pair
   with them. If you decide to post a public response, be sure that your next
   steps align with the action plan that the assignee has described on their
   replies or ticket summary.
1. When you send the customer an update, the normal action is to set the ticket status to `Pending`. We are now waiting for a reply from the customer and there is no SLA clock counting.
1. Occasionally you will send a customer a reply letting them know that you're going to follow up with further information. In this case you should set the ticket status to `Open` or `On-hold`. When this happens ZenDesk still removes the SLA. To help ensure we don't forget to follow up, a trigger automatically assigns the ticket to you (if it's not already assigned to someone else) so that you can see it in your view.
1. For all tickets in which the customer is waiting on a response from Support, **always provide an update** on its status and work that has been done. Aim to do this daily, and definitely no less than every four days (the length of the On-hold period). Make sure you check with the customer that they are comfortable with any timescales you are working towards. If they are not, ensure you understand the impact to thier business so that we can react accordingly.
1. After 1 on-hold period or a week, generally, an issue should be created in the appropriate tracker especially if there is discussion with the development team.

### FAQ About Working on Tickets workflow

1. **How many tickets should I have assigned to me?** There's no specific number. Aim to take as many tickets as you can while being sure that you can give good attention to each of them daily (unless they’re on hold). You might expect that to be somewhere between three and ten open, pending or on-hold tickets in your [My Assigned Tickets](https://gitlab.zendesk.com/agent/filters/360062369834) view.
1. **Isn't it the FRT Hawk's responsibility to give the first response on a
   ticket, not mine?** In the past, FRT Hawks were responsible for new tickets. We've evolved our approach so that now new tickets are everyone's responsibility, not just the
   FRT Hawk's. Some regions have a [Support Response Crew](/handbook/support/workflows/meeting-service-level-objectives.html#support-response-crew).  The FRT Hawk's job is **not** to provide the first response on every new ticket, but rather to provide that first response when
   nobody else has been able to take the ticket in time to meet SLA.
1. **A ticket is assigned to someone else - can I work on it?** Absolutely!
   Support Engineers should
   [balance their day](/handbook/support/support-engineer-responsibilities.html#2-help-meet-our-service-level-objectives-for-ticket-reply-times-daily)
   between working on their assigned tickets and helping others to make progress
   on their tickets. If your own tickets are up to date then please look for opportunities to contribute on someone elses. Tickets breaching soon may be assigned to a team member
   in a different region. When replying to these tickets, be sure that your next
   steps align with the action plan that the assignee has described on their
   replies or ticket summary.
1. **If I can provide a good response on a new (unassigned) ticket, but I don't
   want to assign to myself, may I?** 
   Every response should be part of a ticket
   that is assigned to somebody. If the ticket is unassigned (new) and **it's in your region** or all regions, please
   assign it to yourself and then send your first response to the ticket
   requester. And remember, you have a whole team ready to help you drive that
   ticket to a great resolution, so you're never alone.
1. **I'm going to be absent, what do I do with my assigned tickets?**  Please
   see the [Support Team Member Time Off page](/handbook/support/support-time-off.html) for a full description of this
   situation.
1. **A ticket has diverged into more than one problem. What do I do?** It's recommended to keep tickets focused on a single problem that's clearly described by the ticket Title. If the customer asks about another problem, you are encouraged to "**split**" the ticket **by creating a new ticket on behalf of the customer**. The new ticket should focus on a single issue and keep the original ticket on the original issue. This helps reduce time to resolution and makes it easier for us to focus on fixing the problem at hand:
    1. Click `+ Add` near the top of the Zendesk screen to create a new ticket
    1. Set the customer as the Requester (use the same email address as the original ticket)
    1. Give the new ticket a helpful 'Subject'
    1. Paste or write in the relevant text for the new ticket description
    1. Set the correct ticket form and other meta data from the sidebar
    1. Submit as 'New' if the next action is for GitLab or as 'Pending' if the next action is for the customer
    1. Add a reply on the original ticket, letting the customer know that you've split their ticket. (You could also add an internal note with a link to the new ticket you created if that seems helpful.)
1. **Can I reassign a ticket to someone else?** There are some situations in which you should look to reassign a ticket:
   1. If you'll be absent, see the FAQ above about reassigning tickets when you'll be absent.
   1. If you've determined that specific expertise outside your own is required to resolve the ticket, your first choice should be to pair with an expert so that you can get the ticket resolved and learn in the process. If pairing is not reasonable, then:
      1. ask the expert to review the ticket
      1. get agreement from them to take assignment
      1. add an internal note to the ticket that you have their agreement
      1. add a public message to the ticket informing the customer that you’ve asked another support engineer with relevant expertise to take the ticket, and that you’ve reviewed the ticket with that engineer
      1. assign the ticket to the expert
   1. If you've become overloaded with tickets, feel free to rebalance your load by finding one or more teammates to take some of your tickets. Be sure you discuss each ticket before reassigning it to gain agreement and so that the other support engineers don't have to start from scratch. Then add an internal note stating the reassignment agreement **and** add a public meessage informing the customer that you’ve asked another support engineer to take the ticket due to your time constraints.

## Working on Tickets Flowchart

```mermaid
graph TD
A([My Tickets]) --> B
B[Open the 'My Assigned Tickets View' in Zendesk] --> B1
B1{Are there tickets left in <BR> your view that need work?} -->|Yes| C
B1 -->|No| NT2
C[Select top ticket from view] --> D
D{Can you make progress and <BR> take the next steps?}
D -->|Yes| E[Update the customer<BR>with the next steps]
D -->|No| F[Link the ticket in<BR>Slack and ask <BR> teammates for help]
E & F --> NT0

NT0([Finding a New Ticket]) --> NT1
NT1{Have you checked <BR> the main view <BR> in the last hour?} -->|Yes| AH0
NT1 -->|No| NT2
NT2{Do you have capacity <BR> for another ticket?} -->|No| AH0
NT2 -->|Yes| NT3
NT3{Is there a ticket in <BR> the main view?} -->|No| AH0
NT3 -->|Yes| NT4
NT4([Assign the top ticket to yourself]) --> B1

AH0([Check on Help Requests]) --> AH1
AH1{Is there a ticket <BR> on which you need <BR> help but nobody's <BR> volunteered?} -->|Yes| AH2
AH1 -->|No| B1
AH2["@"mention your manager in <BR> Slack in the thread <BR> where you requested help. <BR> Ask them for next steps.] --> B1
```
## Tips for working on tickets (all roles)

### I've taken a new ticket, what are some important things to consider as I make the first response?

1. Does the customer already have some recently opened tickets with us? Is there background information in those tickets that it is safe to reuse or use to confirm back to the customer that the information is still valid for this new ticket. For example, this could be logs/information we have very recently collected, or an attached Architecture document from a Professional Services team engagement.
   1. Referring back to recent docs where applicable, could cut down investigation time and provides an improved customer experience. 
1. While waiting for a resolution to this ticket, is the customer's business being affected?
   1. If you don't know the answer to this, make sure you check with the customer early on in the life of the ticket to prevent the ticket becoming an escalation. Understanding the timescales the customer is working to will help you set expectations and help them meet or adjust project timescales. 
1. If this is a how to question is it clear why the customer is asking the question?
   1. Make sure that you fully understand the reason for their question and what the end result is they are looking for. There may be a different and better way for to achieve the results so always feel comfortable in asking 'Why'.


### I'm working on a ticket, how do I let the team know?

1. If the ticket is unassigned, then:
   1. Assign the ticket to yourself if it's **in your region** or all regions:
      1. This takes it out of the 'Needs assignee' view so other engineers won't waste
         time on it
      1. *NOTE: The SLA clock continues to run!*
   1. Work on the ticket and aim to get a helpful reply out to the customer. Work with the team if needed as described above.
   1. If you're not able to get a reply out to the customer even after seeking
      help, please speak with a manager to determine an appropriate course of
      action.
1. If the ticket is already assigned to someone else and you're stepping in to
   help them, then:
   1. Add yourself to the **CCs**
   1. Enter a short internal note stating "assisting"
   1. Proceed to write and send your reply to the customer, or to pair with the
      assignee to work on the ticket

### What if someone is working on a ticket that I’d like to work on?

If another engineer is looking at a ticket that you’re interested in working on:

1. Contact them in Slack to confirm whether they're actively working the ticket.
1. If they are, ask to pair on the ticket, or share with them any information
   and questions that you have.
1. If they don’t respond in Slack, go ahead and work on the ticket - [Bias for Action](/handbook/values/#bias-for-action) is part of GitLab's core Value, Results.

### A ticket is close to breaching SLA; I'm working on it, but I need more time for my full reply.

1. Please send the customer a short message to update them on the action plan:
   what you're doing, what progress you've made, and what's left to do. Let
   them know when you expect to have next steps for them to take. Doing this
   will not only prevent an SLA breach, it will very likely be well-received by
   the customer. Remember, you don't need to have a full answer in order for
   your message to be useful.
1. When sending the short public reply, set the ticket status to `On-hold` or `Open`. `On-hold` is useful when waiting for information from another team. `Open` is useful when you want to keep the ticket visible to the rest of the Support team. (See below for more details on choosing a ticket status.)
1. When you take the above action, **keep your commitment and get back to the
   customer on time and with a full reply including next steps**. Keep in mind
   that you've stopped the SLA clock, so it's up to you to respond on time. **Do
   not take this action if you are not planning to be the one to follow up.**

### A ticket is close to breaching SLA. Should I help or defer to the assignee?

When you're helping the SLA Hawk to prevent tickets from breaching you need to
make a judgement call on what the best action is for the customer.

**Usually** you will take next steps to move the ticket forward and reply with a
helpful response even if the ticket is assigned to someone else and originates
in another region.

**Occasionally** it's more helpful to let the customer know that the assignee will
get back to them soon. **When would you do this?** There are no hard rules but
consider things like:

1. Are you unclear about the next step because you don't have
   full context and it's not a problem with which you're familiar?
1. Is the customer being severely impacted by the problem?
1. Is the customer clearly in another region?
   (check the 'Events' view in Zendesk and see where they're
   located - shown at the bottom of all their replies)
1. Is the assignee out of office today / tomorrow?

If you choose to do this, make sure the ticket already has an assignee and send
a public reply letting them know that:

> 'Ticket owner name' will be back in touch with you later today with an update. Let us know if you need assistance before then.

If the ticket has no preferred region set (the field is blank due to the customer
submitting the ticket by email) you could also ask:

> I notice you're based in the USA, is it OK if we set the preferred region for this ticket to 'AMERICAS' so you'll receive replies during US office hours?

You can now put the ticket 'on-hold'.

As a courtesy it is **important to add an internal note** to let the ticket owner know your
reasoning for sending the holding reply and checking they're OK with that. You
can also ping them in Slack if you wish. Be mindful of how you feel if someone
does this for a ticket assigned to you and explain why you thought this was the
best course of action. You might write something like:

> Putting on hold as (insert Ticket Owner Name) is part way through replicating this problem and is in communication with software engineers in their region about the issue. Customer contact is based in AMER so is not expecting round the clock replies. Hope that's OK (insert Ticket Owner name)?

### I need deeper technical assistance on a non-emergency case - what do I do?

Sometimes, you might require help from senior support engineers, subject matter experts or developers on your tickets. These tickets are most likely either long-running or technically challenging. We encourage [collaboration](/handbook/values/#collaboration) and you can use the following steps as a general guideline if you are unsure of what to do next:

1. Start by posting an internal message in the ticket clearly summarizing the problem, the steps that have been taken so far (including the reasoning behind them), the results of those steps, and the current status.
1. Check the [Support Team Knowledge Areas](/handbook/support/workflows/knowledge_areas.html) handbook page to see if someone would be able to assist you.
1. Look for assistance in the internal Support Slack channels.
   1. Initiate a crush session or a [pairing session](https://gitlab.com/gitlab-com/support/support-pairing) in the [#support_self-managed](https://gitlab.slack.com/app_redirect?channel=support_self-managed) or [#support_gitlab-com](https://gitlab.slack.com/app_redirect?channel=support_gitlab-com) Slack channels.
   1. If you now have some new ideas to try, make sure you have a clear plan of action and engage with the customer.
1. If you still require further assistance, reach out in the Slack channel of the appropriate [stage/group](https://about.gitlab.com/features/).
   1. If the situation demands (bug, regression, feature request etc) and an issue doesn't already exist, a new issue must have been filed related to the ticket and linked in all appropriate places.
1. If you are unable to get assistance from a developer through the previous step, a Product Manager might need to be involved - reach out to a Support Engineering Manager via the [#support_managers](https://gitlab.slack.com/app_redirect?channel=support_managers) Slack channel for assistance.

### Working on emergency or escalated tickets

At times the usual ticket workflow may be interrupted by a new customer [emergency ticket](/handbook/support/on-call/#sts=Taking%20an%20emergency%20customer%20call) or an [escalated situation](/handbook/support/internal-support/#i-want-to-escalate-a-ticket). There may be need to reprioritise workload to accomodate these. If you anticipate a problem with prioritization please let your manager know so that they can help with next steps.

### Understanding Ticket Status

Each ticket in Zendesk has a [status](https://support.zendesk.com/hc/en-us/articles/212530318-Updating-and-solving-tickets) that tells you what state it's currently in. They are as follows.

|  **Status** | **Meaning** | **Notes** |
| --- | --- | --- |
|  New | The ticket has just been opened and has had no replies. |  |
|  Open | The ticket has had one or more replies, and the customer is waiting on GitLab Support to provide the next reply. |  |
|  Pending | The ticket has been replied to and is waiting on the customer to provide additional information. | After 3 days in "Pending", the customer will receive a further response reminding them that the ticket exists. If there are no responses after a total of 7 days, the ticket will be moved to Solved. |
|  On-Hold | GitLab support is working on the ticket and may be waiting for information from another team | Placing a ticket on-hold will assign it to the engineer. After four days the ticket will move back to open status, requiring an update to the customer. On-hold is transparent to the customer (they see the status as 'Open') so there is no need to inform the customr that the ticket is being put on-hold. It's the engineer's responsibility to ensure timely replies or set the ticket back to 'Open' if they are no longer working on it. Setting a ticket to 'on-hold' while working on the ticket can be useful as it takes it out of the main view, thus saving other engineers from wasting time reading the ticket. |
|  Solved | The ticket has been solved | A customer who replies to a Solved ticket will re-open it. A Solved ticket will transition to 'Closed' after 4 days. |
|  Closed | The ticket is archived | A customer who replies to a Closed ticket will open a new ticket with a note that relates the new case to the closed ticket. |

### Handling Large Files

Zendesk has a [fixed maximum attachment size](https://support.zendesk.com/hc/en-us/articles/235860287-What-is-the-maximum-attachment-size-I-can-include-in-ticket-comments-) of 20MB per file. If you need a customer to share a larger file than this, then see [Provide Large Files to GitLab Support](/support/providing-large-files.html) for information on how to do so.

### Filling Out Ticket Fields

Depending on the view you are working on and the form the ticket belongs to, you might need to fill out some ticket fields manually. Those fields help us capture important data that will help us improve the customer experience. As a high percentage of our tickets are solved/closed automatically through our workflows, it is important to make sure that before you submit your response to a ticket, you check that all required (*) fields and relevant non-required fields have been filled out.

### Copying contents of Slack threads to internal notes

When using Slack to work with others or communicate internally regarding a support ticket, please bear in mind [our chat retention policy](/handbook/communication/#slack) and the [Communication Guidelines (esp. 9.)](/handbook/communication/#general-guidelines). It's best for future searches in Zendesk to copy relevant advice, notes, ideas, etc. from Slack to an internal note in Zendesk.

### Understanding SLAs

Our SLA workflow relies on customers who submit tickets belonging to an organization and that organization having a GitLab Plan. Organization information is automatically added to Zendesk via a Salesforce Integration. We sync all records with Account Type equal to `Customer` from Salesforce to Zendesk. The information we get from Salesforce includes but is not limited to: Account Owner, Technical Account Manager, GitLab Plan and Salesforce ID. Organizations should never be created manually in Zendesk as that can cause our sync to be ineffective.  If you think an Account in Salesforce doesn't have an equivalent Organization in Zendesk, please let the [Support Operations Specialist](/handbook/support/support-ops/#introduction-to-support-operations-team-support-ops) know so a manual sync can be run.

SLAs are set as Business Rules within Zendesk. For more information, please refer to the specific [Zendesk](/handbook/support/workflows/zendesk_admin.html) page.

We have a Slack integration that notifies us of impending breaches:

1.  Self-managed - if a Starter, Premium, or Ultimate ticket will breach in less than 2 hours
1.  GitLab.com - if a Bronze, Silver, or Gold ticket will breach in less than 2 hours

If you see an SLA notification in Slack, start a thread and consider this a _small emergency_. If you need help, draw the attention of other support engineers by tagging them, and work to move the ticket forward.

If a customer's reply is the last one in the ticket, do not set it to any status silently (except for Solved), because the breach clock will continue to run and the ticket may breach silently. Instead, send a confirmation, greeting, or other message, while also changing the status.

### Using On-Hold Status

You should use the On-hold status when it is necessary to do some internal work,
e.g. reproduce a complex bug, discuss something with developers or wait for a
session scheduled with a customer. When setting the status to On-hold it will be
automatically assigned to you by the trigger
[`Automatically assign on-hold ticket to the engineer who put it to the on-hold status`](https://gitlab.zendesk.com/agent/admin/triggers/360033242313).

If you think that it should be assigned to someone else (*e.g.* session is
scheduled for another engineer), feel free to re-assign it. Tickets without an
assignee will be automatically reopened by the trigger
[`Automatically reopen on-hold tickets without assignee`](https://gitlab.zendesk.com/agent/admin/triggers/360028981853).
Tickets in on-hold status _with_ an assignee will be automatically reopened in 4
days by the automation
[`Reopen on-hold tickets after 4 days`](https://gitlab.zendesk.com/agent/admin/automations/360028978393).
Before setting any ticket to on-hold, set expectations with the customer of what you are intending to do and when you will next be in contact with an update. Make sure that your timescales are acceptable for the customer and take into consideration any business urgency the customer has. 

If a customer's reply is the last one in the ticket, do not set it to the On-hold status silently due to the same reasons as stated above in the
[Understanding SLAs](#understanding-slas). Instead reply to the ticket while also changing the status.

### Merging Tickets

If you're merging two of a customer's tickets that are related and it's not 100% obvious to the customer, be sure to send a message letting them know why you're merging them. If you don't, it often causes confusion and they open follow-ups asking why it was closed without comment.

Additionally, when [Merging Tickets](https://support.zendesk.com/hc/en-us/articles/203690916-Merging-tickets), leave `Requester can see this comment` **unchecked** in the ticket that's being merged into (the second ticket from the top) in order to maintain the SLA. If the merge comment is made public, Zendesk considers it a response and removes the SLA. The ticket that was merged into another ticket is closed while the status of the target ticket is unaffected.

**NOTE:** Any ticket merge is final -- there is no option to undo it.

### Removing Information From Tickets

We ask customers to send us logs and other files that are crucial in helping us solve the problems they are experiencing. If a customer requests deletion of information shared in a support ticket, or if we suspect sensitive information was accidentally shared, the information can be deleted using the [`Ticket Redaction`](https://www.zendesk.com/apps/support/ticket-redaction/) app. Only the following Zendesk roles have access to do this:

* Support Staff - Explore
* Support Staff
* Support Managers
* Administrators

You can check which role you are assigned to in your Zendesk user profile. If you are not in any of those groups, please reach out to `@support_operations` or `@support-managers` in Slack to request deletion.

To delete text or attachments from a ticket:

1. Go to the ticket in question and on the right hand nav bar, scroll down until you are able to locate the Ticket Redaction app.
1. In the text box, enter a string of text or source image URL you wish to redact.
1. If you wish to remove an attachment, you can click on the `Redact Attachment` button and choose the attachment you would like to remove.
1. Let the cistomer know what actions you have taken and why.

### Handling emails forwarded from others at GitLab

Every now and then, a GitLab team member will forward a support request from a customer, prospective customer, etc. These requests then appear as tickets from the team member, instead of from the original requestor. Always reply directly to the original requester, keeping the person who forwarded it in the cc. You will need to manually alter the "Requester" field of the ticket, by clicking on the "(change)" link next to the email address of the apparent requester in the ticket title.

Please see [Requesting Support for Customers](/handbook/support/internal-support/#requesting-support-for-customers) for more details.

# How to succeed at working on tickets

## 1. Weekly ticket review

### Aim

1. Make your work visible
1. Develop consistent high quality ticket work across the team

### How to do it

1. Review at least two tickets each week in your 1:1 call with your manager
1. Tickets can be selected by you or your manager
1. They can be tickets with work you're proud of or where you would like feedback
1. Your manager will give you feedback on:
     1. Technical quality
     1. Communication quality
     1. Collaboration quality (where appropriate, did you work with other Support Team members, managers, other GitLab team members or directly with the user on a call)

### Context

1. This is currently an informal process between you and your manager.
1. It is not part of a formal performance review.
1. We're investigating a more comprehensive [ticket retrospective process](https://gitlab.com/groups/gitlab-com/support/-/epics/23).

## 2. Public replies on your assigned tickets

### Aim

Alternate your focus between working on your assigned tickets and assisting
others with making progress on theirs.

### How to do it

1. Aim for around 50% to 60% of public replies to be on tickets that are assigned to you.

[TODO: A report will be made available to Support Engineers so you can easily see how you are doing.]

## 3. Meet the ticket baseline

### Aim

Help encourage an even distribution of 'volume' of ticket work amongst the team.

### How to do it

1. Focus on solving customer problems via tickets as the core part of your work. 

That's it! For most people that's all you need to do. Once you've completed onboarding and have been helping out with tickets for two months or more, it's useful to gauge your contribution compared to the rest of the team.

### Context

Each week we publish the 'mean average per Support Engineer' for solved tickets, public replies and internal notes in the Support Week in Review.

We produce separate reports for [self-managed](https://gitlab.zendesk.com/explore#/pivot-table/connection/10438872/query/31477512) and [.com](https://gitlab.zendesk.com/explore#/pivot-table/connection/10438872/query/31478192) tickets in recognition that the volume of tickets for the two roles is different.

We establish a **dynamic baseline** that is 0.85 of the mean average* for each metric. \
(*value is chosen based on the [threshold for the lower quartile](https://en.wikipedia.org/wiki/Quartile)).

Here's an example week for folks working on self-managed tickets:

<table>
  <tr>
   <td><strong>Number of self-managed Support Engineers</strong>
   </td>
   <td><p style="text-align: right">
<strong>50</strong></p>

   </td>
   <td>
   </td>
   <td>
   </td>
  </tr>
  <tr>
   <td>
   </td>
   <td><strong>Solved</strong>
   </td>
   <td><strong>Public Comments</strong>
   </td>
   <td><strong>Internal notes</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Totals for last week</strong>
   </td>
   <td><p style="text-align: right">
300</p>

   </td>
   <td><p style="text-align: right">
1000</p>

   </td>
   <td><p style="text-align: right">
500</p>

   </td>
  </tr>
  <tr>
   <td><strong>Average per agent</strong>
   </td>
   <td><p style="text-align: right">
6</p>

   </td>
   <td><p style="text-align: right">
20</p>

   </td>
   <td><p style="text-align: right">
10</p>

   </td>
  </tr>
  <tr>
   <td><strong>Baseline (0.85 of avg)</strong>
   </td>
   <td><p style="text-align: right">
<strong>5.1</strong></p>

   </td>
   <td><p style="text-align: right">
<strong>17</strong></p>

   </td>
   <td><p style="text-align: right">
<strong>8.5</strong></p>

   </td>
  </tr>
</table>

1. Support Engineers that have completed onboarding are expected to achieve the baseline as a minimum. Don't worry in a given week if you don't meet the numbers. The baseline is a guide to help balance team contributions - it is not a method to penalize anyone.
1. There are good reasons why you might not achieve the baseline on a given week (e.g. vacation, illness, working on other projects, carrying out interviews) and you should keep your manager informed when you're not able to focus on resolving customer problems by contributing to support tickets.
1. If you don't meet the baseline you should discuss the reasons with your manager. If they're not satisfied that there are good reasons for not meeting the baseline, they will ask you to focus more on solving customer problems on Support tickets so that you meet the baseline in future weeks. This helps balance contributions across the global team.
1. We believe in quality, not quantity - more is not automatically better.
1. We recognize that the three metrics selected are not a complete indication of 'good work' on their own.
1. We recognize that the metrics for 'public replies' and 'internal notes' can
   be 'gamed' by making small updates. We trust the team to do the right thing
   for the customer and GitLab. This is why the ticket baseline is the last part of
   'how to succeed' in this area. It is more important to make quality updates
   on your assigned tickets and to help others to do the same on theirs.
1. There is no automated process to report on people that don't meet the baseline. The baseline is there to help you gauge your contribution and as a conversation starter between you and your manager.
