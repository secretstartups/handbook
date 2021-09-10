---
layout: handbook-page-toc
title: "Infrastructure Environments"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Environments

Terraform control for the environments can be found [on ops](https://ops.gitlab.net/gitlab-com/gitlab-com-infrastructure/-/tree/master/environments)

<div class="panel panel-info">
<div class="panel-heading">
Future Iteration with Infrastructure Standards
</div>
<div class="panel-body">
We have a WIP initiative to iterate on our company-wide infrastructure standards. You can learn more about this on the <a href="/handbook/infrastructure-standards">infrastructure standards handbook page</a>.<br />
<br />
This page will be refactored incrementally as the standards are documented, implemented, and changes to environments take place.
</div>
</div>

### Development

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| Development | various | Development | on save | Fixture | individual dev |

Development happens on a local machine. Therefore there is no way to provide any SLA. Access is to the individual dev. This could be either EE/CE depending on what the developer is working on.

### Demo

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| Demo | "GitLab Sales Demo Domains - Internal only" (found on the google drive) | Sales | Release | Fixture | Production Team |

This should be a fully featured version of the current EE release. The high SLA and tightened access is to ensure it is always available for sales. There are no features (feature flags/canary/etc) that we do not ship.

### .org

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| .org | [dev.gitlab.org](https://dev.gitlab.org) | Tools for GitLab.com | Nightly | Real Work | Production and build team |

Currently there are two main uses for the .org environment:

- Builds.
- Repos that are needed in case GitLab.com is offline.

This is a critical piece of infrastructure that is always growing in size due to build artifacts. There are discussions to make a new build server where nightly CE/EE builds can be deployed or to move the infra repos to a new host that would be an separate (not gitlab.com) EE instance. Although the environment has dev in its domain name don't refer to it as dev since that could be confused with a local development environment.

### Review Apps

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| Review apps | various | Test proposal | on commit | Fixture | Review app owner |

Ephemeral app environments that are created dynamically every time you push a new branch up to GitLab, and they're automatically deleted when the branch is deleted. Single container with limited access.

### Ops

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| ops | [ops.gitlab.net](https://ops.gitlab.net/) | GitLab.com Operations | official ee releases | Fixture | SREs |

The ops environment hold all infrastructure that is critical for managing GitLab.com infrastructure.

At this time it includes:

- Proxy for ElasticCloud.
- Internal monitoring infrastructure that serves dashboards.gitlab.net
- An isolated GitLab deployment that serves as a backup for all operations related GitLab repositories.
- CICD jobs for critical operations tasks such as backups and maintenance.
- Runners that need to connect to production infrastructure, such as GitLab chatops.

### Production

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| Production | [gitlab.com](https://gitlab.com/) | Production | Release Candidate | Production | Production team |

Production will be full scale and size with the ability to have a canary deploy. Production has limited access.
It consists of two stages:

- The canary stage is a subset of infrastructure that reaches a limited number of members of the community. We deploy to this stage first. For more information see [canary testing](/handbook/engineering/#canary-testing).
- The main stage serves the remaining traffic for the wider GitLab community.

### Staging

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| Staging | [staging.gitlab.com](https://staging.gitlab.com/users/sign_in) | Pre-production testing | Frequently | [Pseudonymization of prod](https://en.wikipedia.org/wiki/Pseudonymization) | all engineers |

Staging has the same topology as Production and includes the same components, since they share the same [terraform configuration](https://gitlab.com/gitlab-com/gitlab-com-infrastructure/-/tree/master/environments/gstg).

Staging deployments precede production deployments as described in [releases](/handbook/engineering/releases), but Staging is deployed a lot more frequently (at least every few hours, given the build is green). This would be a static environment with an pseudonymized production database. The DB is a snapshot of the production DB (updated only often enough to keep migration times to a minimum).

If you need an account to test QA issues assigned to you on Staging, you may already have an account as Production accounts are brought across to Staging. Otherwise, if you require an account to be created, create an issue in [the access-request project](https://gitlab.com/gitlab-com/team-member-epics/access-requests#pick-a-template) and assign to your manager for review. Requests for access to database and server environments require the approval of your manager as well as that of one of the Infrastructure managers. The same [access-request tracker](https://gitlab.com/gitlab-com/team-member-epics/access-requests#pick-a-template) should be used to request this type of access.

### Pre

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| pre | pre.gitlab.com | GitLab.com pre | Release candidates | Separate and local | SREs |

The pre environment is an environment used for validating release candidates used to prepare final self-managed releases and production patches. It does not have a full production HA topology or a
copy of the production database.

### Release

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| release | release.gitlab.net | Deploying self-managed releases | Final monthly, patch and security releases | Separate and local | SREs |

The release environment is an environment used for validating security releases, self-managed final monthly and patch versions. It does not have a full production HA topology or a
copy of the production database.
### GitLab Team Services

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| version | version.gitlab.com | GitLab support testing | AutoDevops / GKE | GCP CloudSQL | N/A  |
| license | license.gitlab.com | GitLab support testing | AutoDevops / GKE | GCP CloudSQL | N/A  |
| customers | customers.gitlab.com | GitLab support testing | Chef | fixture | SRE and support owner |
| design | design.gitlab.com | Pajamas / Design website | AutoDevops / GKE | N/A | N/A  |
| docs | docs.gitlab.com | GitLab documentation site | GitLab Pages | N/A | N/A SRE |

The GitLab Team Services Environment is a group of services for different sites run for GitLab.  It comprises the sites listed above.  These are not controlled in Terraform and seek to dogfood GitLab features such as AutoDevops or GitLab pages.

### GitLap

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| gitlap | gitlap.com | GitLab support testing | ?? | ?? | SREs |
| dev.gitlap | *.dev.gitlap.com | GitLab support testing | N/A | N/A | SRE and support owner |
| do.gitlap | *.do.gitlap.com | GitLab support testing | N/A | N/A | SRE and support owner |

The GitLap environment is an older domain primarily used for support testing.
All DNS records under `*.dev.gitlap.com` and `*.do.gitlap.com` are controlled
via terraform in the [dev-resources repository](https://gitlab.com/gitlab-com/dev-resources/).

The only important system is `gitlab-runner-builder.gitlap.com` which is used
as a CI runner by the [gitlab-runner project](https://gitlab.com/gitlab-org/gitlab-runner).

### Env-Projects

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| Env-Projects | N/A | Bootstrap GCP | N/A | N/A | N/A |

This environment is used as a genesis project from which all other GCP projects used to
support/manage/host gitlab.com are provisioned. No compute resources are present in the project, and
it is used solely to provide a mechanism for centrally managing GCP projects, provisioning IAM
roles/service accounts for infrastructure deployments within those projects, and controlling which
APIs are enabled for each GCP project via Infrastructure as Code (terraform).

Reference: https://ops.gitlab.net/gitlab-com/gitlab-com-infrastructure/-/tree/master/environments/env-projects

## Self-Managed

| **Name** | **URL** | **Purpose** | **Deploy** | **Database** | **Terminal access** |
| ---- | --- | ------- | ------ | -------- | --------------- |
| Self-Managed | various | Self hosted versions of CE & EE | User specific | User specific | User specific |

These are environments that are run on-premises by the end-user. We have no influence, access or control of these environments.
