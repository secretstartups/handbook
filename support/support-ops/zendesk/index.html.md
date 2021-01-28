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
* [Sandbox](sandbox.html)

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Current Important Things to Know

If at any point you see an agent reply in a Zendesk ticket that does not have a
signature, please do not reply to or edit the ticket. Instead, immediately
escalate this to the Support Operations Manager, Jason Colyer.

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

A general table of the current views present in Zendesk is as follows:

| View Name                                 | Groups that can see it                   | Purpose                                                                                                                                                                      |
|-------------------------------------------|------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| My Assigned Tickets                       | Shared*                                  | For tickets assigned to you                                                                                                                                                  |
| Security                                  | Security                                 | For tickets using the Security form                                                                                                                                          |
| Accounts Receivables / Refunds            | Billing                                  | For tickets using the Billing form                                                                                                                                           |
| Professional Services Queue               | Professional Services                    | For tickets using the Professional Services Form                                                                                                                             |
| Needs Org & Triage                        | Support AMER, Support APAC, Support EMEA | For tickets missing an organization or in need of triaging                                                                                                                   |
| .com Needs Assignee: REGION + All Regions | Support REGION                           | For SaaS tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions         |
| .com with SLA                             | Support AMER, Support APAC, Support EMEA | This shows all SaaS tickets that have a SLA                                                                                                                                  |
| .com Accounts, Groups, Logins             | Support AMER, Support APAC, Support EMEA | This shows all SaaS Account tickets                                                                                                                                          |
| Free/Self-Provisioned Trial Support       | Support AMER, Support APAC, Support EMEA | This if for free customer, trial, and prospect non-SaaS Account tickets                                                                                                      |
| SM Needs Assignee: REGION + All Regions   | Support REGION                           | For Self-Managed tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions |
| SM with SLA                               | Support AMER, Support APAC, Support EMEA | This shows all Self-Managed tickets that have a SLA                                                                                                                          |
| License & Renewals                        | Support AMER, Support APAC, Support EMEA | This shows all tickets using the form L&R                                                                                                                                    |
| First Response Hawk                       | Support AMER, Support APAC, Support EMEA | This shows paid support, prospect, and former customer support tickets with a New status                                                                                     |
| Follow-up Required                        | Support Managers                         | This shows all assigned open/on-hold tickets that are at least 14 days old                                                                                                   |
| Area of Focus Placeholder                 | Support AMER, Support APAC, Support EMEA | This is a placeholder view for the Areas of Focus workgroup                                                                                                                  |
| View Placeholder                          | Support AMER, Support APAC, Support EMEA | This is a placeholder view. We don’t know what it will be yet.                                                                                                               |
| New                                       | Shared                                   | This shows all tickets with a status of New                                                                                                                                  |
| Open                                      | Shared                                   | This shows all tickets with a status of Open                                                                                                                                 |
| Pending                                   | Shared                                   | This shows all tickets with a status of Pending                                                                                                                              |
| On-hold                                   | Shared                                   | This shows all tickets with a status of On-hold                                                                                                                              |

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

A general table of the current forms present in Zendesk is as follows:

| Ticket Form | Public? | Category | Allows Free? | What it is for |
|---|:-:|---|:-:|---|
| SaaS Account | Yes | Support | Yes | For GitLab.com tickets about Account related matters (2FA, login, etc.) |
| SaaS | Yes | Support | Yes | For GitLab.com tickets not about Account related matters |
| Self-Managed | Yes | Support | No | For tickets about Self-Managed instances |
| L&R | Yes | Support | Yes | For matters relating to Licensing and Subscription Renewals |
| Other | Yes | Support | Yes | Catchall Form |
| Security | Yes | Non-support | Yes | For tickets relating to GitLab.com security matters |
| Billing | Yes | Non-support | Yes | For tickets relating to Account Receivable/Refund matters |
| Professional Services | Yes | Non-support | Yes | For tickets relating to GitLab Learn |
| Select Partner | Yes | Support | No | Support tickets for Select Partners |
| Open Partner | Yes | Support | No | Support tickets for Open Partners |
| Alliance Partner | Yes | Support | No | Support tickets for Alliance Partners |
| Community | No | Support | Yes | For requests from the community |
| Emergency | No | Support | No | For emergency requests |

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
