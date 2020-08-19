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
* [secrets management](/handbook/engineering/infrastructure/production/architecture/#secrets-management) 
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


## Vision -- WIP
* Move all Growth Stage apps to AutoDevops
* Help with moving compute to GKE
  * Smaller Chef footprint
  * More Autoscaling 
  * Secure and setup best practices for GKE cluster
* Create tools and processes for external teams to service requests themselves


## Tenets -- WIP
* All Cloud Infra is 
  * Managed by Terraform
  * Automation for applying Terraform from GitLab CI
* Working with GKE and Vault is
  * easy for Infrastructure team members
  * secured following recommended best practices
* If you assign yourself to an issue, it goes in the Milestone, gets the team::CoreInfra label and then goes on the Board.

## How we work:
* We use a [Kanban board](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1688496?milestone_title=%23started&label_name[]=team%3A%3ACore-Infra) to track work
* We use a Geekbot standup daily to talk about what we are working on
* We do Core-Infra team retros monthly async via Geekbot put into the #sre_coreinfra channel
* When external asks come in:
  * they can be commented on, but get a Workflow-Infra::triage Label to start
  * When added to the board, the should get labels ~unplanned, AssistType::x and AssistingTeam::x
* Planning: 
  * we have a [team radar](https://docs.google.com/drawings/d/1ohzs3lFCEGTDTg-cO0HNKvVHz1MCSIT54yAj4rr8gMc/edit).
  * The radar is not a roadmap, it is meant to be a guide of themes we are working on now and that we think we will be working on soon.
