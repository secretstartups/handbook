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

#### New hire announcements

A scheduled pipeline is configured to automatically send a message containing a
list of all new team members who are joining GitLab in the following week. It
includes details like name, email address, joining date, and their job title.
The message also includes a link to a [Sisense chart](https://app.periscopedata.com/app/gitlab/503779) containing a
detailed breakdown and overview of the hiring process over time.

While we create this message, we check if there are any team members that have
"missing data". When they do, the message, is sent to `#peopleops-alerts`. This
way, the People Experience associate, can make sure the data is added and run the
following command to re-run the pipeline:

```
/pops run joiningannouncement
```

When there is no missing data, the message is posted directly to `#team-member-updates`.

Currently, the pipeline is scheduled to be run at 08:00 AM UTC every
Thursday.

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
This pipeline notifies Since People Experience Associates in `#peopleops-alerts` channel
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

### Onboarding survey

Onboarding survey: whenever a team member fills in the onboarding survey, the form entrance
is put into a slack message to the private Slack channel `onboarding-survey`. This way the
People Experience team can discuss and take action.

### Nominator

We're using a custom Slack app, the [Nominatorbot](https://gitlab.com/gitlab-com/people-group/peopleops-eng/nominatorbot/)
that team members can use to nominate others for discretionary bonuses.

To nominate someone you type in `/nominate name of team member`. The bot will open a dialog
with additional details to fill in. Once filled in, you can submit the dialog. This data
will be stored in a Google Spreadsheet and is sent through Slack to the nominee's manager.

The manager can then decide to approve or reject this nomination. On approval, the bot will
send this nomination to the second level manager, People Business Partners and Total Rewards
team. Each of them have to approve. On the final approval, it is added to BambooHR in the
bonus table.

Upcoming iterations can be found [here](https://gitlab.com/groups/gitlab-com/people-group/peopleops-eng/-/boards/1655060?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=p-nominatorbot)
Issues with the bot and/or feedback about the process can be created [here](https://gitlab.com/gitlab-com/people-group/peopleops-eng/nominatorbot/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=)