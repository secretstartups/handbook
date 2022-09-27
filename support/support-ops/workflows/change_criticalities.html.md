---
layout: handbook-page-toc
title: 'Support Operations Workflows - Change Criticalities'
category: 'GitLab'
description: 'Details on the workflow for change criticalities'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Mirroring
[infrastructure's change management criticalities](/handbook/engineering/infrastructure/change-management/#change-criticalities)
Support Ops defines changes on a C1 - C4 scale that helps determine appropriate
planning horizons.

Criticalities can be estimated during a
[Requested Change](/handbook/support/managers/change-management.html#creating-a-requested-change-issue-andor-mrs)
and will be finalized once an issue is moved to the Support Ops project. The
[scheduling intervals](/handbook/support/support-ops#scheduling-intervals-and-exceptions)
indicate the delay between change announcement and change deployment.

## Determining Criticality

When you first begin working an issue or MR, you should determine the change
criticality of the task at hand. Once you have determined that, add the
appropriate label to the issue:

| Criticality   | Label                    |
|---------------|--------------------------|
| Criticality 1 | ~"support-ops-change::1" |
| Criticality 2 | ~"support-ops-change::2" |
| Criticality 3 | ~"support-ops-change::3" |
| Criticality 4 | ~"support-ops-change::4" |

Some issue and MR templates will automatically do this for you, but you should
still review the task at hand to determine if the default value was accurate.

For guidance on determining the change criticality, see
[below](#criticality-level-definitions).

Always use your best judgment on determining the criticality level. When in
doubt, reach out to a Support Operations Manager for assistance.

## Criticality level definitions

### Criticality 1

These are changes with high impact or high risk that may significantly modify
Support Engineer or Customer experience. If a change is going to cause downtime
to the environment, it is always categorized a C1.

Some examples of Criticality 1 requests are:

* Changing the functionality of a widely used Zendesk View
* Altering Zendesk in a way to support a significant process change
* Changes to any SLA policy in use

### Criticality 2

These are changes that aren't expected to significantly impact Support Engineer
or Customer experiences, but which still carry some risk of impact if something
unexpected happens.

Some examples of Criticality 2 requests are:

* Updating the theme on the Support Portal
* Adding a new ticket form
* Changing any triggers/automations relating to SSAT or Support KPIs

### Criticality 3

These are changes with either no or very-low risk of negative impact, but where
there is still some inherent complexity, or it is not fully automated and
hands-off.

Some examples of Criticality 3 requests are:

* Adding a new form field on a Support form
* Bulk removing expired Zendesk organizations
* Adding a new Zendesk app that will make things more convenient for Support
  Engineers
* Removing or deactivating active macros

### Criticality 4

These are changes that are exceedingly low risk and commonly executed, or which
are fully automated. Often these will be changes that are mainly being recorded
for visibility rather than as a substantial control measure.

Some examples of Criticality 4 requests are:

* Adding or removing users from a ZD organization
* Creating or updating macros

## Scheduling guidelines

For every change criticality level, there are guidelines to utilize. This means
that unless an exception is granted, nothing should be deployed before the
required amount of time has passed. The guidelines are:

| Criticality   | Timeframe               | Who can approve exceptions    |
|---------------|-------------------------|-------------------------------|
| Criticality 1 | 4 weeks                 | VP of Customer Support        |
| Criticality 2 | 3 weeks                 | Director of Support Readiness |
| Criticality 3 | 2 weeks                 | Support Operations Manager    |
| Criticality 4 | Can be done immediately | N/A                           |

### Exceptions

If an exception is needed, ensure you ping your manager and the person(s) who
can approve the exception. They must comment on the issue/MR granting the
approval for the exception for it to be recognized.

## Communication guidelines

Unless criticality 4, every change change should be communicated via:

* A post in
  [#support_ops-announcements](https://gitlab.slack.com/archives/C02EK1QV5K9)
  using the `Support Ops Announcement` workflow
* A cross-post to
  [#support_team-chat](https://gitlab.slack.com/archives/CCBJYEWAW) (using the
  post made via the `Support Ops Announcement` workflow
* A cross-post to
  [#spt_us-federal](https://gitlab.slack.com/archives/C03RTN3JEJ2) (only if
  the change is is impacting the US Federal Support team)
* A SWIR item created using
  [this form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/SWIR/)

All of the above should be done **every week* leading up to the change occuring.

As an example, for a criticality 1 change occurring on 2022-12-30, you should be
doing all of the above on the following dates _at a minimum_:

* 2022-12-02
* 2022-12-09
* 2022-12-16
* 2022-12-23

As another example, for a criticality 3 change occurring on 2022-12-30, you
should be doing all of the above for the following dates _at a minimum_:

* 2022-12-16
* 2022-12-23

## Who communicates to other channels or teams?

This is handled by the original requester of the issue/task. We handle the above
communication, but the original requester should be encouraged to communicate to
any other channels or teams they deem appropriate.
