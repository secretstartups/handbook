---
layout: handbook-page-toc
title: 'Zendesk US Federal SSAT'
category: 'Zendesk US Federal'
description: 'An overview of the Zendesk US Federal SSAT'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/203660816-Customizing-your-customer-satisfaction-survey)

> One of Zendesk Support’s most popular features is our built-in customer
> satisfaction survey. Customer satisfaction allows you to track how well your
> agents and customer service organization as a whole are performing on a
> ticket by ticket basis. Because of our simplified approach, on average our
> customers see a roughly 21% response rate - which is fantastic! Zendesk
> Support provides some great defaults for the survey, but we get a lot of
> questions about how to further customize the customer satisfaction
> experience. 

## Criteria for SSAT being sent out

Currently, Zendesk US Federal sends out surveys to all solved tickets, unless
they contain one of the following ticket tags:

* `spam_ticket` - means the ticket was marked as spam
* `free_customer` - means the ticket is from a non-paying user
* `com_embargo` - means the ticket pertains to US Sanctions/embargos
* `csat-survey-sent` - means the SSAT survey has already been sent out

## What questions are asked?

In the event a user indicates they are not satisfied, we ask them to specify a
reason for the dissatisfaction. The options available are:

* The issue was not resolved
* GitLab doesn't meet my needs
* The answer wasn't delivered in a timely manner
* The answer wasn't helpful

## Feedback to gitlab issues

As part of the SSAT review process, we have several triggers in place that
convert the responses into GitLab issues in the
[Customer Feedback project](https://gitlab.com/gitlab-com/support/feedback). As
not every manager can access the tickets these are about, they are tagged to
specify they are for US Federal tickets.
