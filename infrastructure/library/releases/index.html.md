---
layout: handbook-page-toc
title: "GitLab Releases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Epics: [`gitlab-org/release/epics`](https://gitlab.com/groups/gitlab-org/release/-/epics/)

# Introduction

This document is part of overall [engineering release workflow](/handbook/engineering/infrastructure/blueprint/engineering-workflows/).

# Process overviews

## Terminology

Going forward, patch release (MAJOR.MINOR.X) would describe release that is being created as a follow up
to a set of releases made in the run-up to the 22nd of the month (MAJOR.MINOR.0).
All RC and final MAJOR.MINOR.0 will be referred to as releases.

See also [terminology overview](/handbook/engineering/infrastructure/blueprint/engineering-workflows/#terminology).

## Current release processes

Releases are a mix of manual tasks driven through a checklist and automated processes
to create release artifact and deploy to GitLab.com environments.

The process can be broken down into:

* A snapshot of a `master` branch is created and
named `stable` branch in GitLab Rails Community Edition repository. The stable branches are created when the release process starts
* The same is done for GitLab Rails Enterprise Edition repository
* These two repositories keep `master` branch in sync with an automated CE to EE merge job
  * The job runs every hour and creates a MR in EE repository
  * If the MR has no conflicts, CI runs the pipeline and if that is successful, MR is merged
  * If the MR has conflicts, it is assigned to a developer and the MR waits for conflict resolution and merge
  * This delay is dependent on how fast the conflict is resolved and can take anything from one hour to days
* Manual action to merge `master` into `stable` branches multiple times until the code freeze
* Before proceeding with further tasks, CI pipelines run and need to be green. The pipelines runtime is
between 40 and 80 minutes in case there are no failures
* When ready to proceed, an automated task is ran manually which triggers new CI pipelines. They will:
  * Sync all remotes mirrors of all projects
  * Release-tools project will read all `*_VERSION` files located in GitLab Rails repository and update
  the omnibus-gitlab repository
  * Create tags for version that is being released, in GitLab Rails (CE/EE) and the omnibus-gitlab repositories
  * Trigger pipelines in the omnibus-gitlab project which builds all supported packages
  * This build lasts between 30 and 60 minutes after which the package is pushed to a private package repository
* Once packages are built, deployment to staging environment is done using the `takeoff` tool. This tool will
trigger the package installation, followed by configuring and restarting services based on a set of rules
* Staging deployment creates an issue that mentions developers, with a set deadline to manually test changes in this environment
* Unless something is discovered during this stage, manual deployments proceed to canary and production environments

The release turnaround time varies between 12 and 24 hours. In cases where an issue is discovered during any of the
mentioned steps, we can have days of delay before the change is applied to environments.
This overview does not include situations when GitLab environments require an urgent hot-patch, or security patch.

Few conclusions can be drawn from the above:

* Release process is very time consuming
* It requires (almost) constant supervision
* Impact to GitLab.com is high

## Proposal

To address the process above without starting from scratch, we should be looking into
a plan that would remove most of the manual work first, and open up more time
for us to work on the next step.

### Immediate step

As an immediate step, we need to remove the need for most manual actions.
Engineers tasked with release should only need to trigger the start of the process,
and then have control over deployments that are user facing.

To do this, we need to leverage GitLab as a tool together with ChatOps.

Release would look as follows:

1. Release is started by using a ChatOps command
1. Command creates a pipeline that runs the following:
  1. Automatically creates the preparation MR for stable branches
  1. Automatically merges the MR if pipeline passed; If pipeline fails, pings the person that triggered the command
  1. Continues with syncing all remotes
  1. Creates and pushes tags to required projects
  1. Pipelines in the omnibus-gitlab create the package used for deploying to GitLab.com environments and push to a package repository; If pipeline fails, pings the person that triggered the command
  1. Queries the package server for availability of the package and automatically deploys to the staging server
  1. Creates the QA issue
    1. Pings the person that triggered the command to inform that canary and production can be deployed
1. Deployment can be done from the same pipeline as manual action

### Follow up

Once the above is achieved, we will expand on each of the steps.

Few items worth considering:

1. Collecting and displaying metrics related to release
1. Full test suite runtime in GitLab product projects need to complete in maximum 30 of minutes
1. CE to EE merges need to be automatically merged in 95% of the cases, requiring manual intervention in rest
1. Package build needs to complete in maximum of 30 minutes
1. Deployments on staging needs to be done within 5 minutes from package being available
1. Deployment on staging needs fully deployed in maximum of 20 minutes. At first this time target should exclude the database migrations, and later expanded to include them
1. Infrastructure needs to support items as defined in [CICD Pipeline on GitLab.com](/handbook/engineering/infrastructure/design/cicd-pipeline/)
