---
layout: handbook-page-toc
title: 'Account Deletion Form Training'
category: Gitlab.com Projects
description: 'Training documentation concerning the Account Deletion Form'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What is the Account Deletion Form
* How does the Account Deletion Form work

## What is the Account Deletion Form

The account deletion form is how GitLab handles account deletion requests and
data privacy requests. The form is publicly available to all persons and works
in combination with Zapier to process the request.

## How does the Account Deletion Form work

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/SVwD9m3_Xbg" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

There are two parts to how this works:

* The form itself
* The zap that processes the request

### Form

The form we work on is located in the
[Account Deletion Form repo](https://gitlab.com/gitlab-com/support/support-ops/account-deletion)
and it mirrored to the
[account-deletion repo](https://gitlab.com/support/account-deletion). We do this
so the URL is clear and concise.

The HTML files are compiled via GitLab CI/CD and then rendered using
[GitLab Pages](https://docs.gitlab.com/ee/user/project/pages/).

### Zap

The [Account Deletion Process Zap](https://zapier.com/app/zap/117251854) is what
takes the request itself from the [form](#form) and turns it into a GitLab.com
issue housed in the [Account Deletion project](https://gitlab.com/gitlab-com/gdpr-request).
This works using a webhook provided by Zapier in the form. When the request is
submitted, the request is sent to Zapier via said webhook. A python script
housed in Zapier then processes the request, checking for:

* Does the submitter's email match the account in question?
* Does the submitter's username match the account in question?
* Is the account part of a paid namespace?
* Did the user confirm the deletion via the form?

After parsing all this information, the zap then creates an issue via the
[Mailgun API](https://documentation.mailgun.com/en/latest/api_reference.html)
by sending a request to the project's
[Service Desk](https://docs.gitlab.com/ee/user/project/service_desk.html) email
address. The exact contents of the issue depend on the checks performed.

## Useful links

* [Account Deletion Form repo](https://gitlab.com/gitlab-com/support/support-ops/account-deletion)
* [account-deletion repo](https://gitlab.com/support/account-deletion)
* [Account Deletion Process Zap](https://zapier.com/app/zap/117251854)
* [Account Deletion issues](https://gitlab.com/gitlab-com/gdpr-request/-/issues)
* [Mailgun API](https://documentation.mailgun.com/en/latest/api_reference.html)
