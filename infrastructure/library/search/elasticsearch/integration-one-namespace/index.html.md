---
layout: handbook-page-toc
title: "Blueprint :: [Elasticsearch integration for one namespace]"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Idea/Problem Statement

Problem:
- we need to enable Elasticsearch integration for one namespace.

Why:
- run Elasticsearch integration and Gitlab's [new indexer](https://gitlab.com/gitlab-org/gitlab-elasticsearch-indexer/tree/master) at scale to identify problems (unknown unknowns)
- optimize index size (figure out why the index is so big and how it can be optimized). Testing is already being done using clusters spinned up locally. With a cluster in prod, engineers will be able to change indexer code and see what impact that has on the index size (using a real life dataset).

Scope:
- provide a cluster for one namespace

## Summary of past efforts ##

see [elastic at gitlab blueprint](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/23545)

## Outline of options ##

At the moment of writing we do not have self-managed ES clusters, we only use Elastic Cloud. We use it for logs on `gitlab.com` and indexing on `ops.gitlab.net`. We could use it for indexing `staging.gitlab.com` and `gitlab.com` in the exact same way as it is used for `ops.gitlab.net`.

## Additional considerations ##

### Dependencies ###

fixes to a number of bugs, e.g. [search using elastic integration even when disabled](https://gitlab.com/gitlab-org/gitlab-ee/issues/11795)

### Related blueprints or designs ###

[design doc for this blueprint](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/21352/diffs)

[elastic at gitlab blueprint](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/23545)

### Costs ###

#### Total ####

total: ~1100USD/month

#### Production ####

prod spec:
- ES data memory 16 GB
- ES data storage 480 GB
- Total memory 18.5 GB
- Total storage 485 GB

cost estimate
- hourly rate $0.6107
- Monthly rate $445.81

#### Production monitoring ####

prod monitoring spec:
- ES data memory 4 GB
- ES data storage 120 GB
- Total memory 6.5 GB
- Total storage 125 GB

cost estimate
- hourly rate $0.2147
- Monthly rate $156.73

#### Staging ####

stg spec:
- ES data memory 16 GB
- ES data storage 480 GB
- Total memory 18.5 GB
- Total storage 485 GB

cost estimate:
- Hourly rate $0.6107
- Monthly rate$445.81

#### Staging monitoring ####

stg monitoring spec:
- ES data memory 4 GB
- ES data storage 120 GB
- Total memory 5.5 GB
- Total storage 123 GB

cost estimate
- hourly rate $0.1569
- Monthly rate $114.54

### Security ###

Are we going to store sensitive customer data? yes, see [this dicussion](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6587#note_164139329) for the security review

Do we trust our SaaS provider to secure the OS and the service? yes, we already trust them with our application logs.

## Recommendations ##

Considering the time scale, for a single namespace we should continue using Elastic Cloud.

We should start evaluating our options for having ES clusters that will be able to handle hundreds of TB of data (which is not within the scope of this KR).
