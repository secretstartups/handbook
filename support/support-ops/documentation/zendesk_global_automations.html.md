---
layout: handbook-page-toc
title: 'Zendesk Global Automations'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global automations'
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
[automations project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/automations).
This allows us to have version-controlled automations. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current automations

| Name | What it does |
|------|--------------|
| [Status::Open::Reopen standard onhold tickets after 4 days](https://gitlab.zendesk.com/agent/admin/automations/360028978393) | Reopens standard on-hold tickets after 4 days |
| [Status::Open::Reopen namesquatting tickets after 7 days](https://gitlab.zendesk.com/agent/admin/automations/94693587) | Reopens namesquatting tickets after 7 days |
| [Status::Open::Reopen task tickets on due date](https://gitlab.zendesk.com/agent/admin/automations/360073590879) | Reopens task tickets at their due date |
| [Status::Solve::Solve free tickets after 7 days pending](https://gitlab.zendesk.com/agent/admin/automations/360069143020) | Moves a free ticket to solved after 7 days of being consecutively pending |
| [Status::Solve::Solve pending tickets after 20 days](https://gitlab.zendesk.com/agent/admin/automations/223598668) | Moves a ticket to solved after 20 days of being consecutively pending |
| [Status::Close::Close solved tickets after 7 days](https://gitlab.zendesk.com/agent/admin/automations/39696333) | Moves a ticket to closed after 7 days of being consecutively solved |
| [Ticket::Autoresponder::Reply as gitlab_support@example.com](https://gitlab.zendesk.com/agent/admin/automations/360073085279) |  Replies to tickets as a GitLab controlled end-user so SLA can be put back on a ticket |
| [Notifications::Agent::Remind agent of on-hold ticket](https://gitlab.zendesk.com/agent/admin/automations/360080402734) | Sends an email about an on-hold ticket |
| [Notifications::Agent::Remind agent of assigned open ticket](https://gitlab.zendesk.com/agent/admin/automations/360080726273) | Sends an email about an open ticket |
| [Notifications::Agent::Upcoming task notification](https://gitlab.zendesk.com/agent/admin/automations/360069943900) | Sends an email about an upcoming task |
| [Notifications::Agent::Due date too far in future](https://gitlab.zendesk.com/agent/admin/automations/360070230619) | Clears out the due date, reopens the ticket, and emails the agent when the due date is too far in the future |
| [Security::DMCA::Email vetted DMCA requests](https://gitlab.zendesk.com/agent/admin/automations/360055880793) | Emails vetted DMCA requests to the security team |
| [Security::DMCA::Reopen on-hold DMCA requests](https://gitlab.zendesk.com/agent/admin/automations/360036581334) | Reopens on-hold DMCA tickets |
| [SSAT::Survey::Send out survey](https://gitlab.zendesk.com/agent/admin/automations/46784293) | Sends out the SSAT survey after a ticket has been solved for one day |
