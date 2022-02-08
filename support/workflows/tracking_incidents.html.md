---
layout: handbook-page-toc
title: Tracking Security Incidents
category: GitLab.com
subcategory: Security
description: Tracking security incidents that involves communication to or from Support.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Occasionally, an incident, usually security related, may result in a larger than normal number of users opening a ticket.

These incidents often involve communication from the security team to users which users respond to, but that's not always the case.

These do not include production issues or general security tickets. See the appropriate workflows for:

- [CMOC](cmoc_workflows.html) and how to handle production incidents.
- [working with and triaging security tickets](working-on-tickets.html).

## Creating a macro to track

Whether it's because a number of tickets are coming in, or we anticipate tickets,
a macro should be created to track the tickets that are related to a specific incident.

1. Submit [a merge request to create a macro](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros).
1. When creating the macro, ensure to include the following:
  - Tag: see below for more information.
  - Description: include a link to the relevant issue.
1. Ask security, legal, and/or a support manager for approval on the wording (whom you ask will vary by incident).

### Deciding on a macro tag

Based on the relevant issue, the tag for the macro should be formed from an abbreviated version of the project tracker name and the issue number.

For example:

- `sec_comms_302` for https://gitlab.com/gitlab-com/gl-security/security-communications/communications/-/issues/302
- `tas_incident_444` for https://gitlab.com/gitlab-com/gl-security/security-operations/trust-and-safety/operations/-/issues/444
