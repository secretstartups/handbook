---
layout: handbook-page-toc
title: 'Zendesk Global Forms'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global forms'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Ticket forms are the forms utilized by the user to create tickets (when using the web UI). These then translate the responses on the form into ticket metadata.

These fall into one of two types:

* Public - meaning both agents and end-users can see these
* Internal - meaning only agents can see these

## Form management

Instead of managing Zendesk forms via Zendesk itself, we instead use GitLab
itself via the
[zendesk-ticket-forms-and-fields project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-ticket-forms-and-fields).
This allows us to have version-controlled forms. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current forms

| Order | Name | ID | Visibility | Category |
|:-----:|------|:--:|------------|----------|
| 1 | [SaaS](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/334447) | 334447 | Public | Support |
| 2 | [SaaS Account](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000803379) | 360000803379 | Public | Support |
| 3 | [Self-Managed](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/426148) | 426148 | Public | Support |
| 4 | [L&R](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000071293) | 360000071293 | Public | Support |
| 5 | [Billing](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000258393) | 360000258393 | Public | Billing |
| 6 | [Security](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000515493) | 360000515493 | Public | Security |
| 7 | [Professional Services](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000647759) | 360000647759 | Public | Professional Services |
| 8 | [Open Partner](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000818199) | 360000818199 | Public | Support |
| 9 | [Select Partner](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360000837100) | 360000837100 | Public | Support |
| 10 | [Alliance Partners](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360001172559) | 360001172559 | Public | Support |
| 12 | [Support Ops](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360001801419) | 360001801419 | Public | Support Ops |
| 13 | [JiHu](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360001477519) | 360001477519 | Public | Support |
| 14 | [China Comms Response](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360001535259) | 360001535259 | Public | Support |
| 15 | [Community](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/334467) | 334467 | Internal | Support |
| 16 | [Emergencies](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360001264259) | 360001264259 | Internal | Support |
| 17 | [GitLab Incidents](https://gitlab.zendesk.com/agent/admin/ticket_forms/edit/360001629679) | 360001629679 | Internal | Support |
