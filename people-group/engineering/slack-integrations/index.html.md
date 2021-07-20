---
layout: handbook-page-toc
title: Slack
description: Information on Slack automations created by the People Engineering team.
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Integrations

For several smaller automations we use integrations with Slack. On this
page you can find an overview of all the integrations we've set up. Most
of these integrations use a Slack bot named `PeopleOps Bot`.

#### Anniversary announcements

A scheduled pipeline is configured to automatically send a message
congratulating all team members celebrating a work anniversary that week to the
Slack channel `#team-member-updates`. The message will contain list of all such
team members and the number of years they are celebrating at GitLab.

Currently, the pipeline is scheduled to be run at 10:00 AM UTC on every
Thursday.

#### Birthday announcements

Every monday morning, a scheduled pipeline is configured to automatically send a message
congratulating team members celebrating their birthday that week to the
`#celebrations` Slack channel. Only team members who have opted-into GitLab birthdays
on their Slack profile will be listed in the congratulatory message.

To opt-in, follow these steps on Slack

1. Click on your profile photo in the top right corner
1. Click on `Edit profile`
1. Scroll down to the `GitLab Birthdays` field and select `Yes`

#### Parental Leave Welcome Back

A scheduled pipeline runs every day to check who's coming back from parental leave in 3 days.
For those team members we send them a Direct Message reminding them that they can take more
PTO if needed and links to the handbook related to coming back after parental leave.

For this pipeline we have a direct integration with PTO by Roots.

#### Informing People Experience Associates about details missing in BambooHR for upcoming new hires

For the new hire announcements to be accurate, it is required to ensure the
BambooHR details of team members joining the following week is as complete as
possible. To help PeopleOps team in this task, another scheduled pipeline is
run to verify if the BambooHR details of all incoming team members is complete.
This pipeline notifies Since People Experience Associates in `#people-connect-alerts` channel
about people whose details are missing and the details that are missing for each
person.

Since People Experience Associates should have enough time to fix these missing
details before new hire announcements are sent, it is necessary this job should
be run an adequate amount of time before the new hire announcements job is run.
Currently, the pipeline is scheduled to be run at 02:00 PM on every Wednesday.

### Offboarding sheet

There's a Google sheet that keeps track of team members that need to be offboarded.
The integration checks daily if anyone needs to be offboarded today or tomorrow. When
people need to be offboarded, it will post a message saying so with a link to that
Google Sheet. This is posted to the private Slack channel `people_exp_ops` with no
personal information in the message.

### Employment survey

Whenever a team member fills in on of the following surveys, the form entrance
is put into a slack message to the private Slack channel `employment-survey`. This way the
People Experience team can discuss and take action.
- Onboarding Survey
- Values Check-In
- Career Mobility Value Check-In
- Career Mobility Satisfactory Survey

### Referral bonus reminders

A scheduled pipeline is configured to automatically send a message
in the `#people-connect-alerts` Slack channel listing all team members who reached
their 3 month work anniversary that week. For each anniversary, the team member's
BambooHR and Greenhouse profiles are linked so that the people experience team
can check if the listed team members were referred. For those that were referred, the 
people experience team will then assign bonuses to the referrers.

The pipeline is scheduled to be run at 10:00 AM UTC every Friday.
