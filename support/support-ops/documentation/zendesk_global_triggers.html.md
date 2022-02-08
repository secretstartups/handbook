---
layout: handbook-page-toc
title: 'Zendesk Global Triggers'
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

| Trigger Name | Category | Position |
|--------------|----------|:--------:|
| [Set Channel (received at) to Webform](https://gitlab.zendesk.com/agent/admin/triggers/360076288179) | Creation Stage | 1 |
| [Set Channel (received at) to emergency](https://gitlab.zendesk.com/agent/admin/triggers/360076288439) | Creation Stage | 2 |
| [Set Channel (received at) to ar](https://gitlab.zendesk.com/agent/admin/triggers/360062921700) | Creation Stage | 3 |
| [Set Channel (received at) to billing](https://gitlab.zendesk.com/agent/admin/triggers/360075982780) | Creation Stage | 4 |
| [Set Channel (received at) to incident-response](https://gitlab.zendesk.com/agent/admin/triggers/360074185259) | Creation Stage | 5 |
| [Set Channel (received at) to proserv-education](https://gitlab.zendesk.com/agent/admin/triggers/360053055059) | Creation Stage | 6 |
| [Set Channel (received at) to security](https://gitlab.zendesk.com/agent/admin/triggers/360016445080) | Creation Stage | 7 |
| [Cleanup followup tickets](https://gitlab.zendesk.com/agent/admin/triggers/360050234840) | Creation Stage | 8 |
| [Handle emergency email](https://gitlab.zendesk.com/agent/admin/triggers/74548737) | Creation Stage | 9 |
| [Handle non-monitored inbox request](https://gitlab.zendesk.com/agent/admin/triggers/360076070520) | Creation Stage | 10 |
| [Ticket requester is @gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360051975879) | Creation Stage | 11 |
| [Set requester for Open Partner tickets](https://gitlab.zendesk.com/agent/admin/triggers/360056818739) | Creation Stage | 12 |
| [New ticket confirmation email](https://gitlab.zendesk.com/agent/admin/triggers/360023419260) | Creation Stage | 13 |
| [Post internal note about User info](https://gitlab.zendesk.com/agent/admin/triggers/360073389999) | Creation Stage | 14 |
| [Ticket::ChinaComms::Received at china-comms@gitlab.zendesk.com](https://gitlab.zendesk.com/agent/admin/triggers/360073362079) | Creation Stage | 15 |
| [Attempt auto-association](https://gitlab.zendesk.com/agent/admin/triggers/360065733559) | Needs Org Stage | 1 |
| [Mark Needs Org stage complete](https://gitlab.zendesk.com/agent/admin/triggers/360075983160) | Needs Org Stage | 2 |
| [Mark Needs Org stage complete for non-relevant tickets](https://gitlab.zendesk.com/agent/admin/triggers/360075983240) | Needs Org Stage | 3 |
| [Mark Needs Org stage complete for prospect and free users](https://gitlab.zendesk.com/agent/admin/triggers/360076363039) | Needs Org Stage | 4 |
| [Close out unassociated Select Partner tickets](https://gitlab.zendesk.com/agent/admin/triggers/360076309439) | Needs Org Stage | 5 |
| [Close out unassociated Alliance Partner tickets](https://gitlab.zendesk.com/agent/admin/triggers/360076004060) | Needs Org Stage | 6 |
| [Ask for support entitlement](https://gitlab.zendesk.com/agent/admin/triggers/360053535679) | Needs Org Stage | 7 |
| [Comment next steps for Needs Org stage](https://gitlab.zendesk.com/agent/admin/triggers/360076288819) | Needs Org Stage | 8 |
| [Remove tag needsorg_next_steps when user replies](https://gitlab.zendesk.com/agent/admin/triggers/360076288859) | Needs Org Stage | 9 |
| [Skip triage stage](https://gitlab.zendesk.com/agent/admin/triggers/360076288879) | Triage Stage | 1 |
| [Set area of focus to Other as default](https://gitlab.zendesk.com/agent/admin/triggers/360076288899) | Categorization Stage | 1 |
| [Set area of focus to L&R](https://gitlab.zendesk.com/agent/admin/triggers/360075983380) | Categorization Stage | 2 |
| [Set area of focus to CMOC](https://gitlab.zendesk.com/agent/admin/triggers/360075983400) | Categorization Stage | 3 |
| [Set area of focus to SaaS Account](https://gitlab.zendesk.com/agent/admin/triggers/360075983420) | Categorization Stage | 4 |
| [Set area of focus to Free user](https://gitlab.zendesk.com/agent/admin/triggers/360075983500) | Categorization Stage | 5 |
| [Set area of focus to CI/CD](https://gitlab.zendesk.com/agent/admin/triggers/360075983540) | Categorization Stage | 6 |
| [Set area of focus to Secure](https://gitlab.zendesk.com/agent/admin/triggers/360076288999) | Categorization Stage | 7 |
| [Set area of focus to Auth](https://gitlab.zendesk.com/agent/admin/triggers/360075983580) | Categorization Stage | 8 |
| [Set area of focus to Project/Group Management](https://gitlab.zendesk.com/agent/admin/triggers/360075983600) | Categorization Stage | 9 |
| [Set area of focus to Instance Management](https://gitlab.zendesk.com/agent/admin/triggers/360076289039) | Categorization Stage | 10 |
| [Set area of focus to GitLab Features](https://gitlab.zendesk.com/agent/admin/triggers/360076289059) | Categorization Stage | 11 |
| [Set priority to High for Allowed Sev 1](https://gitlab.zendesk.com/agent/admin/triggers/360075984960) | Routing Stage | 1 |
| [Set priority to High for non-allowed Sev 1](https://gitlab.zendesk.com/agent/admin/triggers/360075984980) | Routing Stage | 2 |
| [Set priority to High for Sev 2](https://gitlab.zendesk.com/agent/admin/triggers/360075985000) | Routing Stage | 3 |
| [Set priority to Normal for Sev 3](https://gitlab.zendesk.com/agent/admin/triggers/360076290219) | Routing Stage | 4 |
| [Set priority to Low for Sev 4](https://gitlab.zendesk.com/agent/admin/triggers/360076290239) | Routing Stage | 5 |
| [Set priority to medium by default](https://gitlab.zendesk.com/agent/admin/triggers/360076290259) | Routing Stage | 6 |
| [Trigger emergency for Urgent tickets](https://gitlab.zendesk.com/agent/admin/triggers/360074069999) | Routing Stage | 7 |
| [Set Preferred Region to All Regions if blank](https://gitlab.zendesk.com/agent/admin/triggers/360075983920) | Routing Stage | 8 |
| [Set Schedule to Business hours if no other one is set](https://gitlab.zendesk.com/agent/admin/triggers/1900000930334) | Routing Stage | 9 |
| [Set schedule to Business hours for non-support tickets](https://gitlab.zendesk.com/agent/admin/triggers/1900000930374) | Routing Stage | 10 |
| [Set schedule to Business hours for Needs Org tickets](https://gitlab.zendesk.com/agent/admin/triggers/360079161439) | Routing Stage | 11 |
| [Set schedule to Business hours for Needs Triage tickets](https://gitlab.zendesk.com/agent/admin/triggers/360078881760) | Routing Stage | 12 |
| [Set schedule to Business hours for NRT tickets](https://gitlab.zendesk.com/agent/admin/triggers/1900000930474) | Routing Stage | 13 |
| [Set ticket group for non-applicable tickets](https://gitlab.zendesk.com/agent/admin/triggers/360085932979) | Routing Stage | 14 |
| [Set Schedule to Business hours for All Region FRT support tickets](https://gitlab.zendesk.com/agent/admin/triggers/1900000930434) | Routing Stage | 15 |
| [Set Schedule to Business hours for Low priority FRT support tickets](https://gitlab.zendesk.com/agent/admin/triggers/360078881900) | Routing Stage | 16 |
| [Set Schedule to Business hours for Starter/Bronze FRT support tickets](https://gitlab.zendesk.com/agent/admin/triggers/360078881880) | Routing Stage | 17 |
| [Set Schedule to Regional hours - AMER](https://gitlab.zendesk.com/agent/admin/triggers/360078881840) | Routing Stage | 18 |
| [Set Schedule to Regional hours - APAC](https://gitlab.zendesk.com/agent/admin/triggers/1900000930394) | Routing Stage | 19 |
| [Set Schedule to Regional hours - EMEA](https://gitlab.zendesk.com/agent/admin/triggers/1900000930414) | Routing Stage | 20 |
| [Post internal note about Organization info](https://gitlab.zendesk.com/agent/admin/triggers/360015531940) | Automation Stage | 1 |
| [Post internal note about High priority](https://gitlab.zendesk.com/agent/admin/triggers/360051531779) | Automation Stage | 2 |
| [Autoreply to Free and consumption 2FA tickets](https://gitlab.zendesk.com/agent/admin/triggers/360049438800) | Automation Stage | 3 |
| [Autoreply to Paid 2FA tickets](https://gitlab.zendesk.com/agent/admin/triggers/159199407) | Automation Stage | 4 |
| [New incident response ticket](https://gitlab.zendesk.com/agent/admin/triggers/360074954059) | Automation Stage | 5 |
| [Autoreply to Community tickets](https://gitlab.zendesk.com/agent/admin/triggers/360073064519) | Automation Stage | 6 |
| [Autoreply to account deletion tickets](https://gitlab.zendesk.com/agent/admin/triggers/360036736913) | Automation Stage | 7 |
| [Autoreply to free SaaS tickets](https://gitlab.zendesk.com/agent/admin/triggers/360086174199) | Automation Stage | 8 |
| [Auto-close free and self-provisioned trial SM tickets](https://gitlab.zendesk.com/agent/admin/triggers/1900006114054) | Automation Stage | 9 |
| [Auto-work no confirmation email tickets](https://gitlab.zendesk.com/agent/admin/triggers/1900006117194) | Automation Stage | 10 |
| [Auto-work forgot password tickets](https://gitlab.zendesk.com/agent/admin/triggers/360085019860) | Automation Stage | 11 |
| [Auto-work account blocked tickets](https://gitlab.zendesk.com/agent/admin/triggers/360085341899) | Automation Stage | 12 |
| [Auto-reply to non-priority prospects](https://gitlab.zendesk.com/agent/admin/triggers/360088993719) | Automation Stage | 13 |
| [Docs link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016330060) | Lifespan Stage | 1 |
| [MR link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016435479) | Lifespan Stage | 2 |
| [Issue link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016434919) | Lifespan Stage | 3 |
| [Handbook link in description](https://gitlab.zendesk.com/agent/admin/triggers/360034065299) | Lifespan Stage | 4 |
| [Docs link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066564740) | Lifespan Stage | 5 |
| [Handbook link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066566700) | Lifespan Stage | 6 |
| [MR link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066784659) | Lifespan Stage | 7 |
| [Issue link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066784779) | Lifespan Stage | 8 |
| [Set ARR and GitLab Plan](https://gitlab.zendesk.com/agent/admin/triggers/360090285754) | Lifespan Stage | 9 |
| [Summary reminder 10 replies](https://gitlab.zendesk.com/agent/admin/triggers/360017377460) | Lifespan Stage | 10 |
| [Summary reminder 20 replies](https://gitlab.zendesk.com/agent/admin/triggers/360017377480) | Lifespan Stage | 11 |
| [Summary reminder 30 replies](https://gitlab.zendesk.com/agent/admin/triggers/360017377500) | Lifespan Stage | 12 |
| [Manually trigger emergency](https://gitlab.zendesk.com/agent/admin/triggers/360075985240) | Lifespan Stage | 13 |
| [Tag as consumption only user](https://gitlab.zendesk.com/agent/admin/triggers/360072885180) | Lifespan Stage | 14 |
| [Tag as paid consumption user](https://gitlab.zendesk.com/agent/admin/triggers/360073199479) | Lifespan Stage | 15 |
| [Remove missing_sla_tag once SLA is present](https://gitlab.zendesk.com/agent/admin/triggers/360076098760) | Lifespan Stage | 16 |
| [Find tickets missing sla tags](https://gitlab.zendesk.com/agent/admin/triggers/360051556600) | Lifespan Stage | 17 |
| [Repen if set to pending/solved via internal note](https://gitlab.zendesk.com/agent/admin/triggers/360028699699) | Lifespan Stage | 18 |
| [Remove agent_update_needed tag](https://gitlab.zendesk.com/agent/admin/triggers/360064449420) | Lifespan Stage | 19 |
| [Reopen on-hold ticket is no public reply](https://gitlab.zendesk.com/agent/admin/triggers/360064449400) | Lifespan Stage | 20 |
| [Remove task_notification_sent](https://gitlab.zendesk.com/agent/admin/triggers/360070226439) | Lifespan Stage | 21 |
| [Add free_customer tag](https://gitlab.zendesk.com/agent/admin/triggers/360075985380) | Lifespan Stage | 22 |
| [Add trial tag](https://gitlab.zendesk.com/agent/admin/triggers/360076290559) | Lifespan Stage | 23 |
| [Set stage to NRT after agent reply](https://gitlab.zendesk.com/agent/admin/triggers/360076290579) | Lifespan Stage | 24 |
| [Set billing/ar team to billing when null](https://gitlab.zendesk.com/agent/admin/triggers/360075985440) | Lifespan Stage | 25 |
| [Add prospect tag](https://gitlab.zendesk.com/agent/admin/triggers/360076974199) | Lifespan Stage | 26 |
| [Remove prospect tag](https://gitlab.zendesk.com/agent/admin/triggers/360076974459) | Lifespan Stage | 27 |
| [Remove expired tag if consumption_only is present](https://gitlab.zendesk.com/agent/admin/triggers/360077272060) | Lifespan Stage | 28 |
| [Create documentation issue](https://gitlab.zendesk.com/agent/admin/triggers/1900000372654) | Lifespan Stage | 29 |
| [Email user and reopen ticket when user is associated to an org](https://gitlab.zendesk.com/agent/admin/triggers/360081260800) | Lifespan Stage | 30 |
| [Reopen pending internal-request ticket when private comment is made](https://gitlab.zendesk.com/agent/admin/triggers/1900007707754) | Lifespan Stage | 31 |
| [Assign DigitalOcean tickets to Jason Colyer](https://gitlab.zendesk.com/agent/admin/triggers/360056594000) | Assignee | 1 |
| [Remove assignee if non-human assignee](https://gitlab.zendesk.com/agent/admin/triggers/360017743040) | Assignee | 2 |
| [Notifications::Assignee::Notify assignee of assignment](https://gitlab.zendesk.com/agent/admin/triggers/39696283) | Notifications | 1 |
| [Notifications::Assignee::Notify assignee of comment update](https://gitlab.zendesk.com/agent/admin/triggers/39696273) | Notifications | 2 |
| [Notifications::Requester::Notify requester of comment update](https://gitlab.zendesk.com/agent/admin/triggers/39696253) | Notifications | 3 |
| [Notifications::Assignee::Notify assignee of reopened ticket](https://gitlab.zendesk.com/agent/admin/triggers/39696293) | Notifications | 4 |
| [Notifications::Assignee::Notify assignee when rating is submitted](https://gitlab.zendesk.com/agent/admin/triggers/69773317) | Notifications | 5 |
| [Note when customer's message is internal](https://gitlab.zendesk.com/agent/admin/triggers/360019008340) | Notifications | 6 |
| [Notify requester about autosolve](https://gitlab.zendesk.com/agent/admin/triggers/360066841839) | Notifications | 7 |
| [Post ticket updates to #feed_zd-main](https://gitlab.zendesk.com/agent/admin/triggers/360001152888) | Notifications | 8 |
| [Slack Notify - #weimeng_zd-feed](https://gitlab.zendesk.com/agent/admin/triggers/360055015780) | Notifications | 9 |
| [Create feedback issue when reason is: null and they leave comments](https://gitlab.zendesk.com/agent/admin/triggers/360088483733) | SSAT | 1 |
| [Create feedback issue when reason is: Product](https://gitlab.zendesk.com/agent/admin/triggers/360097202574) | SSAT | 2 |
| [Create feedback issue when reason is: Other](https://gitlab.zendesk.com/agent/admin/triggers/360097002973) | SSAT | 3 |
| [Create feedback issue when reason is: Not Helpful](https://gitlab.zendesk.com/agent/admin/triggers/360097003533) | SSAT | 4 |
| [Create feedback issue when reason is: Not Resolved](https://gitlab.zendesk.com/agent/admin/triggers/360097003633) | SSAT | 5 |
| [Create feedback issue when reason is: Timely Manner](https://gitlab.zendesk.com/agent/admin/triggers/360097003733) | SSAT | 6 |
| [Create feedback issue when reason is: No reason provided](https://gitlab.zendesk.com/agent/admin/triggers/360041667219) | SSAT | 7 |
| [(Salesforce Integration) Sync tickets to Salesforce (00D61000000JNOFEA4)](https://gitlab.zendesk.com/agent/admin/triggers/1900007487074) | Unsorted | 1 |
| [(Salesforce Integration) Sync tickets to Salesforce (00D61000000JNOFEA4)](https://gitlab.zendesk.com/agent/admin/triggers/360028131580) | Unsorted | 2 |
| [Close JiHu form ticket if user is unassociated](https://gitlab.zendesk.com/agent/admin/triggers/360072649099) | Unsorted | 3 |
| [Notify select users about China Response Form](https://gitlab.zendesk.com/agent/admin/triggers/360073222519) | Unsorted | 4 |
| [Unbabel for agent](https://gitlab.zendesk.com/agent/admin/triggers/360057239500) | Unsorted | 5 |
| [Unbabel for user](https://gitlab.zendesk.com/agent/admin/triggers/360057239480) | Unsorted | 6 |
