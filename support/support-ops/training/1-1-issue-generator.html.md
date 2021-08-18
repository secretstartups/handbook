---
layout: handbook-page-toc
title: '1-1 Issue Generator Training'
category: Gitlab.com Projects
description: 'Training documentation concerning the 1-1 Issue Generator'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What the 1-1 issue generator is
* How the 1-1 issue generator works
* When does the 1-1 issue generator run

## What is the 1-1 issue generator

The 1-1 issue generator is a project created in house to assist in the creation
of GitLab issues for use in 1 on 1 meetings. This uses a customizable formatting
and various APIs to gather details and present it in a way that is useful to
both manager and report.

## How does the 1-1 issue generator work

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/n7gsYu6vd2A" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This all works utilizing ruby scripting and GitLab CI/CD. The CI/CD component
of this is straight forward, in that it has 4 stages and they run the ruby
scipts within the project.

### Test stage

This stage runs the `./bin/test` file within the repo. That file tests for the
following:

* Is the YAML file able to be parsed?
* Do comment YAML files contain the ticket_review boolean?
* Do comment YAML files contain the comments array?
* Are the template files readable by an ERB renderer?

If any of the above answers are no, then the test stage will fail, preventing
the CI/CD from running further. This is used to prevent merging bad files into
the repo.

### Gather stage

This stage runs the `./bin/gather` file within the repo. That file runs the
`gather` function within the `Generator::Client` class.

The `Generator::Client.gather` function obtains various data points spanning
from:

* Zendesk Global
* Zendesk US Federal
* Pagerduty
* GitLab.com

It combines all this data into an artifact file.

### Report stage

This stage runs the `./bin/daily_report` file within the repo. That file takes
the artifact made in the [Gather stage](#gather-stage) and commits it to the
[Daily reports repo](https://gitlab.com/gitlab-com/support/1-1s/daily-reports).

### Create stage

**Note**: While previous stages ran for multiple people, some jobs in this stage
will only run for a single person at a time.

This stage will run one of three different jobs:

* weekly_report: This creates 1-1 issues for weekly use
* monthly_report: This creates an issue covering a month's worth of data
* quarterly_report: This creates an issue covering the current quarter's worth
  of data

All of the jobs that run will call to a file in the repo that will link to
various functions relating to the job itself. While there is some variance in
how the three run, overall they all gather data from the
[Daily reports repo](https://gitlab.com/gitlab-com/support/1-1s/daily-reports)
and then pass it into an ERB template file. This is then compiled into a
gitlab.com issue via the GitLab API.

## When does 1-1 issue generator run

By using GitLab CI/CD schedules, we have the following set to run at various
intervals:

| Name | What it does | When it runs |
|------|--------------|--------------|
| Gather metrics | Runs the [Gather stage](#gather-stage) | Daily at 0100 UTC |
| Create 1-1 Issues | Runs the [Create stage](#create-stage) | Daily at 0300 UTC |

## Useful links

* [1-1 issue generator repo](https://gitlab.com/gitlab-com/support/toolbox/1-1-issue-generator)
* [Support team repo](https://gitlab.com/gitlab-com/support/team)
* [Daily reports repo](https://gitlab.com/gitlab-com/support/1-1s/daily-reports)
