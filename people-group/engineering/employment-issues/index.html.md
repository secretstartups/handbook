---
layout: handbook-page-toc
title: Employment Issues
description: "Information on the commands used to create our onboarding, offboarding, and career mobility issues."
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Employment issues

People Experience Associates make use of GitLab's [ChatOps](https://docs.gitlab.com/ee/ci/chatops/)
functionality to automate creation of Onboarding, Offboarding and Career Mobility issues. By executing a
Slack command a pipeline is triggered in the `employment-automation` project, which runs the
related job and replies with a link to the newly created issue.

When these employment issues are created, we also add it to the team member's epic. If there's no
existing epic yet, we create one in the [Team Member Project](https://gitlab.com/gitlab-com/team-member-epics/).
The epic has the team member's name as the title and this is also how we do the lookup for the epic.

The templates used for the creation of the issues and the issues itself are in two different projects. Templates live within the [`people-group`](https://gitlab.com/gitlab-com/people-group/employment-templates-2/-/tree/master/.gitlab/issue_templates), while the issues live in the [`Team Member Epics`](https://gitlab.com/gitlab-com/team-member-epics/employment/-/issues) group. The templates are public but the issues remain private. Any updates to the templates can be done in the [Employment Templates](https://gitlab.com/gitlab-com/people-group/employment-templates-2/-/tree/master/.gitlab/issue_templates) project.

For the onboarding and the offboarding issues, the issue created by the command will contain tasks applicable to other job families at GitLab. People Experience Associates will have to manually delete all of them except the one applicable to the outgoing team member. An issue to improve
this can be found [here](https://gitlab.com/gitlab-com/people-ops/people-operations-engineering/issues/5).

### Onboarding issues

#### Creation

The Slack command used by the People Experience Associate for onboarding issues is:

```
/pops run onboarding <id_in_BambooHR_URL>
```

The onboarding issue will be automatically assigned to the People Experience Associate
who ran the command and the incoming team member's Manager.

The onboarding tasks that are applicable to all team members are listed in the
general [`onboarding.md`](https://gitlab.com/gitlab-com/people-ops/employment-templates-2/blob/master/.gitlab/issue_templates/onboarding.md)
file. It will be included by default in the onboarding issue.

The job then grabs various details of the incoming team member, like country of
residence, entity through which they are hired, division, department, job title
etc. For each of these details, it checks for the existence of a task file in
the [`onboarding_tasks` folder](https://gitlab.com/gitlab-com/people-group/employment-templates-2/-/tree/master/.gitlab%2Fissue_templates%2Fonboarding_tasks)
of the `employment` project. These tasks files are of the format
`country_<country name>.md`, `entity_<entity name>.md`, `division_<division name>.md`,
`department_<department name>.md`, etc. If such a file is found, it includes
contents of those files also in the onboarding issue.

##### Interns

If a People Experience Associate needs to create the onboarding issue for interns, they can use the same Slack command. The biggest difference is that it will read from a different template. The template is determined by the division: `onboarding_intern_<division>.md`. Currently there's only one division that has set up a template:

- [Engineering](https://gitlab.com/gitlab-com/people-group/employment-templates-2/-/blob/master/.gitlab/issue_templates/onboarding_intern_engineering.md)

This is a first iteration of creating onboarding issues for interns, we can move to a similar method as we do for the "regular" onboardings.

#### Closing outdated onboarding issues

It is expected that onboarding issues be completed and closed within 30 days of
opening. To remind team members about this, we are using the `due date`
functionality in GitLab issues. When an onboarding issue is created, we
automatically set a due date of 35 days to it (we open onboarding issues the
week before the team member joins, so 35 days gives them almost
30 days to complete onboarding tasks after they actually start at GitLab).
GitLab will send a reminder notification email to all the assignees of the issue
near the due date.

In addition to this due date, team members get an additional 30 days to complete
and close the onboarding issue. In total, a team member gets around 60 days
to complete their onboarding issue.

We have another scheduled pipeline to close the outdated issues (issues that
have been open for more than 60 days). This pipeline will add a comment on the
issue that it is being automatically closed and what the team members should do
if they have onboarding tasks remaining.

Currently, the pipeline is scheduled to be run at 09:30 PM on every Friday. It
will close all the onboarding issues created before 60 days from that date.

### Interview Training & Becoming a Manager

There's a scheduled pipeline that runs every day that checks for hires that started a week ago. 
For those hires we will have a look if the incoming
team member will be a people manager. Currently there's no exact field
on BambooHR for us to check this. The way we do this is by by looking
at their job title. If it **starts** with any of the following:

- `Team Lead`
- `Manager`
- `Senior Manager`
- `Director`
- `Senior Director`

We also consider the person a people manager when the job title **ends** with:

- `Area Sales Manager`

We will create the Interview Training and Becoming a Manager issues in the
[People Group Training project](https://gitlab.com/gitlab-com/people-group/Training).

### Offboarding issues

For more information on the complete offboarding process, please see the [Offboarding](/handbook/people-group/offboarding/) handbook page.

#### Creation

The Slack command used by the People Experience Associate for offboarding issues is:

```
/pops run offboarding <id_in_BambooHR_URL>
```

The offboarding issue will be automatically assigned to the People Experience Associate
who ran the command and the outgoing team member's Manager.

The job then grabs various details of the outgoing team member, like country of
residence, entity through which they are hired, division, department, job title
etc. For each of these details, it checks for the existence of a task file in
the [`offboarding_tasks` folder](https://gitlab.com/gitlab-com/people-group/employment-templates-2/-/tree/master/.gitlab%2Fissue_templates%2Foffboarding_tasks)
of the `employment` project. These tasks files are of the format
`country_<country name>.md`, `entity_<entity name>.md`, `division_<division name>.md`,
`department_<department name>.md`, etc. If such a file is found, it includes
contents of those files also in the offboarding issue.

#### Offboarding Issue commenting

When a team member is offboarded, there's a redirect rule that is setup on GSuite for
the outgoing team member. After 5 days this redirect rule needs to be removed.
To make sure this isn't forgotten, a scheduled pipeline is set up for the bot to leave a
GitLab issue comment reminding the People Experience Associates to removes the rule.

Currently, the pipeline is scheduled to run everyday at 04:00 AM UTC. It will comment on
all the offboarding issues created 5 days before the current date.

### Career Mobility issues

The Slack command used by the People Experience Associate for career mobility issues is:

```
/pops run careermobility <id_in_BambooHR_URL>
```

The Slack command triggers a pipeline in the `employment` project, which will
run the job `transition`, and reply with a link to the newly created Career Mobility
issue. The issue will be automatically assigned to the following people:

- People Experience Associate who ran the command
- the team member
- the previous manager of the team member
- the new manager of the team member
- the People Business Partner for the team member's department or division

### Epics

As mentioned before, we add all the employment issues for the team member in
one epic. To declutter the epics, we set up automation to close these epics.

We have a scheduled pipeline to close those epics that
have no open issues linked to them. This pipeline will add a comment on the
epic that it is being automatically closed.

Currently, the pipeline is scheduled to be run at 11:00 AM UTC on every Wednesday

Note that when a new issue is added to a closed epic, we will re-open the epic.
