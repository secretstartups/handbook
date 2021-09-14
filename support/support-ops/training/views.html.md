---
layout: handbook-page-toc
title: 'Zendesk View Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Views'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk view is.
* Creating/editing/deactivating Zendesk views via the UI
* Understanding Zendesk views positioning.
* GitLab Support Ops view standards.
* GitLab Support Ops change management process for Zendesk views.

## What are views

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203690806-Creating-views-to-manage-ticket-workflow):

> Views are a way to organize your tickets by grouping them into lists based on
> certain criteria. For example, you can create a view for unsolved tickets that
> are assigned to you, a view for new tickets that need to be triaged, or a view
> for pending tickets that are awaiting response. Using views can help you
> determine what tickets need attention from you or your team and plan
> accordingly.

When working with views, there are 3 things to keep in mind:

1. the type of view being used.
  * Default - a pre-defined view created by Zendesk
  * Shared - views created by Zendesk Administrators
    * These can be globally visible or visible on a group level
  * Personal - views created by agents and only visible to the creator
1. only the top 12 non-personal views (default and shared) will be shown.
1. view cannot use criteria that is not "static", meaning it must be selectable
   (text fields will not work, as an example).

## Creating a view via Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/KIcieIX5kGI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To create a view, you will first go to the admin panel by clicking on the gear
icon on the left-hand side of Zendesk. From there, locate the Manage section and
then click on the Views link.

Once on the view list page, click the `Add view` button on the top-right of the
page. This will bring up the view creation page.

On this page, you will enter:

* the name of the view
* a description of the view (normally a request link)
* who has access to the view
  * `Any agent` means it is globally shared
  * `Agents in a specific group` means it is shared only to those in specific
    groups
  * `Only you` means you are making a personal view
* the conditions of the view
  * It is recommend to use the `Preview` feature to be sure the tickets it pulls
    are the ones you intended for it to pull.
* which columns to show in the view (and in what order from left to right)
* what grouping to use (and which order for the grouping)
  * **Note**: grouping order is based on the group item's Zendesk ID
* what sorting to use (and which order for the sorting)
* **Note**: sorting order is based on the group item's Zendesk ID

With all of that entered, click the blue `Save` button at the bottom-right of
the page to create the view.

## Editing a view via Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/niDHNc-R2ZE" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To edit a view, you will first go to the admin panel by clicking on the gear
icon on the left-hand side of Zendesk. From there, locate the Manage section and
then click on the Views link.

Once on the view list page, locate the view in the list (if looking to edit a
personal view, you will need to change the filter on the left side below the
`Add view` button to `Personal views`) and click on the title. This will bring
up the view editor page (which is essentially the same as the view creation
page).

Once you are done making your edits, click the blue `Save` button at the
bottom-right of the page to save the changes.

## Deactivating a view via Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/fA-8pGHReRE" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

There are actually two ways to deactivate a view in the Zendesk UI. The quicker
way is to go to the view list page, locate the view in question, hover over it,
and click the three vertical dots on the right-hand side. This will bring up a
sub-menu, which contains the option to `Deactivate`. Click that option and the
view will be deactivated.

The alternative way to deactivate a view in the Zendesk UI is from within the
view editor page. On that page, click the three vertical dots at the top-right
of the page, and click `Deactivate view` from the sub-menu that appears.

**Note**: Deactivating a view does not change its position. This value is
retained in the backend. Re-enabling the view will have it take the same
position it was in while previously active.

## Positioning

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/TBD" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Because only 12 non-personal views can be shown to any one agent, positioning is
very important for views. You cna make hundreds of them, but they won't all show
(and if no one can see the view, it isn't very useful). As such, you need
consider the following when creating/editing views:

* what views are the most important for agents.
* which views absolutely need to show based on the agent workflows.
* what kind of groups can agents be in, and how that might conflict with the
  views that show

## View standards

To ensure all views we utilize are both consistent in nature and transparent in
their actions, we strive to meet some standards on all views we work with.

### Naming standards

The name used for the view should be simple, clear, and concise. You want the
name to convey what the view is used for.

### Condition standards

Generally speaking, we aim to make view conditions as simple as possible. When
possible, you should use condition sets that are very specific and succinct. As
an example, if you wanted a view to only run when the form is `Support Ops`, it
is better to simply put a condition of "Form is Support Ops" than adding
exclusions for _every_ other form. This can take time and practice to learn, so
when in doubt, pair with the rest of the Support Ops team!

## Change management

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/MSkyalDswso" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: While the above video is for Zendesk Automations, the exact same
process applies for Zendesk Views. The sole difference is the tags used on the
requests and merge requests.

When it comes to making changes to Zendesk views, we utilize the zendesk-views
repos instead of doing this via the Zendesk UI. This allows us to easily revert
a change and ensure what is running in our production instances is what we have
approved. To ensure each runs smoothly, we do our changes in set stages.

### Request stage

All Zendesk view changes should start with a request issue. This issue should
stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Views"
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

When making a change to Zendesk views (whether it be creation, editing, or
deactivation), we start the process in the Zendesk sandbox. In the Zendesk
sandbox for the corresponding Zendesk instance this impacts, you will make the
desired changes. Once this is done, update the original request issue with the
following:

* A link to the views(s) in the Zendesk sandbox
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
the corresponding zendesk-views repo (see [Useful links](#useful-links) down
below).

For an existing view, this is a simpler approach, since the view already has an
ID in Zendesk. Make the edits to the file in the repo and submit the merge
request in _draft mode_.

For _new_ views, this gets a bit trickier, as there is not an ID in Zendesk as
of yet. To help with this, clone an existing view and then deactivate the
cloned copy. You can then use this new views's ID value in the merge request.

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

From here, have one of your fellow Support Ops team members or a Support Ops
Manager review the merge request and add their approval (or comments). Once
approval has been added, an implementation date can be determined.

**Note**: All merge requests in the zendesk-views repo should contain the
following labels (the same as with issues):

* "Support-Ops-Category::Views"
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
upcoming change. To do this, use the following template:

> As per the request ISSUE_LINK of REQUESTER, we are planning to implement
> BRIEF_SUMMARY_OF_CHANGES. This is slated to be done on DATE. The impact you
> might see is BRIEF_SUMMARY_OF_IMPACT.

You will announce this in two places:

* Post in the slack channel `#support_operations`
* Add to the most recent "Things to Know About" section of the
  [Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
  document

After posting, you then want to cross-link (copy the link to the post) the
announcement in the slack channel `#support_operations` to the following
channels:

* `#support_team-chat`
* `#spt_managers`

### Implementation stage

This stage should be the simplest one to implement, as you already have a merge
request ready to go! Simply mark the merge request as ready and merge it. If
you encounter any issues here, reach out to your fellow Support Ops team members
for assistance.

### Post-implementation announcement stage

Once an implementation has been completed, you need to announce it! To do this, use
the following template:

> As per the request ISSUE_LINK of REQUESTER, we have implemented
> BRIEF_SUMMARY_OF_CHANGES. The impact you might see is BRIEF_SUMMARY_OF_IMPACT.
> Please direct any issues/comments/feedback you see to the issue linked above.

You will announce this in two places:

* Post in the slack channel `#support_operations`
* Add to the most recent "Things to Know About" section of the
  [Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
  document

After posting, you then want to cross-link (copy the link to the post) the
announcement in the slack channel `#support_operations` to the following
channels:

* `#support_team-chat`
* `#spt_managers`

## Useful links

* [Zendesk Global view documentation](../documentation/zendesk_global_views.html)
* [Zendesk US Federal view documentation](../documentation/zendesk_us_federal_views.html)
* [Zendesk View documentaiton](https://support.zendesk.com/hc/en-us/articles/203690806-Creating-views-to-manage-ticket-workflow)
* [Zendesk Global views repo](https://gitlab.com/gitlab-com/support/support-ops/zendesk-views)
* [Zendesk US Federal views repo](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-views)
