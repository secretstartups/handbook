---
layout: handbook-page-toc
title: "Services Usage Data"
description: "GitLab's Service Usage Data policies"
---

#### Services Usage Data
GitLab collects information in order to help us understand how you use our products and services, so that we can improve and build better products and services. For information on what is collected and your options, please see below: 
 
#### SaaS GitLab.com software
GitLab collects information about usage from our SaaS service via Snowplow and Usage Ping. Usage ping sends a payload containing data such as total number of projects and pipelines, while Snowplow collects front-end and back-end events which helps track engagement with our website and application. For more information you can review our [Usage Ping](https://docs.gitlab.com/ee/development/usage_ping.html) and [Snoplow](https://docs.gitlab.com/ee/development/snowplow.html) guides. You can view an exmaple of the Usage Ping payload [here](https://docs.gitlab.com/ee/development/usage_ping.html#example-usage-ping-payload)

#### Self-managed GitLab software
GitLab collects information about usage from each Self-managed GitLab instance (Community Edition and Enterprise Edition) through Usage Ping. Usage Ping sends a payload containing data such as total number of projects and pipelines, as well as license information and hostname to GitLab. Only aggregates of usage data is sent to GitLab. You can view the exact payload of the usage ping in the administration panel in GitLab. [Here](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#usage-ping) describes how you can also opt-out of the usage ping.



