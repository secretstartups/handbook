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
[zendesk-automations project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-automations).
This allows us to have version-controlled automations. For more information on
managing Zendesk via the various GitLab projects, please review
[Using the sync repos](sync_repos.html).

### Current automations

| Name | Position | What it does | State |
|------|:--------:|--------------|-------|
| [Status::Close::Close un-monitored inbox tickets](https://gitlab.zendesk.com/agent/admin/automations/360076287139) | 1 | Closes tickets that were sent to an unmonitored inbox | Active |
| [Status::Close::Autoclose 2FA free tickets](https://gitlab.zendesk.com/agent/admin/automations/360049364739) | 2 | Closes out free 2FA tickets | Active | 
| [2FA::Autoresponder::2FA Autoresponder followup](https://gitlab.zendesk.com/agent/admin/automations/360015370180) | 3 | Sends a second reply to 2FA tickets 48 hours later | Inactive |
| [Status::Open::Reopen standard onhold tickets after 4 days](https://gitlab.zendesk.com/agent/admin/automations/360028978393) | 4 | Reopens standard on-hold tickets after 4 days | Active |
| [Status::Open::Reopen namesquatting tickets after 7 days](https://gitlab.zendesk.com/agent/admin/automations/94693587) | 5 | Reopens namesquatting tickets after 7 days | Active |
| [Status::Open::Reopen task tickets on due date](https://gitlab.zendesk.com/agent/admin/automations/360073590879) | 6 | Reopens task tickets at their due date | Active |
| [Status::Solve::Solve free tickets after 7 days pending](https://gitlab.zendesk.com/agent/admin/automations/360069143020) | 7 | Moves a free ticket to solved after 7 days of being consecutively pending | Active |
| [Status::Solve::Solve pending tickets after 20 days](https://gitlab.zendesk.com/agent/admin/automations/223598668) | 8 | Moves a ticket to solved after 20 days of being consecutively pending | Active |
| [Status::Close::Close solved tickets after 7 days](https://gitlab.zendesk.com/agent/admin/automations/39696333) | 9 | Moves a ticket to closed after 7 days of being consecutively solved | Active |
| [Ticket::Autoresponder::Reply as gitlab_support@example.com](https://gitlab.zendesk.com/agent/admin/automations/360073085279) | 10 | Replies to tickets as a GitLab controlled end-user so SLA can be put back on a ticket | Active |
| [Notifications::Agent::Remind agent of on-hold ticket](https://gitlab.zendesk.com/agent/admin/automations/360080402734) | 11 | Sends an email about an on-hold ticket | Active |
| [Notifications::Agent::Remind agent of assigned open ticket](https://gitlab.zendesk.com/agent/admin/automations/360080726273) | 12 | Sends an email about an open ticket | Active |
| [Notifications::Agent::Upcoming task notification](https://gitlab.zendesk.com/agent/admin/automations/360069943900) | 13 | Sends an email about an upcoming task | Active |
| [Notifications::Agent::Due date too far in future](https://gitlab.zendesk.com/agent/admin/automations/360070230619) | 14 | Clears out the due date, reopens the ticket, and emails the agent when the due date is too far in the future | Active |
| [Security::DMCA::Email vetted DMCA requests](https://gitlab.zendesk.com/agent/admin/automations/360055880793) | 15 | Emails vetted DMCA requests to the security team | Active |
| [Security::DMCA::Reopen on-hold DMCA requests](https://gitlab.zendesk.com/agent/admin/automations/360036581334) | 16 | Reopens on-hold DMCA tickets | Active |
| [SSAT::Survey::Send out survey](https://gitlab.zendesk.com/agent/admin/automations/46784293) | 17 | Sends out the SSAT survey after a ticket has been solved for one day | Active |
| [Status::Close::Autoclose JiHu tickets if user is not associated](https://gitlab.zendesk.com/agent/admin/automations/360072649139) | 18 | Closes JiHu tickets if there is no associated organization | Active |
| [Notifications::Slack::Post soon to breach FRT tickets in spt_amer-crew](https://gitlab.zendesk.com/agent/admin/automations/360075049639) | 19 | Posts soon to breach tickets in the AMER response crew channel | Active |
| [Status::Close::Close unassociated partner tickets](https://gitlab.zendesk.com/agent/admin/automations/360076287319) | 20 | Closes select/alliance partner tickets if there is no associated organization | Active |
