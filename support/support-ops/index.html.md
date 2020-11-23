---
layout: handbook-page-toc
title: Support Operations Team
description: Support Operations Team is responsible for supporting the day-to-day operations
and software systems used by GitLab’s global Technical Support team.
---

# Introduction to Support Operations Team (Support-Ops):
 
Support Operations Team is responsible for supporting the day-to-day operations
and software systems used by GitLab’s global Technical Support team, primarily
our Zendesk instance, and integrations with internal business processes and
tools. The Support Operations Team is exclusively responsible for handling
Zendesk Support and Explore related queries.

Further details and responsibilities are explained [here](#responsibilities).

You can locate us in GitLab issues or via the `#support_operations` channel
in slack.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Mission:
 
To help the Technical Support Team spontaneously and make their day to day
workflow simple and easier so the efficiency and result values of Technical
Support Team increases.

## Vision:
  
To provide the “Best in Class” support to our support team specifically and
GitLab to increase the overall value of GitLab as a team, organization and
product.

**Vision Target 2021- 2022:**

- To solve Technical Support Team Zendesk related issues within 3 months.
- Increase efficiency of Zendesk to enable Support to achieve KPIs

## Responsibilities

The core responsibilities of the Support Ops team are:

* Zendesk (main and us federal instance)
  * [Shared Organizations](responsibilities.html#shared-organizations-in-zendesk)
  * [Salesforce - Zendesk sync](responsibilities.html#salesforce-zendesk-sync)
  * [SFDC<>US Federal Zendesk sync](responsibilities.html#sfdcus-federal-zendesk-sync)
* [Customer Satisfaction Survey (CSAT)](responsibilities.html#customer-satisfaction-survey-csat)
* [Calendly](responsibilities.html#calendly)
* [PagerDuty](responsibilities.html#pagerduty)
* [Slack Notifications](responsibilities.html#slack-notifications)

## The Support Operations Team:

| Name | Role  | Slack Handle |
|--|--|--|
| [Jason Colyer](https://gitlab.com/jcolyer) | Support Operations Manager | @jcolyer |
| [Nabeel Bilgrami](https://gitlab.com/nabeel.bilgrami) | Support Operations Specialist (Main Instance) | @nabeel.bilgrami |
| [Dan Nolan](https://gitlab.com/dnolan1) | Support Operations Specialist (US Federal)} | @dnolan1

## Support Operations Important Links:

* [Main Project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project)
* [Progress Board](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/boards/1171115)
* [Priority Vice Issues Board](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/boards/1738899)
* [Project Labels](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/blob/master/README.md)

## Support Operations Workflow:

![](https://lh6.googleusercontent.com/gLFocegPFVnk9wx4YbHDZV78N1rLlymzeekgu3c-YgtWN22kKiXnE7HTtzhn-mnb7ZafZZRTAr9Igw2zK748T-eun36I3ecLJs1OzC1HqbsDgpBwzal2D-LRafKUZQr7h2RgFRUM)

This diagram explains how the general fixes are handled by the Support Operations Team.

## Support Operations Changelogs:

The Support Operations Team usually make the critical changes usually in weekend
and communicate them via Slack channel #support_team-chat
([https://gitlab.slack.com/archives/CCBJYEWAW](https://gitlab.slack.com/archives/CCBJYEWAW))
and SWIR
([/handbook/support/#support-week-in-review](/handbook/support/#support-week-in-review)).
We are working on standardizing the release schedule of changes and a single
communication channel where the questions and issues can be discussed.

## Frequently Asked Questions (F.A.Q.):

* If we receive any probelm in using Zendesk, can we contact Zendesk directly?

Please contact Support-Ops team first. Discuss the problem by asking a question in channel and tagging @support-ops. It is a high probability that we can help you resolve the problem at hand. In cases where we cannot and we do need to contact Zendesk support directly, it is best to have Support-Ops handle that.

* What will happen if Zendesk is down globally?

Zendesk will only go down when the internet is globally effected because they use Pods for services. This ensures that if a region is facing is downtime, Zendesk can quickly mitigate that while making sure services run smoothly. However, if you are still facing any problem accessing Zendesk, please contact the support-ops team. In the case that Zendesk is down globally, we have email support option available.

* Is there any disaster recovery plan available?

Zendesk keeps the data in backup servers will all due diligence. This ensures that we can recover data when it is needed. These backups are utilized to restore Zendesk in the case it fails due to a problem on Zendesk's end.

Also, the support-ops team ensures all triggers, automations, views, macros, forms, fields, conditions, etc are documented to save the hassle of writing up everything from scratch.

* Why do we allow users to open support tickets without being required to login to Zendesk via some authentication?

According to Lee Matos:

> Circa 2016 we had open Zendesk where we were manually assigning users to manually created orgs.
>
> There was a project that was being created called “middleware” that was going to act as the SSOT of known orgs. It did nothing to solve the customer mapping.
>
> It was in scope creep mode so I explored the offical sfdc<->zd sync. We started with account sync. We were interested in user syncing but our data was a mess.
>
> We ran into problems with org sync. Solved a bunch then some more.
>
> We recreated sfdc sync for the [main instance](https://about.gitlab.com/handbook/support/support-ops/responsibilities.html#account---organization-sync-from-salesforce) and [US Federal instance](https://about.gitlab.com/handbook/support/support-ops/responsibilities.html#sfdcus-federal-zendesk-sync) and are still just syncing orgs.
>
> There is a push (rightfully so) to lock it down and improve our wall/first time unknown user flow. If someone can get that over the line I think that GitLab support engineering leadership has no good reason to keep it “open access” at the moment and we support changing it. (I'm speaking out of turn — I’m stating this as fact but it’s my opinion.)
