---
layout: handbook-page-toc
title: 'Usage Ping Request Training'
category: Gitlab.com Projects
description: 'Training documentation concerning the Usage Ping Request'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What is the Usage Ping Request
* How does the Usage Ping Request work

## What is the Usage Ping Request

Usage Ping Request is a project that handles requests for data deletion stemming
from [Usage Ping](https://docs.gitlab.com/14.0/ee/development/usage_ping/). The
project handles the form used to make the requests, and works with the
[Usage ping request zap](https://zapier.com/app/zap/125573569) to create issues
within GitLab.com.

## How does the Usage Ping Request work

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/_A_txny_PgI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

Usage Ping Request works utilizing two components:

* GitLab Pages
* Zapier

### GitLab Pages

This stems from GitLab CI/CD that uses an index.html file to generate a webform
via GitLab pages. The CI/CD runs only on commits to the master branch.

The index.html file contains a webhook to Zapier that enables Zapier to process
the request submission.

### Zapier

Zapier takes the request from the webform and generates a gitlab.com issue using
[Service Desk](https://docs.gitlab.com/ee/user/project/service_desk.html).

## Useful links

* [Usage Ping Guide](https://docs.gitlab.com/14.0/ee/development/usage_ping/)
* [Usage Ping Request project](https://gitlab.com/support/usage-ping-request)
* [Usage Ping Request form](https://gitlab.com/support/usage-ping-request)
* [Usage ping request zap](https://zapier.com/app/zap/125573569)
