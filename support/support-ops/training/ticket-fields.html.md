---
layout: handbook-page-toc
title: 'Zendesk Ticket Fields Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Ticket Fields'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk ticket field is.
* The various types of ticket fields
* The options involved with ticket fields
* Creating/editing/deactivating Zendesk ticket fields via the UI
* GitLab Support Ops autoticket field standards.
* GitLab Support Ops change management process for Zendesk ticket fields.

## What are ticket fields

Ticket fields are the individual components that make up a ticket form. They
can be customized to ask for specific information and help generate ticket
metadata. Typically, there are two types of ticket fields:

* System ticket fields - ones pre-built into Zendesk
* Custom ticket fields - ones built by us into Zendesk

## Types of ticket fields

There are several types of ticket fields, however the only ones we use are as
follows:

| Field Type   | Usage |
|--------------|-------|
| Drop-down    | A select box containing a list of items (only one can be selected) |
| Text         | A single line textbox |
| Multi-line   | A textbox allowing for multiple lines |
| Checkbox     | A checkbox allowing for boolean style data |
| Numeric      | A textbox allowing for only whole numbers |
| Decimal      | A textbox allowing for decimal type numbers |
| Date         | A textbox allowing for date strings only |
| Regex        | A textbox allowing for strings only matching a specific regex formula |

## Ticket field options

While the exact options vary from type to type, the options you will generally
see are:

* Permissions
  * Agent only - seen only on the agent ticket page, not visible to end-users
  * Editable for end users - seen by both agents and end-users (read and write)
  * Read-only for end users - seen by both agents and end-users (read only)
* Title shown to agents - what name to show on the agent side (this is
  inheritied from the ticket field title)
* Required to solve a ticket - a conditional that specifies a ticket cannot be
  set to solved unless this field is populated (note conditions on ticket forms
  can override this)
* Title shown to end users - what name to show on the end user side
* Required to submit a request - a conditional that specifies a ticket cannot be
  created by an end user unless this field is populated (note conditions on
  ticket forms can override this)
* Description shown to end users - the text to show below the field on a ticket
  form
* Field values
  * Value - the name to display in the drop-down item
  * Tag - the tag to apply when this option is selected
* Tag - what tag to apply when the field is populated (applies only for the
  checkbox ticket field type)
* Field validation - the regex formula to use for the ticket field

## Creating a ticket field via Zendesk

**Note**: As of 2021-09-21, Zendesk has changed the location of the ticket
fields management pages. They are now located in the Admin Center, which you
can locate by clicking the four squares in the top-right of the page and
clicking the Admin Center link. After doing so, you can locate the ticket
fields management pages under `Objects and rules` > `Tickets` > `Fields`. All
videos are of the old location (i.e. in the admin panel). Once you access the
management pages, the steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/NrGHsoIy_74" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To create a ticket field via the Zendesk UI, you will first go to the Admin
Center, which you can locate by clicking the four squares in the top-right of
the page and clicking the Admin Center link. After doing so, you can locate the
ticket fields management pages under `Objects and rules` > `Tickets` > `Fields`.
From there, click the `Add field` button at the top-right of the page.

You will then give your ticket field a title by clicking on `New field` at the
top of the page (keep in mind the title shown to agents is determined from the
title you enter). After doing that, you will then select the field type.

Next, you will enter the permission information. This will vary depending on
what you want the ticket field to look and act like.

You will then enter any options specific to the ticket field itself.

Finally, click the blue `Save` button in the bottom right-hand side of the page.

## Editing a ticket field via Zendesk

**Note**: As of 2021-09-21, Zendesk has changed the location of the ticket
fields management pages. They are now located in the Admin Center, which you
can locate by clicking the four squares in the top-right of the page and
clicking the Admin Center link. After doing so, you can locate the ticket
fields management pages under `Objects and rules` > `Tickets` > `Fields`. All
videos are of the old location (i.e. in the admin panel). Once you access the
management pages, the steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/I02txo77PYE" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To edit a ticket field via the Zendesk UI, you will first go to the Admin
Center, which you can locate by clicking the four squares in the top-right of
the page and clicking the Admin Center link. After doing so, you can locate the
ticket fields management pages under `Objects and rules` > `Tickets` > `Fields`.
From there, locate the ticket field in question amongst the list of all ticket
fields. After doing so, click on the name of the ticket field.

From here, you can tweak the settings of the ticket field.

One you are done editing, click the blue `Save` button in the bottom right-hand
side of the page.

## Deactivating a ticket field via Zendesk

**Note**: As of 2021-09-21, Zendesk has changed the location of the ticket
fields management pages. They are now located in the Admin Center, which you
can locate by clicking the four squares in the top-right of the page and
clicking the Admin Center link. After doing so, you can locate the ticket
fields management pages under `Objects and rules` > `Tickets` > `Fields`. All
videos are of the old location (i.e. in the admin panel). Once you access the
management pages, the steps to create/edit/etc. are the same.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/J-hK4QfQuCM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To deactivate a ticket field via the Zendesk UI, you will first go to the Admin
Center, which you can locate by clicking the four squares in the top-right of
the page and clicking the Admin Center link. After doing so, you can locate the
ticket fields management pages under `Objects and rules` > `Tickets` > `Fields`.
From there, locate the ticket field in question amongst the list of all ticket
fields.

From here, there are two ways to deactivate the ticket field:

* Hover over the field and click the three vertical dots on the right side of
the field item, then click on Deactivate in the pop-up menu.
* Click on the ticket field title, click on the three vertical dots on the top
right-hand side, then click Deactivate.

Re-activating a ticket field is the same process, but instead you'd make sure to
click the `Inactive` tab on the ticket field list page and ensure the option
you click in the pop-up menu is `Activate`.

## Ticket field standards

To ensure all ticket fields we utilize are both consistent in nature and
transparent in their actions, we strive to meet some standards on all
ticket fields we work with.

### Naming standards

The title of the ticket field should be as clear and concise as possible. The
objective is for the agents working tickets and the Zendesk admins to be able to
understand what the ticket field is for and what information it contains.

### Dropdown standards

With drop-downs, aim to make the information as clear and concise as possible.
Lengthy wordings here can render poorly at times in the ticket form.

There will be times when you cannot avoid it. In those cases, you'll want to
double check what it will look like to the end-user and the agent before
committing the option to production.

### Tagging standards

Whenever possible, we want tags generated from ticket fields. The tags should be
very unique and align with the title of the ticket field.

As an example, if you are making a drop-down called "Billing Problem Type", you
would want the tags used to reflect that as well as the option they represent.

| Option | Tag |
|--------|-----|
| I want a discount         | billing_problem_discount |
| My credit card won't work | billing_problem_cc_issue |
| Other                     | billing_problem_other |

We do this to ensure the tags do not collide with one another and so we can get
very specific information via data queries.

## Change management

As this usually stems from changes to ticket forms, it will follow the exact
same change management process as those. For more information, see [Ticket Forms Change Management](/handbook/support/support-ops/training/ticket-forms.html).

## Useful links

* [Ticket Forms training](/handbook/support/support-ops/training/ticket-forms.html)
* [ticket-forms-and-fields repo for Zendesk Global](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/ticket-forms-and-fields)
* [ticket-forms-and-fields repo for Zendesk US Federal](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/ticket-forms-and-fields)
