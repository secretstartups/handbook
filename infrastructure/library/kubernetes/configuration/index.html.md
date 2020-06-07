---
layout: handbook-page-toc
title: "Design :: Kubernetes Configuration"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Idea/Problem Statement

As GitLab begins it's journey to deploying GitLab.com into Kubernetes, it'll be
important that we discover the best ways towards implementing the infrastructure
and organizing all components and methods of deploying application
configurations into this platform.  This Design Documents' goal is to provide a
framework for which we operate Kubernetes for GitLab.com

This document encapsulates details that are captured from the Kubernetes
Deployment as well as some conversations that were had at our recent 2019 GitLab
Contribute event.
* [https://gitlab.com/groups/gitlab-com/-/epics/64](https://gitlab.com/groups/gitlab-com/-/epics/64)
* [2019 GitLab Contribute Kubernetes Planning](https://docs.google.com/document/d/1N6vb0IbK3M5w2zUteyJ6c6yPu6rUBTXYQni2B5Je_k4/edit)
  (internal)

### Application Configurations

Not to be confused with how we store cluster configurations as we may rely on
existing terraform capabilities to build a cluster.  Instead we'll have multiple
types of kubernetes configurations each of which we'll need a way to determine
the best way to store configurations.  The types of configurations of concern:
  * We have various one-off applications listed in [epic 16]
    * We will utilize [GitLab AutoDevops], so no configurations _should_ exist
      for these.
  * Secrets - No application is complete without it's main source of knowing
    passwords for connecting to external services such as databases, external
    API's, etc.  See [Secrets](./#secrets)
  * Generated/Handcrafted kubernetes configuration for any purpose
    * However we choose to build our configurations for GitLab.com services
    * Helm generated to run some application
      * Examples might be prometheus, grafana, and prometheus node-exporter.
    * Hand created to run some other application
    * Think the need to perform specific types of maintenance tasks
    * Another example might be jobs that run to assist during incidents that we
      create over the course of time

For GitLab.com and supporting services we're going to utilize a group
[k8s-workloads].  This group will serve as the central location for all
generated or manually created configurations will be housed under here.  All
repos should use a shared configuration provided by the [k8s-workloads].
Example look of this inside of GitLab.com (or ops.gitlab.com):

```
gitlab-com
└── gl-infra
    └── k8s-workloads
        ├── about-gitlab-com
        ├── forum-gitlab-com
        ├── gitlab-com
        └── monitoring-stuff
```

#### [k8s-workloads] Group

We eliminate the need for a directory per environment and rely on environment
variables of CI/CD for each environment configuration, otherwise known as
[Environments and Deploys].  We'll utilize various branches for environments
following [GitLab Flow] as discussed in a prior design document: [Infrastructure
GitLab Flow]

#### [k8s-workloads] Sub Projects

The `.gitlab-ci.yml` being one of the key factors of this configuration.  It
will allow us to define how we want things deployed.  We are using simple shell
commands to run `kubectl apply` on the `testapp` directory.  We can iterate and
make this more compliant with our needs in the future.  But using this setup in
tandem with [GitLab Flow], we'll be able to target the branches for the
environment as necessary. In our examples, the `master` branch would deploy
items to the `staging` environment, while the `production` branch would deploy
to the `production` environment.  We also don't automate the generation of these
files, so they are all hand crafted, or generated using some other means.  This
allows us to reduce the scope of what this repo does, allows for an easier
time reviewing configuration file changes, and provides a means of iterating
towards a more desired way of generating configurations at a later time.

The more important configuration is going to be within the GitLab application
itself.  This is where we'll define Environments and all the associated
variables assigned to those environments that will allow GitLab CI ito act upon
the kubernetes configuration appropriately.

### Implementation Considerations
#### Upgrades and rollbacks

We are relying on the Kubernetes API and the `kubectl` client to perform the work
we deem necessary.  We can expound upon this in the future and iterate as we see
fit.  But initially, we should minimally build a way to determine if an upgrade
was successful or not such that we can report a failure to the CI job.  Upgrades
will happen by updating the yaml file for the associated application.
Downgrades would operate in a similar fashion.

With using simplistic `kubectl` commands to apply configurations, we'll need
some way to apply changes when files are removed from a repo.  This would
require further thought and discussion in order to come up with a concise
solution that works with our workflow.  For the current moment in time, I would
suggest that we simply manually remove items.  For this we'll need to come up
with at least a runbook such that engineers know the correct way to remove items
since this is a manual task.

#### Kubernetes File Generation

Out of scope of this design document.  If you want to use helm to deploy an
application, generate the files and plop them into a repo such that they can be
run via `kubectl apply`.  If one chooses to hand generate the files, the same
applies.

There are certain considerations when doing so, however. Let's make ourselves
aware of this in [Operational Considerations](./#operational-considerations)

#### Secrets

There is a strong desire to shift from our current GKMS and chef vault to using
Hashicorp Vault.  Existing issue [infrastructure/6119] is there for discussion.
Until Vault is in place, however, since we are starting with one of our minor
applications, we should have a minimal set of secrets.  As a method of
preventing ourselves from being blocked in getting started with Kubernetes,
we'll simply plop our secret configuration files in 1Password for the time
being.  This will stress us in times of disaster recovery, so we'll need to
ensure we have the appropriate run books set up until we have this fully
automated.

Doing this sounds terrible, however:
* It keeps us from being blocked in starting Kubernetes
* We won't be storing secretive data inside of a repo
* We do not need to wait and investigate other solutions
* We can parallelize the work to bring online Vault and test it out by the time
  we start moving other services into Kubernetes

### Operational Considerations

* Does tiller need to be installed first or does this automatically take care of
  that?
  * Let's define if we even _need_ tiller.  Then:
  * Preferably this would be maintained using a set of generated configuration
    files as necessary
* What do we do with metadata for certain configurations?
  * With applications that are exposed to the outside world, we'll need a way to
    link a static IP address from our cloud provider into the manifest of the
    application.  How do we ensure that what's created by probably terraform, is
    kept up-to-date in this repo?
  * We should probably maintain this manually for the time being
* There are certain items in Kubernetes that are immutable, quick example,
  changing a service type.  Do we build the capability to handle immutable
  objects inside of this repo, or handle these as one-off situations?

#### Automation

We should automate what we can from the start.  The later we wait the more
difficulty we'll have with introducing automation.  We should strongly consider
the use of [GitLab CI/CD] where we see fit and leverage scripts to minimize any
manual interaction with a Kubernetes cluster.  We should limit any engineer's
ability to manually run `kubectl` from their workstation as much as possible.

Depending on the above solution, we can come up with a few ways to assist with
automation:
  * Validating our yaml files are correct syntactically and consumable via the
    kube api [`kubeval`]
  * Running a [`kubediff`] periodically to ensure consistency between repo and
    what's in the cluster
  * Automating applying configuration changes

The [k8s-workloads] takes advantage of using [Environments and Deploys] to handle
connecting to clusters securely and not exposing information in CI job logs.  We
can start off very simple and as our needs increase, we can start to script
items that become more difficult from a quick `.gitlab-ci.yml` file.

### Alternatives

For example many of our one-off applications in [epic 16] could be deployed
using [GitLab AutoDevops] and we can monitor these applications using our [Auto
Monitoring] solution.

[k8s-workloads]: https://ops.gitlab.net/gitlab-com/gl-infra/k8s-workloads
[epic 16]: https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/16
[GitLab AutoDevops]: https://docs.gitlab.com/ee/topics/autodevops/
[GitLab CI/CD]: https://docs.gitlab.com/ee/ci/README.html
[GitLab cloud native Helm Chart]: https://docs.gitlab.com/charts/
[transcrypt]: https://github.com/elasticdog/transcrypt
[gl-infra/infrastructure/issue5337]: https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5337
[gl-infra/kubernetes-poc]: https://gitlab.com/gitlab-com/gl-infra/kubernetes-poc/tree/21d145e6a877552d7c8110a3ad279d433a9ab3c3
[sops]: https://github.com/mozilla/sops
[GKMS]: https://github.com/mozilla/sops#encrypting-using-gcp-kms
[Infrastructure GitLab Flow]: /handbook/engineering/infrastructure/design/git-workflow/
[`kubediff`]: https://github.com/weaveworks/kubediff
[`kubeval`]: https://github.com/instrumenta/kubeval
[Auto Monitoring]: https://docs.gitlab.com/ee/topics/autodevops/#auto-monitoring
[Environments and Deploys]: https://docs.gitlab.com/ee/ci/environments.html
[existing service catalog]: https://gitlab.com/gitlab-com/gl-infra/service-catalog-app
[GitLab Flow]: https://docs.gitlab.com/ee/workflow/gitlab_flow.html#environment-branches-with-gitlab-flow
[infrastructure/6119]: https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/6119
[Contribute Planning]: https://docs.google.com/document/d/1N6vb0IbK3M5w2zUteyJ6c6yPu6rUBTXYQni2B5Je_k4/edit
