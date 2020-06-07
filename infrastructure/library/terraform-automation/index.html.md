---
layout: handbook-page-toc
title: "Terraform Automation"
---

**Status**: [_Implementation_](https://gitlab.com/groups/gitlab-com/gl-infra/-/epics/9)

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Problem Statement

Infrastructure changes in our [terraform](https://www.terraform.io)
[repository](https://gitlab.com/gitlab-com/gitlab-com-infrastructure) should be deployed without
any manual steps, and should be well documented (starting with this design).

The general workflow for each environment is linear, and will benefit from automation in terms of
SRE time/effort, as well as consistency and accuracy of our terraform code as the Source of
Truth(tm) for our infrastructure configuration. Environments will be managed within separate
repositories so that we do not needlessly deploy to all environments within a monorepo, when only a
subset have actually changed, nor do we run deployments in sequence where it is not necessary.

Finally, the use of a monorepo to manage code for multiple environments and reusable modules
presents multiple limitations and inefficiencies. Since the code for all environments
references modules in the same repository by relative path from the master branch with no version
constraints, any module changes must be deployed to all environments immediately to ensure
consistency and avoid breakage by configuration drift. This can result in delays or prevent multiple
people from working on unrelated changes simultaneously, as it creates a global FIFO queue for ALL
changes in ALL environments. Smaller, more atomic grouping for infrastructure code will enable
better collaboration and faster/more flexible deployments.

## Design

### Modules

We will use [versioned
modules](https://www.terraform.io/docs/modules/sources.html#selecting-a-revision) in a separate
repository, `terraform-modules`. The ultimate goal would be per-environment pins, allowing more
control over parallel in-flight changes. For example: SRE A makes a change to the registry module,
adjusts the source/version for `gstg`, merges the change, and begins validation. SRE B modifies a
`node_count` variable for the registry and plans/applies/merges for both `gstg` and `gprd`, but does
_not_ change the version tag for the module, so the changes still being validated by SRE A are not
shipped to `gprd` early, nor are they a blocker for minor changes to existing functionality by SRE
B.

If we can do this with a variable version containing the git tag for the module source repository,
we can maintain the currently DRY approach to symlinked `main.tf` files, and/or look at moving to
[terraform workspaces](https://www.terraform.io/docs/state/workspaces.html) for duplicating
deployments. Eventually, we can break out individual modules into separate repositories, with
pipelines to perform automated linting, testing, and deployment to a
[private](https://www.terraform.io/docs/registry/private.html) or [public
registry](https://app.terraform.io).

This approach will enable faster iteration on smaller logical pieces of code, and allows us to setup
per-module pipelines with compliance and integration tests using tools like [Chef
InSpec](https://inspec.io) (e.g. with [GCP Resource Pack](https://github.com/inspec/inspec-gcp)) or
[terratest](https://github.com/gruntwork-io/terratest) to validate resources created/configured by
that module. InSpec is preferred, due to tech-stack alignment and better compliance-centric
features, but the general point is to enable smaller/more reliable/testable changes in our
infrastructure code.

### Project & repository organization

Rather than implement continuous delivery logic that sequentially iterates through all environments
for every MR, or attempts to use some logic to determine target environments based on the list of
files changed within an MR, we will break out separate repositories by deployment; this also
re-inforces the move to break out modules into separate version tagged repositories.

Those separate deployments should be organized by lifecycle (foundational account-level or
VPC/network-level configuration that rarely changes vs more frequent iterative changes to DNS or
access-control/users/roles/permissions) and project (feature/service-centric infrastructure
module(s)). Each project should be automatically deployed to a pre-production environment like
`gstg` for validation, before _the same code_ is used to automatically deploy the changes to
production, pending passing tests and approval, of course.

Generally speaking, we do not need to keep track of state, or take the time to refresh state for the
entirety of the infrastructure when making changes that only impact a single, service-specific
portion. We will use remote state data sources or a shared distributed key-value store like consul
to publish information that downstream services may need to consume, rely on conventions (tagging,
dns naming standards, etc.), or (less desirable) reference another deployment's remote state via
data sources.

This results in many more git repositories and pipelines, but moves us towards a more loosely
coupled, composable codebase that is more performant for deploys, more testable, and more scalable
in terms of the number of contributors and parallel work. The same approach would serve us well in
other areas of our infrastructure, as well (e.g. chef cookbooks, helm charts deployed to GKE, etc.)

### Goals

1.  Modules will be maintained and versioned independently of the terraform files for live
    environments; this will allow different environments to simultaneously reference different
    versions of the modules, and treat them more like independent, reusable packages (as intended)

1.  We will use separate repositories and terraform workspaces for live infrastructure deployments
    1.  We will use the established [git workflow](/handbook/engineering/infrastructure/design/git-workflow/) for our team to
        manage deployments to environments which share the same code base, and follow a linear
        deployment workflow using separate branches for each environment. E.g. `dev` -> `tst` ->
        `uat` -> `prd`

    1.  Merge request pipelines will execute a terraform plan against the target environment,
        allowing reviewers to approve/request changes based on the plan output before the changes
        are applied.

1.  Deployment of infrastructure code changes for all environments will be automated
    1.  Plans will automatically be applied to the first environment within the promotion path once
        the merge request is approved and the merge process started.
    1.  Changes to subsequent environments will be separate merge requests for a tagged version
        previously deployed and validated in the preceding environment, and will follwo the same
        plan/apply flow

### Future considerations

1.  While we will initially separate modules into another separate repository, we do not yet need
    the added complexity of one repository per module. Should we decide to continue investing in
    this area, we should look at including [automated tests](https://github.com/newcontext-oss/kitchen-terraform) 
    in much the same way we do for our chef cookbooks.

1.  Ephemeral environments may be used for testing infrastructure deployed from feature branches
    during merge requests. This is beyond the scope of this document, and independent of the flow
    described above, however.

1.  [InSpec](https://inspec.io) profiles (or equivalent testing tools) should be (re-)used to
    provide [post-deployment validation](https://blog.chef.io/2018/05/23/automatically-generating-inspec-controls-from-terraform/)
    for the live environments.

#### GitLab.com and Self-managed

This solution only applies to gitlab.com, and does not apply to self-hosted GitLab installations. 
We can certainly look into leveraging this work to publish "official" Terraform modules
to the [public module registry](https://registry.terraform.io/) for customers to more easily deploy
GitLab to various IaaS cloud providers, but that is beyond the scope of this design for now.

### Operational Considerations

####  Monitoring

Monitoring will be facilitated by publishing metrics to prometheus via a push-gateway. Initial
metrics should include counts for pipeline success/failure and execution time. Future improvements may include
metrics based on automated testing results. Finally, existing monitoring already provides for
notifications via email for pipeline failures.

### Additional Considerations

The new repositories should be grouped under a top-level project, with sub-projects for modules and
deployments. This project structure can also accommodate a similar pattern for deploying to
kubernetes (or other platforms) in the future. In the case of kubernetes, we may need to maintain
custom some helm charts, manifest files, etc. as well as separate repositories with the
configuration and automation to deploy them 

### Alternatives

[Atlantis](https://www.runatlantis.io/) was initially considered to handle automating the terraform
workflows, but ultimately rejected due to limitations in the security features it provides,
especially when running pipelines on a public repository. We are working on relocating our
infrastructure and support repositories to [ops.gitlab.net](https://ops.gitlab.net), but we will
still maintain public mirrors on [gitlab.com](https://gitlab.com) for transparency and to facilitate
community contributions
