---
layout: handbook-page-toc
title: "Supporting Architecture"
---

This document covers architectures that support GitLab.com functions, but are not user facing and are managed by the [Infrastructure teams](../).

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## dev.gitlab.org
{: #dev-gitlab-org}

Dev.gitlab.org is a GitLab instance hosted in Azure. It's currently used for building Docker images and GitLab packages that are uploaded to AWS S3. It is also used as an OAuth authentication service which allows users to to sign in to other services using their dev.gitlab.org account, such as:

  * Sentry
  * License app
  * Version app

<img src="/images/handbook/engineering/infrastructure/supporting-architecture/dev-oauth.png">

[Source](https://drive.google.com/file/d/1SOMy5CxZbm8sRDt9QZyIqy3plKFkqdqA/view?usp=sharing), GitLab internal use only

### Architecture

<img src="/images/handbook/engineering/infrastructure/supporting-architecture/dev-arch.png">

[Source](https://drive.google.com/file/d/1tG8rxbv7xRxShXdJGQEX1hBzW-mRel6J/view?usp=sharing), GitLab internal use only

## ops.gitlab.net
{: #ops-gitlab-net}

Ops.gitlab.net is a GitLab instance that is used to manage GitLab.com's infrastructure and mirror infrastructure repositories. It hosts various tools for managing deployments and useful chatops commands that are sent from Slack.

### Architecture

<img src="/images/handbook/engineering/infrastructure/supporting-architecture/ops-arch.png">

[Source](https://drive.google.com/open?id=1QFRpog0jmZyci1UlB291xzwfX_ToMcEm), GitLab internal use only
