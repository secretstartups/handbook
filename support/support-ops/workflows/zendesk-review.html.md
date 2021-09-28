---
layout: handbook-page-toc
title: 'Zendesk Review'
category: 'Zendesk'
subcategory: 'Review and realignment'
description: 'Details on the Zendesk Review process'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Zendesk Review (formally Zendesk Realignment) is a _yearly_ process we undergo
to review how Zendesk is setup and ensure it works with the expectations of
those using it. This is a lengthy process, but a vital one for the health and
stability of Zendesk.

The first 8 stages are about information gathering. The purpose of each stage
is:

| Stage | Purpose |
|:-----:|---------|
| 1 | Ticket Forms |
| 2 | Channels (forms, email, etc.) |
| 3 | Organization and User settings |
| 4 | Ticket Forms and Fields |
| 5 | Views, Agent Groups, SLAs/SLOs |
| 6 | Triggers and Automations |
| 7 | Triggers and Automations |
| 8 | Routing |

## Starting the process

To start the process, create a
[new epic under the GitLab Support Team group](https://gitlab.com/groups/gitlab-com/support/-/epics/new)
with the following information:

* a title of `Zendesk Review - FYxx - Instance` (replacing `xx` with the
  current fiscal year you are conducting the review during and `Instance` with
  the Zendesk instance this is concerning)
* a description of `Zendesk Review for FYxx` (replacing `xx` with the current
  fiscal year you are conducting the review during)
* Confidentiality checkbox should be checked (as this could touch on specific
  customer situations, names, etc.)
* Labels of:
  * `Support-Ops-Category::Zendesk Review`
  * If this is for Zendesk Global, then add `Zendesk::Global`
  * If this is for Zendesk US Federal, then add `Zendesk::US-Federal`
* Start date as the current date
* End date as the end of the current fiscal year

Make sure to keep this epic handy, as you'll be linking all future issues into
it.

## Stage 1: What types of requests do you receive

You will kick this off by generating an issue using the
[Zendesk Review Stage 1 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%201).

In this stage, we ask the teams using Zendesk what types of requests they
normally receive. We want as much information here as is possible. The more
details we get here, the better the end result. As such, we should encourage
those participating to be as specific as is possible.

Once we have compiled a large list of data from those participating, we then
need to categorize this data. The categorization table used for this should be
done via a Google sheet and have the following column headers:

* Request
  * All the requests (even duplicates) should be copy and pasted into the
    `Request` column.
* Team
  * The teams using Zendesk. We recommend using
    [Data Validation](https://support.google.com/docs/answer/186103) to generate
    a dropdown containing all the teams using it.
* Category
  * The main category the request falls into. We recommend using
    [Data Validation](https://support.google.com/docs/answer/186103) to generate
    a dropdown containing all the categories.
* Subcategory
  * The subcategory the request falls into. This can vary widely based on the
    category list.
* Alternate Subcategory
* An alternate subcategory the request can fall into. This can vary widely based
  on the category list and may be blank at times
* Notes
  * Any notes on the request.

This should take a month, as this is stage will shape future stages.

Once you have compiled all the data and categorized it, request those
participating review the Google sheet for accuracy. Make adjustments as needed.
Once it all looks good, move on to stage 2.

## Stage 2: How should end-users reach out

You will kick this off by generating an issue using the
[Zendesk Review Stage 2 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%202).

In this stage, we need to determine the methods users should be using to reach
out to the various teams using Zendesk. We primarily want to focus on if it
should be via email or via forms. We want to ensure we catch all the various
criteria users might use specific methods of contact.

This should take a week, as this will shape overall routing.

Once the information has been gathered, you are good to move onto stage 3.

## Stage 3: How should end-users be categorized

You will kick this off by generating an issue using the
[Zendesk Review Stage 3 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%203).

In this stage, we focus on how end-users are categorized. Generally speaking,
this would be by organization and by support level in terms of GitLab, but we
still want to double-check and confirm this is correct.

This should take a week, as this will shape overall routing.

Once the information has been gathered, you are good to move onto stage 4.

## Stage 4: What info should be in tickets

You will kick this off by generating an issue using the
[Zendesk Review Stage 4 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%204).

In this stage, we want to focus on what kind of information should be present in
a ticket at any given point. This includes both at creation and during the
lifespan of the ticket. This is important, as it helps formulate what kind of
questions we ask in the forms and what kinds of fields should exist. We also
want to focus on what kind of conditional information should be present in the
forms.

This should take a week, as this will shape overall routing and play heavily
into existing workflows.

Once the information has been gathered, you are good to move onto stage 5.

## Stage 5: How do you want tickets grouped

You will kick this off by generating an issue using the
[Zendesk Review Stage 5 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%205).

In this stage, we focus on how tickets should be grouped and the SLAs/SLOs to
use.

This should take a week, as this will shape overall routing and play heavily
into existing workflows.

Once the information has been gathered, you are good to move onto stage 6.

## Stage 6: What types of automations should occur on tickets

You will kick this off by generating an issue using the
[Zendesk Review Stage 6 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%206).

In this stage, we help determine what kind of automated tasks should occur
within Zendesk. This is important for determining what kind of triggers and
automations will be needed.

This should take a week, as this will shape overall routing and play heavily
into existing workflows.

Once the information has been gathered, you are good to move onto stage 7.

## Stage 7: What types of notifications should be sent out

You will kick this off by generating an issue using the
[Zendesk Review Stage 7 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%207).

In this stage, we determine what kind of notifications should be sent out. This
is important as this touches on both internal and external notifications sent
out by Zendesk.

This should take a week, as this will determine how people are notified about
the events occurring within Zendesk.

Once the information has been gathered, you are good to move onto stage 8.

## Stage 8: Formulate routing diagrams

You will kick this off by generating an issue using the
[Zendesk Review Stage 8 issue template](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new?issuable_template=Zendesk%20Review%20Stage%208).

In this stage, we use all previous information obtained to generate a routing
diagram. We traditionally use mermaid for this (and the final result in the
handbook will use mermaid), but you can use other means if you so desire.

Once you have generated the diagram(s), post them in the issue and have those
participating review them.

Once the participants have approved the diagram (and silence is approval), you
are good to move onto stage 9.

## Stage 9: Generate proposal issues

Here you will generate all the proposal issues relating to this. This should
generate one issue per change and all generated issues should be linked to the
epic made in [Starting the process](#starting-the-process).

These are simply proposals. Nothing will be implemented through these issues (as
that is handled via [stage 10](#stage-10-testing-and-implementation)). This
should be used to discuss the proposed changes and get approval from those
needed:

| Team impacted | Approvers |
|---------------|-----------|
| Support | @gitlab-com/support/managers/senior |
| Security | @gitlab-com/gl-security/security-assurance/risk-field-security-team | @slee24 @kmarquart |
| Professional Services |
| AR/Billing | @annapiaseczna @s_mccauley |

## Stage 10: Testing and implementation

Here you will generate implementation issues for all the proposed changes that
were approved.

You will then set up the sandbox with the proposed changes and run testing on
the sandbox. Make sure to record the test results in the related implementation
issue and have the approvers (listed in [stage 9](#stage-9-generate-proposal-issues)).

Once all testing is done and approved, you will then follow standard change
management to implement the changes into production.
