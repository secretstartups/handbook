---
layout: handbook-page-toc
title: "Infrastructure Git Workflow"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Issue: [`gitlab-com/gl-infra/infrastructure#5276`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5276)

## Idea/Problem Statement

In order for CI/CD to automatically deploy the GitLab.com application and infrastructure to staging and production environments, there need to be controls in place to ensure that every state change is recorded, repeatable, and reversible.  Luckily `git` gives us all of the tools that we need, if we design our workflow sensibly.

The problems that we need to solve are:

- Everything needs to be tested in staging (and possibly again in canary) before being deployed to production
- What is deployed in production must be exactly what was tested in staging, with no possibility of exceptions
- Any change to production must be easily reversible to a known prior state
- It must be easy to test changes which are not yet ready to be evaluated in staging


## Design

This design is similar to [Environment branches with GitLab flow](https://docs.gitlab.com/ee/workflow/gitlab_flow.html#environment-branches-with-gitlab-flow).
![GitLab Flow](https://docs.gitlab.com/ee/workflow/environment_branches.png)

In the proposed design, `master` refers to the branch running in the staging environment, and `production` refers to the stable branch containing a tagged snapshot of `master`.

This model can be used for infrastructure (terraform/chef) changes, as well as application changes.  The workflow should be usable both for omnibus and kubernetes deployments of the application.

- `master` is always deployable, and is deployed automatically to staging on each merge.
- Merge requests from feature and issue branches  ALL target the `master` branch - never `production`
- The `master` branch is tagged when a version is judged to be ready for production.
- This tag (repeatable state) is used to create an MR targeting the `production` branch
- Rollbacks to the immediate prior version consists of creating a new merge request for the previous tag, targeting the `production` branch. For rollbacks to earlier versions, we use `git revert` or create a new incremented version with the necessary changes to correct/revert the problematic change.
- Hotfixes are implemented as branches based on the tag which is in production. This branch is changed and tagged *in the hotfix branch* before being merged to `production`. That way the tag doesn't include any subsequent work and can be deployed to `production` cleanly.
- Changes which are not ready for staging remain in feature branches, and are tested in ephemeral environments.


### Operational Considerations

- `master` and `production` are protected branches
- `production` has the most restrictive permissions
- Tags are never overwritten. Patches are a version bump to an existing tag
- Where relevant: containers must not be rebuilt between stages. The container that runs in `master` must be the same container that runs in `production`

#### Automation

CI/CD targets must be set up to deploy to the staging environment for the `master` branch, and the production environment for the `production` branch.

The process of deploying from staging to production should look like this:

```
git checkout production
git pull origin production
git merge master
git push origin production
```

It may be advantageous for the scripting to check and only deploy tagged versions to production.

The canary environment can be treated as a separate branch, or as the target of the CI/CD for `production`, with a manual step to propagate approved tags to production.

####  Monitoring

GitLab Jobs are used to push new tags and merges to `master` and `production`. Alerts are emailed out when these jobs fail.

It may be useful to set up additional alerting.

If possible, we should tag production monitoring tools with the time that each new version becomes active.  This makes it much easier to see which change to the deployed verions caused a change in monitored statistics.

### Additional Considerations

Any configuration files that are checked in to source control need to take into account that they cannot be specific to the production environment. Currently, environments are separated by putting their config files into a separate directory and manually changing to that directory before running the scripts.  Any CI/CD scripts need to take into account which environment the script is running for, and which config files they are using.

### Alternatives

- Creating a branch per environment, and then independently merging feature branches to each environment branch (as described in [ENV branching with Git](
https://www.wearefine.com/mingle/env-branching-with-git/)), does not solve the problem of ensuring repeatable transitions from staging to production. If it's possible for production to get ahead of staging, then it will.
- Nightly builds - should be unnecessary since a build is being created for every change to the `master` branch.
