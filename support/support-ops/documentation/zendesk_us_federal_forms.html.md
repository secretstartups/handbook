---
layout: handbook-page-toc
title: 'Zendesk US Federal Forms'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal forms'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Ticket forms are the forms utilized by the user to create tickets (when using
the web UI). These then translate the responses on the form into ticket
metadata.

These fall into one of two types:

* Public - meaning both agents and end-users can see these
* Internal - meaning only agents can see these

## Form management

Instead of managing Zendesk forms via Zendesk itself, we instead use GitLab
itself via the
[ticket-forms-and-fields project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/ticket-forms-and-fields).
This allows us to have version-controlled forms. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current forms

| Name | ID | Type | Category | What is it for |
|---|:-:|---|---|---|
| [Support](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=444&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000446511) | 360000446511 | Public | Support | For tickets relating to Support matters |
| [Triage](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=444&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360001421032) | 360001421032 | Internal | Support | For tickets needing to be triaged |
| [Upgrade Assistance](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=444&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360001434131) | 360001434131 | Public | Support | For tickets relating to Upgrade Assistance |
| [Shared Organization Request](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=444&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360001421052) | 360001421052 | Public | Support | For tickets relating to Shared Organization Requests |
| [L&R](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=444&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360001421072) | 360001421072 | Public | Support | For matters relating to Licensing and Subscription Renewals |
| [Emergency](https://ops.gitlab.net/search?utf8=%E2%9C%93&group_id=723&project_id=444&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360001421112) | 360001421112 | Public | Support | For emergency requests |

## Filing issues

Due to the restricted access of the Ops instance, please file all issues
pertaining to Zendesk US Federal forms via the
[Ticket Forms and Fields template](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new?issuable_template=Ticket Forms and Fields)
in the
[zendesk-us-federal project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal).
