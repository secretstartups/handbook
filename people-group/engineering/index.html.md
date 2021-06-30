---
layout: handbook-page-toc
title: "People Group Engineering"
description: "Information about GitLab's People Group Engineering team and its projects, workflow, and sources of data."
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Overview

As GitLab continues to scale, our need for tools and automation to manage our growth expands
along with it. To help the People Group, we have a People Group Engineering team, that consists out of [People Group Fullstack Engineers](https://about.gitlab.com/job-families/people-ops/people-ops-fullstack-engineer/) to make our team more efficient and improve the effectiveness of our
core [People Group](/handbook/people-group/).

Responsibilities include (but are not limited to):

- Automation and API integrations in talent acquisition
- Employment issues automation
- Integrations to assure SSoT
- Manage the code that runs the [Employment Bot](https://gitlab.com/employment-bot)

### Working with us

If you'd like to request engineering assistance with an issue, bug fixes, urgent requests related to People Group processes
or tools ([like BambooHR](/handbook/people-group/#using-bamboohr)) or anything relating to People Group Engineering, please start by
[creating an issue](https://gitlab.com/gitlab-com/people-group/peopleops-eng/people-operations-engineering/-/issues/new)
in the People Group Engineering project. All issues are reviewed and prioritised to a specific [milestone](https://gitlab.com/groups/gitlab-com/people-group/peopleops-eng/-/milestones). If you require general support with MR's, kindly collaborate with all of GitLab team members in #mr-buddies in slack.

### Report bugs

If you want to report bugs about existing integrations, you can use any of the following templates:
- [Bug with a /pops command](https://gitlab.com/gitlab-com/people-group/peopleops-eng/employment-automation/-/issues/new?issuable_template=bug_pops_command)
- [Bug with the Greenhouse <> BambooHR sync](https://gitlab.com/gitlab-com/people-group/peopleops-eng/employment-automation/-/issues/new?issuable_template=bug_with_greenhouse_bamboo_sync)

#### Urgent attention

We have monitoring setup in case some of our applications are no longer accessible. This is the case for the [compensation calculator](https://comp-calculator.gitlab.net/), the [nominator bot](https://nominatorbot.gitlab.net/) and the [assessment tool](https://assessment.gitlab.net/). This will trigger text messages to the People Group Engineer(s). If you need our immediate attention, feel free to use our #people-connect-eng Slack channel. Avoid pinging people directly unless there is a real urgency to the matter.

### Our workflow

The [People Group Engineering board](https://gitlab.com/gitlab-com/people-group/people-operations-engineering/-/boards/1312849)
serves as the single source of truth on the engineering team's priorities. Issues follow a linear sequence, with a `Workflow::`
label indicating an issue's current status:

1. `Workflow::Triage`: Issues start here. Issues in triage must be further defined before they're able to
   be made ready for development. Once the problem and a proposal for solving it is defined to the point where an
   engineer can begin work, it can be moved to `Workflow::Ready for Development`.
1. `Workflow::Ready for Development`: Issues that are groomed and are ready for an engineer to begin work. They're
   well defined in terms of the problem, and have a proposal that's defined enough for us to begin work; not every detail
   needs to have been defined, but an engineer should be able to start work on this issue by reading the issue description alone.
   - Engineers beginning work on a ready for development issue should assign the issue to themselves and move it to `Workflow::In Progress`.
1. `Workflow::In Progress`: Issues that are actively being worked on by a developer.
1. `Workflow::Verification`: Issues that have engineering work complete and ready for evaluation. At this point, the developed solution
   should be evaluated (by the issue reporter or another stakeholder) to verify that it solves the original problem.
   - Once signed off, the issue can be closed.

There are two more states an issue can be placed in:
- `Workflow::Waiting`: Issues that are waiting from input from someone or are waiting on a dependency. These are
   issues that need input or progress from others before they can progress.
- `Workflow::Blocked`: These issues are either blocked by another issue or by missing API endpoints. The People
Ops Engineer always adds the reason why an issue is moved to blocked.

#### Priorities

Before we state a ticket as fully triaged, we need to have the following information:
- is it compliance related?
- how often does the problem occur?  Daily, weekly, monthly, annually?
- how many team members are affected by this?
- what is the manual effort (in time) currently required to accomplish this work today?

What that knowledge in mind we determine the priority of a ticket, with the following table:

| Priority Level   | Compliance | Impact                       | Occurrence               | Project involved                      |
| --------------   | ---------- |-----------------             | ---------------          |-----------------------                |
| p1 (`~pops::p1`) | yes        | Any                          | daily, weekly or monthly | n/a                                   |
| p1 (`~pops::p1`) | no         | OKR progression              | n/a                      | n/a                                   |
| p2 (`~pops::p2`) | no         | Company                      | daily, weekly            | comp calc, nom bot or assessment tool |
| p3 (`~pops::p3`) | no         | Division, Department or Team | daily, weekly            | nom bot or assessment tool            |
| p4 (`~pops::p4`) | no         | Any | daily, weekly                 | n/a                                   |
| p5 (`~pops::p5`) | no         | Any | monthly, yearly                 | n/a                                   |

Our issues will be labeled according to the priority level. Anything that falls outside of the table won't be labeled with a priority and will be added to our backlog and worked after priority items are completed.  As this is a first iteration, we will review those without labels to see if they should've been labeled differently and if we need to rework this table.

#### Milestones

We plan everything in monthly milestones. Every new milestone starts at the beginning of the month. The first day of the
milestone the People Engineering team will post a summary of the past milestone in #people-group on Slack. This
will contain the main items we've worked. If important issues weren't completed, this will also be communicated at that time.  
In the same summary, we also add the big next month tickets and paste a URL to the board with the milestone.

At the start of the milestone, all tickets we aim to finish within the milestone should be labeled with the `Deliverable`
label. That way we can easily see the difference between scheduled vs unplanned work. If a `Deliverable` ticket can't be
wrapped up during the milestone, we should communicate this as soon as possible to the stakeholders.

To plan the milestone, we filter the open issues on label: `~Workflow::Ready for Development` and `Milestone=None`. Then we first take the `~pops::p1` labeled issues. If there's room for other tickets left, we go to the `~pops::p2` labeled issues and so on.

There are two exceptions on the priority labels:
- issues labeled `bug`: these should be fixed either in the current milestone or in the next one
- issues labeled `code maintenance`: these are tickets like library updates or refactors that we need to plan in to make sure our code stays up to standards

### Review process

1. Assign your merge request to anyone in the People Group Engineering team
1. They will review it. Once the review is done, they will assign it back to you.
1. If the merge request was not approved yet, address the feedback and assign it back to the reviewer.
1. Continue the previous two steps until the merge request is approved.
1. If you have merge rights, merge the merge request. If you don't have merge rights, ask the reviewer to merge it.

## Current projects

We've build several automations and tools to support our People Group. In the following pages, you can find more details about all the different projects or automations we've created:

### Team member's employment

- [Greenhouse <> BambooHR Sync](/handbook/people-group/engineering/gh-bhr-sync/)
- [Onboarding Automations](/handbook/people-group/engineering/onboarding/)
- [Career Mobility Automations](/handbook/people-group/engineering/career-mobility/)
- [Offboarding Automations](/handbook/people-group/engineering/offboarding/)

### Supportive tools for People Group

- [Assessment Tool](/handbook/people-group/engineering/assessment-tool/)
- [Nominator Bot](/handbook/people-group/engineering/nominatorbot/)
- [Compensation Calculator](https://gitlab.com/gitlab-com/people-group/peopleops-eng/compensation-calculator/)
- [Inclusive Language Check on Job Families](/handbook/hiring/job-families/#inclusive-language-check)
- [BambooHR Audit](/handbook/people-group/engineering/bamboo-audit/)
- [People Ops Internal Handbook](/handbook/people-group/engineering/pops-internal-handbook/)
- [People Connect Bot](/handbook/people-group/engineering/people-connect-bot)

### Uncategorized

- [Smaller syncs](/handbook/people-group/engineering/miscellaneous/)
- [Slack Integrations](/handbook/people-group/engineering/slack-integrations/)

## Data

### Single Source of truth

For all automations we use 2 main sources:
-  BambooHR: their database acts as the single source of truth for everything related to the team
member. We make use of a [fork](https://gitlab.com/gitlab-com/people-ops/bamboozled/) from the
[Bamboozled](https://github.com/Skookum/bamboozled) Ruby gem, and interact with BambooHR using a
 bot user with limited access to employee details.
 - Greenhouse: this is our single source of truth for everything related to candidates (so before
 they are hired). We make use of a [fork](https://gitlab.com/gitlab-com/people-group/peopleops-eng/greenhouse_io/) from the
[Greenhouse](https://github.com/grnhse/greenhouse_io) Ruby gem, and interact with Greenhouse using a
 user with access to candidates details.

If any other sources are used for a specific integration or automation, it is mentioned on the section.

### Confidentiality

When a project uses API tokens with a certain level of access, we mirror
the public project to a private project on [ops.gitlab.net](https://ops.gitlab.net/).
These projects are only used to execute the scheduled jobs. For all planning, coding
and collaboration we use the public projects.

## Access to ChatOps for PeopleOps Team

Before the PeopleOps team member can excute the chat commands mentioned on this page, they need
to be invited to the [employment-automation](https://ops.gitlab.net/gitlab-people-engineering/employment-automation/)
project. This can be done by the owners of the project.

Once you are a member of the project, you can run any `/pops` command. The PeopleOps bot will respond that you
first have to connect your GitLab account. You can click the provided URL and authorize. Now you are able to run
the `/pops` commands.
