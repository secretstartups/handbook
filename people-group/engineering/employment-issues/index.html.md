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

The templates used for the creation of the issues and the issues itself are in two different projects. Templates live within the [`people-group`](https://gitlab.com/gitlab-com/people-group/people-operations/employment-templates/-/tree/master/.gitlab/issue_templates), while the issues live in the [`Team Member Epics`](https://gitlab.com/gitlab-com/team-member-epics/employment/-/issues) group. The templates are public but the issues remain private. Any updates to the templates can be done in the [Employment Templates](https://gitlab.com/gitlab-com/people-group/people-operations/employment-templates/-/tree/master/.gitlab/issue_templates) project.

### Onboarding issues

See [this section](/handbook/people-group/engineering/employment/#onboarding-issue-creation/)

### Offboarding issues

See [this section](/handbook/people-group/engineering/offboarding#offboarding-issue-creation)

### Career Mobility issues

See [this section](/handbook/people-group/engineering/career-mobility#career-mobility-issue-creation)

### Epics

We add all the employment issues for the team member in
one epic. To declutter the epics, we set up automation to close these epics.

We have a scheduled pipeline to close those epics that
have no open issues linked to them. This pipeline will add a comment on the
epic that it is being automatically closed.

Currently, the pipeline is scheduled to be run at 11:00 AM UTC on every Wednesday

Note that when a new issue is added to a closed epic, we will re-open the epic.
