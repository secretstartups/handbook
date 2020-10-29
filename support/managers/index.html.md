---
layout: handbook-page-toc
title: Support Managers
description: "Support managers activities and references"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to see what the Support managers are working on

### Epics

The Support Team uses [Epics](https://gitlab.com/groups/gitlab-com/support/-/epics/) to track and coordinate ongoing projects. [For the master epics](https://gitlab.com/groups/gitlab-com/support/-/epics?scope=all&utf8=%E2%9C%93&state=opened&search=area%3A), a Support manager will be assigned as a Directly Responsible Individual (DRI) you will see their name in parentheses after the Epic title. 

### Manager's issue board

This [issue board](https://gitlab.com/groups/gitlab-com/-/boards/1591982) shows all issues assigned to Support mangers.

1. Items above the cut line are what they are currently working on
1. This helps give people a sense of some of the 'top of mind' work for the current week
1. Items below the cut line are not intended to be sorted.
1. The board should be used in combination with Epics where longer term projects are visible.

**Managers: To use the board**

1. Each week, drag above the 'cut line' one or two issues that you expect to close out or work on this week
2. This is a lightweight process that should take a couple of minutes each week
3. It won't capture everything you're working on but helps folks quickly scan to see some of your top priorities

### Director's issue board

For global team issues for which the Director is responsible, see the `Customer Support Department` list of [this board](https://gitlab.com/gitlab-com/www-gitlab-com/-/boards/980804?label_name[]=Engineering%20Management)

## Support Leadership Meetings

As a larger leadership team, it's important that we remain in constant communication to ensure that we're building relationships and avoiding siloing. [You can read more about how we run our Leadership syncs in our handbook.](/handbook/support/managers/leadership-sync.html)


## Working with your team
1. [Getting To Know Your Team Members](/handbook/support/managers/getting-to-know-you.html)
1. [Support 1-1s](/handbook/support/managers/support-1-1s.html) - guidance on conducting 1 to 1 calls.

## Hiring
See [Support Hiring](hiring.html)

## Promotions

### Support Engineer Promotion Process for Support Managers - Quick Guide

The companywide People Group process should be followed [For Managers: Requesting a Promotion or Compensation Change](/handbook/people-group/promotions-transfers/#for-managers-requesting-a-promotion-or-compensation-change). The steps below are an addendum for notification and review for Support Engineering managers taking into account the Customer Support Department's organisational structure and is not meant as a replacement for any steps in the companywide people group process.

#### Pre-submission
* Complete Path to Promotion Document with Support Engineer.
* Create a public Google Docs view link for everyone at Gitlab to allow sharing of the promotion document which will be used for promotion approval process.
* Discuss the promotion candidate with your manager.
* Make a copy of the promotion document and share it in the confidential doc used in the cross-regional sync with Support Managers (ensure Support Managers can Edit).
* Gather feedback on the promotion document on the private copy shared with the Support Managers.
* If necessary, update the public document based on feedback from Support Managers.
* Get the approval to proceed from your manager.

#### Submission
* [Submit a Promotion request in BambooHR](/handbook/people-group/promotions-transfers/#submit-a-promotion-request-in-bamboohr)

#### Announcement

* Once approval has been received notify the engineer.
* Send a message to the `#team-member-updates` Slack channel.
* Share the message from `#team-member-updates` into the `#support-team-chat` channel for Support Team visibility.

## Metrics

As a Support Management group we should be aware of the tooling we use to generate the metrics that we report on.

1. Sisense
2. Zendesk Explore

#### Sisense

Sisense is a general purpose visualization tool that is used by the greater company.
It's extremely powerful with a full SQL interface to our data across functions.
We work with the data team to generate "Stable" Graphs here. Think, KPIs and greater measures that make sense to report to the larger company.
As managers, we will not need to edit these reports often, but we should consuming it regularly.

#### Zendesk Explore

Zendesk Explore is a new tool to replace Zendesk Insights. We will use this tool
for quick interactions on new ideas or fact checking Sisense data. Support Managers
should be ready to work with Explore regularly and be comfortable with the tool.

#### Why two metrics systems?

Sisense is a company wide tool that is extremely powerful which can make it unwieldy.
Explore gives us an interface that is much easier to navigate and use.
Additionally, Sisense data is a secondary source so it can contain errors. 
By being comfortable using ZD Explore, a primary source, we can make sure that we have accurate data and insights.

### What happens if metrics aren't where they should be?
Each week in the [Support Leadership Meetings](#support-leadership-meetings) we'll review the key metrics.

If the metrics are at or below the following floors for 2 sustained weeks, managers should [form a group](#forming-a-group) to analyze the cause and suggest actions to correct the trend.

1. Combined First Reply Time (L&R, GitLab SM and GitLab SaaS) at or below 93%
1. Combined SSAT (L&R, GitLab SM and GitLab SaaS) at or below 93%
1. Combined NRT (L&R, GitLab SM and GitLab Saas) at or below 83%

This action is unique to Support and is somewhere in-between a [Rapid Action issue](/handbook/engineering/development/#rapid-action-issue) and a [Working Group](/company/team/structure/working-groups/). 

The purpose of the group will be unique to each situation that triggers it, but generally the members will:
- form testable statements (e.g. _FRT has gone down because a lot of people have taken vacation_)
- gather and analyze data that falsify those statements (e.g. _After taking a look at PTO data, we can see that we've had a consistent 90% coverage for the period in question, which is consistent with other times in the year_)
- build a set of recommendations based on the data for how we can achieve consistent results
- document _how_ they analyzed their hypothesis and include it in [Hypothesis and Actions](metrics-analysis/actions.html)

These criteria and actions came from the [Metrics Analysis Workgroup](metrics-analysis/index.html). 

### Forming a Group
1. A manager opens an issue using the [Metrics Workgroup Template](https://gitlab.com/gitlab-com/support/metrics/-/issues/new?issuable_template=Metrics%20Workgroup)
1. Identify 2-3 Managers/ICs who will take part in the workgroup by asking for volunteers in a leadership meeting.
1. Determine hypothesis, gather data and propose temporary or permanent process changes as a result.

## Support Engineering Manager READMEs

Support Engineering Manager READMEs are found in [Engineering Manager READMEs](/handbook/engineering/readmes/).
