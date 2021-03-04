---
layout: handbook-page-toc
title: 'SLA Change Process'
category: Zendesk
subcategory: SLAs
description: 'Details on working with suspended and deleted tickets'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Due to the sensitive nature of changing SLAs, this exact process must be
followed for _every_ SLA change.

## Process

1. An issue should be created in
   [support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
   using the
   [Requested Change Template](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/new?issuable_template=Requested%20Change).
1. The support team discusses the desire to change, citing reason and potential
   impact.
1. The Support Ops Manager, @jcolyer, is pinged in the issue once the
   discussion is over and a decision has been reached, with approval from at
   least ONE Senior Support Manager.
1. The Support Ops Manager will make an issue in the
   [legal tracker](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues)
   requesting the change.
1. Once legal has approved, the Support Ops Manager will announce the plan to
   make the SLA change to the support team via both slack (#support_team-chat)
   and the SWIR. It should be scheduled for the next Saturday, during
   non-business hours.
   * If legal does not approve, the Support Ops Manager will update the
     original issue and close it out.
1. The Support Ops Manager will implement the change. Following the
   implementation, the Support Ops Manager will announce the change has been
   made via both slack (#support_team-chat) and the SWIR.
1. The Support Ops Manager will update relevant documentation with the change.
1. The Support Ops Manager will update the original issue and close it out.

## Flowchart

```mermaid
graph TD;
  A --> B;
  B --> C;
  C -->|Legal Denies Request| D;
  C -->|Legal Approved Request| E;
  E --> F;
  F --> G;
  G --> H;
  A(Make an issue in support-team-meta to discuss the desire to change SLA);
  B(Once the discussion is done and a decision is made, ping the Support Ops Manager)
  C(Support Ops Manager will make an issue in the legal tracker with the request)
  D(Support Ops Manager will update original issue saying the request is denied, supplying the reason and closing the issue)
  E(Support Ops Manager will announce plan to make the change on the next available Saturday during non-business hours)
  F(Support Ops Manager will make the change)
  G(Support Ops Manager will announce change)
  H(Support Ops Manager will close out related issues)
```
