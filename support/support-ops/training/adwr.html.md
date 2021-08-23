---
layout: handbook-page-toc
title: 'ADWR Training'
category: Gitlab.com Projects
description: 'Training documentation concerning the ADWR project'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What is the Account Deletion Weekly Report (ADWR)
* How does the ADWR work?
* When does the ADWR run?

## What is the ADWR

ADWR (Account Deletion Weekly Report) is a project within gitlab.com that
generates weekly reports concerning account deletion requests.

## How does the ADWR work

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/Tkb7TIYz46o" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

ADWR works by utilizing GitLab CI/CD and ruby scripts. It runs in two stages:

* gather
* create

### gather stage

This stage runs the `./bin/gather` script, which includes the ADWR lib files and
calls the function `ADWR::Gather.run!`. This function makes an API request to
gitlab.com to grab all the issues within the
[Account Deletion and Other Requests project](https://gitlab.com/gitlab-com/gdpr-request)
that are in an open stage. It then compiles these issues into a JSON file, which
is stored as an artifact.

### create stage

This stage runs the `./bin/create` script, which includes the ADWR lib files and
calls the function `ADWR::Create.run!`. This function uses the artifact made in
the [gather stage](#gather-stage) to generate a report (which is an
[ADWR issue](https://gitlab.com/gitlab-com/support/internal-requests/-/issues?scope=all&state=opened&label_name[]=ADWR)).

The body of the created issues comes from parsing the issues from the artifact
made in the [gather stage](#gather-stage), skipping those without an assignee.

This report will contain a table with the following information:

* the issue title
* the assignee's gitlab.com username
* the assignee's manager's gitlab.com username
* labels the issue in question has.

## When does the ADWR run

Currently, ADWR runs every Sunday at 0000 UTC.

## Useful links

* [ADWR repo](https://gitlab.com/gitlab-com/support/toolbox/adwr)
* [Account Deletion and Other Requests issues](https://gitlab.com/gitlab-com/gdpr-request/-/issues)
* [ADWR issues](https://gitlab.com/gitlab-com/support/internal-requests/-/issues?scope=all&state=opened&label_name[]=ADWR)
