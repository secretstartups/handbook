---
layout: handbook-page-toc
title: 'Zendesk Groups'
category: Zendesk
description: 'Training documentation concerning Zendesk Groups'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what the Zendesk groups are
* How to create a Zendesk group
* How to edit a Zendesk group
* How to manage users in Zendesk groups
* How to delete a Zendesk Group
* GitLab Support Ops group standards.
* GitLab Support Ops change management process for Zendesk groups.

## What are Zendesk groups

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203661766#topic_iny_3jg_sz):

> Groups collect agents together based on criteria those agents have in common.

For GitLab, we use groups to help in view management primarily.

## How to create a Zendesk group

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/adAcb1F_SaI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To create a group, you must first access the admin panel by clicking on the gear
icon on the left-side of the page. From there, locate the `People` link under
the Manage section. On this page, click the `group` link at the top-right of the
page (next to the word add and between the `user` and `organization` links).

This will bring you to the group creation page. On this page, you will:

* enter the name of the group.
* determine if this should be a default group (this is rarely used by us).
* add a description of the group.
* add agents to the group.

After doing so, click the black `Create group` button at the bottom-right of the
page.

## How to edit a Zendesk group

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/O4Gm0bmpeyc" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To edit a group, you must first access the admin panel by clicking on the gear
icon on the left-side of the page. From there, locate the `People` link under
the Manage section. On this page, click the `groups` below the searchbar at the
top the page (next to the words `or browse` and between `agents` and
`organizations`). From here, locate the group in question and click the black
`edit` link on the right-hand side.

This page will look nearly identical to the creation page. Make the edits you
wish to make and then click the black `Update group` button at the bottom-right
of the page.

## How to manage users in Zendesk groups

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/_1GkCkYnDxY" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

There are two ways to manager the users in Zendesk groups:

* via the groups editor
* via the user's page

For single user edits, the user page is often the quickest method. For mass
edits, you'd be better off using the groups editor.

### Groups editor

This follows the steps for [editing a group](#how-to-edit-a-zendesk-group), in
that you are editing the agents within the group.

### User's page

For this process, locate the user's page in Zendesk. From there, click the
textbox next to the `Groups` header (top-left of the page). This will bring up
boxes for every group on the instance. From here, you can click the boxes you to
either add or remove the group (keep in mind you cannot remove the user's
default group). After doing so, click the `Close` button on the bottom-right of
the pop-up menu.

## How to delete a Zendesk group

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/PrR9dFzdxig" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To delete a group, you must first access the admin panel by clicking on the gear
icon on the left-side of the page. From there, locate the `People` link under
the Manage section. On this page, click the `groups` below the searchbar at the
top the page (next to the words `or browse` and between `agents` and
`organizations`). From here, locate the group in question and click the black
`edit` link on the right-hand side.

On the edit page (where you should now be), scroll to the very bottom of the
page and click the `Delete` button.

## Group standards

To ensure all groups we utilize are both consistent in nature and transparent in
their natures, we strive to meet some standards on all groups we work with.

### Naming standards

The name used for the group should be simple, clear, and concise. You want the
name to convey what the group is used for.

## Change managemenet

As this normally ties into views, you will normally follow the same change
management process as [Zendesk views](views.html#change-management).

If you are specifically just changing groups, the only real changes would be:

* the label used is "Support-Ops-Category::Orgs and Users" instead of
  "Support-Ops-Category::Views".
* it is not going to need 3 days of testing, since this is harmless by itself
  normally.

## Useful links

* [Zendesk Organization and groups documentation](https://support.zendesk.com/hc/en-us/articles/203661766)
