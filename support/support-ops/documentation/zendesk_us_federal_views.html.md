---
layout: handbook-page-toc
title: 'Zendesk US Federal Views'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal views'
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
[zendesk-views project](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-views).
This allows us to have version-controlled views. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current views

| Name | Groups that can see it | Purpose |
|---|---|---|
| [My Assigned Tickets](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360161163071) | Shared* | For tickets assigned to you |
| [Support](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196736831) | Support, Support Managers, Support Ops | For Support related tickets |
| [Needs Triage](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196736871) | Support, Support Managers, Support Ops | For tickets in need of triaging |
| [Needs Assignee](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196736891) | Support, Support Managers, Support Ops | For Support related tickets without an assignee |
| [Security](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196736911) | Security | For tickets using the Security form |
| [L&R](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196736931) | Support | This shows all tickets using the form L&R |
| [Support Ops](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196737011) | Support, Support Managers, Support Ops | For Support Operations tickets |
| [First Response Hawk](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196865512) | Support, Support Managers, Support Ops | This shows paid support, prospect, and former customer support tickets with a New status |
| [New](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196865572) | Shared | This shows all tickets with a status of New |
| [Open](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196865612) | Shared | This shows all tickets with a status of Open |
| [Pending](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196737031) | Shared | This shows all tickets with a status of Pending |
| [On-hold](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196737051) | Shared | This shows all tickets with a status of On-hold |
| [Solved](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=445&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360196865632) | Shared | This shows all tickets with a status of Solved |

## Moving tickets between views

The crieria for most views is centered around the form the ticket is using. But
there are some scenarios where the tags on a ticket can cause it to show in
multiple areas.

### Missing SLA

When the `missing_sla_tag` is present on a ticket, it will always show in the
Needs Org & Triage view. As this tag is a safety net to prevent tickets from
disappearing from all views, this tag is never removed automatically. As such,
you will need to ensure a SLA tag is present and then remove the tag to remove
it from the Needs Org & Triage view.

## Filing issues

Due to the restricted access of the Ops instance, please file all issues
pertaining to Zendesk US Federal views via the
[Views template](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new?issuable_template=Views)
in the
[zendesk-us-federal project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal).
