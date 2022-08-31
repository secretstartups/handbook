---
layout: handbook-page-toc
title: 'Setting Up an Organization for an Offering Migration'
category: Zendesk
subcategory: 'Organizations and Users'
description: 'Details on setting up an organization for an offering migration'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This page describes the actions a Support Ops team member will need to take
to assist in the
[How to Handle Product Offering Migration Tickets](../../workflows/handling_offer_migration_tickets.html)
workflow.

## Process

A support engineer will file an issue using the 
[Add Zendesk Organization Notes or Tags Request](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Add%20Zendesk%20Organization%20Notes%20or%20Tags%20Request)
issue template, specifying it is for a product offering migration. This should
include the planned date of the migration and the planned subscription level
the customer will acquire.

In response to this type of issue, please take the following actions:

1. Enter in a new organization note, or append to the existing note, the content
   described in the [Organization Note Content](#organization-note-content)
   topic on this page.
1. Update the issue and ping the support engineer who filed the issue.

## Organization Note Content

> This customer is in the process of migrating from one product offering to
> another. To ensure that during this process their support tickets are given
> an SLA so that Support Engineers will work on them, you will need to modify
> the tags on the ticket by removing the starting product's tag and adding the
> ending product's tag.
> 
> Migration information:
> 
> * Starting product: INITIAL_OFFERING
> * Ending product: ENDING_OFFERING
> * Self-managed tag(s): SM_TAG
> * SaaS tag(s): SAAS_TAG
>
> When you see this note in a ticket and you are the first to work that ticket,
> please remove the unneeded SLA tag and add the needed tag based on the
> subject matter of the ticket.

Be sure to replace the ALL-CAPS tokens with the appropriate values, as
described in this table:

| Term | Description | Possible values |
|---|---|---|
| INITIAL_OFFERING | The product from which they are migrating | `SM`, `SaaS` | |
| ENDING_OFFERING | The product to which they are migrating | `SM`, `SaaS` |
| SM_TAG | The self-managed tag the organization is using | `starter`, `premium`, `ultimate` |
| SAAS_TAG | The SaaS tag the organization is using | `bronze`, `silver`, `gold` |
