---
layout: handbook-page-toc
title: 'Zendesk Trigger Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Triggers'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk trigger is.
* Creating/editing/deactivating Zendesk triggers via the UI
* Understanding Zendesk trigger positioning.
* GitLab Support Ops trigger standards.
* GitLab Support Ops change management process for Zendesk triggers.

## What are triggers

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203662246-About-triggers-and-how-they-work):

> Triggers are business rules you define that run immediately after tickets are
> created or updated. For example, a trigger can be used to notify the customer
> when a ticket has been opened. Another can be created to then notify the
> customer when the ticket is solved.

The simpler way to think of it is triggers run instantly. They are event-based
instead of being time-based.

## Creating a trigger via Zendesk

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/rfrD_MaZKnU" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To create a trigger in Zendesk, you first need to go to the admin panel, which
can be located by the gear icon on the left-hand side. From there, you will want
to go to the `BUSINESS RULES` sections on the left-hand side panel (it is
normally second from the top, so you might need to scroll down). Under that
section, click the `Triggers` link.

After doing so, you will then click the `Add trigger` button on the top-right
side of the page. This will then load up the new trigger page.

From here, you will:

1. enter a title for the trigger.
1. select a category for the trigger.
1. enter the conditions that **all** must be met to activate this trigger.
1. enter the conditions of which **any** of them can activate this trigger (in
   conjunction with the **all** conditions).
1. enter the actions for the trigger to perform

After doing this, you will then click the blue `Create trigger` button.

**Note**: By default, the trigger's position will be set to the bottom of the
select category. To adjust this, see [Positioning](#positioning).

## Editing a trigger via Zendesk

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/PioOpyydHWw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Editing a Zendesk trigger is very similar to
[creating one](#creating-a-trigger-via-zendesk). You will follow the same
steps to get to the triggers page. Instead of clicking the `Add trigger`
button, you will instead locate the trigger to edit in the list and click on
the title (if your trigger is currently inactive, you will need to click the
`Inactive` tab, located above the list of triggers).

Doing so will bring up the trigger editor page. From here, you can tweak the
various aspects of the trigger. Once you have the edits in place, ensure the
dropdown at the bottom right says `Update` and click the blue `Submit` button.

## Deactivating a trigger via Zendesk

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/59Xwwg_ldqk" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

There are actually two ways to deactivate a trigger in the Zendesk UI. The
quicker way is to go to the trigger page, locate the trigger in question, hover
over it, and click the three vertical dots on the right-hand side. This will
bring up a sub-menu, which contains the option to `Deactivate`. Click that
option and the trigger will be deactivated.

The alternative way to deactivate a trigger in the Zendesk UI is from within
the trigger editor page. At the bottom right, ensure the dropdown says
`Deactivate` and then click the blue `Submit` button.

**Note**: Deactivating a trigger does not change its position. This value is
retained in the backend. Re-enabling the trigger will have it take the same
position it was in while previously active.

## Positioning

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/RSRgYm4OZrY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Many components of Zendesk using positioning to determine the overall run order.
With triggers being event-based events, it is often _very_ important to consider
positioning. A good thought to have is "what order would I want these running in
if they all ran at once?"

By default, new triggers gain a position of `N+1`, where `N` is the highest
position value of all triggers in that category currently in Zendesk (both
active and inactive). This is desired and we should _rarely_ need to change
this.

To edit positions in the Zendesk UI, go to the triggers page. From there,
click the three horizontal dots at the top-right of the page (on the same line
as the search bar). That will bring up a sub-menu with the option
`Reorder page.` Clicking that will then allow you to drag and drop the list of
triggers into the order you desire. After making the changes, click the blue
`Save` button at the top right of the page.

**Note**: Both active and inactive triggers have an integer positional value.
While this does not matter in the UI, it will matter in the repo sync we
utilize.

## Trigger standards

To ensure all triggers we utilize are both consistent in nature and transparent
in their actions, we strive to meet some standards on all triggers we work with.

### Categories

As Zendesk triggers have built-in categorization, we utilize this to help
separate triggers into sensible groupings and keep positioning simpler to
determine. As of current, our categories are:

| Category name        | Purpose |
|----------------------|---------|
| Creation Stage       | For triggers relating to the ticket creation and initial processing |
| Needs Org Stage      | For tickets in the Needs Org stage |
| Triage Stage         | For tickets in the Triage stage |
| Categorization Stage | For categorization of tickets (Areas of Focus) |
| Routing Stage        | For routing related triggers (views, SLAs, schedules, etc.) |
| Automation Stage     | For handling automated tasks, such as autoreplies, notes, etc. |
| Lifespan Stage       | For handling triggers that impact the lifespan of the ticket. This is a very general category and many items will fit here. |
| Assignee             | For triggers impacting the assignee of a ticket |
| Notifications        | For triggers sending out notifications |
| SSAT                 | For triggers relating to SSAT |
| Unsorted             | **Deprecated**: This should not have triggers added to it. |

If you are unsure where to place a trigger or believe a new category might be
needed, it is best to speak with the rest of the Support Ops team to discuss.

### Naming standards

As Zendesk triggers support categorization, the naming standards for triggers
revolves around the name of the actual trigger being explicit in what it does.

### Condition standards

Generally speaking, we aim to make trigger conditions as simple as possible.
When possible, you should use condition sets that are very specific and
succinct. As an example, if you wanted a trigger to only run when the form is
`Support Ops`, it is better to simply put a condition of "Form is Support Ops"
than adding exclusions for _every_ other form. This can take time and practice
to learn, so when in doubt, pair with the rest of the Support Ops team!

## Change management

<figure class="video_container">
    <iframe src="https://www.youtube.com/embed/MSkyalDswso" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: While the above video is for Zendesk Automations, the exact same
process applies for Zendesk Triggers. The sole difference in the tags used on
the requests and merge requests.

When it comes to making changes to Zendeks triggers, we utilize the
zendesk-triggers repos instead of doing this via the Zendesk UI. This allows us
to easily revert a change and ensure what is running in our production
instances is what we have approved. To ensure each runs smoothly, we do our
changes in set stages.

### Request stage

All Zendesk trigger changes should start with a request issue. This issue
should stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Triggers"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

While we have scripting and templating in place to find when these are missing,
you should strive to ensure those are present. If you find any of them missing,
please add them.

Once the request is in good standing, you may assign it to yourself (if it is
not already) and add the tag "SupportOps::Doing" to indicate you have started
working on this.

### Testing stage

When making a change to Zendesk triggers (whether it be creation, editing, or
deactivation), we start the process in the Zendesk sandbox. In the Zendesk
sandbox for the corresponding Zendesk instance this impacts, you will make the
desired changes. Once this is done, update the original request issue with the
following:

* A link to the trigger(s) in the Zendesk sandbox
* However much time it took you to implement the changes in the sandbox
  * This can be down using the `/spend X minutes`, where `X` is the number of
    minutes you spent.
* What testing needs to be done.

You will then test these changes. This process should take no less than 3 days
after making the changes. This is to ensure that not only is the change tested
thoroughly, but others have time to review your tests and the results.

As automations often involve time-based events, you might want to lessen the
time event so you can test in a quicker fashion.

Often, you will need assistance testing out changes. Should this be required,
consider reaching out to the following for assistance in testing the changes:

* The original requester
* A fellow Support Ops team member
* A Support Ops Manager

If testing provides failed results, this means we need to update the original
request issue with what happened and why. If this is because of a flaw in the
request, we should state as much and recommend the requester go back to the
original
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue to re-discuss. If it failed due to our implementation, we should detail
what was wrong with the implementation and propose a new method to try.

Once the changes have been thoroughly tested (and are successful), make sure to
add the time you spent doing the testing to the original request.

At that juncture, update the issue with a comment to state testing has completed
and was successful. You should give the requester an opportunity to review the
test(s) and result(s). Ask if they would like to review them. If they decline,
you may move on. If they wish to do so, await their update after they have
reviewed the results.

### Repo stage

To prepare for the implementation, you will need to create a merge request to
the corresponding zendesk-triggers repo (see [Useful links](#useful-links)
down below).

For an existing trigger, this is a simpler approach, since the automation
already has an ID in Zendesk. Make the edits to the file in the repo and submit
the merge request in _draft mode_.

For _new_ triggers, this gets a bit trickier, as there is not an ID in
Zendesk as of yet. To help with this, clone an existing trigger and then
deactivate the cloned copy. You can then use this new triggers's ID value in
the merge request.

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

From here, have one of your fellow Support Ops team members or a Support Ops
Manager review the merge request and add their approval (or comments). Once
approval has been added, an implementation date can be determined.

**Note**: All merge requests in the zendesk-triggers repo should contain the
following labels (the same as with issues):

* "Support-Ops-Category::Triggers"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

### Pre-implementation announcement stage

Once an implementation date has been determined, you need to announce this
upcoming change. To do this, go to the Slack channel
`#support_ops-accouncements` and click the lightning bolt on the text box (this
is the shortcuts icon). From there, select `Support Ops Announcement`. This
will cause a form to pop-up. Fill out the form to generate a message in the
`#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

### Implementation stage

This stage should be the simplest one to implement, as you already have a merge
request ready to go! Simply mark the merge request as ready and merge it. If
you encounter any issues here, reach out to your fellow Support Ops team members
for assistance.

### Post-implementation announcement stage

Once an implementation has been completed, you need to announce the change. To
do this, go to the Slack channel `#support_ops-accouncements` and click the
lightning bolt on the text box (this is the shortcuts icon). From there, select
`Support Ops Announcement`. This will cause a form to pop-up. Fill out the form
to generate a message in the `#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

## Useful links

* [Zendesk Global Trigger documentation](../documentation/zendesk_global_triggers.html)
* [Zendesk US Federal Trigger documentation](../documentation/zendesk_us_federal_triggers.html)
* [Zendesk Global Trigger repo](https://gitlab.com/gitlab-com/support/support-ops/zendesk-triggers)
* [Zendesk US Federal Trigger repo](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-triggers)
* [Zendesk official documentation](https://support.zendesk.com/hc/en-us/articles/203662246-About-triggers-and-how-they-work)
