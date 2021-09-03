---
layout: handbook-page-toc
title: 'Customer Ticket Generator Training'
category: Gitlab.com Projects
description: 'Training documentation concerning the Customer Ticket Generator'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What is the Customer Ticket Generator
* How does the Customer Ticket Generator
* How do we work issues stemming from the Customer Ticket Generator?

## What is the Customer Ticket Generator

The Customer Ticket Generator is a combination of several components that we use
for requests to contact gitlab.com customers via tickets.

## How does the Customer Ticket Generator work

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/sShZ2i23Dy4" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

There are 3 main components to the Customer Ticket Generator:

* [Customer Ticket Generator project](https://gitlab.com/gitlab-com/support/support-ops/customer-ticket-generator)
  which generates the
  [Customer Ticket Generator form](https://gitlab-com.gitlab.io/support/support-ops/customer-ticket-generator/)
* [Customer Ticket Generator zap](https://zapier.com/app/zap/131130311)
* [Customer Ticket Generator issues](https://gitlab.com/gitlab-com/support/support-ops/customer-ticket-generator/-/issues)

### Form

GitLab Pages renders the form as generated from the artifact made via GitLab
CI/CD. This is basic HTML form that contains the fields we require to get
started on the request.

### Zap

This is where the form is sent for processing. The data is processed via Zapier
and then generates an issue in the
[Customer Ticket Generator project](https://gitlab.com/gitlab-com/support/support-ops/customer-ticket-generator).

### Issues

Once processed via the zap, an issue is made. This is where Support Ops can use
the given information (and provided script) to generate the tickets in question.
For more information, see the
[Customer Ticket Generator workflow](../workflows/customer-ticket-generator.html).

## Useful links

* [Customer Ticket Generator project](https://gitlab.com/gitlab-com/support/support-ops/customer-ticket-generator)
* [Customer Ticket Generator form](https://gitlab-com.gitlab.io/support/support-ops/customer-ticket-generator/)
* [Customer Ticket Generator zap](https://zapier.com/app/zap/131130311)
* [Customer Ticket Generator issues](https://gitlab.com/gitlab-com/support/support-ops/customer-ticket-generator/-/issues)
* [Customer Ticket Generator workflow](../workflows/customer-ticket-generator.html)
