---
title: "Software Development Lifecycle Policy"
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

### Planning

The planning stage occurs during 1:1s, weekly sprint planning meetings, and Slack conversations. During this stage, we gather the following information:

Who is requesting the automation project?
What are they requesting?
Why are they requesting this project?
What efficiencies will be gained?
How much time will be saved per team member, per week?
When is this project expected to be completed by?
How is the automation expected to function?
As a result of the planning stage, we determine the feasibility of a particular project. Accepted projects are promoted to Epics.

### Analysis

During the analysis stage, we continue to gather details to support accepted projects. Projects are broken down into individual components to support an agile approach to development. Those individual components are represented as child issues under the project Epic.

Each child issue is assigned a weight. The total weight of the Epic allows us to gauge the level of effort required to accomplish a particular project.

### Design

During the design stage, we aim to accomplish the following:

Produce a design for the minimum viable product (MVP) solution that will satisfy the automation project's requirements.
Design components that are modular
Design components that can be reused to accelerate future development projects

### Development and Testing

During the this stage, code is written to satisfy the requirements of a particular project. Development is accomplished in an iterative manner through many small changes. Project stakeholders may be consulted to ensure continued alignment with project expectations as code is being written.

Security Assurance Automation Engineers run tests on their code to identify bugs, vulnerabilities, and usability conflicts.

### Implementation

During this stage, code is moved from the Sec Auto Dev pipeline into the Sec Auto Live pipeline. If an automation request requires web hosting or a server, the automation will live in the Sec Auto Live private GCP instance.

Once the code is ready for final review, a team member from Security Assurance or Security Automation will review the code and merge the branch. The project is moved to a "Done" state when the solution is operating in an automated private pipeline.

### Maintenance

Routine and break-fix maintenance of automated controls and processes is performed by Security Assurance Automation Engineers for automation related to the sub-department. Pro-active requests for maintenance can submitted through the Security Assurance Automation project.

Maintenance tasks will be tracked via GitLab Issues similar to all other automation tasks.

## Exceptions

Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process]({{< ref "_index.md#information-security-policy-exception-management-process" >}}).

## References

