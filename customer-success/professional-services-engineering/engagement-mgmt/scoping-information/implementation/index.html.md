---
layout: handbook-page-toc
title: "Professional Services EM Implementation Scoping"
description: "Describes the process for scoping GitLab implementations."

---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

`:warning: This page is under construction` 

# Implementation Scoping Details

- We have scoped several different reference architectures in the past.  Examples can be found in the [Deployment Equations tab of the Engagement Estimates TEMPLATES document](https://docs.google.com/spreadsheets/d/1YKMyflzsA-VPEVobB82zC8-n0hlC-uRBtiNB7Fm-kZg/edit#gid=1929043076).

- Implementations will use the standard documented [reference architectures](https://docs.gitlab.com/ee/administration/reference_architectures/).

- All implementation services on prem with Geo included assume that we use a single large omnibus implementation for the secondary.   There are some challenges with full HA secondaries, so if we choose to scope an HA Geo, the general rule of thumb is to add an additonal 20-25 days to the scope to account for the complexities.

- Implementations on AWS tend to be less complex than on-prem implementations because we take advantage of the various services AWS provides for HA.

- K8s implementations are generally the same effort as VM implementations, for the same sized reference architecture.

- Our PSE team uses infrastructure as code automation for provisioning infrastructure and configuring the provisioned servers.  The tooling is managed in the [Proliferate](https://gitlab.com/gitlab-com/customer-success/professional-services-group/global-practice-development/implementation/proliferate) project.  The project readme has information on what infra as code we currently support.  Note, this is different than the open sourced [GitLab Environment Toolkit](https://gitlab.com/gitlab-org/quality/gitlab-environment-toolkit) used by our QA team for provisioning new systems using Terraform and Ansible. 






