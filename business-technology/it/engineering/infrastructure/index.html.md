---
layout: handbook-page-toc
title: "IT Engineering - Infrastructure"
description: "This handbook page provides information about how the IT Engineering sub-department manages infrastructure shared services."
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

The IT Infrastructure team manages AWS and GCP infrastructure that is not related to GitLab.com SaaS production infrastructure and provide managed infrastructure services for other departments, including most ephemeral sandbox infrastructure needs across the company. We also handle access requests for cloud infrastructure and DNS/domain name requests.

We collaborate with the [Reliability Engineering (SRE)](/handbook/engineering/infrastructure/) and [Infrastructure Security](/handbook/security/security-engineering-and-research/infrastructure-security/) teams to provide Infrastructure Shared Services for all AWS, Azure, and GCP related requests and support across the organization.

We also provide escalation engineering and triage support for the [Security Incident Response Team ("SIRT")](/handbook/security/security-operations/sirt) and [Security RED Team](/handbook/security/threat-management/red-team) when security anomalies, events, or incidents require AWS/GCP subject matter expertise.

Our focus is on organizational policy management, access request provisioning, and services that are outside of the [Reliability Engineering](/handbook/engineering/infrastructure/) scope of hosting the Gitlab.com SaaS service, such as the provisioning of demo/sandbox/test infrastructure for team members.

The [Demo Systems](/handbook/customer-success/demo-systems/) provide an always-on shared sandbox environment for demo and experimental use cases that aren't intended for or supported on GitLab.com and don't need dedicated infrastructure to be provisioned for your use case.

The [GitLab Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox/), powered by [HackyStack](https://gitlab.com/gitlab-com/business-technology/engineering/tools/hackystack), automates the provisioning of AWS accounts, AWS IAM users, GCP projects, and GCP users. This has allowed us to automate a large portion of our AWS and GCP access requests.

## Reference Links

* Issues: [IT Engineering Operations (EngOps)](https://gitlab.com/gitlab-com/business-technology/engineering/operations/issue-tracker/-/issues?sort=updated_desc&state=opened&label_name[]=it-eng-service::okta)
* Repositories:
  * [gitlab.com/gitlab-com/business-technology/engineering/infrastructure](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure)
  * [ops.gitlab.net/it-infra-realm](https://ops.gitlab.net/it-infra-realm)
* Labels:
  * `it-eng-service::aws`
  * `it-eng-service::demo-systems`
  * `it-eng-service::dns`
  * `it-eng-service::gcp`
  * `it-eng-service::sandbox-cloud`
* Reference Links:
  * [Access Request - Individual AWS Account or GCP Project](/handbook/infrastructure-standards/realms/sandbox/#individual-aws-account-or-gcp-project)
  * [Access Request - Group/Team AWS Account or GCP Project](/handbook/infrastructure-standards/realms/sandbox/#groupteam-aws-account-or-gcp-project-non-production)
  * [Demo Systems](/handbook/customer-success/demo-systems)
  * [Domain Name Purchase Request](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure/issue-tracker/-/issues/new?issuable_template=dns_domain_purchase_request)
  * [Domain Name Transfer Request](https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure/issue-tracker/-/issues/new?issuable_template=dns_domain_record_update)
  * [Infrastructure Standards](/handbook/infrastructure-standards)
* [Infrastructure Standards - IT Realm](/handbook/infrastructure-standards/realms/it)
  * [Infrastructure Standards - Labels and Tags](/handbook/infrastructure-standards/labels-tags)
  * [Infrastructure Standards - Policies](/handbook/infrastructure-standards/policies)
  * [Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox)
  * [Sandbox Cloud - Terraform Environments](/handbook/infrastructure-standards/realms/sandbox/#terraform-environments)
  * [Terraform Modules](htts://gitlab.com/gitlab-com/sandbox-cloud/terraform-modules)
