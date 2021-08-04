---
layout: handbook-page-toc
title: "Business Technology Engineering"
description: "The Business Technology Engineering team develops custom applications, automation, and integrations that support business efficiency and processes managed by the Business Technology department. We also manage AWS and GCP infrastructure that is not related to GitLab SaaS and provide managed infrastructure services for other departments."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Who We Are

The Business Technology Engineering team develops custom applications, automation, and integrations that support business efficiency and processes managed by the Business Technology department. We also manage AWS and GCP infrastructure that is not related to GitLab SaaS and provide managed infrastructure services for other departments.

The prime directive of the Business Technology Engineering group is to achieve maximum iteration velocity with designing, developing, and implementing automation efficiencies using software and systems to improve GitLab's business processes. Our collective group is broken into smaller functional teams of one to five people that focus on one or more specific areas. 

Each functional team has the autonomy to make their own decisions of how they work in alignment with the [company values](https://about.gitlab.com/handbook/values/) of collaboration, results, efficiency, and iteration. This was decided collectively during the [Business Technology Engineering Symposium call](https://docs.google.com/document/d/19HgwnKmgtLWOkMVg8s1vOqTfA_wmo_RUQ7_R3yMcVgI/edit?usp=sharing) where we evaluated how each of us work, what works best for us, the balance of planned milestone sprints vs reactive kanban requests, and the unique dynamics of each functional team's scope of responsibility and day-to-day needs. You can see each of the functional teams below with links to the respective handbook pages.

### Engineering Team

| Name                                                                   | Role                              | Focus Areas                                                                |
|------------------------------------------------------------------------|-----------------------------------|----------------------------------------------------------------------------|
| [Daniel Parker](https://about.gitlab.com/company/team/#dparker)        | Senior Integrations Engineer      | Enterprise Applications and Integrations                                   |
| [Karuna Singh](https://about.gitlab.com/company/team/#Karuna16)        | Integrations Engineer             | Enterprise Applications and Integrations                                   |
| [To Be Hired](https://boards.greenhouse.io/gitlab/jobs/5372358002)     | Integrations Engineer             | Enterprise Applications and Integrations Engineering                       |
| [Jeff Martin](https://about.gitlab.com/company/team/#jeffersonmartin)  | Senior IT Systems Engineer        | Access Management, Infrastructure, Demo Systems, Training Labs             |
| [Dillon Wheeler](https://about.gitlab.com/company/team/#dillonwheeler) | IT Systems Engineer               | Access Management, Operations (interim)                                    |
| [To Be Hired](https://boards.greenhouse.io/gitlab/jobs/5081582002)     | IT Systems Engineer               | Operations                                                                 |

### Leadership Team

| Name                                                                  | Role                                     | Business Engagement Focus Areas                                     |
|-----------------------------------------------------------------------|------------------------------------------|---------------------------------------------------------------------|
| [Bryan Wise](https://about.gitlab.com/company/team/#bryanwise)        | VP, Business Technology                  | VP+ level requests, new programs, infrastructure managed services   |
| [Christopher Nelson](https://about.gitlab.com/company/team/#ccnelson) | Senior Director, Enterprise Applications | Enterprise Applications and Integrations Engineering                |
| To Be Hired                                                           | Senior Director, IT Operations           | TBD                                                                 |
| [Peter Kaldis](https://about.gitlab.com/company/team/#pkaldis)        | IT Manager                               | Access Management, IT Operations                                    |

## Access Management Engineering

* **DRI:** [Jeff Martin](https://about.gitlab.com/company/team/#jeffersonmartin), [Dillon Wheeler](https://about.gitlab.com/company/team/#dillonwheeler), [Peter Kaldis](https://about.gitlab.com/company/team/#pkaldis)
* **Stable Counterparts:** [Jeff Burrows (Manager, Security Compliance)](https://about.gitlab.com/company/team/#jburrows001), [Steve Truong (Risk and Field Security)](https://about.gitlab.com/company/team/#sttruong), [Karlia Kue (IT Compliance Manager)](https://about.gitlab.com/company/team/#kxkue)
* `#bt-engineering-access-manager` Slack Channel
* [Handbook Page](/handbook/business-technology/engineering/access-manager)
* [Issue Tracker](https://gitlab.com/gitlab-com/business-technology/engineering/access-manager/issue-tracker/-/issues)

The Access Management Engineering team focuses on Identity and Access Management (IAM) and Role-Based Access Control (RBAC) automation for all of [GitLab's tech stack applications](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/).

In FY21-Q4, we launched the [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/), powered by [HackyStack](https://gitlab.com/hackystack/hackystack-portal) to automate the provisioning of AWS acccounts, AWS IAM users, GCP projects, and GCP users. This has allowed us to automate a large portion of our AWS and GCP access requests.

In FY22-Q3, we launched the initial technical discovery and custom development prototype of GitLab Access Manager (codename "Project FastPass") that will eventually replace access request issues and manual provisioning with a streamlined custom web UI and API integration with all of our tech stack applications for user and role provisioning. It is expected that the first phase of GitLab Access Manager will launch in late FY22, and we are considering releasing Access Manager as an open source tool in the future.

You can track the real-time progress in the [Project FastPass Issue Tracker](https://gitlab.com/gitlab-com/business-technology/engineering/access-manager/issue-tracker/-/issues).

The GitLab Access Manager documentation will be published in FY22-Q3 for internal education and security compliance review.

## Enterprise Applications and Integrations Engineering

* **DRI:** [Daniel Parker](https://about.gitlab.com/company/team/#dparker), [Karuna Singh](https://about.gitlab.com/company/team/#Karuna16)
* **Stable Counterparts:** [Alex Westbrook (Manager, Finance Systems Administrators)](https://about.gitlab.com/company/team/#awestbrook), [Lien Van Den Steen (People Group Engineering)](https://about.gitlab.com/company/team/#lienvdsteen)
* `#bt-integrations` Slack Channel
* [Handbook Page](https://about.gitlab.com/handbook/business-technology/enterprise-applications/integrations/)
* [Issue Tracker](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations/integrations-work)
* [Project Repositories](https://gitlab.com/gitlab-com/business-technology/enterprise-apps/integrations)
* [Related - Project Nexus](https://about.gitlab.com/handbook/business-technology/enterprise-applications/integrations/nexus/#nexus-distilled)
* [Related - People Group Engineering Handbook Page](https://about.gitlab.com/handbook/people-group/engineering/)

The Enterprise Applications Integrations team designs, builds, and maintains the complex ecosystem of automations that exist in our Enterprise Applications ecosystem using a hybrid of custom developed code in our Nexus codebase (powered by [Nest.js](https://nestjs.com/)) and/or Workato integrations platform-as-a-service (IPaas).

In FY21-Q3, we launched v1.0 of Nexus. This release includes all of the work we’ve done so far to stand up Nexus and get it ready for projects. Going forward release versions will be bumped at the end of our monthly milestones and include the changelog of the work done in that milestone. We are releasing code to production on a daily basis, these versions just serves as a marker to capture a snapshot of the work we’ve done in each milestone. 

You can learn more about Nexus and our capabilities and offerings on our [handbook page](https://about.gitlab.com/handbook/business-technology/enterprise-applications/integrations/) or ask in the `#bt-integrations` Slack channel.

## Infrastructure Engineering

* **DRI:** [Jeff Martin](https://about.gitlab.com/company/team/#jeffersonmartin), [Dillon Wheeler](https://about.gitlab.com/company/team/#dillonwheeler)
* **Stable Counterparts:** [Dave Smith - (Manager, Site Reliability Engineering - GitLab SaaS)](https://about.gitlab.com/company/team/#dawsmith), [Marco Lancini (Infrastructure Security)](https://about.gitlab.com/company/team/#mlancini), [Paulo Martins (Infrastructure Security)](https://about.gitlab.com/company/team/#pmartinsgl)
* `#infra-access-requests` Slack Channel
* [Handbook Page](/handbook/business-technology/engineering/infrastructure)
* [Issue Tracker](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure/issue-tracker)
* [Project Repositories](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure)
* [Related - Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/)
* [Related - Infrastructure Standards](https://about.gitlab.com/handbook/infrastructure-standards/)
* [Related - Infrastructure Security Handbook Page](https://about.gitlab.com/handbook/engineering/security/security-operations/infrastructure-security/)
* [Related - Infrastructure Security Wiki](https://gitlab.com/groups/gitlab-com/gl-security/security-operations/infrastructure-security/-/wikis/home)

The Business Technology Infrastructure Engineering team ("BT Infrastructure") focuses on the architecture, access management, cost labels and tags, naming conventions, and organizational hierarchy for AWS and GCP infrastructure across the organization, except for the GitLab SaaS realm (where GitLab.com is hosted) that is managed by the [Engineering Infrastructure department](https://about.gitlab.com/handbook/engineering/infrastructure/).

We collaborate closely with the [Infrastructure Security ("InfraSec") team](https://about.gitlab.com/handbook/engineering/security/security-operations/infrastructure-security/) that is responsible for best practices and implementing security policies to mitigate risk.

We also provide escalation engineering and triage support for the [Security Incident Response Team ("SIRT")](https://about.gitlab.com/handbook/engineering/security/security-operations/sirt/) and [Security RED Team](https://about.gitlab.com/handbook/engineering/security/security-operations/red-team/) when security anomalies, events, or incidents require AWS/GCP subject matter expertise.

In FY21-Q4, we launched the [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/), a deployment of our open source [HackyStack](https://gitlab.com/hackystack/hackystack-portal) project (powered by [Laravel](https://laravel.com/docs/8.x)) to automate the provisioning of AWS acccounts, AWS IAM users, GCP projects, and GCP users. This has allowed us to automate a large portion of our AWS and GCP access requests.

We are in the process of adopting the [Infrastructure Standards Labels and Tags](https://about.gitlab.com/handbook/infrastructure-standards/labels-tags/) to get better visibility into cost allocation for all of the AWS and GCP resources that are provisioned across the organization.

If you want to deploy new infrastructure in AWS or GCP, the process depends on the purpose. You can get links to self-service instructions and issue templates in the [BT Infrastructure Issue Tracker README](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure/issue-tracker/-/blob/main/README.md).

For additional guidance or questions, please ask in `#infra-access-requests` or send a Slack DM to Jeff Martin.

## Operations Engineering ("IT EngOps")

* **DRI:** [Dillon Wheeler](https://about.gitlab.com/company/team/#dillonwheeler), [Peter Kaldis](https://about.gitlab.com/company/team/#pkaldis), TBH
* [Handbook Page](/handbook/business-technology/engineering/operations)
* [Issue Tracker](https://gitlab.com/gitlab-com/business-technology/engineering/operations/issue-tracker)
* [Project Repositories](https://gitlab.com/gitlab-com/business-technology/engineering/operations)

The Operations Engineering team is responsible for providing escalation engineering support for the IT Operations team (Help Desk Analysts, Systems Administrators, IT Compliance), particularly with writing automation scripts and customization and iteration implementation requests for tech stack applications (notably Okta, Google G-Suite/Workplace, etc). 

This team is intended to serve as a catch-all for all day-to-day requests to avoid disrupting the planned milestones for larger projects that the other teams are working on.

## How To Engage Us

If we are already doing related work, feel free to ask in our respective Slack channel or create an issue in the respective issue tracker.

For new programs or larger requests, please reach out to a member of the leadership team to start a "Business Engagement" discussion.
