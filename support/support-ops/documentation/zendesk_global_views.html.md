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
| [Needs Org](https://gitlab.zendesk.com/agent/admin/views/360076150200) | 2 | Support AMER<br>Support APAC<br>Support EMEA |
| [Support Operations](https://gitlab.zendesk.com/agent/admin/views/360076456699) | 6 | Support Operations |
| [SGG: Unsorted SaaS](https://gitlab.zendesk.com/agent/admin/views/4427372366994) | 7 | Support Operations |
| [SGG: Unsorted SM](https://gitlab.zendesk.com/agent/admin/views/4427372846482) | 8 | Support Operations |
| [SGG: Baobab](https://gitlab.zendesk.com/agent/admin/views/4758170657436) | 9 | Support AMER<br>Support APAC<br>Support EMEA |
| [SGG: Ginkgo](https://gitlab.zendesk.com/agent/admin/views/4427381797394) | 10 | Support AMER<br>Support APAC<br>Support EMEA |
| [SGG: Kapok](https://gitlab.zendesk.com/agent/admin/views/4758108678044) | 11 | Support AMER<br>Support APAC<br>Support EMEA |
| [SGG: Maple](https://gitlab.zendesk.com/agent/admin/views/4427390627218) | 12 | Support AMER<br>Support APAC<br>Support EMEA |
| [SGG: Pine](https://gitlab.zendesk.com/agent/admin/views/4427373603474) | 13 | Support AMER<br>Support APAC<br>Support EMEA |
| [L&R](https://gitlab.zendesk.com/agent/admin/views/360038103700) | 17 | Support Focus: L&R |
| [GitLab Incidents](https://gitlab.zendesk.com/agent/admin/views/360073862640) | 18 | Support Focus: CMOC |
| [Instance Management](https://gitlab.zendesk.com/agent/admin/views/360076285119) | 19 | Support Focus: Instance Management |
| [Secure](https://gitlab.zendesk.com/agent/admin/views/360075979580) | 20 | Support Focus: Secure |
| [Managing Group/Project](https://gitlab.zendesk.com/agent/admin/views/360076285179) | 21 | Support Focus: Managing Group / Project |
| [GitLab Features](https://gitlab.zendesk.com/agent/admin/views/360075979680) | 22 | Support Focus: GitLab Features |
| [Authentication/Authorization](https://gitlab.zendesk.com/agent/admin/views/360075979720) | 23 | Support Focus: Authentication and Authorization |
| [CI/CD](https://gitlab.zendesk.com/agent/admin/views/360076285299) | 24 | Support Focus: CI/CD |
| [Other](https://gitlab.zendesk.com/agent/admin/views/360075979760) | 25 | Support Focus: Other |
| [All new with SLA](https://gitlab.zendesk.com/agent/admin/views/360075980400) | 26 | Support Managers |
| [All open with SLA](https://gitlab.zendesk.com/agent/admin/views/360075980520) | 27 | Support Managers |
| [Escalated/feedback tickets](https://gitlab.zendesk.com/agent/admin/views/360076456719) | 28 | Support Managers |
| [China Comms](https://gitlab.zendesk.com/agent/admin/views/360073361819) | 29 | China Comms Group |
| [Professional Services - Triage](https://gitlab.zendesk.com/agent/admin/views/360069758560) | 30 | Professional Services Group |
| [Professional Services - Paid](https://gitlab.zendesk.com/agent/admin/views/360034420040) | 31 | Professional Services Group |
| [Professional Services - Free](https://gitlab.zendesk.com/agent/admin/views/360069758360) | 32 | Professional Services Group |
| [Billing](https://gitlab.zendesk.com/agent/admin/views/360076283979) | 33 | Billing |
| [Accounts Receivables](https://gitlab.zendesk.com/agent/admin/views/360038103780) | 34 | Accounts Receivables |
| [Partner Support](https://gitlab.zendesk.com/agent/admin/views/4561143846044) | 35 | Partner Support |
| [New](https://gitlab.zendesk.com/agent/admin/views/360050766519) | 36 | General |
| [Open](https://gitlab.zendesk.com/agent/admin/views/360050851560) | 37 | General |
| [Pending](https://gitlab.zendesk.com/agent/admin/views/66715947) | 38 | General |
| [On-Hold](https://gitlab.zendesk.com/agent/admin/views/86000057) | 39 | General |
| [Solved](https://gitlab.zendesk.com/agent/admin/views/360050766879) | 40 | General |
| [Closed](https://gitlab.zendesk.com/agent/admin/views/360051670340) | 41 | General |

## Moving tickets between views

The criteria for most views is centered around the form the ticket is using. But
there are some scenarios where the tags on a ticket can cause it to show in
multiple areas. In these cases, it is best to reach out to Support Operations
for guidance.
