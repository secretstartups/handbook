---
layout: handbook-page-toc
title: 'Forms'
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

| Name | ID | Type | Category | What is it for |
|---|:-:|---|---|---|
| [SaaS Account](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000803379) | 360000803379 | Public | Support | For GitLab.com tickets about Account related matters (2FA, login, etc.) |
| [SaaS](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+334447) | 334447 | Public | Support | For GitLab.com tickets not about Account related matters |
| [Self-Managed](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+426148) | 426148 | Public | Support | For tickets about Self-Managed instances |
| [L&R](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000071293) | 360000071293 | Public | Support | For matters relating to Licensing and Subscription Renewals |
| [Other](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+334427) | 334427 | Public | Support | Catchall Form |
| [Security](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000515493) | 360000515493 | Public | Non-support | For tickets relating to GitLab.com security matters |
| [Billing](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000258393) | 360000258393 | Public | Non-support | For tickets relating to Account Receivable/Refund matters |
| [Professional Services](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000647759) | 360000647759 | Public | Non-support | For tickets relating to GitLab Learn |
| [Select Partner](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000837100) | 360000837100 | Public | Support | Support tickets for Select Partners |
| [Open Partner](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360000818199) | 360000818199 | Public | Support | Support tickets for Open Partners |
| [Alliance Partner](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360001172559) | 360001172559 | Public | Support | Support tickets for Alliance Partners |
| [Community](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+334467) | 334467 | Internal | Support | For requests from the community |
| [Emergency](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20341715&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360001264259) | 360001264259 | Internal | Support | For emergency requests |
