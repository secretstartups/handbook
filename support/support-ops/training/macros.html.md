---
layout: handbook-page-toc
title: 'Zendesk Macro Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Macros'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk macro is
* Creating/editing/deactivating Zendesk macros via the UI
* A quick note on macro positioning
* GitLab Support Ops macro standards
* GitLab Support Ops change management process for Zendesk macros

## What are macros

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/115001236988-Creating-macros-for-tickets):

> A macro is a prepared response or action that an agent can manually apply
> when they are creating or updating tickets. Macros contain actions that can
> update ticket properties.
>
> Unlike triggers and automations, macros only contain actions, not conditions.
> Conditions aren't used because nothing is automatically evaluating tickets to
> determine if a macro should be applied. Agents evaluate tickets and apply
> macros manually as needed.

## Creating a macro via Zendesk

**Note**: As of 2021-09-21, Zendesk has changed the location of the macros
management pages. They are now located in the Admin Center, which you can locate
by clicking the four squares in the top-right of the page and clicking the
Admin Center link. After doing so, you can locate the macros management pages
under `Workspaces` > `Agent workspace` > `Macros`. All videos are of the old
location (i.e. in the admin panel). Once you access the management pages, the
steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/6jyrqucevLU" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To create a macro in Zendesk, you first need to go to the Admin Center, which
you can locate by clicking the four squares in the top-right of the page and
clicking the Admin Center link. After doing so, you can locate the macros
management pages under `Workspaces` > `Agent workspace` > `Macros`.

After doing so, you will then click the `Add macro` button on the top-right
side of the page. This will then load up the new macro page.

From here, you will:

1. enter a name for the macro.
1. enter a description for the macro.
1. use the dropdown to determine who can apply this macro.
1. enter the actions for the macro to perform.

After doing this, you will then click the blue `Create` button.

## Editing a macro via Zendesk

**Note**: As of 2021-09-21, Zendesk has changed the location of the macros
management pages. They are now located in the Admin Center, which you can locate
by clicking the four squares in the top-right of the page and clicking the
Admin Center link. After doing so, you can locate the macros management pages
under `Workspaces` > `Agent workspace` > `Macros`. All videos are of the old
location (i.e. in the admin panel). Once you access the management pages, the
steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/wnRWTICvTDI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Editing a Zendesk macro is very similar to
[creating one](#creating-a-macro-via-zendesk). You will follow the same steps
to get the macros page. Instead of clicking the `Add macro` button, you will
instead locate the macro to edit in the list and click on the name (if your
macro is currently inactive, you will need to click the `Inactive` tab, located
above the list of macro).

Doing so will bring up the macros editor page. From here, you can tweak the
various aspects of the macro. Once you have the edits in place, click the blue
`Save` button.

## Deactivating a macro via Zendesk

**Note**: As of 2021-09-21, Zendesk has changed the location of the macros
management pages. They are now located in the Admin Center, which you can locate
by clicking the four squares in the top-right of the page and clicking the
Admin Center link. After doing so, you can locate the macros management pages
under `Workspaces` > `Agent workspace` > `Macros`. All videos are of the old
location (i.e. in the admin panel). Once you access the management pages, the
steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/K6zVZuNb1XI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

There are actually two ways to deactivate a macro in the Zendesk UI. The
quicker way is to go to the macros page, locate the macro in question, hover
over it, and click the three vertical dots on the right-hand side. This will
bring up a sub-menu, which contains the option to `Deactivate`. Click that
option and the macro will be deactivated.

The alternative way to deactivate a macro in the Zendesk UI is from within the
macro editor page. On that page, click the three horizontal dots in the
top-right of the page and select `Deactivate` from the menu.

## Positioning

While macros do have positions, we often do not worry about this. This is
because the menu used by agents is searchable and readily navigatable. We also
have a lot of macros, so trying to micro-manage the positions would not be
[efficient](../../../values/#efficiency).

## Macro standards

To ensure all macros we utilize are both consistent in nature and transparent
in their actions, we strive to meet some standards on all macros we work with.

### Naming standards

Macros are a bit unique in Zendesk. They have categorization, but it is not
obvious in the UI. Instead, the categorization is determined based on the name
of the macro itself. Essentially, every group of words becomes a "folder" of
sorts in the macros dropdown selector. The separator currently used by Zendesk
is two colons (`::`).

This can get a bit confusing and hard to learn the ins and outs of, so when in
doubt, reach out to your fellow Support Ops team members.

## Change management

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/scoYbwaVb1w" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

When it comes to making changes to Zendesk macros, we utilize the
zendesk-macros repos instead of doing this via the Zendesk UI. This allows us
to easily revert a change and ensure what is running in our production
instances is what we have approved. To ensure each runs smoothly, we do our
changes in set stages.

### Request stage

All Zendesk macro changes should start with a request issue or a merge request
(henceforth called an issue).

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Macros"
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

Macros are relatively harmless since they have to be manually applied. As such,
testing is only done when the Support Operations team member feels it is
required. Should you decide testing is required, you will start the process in
the Zendesk sandbox. In the Zendesk sandbox for the corresponding Zendesk
instance this impacts, you will make the desired changes. Once this is done, update the original request issue with the following:

* An explanation for why you determined testing was required
* A link to the macro in the Zendesk sandbox
* However much time it took you to implement the changes in the sandbox
  * This can be down using the `/spend X minutes`, where `X` is the number of
    minutes you spent.
* What testing needs to be done.

You will then test these changes. This process should take no more than 1 day
after making the changes. This is to ensure that not only is the change tested
thoroughly, but others have time to review your tests and the results.

Often, you will need assistance testing out changes. Should this be required,
consider reaching out to the following for assistance in testing the changes:

* The original requester
* A fellow Support Ops team member
* A Support Ops Manager

If testing provides failed results, this means we need to update the original
request issue with what happened and why. If this is because of a flaw in the
request, we should state as much and recommend the requester discuss this with
their team. If it failed due to our implementation, we should detail what was
wrong with the implementation and propose a new method to try.

Once the changes have been thoroughly tested (and are successful), make sure to
add the time you spent doing the testing to the original request.

At that juncture, update the issue with a comment to state testing has completed
and was successful. You should give the requester an opportunity to review the
test(s) and result(s). Ask if they would like to review them. If they decline,
you may move on. If they wish to do so, await their update after they have
reviewed the results.

### Repo stage

To prepare for the implementation, you will need to create a merge request (if
the request was not made via a merge request) to the corresponding
zendesk-macros repo (see [Useful links](#useful-links) down below).

For an existing macro, this is a simpler approach, since the macro already has
an ID in Zendesk. Make the edits to the file in the repo and submit the merge
request in _draft mode_.

For _new_ macros, this gets a bit trickier, as there is not an ID in Zendesk as
of yet. To help with this, clone an existing macro and then deactivate the
cloned copy. You can then use this new macros's ID value in the merge request.

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

**Note**: All merge requests in the zendesk-macros repo should contain the
following labels (the same as with issues):

* "Support-Ops-Category::Macros"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

### Review stage

In this stage, whomever is marked as a reviewer for the merge request will
review the changes being made. Often, this will be a Support Ops team member
and a Support Manager. Once all parties have reviewed and approved the changes,
you are good to move on to the next stage.

### Implementation stage

This stage should be the simplest one to implement, as you already have a merge
request ready to go! Simply mark the merge request as ready and merge it. If
you encounter any issues here, reach out to your fellow Support Ops team members
for assistance.

Any announcements needing to be made should be by the requester themselves.

## Merge request reviewers

We utilize
[Code Owners](https://docs.gitlab.com/ee/user/project/code_owners.html) in the
zendesk-macros repos for approvers who are not Support Ops team members. Should
any changes need to be made to this, you would submit a merge request that
makes the changes in the `.gitlab/CODEOWNERS` file.

## Useful links
* [Zendesk Global Macro documentation](../documentation/zendesk_global_macros.html)
* [Zendesk US Federal Macro documentation](../documentation/zendesk_us_federal_macros.html)
* [Zendesk Global Macro repo](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros)
* [Zendesk US Federal Macro repo](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-macros)
* [Zendesk official documentation](https://support.zendesk.com/hc/en-us/articles/115001236988-Creating-macros-for-tickets)
