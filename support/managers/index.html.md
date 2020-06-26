---
layout: handbook-page-toc
title: Support Managers
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

As a larger leadership team, it's important that we remain in constant communication to ensure that we're building relationships and avoiding siloing.

**Note:** It is worth reiterating though that these meetings are not for making decisions or discussing things that could be discussed within issues.

### Purpose

Support leadership (Managers, Senior Managers and Director) meet in cross-regional synchronous meetings weekly.

The purpose of these meetings is to:
- build relationships, trust and context between regional managers
- explain context for issues and explore creative ideas in real time
- ensure that each issue has a DRI for issues that do not yet have them
- refine the problem statement of each raised issue by clarifying intent

The purpose of these meetings is **not** to:
- figure out the priority of issues
- refine solutions or merge requests related to issues
- make decisions

### Organization of Support Leadership Meetings

1. The agenda and notes are in a Google Doc: [Support leadership calls agenda and notes](https://drive.google.com/drive/u/0/search?q=%22Support%20leadership%20calls%20agenda%20and%20notes%20%282020%29%22%20parent:1eBkN9gosfqNVSoRR9LkS2MHzVGjM5-t5) (internal only)
1. Most agenda items should be linked to an existing issue. If an item does not have an existing issue, raise one before putting it in the agenda.
1. Agenda items that do not need to be linked to an existing issue are:
   - Discussion surrounding a specific individual's promotion, performance or individual situation
   - Discussion about sensitive or confidential issues and processes
1. Every effort should be made to add agenda topics before the first meeting of
   the week, as this gives all managers an equal opportunity to participate in
   discussing the topics in at least one meeting. No topics should be added to
   the agenda between the start of the week’s second meeting and the end of the
   week’s last meeting.
1. Each meeting has a chairperson to ensure that voices are heard equally and we
   make progress through the agenda.
1. All participants should be familiar with the [Video Calls Section](/handbook/communication/#video-calls)
   of the Communication page in the Handbook.
1. See this video, [Managing Support Leadership Sync Agendas and Meetings](https://drive.google.com/drive/u/0/search?q=managing%20support%20leadership%20sync%20agendas%20and%20meetings%20parent:1h1iaTgBbZJZG7CBNYUCRQPhMXe1xXlbM),
for more information, including how to edit and use the agenda and notes document. 

### Call Procedure
#### As a chair
1. Review the meeting agenda and familiarize yourself with each item. 
1. Review the hiring data and be aware of anything that is of note for the regions that are meeting.
1. Review the upcoming support events. Be sure to mention anything that may have an action item, or may need an action item such as:
   1. *Group Conversation*: _Please take a look at the slides, and add any points of interest for the general company_
   1. *Holiday*: _Do we have (or need) a coverage plan for this holiday?_
   1. *Metrics Review*: _Is there anything that needs to be highlighted to the executive team?_ 
1. Be aware of when people unmute - this is an indication that they have something to say. If necessary, please interrupt and pass the
floor. We want everyone to contribute, so it's your job to make sure that this can happen.
1. Assign any action items - including summarizing the discussion in an issue.

#### As a manager
* Before the meeting: 
    * add agenda items no later than the start of the week's second meeting
    * review each agenda item. If you have any feedback, don't hold it for the meeting but comment directly on the issue.
* During the meeting:
    * be brief: everyone should be familiar with the discussion
    * be clear: why did you bring this item to this meeting?
    * be polite: avoid interrupting when possible (For more on this see point 13 in the [Video Calls Section](/handbook/communication/#video-calls) of the Communication page)
* After the meeting: 
   * note any points that you made during the meeting that were relevant to the discussion.

## Working with your team
1. [Getting To Know Your Team Members](/handbook/support/managers/getting-to-know-you.html)
1. [Support 1-1s](/handbook/support/managers/support-1-1s.html) - guidance on conducting 1 to 1 calls.

## Hiring
See [Support Hiring](hiring.html)

## Promotions

### Support Engineer Promotion Process for Support Managers - Quick Guide

The companywide People Group process should be followed [For Managers: Requesting a Promotion or Compensation Change](https://about.gitlab.com/handbook/people-group/promotions-transfers/#for-managers-requesting-a-promotion-or-compensation-change). The steps below are an addendum for notification and review for Support Engineering managers taking into account the Customer Support Department's organisational structure and is not meant as a replacement for any steps in the companywide people group process.

#### Pre-submission
* Complete Promotion Document with Engineer.
* Create Google Docs view link for everyone at Gitlab to allow sharing of the promotion document which will be used for promotion approval process.
* Discuss the promotion candidate with your manager and the Director of Support.
* Make a copy of the promotion document and share it with the Support Managers.
* Notify the Head of Engineering that the promotion document is under review. 
* Notify the People Business Partner for Support that the promotion document is under review.
* Ask the Support Managers to review the promotion document.
* Get the approval to proceed from the Director of Support.

#### Submission
* [Submit a Promotion request in BambooHR](https://about.gitlab.com/handbook/people-group/promotions-transfers/#submit-a-promotion-request-in-bamboohr)

#### Announcement

* Once approval has been received notify the engineer.
* Send a message to the `#team-member-updates` Slack channel.
* Share the message from `#team-member-updates` into the `#support-team-chat` channel for Support Team visibility.

## Metrics

As a Support Management group we should be aware of the tooling we use to generate the metrics that we report on.

1. Sisense
2. Zendesk Explore

### Sisense

Sisense is a general purpose visualization tool that is used by the greater company.
It's extremely powerful with a full SQL interface to our data across functions.
We work with the data team to generate "Stable" Graphs here. Think, KPIs and greater measures that make sense to report to the larger company.
As managers, we will not need to edit these reports often, but we should consuming it regularly.

### Zendesk Explore

Zendesk Explore is a new tool to replace Zendesk Insights. We will use this tool
for quick interactions on new ideas or fact checking Sisense data. Support Managers
should be ready to work with Explore regularly and be comfortable with the tool.

### Why two metrics systems?

Sisense is a company wide tool that is extremely powerful which can make it unwieldy.
Explore gives us an interface that is much easier to navigate and use.
Additionally, Sisense data is a secondary source so it can contain errors. 
By being comfortable using ZD Explore, a primary source, we can make sure that we have accurate data and insights.

## Support Engineering Manager READMEs

Support Engineering Manager READMEs are found in [Engineering Manager READMEs](/handbook/engineering/readmes/).
