---
layout: markdown_page
title: "Logging Working Group"
description: "The GitLab Logging Working Group have multiple business purposes, to you can view these on this page. Learn more!"
canonical_path: "/company/team/structure/working-groups/logging/"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Attributes

| Property     | Value |
|--------------|-------|
| Date Created | September 9, 2019 |
| Date Ended   | February 1, 2020 |
| Slack        | [#wg_log-aggregation](https://gitlab.slack.com/messages/CGR0T1C6P) (only accessible from within the company) |
| Google Doc   | [Logging Working Group](https://docs.google.com/document/d/1Trzy-mbxsoq8UP6WtAnLCfYEXim1KdiBB0DftCaDOfY/edit?usp=sharing) (only accessible from within the company) |
| Issue Label | WG-Logging (gitlab-com/-org) |

## Business Goal

1. Monitor and Security teams will be responsible for triaging all logging issues
1. Determine the long-term owner of the ultimate logging product and/or process
1. Monitor and Security teams will be responsible for defining logging standards
1. Clearly define how logging works at GitLab in the runbooks



## Exit Criteria

1. Triaging logging issues using the TriageBot
  * Security team will triage security and compliance issues to either the security team or a dev team
  * For dev teams, the Monitor will triage issues and assign to appropriate dev team.
  * Triagebot is modified by the security team to send slack notifications if higher priority logging issues aren't resolved in a specified timeframe.
1. Monitor: APM group  takes ownership of the overall logging products/process
  * Infrastructure will continue to own the system architecture and systems.
  * Monitor will slowly build out a comprehensive logging product to meet security and dev needs.
1. Logging Standards
  * Monitor will own logging standards for dev teams
  * Security will own logging standards for compliance purposes
  * Monitor and Security team will both release logging standards
1. Transfer all current state of logging to the logging (runbook)[https://gitlab.com/gitlab-com/runbooks/tree/master/logging/doc]
  * Include all known details of the current system (DELKE remains 3rd-party-only for now)
  * Describes what logs are logged where
  * Describes current and proposed log standards
  * Details how to hook up new analyzers
  * Details about how TriageBot works
  * Details about who owns what parts of the triaging process

## Outcome

Security Automation is leading the logging effort at this time.

The DELKE project ticks a lot of the boxes that we wanted out of a logging system. To that end we are moving forward to make DELKE more DevOps ready and productizable.

We will move forward on Logging standards.

## Other Investigations

### What do other companies do?

* Jobs and files in ParK in AWS (wife just started there)
* Look into Presto (Facebook Distributed SQL)
* HotWarm ElasticSearch



### LabKit

LabKit is an application logging library Andrew Newdigate invented to help structure and standardize logging (similar to Graphite pings) throughout the Ruby and Go code bases


### Where do logs go today?

* Unstructured logs (redis, etc) sent to GCS and Stackdriver
* Structured sent to ELK
* Large structured logs sent to BigQuery (via Stackdriver)

![Current logging system architecture](/images/working-groups/logging/logging-at-gitlab.jpg)
[Original Diagram](https://docs.google.com/drawings/d/1Kjyd4KW1nyuvYzdlu-LrbsT5mhQSkJ4584IGUQvHsV0/edit?usp=sharing)

### Noted issues
* Missing logs (for systems/services)
* Incomplete logs
* Substandard logs
* Inconsistent formats

## Related Issues

* [Kickstart the GitLab.com Working Group](https://docs.google.com/document/d/1PRJtvAPHOMF1d152vGMpPWxRZNu12vCxvlnVgZud47c/edit#heading=h.mm4gsg9so2kc)
* [Add Three More 3rd Party Service Audit Ingestions](https://gitlab.com/gitlab-com/gl-security/security-department-meta/issues/607)
* [Release GitLab Runner Metrics Collection to Production](https://gitlab.com/gitlab-com/gl-security/security-department-meta/issues/604)
* [Augment GitLab Runner Metrics Collection w/Suricata Metrics](https://gitlab.com/gitlab-com/gl-security/security-department-meta/issues/605)
* [Rails production logs cannot be fully loaded into BigQuery without pre-processing](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7564)


## Roles and Responsibilities

| Working Group Role  | Person           | Title                                  |
|---------------------|------------------|----------------------------------------|
| Facilitator         | Alex Groleau     | Security Software Engineer, Automation |
| Exec Sponsor        | Jan Urbanc       | Interim Director of Security           |
| Member              | Stan Hu          | Engineering Fellow                     |
| Infrastructure Lead | Andrew Newdigate | Staff Engineer, Infrastructure         |
| Member              | Ethan Urie       | Senior Backend Engineer, Security      |
| Member              | Antony Saba      | Senior Threat Intelligence Engineer    |
| Member              | Tomasz Mazukin   | Backend Engineer, Verify               |
| Member              | Jayson Salazar   | Security Engineer, Security Operations |
| Member              | Paul Harrison    | Security Manager, Security Operations  |
| Member              | Nik Sarosy       | Senior Security Analyst, Compliance    |


## Requirements and Considerations

### Actors

* Developers/Support
* Security/Compliance/BI
* Infrastructure

### General
* As a GitLab employee, I know there is a single team I can talk to about all things logging at GitLab.
* As a GitLab employee, I can find who is on the logging team by visiting a single handbook page.
* As a GitLab employee, I can contact the logging team via dedicated slack channel.
* As a GitLab employee, I can label GitLab issues for the logging team.
* As a logging team member, I only have one set of logging services/infrastructure to manage and maintain.
* As a paying, self-managed customer, I can easily set up a logging infrastructure for GitLab to log to.

#### Developers/Support
* As a developer or support, I can easily find, search, view, and analyze logs up to 6 months old
* As a developer or support, I can easily add a new logger without coordinating with any other team
* As a developer or support, I can easily find one page in the handbook that details what services we log to for each type of data, and what the URLs are for their dashboards.
* As a developer or support, I can easily find one page in the handbook that clearly specifies how to write log messages.
* As a developer or support, I can easily add a log message with all of the required data.
* As a developer or support, I can be confident that no private data is accidentally logged.
* As a developer or support, I use the same logging library per language as every other developer at GitLab.

#### Infrastructure
* As an infrastructure engineer, I can set up multiple sinks for different logs
* As an infrastructure engineer, I can easily find, search, view, and analyze logs up to 1 week old
* As an infrastructure engineer, I can easily specify the retention period for each data store and/or data type (i.e., security related)

#### Security/Compliance/BI
* As a security researcher/security engineer/compliance staff, I can easily find, search, view, and analyze logs up to 12 months old
* As a security researcher, I can easily correlate logs between sources and between GitLab subsystems.
* As a security researcher, et al., I can easily use logs to train ML models with historic data.
* As a security researcher, et al., I can easily use our logs to detect potential security issues before they become problems.
* As a security researcher, et al., I can easily analyze the logs for sensitive or private data.
