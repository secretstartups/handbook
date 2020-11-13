---
layout: handbook-page-toc
title: "Demo Systems"
description: "The GitLab Demo Systems provide infrastructure for the GitLab Customer Success, Marketing, Sales, and Training teams to demonstrate GitLab features, value propositions, and workflows in a variety of asynchronous and live capacities."
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview of Demo Systems

The GitLab Demo Systems provide infrastructure for the GitLab Customer Success, Marketing, Sales, and Training teams to demonstrate GitLab features, value propositions, and workflows in a variety of asynchronous and live capacities.

Please consider this handbook documentation to be the single source of truth ("SSOT") for all resources that use the `gitlabdemo.com` or `gitlabdemo.cloud` domain names.

The [GitLab Demo Systems - Master Deck](https://docs.google.com/presentation/d/1XwlqCCYiHyc6WzeEZ5xqjEe0ISeibj6qbAkea8EO3R0/edit?usp=sharing) has all of the slides that we've created that relate to the demo systems. These are mostly used in management discussions and onboarding presentations.

<figure class="video_container">
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vR-G-RzM4jmJCuD4wvUJPVtMUuNZwfNMnsVzLjt9VOr0Yl8NFfdtKb-IpuO8by-4J-ILccYNTVYyrDy/embed?start=false&loop=false&delayms=60000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</figure>

### Why do we have demo systems?

* **Why shouldn’t we just use GitLab.com?** Although you can use GitLab.com for showing most of the value of GitLab use cases, there are some administrative features that require the deployment of GitLab Omnibus infrastructure in AWS, GCP, or local VM/container. Many of our enterprise customers opt for self-managed over GitLab.com so we are mindful of “showing the customer what they’ll see in production”.

* **Why shouldn’t each team member build their own demos?** It is inefficient for Solutions Architects team members to spend a lot of time building the infrastructure and configuring servers needed for delivering demos to customers, so the Demo Systems team provides an economies-of-scale platform for Customer Success team members to simplify the provisioning of infrastructure and access to demo environments.

* **What’s special about our infrastructure?** The demo systems infrastructure doesn’t do anything special that a customer or partner company couldn’t do themselves with the appropriate staffing and engineering investment. We will be open sourcing our infrastructure-as-code methods, scripts and tools for the wider community to use to streamline their deployment of Omnibus infrastructure.

### Team Overview

The Demo Systems are architected and maintained by [Jeff Martin](https://gitlab.com/jeffersonmartin) ([Senior Demo Systems Engineer](https://about.gitlab.com/job-families/sales/demo-systems-engineer/)). We have other team members in the Customer Success team that volunteer part-time to help support our users and infrastructure. Please contact Jeff on Slack with any questions or requests.

#### Notable Volunteers

* [Cristiano Casella](https://gitlab.com/ccasella) - Kubernetes support and infrastructure maintenance
* [Joel Krooswyk](https://gitlab.com/jkrooswyk) - Kubernetes support, GKE administration, and sample projects
* [Richard (REB) Baum](https://gitlab.com/xyzzy) - Omnibus support and legacy i2p infrastructure

## Demo Systems Handbook Links

### Environments

* [Environments Overview](/handbook/customer-success/demo-systems/environments)
* [Demo Cloud - Omnibus-as-a-Service](/handbook/customer-success/demo-systems/environments/demo-cloud)
* [Container Sandbox - EKS](/handbook/customer-success/demo-systems/environments/container/eks)
* [Container Sandbox - GKE](/handbook/customer-success/demo-systems/environments/container/gke)
* [Compute Sandbox - AWS](/handbook/customer-success/demo-systems/environments/compute/aws)
* [Compute Sandbox - GCP](/handbook/customer-success/demo-systems/environments/compute/gcp)

### Tutorials

* Getting Started
    * [Creating and accessing your account](/handbook/customer-success/demo-systems/tutorials/getting-started/creating-accessing-your-account)
    * [Configuring GitLab with group-level Kubernetes cluster](/handbook/customer-success/demo-systems/tutorials/getting-started/configuring-group-cluster)
    * [Using project templates and sample projects](/handbook/customer-success/demo-systems/tutorials/getting-started/using-templates-sample-projects)
    * [Using the demo designer for creating sample data](/handbook/customer-success/demo-systems/tutorials/getting-started/using-demo-designer)
* Advanced Use Cases
    * Using GitLab Pages (Coming Soon)
* CI/CD and Auto DevOps
    * Using Auto DevOps (Coming Soon)
    * Configuring your own runner (Coming Soon)
* Integrations
    * [Create a Jenkins pipeline](/handbook/customer-success/demo-systems/tutorials/integrations/create-jenkins-pipeline)
    * Using the JIRA integration (Coming Soon)
* Contributed Tutorials
    * No tutorials available

### Sample Data

<div class="panel panel-warning">
<div class="panel-heading">
Demo Data Iteration-in-Progress
</div>
<div class="panel-body">
Historically, there has not been a consistent set of demo data. Each of our Solutions Architects are responsible for creating their own demo data or forking projects from other team members.<br />
<br />
Please see the <a href="https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics/31">Implement Demo Data Designer and project import tools for sample data</a> epic for more information on our next iteration.
</div>
</div>

* [Legacy Demo Readiness Links](/handbook/customer-success/solutions-architects/#demo-readiness)
* [Demo Data Designer](https://gitlabdemo.com/designer)
* CREDIT Enterprises (WIP Coming Soon)
    * Collabify Club
    * Merge IT
    * Tanuki Express
    * Team Meld
* TanukiTech (Legacy)

### Projects and Code Repositories

* [Infrastructure](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure)
    * [demosys-terraform](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-terraform) - Terraform configuration for demo systems infrastructure. Not for end users.
    * [demosys-ansible](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-ansible) - Ansible configuration for demo systems infrastructure.
    * [demosys-portal](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-portal) - Full stack application for demo reservation management.
    * [demosys-gitlab-managed-apps](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-gitlab-managed-apps)
* [Demo Bugs, Feature Requests, and Support](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests)
    * [Demo Systems - OKRs](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs) - This project provides issue tracking for our high-level OKRs.
    * [Demo Cloud - Portal - Features and Bugs](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/portal-features-and-bugs) - This project is for feature requests and bugs for our demo portal, library catalog of videos, slides, Markdown content and other media. Our content is crowdsourced and the systems team are facilitators, not creators or curators.
    * [Demo Cloud - Training - Features and Bugs](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/training-features-and-bugs) - This project is for feature requests and bugs for our PS training and workshop admins. Not for real-time support.
    * [Demo Cloud - GitLab Core Instance - Ideas and Requests](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-cloud-gitlab-core) - This is a catch-all for the shared GitLab instance in the GitLab Demo Cloud.
    * [Demo Cloud - Integrations - Ideas and Requests](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-cloud-integrations) - This is a catch-all for all 3rd party vendor integrations in the GitLab Demo Cloud.
    * [Demo Cloud - Bug Reports and Support](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-bugs) - This is a catch-all for bug reports or issues with existing systems.
    * [Demo Cloud - Cloud Infrastructure - Ideas and Requests](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-infra-projects) - This project is for infrastructure projects including our GCP, SaaS environments, sandbox VMs, etc.
    * [Demo Data Project - Ideas and Requests](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demo-data-projects) - This project is for demo data related initiatives and feature requests.
    * [Demo Side Projects - Ideas and Requests](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/side-projects) - This catch-all project for side project ideas and requests that don't fit in another project.

### Infrastructure

* [Infrastructure-as-Code - Ansible](/handbook/customer-success/demo-systems/infrastructure/ansible)
* [Infrastructure-as-Code - Terraform](/handbook/customer-success/demo-systems/infrastructure/terraform)
* [Kubernetes Architecture Docs](/handbook/customer-success/demo-systems/infrastructure/kubernetes)
* [Network Architecture and Subnet Docs](/handbook/customer-success/demo-systems/infrastructure/networking)

### Roadmap

* [Overview on Handbook Page](/handbook/customer-success/demo-systems/roadmap)
* [GitLab OKR Epics](https://gitlab.com/groups/gitlab-com/customer-success/demo-systems/-/epics)
* [GitLab OKR Issues](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests/demosys-okrs/-/issues)
* [Feature Request Issues](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests)

### Help and Support

* `#demo-systems` Slack channel (for GitLab team members)
* `demo-systems-admin@gitlab.com` (for GitLab community members)
* Feature Request [Issues](https://gitlab.com/gitlab-com/customer-success/demo-systems/demo-feature-requests)
