---
layout: handbook-page-toc
title: "Chef Automation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Issue: [`infra/5078`](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/5078)

## Idea/Problem Statement

1. Chef-related workflows are mostly repetitive, notably, updating a role,
environment, or a cookbook involves running a set of repetitive commands on an SRE workstation
1. Not all users have access to update live Chef changes, which makes them ask
an SRE to do it for them

Once the Chef change is approved and merged into master, it should be assumed
that applying such change to the Chef server is a safe operation, provided that
it is not a production change. In this light, a CI/CD pipeline should be
applying this change.

## Design

### Uploading cookbook changes

A CI stage (called `publish`) would clone the publisher script repository,
copy the script to the cookbook repo and run it. Since we have a lot of cookbook
repositories, we need to keep the actual publishing script independent from the
cookbooks so that we don’t need to update all cookbooks when a change to the
publishing script is made. The publish stage only runs for a `master` branch and
when the credentials required for uploading cookbooks are present as environment
variables.

The publishing script itself does the following:

1. It evaluates the `metadata.rb` files from before and after the merge to
decide if the version has been changed
1. Assuming a change in version, it sets up all the credentials needed for
a successful Berkshelf run, which we use to manage cookbooks versions and dependencies
1. It installs some required packages (e.g. rubygems, berkshelf, …)
1. It uploads the new cookbook
1. It creates an MR that includes the changes made for `Berksfile.lock` and
mentions the user who initiated the merge

We have 66 cookbook repositories that need updating to include the new `publish`
stage, assuming it has a `.gitlab-ci.yml` file (some are very old). A custom
Ruby script would clone all repositories in turn, parse `.gitlab-ci.yml` if
found, add a static YAML stanza that would do the steps described in the first
paragraph, dump the file, then push to branch. This would speed up the updating
process but it would mean losing stuff like YAML comments and the order of some
keys, but those we can live with.

### Uploading roles/environment changes

A CI stage (called `apply`) would include two jobs, one for applying all changes
that are not production-related, and another for the production ones.
A distinction between production and non-production changes is made based on the
file name prefixes. The production job is set to be executed manually, to avoid
any surprises before making sure that the changes are working properly on
staging. The staging job, in turn, is going to show what actions are to be
executed when the production job is triggered, again, to avoid any surprises.

### Implementation Considerations

#### Testing

##### Uploading cookbook changes

The CI pipeline was tested on a cookbook (gitlab-ceph) that we don’t use anymore
in production or staging, so no fear from pushing a new cookbook version to Chef.

##### Uploading roles/environment changes

The CI pipeline was tested by updating the `description` property on staging-
and production-related roles and environments, such change should have no effect
whatsoever on the fleet.

#### GitLab.com and Self-managed

To our knowledge, no on-prem installation is using Chef for configuration
management.

### Operational Considerations

#### Automation

Such change is not expected to have metrics exported. A failure in the CI
pipeline should be enough as way of monitoring.

####  Monitoring

See Automation above.
