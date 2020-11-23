---
layout: handbook-page-toc
title: Support Operations Processes
description: List of all support operations processes avaiable.
---

# Support Operations Processes

For a general overview of the day to day processes, see the
[Support Operations Responsibility Checklist](responsibility_checklist.html).

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## GitLab

For GitLab specific processes, see [GitLab Processes](gitlab.html).

<!--
## Pagerduty

For Pagerduty specific processes, see [Pagerduty Processes](pagerduty.html).
-->
## Zendesk

For Zendesk specific processes, see [Zendesk Processes](zendesk.html).

## Audits

For information on Audit processes, see [Audit PRocesses](audits.html).

### Reviewing Feedback

It is important we track feedback and take action on it. To best ensure this,
we review the
[Feedback Responses](https://docs.google.com/spreadsheets/d/19YdJORhqrBZZryMnMAaqkjqof-g8cCNJjhcD7p1bcWs/edit?usp=sharing)
we receive. 

Part of this is knowing what would be classified as "Good", "Bad", and "Needs
Improvement" type feedback. The scoring system used is built into the Google
Sheet. To determine if a followup feedback review issue is needed, check column
I, `Support Ops Feedback Score`, for the overall score. If you do not see a
score present, copy the following formula and paste it into the cell:

> =SUM(IF(F2 >= 4, 1, IF(F2 <= 1, -1, 0)), IF(REGEXMATCH(D2,
> "Collaboration.*Results.*Transparency"), 1, 0), IF(C2 = "It was solved, and I
> feel this will dramatically improve my use of Zendesk", 1, IF(C2 = "It was
> solved, and I am confident in the solution", 1, IF(C2 = "It was closed as it
> became a stale issue", 1, 0))))

The above formula is based on our _current_ focus, but this can change depending
on what Support Ops aims to improve.

If the box is Yellow or Red, make a feedback review issue. As
multiple feedback responses can occur for the same issue/MR, feel free to
combine those into one issue.

When making the issue, create it in the
[Support Ops Feedback Review project](https://gitlab.com/gitlab-com/support/support-ops/feedback-review)
using the template
[Feedback Review](https://gitlab.com/gitlab-com/support/support-ops/feedback-review/-/issues/new?issuable_template=Feedback%20Review)
and ensure it is assigned to the members of the Support Ops team. 

### Support Shadowing

Every month each member of Support Ops shadows Support Engineers as they
work through tickets. We do this so we can be proactive in finding potential
problems and work to resolve them. During these sessions, ask
questions to better understand how Support is using Zendesk. Based on what
you learn, make support ops issues to better improve the system for those

using it. 

To schedule a shadowing session, ping the Support Managers for the region you
are reviewing (we as a team should ensure we shadow ALL regions 3 times).
They should be able to assist you in finding a Support Engineer with whom
to pair for a 60-minute session.

Once you have scheduled the meeting, you should create an 
[issue](https://gitlab.com/gitlab-com/support/support-ops/support-shadowing/-/issues/new?issuable_template=Support%20Shadowing)
in the Support Shadowing project (using the `Support Shadowing` issue template).

After the shadowing, try to use what was discussed and witnessed in
the session to determine potential improvements Support Ops can make for
Support. If you do make an issue from this, please mention the shadowing issue
in the improvement issue.

### Weekly Sync

On every Tuesday at 2:30 PM UTC as iteration. We might reschedule it with new
team members' schedules.

### Monthly Sync

The purpose of this sync is to go over the Feedback Review issues we have made
in the course of a month. The meeting is broken down into 2 parts:

1. Going over Feedback Review issues created since the last meeting
1. Going over past Feedback Review issues

Part 1 should be focused on making action plans based on the feedback to help us
determine how we can improve.

Part 2 should be focused on reviewing how the actions plans went and if it
resolved the problem.

