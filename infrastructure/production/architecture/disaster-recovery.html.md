---
layout: handbook-page-toc
title: "Disaster Recovery Architecture"
---
## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

This page contains the information about the existing Disaster Recovery architectures for GitLab.com environments.

[Disaster Recovery Working Group](/company/team/structure/working-groups/disaster-recovery/) is working on populating this page, and consolidating the information from similar resources currently located in:

1. [Disaster Recovery Product Proposal](/handbook/engineering/infrastructure/product-management/proposals/disaster-recovery/index.html)
1. [Geo Team staging definitions](/handbook/engineering/development/enablement/geo/staging.html)
1. [Disaster Recovery Blueprint](https://gitlab.com/gitlab-com/gl-infra/readiness/-/blob/master/library/disaster-recovery/index.md)


# Environments

We use the following terminology when referencing GitLab architectures:

| Term | Definition  | Discouraged synonym |
| ------ | -------- |------------------- |
| Geo deployment | GCP project, containing two GitLab sites A collection of two or more GitLab sites with exactly one Primary site being replicated by one or more secondary sites. | GCP project |
| Site | One or a collection of nodes running a single GitLab application. A site can be single-node or multi-node | deployment, installation instance |
| Primary site | GitLab instance(es) configured to be read and written to. | Geo deployment, Primary node |
| Single-node site | A specific configuration of GitLab that utilises exactly one node. | single-server, single-instance |
| Multi-node site | A specific configuration of GitLab that utilises more than one node.| multi-server, multi-instance, high availability |
| Secondary site | GitLab instance(es) configured to be read-only.| Geo deployment, Secondary node |

## Staging

Based on the above terminology, the resources in the staging environment are listed below:


| Term | Resource in staging |
| ---- | ------------------- |
| Geo deployment | `gitlab-staging-1` |
| Primary site | `staging.gitlab.com` |
| Secondary site | `geo.staging.gitlab.com`|
| Multi-node site | `NAME` |
| Single-node site | `geo-secondary-01-sv-gstg.c.gitlab-staging-1.internal` |
