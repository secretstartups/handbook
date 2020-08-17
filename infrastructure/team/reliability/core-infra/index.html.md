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


## Vision
* WIP - links to epics to be added
* Move all Growth Stage apps to AutoDevops
* Help with moving compute to GKE
  * Smaller Chef footprint
  * More Autoscaling 
  * Secure and setup best practices for GKE cluster


## Tenets
* WIP
* All Cloud Infra is 
  * Managed by Terraform
  * Automation for applying Terraform from GitLab CI
* Working with GKE and Vault is
  * easy for Infrastructure team members
  * secured following recommended best practices
* Tools exist for external teams to service requests themselves

