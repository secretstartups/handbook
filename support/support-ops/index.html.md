---
layout: handbook-page-toc
title: Support Operations Team
description: Support Operations Team main page
---

# Introduction to Support Operations Team (Support-Ops)
 
Support Operations team is responsible for supporting the day-to-day operations
and software systems used by GitLab’s global Technical Support team, primarily
our Zendesk instance, and integrations with internal business processes and
tools. The Support Operations Team is exclusively responsible for handling
Zendesk Support and Explore related queries.

You can locate us in GitLab issues or via the 
[`#support_operations`](https://gitlab.slack.com/archives/C018ZGZAMPD)
channel in slack.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Mission
 
To help the Technical Support Team spontaneously and make their day to day
workflow simple and easier so the efficiency and result values of Technical
Support Team increases.

## Vision
  
To provide the “Best in Class” support to our support team specifically and
GitLab to increase the overall value of GitLab as a team, organization and
product.

**Vision Target 2021- 2022:**

- To solve Technical Support Team Zendesk related issues within 3 months.
- Increase efficiency of Zendesk to enable Support to achieve KPIs

## The Support Operations Team

| Name | Role  | Slack Handle |
|--|--|--|
| [Lyle Kozloff](https://gitlab.com/lyle) | Director of Support, Global Readiness | @lyle |
| [Jason Colyer](https://gitlab.com/jcolyer) | Support Operations Manager | @jcolyer |
| [Nabeel Bilgrami](https://gitlab.com/nabeel.bilgrami) | Support Operations Specialist (Global Instance) | @nabeel.bilgrami |
| [Dan Nolan](https://gitlab.com/dnolan1) | Support Operations Specialist (US Federal)} | @dnolan1
| [Alyssa Villa](https://gitlab.com/avilla4) | Support Operations Specialist (Global Instance) | @avilla4 |
| [Dylan Tragjasi](https://gitlab.com/dtragjasi) | Support Operations Specialist (Global Instance) | @dtragjasi |

## Support Operations Important Links

* [Main Project](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project)
* [Our documentation](documentation/)
* [Our workflows](workflows/)
* [Our training documents](training/)
* [Project Labels](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project#what-do-all-the-labels-mean)
* Various issue boards:
  * [By category issue board](https://gitlab.com/groups/gitlab-com/support/support-ops/-/boards/2325911)
  * [By priority issue board](https://gitlab.com/groups/gitlab-com/support/support-ops/-/boards/564195)
  * [By progress issue board](https://gitlab.com/groups/gitlab-com/support/support-ops/-/boards/2325921)
  * [Zendesk issue board](https://gitlab.com/groups/gitlab-com/support/support-ops/-/boards/2325976)

## Support Operations Workflow

![](https://lh6.googleusercontent.com/gLFocegPFVnk9wx4YbHDZV78N1rLlymzeekgu3c-YgtWN22kKiXnE7HTtzhn-mnb7ZafZZRTAr9Igw2zK748T-eun36I3ecLJs1OzC1HqbsDgpBwzal2D-LRafKUZQr7h2RgFRUM)

This diagram explains how the general fixes are handled by the Support
Operations team.

## Support Operations Changelogs

The Support Operations Team usually make the critical changes over weekends
and communicate them via Slack channel [`#support_ops-annoucements`](https://gitlab.slack.com/archives/C02EK1QV5K9)
and SWIR ([/handbook/support/#support-week-in-review](/handbook/support/#support-week-in-review)).

### Support Ops Change Criticalities

Mirroring [infrastructure's change management criticalities](/handbook/engineering/infrastructure/change-management/#change-criticalities) Support Ops
defines changes on a C1 - C4 scale that helps determine appropriate planning horizons. 

Criticalities can be estimated during a [Requested Change](/handbook/support/managers/change-management.html#creating-a-requested-change-issue-andor-mrs) and will be finalized once an issue is moved to the Support Ops project. The [scheduling intervals](#scheduling-intervals-and-exceptions) indicate the delay between change annoucement and change deployment.

#### Support Operations Criticality 1

These are changes with high impact or high risk that may significantly modify Support Engineer or Customer experience. If a change is going to cause downtime to the environment, it is always categorized a C1.

##### Examples of Support Operations Criticality 1

1. Changing the functionality of a widely used Zendesk View
1. Altering Zendesk in a way to support a significant process change
1. Changes to any SLA policy in use

#### Support Operations Criticality 2

These are changes that aren't expected to significantly impact Support Engineer or Customer experiences, but which still carry some risk of impact if something unexpected happens. 

##### Examples of Support Operations Criticality 2

1. Updating the theme on the Support Portal
1. Changing SLA timers on a subset of tickets

#### Support Operations Criticality 3

These are changes with either no or very-low risk of negative impact, but where there is still some inherent complexity, or it is not fully automated and hands-off.

##### Examples of Support Operations Criticality 3

1. Adding a new form field on a Support form
1. Bulk removing expired Zendesk organizations
1. Adding a new Zendesk app that will make things more convenient for Support Engineers


#### Support Operations Criticality 4 

These are changes that are exceedingly low risk and commonly executed, or which are fully automated. Often these will be changes that are mainly being recorded for visibility rather than as a substantial control measure.

##### Examples of Support Operations Criticality 4

1. Adding or removing users from a ZD organization
1. Updating the language in a macro

#### Scheduling intervals and exceptions

Each criticiality has a required time interval that ensures adequate time for Ops scheduling and for the change creator to go through an appropriate change management process. If the change is of high priority, the required interval can be overriden pending the approval at the appropriate level.

| Criticality | Horizon | Approval |
| --- | --- | --- |
| C1 | 4 weeks | VP of Customer Support|
| C2 | 3 weeks | Director of Support Readiness|
| C3 | 2 weeks | Support Ops Manager |
| C4 | No horizon required | n/a - changes can be scheduled immediately |

## Division of Responsibilities

To help ensure the team doesn't get overwhelmed and has the ability to focus on
specialization and learning, we divide out the responsibilties amongst our
team. The current division of responsibilities is:

| Category            | Area                       | Primary DRI      | Secondary DRI    |
|---------------------|----------------------------|------------------|------------------|
| Access Requests     | Internal License Requests  | @nabeel.bilgrami | @dnolan1         |
|                     | Offboarding                | @jcolyer         | @nabeel.bilgrami |
|                     | Onboarding                 | @jcolyer         | @lyle            |
| [Audits](https://gitlab.com/gitlab-com/support/support-ops/support-ops-tools/audits) | | @jcolyer | @dnolan1 |
| Calendly            | Management                 | @avilla4         | @lyle            |
|                     | Procurement                | @jcolyer         | @dtragjasi       |
| Forms | [Account Deletions](https://gitlab.com/gitlab-com/support/support-ops/forms/account-deletion) | @dtragjasi | @jcolyer |
| | [Internal Requests](https://gitlab.com/gitlab-com/support/internal-requests-form) | @dtragjasi | @jcolyer |
| | [Usage Ping Requests](https://gitlab.com/support/usage-ping-request) | @dtragjasi | @dnolan1 |
| | [Customer Ticket Generator](https://gitlab.com/gitlab-com/support/support-ops/forms/customer-ticket-generator) | @jcolyer | @avilla4 |
| Pagerduty | [Management](https://gitlab.com/gitlab-com/support/support-ops/other-software/pagerduty) | @jcolyer | @avilla4 |
|                     | Provisioning               | @jcolyer         | @avilla4         |
| Slack | [SGG Slackbot](https://gitlab.com/gitlab-com/support/support-ops/other-software/sgg-slackbot) | @dtragjasi | @jcolyer |
|                     | Workflows                  | @dtragjasi       | @jcolyer         |
| Status.io           | User management            | @jcolyer         | @lyle            |
| Zapier              | Support Zap management     | @jcolyer         | @nabeel.bilgrami |
| Zendesk Global | [Agent Sync](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/agents) | @nabeel.bilgrami | @avilla4 |
| | [Articles](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/articles) | @avilla4 | @jcolyer |
| | [Automations](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/automations) | @avilla4 | @dtragjasi |
| | [Forms and Fields](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/ticket-forms-and-fields) | @nabeel.bilgrami | @avilla4 |
| | [Macros](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/macros) | @avilla4 | @dtragjasi |
| | [Organizations](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations) | @nabeel.bilgrami | @avilla4 |
| | Procurement                | @jcolyer         | @lyle            |
| | [SLAs](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/sla-policies) | @jcolyer | @nabeel.bilgrami |
| | [Theme](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-theme) | @dtragjasi | @jcolyer |
| | [Ticket Round Robin](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/ticket-round-robin) | @nabeel.bilgrami | @jcolyer |
| | [Triggers](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/triggers) | @avilla4 | @dtragjasi |
| | [Views](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/views) | @avilla4 | @dtragjasi |
| | [ZD<>SFDC Sync](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zd-sfdc-sync-global) | @jcolyer | @nabeel.bilgrami |
| | [Zendesk Apps](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/zendesk-apps) | @dtragjasi | @avilla4 |
| Zendesk US Federal  | [Agent Sync](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/agents) | @dnolan1 | @jcolyer |
| | [Automations](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/automations) | @dnolan1 | @jcolyer |
| | [Forms and Fields](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/ticket-forms-and-fields)           | @jcolyer | @dnolan1 |
| | [Macros](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/macros)                     | @dnolan1 | @jcolyer |
| | Organizations | @dnolan1 | @jcolyer |
| | Procurement | @jcolyer | @lyle |
| | SLAs | @jcolyer | @dnolan1 |
| | [Theme](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/zendesk-theme) | @dnolan1 | @jcolyer |
| | [Ticket Round Robin](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/ticket-round-robin) | @dnolan1 | @jcolyer |
| | [Triggers](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/triggers) | @dnolan1 | @jcolyer |
| | [Views](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/views) | @dnolan1 | @jcolyer |
| | [ZD<>SFDC Sync](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/zd-sfdc-sync-us-federal) | @jcolyer | @dnolan1 |
| | [Zendesk Apps](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/zendesk-apps) | @dnolan1 | @jcolyer |

## Code freeze

During the month of December, Support Operations enters a code freeze. During
this period, Support Operations will not deploy any major changes to the
various systems we manage (Zendesk, Calendly, etc.).

For reference, a "major" change would be anything impacting ticket routing
or Support workflows. Some general examples would be:

* Ticket field and form changes
* Major view changes
* Adding new avenues of ticket creation

This is done to promote stability, especially during a time many of us take
time off for the holidays. We also use this time to review our setup and look
for any unnoticed problems/errors/etc.

During this time, we will still do the following:

* Create, edit, and delete macros as needed
* Fix any issues/errors that occur
* Discuss and test new changes (to be implemented January or later)
* Make changes to access based on ARs for onboarding and offboarding
* Maintain changes to the Support team page

## Hiring Plan

Currently, Support Operations is using a ratios for our hiring plan. The ratios
used are:

* 40 Support Engineers to every 1 Support Operations Specialist
* 10 Support Operations Specialists to every 1 Support Operations Manager

There are plans to utilize the information at the
[Support Ops Metrics page](https://gitlab-com.gitlab.io/support/support-ops/support-ops-tools/metrics/)
in conjuction with the above ratios to refine this hiring plan in the future.
The Support Ops Metrics page can be used to get a quick look at how we are
currently doing and help determine future needs.

## Frequently Asked Questions (F.A.Q.)

**If we receive any problem in using Zendesk, can we contact Zendesk directly?**

Please contact Support-Ops team first. Discuss the problem by asking a question in channel and tagging @support-ops. It is a high probability that we can help you resolve the problem at hand. In cases where we cannot and we do need to contact Zendesk support directly, it is best to have Support-Ops handle that.

**What will happen if Zendesk is down globally?**

Zendesk will only go down when the internet is globally effected because they use Pods for services. This ensures that if a region is facing downtime, Zendesk can quickly mitigate that while making sure services run smoothly. However, if you are still facing any problem accessing Zendesk, please contact the support-ops team. In the case that Zendesk is down globally, we have email support option available.

**Is there any disaster recovery plan available?**

Zendesk keeps the data in backup servers will all due diligence. This ensures that we can recover data when it is needed. These backups are utilized to restore Zendesk in the case it fails due to a problem on Zendesk's end.

Also, the support-ops team ensures all triggers, automations, views, macros, forms, fields, conditions, etc are documented to save the hassle of writing up everything from scratch.

**Why do we allow users to open support tickets without being required to login to Zendesk via some authentication?**

According to Lee Matos:

> Circa 2016 we had open Zendesk where we were manually assigning users to manually created orgs.
>
> There was a project that was being created called “middleware” that was going to act as the SSOT of known orgs. It did nothing to solve the customer mapping.
>
> It was in scope creep mode so I explored the offical sfdc<->zd sync. We started with account sync. We were interested in user syncing but our data was a mess.
>
> We ran into problems with org sync. Solved a bunch then some more.
>
> We recreated sfdc sync for the [Global Support instance](https://about.gitlab.com/handbook/support/support-ops/responsibilities.html#account---organization-sync-from-salesforce) and [US Federal instance](https://about.gitlab.com/handbook/support/support-ops/responsibilities.html#sfdcus-federal-zendesk-sync) and are still just syncing orgs.
>
> There is a push (rightfully so) to lock it down and improve our wall/first time unknown user flow. If someone can get that over the line I think that GitLab support engineering leadership has no good reason to keep it “open access” at the moment and we support changing it. (I'm speaking out of turn — I’m stating this as fact but it’s my opinion.)
