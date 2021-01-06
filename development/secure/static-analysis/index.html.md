---
layout: handbook-page-toc
title: "Static Analysis Group"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Static Analysis

The Static Analysis group at GitLab is charged with developing solutions which perform [Static Analysis Software Testing (SAST)](/direction/secure/static-analysis/sast/),

[Secret Detection](/direction/secure/static-analysis/secret-detection/), and [Malware Detection](/direction/secure/#malware-scanning) for customer software repositories.

## Common Links

* Slack channel: #g_secure-static-analysis
* Slack alias: @secure_static_analysis_be
* Google groups: static-analysis-be@gitlab.com

## How We Work

The Static Analysis group largely follows GitLab's [Product Development Flow](/handbook/product-development-flow/). Where we differ in approach is that we assign engineers to 
epics rather than issues. Engineers are empowered to identify the next issue which should be worked to achieve the objectives of the epic and pull issues through the workflow states.

Issues worked by this team are backend-centric and can span analyzers, vendored templates, and GitLab's Rails monolith. At times, issues can require support from Secure's frontend team if UI changes are required. We will [require more notice](/handbook/engineering/development/secure/fe-secure#How-to-work-with-us) for initiatives like these.

### We Own What We Ship

We are responsible for delivering GitLab's SAST and Secret Detection features, and the analyzers we develop rely heavily upon open source software. 
This means we can be dramatically affected by changes in those software packages. We will check for updates to these packages once per [GitLab 
release](https://about.gitlab.com/releases/). New versions will be scrutinized for the following aspects:

* Breaking changes
* New, updated, or removed security rules
* Behavior changes
* Analyzer changes needed to use the new version
* Security vulnerabilities

An issue will be created and prioritized if a breaking change is discovered. Otherwise, dependency updates will be detailed in the relevant 
analyzer's changelog and a new version will be released utilizing the change. This is a lot of work, most likely requiring several hours of 
focused study to understand what is happening in the new version. As a result, dependency updates will be divided evenly and assigned to 
Senior and Intermediate Backend Engineers, with the remainder going to the group's Staff Backend Engineer. Assignments will be managed 
through our [Release project's issue template](https://gitlab.com/gitlab-org/security-products/release/-/blob/master/scripts/templates/release_issue.md.erb).

The assigned backend engineer is the group's primary liaison with the dependency's open source community. Engineers are expected to contribute 
back to those projects, especially if critical or high security findings are confirmed.

### Product Prioritization Labels

We also use additional labels to categorize different types of requests. These labels represent the top areas of product impact we are currently focused on within the Static Analysis team.

[Issue board](https://gitlab.com/gitlab-org/gitlab/-/boards/1578273?label_name[]=group%3A%3Astatic%20analysis).

#### `~SAST: Common Need`

Features we expect everyone to need and use

*Goal:* How do we protect from the most common security issues

*Measure:* Opportunity for impact

##### Types of issues

* Scanner updates
* Language coverage
* OWASP Top 10
* Better Vunl Metadata
* Documentation

#### `~SAST: Advanced Config`

Features we don’t expect everyone to use

*Goal:* Enable customization in configuration and enable advanced capabilities advanced users

*Measure:* Power and flexibility

##### Types of issues

* Customize rulesets
* Monorepo support
* Security scan customization

#### `~SAST: Enforce & Control`

Use least disruptive settings by default and allow customizations

*Goal:* Provide robust policies and controls to enforce security compliance

*Measure:* Policy & Compliance

##### Types of issues

* New scanners
* Policy ideas
* Compliance features

#### `~SAST: Workflow`

*Goal:* Enable workflows to ensure the appropriate attention on issues and allowing them to be tracked overtime.

*Measure:* Trust Scanner Issues & Track over time

##### Types of issues

* Speedy Scanners
* Usage ping data

#### `~SAST: Integrate`

Strongly defined integration harness to make internal/external integrations easier and more conformant

*Goal:* Provide defined integration point, enabling easier integrations

*Measure:* Be an ecosystem player

##### Types of issues

* Integration related ideas

### Community Contributions

The Static Analysis group is actively reserving capacity each iteration to be responsive to MRs
from the community. Each backend engineer in the group will serve as the [Community Merge Request Coach](https://about.gitlab.com/job-families/expert/merge-request-coach/) on a rotating basis. The Community Merge Request Coach has the following responsibilities, in priority order:

1. Triage and work with community contributors to help drive their MRs to completion.
1. Release feature(s) to core.
1. Triage and resolve ~priority::1 bugs.
1. Work an issue in the backlog that's of great interest to you.

## Issue Boards

* [Static Analysis Delivery Workflow Board](https://gitlab.com/groups/gitlab-org/-/boards/1590112?label_name[]=group%3A%3Astatic%20analysis&group_by=epic&label_name[]=backend)
* [Static Analysis Planning Board](https://gitlab.com/groups/gitlab-org/-/boards/1229162?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=group%3A%3Astatic%20analysis)
* [Static Analysis Next X-Y Release Board](https://gitlab.com/groups/gitlab-org/-/boards/1702880?label_name[]=group%3A%3Astatic%20analysis)
* [Static Analysis EM Board](https://gitlab.com/groups/gitlab-org/-/boards/1655697)
