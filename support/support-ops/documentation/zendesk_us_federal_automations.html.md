---
layout: handbook-page-toc
title: 'Zendesk US Federal Automations'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal automations'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203662236-About-automations-and-how-they-work):

> Automations are similar to triggers because both define conditions and actions
> that modify ticket properties and optionally send email notifications to
> customers and agents. Where they differ is that automations execute when a
time event occurs after a ticket property was set or updated, rather than
immediately after a ticket is created or updated.

The simpler way to think of it is automations are triggers that do not run
instantly. They are time based than event based.

## Automations management

Instead of managing Zendesk automations via Zendesk itself, we instead use
GitLab itself via the
[zendesk-automations project](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-automations).
This allows us to have version-controlled automations. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current automations

As we have many automations, and they change quite frequently, the best resource
to see all the current triggers would be the
[zendesk-automations project](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-automations).


## Filing issues

Due to the restricted access of the Ops instance, please file all issues
pertaining to Zendesk US Federal automations via the
[Automations template](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new?issuable_template=Automations)
in the
[zendesk-us-federal project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal).
