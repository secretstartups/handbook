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

IT Engineering uses a variety of languages and frameworks. 

We subscribe to the principle that we only use mature and well tested frameworks for the respective language to ensure that the fallacies of each language are mitigated through the use of framework documented best practices.

Many of our legacy applications and tools were written in [Laravel](https://laravel.com/docs) (PHP) based on our small team's experience with Laravel (instead of Ruby on Rails at the time) and a desire to live our efficiency, iteration, and results values. 

Although Laravel has seen tremendous commmunity [adoption and popularity](https://trends.google.co.in/trends/explore/TIMESERIES/1648478400?hl=en-GB&tz=420&date=2014-01-01+2022-03-28,2014-01-01+2022-03-28,2014-01-01+2022-03-28,2014-01-01+2022-03-28&geo=,,,&q=%2Fm%2F06y_qx,%2Fm%2F0505cl,%2Fm%2F0bbxf89,%2Fm%2F0jwy148&sni=3), the team has decided to build our next generation applications with Ruby on Rails to allow more contributors from across the company. We still love Laravel, the Laravel community, and continue to maintain our Laravel internal applications and tools that provide valuable services for our team members that are not a priority to be refactored at this time.

* **Full Stack Frameworks:** Ruby on Rails, Laravel (PHP)
* **Databases:** PostgreSQL, MySQL (legacy)
* **UI:** Bootstrap, TailwindCSS, Alpine.js, Vue.js
* **Infrastructure-as-Code:** Terraform, Ansible
