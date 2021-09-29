---
layout: handbook-page-toc
title: 'Zendesk Global Organizations'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global organizations'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Organizations are simply a collection of users in Zendesk (much like groups). We
use them to also store metadata (synced from Salesforce), which is used to
determine such things as SLA, ARR, etc.

## How are organizations created?

Organizations in Zendesk are created automatically through our Salesforce and
Zendesk integration (as well as the GitLab built sync script). This integration
allows agents to see a customer's full Salesforce Profile within a live ticket
in Zendesk. You can read more about what information we send to Salesforce and
what fields are populated with information from Zendesk in the
[Support Ops handbook](zendesk_global_sync.html).

> Please do not manually create organizations. This can break the ZD<>SFDC
> integration and cause users to receive incorrect SLAs. If you notice an
> organization needs to be created, please notify support-ops to rectify this.

## Organization fields

| Field Named | API Name | Data Type | Possible Values |
|-------------|----------|-----------|-----------------|
| Salesforce ID | salesforce_id | Text | * |
| GitLab Plan | support_level | Dropdown | Basic, Premium, Custom, Bronze, Silver, Gold, Expired, Hold, Starter, Ultimate, Community, Other |
| ARR | aar | Decimal | * |
| Sales Segmentation | sales_segmentation | Text | * |
| Account Owner | account_owner | Text | * |
| Account Type | account_type | Dropdown | Authorized Reseller, Customer, Former Customer, Integrator, Partner, Prospect, Unofficial Reseller, Reseller |
| Technical Account Manager | technical_account_manager | Text     | * |
| AM Project ID | am_project_id | Text | * |
| Number of Seats | seats_decimal | Decimal | * |
| Manual Support Upgrade | manual_support_upgrade | Checkbox | True, False |
| Region | org_region | Dropdown | APAC, EMEA, LATAM, NCSA, NORAM, AMER |

## Editing Organizations

As a lot relies on organizations being setup properly, this feature requires
admin level abilities currently. If an organization needs to be edited, an issue
should be filed using the
[Add Zendesk Organization Notes or Tags Request](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Add%20Zendesk%20Organization%20Notes%20or%20Tags%20Request)
issue template.

## Organizations with outdated information

If you notice an organization in Zendesk contains outdated information or the
information doesn't match what Salesforce is displaying, this would indicate the
sync integration has hit an issue. Luckily, we have the GitLab built sync script
that runs every hour to rectify such issues.

In your due diligence, you would want to create an issue via the
[support-ops-project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/issues/new)
so support-ops can double check to ensure there is nothing blocking the sync.

## Organization Notes

All organizations have the ability to have notes about them via the Organization
page in Zendesk. These notes are automatically placed on a ticket (along with
other organization informaiton) as soon as the ticket has an organization
present. This is done via the
[`Ticket::Internal Comment::Organization Info` trigger](https://gitlab.com/search?utf8=%E2%9C%93&search=id%3A+360015531940&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar).

## How does SLA factor in?

This stems from the `GitLab Plan` field. It correlates as follows:

| GitLab Plan | SLA |
|-------------|-----|
| Bronze | Standard SLA |
| Silver | Priority SLA |
| Gold | Priority SLA |
| Starter/Basic | Standard SLA |
| Premium | Priority SLA |
| Ultimate | Priority SLA |
| Custom/Expired/Hold/Community/Prospect SaaS/Prospect SM | Free tier, no SLA |

When multiple of these tags appear on the same ticket, it will apply the SLA
policy that comes first (order wise). See
[Zendesk Global SLAs](zendesk_global_slas.html) for more details.

### What if an organization has multiple subscriptions?

This is an edge case Support-Ops and Sales-Ops are working on. The current
solution is to apply the correct tag to the organization so it will get multiple
plan tags on newly created tickets. As an example:

> Jason Enterprises has a Gold subscription and a Starter license.
>
> Salesforce has them as Gold, so the organization in Zendesk shows their
> GitLab Plan as Gold.
>
> To ensure they get the proper support (and the ticket routes properly), we
> need to manually apply the starter tag on the organization.

Support engineers can
[request tags and notes be added to the org](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Add%20Zendesk%20Organization%20Notes%20or%20Tags%20Request).

Once a ticket comes in, it may show in multiple views. The non-applicable tag
needs to be removed so that it only shows in a single queue.

## Organization Permissions

By default, organizations are setup so that the users within it can only see and
comment on their own tickets. This security measure often doesn't work for some
organizations though.

Because of that, we have the ability to setup Shared Organizations, a term
meaning the users in an organization have heightened permissions and can do see
and/or comment on tickets that are not theirs. For more information on Shared
Organizations, review the
[Shared Organizations workflow](../workflows/shared_organizations.html).

## User Association via Domain Matching

**NOTE**: This is a legacy feature and no new domains will be added to any
organization.

By default, users do not automatically associate with an organization. To
associate a user to an organization, this must be done manually by an Agent.

That said, if the organization has a domain set at `Domains` field in the
organization record on Zendesk, then any email address that uses that domain
will automatically be associated to the organization. This can create a bit of
chaos though, as it does not use any measure to authenticate an email to the
organization. It simply looks at the email address and used the domain portion
of it (ie. the part after `@`).

When multiple organizations are using the same domain, it will not associate the
user to both organizations. This is because users can only be associated with
one organization (as per our setup). Because of this, they will be associated
to the organization with the lower ID number. As an example:

> Bob emails support from his email, bob@awesome-company.com
>
> There are currently two organizations using the domain awesome-company.com:
>
> Jason's Awesome Company (ID: 123)
> Nabeel's Awesome Company (ID: 119)
>
> Because Nabeel's Awesome Company has a lower ID, Bob is associated with that
> organization.

Zendesk does not have a native way to determine if multiple organizations are
using the same domain. As such, you must be careful about setting organization
domain's.
