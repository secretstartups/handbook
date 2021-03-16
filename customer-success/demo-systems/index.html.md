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

<figure class="video_container">
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vR-G-RzM4jmJCuD4wvUJPVtMUuNZwfNMnsVzLjt9VOr0Yl8NFfdtKb-IpuO8by-4J-ILccYNTVYyrDy/embed?start=false&loop=false&delayms=60000" frameborder="0" width="960" height="569" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</figure>

### Why do we have demo systems?

* **Why shouldn’t we just use GitLab.com?** Although you can use GitLab.com for showing most of the value of GitLab use cases, there are some administrative features that require the deployment of GitLab Omnibus infrastructure in AWS, GCP, or local VM/container. Many of our enterprise customers opt for self-managed over GitLab.com so we are mindful of “showing the customer what they’ll see in production”.

* **Why shouldn’t each team member build their own demos?** It is inefficient for Solutions Architects team members to spend a lot of time building the infrastructure and configuring servers needed for delivering demos to customers, so the Demo Systems team provides an economies-of-scale platform for Customer Success team members to simplify the provisioning of infrastructure and access to demo environments.

* **What’s special about our infrastructure?** The demo systems infrastructure doesn’t do anything special that a customer or partner company couldn’t do themselves with the appropriate staffing and engineering investment. We will be open sourcing our infrastructure-as-code methods, scripts and tools for the wider community to use to streamline their deployment of Omnibus infrastructure.

### How to Get Started

To get access to our Demo Cloud shared Omnibus instance ([gitlab-core](https://gitlab-core.us.gitlabdemo.cloud)), see the [Creating and accessing your account](/handbook/customer-success/demo-systems/tutorials/getting-started/creating-accessing-your-account) tutorial.

To self-provision an individual AWS account, see the instructions on the [Sandbox Cloud handbook page](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started). To have a group AWS account provisioned, create an access request issue in the [Sandbox Cloud issue tracker](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues/new?issuable_template=aws_group_account_create_request).

If you are planning a workshop and are looking for the process on using invitation codes and sample projects, see the [Training Cloud How it Works](/handbook/customer-success/demo-systems/environments/training-cloud#how-it-works) handbook section.

For all other questions or requests, please ask in `#demo-systems` on Slack and tag Jeff Martin. If Jeff is not available, please tag James Sandlin (North America) or Cristiano Casella (Europe) depending on your timezone.

### Team Overview

The Demo Systems are architected and maintained by [Jeff Martin](https://gitlab.com/jeffersonmartin) ([Senior Demo Systems Engineer](https://about.gitlab.com/job-families/sales/demo-systems-engineer/)). We have other team members in the Customer Success team that volunteer part-time to help support our users and infrastructure. Please contact Jeff on Slack with any questions or requests. We also collaborate with counterparts in other departments for broader GitLab infrastructure configuration in AWS, GCP, etc and security incident response.

#### Counterparts and Volunteers

* [James Sandlin](https://gitlab.com/jsandlin) - Demo Systems support (volunteer for North America timezones)
* [Cristiano Casella](https://gitlab.com/ccasella) - Demo Systems support (volunteer for EMEA timezones)
* [Dave Smith](https://gitlab.com/dawsmith) - AWS and GCP Infrastructure department counterpart
* [Marley Riser](https://gitlab.com/marleyr) - Security department counterpart (North America)
* [Mitra Jozenazemian](https://gitlab.com/mjozenazemian) - Security department counterpart (APAC)
* [Peter Kaldis](https://gitlab.com/pkaldis) - Business Ops (IT) counterpart

## Demo Systems Handbook Links

### Environments

* [Environments Overview](/handbook/customer-success/demo-systems/environments)
* [Demo Cloud - Omnibus-as-a-Service](/handbook/customer-success/demo-systems/environments/demo-cloud)
* [Training Cloud - Classes and Workshops](/handbook/customer-success/demo-systems/environments/training-cloud)
* [Sandbox Cloud - AWS and GCP access](/handbook/infrastructure-standards/realms/sandbox)

### Tutorials

* Demo Cloud
    * [Creating and accessing your account](/handbook/customer-success/demo-systems/tutorials/getting-started/creating-accessing-your-account)
    * [Configuring GitLab with group-level Kubernetes cluster](/handbook/customer-success/demo-systems/tutorials/getting-started/configuring-group-cluster)
    * [Using project templates and sample projects](/handbook/customer-success/demo-systems/tutorials/getting-started/using-templates-sample-projects)
    * [Using the demo designer for creating sample data](/handbook/customer-success/demo-systems/tutorials/getting-started/using-demo-designer)
    * [Create a Jenkins pipeline](/handbook/customer-success/demo-systems/tutorials/integrations/create-jenkins-pipeline)
* Training Cloud
    * [Planning a Workshop using Demo Systems](/handbook/customer-success/demo-systems/environments/training-cloud#how-it-works)
    * [Sample Slides for Workshop Demo Systems Instructions](https://docs.google.com/presentation/d/1ZKZSecu7orWyQxY8m-et26RQI2-ZELVaFuIrJxNN6-Q/edit?usp=sharing)
* Sandbox Cloud
    * [Creating an Individual AWS account (via Web UI)](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/#how-to-get-started)
    * [Create a Group AWS account (via Access Request)](https://gitlab.com/gitlab-com/sandbox-cloud/issue-tracking/-/issues/new?issuable_template=aws_group_account_create_request)

### Sample Data

<div class="panel panel-warning">
<div class="panel-heading">
Demo Data Iteration-in-Progress
</div>
<div class="panel-body">
Historically, there has not been a consistent set of demo data. Each of our Solutions Architects are responsible for creating their own demo data or forking projects from other team members.<br />
</div>
</div>

See the handbook page for [Demo Readiness](https://about.gitlab.com/handbook/customer-success/solutions-architects/demonstrations/#demo-readiness) and [Existing Demonstrations](https://about.gitlab.com/handbook/customer-success/solutions-architects/demonstrations/#existing-demonstrations) to get started.

You can see the shared projects that have been published in the Demo Cloud in the [Community Projects](https://gitlab-core.us.gitlabdemo.cloud/community) or [Training and Workshop Sample Projects](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects) groups, or explore the [Demo Systems Users](https://gitlab-core.us.gitlabdemo.cloud/demosys-users) group to discover other team memer's projects.

Please see the <a href="https://gitlab.com/gitlab-com/customer-success/solutions-architecture-leaders/sa-initiatives/-/issues">Solutions Architecture Initiatives issue tracker</a> for more information on the crowd sourced OKRs that are in progress and the development of our [Communities of Practice](https://about.gitlab.com/handbook/customer-success/initiatives/communities-of-practice.html).

### Projects and Code Repositories

These are the projects that make the Demo Systems possible behind the scenes. You are welcome to study and learn from any of our source code. Each project is classified as `Public` or `Private` depenending on the security risk of the source code or information contained within.

* `Private` [Demo and Training Cloud v1](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure)
    * `Private` [demosys-terraform](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-terraform) - Terraform configuration for demo systems infrastructure. Not for end users.
    * `Private` [demosys-ansible](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-ansible) - Ansible configuration for demo systems infrastructure.
    * `Private` [demosys-portal (gitlabdemo.com)](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-portal) - Full stack application for demo reservation management.
    * `Private` [demosys-gitlab-managed-apps](https://gitlab.com/gitlab-com/customer-success/demo-systems/infrastructure/demosys-gitlab-managed-apps)
* `Public` [Demo Cloud v2](https://gitlab.com/gitlab-com/demo-systems/demo-cloud)
    * Respositories WIP
* `Public` [Training Cloud v2](https://gitlab.com/gitlab-com/demo-systems/training-cloud)
    * Repositories WIP
* [Sandbox Cloud / HackyStack](https://gitlab.com/gitlab-com/sandbox-cloud)
    * `Public` [HackyStack Portal - Open Source](https://gitlab.com/hackystack/hackystack-portal)
    * `Public` [HackyStack Portal - GitLab Inc Clone](https://gitlab.com/gitlab-com/sandbox-cloud/apps-tools/hackystack-portal)
    * `Public` [Terraform Modules](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules)
        * [Google Cloud Platform (GCP)](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules/gcp)
            * [Google Compute Engine (GCE)](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules/gcp/gce)
                * [Compute Instance Terraform Module](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules/gcp/gce/gcp-compute-instance-tf-module)
            * [Google Kubernetes Engine (GKE)](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules/gcp/gke)
                * [GKE Sandbox Cluster Terraform Module](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules/gcp/gke/gke-sandbox-cluster-tf-module)
                * [GKE Production Cluster Terraform Module](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules/gcp/gke/gke-production-cluster-tf-module)
        * [Amazon Web Services (AWS)](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules/aws)
            * Modules WIP
    * `Public` [Ansible Roles](https://gitlab.com/gitlab-com/sandbox-cloud/ansible-roles)
    * `Private - Ops` [GCP HackyStack Portal Production - Terraform (gitlabsandbox.cloud)](https://ops.gitlab.net/cloud-realms/master-account/gcp/gcp-hackystack-portal-prd-tf)
    * `Private - Ops` [GCP HackyStack Portal Production - Ansible (gitlabsandbox.cloud)](https://ops.gitlab.net/cloud-realms/master-account/gcp/gcp-hackystack-portal-prd-ansible)
    * `Private - Ops` [GCP sandbox Cloud DNS - Terraform (gitlabsandbox.cloud)](https://ops.gitlab.net/cloud-realms/master-account/gcp/gcp-sandbox-cloud-dns-tf)
    * `Private - Ops` [Cloud Realms Runbook Docs](https://ops.gitlab.net/cloud-realms/apps-tools/runbook-docs)
* Issue Trackers
    * [Demo Systems](https://gitlab.com/gitlab-com/demo-systems/issue-tracker)
    * [Sandbox Cloud](https://gitlab.com/gitlab-com/sandbox-cloud/issue-tracking)

### Infrastructure

* [GitLab Sandbox Cloud](https://about.gitlab.com/handbook/infrastructure-standards/realms/sandbox/)
* [GitLab Infrastructure Standards](https://about.gitlab.com/handbook/infrastructure-standards/)
* [GitLab Infrastructure Standards - Labels and Tags](https://about.gitlab.com/handbook/infrastructure-standards/labels-tags/)
* [Demo Systems Infrastructure-as-Code - Ansible](/handbook/customer-success/demo-systems/infrastructure/ansible)
* [Demo Systems Infrastructure-as-Code - Terraform](/handbook/customer-success/demo-systems/infrastructure/terraform)
* [Demo Systems Kubernetes Architecture Docs](/handbook/customer-success/demo-systems/infrastructure/kubernetes)
* [Demo Systems Network Architecture and Subnet Docs](/handbook/customer-success/demo-systems/infrastructure/networking)

### Help and Support

We use Slack for real-time support and quick fixes. If in doubt of how to get help, ask in `#demo-systems`. The issue trackers are used for tasks and projects that take longer than 30 minutes. We do not use email for internal team communications.

* [How we work](/handbook/customer-success/demo-systems/how-we-work)
* [Demo Systems Issue Tracker](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues)
* [Sandbox Cloud Issue Tracker](https://gitlab.com/gitlab-com/sandbox-cloud/issue-tracking/-/issues)
* `#demo-systems` Slack channel (for Demo Cloud announcements, questions, and technical support with Demo Cloud)
* `#demo-systems-workshops-noram` Slack channel (for workshop support in North America)
* `#demo-systems-workshops-emea` Slack channel (for workshop support in Europe and surrounding regions)
* `#demo-systems-workshops-apac` Slack channel (for workshop support in Asia, Australia and surrounding regions)
* `#sandbox-cloud` Slack channel (for Sandbox Cloud announcements)
* `#sandbox-cloud-questions` Slack channel (for Sandbox Cloud questions and technical support)
* `demo-systems-admin@gitlab.com` (for GitLab community members)

