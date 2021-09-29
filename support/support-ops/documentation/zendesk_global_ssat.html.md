---
layout: handbook-page-toc
title: 'Zendesk Global SSAT'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global SSAT'
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

Currently, Zendesk Global sends out surveys to all solved tickets, unless they
contain one of the following ticket tags:

* `spam_ticket` - means the ticket was marked as spam
* `free_customer` - means the ticket is from a non-paying user
* `com_embargo` - means the ticket pertains to US Sanctions/embargos
* `csat-survey-sent` - means the SSAT survey has already been sent out

This is done via the automation [`SSAT::Survey::Send out survey`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20012489&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+46784293).

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
[Customer Feedback project](https://gitlab.com/gitlab-com/support/feedback).
The current triggers are:

* [`SSAT::Issue Creation::When reason is ‘No reason provided’`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360041667219)
* [`SSAT::Issue Creation::When reason is ‘Not Helpful’`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360097003533)
* [`SSAT::Issue Creation::When reason is ‘Not Resolved’`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360097003633)
* [`SSAT::Issue Creation::When reason is ‘Other’`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360097002973)
* [`SSAT::Issue Creation::When reason is ‘Product’`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360097202574)
* [`SSAT::Issue Creation::When reason is ‘Timely Manner’`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360097003733)
* [`SSAT::Issue Creation::When reason is null and they leave comments`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360088483733)
