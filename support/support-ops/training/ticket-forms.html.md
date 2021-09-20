---
layout: handbook-page-toc
title: 'Zendesk Ticket Forms Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Ticket Forms'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk ticket form is.
* Creating/editing/deactivating Zendesk ticket fields via the UI
* GitLab Support Ops ticket form standards.
* GitLab Support Ops change management process for Zendesk ticket form.

## What are ticket form

Ticket forms are the forms utilized by the user to create tickets (when using the web UI). These then translate the responses on the form into ticket metadata.

These fall into one of two types:

* Public - meaning both agents and end-users can see these
* Internal - meaning only agents can see these

## Creating a ticket form via Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/K50KeqERqkI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To create a ticket form via the Zendesk UI, you will first go to the admin
panel (click the gear icon on the left-hand side). From there, locate the Ticket
Forms link (under the Manage section towards the top) on the left-hand side.
From there, click the `Add form` button at the top-right of the page.

From here, you will do the following:

* enter a title form the form
* determine if the form is internal (agent only) or external (editable for end
  users)
* what title to show to end users (if the form is editable for end users)
* What ticket fields to use (and in what order)

After getting all that into plkace, click the blue `Save` button in the bottom
right-hand side of the page.

From here, you need to edit the _conditions_ the form uses for both agents and
end users (for external forms). To do this, locate the form in question and
hover over it. This will allow you to click the three vertical dots on the
right-hand side of the form listing to bring up a pop-up menu. In this menu,
click `Conditions`.

The first page that comes up is the agent conditions. To add a condition, click
the `Add condition` button at the top-right of the page. From here, select which
field the condition applies on. You will then select which value the condition runs on and what ticket fields to show when the condition is met.

Once you have all the conditions you want for the agent side, click the
drop-down at the top of the page and select `End users`. Here, you will select
the conditions to apply for end-users.

Once you have completed all the conditions you want to add, click the blue
`Save` button in the bottom-right of the page.

## Editing a ticket form via Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/jm_GDy7D6s8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To edit a ticket form via the Zendesk UI, you will first go to the admin
panel (click the gear icon on the left-hand side). From there, locate the Ticket
Forms link (under the Manage section towards the top) on the left-hand side.
From there, locate the ticket form in question you want to edit.

To edit the name, visibility, or fields used, click the title itself.

To edit the conditions, hover over the form, which will allow you to click the
three vertical dots on the right-hand side of the form listing to bring up a
pop-up menu. In this menu, click `Conditions`.

From there, the process matches what you'd see with
[creating a ticket form via zendesk](#creating-a-ticket-form-via-zendesk).

## Deactivating a ticket form via Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/vAYVvX6EBI0" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To deactivate a ticket form via the Zendesk UI, you will first go to the admin
panel (click the gear icon on the left-hand side). From there, locate the Ticket
Forms link (under the Manage section towards the top) on the left-hand side.
From there, locate the ticket form in question you want to deactivate.

From here, there are two ways to deactivate the ticket form:

* Hover over the form and click the three vertical dots on the right side of
  the form item, then click on Deactivate in the pop-up menu.
* Click on the ticket form title, click on the three vertical dots on the top
  right-hand side, then click Deactivate.

Re-activating a ticket form is the same process, but instead you'd make sure to
click the `Inactive` tab on the ticket form list page and ensure the option
you click in the pop-up menu is `Activate`.

## Ticket form standards

To ensure all ticket forms we utilize are both consistent in nature and
transparent in their actions, we strive to meet some standards on all
ticket forms we work with.

### Naming standards

The name used for the form should be simple, clear, and concise. You want the
name to convey what the form is used for.

### Title shown to end users

For this, you want the title to indicate what the form is for in a way any
GitLab user would understand. As such, you should use methods such as "Support
for xxx" or "Contact the xxx team".

### Appearance

Many of the decisions made on how you generate/edit a ticket form is based on
how it will appear for end-users. As such, you should strive to ensure all
changes create a pleasing and simple process for end-users to submit tickets.

## Change management

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/MSkyalDswso" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: As this process mirrors that used for
[automations](automations.html#change-management), the above video is concerning
automations specifically. While it focuses there, the process is essentially
the same.

When it comes to making changes to Zendeks ticket forms, we utilize the
zendesk-ticket-forms-and-fields repos instead of doing this via the Zendesk UI.
This allows us to easily revert a change and ensure what is running in our
production instances is what we have approved. To ensure each runs smoothly, we
do our changes in set stages.

### Request stage

All Zendesk ticket form changes should start with a request issue. This issue
should stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* ""Support-Ops-Category::Forms""
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

When making a change to Zendesk ticket forms (whether it be creation, editing,
or deactivation), we start the process in the Zendesk sandbox. In the Zendesk
sandbox for the corresponding Zendesk instance this impacts, you will make the
desired changes. Once this is done, update the original request issue with the
following:

* A link to the ticket forms in the Zendesk sandbox (include both the admin
  link and the end-user visible link)
* However much time it took you to implement the changes in the sandbox
  * This can be down using the `/spend X minutes`, where `X` is the number of
    minutes you spent.
* What testing needs to be done.

You will then test these changes. This process should take no less than 3 days
after making the changes. This is to ensure that not only is the change tested
thoroughly, but others have time to review your tests and the results.

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
the corresponding zendesk-ticket-forms-and-fields repo (see
[Useful links](#useful-links) down below).

For an existing ticket forms, this is a simpler approach, since the ticket form
already has an ID in Zendesk. Make the edits to the file in the repo and submit
the merge request in _draft mode_.

For _new_ ticket forms, this gets a bit trickier, as there is not an ID in
Zendesk as of yet. To help with this, clone an existing ticket form and then
deactivate the cloned copy. You can then use this new ticket form's ID value in
the merge request.

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

From here, have one of your fellow Support Ops team members or a Support Ops
Manager review the merge request and add their approval (or comments). Once
approval has been added, an implementation date can be determined.

**Note**: All merge requests in the zendesk-ticket-forms-and-fields repo should
contain the following labels (the same as with issues):

* "Support-Ops-Category::Forms"
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

* [zendesk-ticket-forms-and-fields repo for Zendesk Global](https://gitlab.com/gitlab-com/support/support-ops/zendesk-ticket-forms-and-fields)
* [zendesk-ticket-forms-and-fields repo for Zendesk US Federal](https://ops.gitlab.new/gitlab-com/support/zendesk-us-federal/zendesk-ticket-forms-and-fields)
