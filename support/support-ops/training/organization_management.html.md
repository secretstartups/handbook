---
layout: handbook-page-toc
title: 'Zendesk Organization Management Training'
category: Zendesk
description: 'Training documentation concerning managing Zendesk organizations'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what Zendesk organizations are
* An overview of the Zendesk organization page
* Managing Zendesk organizations via the UI
* Shared organizations
* Managing Zendesk organizations via the sync repo

## What are organizations

Organizations are simply a collection of users in Zendesk (much like groups). We
use them to also store metadata (synced from Salesforce), which is used to
determine such things as SLA, ARR, etc.

## The organization page

The organization page in Zendesk contains a wealth of knowledge. To help make it
more digestible, we often break it down into various sections.

### Organization name

![App](/images/support/organization_page_name.jpg)

Towards the top center of the page is the organization's name.

### Organization details

![App](/images/support/organization_page_details.jpg)

On the top left of the page, you will find the organization details section.
This contains information such as:

* Organization tags, applied on every new ticket filed under the organization
  (most of these are auto-generated)
* Any domains associated to the organization (deprecated feature, do not use
  this)
* Any groups the organization is a part of (GitLab does not use this)
* Shared organization permissions
* Any organization details (managed via a sync repo)
* Any organization notes (managed via a sync repo)

### Organization fields

![App](/images/support/organization_page_fields.jpg)

Below the organization details section you will find the organization fields
section. These come from the Zendesk<>SFDC sync and should not be edited
manually. This contains data from fields GitLab has generated. Currently these
are:

* Salesforce ID - the Salesforce ID of the organization
* GitLab Plan - the support level they are entitled to
* ARR - the projected annual recurring revenue from the organization
* Sales Segmentation - the market segment they fall into
* Account Owner - The organization's AM
* Account Type - the type of account
* Technical Account Manager - the organization's TAM
* AM Project ID - the project ID where information about the organization is
  held (such as architecture diagram, allowed users, etc.)
* Number of Seats - the number of seats in their license
* Manual Support Upgrade - if this account is entitled for priority prospect
  support (prospects only)
* Region - the region this organization is in
* Creation date - the date the organization was created
* Updated date - the last date this organization was updated

### Organization tickets

![App](/images/support/organization_page_tickets.jpg)

In the middle of the page you will see all tickets associated to the
organization.

### Organization users

![App](/images/support/organization_page_users.jpg)

After clicking the `Users` tab, this section will show you all users associated
to the organization.

## Managing Zendesk organizations via the UI

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/sxWLhZgNBjw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: This is for educational purposes only. Do not manually create or edit
organizations. This can break the ZD<>SFDC integration and cause users to
receive incorrect SLAs. If you notice an organization needs to be created,
please notify a Support Ops manager to rectify this.

To manage an organization via the Zendesk UI, you simply go to the
organization's page, click in the area you wish to edit, and make the changes.
Once you click out of the area, these changes will be saved.

## Shared organizations

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/cDUsyt6pIlk" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

There is a lot of to shared organizations, so it is highly recommended you
follow the
[Shared Organizations workflow](../workflows/shared_organizations.html) and the
video above. Should you have any questions on this, please reach out to your
fellow Support Ops team members for assistance.

## Managing Zendesk organizations via the sync repo

Much like many other aspects of Zendesk, we try to manage some aspects of
organizations via sync repos. For Zendesk Global, this would be done via the
[zendesk-organizations repo](https://gitlab.com/gitlab-com/support/support-ops/zendesk-organizations).
Here, you will see files containing the organization's editable information
(the filenames are the Zendesk ID of the organization). Currently, the only
editable information is:

* Organization details
* Organizations notes

## Useful links

* [zendesk-organizations repo](https://gitlab.com/gitlab-com/support/support-ops/zendesk-organizations)
* [Shared Organizations workflow](../workflows/shared_organizations.html)
