---
title: Low-Privilege CI Job Tokens
status: proposed
creation-date: "2024-08-08"
authors: [ "@mokhax" ]
coaches: ["@grzesiek", "@fabiopitino"]
dris: [ "@jrandazzo", "@jayswain" ]
owning-stage: "~govern::authorization"
participating-stages: [ "~devops::verify" ]
toc_hide: true
---

<!-- vale gitlab.FutureTense = NO -->
{{< design-document-header >}}

## Summary

GitLab CI is a Continuous Integration platform widely used to run various jobs,
builds, and pipelines.

Each CI job is provided with a [CI job token](https://docs.gitlab.com/ee/ci/jobs/ci_job_token.html)
(a kind of a security token) that allows it to interact with other GitLab APIs
to accomplish a task. Currently, this token has the same level of access as the
user who triggered the pipeline, which violates the [principle of least privilege (PoLP)](https://csrc.nist.gov/glossary/term/least_privilege).

This proposal outlines the development needed to reduce the access granted by
this token in order to adhere to the principle of least privilege, while
delivering incremental value along the way.

## Motivation

Currently, when a CI job runs, it is provided with a `CI_JOB_TOKEN`, which the
job uses to interact with GitLab resources. This token is tied to the identity
of the user who triggered the CI job, carrying a fixed set of permissions based
on that user's roles and access levels.

When an API request includes a `CI_JOB_TOKEN`, the authorization process checks
the role of the user who triggered the pipeline and restricts access to the API
using CI allowlist rules. However, this method of computing the runtime access
of the `CI_JOB_TOKEN` can unintentionally expose new APIs, increasing the risk
of abuse.

We do support more types of tokens than just a CI job token. Authorization
behavior varies based on the type of token presented, and these differences can
create gaps in enforcement as new API endpoints are introduced or modified.

This proposal introduces a differnt kind of a `CI_JOB_TOKEN`, following a
standardized format we might be able to apply across the various token types in
use today, simplifying the process of authorization.

### Goals

This proposal aims to establish a consistent format for generating a CI job token,
allowing for more granular control over access scopes. In particular, it seeks
to limit the scope of the `CI_JOB_TOKEN` by defining the minimum necessary
permissions for each token.

- The `CI_JOB_TOKEN` should be ephemeral and grant only the minimal required access.
- Permissions should be customizable per CI job.
- The token should support extensions, such as the inclusion of fields like [`organization_id`](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/8527).
- Current `CI_JOB_TOKEN` behavior should be preserved following our breaking
  changes policy.

### Non-Goals

- A [Security Token Service](https://datatracker.ietf.org/doc/html/rfc8693) will not be created.
- Reducing the duration of `CI_JOB_TOKEN` access is not a focus.
- Unifying [PAT scopes](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html#personal-access-token-scopes) with [custom abilities](https://gitlab.com/gitlab-org/gitlab/-/tree/master/ee/config/custom_abilities) will not be pursued.
- [Token types](https://docs.gitlab.com/ee/security/token_overview.html) will not be consolidated into a single token.
- The [permission set](https://gitlab.com/gitlab-com/content-sites/handbook/-/merge_requests/7856) for the `CI_JOB_TOKEN` will not be expanded.
- We will not handle cases where specific projects can override group-level permissions.

## Proposal

This document proposes a change in the handling of `CI_JOB_TOKEN` to enhance
security and fine-tune resource access. Rather than issuing a token with full
access to all resources available to the user who triggered the pipeline, the
new design will generate a token with a reduced permission set, providing access
only to the resources needed for the specific job.

The token's final set of permissions will be the result of the intersection of
the following three models:

- **User Role:** Defines the overall permissions of the user, ensuring proper auditability and supporting different environments or refs, such as protected versus non-protected branches
- **Job Token Scope (allowlist):** Serves as a boundary, specifying the maximum allowable access the token can grant. (This is configured by Maintainer+)
- **Job-Level Permissions (`permissions` key):** Specifies the minimal set of permissions required by the job to operate. (This is configured by Developer+)

To determine the exact level of access granted to a token, we will begin by
identifying the full set of access permissions available to the user who
triggered the pipeline. This set will be progressively narrowed:

1. First, by limiting access to projects that appear on the allowlist.
2. Then, by restricting access based on the permissions defined for each project on the allowlist.
3. Finally, by further refining permissions by using the configuration in `.gitlab-ci.yml` or other sources.

This process of starting with broad permissions and narrowing down through
several layers will ensure that the token's access is minimized to the smallest
necessary set of permissions. Initially, the set of permissions that can be
encoded into the token will be limited to those listed in the
[permissions section](#permissions) of this document. This predefined list
ensures that the `CI_JOB_TOKEN` cannot inadvertently access new API endpoints
unless explicitly permitted.

### Current Authorization Logic

Authorization today typically follows this pattern:

```ruby
can?(user, :ability, resource)
```

This checks whether a user has permission to perform a specific action on a
given resource. While effective, this approach requires repeated access checks
at request time, which can become inefficient and introduce security risks as
APIs evolve.

### Proposed Design

The new design encodes all necessary authorization information directly within
the token.

This design supports generating a `CI_JOB_TOKEN` with a tailored, reduced
permission set to meet the needs of specific jobs.

To ensure the correct permissions are applied to the job, the user must have
the required access during pipeline execution. Additionally, CI allowlist
rules must be configured to manage access to external project resources.

Once these conditions are met, an ephemeral job token will be generated. This
token adheres to the [JWT](https://datatracker.ietf.org/doc/html/rfc7519)
standard and contains a digital signature to ensure its authenticity. When the
`CI_JOB_TOKEN` is presented to the API, the signature will be validated, and the
request will be processed based on the token's `scope` claim, which defines the
permissions it carries.

**This approach allows us to issue tokens with reduced access, even when the user
has broader permissions.**

#### JWT Token Structure

The `CI_JOB_TOKEN` will follow this JWT structure, based on the permission
models discussed. The permission set will be included in the claims specified
inside the JWT.

The structure mentioned below is a proposal, which will be refined / decided on
in the subsequent ADR (Architectural Decision Record):

```json
{
  "sub": "gid://gitlab/Ci/Build/1",
  "exp": 1893456000,
  "scope": {
    "build_read_project": ["gid://gitlab/Project/13083"],
    "update_pipeline": ["gid://gitlab/Project/13083", "gid://gitlab/Ci::Pipeline/1"]
  }
}
```

- **`sub`**: The subject of the token, represented as a [Global ID](https://docs.gitlab.com/ee/api/graphql/#global-ids).
- **`exp`**: Token expiration, usually tied to the maximum duration of the CI job.
- **`scope`**: Permissions associated with the token, bound to specific resources by Global ID.

#### JWT Token Generation

Here's an example of how a JWT token would be generated using this design:

```ruby
jwt = ::Authz::Token.jwt(subject: job, permissions: {
  build_read_project: [job.project],
  update_pipeline: [job.project, job.pipeline]
})
```

How the token is going to be generated exactly will be described in a subsequent
ADR.

#### Integration with Declarative Policy

The system will first check if a JWT token has been provided. If a JWT token is
present. If based on the claims it is evident that the token should not have
access, we will short-circuit the authorization logic, and reject request. If no
JWT token is provided, the system will fall back to using the standard
`Declarative Policy` checks:

```ruby
module Gitlab
  module Allowable
    def can?(user, ability, subject = :global, **opts)
      if ::Authz::Token.provided_for?(user)
        return false unless ::Authz::Token.allowed?(user, ability, subject)
      end

      Ability.allowed?(user, ability, subject, **opts)
    end
  end
end
```

#### Reduced Scope for `CI_JOB_TOKEN`

When generating the `CI_JOB_TOKEN`, permissions are constrained to
those relevant to CI/CD operations, ensuring tighter security and reducing
exposure. The typical scope of a `CI_JOB_TOKEN` includes:

- `:build_create_container_image`
- `:create_deployment`
- `:destroy_container_image`
- `:update_pipeline`
- `:read_build`
- [Other permissions omitted for brevity]

The JWT token encapsulates these permissions for specific actions and resources
associated with the job. If additional access restrictions are defined in the
allowlist or in `.gitlab-ci.yml`, the token's scope is further reduced.

If no permissions for CI job are specified we will use a predefined list of
permissions, required for GitLab CI to work, avoiding having broken features if
someone forgets to specifiy permission by the CI subsystem.

#### Alignment with Declarative Policies

The design of this token generation aligns with the existing policy-driven
authorization model, allowing for a smooth transition while maintaining backward
compatibility. This approach offers a secure, flexible mechanism for generating
CI job tokens tailored to the exact needs of each job, while remaining
extensible for future enhancements.

We still might need to build a mapping layer between internal abilities'
nomenclature and user facing permissions' names.

### Extending the Design

This design can be extended to other token types, such as personal access
tokens, while maintaining the same core authorization logic. However, the rules
governing token generation may vary to accommodate domain-specific needs,
offering flexibility while maintaining security.

### Pros

- Reduces the need to store temporary role-related data in the database.
- Enables concurrent pipelines with independent access controls for different commits.
- Allows enforcement of authorization policies across various services.

### Cons

- Token size may increase due to embedded permissions.

### Permissions

The following permissions were compiled based on the findings from [this investigation](https://gitlab.com/gitlab-org/govern/authorization/team-tasks/-/issues/55).
Further research is required to document the permissions needed to support the built-in [CI/CD components](https://gitlab.com/components).

The exact list of permissions and the keyword used to described them might
change in one of the subsequent ADRs.

#### Containers

| Action                                                                                                                                      | Permission(s)                                          |
| --------                                                                                                                                    | -------------                                          |
| [Delete a registry repository tag](https://docs.gitlab.com/ee/api/container_registry.html#delete-a-registry-repository-tag)                 | `:admin_container_image` OR `:destroy_container_image` |
| [Delete a registry repository tags in bulk](https://docs.gitlab.com/ee/api/container_registry.html#delete-registry-repository-tags-in-bulk) | `:admin_container_image` OR `:destroy_container_image` |
| [Delete registry repository](https://docs.gitlab.com/ee/api/container_registry.html#delete-registry-repository)                             | `:admin_container_image` OR `:destroy_container_image` |
| [Get details of a registry repository tag](https://docs.gitlab.com/ee/api/container_registry.html#get-details-of-a-registry-repository-tag) | `:admin_container_image` OR `:read_container_image`    |
| [List registry repositories](https://docs.gitlab.com/ee/api/container_registry.html#list-registry-repository-tags)                          | `:admin_container_image` OR `:read_container_image`    |
| [List registry repository tags](https://docs.gitlab.com/ee/api/container_registry.html#list-registry-repository-tags)                       | `:admin_container_image` OR `:read_container_image`    |

#### Deployments

| Action                                                                                                       | Permission(s)                               |
| --------                                                                                                     | -------------                               |
| [List project deployments](https://docs.gitlab.com/ee/api/deployments.html#list-project-deployments)         | `:read_deployment`                          |
| [Get a specific deployment](https://docs.gitlab.com/ee/api/deployments.html#get-a-specific-deployment)       | `:read_deployment`                          |
| [Create a deployment](https://docs.gitlab.com/ee/api/deployments.html#create-a-deployment)                   | `:read_deployment` AND `:create_deployment` |
| [Update a deployment](https://docs.gitlab.com/ee/api/deployments.html#update-a-deployment)                   | `:read_deployment` AND `:update_deployment` |
| [Delete a specific deployment](https://docs.gitlab.com/ee/api/deployments.html#delete-a-specific-deployment) | `:destroy_deployment`                       |

#### Environments

| Action                                                                                                                      | Permission(s)                                  |
| --------                                                                                                                    | -------------                                  |
| [List environments](https://docs.gitlab.com/ee/api/environments.html#list-environments)                                     | `:read_environment`                            |
| [Get a specific environment](https://docs.gitlab.com/ee/api/environments.html#get-a-specific-environment)                   | `:read_environment`                            |
| [Create a new environment](https://docs.gitlab.com/ee/api/environments.html#create-a-new-environment)                       | `:create_environment`                          |
| [Update an existing environment](https://docs.gitlab.com/ee/api/environments.html#update-an-existing-environment)           | `:update_environment`                          |
| [Delete an environment](https://docs.gitlab.com/ee/api/environments.html#delete-an-environment)                             | `:read_environment` AND `:destroy_environment` |
| [Delete multiple stopped review apps](https://docs.gitlab.com/ee/api/environments.html#delete-multiple-stopped-review-apps) | `:read_environment` AND `:destroy_environment` |
| [Stop an environment](https://docs.gitlab.com/ee/api/environments.html#stop-an-environment)                                 | `:read_environment` AND `:stop_environment`    |
| [Stop stale environments](https://docs.gitlab.com/ee/api/environments.html#stop-stale-environments)                         | `:read_environment` AND `:stop_environment`    |

#### Jobs

| Action                                                                                                                                                                         | Permission(s)                           |
| --------                                                                                                                                                                       | -------------                           |
| [Get job token's job](https://docs.gitlab.com/ee/api/jobs.html#get-job-tokens-job)                                                                                             | `:read_build`                           |
| [Get GitLab agent by `CI_JOB_TOKEN`](https://docs.gitlab.com/ee/api/jobs.html#get-gitlab-agent-by-ci_job_token)                                                                | `:read_build`                           |
| [Update pipeline metadata](https://docs.gitlab.com/ee/api/pipelines.html#update-pipeline-metadata)                                                                             | `:update_pipeline`                      |
| [Get job artifacts](https://docs.gitlab.com/ee/api/job_artifacts.html#get-job-artifacts)                                                                                       | `:read_build` AND `:read_job_artifacts` |
| [Download the artifacts archive](https://docs.gitlab.com/ee/api/job_artifacts.html#download-the-artifacts-archive)                                                             | `:read_build` AND `:read_job_artifacts` |
| [Download a single artifact file by job ID](https://docs.gitlab.com/ee/api/job_artifacts.html#download-a-single-artifact-file-by-job-id)                                       | `:read_build` AND `:read_job_artifacts` |
| [Download a single artifact file from a specific tag or branch](https://docs.gitlab.com/ee/api/job_artifacts.html#download-a-single-artifact-file-from-specific-tag-or-branch) | `:read_build` AND `:read_job_artifacts` |

#### Packages

| Route                                                                                             | Permission(s)                         |
| -----                                                                                             | -------------                         |
| [List packages](https://docs.gitlab.com/ee/api/packages.html#for-a-project)                       | `:read_package`                       |
| [Get a project package](https://docs.gitlab.com/ee/api/packages.html#for-a-project)               | `:read_package`                       |
| [List package files](https://docs.gitlab.com/ee/api/packages.html#list-package-files)             | `:read_package`                       |
| [List package pipelines](https://docs.gitlab.com/ee/api/packages.html#list-package-pipelines)     | `:read_package` AND `:read_pipeline`  |
| [Delete a project package](https://docs.gitlab.com/ee/api/packages.html#delete-a-project-package) | `:destroy_package`                    |
| [Delete a package file](https://docs.gitlab.com/ee/api/packages.html#delete-a-package-file)       | `:destroy_package`                    |
| PUT `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name/authorize`  | `:read_project` AND `:create_package` |
| GET `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name`            | `:read_project` AND `:read_package`   |
| PUT `/projects/:id/packages/generic/:package_name/*package_version/(*path/):file_name`            | `:read_project`                       |

**Maven**

| Permission(s)                                                                                                                                     | Route                                 |
| -------------                                                                                                                                     | -----                                 |
| [Download a package file at the instance level](https://docs.gitlab.com/ee/api/packages/maven.html#download-a-package-file-at-the-instance-level) | `:read_package`                       |
| [Download a package file at the group level](https://docs.gitlab.com/ee/api/packages/maven.html#download-a-package-file-at-the-group-level)       | `:read_group` AND `:read_package`     |
| [Download a package file at the project level](https://docs.gitlab.com/ee/api/packages/maven.html#download-a-package-file-at-the-project-level)   | `:read_project` AND `:read_package`   |
| [Upload a package file](https://docs.gitlab.com/ee/api/packages/maven.html#upload-a-package-file)                                                 | `:read_project` AND `:create_package` |
| PUT `/projects/:id/packages/maven/*path/:file_name/authorize`                                                                                     | `:read_project` AND `:create_package` |

**PyPI**

| Permission(s)                                                                                                                      | Route                                 |
| -------------                                                                                                                      | -----                                 |
| [Download a package file from a group](https://docs.gitlab.com/ee/api/packages/pypi.html#download-a-package-file-from-a-group)     | `:read_group` AND `:read_package`     |
| [Group-level simple API index](https://docs.gitlab.com/ee/api/packages/pypi.html#group-level-simple-api-index)                     | `:read_group` AND `:read_package`     |
| [Group level simple API entry point](https://docs.gitlab.com/ee/api/packages/pypi.html#group-level-simple-api-entry-point)         | `:read_group` AND `:read_package`     |
| [Download a package file from a project](https://docs.gitlab.com/ee/api/packages/pypi.html#download-a-package-file-from-a-project) | `:read_project` AND `:read_package`   |
| [Project-level simple API index](https://docs.gitlab.com/ee/api/packages/pypi.html#project-level-simple-api-index)                 | `:read_project` AND `:read_package`   |
| [Project-level simple API entry point](https://docs.gitlab.com/ee/api/packages/pypi.html#project-level-simple-api-entry-point)     | `:read_project` AND `:read_package`   |
| [Upload a package](https://docs.gitlab.com/ee/api/packages/pypi.html#upload-a-package)                                             | `:read_project` AND `:create_package` |
| POST `/projects/:id/-/packages/pypi/authorize`                                                                                     | `:read_project` AND `:create_package` |

**Composer**

| Permission(s)                                                                                            | Route             |
| -------------                                                                                            | -----             |
| [Base repository request](https://docs.gitlab.com/ee/api/packages/composer.html#base-repository-request) | `:read_group`     |
| [V1 packages list](https://docs.gitlab.com/ee/api/packages/composer.html#v1-packages-list)               | `:read_group`     |
| [V2 Package Metadata](https://docs.gitlab.com/ee/api/packages/composer.html#v2-package-metadata)         | `:read_group`     |
| [Create a package](https://docs.gitlab.com/ee/api/packages/composer.html#create-a-package)               | `:create_package` |

**NPM**

| Permission(s)                                                                                                    | Route              |
| -------------                                                                                                    | -----              |
| [Project-level: Download a package](https://docs.gitlab.com/ee/api/packages/npm.html#download-a-package)         | `:read_package`    |
| [Project-level: Upload a package](https://docs.gitlab.com/ee/api/packages/npm.html#upload-a-package-file)        | `:create_package`  |
| [Group-level: Package Metadata](https://docs.gitlab.com/ee/api/packages/npm.html#metadata)                       | `:read_package`    |
| [Project-level: Package Metadata](https://docs.gitlab.com/ee/api/packages/npm.html#metadata)                     | `:read_package`    |
| [Group-level: List tags](https://docs.gitlab.com/ee/api/packages/npm.html#list-tags)                             | `:read_package`    |
| [Project-level: List tags](https://docs.gitlab.com/ee/api/packages/npm.html#list-tags)                           | `:read_package`    |
| [Group-level: Create or update a tag](https://docs.gitlab.com/ee/api/packages/npm.html#create-or-update-a-tag)   | `:create_package`  |
| [Project-level: Create or update a tag](https://docs.gitlab.com/ee/api/packages/npm.html#create-or-update-a-tag) | `:create_package`  |
| [Group-level: Delete a tag](https://docs.gitlab.com/ee/api/packages/npm.html#delete-a-tag)                       | `:destroy_package` |
| [Group-level: Delete a tag](https://docs.gitlab.com/ee/api/packages/npm.html#delete-a-tag)                       | `:destroy_package` |
| POST `/groups/:id/-/packages/npm/-/npm/v1/security/advisories/bulk`                                              | `:read_package`    |
| POST `/groups/:id/-/packages/npm/-/npm/v1/security/audits/quick`                                                 | `:read_package`    |
| POST `/projects/:id/-/packages/npm/-/npm/v1/security/advisories/bulk`                                            | `:read_package`    |
| POST `/projects/:id/-/packages/npm/-/npm/v1/security/audits/quick`                                               | `:read_package`    |

**Go Proxy**

| Permission(s)                                                                                          | Route           |
| -------------                                                                                          | -----           |
| [List packages](https://docs.gitlab.com/ee/api/packages/go_proxy.html#list)                            | `:read_package` |
| [Version metadata](https://docs.gitlab.com/ee/api/packages/go_proxy.html#version-metadata)             | `:read_package` |
| [Download module file](https://docs.gitlab.com/ee/api/packages/go_proxy.html#download-module-file)     | `:read_package` |
| [Download module source](https://docs.gitlab.com/ee/api/packages/go_proxy.html#download-module-source) | `:read_package` |

#### Releases

| Action                                                                                            | Permission(s)      |
| --------                                                                                          | -------------      |
| [List links of a release](https://docs.gitlab.com/ee/api/releases/index.html)                     | `:read_release`    |
| [Get a release link](https://docs.gitlab.com/ee/api/releases/links.html#get-a-release-link)       | `:read_release`    |
| [Create a release link](https://docs.gitlab.com/ee/api/releases/links.html#create-a-release-link) | `:create_release`  |
| [Update a release link](https://docs.gitlab.com/ee/api/releases/links.html#update-a-release-link) | `:update_release`  |
| [Delete a release link](https://docs.gitlab.com/ee/api/releases/links.html#delete-a-release-link) | `:destroy_release` |

#### Secure Files

| Action                                                                                                  | Permission(s)                                 |
| --------                                                                                                | -------------                                 |
| [List project secure files](https://docs.gitlab.com/ee/api/secure_files.html#list-project-secure-files) | `:read_secure_files` OR `:admin_secure_files` |
| [Show secure file details](https://docs.gitlab.com/ee/api/secure_files.html#show-secure-file-details)   | `:read_secure_files` OR `:admin_secure_files` |
| [Create secure file](https://docs.gitlab.com/ee/api/secure_files.html#create-secure-file)               | `:admin_secure_files`                         |
| [Download secure file](https://docs.gitlab.com/ee/api/secure_files.html#download-secure-file)           | `:read_secure_files` OR `:admin_secure_files` |
| [Remove a secure file](https://docs.gitlab.com/ee/api/secure_files.html#remove-secure-file)             | `:admin_secure_files`                         |

#### Terraform

| Action                                                                                                                                                            | Permission(s)                                       |
| --------                                                                                                                                                          | -------------                                       |
| [Retrieve individual Terraform state version](https://docs.gitlab.com/ee/user/infrastructure/iac/terraform_state.html#manage-individual-terraform-state-versions) | `:read_terraform_state` OR `:admin_terraform_state` |
| [Remove individual Terraform state version](https://docs.gitlab.com/ee/user/infrastructure/iac/terraform_state.html#manage-individual-terraform-state-versions)   | `:admin_terraform_state`                            |
| [Remove a state file](https://docs.gitlab.com/ee/user/infrastructure/iac/terraform_state.html#remove-a-state-file-by-using-the-api)                               | `:admin_terraform_state`                            |
| Retrieve a state file                                                                                                                                             | `:read_terraform_state` OR `:admin_terraform_state` |
| Create a state file                                                                                                                                               | `:admin_terraform_state`                            |
| Create a lock file                                                                                                                                                | `:admin_terraform_state`                            |
| Delete a lock file                                                                                                                                                | `:admin_terraform_state`                            |

#### Internal

| Action                                                | Permission(s)                 |
| --------                                              | -------------                 |
| POST `/internal/dast/site_validations/:id/transition` | `:create_on_demand_dast_scan` |

## Alternative Solutions

- Build a Security Token Service
  - Pros: Standards compliant solution
  - Cons: Additional up front effort and maintenance is required before we can
    realize any value.
- Migrating to the [GitLab OAuth2 provider](https://docs.gitlab.com/ee/api/oauth2.html)
  - Pros: Standards compliant solution
  - Cons: More effort is required up front before any value can be realized
- Do nothing
  - Pros: No work required
  - Cons: See the Motivation section of this document for details
