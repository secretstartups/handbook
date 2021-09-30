---
layout: handbook-page-toc
title: "People Group Engineering - Bamboo Audit"
description: "Information about the automated BambooHR Audit we perform on a weekly and monthly basis."
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Overview
To assure our SSoT data in BambooHR is always correct and compliant we run audits on this data. People Engineering
is [helping to move this from a manual process to a automated process](https://gitlab.com/gitlab-com/people-group/peopleops-eng/people-group-engineering/-/issues/289). 

## Weekly New hires
Every Wednesday at 10AM UTC, we run the audit on all the team members who started the week before. A spreadsheet is created 
in a Google Drive folder that is shared with Total Rewards and the VP People Operations, Technology & Analytics. In the
spreadsheet we will list all the team members that we audited and mark the columns that need to be checked.

## Monthly all Team Members
Every first of the month at 10AM UTC, we run the audit on all the active team members at GitLab. A spreadsheet is created 
in a Google Drive folder that is shared with Total Rewards and the VP People Operations, Technology & Analytics. In the spreadsheet
we will list all the team members that we audited _and_ that had something marked as _needs to be checked_.

## GitLab usernames

Often times, team members won't follow the procedure outlined on the [tools and tips page](/handbook/tools-and-tips/#change-your-username-at-gitlabcom) to change their GitLab username. This leads to inaccurate or outdated data in BambooHR.

To remedy this situation, every Wednesday, we audit all GitLab usernames stored on BambooHR (`customGitLabUsername` field) and verify that those usernames are members of the [gitlab-com group](https://gitlab.com/groups/gitlab-com/-/group_members). When a BambooHR `customGitLabUsername` is not in the group, a message is automatically sent in `#peopleops-alerts` on Slack.
