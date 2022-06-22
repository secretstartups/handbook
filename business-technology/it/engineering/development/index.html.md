---
layout: handbook-page-toc
title: "IT Engineering - Development"
description: "This handbook page provides information about software development in the IT Engineering sub-department."
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

The IT Engineering Development team develops custom software applications, automation, APIs and integrations that support internal IT automation for business efficiency and processes managed by the IT department. 

Many of our projects focus on providing self service access request provisioning to our tech stack applications and supporting IT Infrastructure services including the Demo Systems and Sandbox Cloud.

In FY21-Q4, we launched the [GitLab Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox), powered by [HackyStack](https://gitlab.com/gitlab-com/business-technology/engineering/tools/hackystack) to automate the provisioning of AWS acccounts, AWS IAM users, GCP projects, and GCP users. This has allowed us to automate a large portion of our AWS and GCP access requests.

In FY22-Q3, we launched the initial technical discovery and custom development prototype of GitLab Access Manager (codename "Project FastPass") that will eventually replace access request issues and manual provisioning with a streamlined custom web UI and API integration with all of our tech stack applications for user and role provisioning. It is expected that the first phase of GitLab Access Manager will launch in late FY23.

We plan to release Access Manager as an open source project in the future after security hardening. In the meantime, all of our SDKs for connecting to tech stack applications are being open sourced as we develop them at [gitlab.com/glamstack](https://gitlab.com/glamstack).

## Team

| Name                                                                        | Role                              |
|-----------------------------------------------------------------------------|-----------------------------------|
| [Peter Kaldis](https://about.gitlab.com/company/team/#pkaldis)              | Manager, IT Engineering           |
| [Jeff Martin](https://about.gitlab.com/company/team/#jeffersonmartin)       | Senior IT Systems Engineer        |
| [Dillon Wheeler](https://about.gitlab.com/company/team/#dillonwheeler)      | IT Systems Engineer               |

## Repositories

We strongly believe in open source software and publish many of our repositories as open source. Some projects that are built as internal tools are not open sourced due to perceived security hardening risks.

[Source Code Repositories](https://gitlab.com/gitlab-com/business-technology/engineering)

### Internal Projects

- [Demo Systems - Demo Cloud](https://gitlab.com/gitlab-com/business-technology/engineering/tools/gitlabdemo-cloud-app)
- [Demo Systems - Training Cloud](https://gitlab.com/gitlab-com/business-technology/engineering/tools/gitlabdemo-com-app)
- [GitLab Access Manager](https://gitlab.com/gitlab-com/business-technology/engineering/access-manager)
- [IT Ops CLI Scripts](https://gitlab.com/gitlab-com/business-technology/engineering/tools/it-ops-laravel-cli-scripts)

### Open Source Projects

- [HackyStack](https://gitlab.com/gitlab-com/business-technology/engineering/tools/hackystack)
- [SDK - GitLab](https://gitlab.com/glamstack/gitlab-sdk)
- [SDK - Google Auth](https://gitlab.com/glamstack/google-auth-sdk)
- [SDK - Google Cloud](https://gitlab.com/glamstack/google-cloud-sdk)
- [SDK - Google Workspace](https://gitlab.com/glamstack/google-workspace-sdk)
- [SDK - Okta](https://gitlab.com/glamstack/okta-sdk)
- [Terraform Modules](https://gitlab.com/gitlab-com/sandbox-cloud/terraform-modules)

## Tech Stack

All of our IT Engineering applications use the [Laravel](https://laravel.com/docs) framework.

We use [TailwindCSS](https://tailwindcss.com/) for front-end development with a progressive refactoring for legacy applications. 

We currently use MySQL databases for our Laravel applications but are in the process of evaluating a migration to PostgreSQL.

#### FAQ: Why did you choose Laravel/PHP? Why not use Ruby on Rails?

We get asked this question a lot since GitLab is predominately a Rails company.

We have many frameworks/languages used across GitLab. The GitLab product and the Engineering division predominantly use Ruby on Rails, Go, and Vue.js. There are several software engineering teams (outside of the Engineering Development department) that build internal apps and tools that help us run the business. This includes Python, Node.js, PHP, and a few corner cases of others for demos and small tools.

There are many perceptions about software languages and many people have opinions that are strongly held ("the language debate"). Whether or not this is the language or framework that you would pick, each team has different needs and different skill sets, and one size does not fit all. 

We subscribe to the principle that we only use mature and well tested frameworks for the respective language to ensure that the fallacies of each language are mitigated through the use of framework documented best practices. 

There are no Rails engineers in IT and we do not have any collaboration or team members in the Engineering Development department that contribute to our initiatives and projects. We believe it is prudent to have senior/seasoned developers who know their craft and their tools writing source code instead of learning a new framework from scratch to build and maintain multiple production-grade applications with only two engineers. 

We love using Laravel, the same way many team members love using Rails or other languages. 

As part of our efficiency and results values and boring solutions operating principle, the IT team standardized on the same framework for all of our applications and tools based on the IT team's proficiency with a collective 11 years of Laravel experience among our two engineers. The use of Laravel has been decided by the DRIs and approved by leadership and security. Please see our [disagree, commit, and disagree operating value](https://about.gitlab.com/handbook/values/#disagree-commit-and-disagree) to learn more.

This also allows us to [dogfood](/handbook/values/#dogfooding) GitLab CI/CD capabilities for PHP projects.

As part of our [collaboration](/handbook/values/#collaboration) [diversity and inclusion value](/handbook/values/#diversity-inclusion), we are sensitive to and cognizant of language and framework bashing. In this case, most opinions of PHP being a "bad language" have been dispelled as the language has matured and refactored in version 5.x, 7.x, and 8.x. 

Laravel itself is a modern and mature framework that rivals Ruby on Rails and Python's Django. Laravel has seen tremendous community adoption and popularity in recent years.

Sources:
* [Framework Download Stats](https://packagist.org/packages/laravel/framework/stats)
* [Google Trends](https://trends.google.co.in/trends/explore/TIMESERIES/1648478400?hl=en-GB&tz=420&date=2014-01-01+2022-03-28,2014-01-01+2022-03-28,2014-01-01+2022-03-28,2014-01-01+2022-03-28&geo=,,,&q=%2Fm%2F06y_qx,%2Fm%2F0505cl,%2Fm%2F0bbxf89,%2Fm%2F0jwy148&sni=3)
