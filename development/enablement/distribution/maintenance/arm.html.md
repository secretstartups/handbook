---
layout: handbook-page-toc
title: "Distribution Team Infrastructure: ARM"
description: "Describes the hardware and use of infrastructure for building ARM packages."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Hardware Provider

[Scaleway][scaleway] is the current provider for ARM runner instances. All
[distribution][distribution] team members should be able to log into the
provider using `distribution-be` credentials stored in **1Password** Build vault.

## Teams Working on ARM Related Tasks

Several GitLab teams collaborate to provide support for ARM:

1. [Distribution][distribution] manages the [ARM runner provider][scaleway]
   and issues with build pipelines.
1. [Community Advocates][advocates] answer questions and provide community support in the forums.
1. [Verify CI][verify-ci] would help build packages for ARM runners.

## Failure Notifications

Build failures for master, stable branches, and tags are sent to the
[distribution][distribution] team slack channel. Developers receive failure
notices via e-mail for pipelines triggered from their feature branches as
they would normally for any other branch.

## Known Issues with ARM Builders

- Slow speeds cause issues because of runner [issues handling timeouts][timeout-blog].
- [Scaleway Docker Driver][scaleway-driver] has recurring issues.
- Sometimes the ARM machines just shut down arbitrarily. 
- Machines fall into a ***shut down*** state that count against the runner
  cap but are not actually functional.
  [Follow the procedure for pending builds][pending-builds] when this happens.


## Frequently Asked Questions

### Why don't you compile ARM32 bit packages on ARM64 for speed?

We explored cross compiling and found that the challenges caused outweighed
the benefits provided. The process would take a lot of deep investigation to
overcome those challenges.

### How do the ARM Builders get provisioned?

ARM builders are provisioned up to the maximum cap of concurrent machines at
all times. The ARM builders take a fair amount of time to spin up; permanent
provision increases their availability for pipelines. Continuous Integration
will automatically provision another ARM builder if one of them is properly
shut down. [Quota usage is visible in the Scaleway account profile][quotas]
and the [hard cap on runners is set in the ops cookbooks][cap-setting].

### What GitLab packages get built for Raspberry Pi?

Due to [memory requirements] we do not currently recommend the Raspberry Pi
as a production platform. Due to this, we only build packages for the
Community Edition.

[scaleway]: https://www.scaleway.com/en/virtual-instances/arm-instances/
[verify-ci]: /handbook/engineering/development/ops/verify/
[distribution]: /handbook/engineering/development/enablement/distribution/
[advocates]: /handbook/marketing/community-relations/community-advocacy/
[timeout-blog]: https://about.gitlab.com/blog/2019/11/15/tracking-down-missing-tcp-keepalives/
[scaleway-driver]: https://github.com/scaleway/docker-machine-driver-scaleway
[pending-builds]: /handbook/engineering/development/enablement/distribution/maintenance/build-machines.html#when-builds-are-pending-on-devgitlaborg
[memory requirements]: https://docs.gitlab.com/ee/install/requirements.html#memory
[quotas]: https://console.scaleway.com/account/profile
[cap-setting]: https://ops.gitlab.net/gitlab-cookbooks/chef-repo/blob/56d8ce707368fbd529233213d6bb2624b28c13ee/roles/build-runners-gitlab-org.json#L145
