---
layout: handbook-page-toc
title: 'Zendesk US Federal Tags'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal tags'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203662096-About-tags):

> Tags are words, or combinations of words, you can use to add more context to
> tickets and topics. You can apply tags to tickets, users, and organizations.

At its core, Zendesk relies on tags pretty heavily. As such, it is best to fully
understand the tags used and how they correlate to what Zendesk does to the
ticket.

As there are many, many tags, and new ones get added frequently, we will not
list them all out here. Instead, here are the ones likely to be the most
important to those working within Zendesk:


## SLA Related Tags

As a note, `basic` and `starter` are two different tags for the same plan/SLA.

| Tag | What it does |
|---|---|
| `basic` and `starter` | Signifies the ticket is using a Starter plan, granting Standard SLA on Support tickets |
| `premium` | Signifies the ticket is using a Premium plan, granting Priority SLA on Support tickets |
| `ultimate` | Signifies the ticket is using a Ultimate plan, granting Priority SLA on Support tickets |
| `prospect` | Signifies the ticket is from a prospect who has been temporarily granted Standard SLA on Support tickets |
| `missing_sla_tag` | This means the ticket is missing any form of SLA tagging. As this is a problem, this tag applies a Standard SLA and forces the ticket into the Needs Org & Triage view |
| `low` | Signifies the ticket as a Low priority, thus granting it bare-level support SLAs for Support tickets with Priority SLA |
| `medium` | Signifies the ticket as a Normal priority, thus granting it mid-level support SLAs for Support tickets with Priority SLA |
| `high` | Signifies the ticket as a High priority, thus granting it high level support SLAs for Support tickets with Priority SLA |
| `urgent` | Signifies the ticket is an emergency request |

## Account Related Tags

| Tag | What it does |
|---|---|
| `customer` | Signifies the ticket is from an account labeled as Customer            |
| `former_customer` | Signifies the ticket is from an account labeled as Former Customer     |
| `reseller` | Signifies the ticket is from an account labeled as Reseller            |
| `authorized_reseller` | Signifies the ticket is from an account labeled as Authorized Reseller |
| `integrator` | Signifies the ticket is from an account labeled as Integrator          |
| `partner` | Signifies the ticket is from an account labeled as Partner             |
| `unofficial_reseller` | Signifies the ticket is from an account labeled as Unofficial Reseller |
| `open_partner` | Signifies the ticket is from an account labeled as Open Partner        |
| `select_partner` | Signifies the ticket is from an account labeled as Select Partner      |
| `alliance_partner` | Signifies the ticket is from an account labeled as Alliance Partner    |

## Automation Skipping Related Tags

| Tag | What it does |
|---|---|
| `skip_autosolve` | Tell Zendesk to not auto-solve the ticket |
| `skip_autoclose` | Tell Zendesk to not auto-close the ticket |
| `skip_autoreopen` | Tell Zendesk to not auto-reopen the ticket (relating solely to the trigger Ticket::Open::Reopen if agent sets to pending with internal note) |
| `skip_gdpr_automation` | Tell Zendesk to not run any Account Deletion automations/autoresponders |
| `skip_autosolve_message` | Tell Zendesk not to send a message about the ticket being autosolved. |
| `skip_autoassign` | Tell Zendesk to not auto-assign the ticket (in reference to these triggers - "Ticket::Assignee::Assign open or on-hold ticket to agent" and "Ticket::Assignee::Assign any on-hold ticket to current agent") . |

## Form Related Tags

As a note, there should only ever be one of these on a ticket

| Tag | What it does |
|---|---|
| `support_form` | Signifies the ticket is using the form Support |
| `lnr_form` | Signifies the ticket is using the form L&R |
| `security_form` | Signifies the ticket is using the form Security |
| `triage_form` | Signifies the ticket is using the form Triage |
| `shared_org_form` | Signifies the ticket is using the form Shared Organization Request |
| `live_upgrade_form` | Signifies the ticket is using the form Live Upgrade Request |

## Other Important Tags

| Tag | What it does |
|---|---|
| `auto-association_attempted` | Zendesk has sent a request to Zapier to try to auto-associate the user to an org |
| `zapier_test_success` | Zapier claims it succeeded, which solely means it found a user in SFDC and sent a request to Zendesk to update said user with the org name (in cases where the org name doesn’t exist in Zendesk, this won’t work) |
| `zapier_test_failed` | Zapier was unable to find a user in SFDC and failed to auto-associate |
