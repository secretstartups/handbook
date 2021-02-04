---
layout: handbook-page-toc
title: "Demo Systems How We Work"
description: “This is an overview of how the Demo Systems group does planning and handles incoming requests.”
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

The Demo Systems group is a function of the Sales division and Customer Success department, however it is similar to a [Single-Engineer Group](https://about.gitlab.com/company/team/structure/#single-engineer-groups) in the Engineering division.

The Demo Systems Engineer has breadth across several infrastructure-related disciplines and is considered a hybrid of several roles, however with a smaller set of infrastructure that doesn't require a large team to manage. Here is a list of related job families:
* [Site Reliability Engineer](https://about.gitlab.com/job-families/engineering/infrastructure/site-reliability-engineer/)
* [Security Engineer](https://about.gitlab.com/job-families/engineering/security-engineer/)
* [Backend Engineer](https://about.gitlab.com/job-families/engineering/backend-engineer/#staff-backend-engineer)
* [IT System Engineer](https://about.gitlab.com/job-families/finance/it-systems-engineer/)
* [Director, Infrastructure (Reliability)](https://about.gitlab.com/job-families/engineering/infrastructure/engineering-management/#director-infrastructure-reliability)

You can learn more about the role and responsibilities in the [Demo Systems Engineer](https://about.gitlab.com/job-families/sales/demo-systems-engineer/) job family. 

### What We Do

* We develop web and CLI applications for automating the provisioning of ephemeral and long-lived infrastructure for showcasing the GitLab product in demos and training classes.
* We create managed infrastructure and provide support for sales demos. See the [Demo Cloud](/handbook/customer-success/demo-systems/environments/demo-cloud/) to learn more.
* We create automated provisioning of infrastructure for training classes and field marketing workshops. See the [Training Cloud](/handbook/customer-success/demo-systems/environments/training-cloud/) to learn more.
* We create and manage the automated provisioning of AWS accounts and GCP projects for team members for non-production purposes. See [GitLab Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox/) to learn more.
* We provide support triage for GitLab pipeline failures or Kubernetes errors for Customer Success team members.
* We create and manage the provisioning of Kubernetes clusters for Customer Success team members for non-production purposes.
* We lead the development of [HackyStack](https://gitlab.com/hackystack/hackystack-portal) which is a homegrown open-source project that powers the GitLab Sandbox Cloud.
* We contribute infrastructure-as-code resources to the community. See our [Terraform modules](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules) and [Ansible roles](https://gitlab.com/gitlab-com/sandbox-cloud/ansible-roles).
* We design and maintain our [company-wide infrastructure standards](/handbook/infrastructure-standards/) for non-production infrastructure, specifically the `sales-cs` and `sandbox` [realms](/handbook/infrastructure-standards/#gitlab-infrastructure-realms) and [labels and tags standards](https://about.gitlab.com/handbook/infrastructure-standards/labels-tags/).

Approximately ~750 of GitLab team members are in departments that use cloud infrastructure for development, experiment, testing or non-production purposes. This includes the ~130 Customer Success team members that includes our Solutions Architects, Technical Account Managers, and Professional Services Engineers. For documentation purposes, we refer to this as the GitLab infrastructure community.

The Demo Systems team is responsible for serving the AWS and GCP infrastructure needs of the Customer Success team. In alignment with our [efficiency value](https://about.gitlab.com/handbook/values/#efficiency), we also provide automation efficiencies-of-scale to the broader GitLab infrastructure community for provisioning sandbox infrastructure with the [Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox/).

## How We Plan

Since the demo systems team is small, we have made some adaptations to conventional project planning processes to meet our needs. Our team spends approximately 60% of time on support and incoming requests and 40% on projects and engineering iterations.

Here's our loose guidelines for how we plan while keeping things simple.

1. **Epic Initiatives** - We decide high-level initiatives approximately 6-12 months in advance based on business outcomes related to our company values.
2. **Project Epics and Issues** - We spend a few days at the beginning of each quarter to create the scope of work for the upcoming quarter projects. Based on this scope of work, we'll define the sequence of projects and assign estimated dates. Future iteration projects are usually placeholders that will be defined later after we learn more from our current iterations.
3. **Project Length** - We define the iterative steps for each initiative into 1-2 week projects. 
4. **OKR Alignment** - The Demo Systems team does not use OKRs in the traditional way. Since our team primarily provides support and infrastructure iteration based on users changing needs, we align our projects with job family responsibilities and adapt as needed to prioritize issues and epics in our issue tracker.
5. **Long-Term Solutions** - We want to build for the future and not spend time on one-off solutions to solve short-term needs unless it has major impact to our sales targets or leadership-sponsored initiatives.
6. **Greater Good** - We cannot do everything for everyone, so we focus our time on projects that benefit the productivity of the majority of our users. We have the benefit at GitLab of many team members being self-sufficient and technical so they are able to solve their own problems if the demo systems do not offer a solution.
7. **Headspace Efficiency** - We try to group similar projects together for efficiency gains and minimize the switching cost between projects. This also allows us to integrate the backlog of feature requests into the respective project(s).

## Incoming Requests and Support

Please create an issue or comment on an existing issue in our [Demo Systems issue tracker](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues) or [Sandbox Cloud issue tracker](https://gitlab.com/gitlab-com/sandbox-cloud/issue-tracking/-/issues) for anything that would take more than 30 minutes to complete.

You can post on the `#demo-systems` Slack channel to discuss ideas informally or request technical support for anything that should take less than 30 minutes to resolve.

## Activity Tracking

You can see what we're working on by following posts in the `#demo-systems` Slack channel.

You can see historical activity by reading our [Demo Systems Weekly Report](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=demosys%3A%3Areport) issues and [QBR Analytics](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues?scope=all&utf8=%E2%9C%93&state=all&label_name[]=demosys%3A%3Areport&search=qbr).

## Roadmap

You can learn more in the [FY22 OKR High-Level Planning Themes](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues/1) issue.

