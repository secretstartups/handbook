---
layout: handbook-page-toc
title: Access Request Issues
description:"Information about GitLab's Access Request (AR) issue automation process."
---

## On this page

{:.no_toc}

- TOC
{:toc}


#### Access Request issue creation

To get access to the tools our team members need for their job, an Access Request (AR)
issue needs to created. To make sure our team members experience a good onboarding,
we automated this process by creating the AR Role based entitlement issue
with the bot. This automation was enabled on 2020-04-01 (so on 2020-04-02 the pipeline ran the first time.)

A scheduled pipeline is configured to fetch all the team members who started the day
before. For all these members it will check if it is possible to create an Access Request
issue. It will only work for the members with roles that have a set template in the
[role baseline access requests tasks directory](https://gitlab.com/gitlab-com/team-member-epics/access-requests/tree/master/.gitlab/issue_templates/role_baseline_access_request_tasks).

The templates are created on a role level and can be created for the specialty level as well. For example
if you have a person with the role `Security Engineer, Strategic Security`. The code will look for two templates:
`role_security_engineer.md` and `role_security_engineer_strategic_security.md`. Note: you don't need to have both created,
but if there are two, the code will use both to create the issue, if there is just one, it will create the one it can find.

The issue will be created in the [AR project](https://gitlab.com/gitlab-com/team-member-epics/access-requests).

The bot will announce in Slack (#peopleops-alerts) the list of people that we were able to
create the AR. As well as the list of people (with their role) that we weren't
able to create the AR for. This way we can connect with the teams so they can add a template for this role.

Note: PeopleOps is not responsible for creating or maintaining the templates, each team
is responsible for creating the templates for their roles. This is also explained in the
[README](https://gitlab.com/gitlab-com/team-member-epics/access-requests/blob/master/README.md) of the project.

Here's a video with the People Group Engineer going over the AR automation. They discuss
how it works and how a template can be added.

<figure class='video_container'>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/aPe77q23OE8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
