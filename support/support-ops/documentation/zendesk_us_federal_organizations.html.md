---
layout: handbook-page-toc
title: 'Zendesk US Federal Organizations'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal organizations'
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
[Support Ops handbook](zendesk_us_federal_sync.html).

> Please do not manually create organizations. This can break the ZD<>SFDC
> integration and cause users to receive incorrect SLAs. If you notice an
> organization needs to be created, please notify support-ops to rectify this.


## Organization fields

| Field Named | API Name | Data Type | Possible Values |
|-------------|----------|-----------|-----------------|
| Salesforce ID | salesforce_id | Text | * |
| Account Type | account_type | Dropdown | Customer, Former Customer, Prospect |
| ARR | aar | Decimal | * |
| Support Level | support_level | Dropdown | Starter, Premium, Ultimate, Basic |
| Market Segment | market_segment | Text | * |
| Technical Account Manager | technical_account_manager | Text     | * |
| Account Owner | account_owner | Text | * |
| Solutions Architect | solutions_architect | Text | * |
| Number of Seats | seats_decimal | Decimal | * |
| AM Project ID | am_project_id | Text | * |

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
