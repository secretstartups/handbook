---
layout: handbook-page-toc
title: 'Triggers'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global triggers'
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
[zendesk-triggers project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-triggers).
This allows us to have version-controlled triggers. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current triggers

As we have many triggers, and they change quite frequently, the best resource to
see all the current triggers would be the
[zendesk-triggers project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-triggers).
