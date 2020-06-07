---
layout: handbook-page-toc
title: "CICD Pipeline for GitLab.com"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


# Idea/Problem Statement

Release managers initiate deploys manually from the commandline using takeoff.
The current process is that we build a release candidate or official build and
it is deployed to three different stages in sequence:

- Staging
- Production Canary Stage
- Production Main Stage

For each stage, developers run manual tests and GitLab-QA.
If there are no errors reported and manual tests pass, the release
continues to the next stage.

Below is a timeline of the 10.3 release to production.
From this, it is clear that we deploy at different intervals and not all release candidates make it to
production. In some cases, problems are not observed until we see a large
amount of production traffic which requires patching production or rolling back
the release.

## Release timeline of 10.3

_Staging and canary deployments omitted_

- RC1: Sept 3rd
- RC2: Sept 5th
- RC3: Sept 6th
- RC4: Sept 7th
- RC6: Sept 11th
- RC8: Sept 17th
- RC9: Sept 18th
- RC10: Sept 19th
- RC11: Sept 20th
- 10.3: Sept 22nd

## Current shortcomings

There are a number of shortcomings to the current release process:

* Release managing is time intensive because deploying to staging, canary and
  production is initiated manually.
* Large sets of changes see production traffic at once sometimes making it
  difficult to pinpoint what changes are causing issues.
* The staging environment is useful for GitLab-QA and manual testing, but does
  not receive any continuous traffic which can make it difficult to spot performance
  regressions before release candidates land on production.

# Design

The goal of this design proposal is a replacement for
deploying RCs manually to each deployment stage at predefined intervals.
A CICD pipeline is constructed that continuously deploys nightly builds to canary.

Once the deployment of the nightly builds to canary is complete, the canary fleet receives a small
percentage of production traffic, and it is then promoted to GitLab.com.

## Goals

The goals of this design are incremental and align with the [CICD blueprint](/handbook/engineering/infrastructure/blueprint/ci-cd/):

* Use a GitLab CICD for deployments from [https://ops.gitlab.net](https://ops.gitlab.net) that can be
  driven with GitLab ChatOps while also ensuring that there are no CICD or tooling dependencies
  on GitLab.com
* Deploy nightly builds to the production canary stage in a CICD pipeline.
* Create CICD stages that validate each deploy step, these steps include:
    * running GitLab-QA tests
    * check for alerts on the stage
* With a set of runners, run traffic on the staging and production canary stage.
* Report pipeline metrics to prometheus with a push gateway.
* Initiate database migrations on production for every deployment to the
  production canary stage.
* Promote nightly builds from canary to production, or push the official
  build through the pipeline for the self-managed omnibus release on the 22nd.

### Tasks

Below are a draft set of issues that would be in the epic for implementing this
design

#### Issues that are defined or in progress

* [Automation for deployments driven from GitLab ChatOps](https://GitLab.com/GitLab.com/gl-infra/infrastructure/issues/4739)
* [Drain and remove instances in batches from haproxy before operating on them](https://GitLab.com/gitlab-org/takeoff/issues/89)
* [canary.GitLab.com should use the corresponding backends for api/git traffic](https://GitLab.com/GitLab.com/gl-infra/infrastructure/issues/5232)
* [Create an internal api endpoint for canary](https://GitLab.com/GitLab.com/gl-infra/infrastructure/issues/5136)

#### Issues that need scoping

* A process for rolling back a single stage update or an entire release from production.
* [Create a canary sidekiq cluster](https://GitLab.com/GitLab.com/gl-infra/infrastructure/issues/5137)
* Create deployments for internal consumption: This is necessary to quickly
  release undisclosed security updates to GitLab.com.
* Continuous traffic against canary and staging
* Fast patches/releases to production to address high severity
  issues like security vulnerabilities or site degradation.
* Initiate the promotion of canary to production from GitLab, possibly with ChatOps
* Add alert checking to the CICD pipeline
* Add GitLab-QA to pipeline stages
* Report metrics from the CICD pipeline to the prometheus pushgateway
* GitLab ChatOps command to control weights on the canary stage, this controls how much
  traffic is directed to it.

### Criticism: Design anti-goals, what this doesn't cover

GitLab.com should be moving in a direction that utilizes a container deployment
strategy and dogfoods the cloud native product we are creating for customers. 
This design is meant to be compatible with the omnibus methods of installation
and does not include a container migration strategy, although it should be considered as 
a next step in that direction.

Overall, this design proposal focuses on work that is an
incremental change on our current infrastructure and process. 
Any work done in line with this proposal will be weighed against 
the goal of container based deployments and such work will be prioritised.


Specifically this design does not require any of the following:

* Removing the omnibus package as a deploy dependency
* Migrating services to kubernetes or using kubernetes for deployment orchestration
* Using pre-built images and auto-scaling
* Blue/Green deployments outside of what is currently capable with [canary](/handbook/engineering/infrastructure/design/canary/)

It does not preclude these items, but allows for a transition from using
non-container deploys.

This design does however make some improvements that will be helpful with the
longer term goals of creating pipeline(s) for continuous container deployments,
these are:

* Instrumenting CICD for checks against active alerts
* Instrumenting CICD that incorporates GitLab-QA
* Adding generated traffic to the non-production stages and production canary
  stage.
* Start integrating with ChatOps for deployments
* Smaller changes that automatically deployed up to canary, for internal use.
* Automatic migrations daily, resulting in more frequent and smaller database
  updates.


## Rollbacks and Patching

In order to safely deploy continuously to canary there also needs to be a way to
safely rollback and deliver fast patch updates. This design proposes three different approaches:

* Rollbacks to environments that deploy in reverse order on a deployment
  stage:  Rollbacks that are repeatable, safe and have the same impact as
  upgrades.
* Fast updates to environments:  In some circumstances expedience trumps
  availability. Updates may need to be
  applied quickly for when there are critical security vulnerabilities or
  serious performance degradation.  The update should be applied fast,
  and with minimal impact, but may result in some errors or dropped connections.
* Fast rollbacks to production: In the case of a serious release regression
  an environment may also need to be rolled back quickly. The rollback should
  be applied fast and with minimal impact, but may result in some
  errors or dropped connections.

## Testing

Testing will be an integral part of the deploy pipeline. For this reason,
included in the scope of this design is testing at every deploy step. The choice for this
testing will be to use a combination of GitLab-QA acting as a gate for pipeline
stages, and continuous traffic on non-production stages and the production
canary stage.  This allows us to use our existing alerting infrastructure on the
staging and canary stages so that regressions can be spotted early, before the
changes reach production. Each CICD step will have the ability to check for outstanding alerts before
continuing to the next stage.


### Generating artificial load on the non-production stages

In order to ensure that we can detect performance regressions it will be useful
to generate artificial load. This design does not go into the details of
how this is implemented, some proposals so far have been:

* Using siege for scraping predefined set endpoints
* Using a subset of GitLab-QA tests in a fleet of runners, running continuously
* [Large staging collider](https://gitlab.com/gitlab-com/large-staging-collider)
  for generating load.

## Architecture

### Current deployments

A deployment orchestration tool is necessary that can
drain servers from HAProxy, run apt installs of the omnibus package, and
restart/hup services after install. Currently this is done with
[takeoff](https://GitLab.com/gitlab-org/takeoff).


The current sequence of deployment to an environment is:

- Stop chef 
- Update the version role in Chef for the environment we are deploying to
- Deploy the omnibus to the deploy node
- Run migrations on the deploy node
- Deploy to gitaly (apt-get install gitlab-ee and restarts the restarts gitaly)
- Deploy to the rest of the fleet
    - parallel by role, done currently, apt-get install gitlab-ee and restarts the corresponding service
- Start chef


### Post-deployment patches

In addition to the normal release process of omnibus builds the production team
employs post-deployment patches, a way to quickly patch production for high
severity bugs or security fixes. 

Post-deployment patches bypass validation and exist outside of the normal
release process. The reason for this is to quickly
deploy a change for a critical security fix, a high severity bug, or to mitigate
a performance issue. The assumption is that once a post-deployment patch is
deployed, changes deployed to canary will be halted until the
patch(es) are incorporated into an omnibus-build.

### CICD Design

The CICD approach for omnibus is divided into two pipelines. One that
continuously deploys to canary using a nightly build and another
for deploying from canary to the rest of the fleet.

At any time during the deployment, if GitLab-QA fails or if there are any alerts the pipeline
is halted.

The second pipeline may be initiated automatically, or on-demand, when there is
confidence in the nightly build on canary.

Production traffic to canary is controlled with GitLab ChatOps by setting the
server weights. This allows us to at any time increase the amount of production
traffic on canary to have more confidence in application changes before it
reaches the wider community.

### Pipeline Diagram

![Azure Canary](img/cicd-omnibus.png)

#### Deployment stages to Canary

* Stage 1: Migrations on staging
    * Check for outstanding alerts on staging, do not start if there are any
      critical alerts active.
    * Run migrations from a deploy host
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, continue to the next
      stage.
* Stage 2: Deploy to staging Gitaly
    * Deploy to the Gitaly fleet.
    * Run GitLab-QA against staging.GitLab.com
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, continue to the next
      stage.
* Stage 3: Deploy to the staging fleet
    * Deploy to the remaining fleet, nodes are drained and removed from the load
      balancer as they are deployed.
    * Run GitLab-QA against staging.GitLab.com.
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, continue to the next
      stage.
* Stage 4: run post-deployment migrations on staging
    * Run post-deployment migrations
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, continue to the next
      stage.
* Stage 5: Migrations on production
    * Check for outstanding alerts on production, do not start if there are any
      critical alerts active.
    * Run migrations from a deploy host
    * Run GitLab-QA against GitLab.com.
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, continue to the next
      stage.
* Stage 6: Deploy to the production canary fleet
    * Ensures that there is no production traffic diverted to the canary fleet
      by setting the canary weights to zero.
    * Deploy to the canaries. While we operate on each node it is drained and removed from the
      load balancer.
    * Run GitLab-QA against canary.GitLab.com.
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, pass the pipeline.

------

#### Deployment stages from Canary to Production

* Stage 7: Deploy to the production Gitaly fleet
    * Check for outstanding alerts on production, do not start if there are any
      critical alerts active.
    * Using backend server weights, divert some production traffic to canary.
    * Check for outstanding alerts on production, do not start if there are any
      critical alerts active.
    * Deploy the version on canary to the production Gitaly server
    * Run GitLab-QA against GitLab.com.
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, continue to the next
      stage.
* Stage 8: Deploy the remaining production fleet
    * Check for outstanding alerts
    * Deploy to the remaining production fleet, nodes are drained and removed from the load
      balancer as they are deployed.
    * Run GitLab-QA against GitLab.com.
    * Check for outstanding alerts
    * If there are no alerts after an interval of time, continue to the next
* Stage 9: Run post-deployment migrations
    * Check for outstanding alerts
    * Run post-deployment migrations
