---
layout: handbook-page-toc
title: 'Pagerduty workflows'
category: 'Other Software'
description: 'Details on the workflows for managing Pagerduty'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

## Determine if the request is valid

**NOTE** These are general guidelines. Please always use your best judgemewnt
or speak with a Support Operations Manager when you are unsure.

* For shadow rotation schedule changes, the request is essentially always valid.
* For non-shadow rotation schedule changes:
  * Additions are only valid if done 4 weeks in advance. If that amount of time
    is not given, an exception will need to be approved by a Support Operations
    Manager or Support Readiness Director.
  * Deletions are only valid if done 4 weeks in advance OR when it was not
    possible to do in advance (off-boarding, team transfers, etc.). If that
    amount of time is not given, an exception will need to be approved by a
    Support Operations Manager or Support Readiness Director.

## Performing changes to shadow rotations

**NOTE** If you are removing 100% of users from a schedule, you should add the
user "Support Ops Bot" on the schedule. This will prevent the layer from being
deleted due to a lack of users.

The general guidelines for doing shadow rotation changes are:

* Additions can be done "now", but should be scheduled for start of next week
* Removals can be done "now" but should be scheduled for start of next week when
  others are on the schedule
* Removals can be done "now" with no need for scheduling when no others are on
  the schedule

## Performing changes to non-shadow rotations

The general guidelines for doing non-shadow rotation changes are:

* Should never be done "now". These should **always** be scheduled:
  * Additions should be scheduled for start of next quarter when the current
    rotation has ended. As an example, if the rotation doesn't end until the
    second week of the next quarter, it should be scheduled for then. The goal
    is to cause as little disruption as possible to existing users.
  * Removals should be scheduled for start of next quarter when the current
    rotation has ended (when possible). If it is not possible (off-boarding,
    team transfers, etc.), please have requesting manager and their Senior
    manager work out the best method to do this with the least impact (such as
    using a placeholder and schedule overrides until the start of next quarter)
* Requests should be made at least 4 weeks in advance to allow for time to
  communicate the change to those impacted

## Communicating the change for shadow rotations

As these tend to impact very little people, simply add a comment on the issue
that details the changes (see [Issue comment](#issue-comment) for more details).

## Communicating the change for non-shadow rotations

As these tend to impact a sizeable number of people, you must:

* Make a comment on the issue (see [Issue comment](#issue-comment) for more
  details)
* Make a post in
  [#support_ops-announcements](https://gitlab.slack.com/archives/C02EK1QV5K9)
  (see [Announcement channel post](#announcement-channel-post) for more details)
* Make a
  [SWIR issue](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/SWIR/)
  (see [SWIR issue](#swir-issue) for more details)

Note your should have links in the issue for the
[#support_ops-announcements](https://gitlab.slack.com/archives/C02EK1QV5K9)
and the
[SWIR issue](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/SWIR/)
you create.

## Issue comment

The comment you make on the issue to announce the changes should **always** be
in the following format:

```
Changes scheduled for DATE_OF_SCHEDULED_CHANGE

For those on the schedule, please note the change:

| Oncall Start | Oncall End   | Prior to change     | After change        |
|:------------:|:------------:|---------------------|---------------------|
| 2020-01-01   | 2020-01-06   | GL_HANDLE_OF_PERSON | GL_HANDLE_OF_PERSON |
| 2020-01-07   | 2020-01-13   | GL_HANDLE_OF_PERSON | GL_HANDLE_OF_PERSON |
| 2020-01-14   | 2020-01-20   | GL_HANDLE_OF_PERSON | GL_HANDLE_OF_PERSON |
| 2020-01-21   | 2020-01-27   | GL_HANDLE_OF_PERSON | GL_HANDLE_OF_PERSON |
| 2020-01-28   | 2020-02-02   | GL_HANDLE_OF_PERSON | GL_HANDLE_OF_PERSON |
```

This will largely need to be manually created and will require using the
Pagerduty UI before you make any changes and after you make the changes to
determine.

You should always try to do one full rotation involving the scheduled change
date and one full rotation after the schedule change date.

As an example, if the change date was 2022-10-31, you'd do one full rotation
involving 2022-10-31 and the full rotation after that rotation. If 2022-10-31
was mid-way through a rotation, grab the values prior to that date at the start
of that rotation.

## Announcement channel post

The post in the
[#support_ops-announcements](https://gitlab.slack.com/archives/C02EK1QV5K9)
channel should use the following values:

| Field | Value |
|-------|-------|
| Who does this impact? | Support only |
| What is changing | We are making modifications to the Pagerduty schedule "NAME_OF_SCHEDULE" |
| When is the change occurring? | DATE_OF_SCHEDULED_CHANGE |
| Why is this changing? | It was requested by NAME_OF_REQUESTER (see below request link) |
| What is the request link? | LINK_TO_REQUEST_ISSUE |
| Anything else to post with the templated message? | Please refer to the issue link for a detailed list of changes and how this might impact your upcoming oncall dates |

## SWIR issue

For the SWIR issue, the values used should always be:

| Field | Value |
|-------|-------|
| Category | Things to know about |
| Your GitLab Username | Your gitlab.com username (ex: @jcolyer) |
| Short descriptive title | We are making modifications to the Pagerduty schedule "NAME_OF_SCHEDULE" |
| Full details - Markdown OK | Please refer to the [issue link](LINK_TO_REQUEST_ISSUE) for a detailed list of changes and how this might impact your upcoming oncall dates |
| Tags | Use CMOC if this is involving a non-shadow CMOC rotation, otherwise leave this blank |
