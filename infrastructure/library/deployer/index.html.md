---
layout: handbook-page-toc
title: "Deployer"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Issue: [`release/framework/40`](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/40)


## Overview

[Deployer](https://ops.gitlab.net/gitlab-com/gl-infra/deployer)
is a replacement of custom tooling [takeoff](https://gitlab.com/gitlab-org/takeoff) which is
currently used to deploy new versions of the omnibus package to GitLab.com.

### Goals

The current deployment tool [takeoff](https://gitlab.com/gitlab-org/takeoff)
was not originally designed with CICD in mind and is not particularly well suited
for deploying to multiple classes of infrastructure in parallel and displaying
output that's easy to read.


The goal of this project is to create new tooling
that is better suited for orchestrated ssh. This new tooling
will not only provide immediate benefit for deployments but also
provide some common libraries and configuration for performing
maintenance that is driven from CICD.

### Benefits

The immediate benefits from this replacement will be the following:

* Use a standard tool (Ansible) that is designed for ssh orchestration
* Common configuration for patches which will ensure that all
  post-deployment patches are applied on new deployments
* Configurable parallel operation across each individual fleet
* Splitting multiple fleets into separate CICD jobs in multiple stages

### Tooling Reuse

The set of libraries and configuration for this project is also helpful for
general maintenance. One example of this is the 
[registry restarter](https://ops.gitlab.net/gitlab-com/gl-infra/registry-restarter) which
utilizes deploy-tooling to initiate a rolling drain and restart of the registry
service to work around a memory leak.

### Deployment and Post deployment patches

Deployer uses the same set of scripts and configuration as the
[GitLab post-deployment patcher](https://gitlab.com/gitlab-org/release/docs/blob/master/general/deploy/post-deployment-patches.md).

Deployer does this by referencing the [patcher repository](https://ops.gitlab.net/gitlab-com/gl-infra/patcher)
as a submodule for applying post-deployment-patches during deployments. This  ensures that patches are
applied in a way such that new releases will not revert previously applied
post-deployment patches.

* [gl-infra/deployer](https://ops.gitlab.net/gitlab-com/gl-infra/deployer/) is the repository where the CICD configuration is maintained
  for defining the pipeline. It is sourced on https://ops.gitlab.net with a public
  mirror on https://gitlab.com.
* [gl-infra/patcher](https://ops.gitlab.net/gitlab-com/gl-infra/patcher/) is the repository where post-deployment patches live, it is a
  private repo that is sourced on https://ops.gitlab.net
* [gl-infra/deploy-tooling](https://ops.gitlab.net/gitlab-com/gl-infra/deploy-tooling/) is a common repository that is used as a submodule
  for all other repos that require Ansible code. This repository contains the
  plays, plugins and scripts for deployment. It is sourced on
  https://ops.gitlab.net with a public mirror on https://gitlab.com.

![repo-layout](img/1.png)

<details>
<summary>Show mermaid source</summary>

<pre>
graph TD
    subgraph gl-infra/patcher;
    a1[gitlab-ci.yml];
    a2[deploy-tooling submodule];
    end;
    subgraph gl-infra/deployer;
    b1[gitlab-ci.yml];
    b2[deploy-tooling submodule];
    b3[patcher submodule];
    end;
</pre>

</details>

## Deployer CICD pipeline

A new deployment is initiated by starting a pipeline in the [Deployer](https://ops.gitlab.net/gitlab-com/gl-infra/deployer)
project with the following two environment variables set:

* `GITLAB_VERSION`
* `GITLAB_ENV`

The pipeline is designed with continuous deployments in mind, with the
capability of deploying new omnibus packages to the entire fleet through
multiple stages, all the way to production.

![separate-envs](img/2.png)

<details>
<summary>Show mermaid source</summary>

<pre>
graph LR;
    subgraph GITLAB_ENV=gstg;
    a>staging] ==> b>staging QA];
    end;
    subgraph GITLAB_ENV=gprd-cny;
    b ==> c>production canary];
    c ==> d>canary QA];
    end
    subgraph GITLAB_ENV=gprd;
    d ==> e>production];
    end

</pre>

</details>


By setting `GITLAB_ENV` to one of the following values, only the CI jobs
targeting the set stages will run

* `gstg`
* `gprd-cny`
* `gprd`

This however can be extended so that if
`GITLAB_ENV` is set to multiple stages (ex: `gstg,gprd-cny`), more than one stage
can be deployed to in a single pipeline.

![combined-envs](img/3.png)

<details>
<summary>Show mermaid source</summary>

<pre>
graph LR;
    subgraph GITLAB_ENV=gstg,gprd-cny;
    a>staging] ==> b>staging QA];
    b ==> c>production canary];
    c ==> d>canary QA];
    end
    subgraph GITLAB_ENV=gprd;
    d ==> e>production];
    end
</pre>

</details>

## Pipeline Stages

Within each environment, the following pipeline stages are executed to ensure
that new versions of the omnibus package are safely deployed to with minimal
community impact:


![pipeline-stages](img/4.png)

<details>
<summary>Show mermaid source</summary>

<pre>
graph LR;
    a>prepare] ==> b>migrations];
    b ==> c>gitaly deploy];
    subgraph fleet;
    c -.- d>sidekiq];
    c -.- d1>git];
    c -.- d2>web];
    c -.- d3>api];
    c -.- d4>pages];
    c -.- d5>registry];
    c -.- d6>mailroom];
    end
    d ==> e>postdeploy migrations];
    e ==> f>cleanup];
    f ==> g>gitlab-qa];
</pre>

</details>

### Prepare

The prepare stage is used for any step that needs to happen before any change
is made for the deployment. Nothing in this stage is destructive or would cause
any user impact.

* Slack notifications for when the deploy begins
* Critical alert checks, maintenance windows
* HAProxy checks to ensure that no servers are failing the health check
* Ensure that all nodes are running the same version
* Record the pre-install version for downstream stages that will need it for
  report generation.

### Migrations and Fleet Deployment

These stages all involve installing the GitLab EE omnibus package. This
is done with an [Ansible
play](https://ops.gitlab.net/gitlab-com/gl-infra/deploy-tooling/blob/master/common_tasks/install_gitlab_ee.yml)
that does the following in sequence on a set of servers within a fleet. By
default, 10% at a time:

* Check to see if the package will be upgraded, if not no action will be taken
  and the remaining install steps will be skipped
* Drain the server(s) being operated from the HAProxy load balancer
* Stop chef on the server to prevent automatic updates
* Install the gitlab-ee package
* Check for patches against the version that is being deployed
* Apply all patches if necessary
* Run gitlab-ctl reconfigure
* HUP unicorn if unicorn is running
* HUP sidekiq cluster if sidekiq cluster is running
* Restart non-rails services if they have changed
* Add the server(s) being operated on to the HAProxy load balancer
* Wait for the HAProxy health check to pass

#### Migrations

The migrations stage is for pre-deployment migrations. First the target version
of GitLab-EE is deployed to a single server, then the following command is run to
initiate migrations:

```
SKIP_POST_DEPLOYMENT_MIGRATIONS=1 /usr/bin/gitlab-rake db:migrate
```

The output of the command is displayed in the job output.

#### Gitaly Deploy

The Gitaly servers are deployed before the rest of the fleet. This is done to
ensure that there is no newer rails code that takes advantage of new Gitaly
features before they are upgraded.

#### Fleet Deploy

The remaining fleet is divided into the following groups:

* sidekiq
* git
* web
* web-pages
* api
* registry
* mailroom

Each of these groups are deployed to in parallel with a dedicated CI job. Within
the group the GitLab-EE packages are deployed 10% at a time.

### Service restarts

Installing the GitLab omnibus package and issuing a `gitlab-ctl reconfigure`
does not necessarily mean that a service will be restarted if it is upgraded.
To handle this case the pre-install versions are compared against the
post-install versions to see if there is a version change. If there is
a version upgrade, the corresponding services will be restarted. The following
services are checked for a version change:

* gitaly
* gitlab-pages
* gitlab-workhorse
* nginx
* registry

### Post-deploy Migrations

After the entire fleet has been upgraded, the final migrations are run. This stage
is the last step and is considered the point-of-no-return for upgrades. Once
post-deploy migrations are complete it may be impossible to rollback.

The following command is issued on the deploy server:

```
/usr/bin/gitlab-rake db:migrate
```

In addition to this, the output of the following is displayed:

```
/usr/bin/gitlab-rake db:migrate:status

```

### Cleanup

At the very end of the deployment the following tasks are run:

* The new version is set in Chef so that chef-client can be safely started
  across the fleet.
* Chef is started across the fleet

### GitLab QA

For staging and production canary deploy a final step is executed which runs the
GitLab QA smoke test. For staging it tests the https://staging.gitlab.com
endpoint, for canary production it sets the `gitlab_canary` cookie and runs
against https://gitlab.com.

<style>
.collapse{
  cursor: pointer;
  display: block;
  background: #cdf;
}
.collapse + input{
  display: none; /* hide the checkboxes */
}
.collapse + input + div{
  display:none;
}
.collapse + input:checked + div{
  display:block;
}
</style>
