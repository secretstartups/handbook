---
layout: handbook-page-toc
title: Assessment Tool
---
## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

To support the People Group with setting up 9 box assessment for all our team members, People Engineering created a tool.

It's currently still a very basic tool that tries to replace the previous/current method of using Google Slides that were prepared by the People Business Partners. The goal is to have different teams within GitLab use the tool and iterate with feedback provided by the users.

### Creating an Account

The tool is in active development and is currently unavailable. Once we are ready to enable access, we will replace this notice with the directions to access the tool.
{: .alert .alert-info}

To use it, you can sign up with a GitLab email address - note: this needs to be your email address that is also known on BambooHR. This is needed as we need to fetch some data from BambooHR.

Once you've signed up, you will receive an email to confirm. When you do this, it will link your email address with your BambooHR ID (that we then later on will use to fetch data from BambooHR itself).

There's [an issue](https://gitlab.com/gitlab-com/people-group/peopleops-eng/assessment-tool/-/issues/20) to look into using Okta as the authentication method.

### Data used from BambooHR

The tool uses BambooHR as the single source of truth for all the team members data. It has read-only access to the following fields:

- Name
- Email
- Division
- Department
- Job Title
- Region (Americas, EMEA or JAPAC)
- Supervisor
- Status
- Date of Birth
- Entity
- GitLab username
- Gender

The access level for the API token is approved by the Total Rewards Team, if more access is needed an Access Request needs to be created.

The tool does not display the gender or date of birth with an individual it is used in an aggregated way to show statistisc about
tendencies with the assessments. 

We follow our [confidentiality rules](https://about.gitlab.com/handbook/people-group/engineering/#confidentiality) for this project and mirror it to a private project on ops.gitlab.net.

### How to use the tool

#### Individual Contributor

As an individual contributor, you don't need to do anything. Your manager will be asked to use the tool and make their assessments.

#### As a People Manager

It is recommended you first read up on [what 9 box assessments at GitLab are](https://about.gitlab.com/handbook/people-group/performance-assessments-and-succession-planning/).

Once you're ready, you need to create an account (see "Creating an Account" section) and can start doing the assessments.
When you save the assessments, they will be visible for your manager (and their manager and so on).

Note: that for directors and up, there is an extra option to **confirm** the assessments. This is a way to say that the assessment
has been _approved_. In a future iteration, we could decide to send the box to BambooHR (like we do for compa level).

#### As a People Business Partner

If you have any direct reports, you will also be able to use the tool to assess your team members. However, you will also have access
to assess all the team members that are within your PBP responsibilities. Currently we decided that you have full access to also
assess these team members - instead of just giving read access to this data.

### Feedback and/or Bugs

You can provide feedback or report bugs by creating issues on the project for this tool: [https://gitlab.com/gitlab-com/people-group/peopleops-eng/assessment-tool/](https://gitlab.com/gitlab-com/people-group/peopleops-eng/assessment-tool/)
