---
layout: handbook-page-toc
title: 'Zendesk Global Views'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global views'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203690806-Creating-views-to-manage-ticket-workflow):

> Views are a way to organize your tickets by grouping them into lists based on
> certain criteria. For example, you can create a view for unsolved tickets
> that are assigned to you, a view for new tickets that need to be triaged, or a
> view for pending tickets that are awaiting response. Using views can help you
> determine what tickets need attention from you or your team and plan
> accordingly.

Currently, Zendesk has 3 view types:

* Default: Pre-defined views created by Zendesk
* Shared: Views created by the Zendesk Administrator(s) (ie. Support Ops)
* Personal: Views created by you and usable only by you

Currently, Zendesk views have some limitations:

* Only 12 visible views (Default and Shared) will be displayed.
* Views cannot use criteria that is not "defined", meaning it must be selectable
  data (text fields will not work, as an example).
* You can only display up to 8 personal views and Support Ops cannot manage/view them.
* Views will not include [archived tickets](https://support.zendesk.com/hc/en-us/articles/203657756-About-ticket-archiving)
i.e. Closed tickets after 120 days.

## View management

Instead of managing Shared Zendesk views via Zendesk itself, we instead use GitLab
itself via the
[zendesk-views project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/views).
This allows us to have version-controlled views. Personal views can be managed by Zendesk itself.
For more information on managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current views

**Note**: Any inactive views are excluded from this table.

| Name | Position | Visibile to |
|-------|:--------:|-------------|
| [My Assigned Tickets](https://gitlab.zendesk.com/agent/admin/views/360062369834) | 1 | Shared |
| [Needs Org / FRT](https://gitlab.zendesk.com/agent/admin/views/360076150200) | 8 | Support AMER<br>Support EMEA<br>Support APAC |
| [Handover Needed (AMER)](https://gitlab.zendesk.com/agent/admin/views/360076150240) | 16 | Support AMER |
| [Handover Needed (APAC)](https://gitlab.zendesk.com/agent/admin/views/360076150260) | 17 | Support APAC |
| [Handover Needed (EMEA)](https://gitlab.zendesk.com/agent/admin/views/360076150280) | 18 | Support EMEA |
| [SaaS Account](https://gitlab.zendesk.com/agent/admin/views/360050768099) | 34 | Support AMER<br>Support APAC<br>Support EMEA<br>Support Focus: SaaS Account |
| [Free user tickets](https://gitlab.zendesk.com/agent/admin/views/360038103100) | 35 | Support AMER<br>Support APAC<br>Support EMEA |
| [Needs Collaboration](https://gitlab.zendesk.com/agent/admin/views/360080204660) | 36 | Support AMER<br>Support EMEA<br>Support APAC |
| [L&R](https://gitlab.zendesk.com/agent/admin/views/360038103700) | 37 | Support Focus: L&R |
| [Instance Management](https://gitlab.zendesk.com/agent/admin/views/360076285119) | 39 | Support Focus: Instance Management |
| [Secure](https://gitlab.zendesk.com/agent/admin/views/360075979580) | 40 | Support Focus: Secure |
| [Managing Group/Project](https://gitlab.zendesk.com/agent/admin/views/360076285179) | 41 | Support Focus: Managing Group / Project |
| [GitLab Features](https://gitlab.zendesk.com/agent/admin/views/360075979680) | 42 | Support Focus: GitLab Features |
| [Authentication/Authorization](https://gitlab.zendesk.com/agent/admin/views/360075979720) | 43 | Support Focus: Authentication and Authorization |
| [CI/CD](https://gitlab.zendesk.com/agent/admin/views/360076285299) | 44 | Support Focus: CI/CD |
| [GitLab Incidents](https://gitlab.zendesk.com/agent/admin/views/360073862640) | 45 | Support Focus: CMOC |
| [Other](https://gitlab.zendesk.com/agent/admin/views/360075979760) | 46 | Support Focus: Other |
| [Support Operations](https://gitlab.zendesk.com/agent/admin/views/360076456699) | 47 | Support Ops |
| [All new with SLA](https://gitlab.zendesk.com/agent/admin/views/360075980400) | 48 | Support Managers |
| [All open with SLA](https://gitlab.zendesk.com/agent/admin/views/360075980520) | 50 | Support Managers |
| [Escalated/feedback tickets](https://gitlab.zendesk.com/agent/admin/views/360076456719) | 51 | Support Managers |
| [Professional Services - Triage](https://gitlab.zendesk.com/agent/admin/views/360069758560) | 54 | Professional Services Group |
| [Professional Services - Paid](https://gitlab.zendesk.com/agent/admin/views/360034420040) | 55 | Professional Services Group |
| [Professional Services - Free](https://gitlab.zendesk.com/agent/admin/views/360069758360) | 56 | Professional Services Group |
| [Billing](https://gitlab.zendesk.com/agent/admin/views/360076283979) | 57 | Billing |
| [Accounts Receivables](https://gitlab.zendesk.com/agent/admin/views/360038103780) | 58 | Accounts Receivable |
| [Partner Support](https://gitlab.zendesk.com/agent/admin/views/4561143846044) | 59 | Partner Support |
| [New](https://gitlab.zendesk.com/agent/admin/views/360050766519) | 60 | General |
| [Open](https://gitlab.zendesk.com/agent/admin/views/360050851560) | 61 | General |
| [Pending](https://gitlab.zendesk.com/agent/admin/views/66715947) | 62 | General |
| [On-Hold](https://gitlab.zendesk.com/agent/admin/views/86000057) | 63 | General |
| [Solved](https://gitlab.zendesk.com/agent/admin/views/360050766879) | 64 | General |
| [Closed](https://gitlab.zendesk.com/agent/admin/views/360051670340) | 65 | General |

## Moving tickets between views

The criteria for most views is centered around the form the ticket is using. But
there are some scenarios where the tags on a ticket can cause it to show in
multiple areas. In these cases, it is best to reach out to Support Operations
for guidance.
