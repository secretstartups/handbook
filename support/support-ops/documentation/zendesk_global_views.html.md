---
layout: handbook-page-toc
title: 'Views'
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

* Only 12 visable views (Default and Shared) will be displayed.
* Views cannot use criteria that is not "defined", meaning it must be selectable
  data (text fields will not work, as an example).
* You can only display up to 8 personal views


## View management

Instead of managing Zendesk views via Zendesk itself, we instead use GitLab
itself via the
[zendesk-views project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-views).
This allows us to have version-controlled views. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current views

| Name | Groups that can see it | Purpose |
|---|---|---|
| [My Assigned Tickets](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360062369834) | Shared* | For tickets assigned to you |
| [Security](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038124479) | Security | For tickets using the Security form |
| [Professional Services - Paid](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360034420040) | Professional Services | For customer tickets using the Professional Services Form |
| [Professional Services - Free](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360069758360) | Professional Services | For free user tickets using the Professional Services Form |
| [Professional Services - Triage](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360069758560) | Professional Services | For tickets using the Professional Services Form that need to be triaged |
| [Needs Org & Triage](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038101960) | Support AMER, Support APAC, Support EMEA | For tickets missing an organization or in need of triaging |
| [.com Needs Assignee: AMER + All Regions](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038122359) | Support AMER | For SaaS tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions |
| [.com Needs Assignee: APAC + All Regions](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038122399) | Support APAC | For SaaS tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions |
| [.com Needs Assignee: EMEA + All Regions](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038102160) | Support EMEA | For SaaS tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions |
| [.com with SLA](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038122959) | Support AMER, Support APAC, Support EMEA | This shows all SaaS tickets that have a SLA |
| [.com Accounts, Groups, Logins](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360050768099) | Support AMER, Support APAC, Support EMEA | This shows all SaaS Account tickets |
| [Free/Self-Provisioned Trial Support](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038103100) | Support AMER, Support APAC, Support EMEA | This if for free customer, trial, and prospect non-SaaS Account tickets |
| [SM Needs Assignee: AMER + All Regions](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038122359) | Support AMER | For Self-Managed tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions |
| [SM Needs Assignee: APAC + All Regions](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038122399) | Support APAC | For Self-Managed tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions |
| [SM Needs Assignee: EMEA + All Regions](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038102160) | Support EMEA | For Self-Managed tickets that do not have an assignee. These are region based, so they will show tickets where the end-user wanted support in your region and in all regions |
| [SM with SLA](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038124139) | Support AMER, Support APAC, Support EMEA | This shows all Self-Managed tickets that have a SLA |
| [License & Renewals](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038103700) | Support AMER, Support APAC, Support EMEA | This shows all tickets using the form L&R |
| [First Response Hawk](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360038124359) | Support AMER, Support APAC, Support EMEA | This shows paid support, prospect, and former customer support tickets with a New status |
| [Follow-up Required](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360050766859) | Support Managers | This shows all assigned open/on-hold tickets that are at least 14 days old |
| [China Comms](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360073361819) | China Comms | This shows all new/open tickets that are using the form China Comms Response |
| [AMER FRT](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360073300560) | Support AMER | This is an FRT view specific for the AMER region. This shows all New paid support, prospect, and former customer support tickets where preferred region of support is not present or is set to AMER/All Regions. |
| [Area of Focus Placeholder](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360050766879) | Support AMER, Support APAC, Support EMEA | This is a placeholder view for the Areas of Focus workgroup |
| [View Placeholder](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360051670340) | Support AMER, Support APAC, Support EMEA | This is a placeholder view. We don’t know what it will be yet. |
| [New](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360050766519) | Shared | This shows all tickets with a status of New |
| [Open](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360050851560) | Shared | This shows all tickets with a status of Open |
| [Pending](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+66715947) | Shared | This shows all tickets with a status of Pending |
| [On-hold](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17148146&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+86000057) | Shared | This shows all tickets with a status of On-hold |

## Moving tickets between views

The criteria for most views is centered around the form the ticket is using. But
there are some scenarios where the tags on a ticket can cause it to show in
multiple areas.

### Priority Prospects

As it is often impossible to tell where these tickets should live, there will
show in both Self-Managed and SaaS views. As such, there are two tags you can
add onto the ticket to help out here:

* `prospect_saas` will specificy it should only show in SaaS views.
* `prospect_sm` will specificy it should only show in Self-Managed views.

### Missing SLA

When the `missing_sla_tag` is present on a ticket, it will always show in the
Needs Org & Triage view. As this tag is a safety net to prevent tickets from
disappearing from all views, this tag is never removed automatically. As such,
you will need to ensure a SLA tag is present and then remove the tag to remove
it from the Needs Org & Triage view.
