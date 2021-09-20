---
layout: handbook-page-toc
title: 'Zendesk Emails'
category: Zendesk
description: 'Training documentation concerning Zendesk Emails'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what the Zendesk email is
* How to create a Zendesk email
* How to edit a Zendesk email
* How to delete a Zendesk email
* GitLab Support Ops change management process for Zendesk emails

## What are Zendesk emails

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203663256-Getting-started-with-email-in-Zendesk-Support):

> Email is one way that end-users can submit tickets to Zendesk Support and have
> conversations with agents to resolve their issues.

Basically, Zendesk emails enable an end-user to email an address and have a
ticket created from it. Usage of this varies widely from instance to instance.

## How to create a Zendesk email

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/BT_gsitram0" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: While you can connect external email addresses to Zendesk, we do not
do this at GitLab. Instead, we create Zendesk email addresses and have the
GitLab email group forward to said Zendesk email address.

To create a Zendesk email, you first need to go to the admin panel (by clicking
on the gear icon on the left-hand side of the page). from there, click the
`Emails` link (under the `Channels` section).

You will then click `Add address` on the top-right of the page. This will have a
dropdown appear. In this dropdown, click `Create new Zendesk address`. A pop-up
box will appear asking you to enter the username for the address. This should
match the username of the GitLab email address exactly (this avoids a lot of
confusion).

After doing this, click the black `Create now` button.

**Note**: This does not create the GitLab email address. To have that done, you
will need to file an
[Access Request issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues)
to have it created. Make sure in the issue to specify the Zendesk email address
to forward the emails to.

## How to edit a Zendesk email

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/ljeiVV9gYUU" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: You can only edit the name of a Zendesk email after creation. If you
need to change the address, you will need to delete the existing one and create
a whole new one.

To edit a Zendesk email, you first need to go to the admin panel (by clicking on
the gear icon on the left-hand side of the page). from there, click the `Emails`
link (under the `Channels` section).

From here, locate the email address you wish to edit and then click the `edit`
link on the right-hand side of the email address. Doing so will make a pop-up
box appear.

Here, you can edit the name of the address.

## How to delete a Zendesk email

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/4thlcXwk6l0" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Warning!** This can be disastrous and can cause issues. Only do this when you
are 110% sure this needs to be done. An unused email address is annoying but
safe. A deleted email address that was in use causes many issues!

To delete a Zendesk email, you first need to go to the admin panel (by clicking
on the gear icon on the left-hand side of the page). from there, click the
`Emails` link (under the `Channels` section).

From here, locate the email address you wish to delete, hover over it, and then
click the `delete` link.

link on the right-hand side of the email address. Doing so will make a pop-up
box appear. A pop-up box will appear asking you to confirm the deletion. Click
the black `Delete address` button to confirm.

## Change managemenet


<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/MSkyalDswso" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: While the above video is for Zendesk Automations, the exact same
process applies for Zendesk Emails. The sole difference in the tags used on the
requests and merge requests (if any).

To ensure each runs smoothly, we do our changes in set stages.

### Request stage

All Zendesk email changes should start with a request issue. This issue should
stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue (or similar issue) where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Other"
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

When making a change to Zendesk emails (whether it be creation, editing, or
deactivation), we start the process in the Zendesk sandbox. In the Zendesk
sandbox for the corresponding Zendesk instance this impacts, you will make the
desired changes. Once this is done, update the original request issue with the
following:

* A screenshot to the email changes in the Zendesk sandbox
* Links to any triggers/automations being changed
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

To prepare for the implementation, you may need to create a merge request to
the corresponding zendesk-triggers repo. For more info on that, see the
[Zendesk Triggers training doc](#triggers.html#repo-stage).

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

In this stage, you will make the changes in the production Zendesk and merge
any related MRs.

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

* [Zendesk email docs](https://support.zendesk.com/hc/en-us/articles/203663256-Getting-started-with-email-in-Zendesk-Support)
* [Zendesk Triggers training doc](triggers.html)
