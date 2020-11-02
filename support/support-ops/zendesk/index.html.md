---
layout: handbook-page-toc
title: Zendesk Overview for Support Operations
description: Overview of how ZenDesk is managed by Support Operations.
---

# Zendesk Overview

Pages to read for more information:

* [Organizations](organizations.html)
* [Schedules](schedules.html)
* [SLA Policies](slas.html)
* [Tags](tags.html)
* [Tickets](tickets.html)
* [Users](users.html)

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Macros

Instead of managing these via Zendesk itself, we instead us the
[Zendesk Macros](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/)
GitLab project. This allows us to have version-controlled macros. See the
project for more details.

## Views

Instead of managing these via Zendesk itself, we instead us the
[Zendesk Views](https://gitlab.com/gitlab-com/support/support-ops/zendesk-views)
GitLab project. This allows us to have version-controlled views. See the
project for more details.

### View Information

Currently, Zendesk has 3 view types:

* Default: Pre-defined views created by Zendesk
* Shared: Views created by the Zendesk Administrator(s) (ie. Support Ops)
* Personal: Views created by you and usable only by you

Currently, Zendesk views have some limitations:

* Only 12 visable views (Default and Shared) will be displayed.
* Views cannot use criteria that is not "defined", meaning it must be selectable data (text fields will not work, as an example).
* You can only display up to 8 personal views

## Triggers

Triggers are business rules you define to run immediately after tickets are
created or updated. They rely on a system of conditions and actions. They will
not run once a ticket is closed.

Instead of managing these via Zendesk itself, we instead us the
[Zendesk Triggers](https://gitlab.com/gitlab-com/support/support-ops/zendesk-triggers)
GitLab project. This allows us to have version-controlled triggers. See the
project for more details.

## Automations
Automations happen at set intervals compared to triggers which happen immediately after events. 

All automations run once every hour on all non-closed tickets. They execute, or
fire, on all tickets where conditions are met. This does not mean they fire at
the top/bottom of the hour though. They fire sometime during the hour. They
should all fire during the same time period though

Instead of managing these via Zendesk itself, we instead us the
[Zendesk Automations](https://gitlab.com/gitlab-com/support/support-ops/zendesk-automations)
GitLab project. This allows us to have version-controlled automations. See the
project for more details.

## Ticket Forms and Ticket Fields

Ticket forms are the forms utilized by the user to create tickets (when using
the web UI). These then translate the responses on the form into ticket
metadata.

Instead of managing these via Zendesk itself, we instead us the
[Zendesk Ticket Forms and Fields](https://gitlab.com/gitlab-com/support/support-ops/zendesk-ticket-forms-and-fields )
GitLab project. This allows us to have version-controlled automations. See the
project for more details.

## FAQs

### What to do when Zendesk is not connecting at all?

In the case where you cannot connect to Zendesk, it is best to alert Support-Ops
immediately. It could be a localized problem or a problem with the nodes our
instance lives on!

### I am unable to access part of Zendesk Support for example, Insights?

This is likely a permission issue. It is best to either ping Support-Ops via
slack or via an issue so we can look into this. If you are needing elevated
permissions, an Access Request and manager approval will be required.

### What kind of API limits exist for Zendesk?

Zendesk does have some limits to API, both in terms of rates and endpoints.

For rates, it is limited to 700 requests per minute. This is instance wide.
Keep in mind that when using pagination, each page is a request. For more info
on Zendesk API limits, see their
[Rate limiting documentation](https://developer.zendesk.com/rest_api/docs/support/introduction#rate-limits).

For the endpoints, it varies from endpoint to endpoint. These are pre-determined
by Zendesk, so it is best to review their
[API endpoint limits](https://developer.zendesk.com/rest_api/docs/support/introduction#endpoint-specific-rate-limits).

### I'm removing tags but they keep coming back in a ticket, why is that?

There is likely a trigger, automation, etc. that is adding the tag right back.
To be sure, check the `Events` on the ticket to see what is modifying the tags
after you make your changes. In cases where you cannot determine what is doing
it, hit up Support-Ops so they can dig into it!

### Is there a limitation to the number of personal views I can add and use?

There is, stemming from Zendesk itself. The first 8 personal views are
accessible in the Views list. You can have more, but only the first (top) 8 will
be displayed.
