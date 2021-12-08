---
layout: handbook-page-toc
title: 'Triage'
category: 'GitLab'
description: 'Details on the workflow for issue/MR triaging'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

To help maintain a sense of data integrity within the issues we work, we have a
triage process implemented into GitLab.com. This runs from the
[support-ops-project repo](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/)
utilizing the [GitLab Triage Gem](https://gitlab.com/gitlab-org/gitlab-triage)
and our custom written 
[triage policies](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/blob/master/.triage-policies.yml).

While we should strive to always add all the labels and the like during the
creation or review of all issues and merge requests, this triage process helps
us ensure it gets done.

### Labels

Our triage process relies heavily on GitLab labels. As such, it is highly
recommended you read through
[What all the labels mean](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project#what-do-all-the-labels-mean)
to have a good grasp of what they all mean.

### How it works

Via a
[.gitlab-ci.yml](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/blob/master/.gitlab-ci.yml)
file, the [GitLab Triage Gem](https://gitlab.com/gitlab-org/gitlab-triage) runs
once a day at 1200 UTC. 

### Current triage policies

We currently are running triage policies for both issues and merge requests.
The
[triage policies](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/blob/master/.triage-policies.yml)
file is the single source of truth for all triage policies we use.
