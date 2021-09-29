---
layout: handbook-page-toc
title: 'Zendesk US Federal Triggers'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal triggers'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203662246-About-triggers-and-how-they-work):

> Triggers are business rules you define that run immediately after tickets are
> created or updated. For example, a trigger can be used to notify the customer
> when a ticket has been opened. Another can be created to then notify the
> customer when the ticket is solved.

## Trigger management


Instead of managing Zendesk triggers via Zendesk itself, we instead use GitLab
itself via the
[zendesk-triggers project](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-triggers).
This allows us to have version-controlled triggers. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current triggers

As we have many triggers, and they change quite frequently, the best resource to
see all the current triggers would be the
[zendesk-triggers project](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-triggers).

## Filing issues

Due to the restricted access of the Ops instance, please file all issues
pertaining to Zendesk US Federal triggers via the
[Triggers template](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new?issuable_template=Triggers)
in the
[zendesk-us-federal project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal).
