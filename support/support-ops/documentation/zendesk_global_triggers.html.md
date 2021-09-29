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

| Trigger Name | Category | Position | State |
|--------------|----------|:--------:|-------|
| [Set Channel (received at) to Webform](https://gitlab.zendesk.com/agent/admin/triggers/360076288179) | Creation Stage | 1 | Active |
| [Set Channel (received at) to emergency](https://gitlab.zendesk.com/agent/admin/triggers/360076288439) | Creation Stage | 2 | Active |
| [Set Channel (received at) to ar](https://gitlab.zendesk.com/agent/admin/triggers/360062921700) | Creation Stage | 3 | Active |
| [Set Channel (received at) to billing](https://gitlab.zendesk.com/agent/admin/triggers/360075982780) | Creation Stage | 4 | Active |
| [Set Channel (received at) to incident-response](https://gitlab.zendesk.com/agent/admin/triggers/360074185259) | Creation Stage | 5 | Active |
| [Set Channel (received at) to proserv-education](https://gitlab.zendesk.com/agent/admin/triggers/360053055059) | Creation Stage | 6 | Active |
| [Set Channel (received at) to security](https://gitlab.zendesk.com/agent/admin/triggers/360016445080) | Creation Stage | 7 | Active |
| [Cleanup followup tickets](https://gitlab.zendesk.com/agent/admin/triggers/360050234840) | Creation Stage | 8 | Active |
| [Handle emergency email](https://gitlab.zendesk.com/agent/admin/triggers/74548737) | Creation Stage | 9 | Active |
| [Handle non-monitored inbox request](https://gitlab.zendesk.com/agent/admin/triggers/360076070520) | Creation Stage | 10 | Active |
| [Ticket requester is @gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360051975879) | Creation Stage | 11 | Active |
| [Set requester for Open Partner tickets](https://gitlab.zendesk.com/agent/admin/triggers/360056818739) | Creation Stage | 12 | Active |
| [New ticket confirmation email](https://gitlab.zendesk.com/agent/admin/triggers/360023419260) | Creation Stage | 13 | Active |
| [Post internal note about User info](https://gitlab.zendesk.com/agent/admin/triggers/360073389999) | Creation Stage | 14 | Active |
| [Ticket::ChinaComms::Received at china-comms@gitlab.zendesk.com](https://gitlab.zendesk.com/agent/admin/triggers/360073362079) | Creation Stage | 15 | Active |
| [Ticket::L&R::Received at renewals@gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360016552359) | Creation Stage | 16 | Inactive |
| [Received at subscribers@gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360016552399) | Creation Stage | 17 | Inactive |
| [Received at subscribers@gitlab.zendesk.com](https://gitlab.zendesk.com/agent/admin/triggers/44487963) | Creation Stage | 18 | Inactive |
| [Attempt auto-association](https://gitlab.zendesk.com/agent/admin/triggers/360065733559) | Needs Org Stage | 1 | Active |
| [Mark Needs Org stage complete](https://gitlab.zendesk.com/agent/admin/triggers/360075983160) | Needs Org Stage | 2 | Active |
| [Mark Needs Org stage complete for non-relevant tickets](https://gitlab.zendesk.com/agent/admin/triggers/360075983240) | Needs Org Stage | 3 | Active |
| [Mark Needs Org stage complete for free users](https://gitlab.zendesk.com/agent/admin/triggers/360076363039) | Needs Org Stage | 4 | Active |
| [Close out unassociated Select Partner tickets](https://gitlab.zendesk.com/agent/admin/triggers/360076309439) | Needs Org Stage | 5 | Active |
| [Close out unassociated Alliance Partner tickets](https://gitlab.zendesk.com/agent/admin/triggers/360076004060) | Needs Org Stage | 6 | Active |
| [Ask for support entitlement](https://gitlab.zendesk.com/agent/admin/triggers/360053535679) | Needs Org Stage | 7 | Active |
| [Comment next steps for Needs Org stage](https://gitlab.zendesk.com/agent/admin/triggers/360076288819) | Needs Org Stage | 8 | Active |
| [Remove tag needsorg_next_steps when user replies](https://gitlab.zendesk.com/agent/admin/triggers/360076288859) | Needs Org Stage | 9 | Active |
| [Skip triage stage](https://gitlab.zendesk.com/agent/admin/triggers/360076288879) | Triage Stage | 1 | Active |
| [Set area of focus to Other as default](https://gitlab.zendesk.com/agent/admin/triggers/360076288899) | Categorization Stage | 1 | Active |
| [Set area of focus to L&R](https://gitlab.zendesk.com/agent/admin/triggers/360075983380) | Categorization Stage | 2 | Active |
| [Set area of focus to CMOC](https://gitlab.zendesk.com/agent/admin/triggers/360075983400) | Categorization Stage | 3 | Active |
| [Set area of focus to SaaS Account](https://gitlab.zendesk.com/agent/admin/triggers/360075983420) | Categorization Stage | 4 | Active |
| [Set area of focus to Free user](https://gitlab.zendesk.com/agent/admin/triggers/360075983500) | Categorization Stage | 5 | Active |
| [Set area of focus to CI/CD](https://gitlab.zendesk.com/agent/admin/triggers/360075983540) | Categorization Stage | 6 | Active |
| [Set area of focus to Secure](https://gitlab.zendesk.com/agent/admin/triggers/360076288999) | Categorization Stage | 7 | Active |
| [Set area of focus to Auth](https://gitlab.zendesk.com/agent/admin/triggers/360075983580) | Categorization Stage | 8 | Active |
| [Set area of focus to Project/Group Management](https://gitlab.zendesk.com/agent/admin/triggers/360075983600) | Categorization Stage | 9 | Active |
| [Set area of focus to Instance Management](https://gitlab.zendesk.com/agent/admin/triggers/360076289039) | Categorization Stage | 10 | Active |
| [Set area of focus to GitLab Features](https://gitlab.zendesk.com/agent/admin/triggers/360076289059) | Categorization Stage | 11 | Active |
| [Set priority to High for Allowed Sev 1](https://gitlab.zendesk.com/agent/admin/triggers/360075984960) | Routing Stage | 1 | Active |
| [Set priority to High for non-allowed Sev 1](https://gitlab.zendesk.com/agent/admin/triggers/360075984980) | Routing Stage | 2 | Active |
| [Set priority to High for Sev 2](https://gitlab.zendesk.com/agent/admin/triggers/360075985000) | Routing Stage | 3 | Active |
| [Set priority to Normal for Sev 3](https://gitlab.zendesk.com/agent/admin/triggers/360076290219) | Routing Stage | 4 | Active |
| [Set priority to Low for Sev 4](https://gitlab.zendesk.com/agent/admin/triggers/360076290239) | Routing Stage | 5 | Active |
| [Set priority to medium by default](https://gitlab.zendesk.com/agent/admin/triggers/360076290259) | Routing Stage | 6 | Active |
| [Trigger emergency for Urgent tickets](https://gitlab.zendesk.com/agent/admin/triggers/360074069999) | Routing Stage | 7 | Active |
| [Set Preferred Region to All Regions if blank](https://gitlab.zendesk.com/agent/admin/triggers/360075983920) | Routing Stage | 8 | Active |
| [Set Schedule to AMER](https://gitlab.zendesk.com/agent/admin/triggers/360014043640) | Routing Stage | 9 | Active |
| [Set Schedule to APAC](https://gitlab.zendesk.com/agent/admin/triggers/360014043600) | Routing Stage | 10 | Active |
| [Set Schedule to EMEA](https://gitlab.zendesk.com/agent/admin/triggers/360014064819) | Routing Stage | 11 | Active |
| [Set Schedule to Business hours](https://gitlab.zendesk.com/agent/admin/triggers/360075984900) | Routing Stage | 12 | Active |
| [Set Schedule to Business hours for Bronze/Starter tickets](https://gitlab.zendesk.com/agent/admin/triggers/360027278900) | Routing Stage | 13 | Active |
| [Set Schedule to Business hours for Low/Medium priority tickets](https://gitlab.zendesk.com/agent/admin/triggers/360027279300) | Routing Stage | 14 | Active |
| [Set Schedule to Business hours for non-support tickets](https://gitlab.zendesk.com/agent/admin/triggers/360075984860) | Routing Stage | 15 | Active |
| [Ticket::Priority::Set priority to low](https://gitlab.zendesk.com/agent/admin/triggers/360068247153) | Routing Stage | 16 | Inactive |
| [Ticket::Priority::Set priority to medium](https://gitlab.zendesk.com/agent/admin/triggers/360068247053) | Routing Stage | 17 | Inactive |
| [Ticket::Priority::Set priority to high](https://gitlab.zendesk.com/agent/admin/triggers/360068246953) | Routing Stage | 18 | Inactive |
| [Post internal note about Organization info](https://gitlab.zendesk.com/agent/admin/triggers/360015531940) | Automation Stage | 1 | Active |
| [Post internal note about High priority](https://gitlab.zendesk.com/agent/admin/triggers/360051531779) | Automation Stage | 2 | Active |
| [Autoreply to Free and consumption 2FA tickets](https://gitlab.zendesk.com/agent/admin/triggers/360049438800) | Automation Stage | 3 | Active |
| [Autoreply to Paid 2FA tickets](https://gitlab.zendesk.com/agent/admin/triggers/159199407) | Automation Stage | 4 | Active |
| [New Security Ticket](https://gitlab.zendesk.com/agent/admin/triggers/75873598) | Automation Stage | 5 | Active |
| [New incident response ticket](https://gitlab.zendesk.com/agent/admin/triggers/360074954059) | Automation Stage | 6 | Active |
| [Autoreply to Community tickets](https://gitlab.zendesk.com/agent/admin/triggers/360073064519) | Automation Stage | 7 | Active |
| [Autoreply to account deletion tickets](https://gitlab.zendesk.com/agent/admin/triggers/360036736913) | Automation Stage | 8 | Active |
| [Docs link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016330060) | Lifespan Stage | 1 | Active |
| [MR link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016435479) | Lifespan Stage | 2 | Active |
| [Issue link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016434919) | Lifespan Stage | 3 | Active |
| [Handbook link in description](https://gitlab.zendesk.com/agent/admin/triggers/360034065299) | Lifespan Stage | 4 | Active |
| [Docs link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066564740) | Lifespan Stage | 5 | Active |
| [Handbook link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066566700) | Lifespan Stage | 6 | Active |
| [MR link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066784659) | Lifespan Stage | 7 | Active |
| [Issue link in private comment](https://gitlab.zendesk.com/agent/admin/triggers/360066784779) | Lifespan Stage | 8 | Active |
| [Set ARR and GitLab Plan](https://gitlab.zendesk.com/agent/admin/triggers/360090285754) | Lifespan Stage | 9 | Active |
| [Summary reminder 10 replies](https://gitlab.zendesk.com/agent/admin/triggers/360017377460) | Lifespan Stage | 10 | Active |
| [Summary reminder 20 replies](https://gitlab.zendesk.com/agent/admin/triggers/360017377480) | Lifespan Stage | 11 | Active |
| [Summary reminder 30 replies](https://gitlab.zendesk.com/agent/admin/triggers/360017377500) | Lifespan Stage | 12 | Active |
| [Manually trigger emergency](https://gitlab.zendesk.com/agent/admin/triggers/360075985240) | Lifespan Stage | 13 | Active |
| [Tag as consumption only user](https://gitlab.zendesk.com/agent/admin/triggers/360072885180) | Lifespan Stage | 14 | Active |
| [Tag as paid consumption user](https://gitlab.zendesk.com/agent/admin/triggers/360073199479) | Lifespan Stage | 15 | Active |
| [Remove missing_sla_tag once SLA is present](https://gitlab.zendesk.com/agent/admin/triggers/360076098760) | Lifespan Stage | 16 | Active |
| [Find tickets missing sla tags](https://gitlab.zendesk.com/agent/admin/triggers/360051556600) | Lifespan Stage | 17 | Active |
| [Repen if set to pending/solved via internal note](https://gitlab.zendesk.com/agent/admin/triggers/360028699699) | Lifespan Stage | 18 | Active |
| [Remove agent_update_needed tag](https://gitlab.zendesk.com/agent/admin/triggers/360064449420) | Lifespan Stage | 19 | Active |
| [Reopen on-hold ticket is no public reply](https://gitlab.zendesk.com/agent/admin/triggers/360064449400) | Lifespan Stage | 20 | Active |
| [Remove task_notification_sent](https://gitlab.zendesk.com/agent/admin/triggers/360070226439) | Lifespan Stage | 21 | Active |
| [Add free_customer tag](https://gitlab.zendesk.com/agent/admin/triggers/360075985380) | Lifespan Stage | 22 | Active |
| [Add trial tag](https://gitlab.zendesk.com/agent/admin/triggers/360076290559) | Lifespan Stage | 23 | Active |
| [Set stage to NRT after agent reply](https://gitlab.zendesk.com/agent/admin/triggers/360076290579) | Lifespan Stage | 24 | Active |
| [Set billing/ar team to billing when null](https://gitlab.zendesk.com/agent/admin/triggers/360075985440) | Lifespan Stage | 25 | Active |
| [Add prospect tag](https://gitlab.zendesk.com/agent/admin/triggers/360076974199) | Lifespan Stage | 26 | Active |
| [Remove prospect tag](https://gitlab.zendesk.com/agent/admin/triggers/360076974459) | Lifespan Stage | 27 | Active |
| [Remove expired tag if consumption_only is present](https://gitlab.zendesk.com/agent/admin/triggers/360077272060) | Lifespan Stage | 28 | Active |
| [Assign DigitalOcean tickets to Jason Colyer](https://gitlab.zendesk.com/agent/admin/triggers/360056594000) | Assignee | 1 | Active |
| [Remove assignee if non-human assignee](https://gitlab.zendesk.com/agent/admin/triggers/360017743040) | Assignee | 2 | Active |
| [Assign Abuse Report tickets to Security team](https://gitlab.zendesk.com/agent/admin/triggers/360015599319) | Assignee | 3 | Active |
| [Assign Security tickets to Security team](https://gitlab.zendesk.com/agent/admin/triggers/360048868280) | Assignee | 4 | Active |
| [Assign open or on-hold ticket to agent](https://gitlab.zendesk.com/agent/admin/triggers/360080206253) | Assignee | 5 | Inactive |
| [Assign any on-hold ticket to current agent](https://gitlab.zendesk.com/agent/admin/triggers/360069333019) | Assignee | 6 | Inactive |
| [Notifications::Assignee::Notify assignee of assignment](https://gitlab.zendesk.com/agent/admin/triggers/39696283) | Notifications | 1 | Active |
| [Notifications::Assignee::Notify assignee of comment update](https://gitlab.zendesk.com/agent/admin/triggers/39696273) | Notifications | 2 | Active |
| [Notifications::Requester::Notify requester of comment update](https://gitlab.zendesk.com/agent/admin/triggers/39696253) | Notifications | 3 | Active |
| [Notifications::Assignee::Notify assignee of reopened ticket](https://gitlab.zendesk.com/agent/admin/triggers/39696293) | Notifications | 4 | Active |
| [Notifications::Assignee::Notify assignee when rating is submitted](https://gitlab.zendesk.com/agent/admin/triggers/69773317) | Notifications | 5 | Active |
| [Ticket::Internal Comment::Note when customer’s message is internal](https://gitlab.zendesk.com/agent/admin/triggers/360019008340) | Notifications | 6 | Active |
| [Ticket::Autoresponder::Notify requester about autosolve](https://gitlab.zendesk.com/agent/admin/triggers/360066841839) | Notifications | 7 | Active |
| [Notifications::Slack::Post ticket updates to #feed_zd-main](https://gitlab.zendesk.com/agent/admin/triggers/360001152888) | Notifications | 8 | Active |
| [Slack Notify - #weimeng_zd-feed](https://gitlab.zendesk.com/agent/admin/triggers/360055015780) | Notifications | 9 | Active |
| [Notifications::Slack::Post new support tickets to support_response-crew](https://gitlab.zendesk.com/agent/admin/triggers/360072630300) | Notifications | 10 | Inactive |
| [SSAT::Issue Creation::When reason is null and they leave comments](https://gitlab.zendesk.com/agent/admin/triggers/360088483733) | SSAT | 1 | Active |
| [SSAT::Issue Creation::When reason is ‘Product’](https://gitlab.zendesk.com/agent/admin/triggers/360097202574) | SSAT | 2 | Active |
| [SSAT::Issue Creation::When reason is ‘Other’](https://gitlab.zendesk.com/agent/admin/triggers/360097002973) | SSAT | 3 | Active |
| [SSAT::Issue Creation::When reason is ‘Not Helpful’](https://gitlab.zendesk.com/agent/admin/triggers/360097003533) | SSAT | 4 | Active |
| [SSAT::Issue Creation::When reason is ‘Not Resolved’](https://gitlab.zendesk.com/agent/admin/triggers/360097003633) | SSAT | 5 | Active |
| [SSAT::Issue Creation::When reason is ‘Timely Manner’](https://gitlab.zendesk.com/agent/admin/triggers/360097003733) | SSAT | 6 | Active |
| [SSAT::Issue Creation::When reason is ‘No reason provided’](https://gitlab.zendesk.com/agent/admin/triggers/360041667219) | SSAT | 7 | Active |
| [Ticket::Tags::Remove agent identified free user if associated to org](https://gitlab.zendesk.com/agent/admin/triggers/360053135359) | Unsorted | 9 | Inactive |
| [Ticket::Tags::Remove verification-requested tag once user is associated](https://gitlab.zendesk.com/agent/admin/triggers/360053745900) | Unsorted | 11 | Inactive |
| [Ticket::Autoresponder::Ask for support entitlement (SaaS)](https://gitlab.zendesk.com/agent/admin/triggers/360053538159) | Unsorted | 12 | Inactive |
| [Needs-Org::Tags::Add needs-org tag](https://gitlab.zendesk.com/agent/admin/triggers/360001567348) | Unsorted | 13 | Inactive |
| [Needs-Org::Tags::Remove needs-org tag](https://gitlab.zendesk.com/agent/admin/triggers/360017109414) | Unsorted | 14 | Inactive |
| [2FA::Autoresponder::2FA unknown user](https://gitlab.zendesk.com/agent/admin/triggers/360015370160) | Unsorted | 17 | Inactive |
| [Ticket::Tags::Remove follow up tag when tickets are set to Pending or Solved](https://gitlab.zendesk.com/agent/admin/triggers/360018166139) | Unsorted | 31 | Inactive |
| [Documentation::Issue Creation::Document This](https://gitlab.zendesk.com/agent/admin/triggers/360033444299) | Unsorted | 32 | Inactive |
| [Ticket::Tags::Set last replier as agent](https://gitlab.zendesk.com/agent/admin/triggers/360022961439) | Unsorted | 33 | Inactive |
| [Ticket::Tags::Set last replier as customer](https://gitlab.zendesk.com/agent/admin/triggers/360022837620) | Unsorted | 34 | Inactive |
| [(Salesforce Integration) Sync tickets to Salesforce (00D61000000JNOFEA4)](https://gitlab.zendesk.com/agent/admin/triggers/360028138599) | Unsorted | 35 | Active |
| [(Salesforce Integration) Sync tickets to Salesforce (00D61000000JNOFEA4)](https://gitlab.zendesk.com/agent/admin/triggers/360028131580) | Unsorted | 36 | Active |
| [Unbabel for user](https://gitlab.zendesk.com/agent/admin/triggers/360057239480) | Unsorted | 44 | Active |
| [Unbabel for agent](https://gitlab.zendesk.com/agent/admin/triggers/360057239500) | Unsorted | 45 | Active |
| [Form::Tags::Sets form tag for SaaS Account tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064440160) | Unsorted | 46 | Inactive |
| [Form::Tags::Sets form tag for SaaS Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064566419) | Unsorted | 47 | Inactive |
| [Form::Tags::Sets form tag for Self-Managed Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064440660) | Unsorted | 48 | Inactive |
| [Form::Tags::Sets form tag for L&R Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064441120) | Unsorted | 49 | Inactive |
| [Form::Tags::Sets form tag for AR Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064441140) | Unsorted | 50 | Inactive |
| [Form::Tags::Sets form tag for Security Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064441200) | Unsorted | 51 | Inactive |
| [Form::Tags::Sets form tag for Professional Services Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064441240) | Unsorted | 52 | Inactive |
| [Form::Tags::Sets form tag for Open Partner Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064441280) | Unsorted | 53 | Inactive |
| [Form::Tags::Sets form tag for Select Partner Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064566579) | Unsorted | 54 | Inactive |
| [Form::Tags::Sets form tag for Alliance Partner Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064441300) | Unsorted | 55 | Inactive |
| [Form::Tags::Sets form tag for Other Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360064441340) | Unsorted | 56 | Inactive |
| [Emergency::Autoresponder::User unassociated](https://gitlab.zendesk.com/agent/admin/triggers/360064568839) | Unsorted | 57 | Inactive |
| [Emergency::Tags::Organization associated](https://gitlab.zendesk.com/agent/admin/triggers/360064568879) | Unsorted | 58 | Inactive |
| [Form::Tags::Sets form tag for JiHu Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360072648819) | Unsorted | 62 | Inactive |
| [Form::Tags::Sets form tag for GitLab Incidents](https://gitlab.zendesk.com/agent/admin/triggers/360074954119) | Unsorted | 63 | Inactive |
| [Ticket::Autoresponder::Free Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360072464539) | Unsorted | 70 | Inactive |
| [Ticket::Autoresponder::Close JiHu form ticket if user is unassociated](https://gitlab.zendesk.com/agent/admin/triggers/360072649099) | Unsorted | 71 | Active |
| [Form::Tags::Sets form tag for Community Tickets](https://gitlab.zendesk.com/agent/admin/triggers/360073165699) | Unsorted | 73 | Inactive |
| [Notifications::Email::Notify select users about China Response Form](https://gitlab.zendesk.com/agent/admin/triggers/360073222519) | Unsorted | 76 | Active |
