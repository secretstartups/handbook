---
layout: handbook-page-toc
title: "Canary"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Release documentation: https://gitlab.com/gitlab-org/release/docs/blob/master/general/deploy/canary.md

## Overview

At GitLab, the Infrastructure Department makes use of a “canary stage” which is the final deploy step before changes are released to production.

## Canary Configuration

The following are goals of the canary stage for GitLab.com:

* Share configuration between the https://GitLab.com and the canary stage to avoid configuration drift and achieve parity between the two environments.
* Perform database migrations prior to deploying to canary. Post deployment migrations will be completed after the application is fully deployed to GitLab.com.
* Allow a small percentage of load balanced traffic to reach the canary web and git fleet.
* Control the amount of traffic that is sent to canary with GitLab Chatops so it can easily be turned off and on.
* Use the prometheus labels `stage=cny` and `stage=main` to identify the canary fleet and the main fleet that receives traffic for the environment.

### Configuration and Deployment

To avoid configuration drift between staging and production, there is a common topology between them. The canary stage infrastructure for the staging environment is not provisioned normally to reduce cost.

Configuration of Canary has the following goals in mind:

1. Ensuring that the majority of Chef, Terraform, and pinned Chef cookbook versions are shared between the Canary node and other nodes that receive the same type of traffic.
1. Using HAProxy weights, configure a default weighting of zero for the canary node that can be overridden using GitLab Chatops or command line scripts.
1. Run migrations on Canary for every deployment. Database migrations are implemented to be backwards compatible so prior to deploying to the canary stage, they are executed although the majority of production traffic is being handled by nodes at the previous version of the GitLab application.

### CDN and content Content-Security-Policy

Both the main and canary stage of the production and staging environment share the same CDN and content-security-policy.

### Web, Git and API backend weighting

For the api, web and git fleet we will use backend weighting.  Below is the configuration change that we will add to the haproxy config, the bolded sections for the added weighting:

By default a weight of zero will be configured for the canary nodes, using GitLab chatops we can then control how much traffic is sent to the canary. For more information see the [canary release docs](https://gitlab.com/gitlab-org/release/docs/blob/master/general/deploy/canary.md).
