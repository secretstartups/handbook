---
layout: markdown_page
title: "Deployments and Releases"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Resources

| Description        | Location            |
|--------------------|---------------------|
| Release documentation | [Link](https://gitlab.com/gitlab-org/release/docs) |
| Release related tasks issue tracker | [Link](https://gitlab.com/gitlab-org/release/tasks/) |
| Delivery team issue tracker | [Link](https://gitlab.com/gitlab-com/gl-infra/delivery/issues) |
| Release manager schedule | [Link](https://about.gitlab.com/community/release-managers/) | 
| Maintenance Policy | [Link](https://docs.gitlab.com/ee/policy/maintenance.html) |

This page describes how code changes are deployed to GitLab.com and released to Self-Managed users. 

## Overview and terminology

* **Monthly self-managed release**: GitLab version (XX.YY.0) [published every month on the 22nd][process-monthly-release]. From this monthly release, [patch][process-patch-release], [non-critical][process-security-release-non-critical], and [critical][process-security-release-critical] security releases are created as needed
* **GitLab.com deployment**: [Auto-deploy][process-auto-deploy] that are deployed from [auto-deploy branches created from master][auto-deploy], on regular intervals

**The main priority** of both deployments and releases **[is GitLab availability & security](/handbook/engineering/development/principles/#prioritizing-technical-decisions)**
as an application running on both GitLab.com and for users running GitLab
in their own infrastructure.

With these two types of releases, GitLab Inc. has to balance _at the same time_
the workflows normally found in SaaS companies with the ones found in companies
that publish packaged software.

### Deployment and Release Process overview

For testing purposes, all changes are deployed to GitLab.com before being considered for a self-managed release. Deployment and release cadences operate on different timelines with changes deploying to GitLab.com multiple times per day, and packages being released for self-managed users several times a month. 

This overview shows how the two processes are connected: 
![Deployment and Release process overview](deployment-and-release-process-overview.png)
* [Diagram source](https://docs.google.com/presentation/d/1YRjA1dYCXNXp06VltDYlik1MdFyzUvaeXKk69mMPcA4/edit?usp=sharing)

1. Engineer creates features or bug fixes. Changes reviewed by Maintainers
2. Validated changes merged into the default branch
3. A scheduled pipeline packages all new changes into an "auto-deploy package" for deployment to GitLab.com. Multiple packages are created each day at the [listed times](/engineering/releases/#gitlabcom-deployments-process)
4. If deployments are allowed the auto-deploy pipeline starts. Production Change Locks, unhealthy environments, or other ongoing deployments are examples of events that would prevent a deployment 
5. The auto-deploy package is deployed to GitLab.com. For more details [see the deployment process](/engineering/releases/#gitlabcom-deployments-process)
6. Changes that have been successfully deployed to GitLab.com can be considered for packaged release for self-managed users. A new release candidate package is created for these changes
7. The release candidate is deployed to a test environment and automated QA tests execute
8. Release Candidate is officially tagged and published for release

## Release Managers
The overall coordination and operation of the deployment and release process is the responsibility of the release managers. 

See the GitLab [Release Managers schedule] to find out who the current release managers are.

[auto-deploy]: https://www.youtube.com/watch?v=_G-EWRpCAz4
[process-monthly-release]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/monthly/process.md
[process-patch-release]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/patch/process.md
[process-auto-deploy]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/deploy/auto-deploy.md
[process-security-release-critical]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md#critical-security-releases
[process-security-release-non-critical]: https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md#non-critical-security-releases
[Release Managers schedule]: https://about.gitlab.com/community/release-managers/
