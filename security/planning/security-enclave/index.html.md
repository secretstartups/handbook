---
layout: markdown_page
title: "Security Enclave"
---

## On this page
{:.no_toc}

- TOC
{:toc}
# Summary

Separate environment for the Security department for:

 * Provenance of collections from investigations and other activities
 * Privacy for non-public by default work such as:
   * Legal requests/other activities
   * Investigation of Incidents involving team members
 * Limited access in line [least privilege](/handbook/security/access-management-policy.html#principle-of-least-privilege) without inherited permissions due to:
   * Google Cloud Platform administrators
   * Google Workspace super admins
   * GitLab.com site admins
   * Inherited group permissions from `gitlab-com` and `gitlab-org` groups

This enclave will contain at minimum:

 * A `live` environment suitable for processing and storing RED data.
 * An `integration` environment with scaled down architecture for testing
   integrations.
 * A support environment for housing terraform state and other related data.

All environments will follow compliance and retention requirements.

## Meta Planning

Issues for breaking down the work will can be created in any appropriate tracker
under [security-enclave>](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/security-enclave/security-enclave) and
labelled as `~"security enclave"` for tracking on this [issue board](https://gitlab.com/groups/gitlab-com/gl-security/-/boards/1363933?&label_name[]=security%20enclave).

When discussing the Security Enclave:

* Refer the GCP projects as `integration` and `live` to avoid ambiguity with other environments.
* Always include the domain name `@gitlabsec.net` in user and group names.
* `project` is unfortunately an overloaded term between GCP and GitLab, so specify as "GCP Project" or "GitLab project" when necessary.


# Design Goals

## Minimize dependencies on external services

Follow best practices to ensure that artifacts deployed to the environment
are available in local mirrors or caches. Use available tools to verify the
integrity of artifacts deployed to the environment.

Rely on high avaialibility services when necessary or otherwise determined
that the risk is acceptable.

## Dogfood GitLab features

GitLab features such as container scanning and private docker registries can
be used to shift security left for this environment.

## Use modern practices to reduce effort for maintenance

Many of the workloads for the proposed systems can be deployed as kubernetes
workloads, with the advantages of shifting our own security left and making
use of GitLab features such as container scanning and private registries.

# GitLab

The Security enclave will contain a maintained GitLab instance for the following
work:

## Environment Administration and Maintenance

Container registry and scanning for the kubernetes workloads deployed to the environments.

CI for terraform deployments will be run in `live` GitLab, using private runners
within the environment. This means that some maintenance of the `live` GitLab
instance and the runners can not be done through CI, but can still be tracked
in terraform and executed manually.

## Security Team Workflow

Issue on the tracking for non-public by default issues
CI for working with customer data (RED) from GitLab.com
Application Resources

# Design

## Software and Systems

### Identity Provider

An Okta organization under the existing organization will be used as the identity
provider and single-sign-on solution for the enclave. The tradeoff of having
an external dependency is being made to reduce duplication of IdP efforts.

The additional risk for Okta super admins having impact on the security enclave
is compensated for the strong audit capabilities of Okta itself and additional
alerting in DELKE on logs that are already being ingested.

### GCP Authentication and Authorization

Access to GCP resources using IAM using Google Groups for groups specified in
the [Role Entitlements](#role-entitlements) listed below. This is to maintain
independence from other corporate systems

To effectively use Google groups for access control lists:

* No users should have group manager permissions
* Access Requests should be fulfilled by the SecOps managers, mostly as part of
  the manager's responsibilities for onboarding new team members. For this reason,
  SecOps managers will be granted `Group Administrator` in Google Workspace.
  * In the event no SecOps managers are available, the enclave administrators
    may also add users to groups in any base entitlements.
* GCP IAM changes should be managed declaratively in terraform.

### GCP Native Tooling

While other technologies will be evaluated for maintainablity and cost, preference
will be given to GCP native tooling where it exists.

#### Cloud DNS

A new top-level domain `gitlabsec.net` will be used for resources related to the Security Enclave
to reduce the interaction between systems due to the behavior of integrations
such as email for SaaS application being routed through Google Workspace.

Cloud DNS will be used to manage records for the domain. Similar to the other
independent resources, Cloud DNS will not have the same dependencies as other
DNS providers used in production for GitLab.com.

An automated process and tooling should be implemented where possible to ensure
that records are kept up to date with resources. Where not possible, change
control tracking processes should include steps for admins to review for associated
resources when modifying or removing resources.

### Single-instance, Shared Resources

Some shared resources that will need to be maintained for uptime, but not
necessarily have duplicated `integration` resources associated with them:

* Terraform
  * Organize similar to how infra splits by environments: https://gitlab.com/gitlab-com/gitlab-com-infrastructure
* Chef
* Package mirror: Ubuntu/apt
* Tenable
  * Will be maintained similar to existing production deployments.
  * (req: chef)
* SaaS:
  * Uptycs

### Replicated Tools in Integration and Live

The following workloads will be implemented in both `live` and `integration`.

* Workloads
  * GitLab
    * Ultimate license required for:
      * Container Scanning
      * Secrets scanning
      * Dependency scanning
  * Private CI runners:
    * limited connectivity to only project resources and shared repository mirrors
* Traditional VM applications:
  * [Detection ELK Environment](https://gitlab.com/gitlab-com/gl-security/secops/detection/delke)
    * An Elastic cloud instance and alerting

### Network Architecture

* Multiple VPCs:
 * User facing workloads: GitLab, DELKE
* Cloud NAT:

### Other tasks and dependencies

#### Bootstrapping the Enclave

Bootstrapping the environment may need to be performed by running various
terraform and chef provisioning steps manually until the GitLab instance
is sufficiently configured to perform these tasks via CI.

#### Gold VM Images for Traditional VMs

* Remove (or no addition of) `gcp ssh` access
* Additions:
  * Suricata
  * fluentd
  * node_exporter

#### Base Docker Images for custom applications

* node_exporter


## High Availibility

We will be relying on auto-scaling and multi-zone failover using GCP load
balancers for the Kubernetes workloads. We will be relying on CloudSQL for
any workload that supports it as a database (GitLab).

The following workloads will have ready instances in a second zone (pods or VMs as necessary):

* GitLab

We will be relying on monitoring and the queuing features of pubsub to reliably
ingest data into DELKE.

Other workloads, may be useful but not required during operations
at this time, so do not require additional measures other than monitoring and
detection to meet HA needs.

## Disaster Recovery

We will scheuld CloudSQL backups via terraform, with multi-region storage for backup.

All repositories used for the maintenance of the Security Enclave will
push mirrored to GitLab.com or ops.gitlab.net.

## Infrastructure as Code Source Repository Organization

* `security-enclave-terraform` project
  * Subdirectories for each GCP/AWS/other project
  * TODO: modules for large, related bits, (link to gitlab-com-infrastructure for example), either internal or external repositories
    * DELKE
    * GitLab

* Automation:
  * Which GitLab instance in the environment can administer the environment? Do we need security-ops::gitlab.gitlab-security.com like ops::gitlab.com?
  * Mirror all repositories to ops.gitlab.net as part of DR

## Roles

### System Administrator

This role is defined in addition to job title/function for individuals whose
work requires additional access in addition to their job function granted roles.
The need for this role should be minimized to maintain [least privilege](/handbook/security/access-management-policy.html#principle-of-least-privilege).

## Role Entitlements

* Google Workspace
  * System administrators
   * Super admin
  * SecOps Managers
   * Group admin
* GCP Organization
  * Security Managers, `enclave-owner-gcp-sg@gitlabsec.net`
    * Owner
  * SecOps, Strategic Security, Compliance Team Members, `enclave-reviewers-gcp-sg@gitlabsec.net`
    * Billing Viewer
    * Security Reviewer
    * IAM Admin
* Project level
  * `live-general`
    * SecOps Managers
      * Owner, `enclave-owner-gcp-sg@gitlabsec.net`
    * System Administrators
      * Project Administrator, `enclave-admin-gcp-sg@gitlabsec.net`
    * Environment Devs
      * Project Viewer, `enclave-developer-gcp-sg@gitlabsec.net`
  * `integration-general`: An empty, scaled down environment with no real data for testing
    integration between various systems, e.g. Cloud Functions.
    * SecOps Managers
      * Owner, `enclave-owner-gcp-sg@gitlabsec.net`
    * System Administrators
      * Project Administrator, `enclave-admin-gcp-sg@gitlabsec.net`
    * Environment Devs
      * Project Editor, `enclave-developer-gcp-sg@gitlabsec.net`
  * `live-secauto`
    * SecOps Managers
      * Owner, `enclave-owner-gcp-sg@gitlabsec.net`
    * System Administrators
      * Project Administrator, `enclave-secauto-admin-gcp-sg@gitlabsec.net`
      * Project Administrator, `enclave-admin-gcp-sg@gitlabsec.net`
    * Environment Devs
      * Project Editor, `enclave-secauto-developer-gcp-sg@gitlabsec.net`
    * External Viewers
      * Project Viewer, `enclave-developer-gcp-sg@gitlabsec.net`
  * `integration-secauto`: An empty, scaled down environment with no real data for testing
    integration between various systems, e.g. Cloud Functions.
    * SecOps Managers
      * Owner, `enclave-owner-gcp-sg@gitlabsec.net`
    * System Administrators
      * Project Administrator, `enclave-secauto-admin-gcp-sg@gitlabsec.net`
      * Project Administrator, `enclave-admin-gcp-sg@gitlabsec.net`
    * Environment Devs
      * Project Editor, `enclave-secauto-developer-gcp-sg@gitlabsec.net`
    * External Viewers
      * Project Viewer, `enclave-developer-gcp-sg@gitlabsec.net`
  * `backup`: Project to hold copies of backups
    * SecOps Managers and System Administrators, `enclave-administrators-gcp-sg@gitlabsec.net`
      * Owner
  * `ApplicationSecurity/applications`: A folder to contain projects for deployment and testing application security tools or other research in support of initiatives
    and the Secure product team.
    * AppSec Managers
      * Organizational DRI

Notes:
 * Limit number of team members that require system administrator access to
   all environments by providing processes with sufficient controls for
   review. For example, terraform deployment via CI, but requiring approval
   from "System Administrators".

## Existing environments

### GCP `gitlab-security`

The current `gitlab-security` project in GCP can continue to be used for POCs,
experimentation

As part of this process, it will be audited for data and access restrictions.

### AWS `gitlab-security`

Applications currently using the `gitlab-security` AWS project will be migrated
off to reduce the resource footprint of Security department initiatives.

* ...
* TODO: A full listing of projects and an estimate for migration.

## Related Issues and other potential blockers

* Non-image attachments in confidential issues in public projects are viewable
  without authentication: https://gitlab.com/gitlab-org/gitlab/issues/30029

## Developing for and Deploying to the Enclave

### Getting Started

#### Getting Access

Access to enclave resources can be requested using the standard Access Request
Process, specifying `GCP (Security Enclave)` as the system name.

#### Required Tooling

* `gcloud` CLI tools installed
* `terraform`
* `ansible`

#### Use Firefox Multi-Account Containers or Chrome Profiles (or equivalent)

Accessing resources in the `gitlabsec.net` GCP organization will require logging
in to an additional Google account. To avoid confusion, consider using a
Firefox container tab for enclave specific work.

* [Firefox Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
* [Chrome Profiles](https://support.google.com/chrome/answer/2364824)

### GitLab Project Organization

Note: Links to the projects themselves are TBD while details of which should
be the origin which should be the mirrors:

* `security-enclave-terraform` project: The top-level terraform configuration for the enclave.
* `security-enclave/terraform-modules/` subgroup: Any terraform modules that
  are too big/complex/independent enough can be moved to their own project in
  this subgroup.
* `security-enclave/ansible-playbooks/`: Enclave specivic ansible resources.

### GCP Project Organization

Consider the following when starting new work in the enclave:

* What are the network connectivity requirements of the service?
* How complex are the components or their configuration?
* What GCP features/technologies does it use, and would it risk conflicting
  with existing services?
* Are there any other technical limitations that must be met?

If a services is highly isolated, complex, and/or has only dependencies outside the enclave,
it may make sense to have its own project. These are only guidelines and should
be considered along with other criteria such as maintainability when making a
decision.

Request a new project by opening a new issue in the [Security Issue Tracker](https://gitlab.com/gitlab-com/gl-security/security-enclave/security-enclave-terraform/issues),
tagging the Enclave Administrators, then follow the instructions in the top-level
terraform project's `README.md`.
