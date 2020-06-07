---
layout: markdown_page
title: "Design :: Ephemeral Environments"
---

## On this page
{:.no_toc}

- TOC
{:toc}

Issue: [`gitlab-com/gl-infra/infrastructure#5285`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5285)

## Idea/Problem Statement

The current infrastructure is based around having a single production environment, and a single staging envrionment. All testing of automation and processes happens in staging and if it works, it is pushed to production (or canary).  Outside of that, there is no easy way to test an experimental branch, other than doing it on a workstation. 

Also, this leads to the best way to keep the site stable being to not touch it.  The cloud native way is to regularly destroy and rebuild nodes with very little reason, and trust that the automation will make the transition seamless.  There is no place to develop this automation if we only have two environments which can't be destroyed while people are using them.

In order to keep the staging and production environments from diverging from what is in the git repository, we have to deploy directly from CI/CD every time.  There can be no running of scripts from a workstation and then optionally checking the scripts in to the repo once trial and error is finished.  Using CI/CD will keep the repo in sync with the environment, but it will require that all trial and error wait for a full deploy pipeline to finish before the next attempt.

Ephemeral Environments provides a repeatable way to build a consistent environment for any purpose.  They can be used as CI/CD targets for branches, to test them before they are merged into the master or staging branches.  They can be spun up to test terraform or other automation before it is checked in to run the CI/CD pipeline.  It can be brought up and loaded with sanitized data to give the database team a full environment to test changes with no risk.

Environments can be used similarly to [Review apps](https://docs.gitlab.com/ee/ci/review_apps/), but for infrastructure purposes rather than application testing.

## Design

Environments share common requirements, but will all need different attributes as far as size, data, duribility, and features needed.  Kubernetes can address many of these concerns, but the current design requires separate instances for the persistent data (git, postgres, redis).

An Environment includes at minimum, a Kubernetes cluster with optional additional database and redis nodes. The database and Redis can also be instantiated inside of kubernetes if data requirements are small. Flags are used to control which of these requirements are provisioned.

Data is assumed to be minimal.  By default, a minimal set of data is loaded to allow testing a branch. Once the environment is up, a database dump and additional files can be loaded to simulate running at scale.

An environment is created by a CI/CD pipeline [when a new branch is created](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5276), and is destroyed when that branch is deleted and/or merged.  For the production and staging environments, this only happens once. The environments created by other branches are treated as ephemral, like review apps, and can come and go at any time.

CI/CD pipelines take advantage of the [Environments and Deployments](https://docs.gitlab.com/ee/ci/environments.html) features of GitLab. This provides an authoritative central list of currently running environments, as well as a standard GUI for stopping, starting and removing them.

### Implementation Considerations

The [GitLab Helm Charts](https://gitlab.com/charts/gitlab) are under heavy development and it is likely that they will become a first class, supported distribution.  This design assumes that all application deployments and updates will be done using the helm charts.  The scope of this document is to provide a consistent environment for them to run.

#### Testing

This solution will run as part of a CI/CD pipeline.  Any tests should also run as part of these pipelines.  A successful pipeline should end in a running instance, so the final step in the pipeline should be a check to make sure the instance is running and responding on the check URL.

Additional sanity checks must happen before pushes are allowed.

1. `terraform validate` is run on all terraform code
1. `terraform fmt` is run on all terraform code
1. [Push rules](https://docs.gitlab.com/ee/push_rules/push_rules.html) are used to validate branch and tag names

#### GitLab.com and Self-managed

Current infrastructure automation is extremely focused on GitLab.com's production instance. By making the tooling more generic in order to accomodate different types of deployments, it becomes more useful for self-managed customers to adapt to their own needs.

### Operational Considerations

#### Automation

Automation consists of terraform scripts run from a `.gitlab-ci.yml` file. The scripts build the kubernetes cluster and any optional database and redis VM's. 

- Starts the kubernetes cluster
- Sets up the GKMS key ring
- Set up helm
- Provision consul and prometheus
- Deploy pets (redis, postgres)
- At this point the process can either end, or load the [GitLab Helm Charts](https://gitlab.com/charts/gitlab)
- If charts are loaded, call the check URL to verify success

####  Monitoring

Each environment will have different monitoring requirements. Production will be tied in with operations tools, where a simple branch to test a function may not need any monitoring beyond the deploy pipeline success.

### Additional Considerations

Deletion of environments should be treated with as much care as creation. Leaving artifacts around after the environment is removed will cause confusion and waste resources.

- Branch environments should be deleted when their branch is removed or merged
- The code that automates deletion needs code that prevents it from ever running on produciton and staging

### Alternatives

Keeping the current design is an option.  

There is a design document for orchestrating [Omnibus with CICD](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/15323)