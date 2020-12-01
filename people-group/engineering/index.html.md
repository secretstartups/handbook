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
along with it. To help the People Group, we have a dedicated [People Group Fullstack Engineer](https://about.gitlab.com/job-families/people-ops/people-ops-fullstack-engineer/) to make our team more efficient and improve the effectiveness of our
core [People Group](/handbook/people-group/).

Responsibilities include (but are not limited to):

- Automation and API integrations in recruiting
- Employment issues automation
- Integrations to assure SSoT
- Manage the code that runs the [Employment Bot](https://gitlab.com/employment-bot)

### Working with us

If you'd like to request engineering assistance with an issue, bug fixes, urgent requests related to People Group processes
or tools ([like BambooHR](/handbook/people-group/#using-bamboohr)) or anything relating to People Group Engineering, please start by
[creating an issue](https://gitlab.com/gitlab-com/people-group/people-operations-engineering/issues/new)
in the People Group Engineering project. All issues are reviewed and prioritised to a specific [milestone](https://gitlab.com/groups/gitlab-com/people-group/peopleops-eng/-/milestones). If you require general support with MR's, kindly collaborate with all of GitLab team members in #mr-buddies in slack.

### Report bugs

If you want to report bugs about existing integrations, you can use any of the following templates:
- [Bug with a /pops command](https://gitlab.com/gitlab-com/people-group/peopleops-eng/employment-automation/-/issues/new?issuable_template=bug_pops_command)
- [Bug with the Greenhouse <> BambooHR sync](https://gitlab.com/gitlab-com/people-group/peopleops-eng/employment-automation/-/issues/new?issuable_template=bug_with_greenhouse_bamboo_sync)

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

## Current projects

All projects are public in this [group](https://gitlab.com/gitlab-com/people-group/peopleops-eng/).

You can find more information on the following pages:
- [Access Request Issues](/handbook/people-group/engineering/access-requests-issues)
- [Assessment Tool](/handbook/people-group/engineering/assessment-tool)
- [Email Automation](/handbook/people-group/engineering/email-automation)
- [Employment Issues](/handbook/people-group/engineering/employment-issues)
- [Greenhouse <> BambooHR Sync](/handbook/people-group/engineering/gh-bhr-sync)
- [Miscellaneous](/handbook/people-group/engineering/miscellaneous)
- [Slack Integrations](/handbook/people-group/engineering/slack-integrations)

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
