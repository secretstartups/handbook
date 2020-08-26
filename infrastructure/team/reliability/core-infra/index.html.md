---
layout: handbook-page-toc
title: "Core Infra Team"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Who We Are

The Core Infra teams owns:
* core infrastructure tooling like:
  * [Terraform](https://gitlab.com/gitlab-com/gitlab-com-infrastructure)
  * [Chef](/handbook/engineering/infrastructure/production/architecture/#chef-architecture)
* network ingress/egress
  * [Networking](/handbook/engineering/infrastructure/production/architecture/#internal-networking-scheme)
* CDNs and DNS (/handbook/engineering/infrastructure/production/architecture/#dns--waf)
* [Secrets management](/handbook/engineering/infrastructure/production/architecture/#secrets-management) 
* Helping with Growth Stage assets like customers, license, and version.


Core Infra is:

| Person | Role |
| ------ | ------ |
|[David Smith](/company/team/#dawsmith)|[Engineering Manager, Reliability](/job-families/engineering/engineering-management-infrastructure/#engineering-manager-reliability)|
|[Alex Hanselka](/company/team/#ahanselka)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Devin Sylva](/company/team/#devin)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Craig Barrett](/company/team/#craig)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Cameron S McFarland](/company/team/#cmcfarland)|[Senior Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Hendrik Meyer](/company/team/#T4cC0re)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|
|[Graeme Gillies](/company/team/#ggillies)|[Site Reliability Engineer](/job-families/engineering/site-reliability-engineer/)|

## Tenets
Our guiding principles center around implementing [boring solutions](https://about.gitlab.com/handbook/values/#boring-solutions) to infrastructure problems. We work to simplify interfaces and build robust workflows for other engineers within GitLab who utilize our platform to provide support for and deliver new features to the gitlab.com SaaS product. Over time this continues to expand to include additional/related applications, sites, and systems.

In practice, this means that we 
1. Manage all infrastructure resources via Infrastructure as Code or auditing tools
    * GCP [by Terraform](https://ops.gitlab.net/gitlab-com/gitlab-com-infrastructure)
    * Cloudflare / CDN [audited by a tool](https://ops.gitlab.net/gitlab-com/gl-infra/cloudflare-audit-log)
1. Develop automated workflows ensuring consistency, repeatability, predictability, and reliability
1. [Use GitLab to deploy and manage our infrastructure](https://about.gitlab.com/handbook/values/#dogfooding)
1. [Maintain a user-centric focus](https://about.gitlab.com/handbook/values/#customer-results), and [enable self-service functionality](https://about.gitlab.com/handbook/values/#self-service-and-self-learning) whenever possible
1. Work with other SRE teams to ensure common principles are upheld and services are maintained according to our [production readiness standards](https://gitlab.com/gitlab-com/gl-infra/readiness)
1. [Focus on small changes](https://about.gitlab.com/handbook/values/#iteration) and [embrace experimentation](https://about.gitlab.com/handbook/values/#accepting-uncertainty)


## Vision
* Move all Growth Stage apps to AutoDevops
* Help with moving compute to GKE
  * Smaller Chef footprint
  * More Autoscaling 
  * Secure and setup best practices for GKE cluster
* Create tools and processes for external teams to service requests themselves


## How we work:

#### Sprint Level
* We use a [Kanban board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688496?milestone_title=%23started&label_name[]=team%3A%3ACore-Infra) to track work
* If you assign yourself to an issue, it goes in the Milestone, gets the team::CoreInfra label and then goes on the Board.
* We use a Geekbot standup daily to talk about what we are working on
* We do Core-Infra team retros monthly async via Geekbot put into the #sre_coreinfra channel

#### Planning / What's next?
* When external asks come in:
  * they can be commented on, but get a Workflow-Infra::triage Label to start
  * When added to the board, the should get labels ~unplanned, AssistType::x and AssistingTeam::x
* Planning: 
  * we have a [team radar](https://docs.google.com/drawings/d/1ohzs3lFCEGTDTg-cO0HNKvVHz1MCSIT54yAj4rr8gMc/edit).
  * The radar is not a roadmap, it is meant to be a guide of themes we are working on now and that we think we will be working on soon.
