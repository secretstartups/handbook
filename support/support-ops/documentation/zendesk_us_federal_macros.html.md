---
layout: handbook-page-toc
title: 'Zendesk US Federal Macros'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal macros'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/115001236988-Creating-macros-for-tickets):

> A macro is a prepared response or action that an agent can manually apply when
> they are creating or updating tickets. Macros contain actions that can update
> ticket properties.
>
> Unlike triggers and automations, macros only contain actions, not conditions.
> Conditions aren't used because nothing is automatically evaluating tickets to
> determine if a macro should be applied. Agents evaluate tickets and apply
> macros manually as needed.

Macros can do a wide range of these things, but the most common actions are:

* Make a public comment
* Add or remove ticket tags
* Change the ticket assignee
* Change the ticket form
* Populate ticket fields

## Macro management

Instead of managing Zendesk macros via Zendesk itself, we instead use GitLab
itself via the
[zendesk-macros project](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-macros).
This allows us to have version-controlled macros. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current macros

As we have many macros, and they change quite frequently, the best resource to
see all the current macros would be the
[zendesk-macros project](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-macros).

## Filing issues

Due to the restricted access of the Ops instance, please file all issues
pertaining to Zendesk US Federal macros via the
[Macros template](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new?issuable_template=Macros)
in the
[zendesk-us-federal project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal).
