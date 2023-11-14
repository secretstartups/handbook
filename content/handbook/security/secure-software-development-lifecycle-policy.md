---
title: "Secure Software Development Lifecycle Policy"
---

{{% alert title="This is a Controlled Document" color="danger" %}}
Inline with GitLab's regulatory obligations, changes to [controlled documents]({{< ref "controlled-document-procedure" >}}) must be approved or merged by a code owner. All contributions are welcome and encouraged.
{{% /alert %}}

## Purpose

Secure software development is critical to developing and maintaining a safe and trusted application. This policy outlines the general components of GitLab's software development lifecycle.

## Scope

This policy applies to anyone developing code at GitLab in support of GitLab's production applications.

## Roles and responsibilities

| Role  | Responsibility |
|-----------|-----------|
| Security Governance | Responsible for creating and implementing this policy |
| Developer team members | Responsible for execution of the policy statements |

## Policy

### Inception

This stage occurs across different mediums depending upon each team's individual processes.

During this stage, the following information is established:

- business requirements are identified
- scope is defined
- a detailed project plan with milestones and deliverables is created

### Analysis

During the analysis stage, requirements are gathered from stakeholders relevant to each project.

Identified requirements are documented in the project management tool and made available for review and approval by relevant stakeholders.

### Design

During the design stage, design documents are captured in the project management tool as version controlled documents.

Design documents must be approved by relevant stakeholders prior to being merged.

### Development and Testing

Software development at GitLab is accomplished using industry standard development practices.

Software development must be accomplished using GitLab's development platform in a version controlled manner.

[Code review guidelines](https://about.gitlab.com/handbook/engineering/workflow/code-review/) must be adhered to when developing code at GitLab.

Development work must undergo testing and approval prior to deployment to production. This includes configuration changes and other related changes that may not be considered "development" work.

### Deployment

Deployment of software at GitLab must adhere to all defined staging, testing, release, and rollback processes.

After any necessary verification in production is completed, details of changes are pushed to the releases page to be communicated as part of the relevant release notes.

### Maintenance

GitLab continuously monitors the state and stability of its platforms.

Maintenance of GitLab's platform is conducted in accordance with [GitLab's release and maintenance policy](https://docs.gitlab.com/ee/policy/maintenance.html)

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process]({{< ref "_index.md#information-security-policy-exception-management-process" >}}).
