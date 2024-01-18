---
title: "Identity and Access Management v3"
description: "The Security Identity team is leading the technical strategy and automation implementation of next-generation identity and access management (IAM), role-based access control (RBAC), and administrative access controls for internal GitLab systems, cloud infrastructure, and tech stack applications. The Identity Platform is a collection of microservices and tools that allow us to fetch IAM/RBAC data using each vendor's API, and use GitOps practices to handle state management for provisioning and deprovisioning users and roles across our tech stack applications that have complex hierarchy and permissions that are not supported by Identity Governance vendors. Each of the concepts were invented to help us standardize our IAM/RBAC architecture as we build homegrown automation."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

{{% alert title="Not Live Yet" color="warning" %}}
You are viewing a preview of documentation for the future state of GitLab Identity v3 (mid 2024). See the <a href="https://handbook.gitlab.com/handbook/security/access-management-policy">Access Management Policy</a> for the GitLab Identity v2 current state with baseline entitlements and access requests. See the roadmap in the <a href="https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/roadmap?state=all&sort=start_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&group_path=gitlab-com/gl-security/identity/eng&progress=WEIGHT&show_progress=true&show_milestones=false&milestones_type=ALL&show_labels=true">epics gantt chart</a>.
{{% /alert %}}

{{% alert title="Quick Reference User Guides" color="info" %}}
This page focuses on the architecture and documentation of our Identity Platform and Security Program. If you are looking to get access an application or infrastructure, see the <a href="/handbook/security/identity/guide/user">Team Member User Guide</a>. To manage access for team members that report to you, see the <a href="/handbook/security/identity/guide/manager">Manager User Guide</a>. You can scroll to the bottom of this page to see the other user guides.
{{% /alert %}}

## Identity Team Functions

The [Identity Engineering](/handbook/security/threat-management/identity) team was formed in the [Security Threat Management](/handbook/security/threat-management) sub-department with a cross-department realignment on 2023-12-01 to lead the design and implementation of our next-generation of identity and access management framework and program at GitLab that has been branded as [Identity v3](#gitlab-identity-v3) that will be released [iteratively throughout 2024](https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/roadmap?state=all&sort=start_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&group_path=gitlab-com/gl-security/identity/eng&progress=WEIGHT&show_progress=true&show_milestones=false&milestones_type=ALL&show_labels=true).

The Identity Team has three functional specialties and collaborates cross-functionally with our stable counterparts.

- Identity Engineering
    - [Identity Platform Engineering](#platform-engineering)
    - [Identity Infrastructure Engineering](#infrastructure-engineering)
- Identity Operations
    - [Identity Operations](#identity-operations)
- [Counterparts](/handbook/security/identity/counterparts)

## Mission

GitLab is one of the stewards of the world’s source code and intellectual property. Our mission is to secure access to GitLab's internal systems to ensure that customer and product data is protected and industry trust is preserved.

We work cross-functionally to define infrastructure architecture, IAM/RBAC standards, and build automation to streamline access management across all internal control plane kingdoms.

### Open Source

Although the risks that we need to solve are confidential, we believe in open sourcing the best practice documentation and tools to solve those risks after we have mitigated the risk to give back to the community and inspire other companies.

**We are stronger and more secure together.**

All of our open source projects can be explored at [https://gitlab.com/gitlab-identity](https://gitlab.com/gitlab-identity).

## Tech Stack Kingdoms

We have refactored our tech stack into **Identity Kingdoms** (analogous to a realm) to provide separation of concerns between Business, Cloud, and Product (SaaS and Dedicated) unique needs, particularly with administrative control planes and least privilege configuration. This allows us to create automation and policies specific to each kingdom's compliance requirements to enable the respective teams to operate efficiently within our top-level architecture and guardrails.

Learn more on the [kingdoms](/handbook/security/identity/kingdoms) handbook page.

## Trust Landscape DRIs

The Security team focuses on customer, compliance, and product trust, while the Business Technology and IT team focuses on corporate and financial trust.

- **Administrator Trust:** Security Department - Identity Ops
- **Automation Trust:** Security Department - Identity Engineering
- **Boundary Trust:** Security Department - Identity Engineering
- **Compliance Trust:** Security Department - Commercial Compliance Team
- **Customer Trust:** Engineering, Product, and Security division
- **Financial Trust:** Business Technology/IT Department
- **Product Feature Trust:** Development Department and Product Management
- **Product Reliability Trust:** Infrastructure Department

## Technological Trust

In addition to maintaining human confidence, we also need to ensure supply chain confidence and that no single vendor breach can compromise the integrity of our architecture, particularly the boundaries that we refer to as castle walls. By using a defense-in-depth approach, we are able to minimize the external attack surface.

See our [boundaries](/handbook/security/identity/boundaries) to learn more.

## Roadmap

As any company grows, they go through phases of growth with many organic iterations throughout the journey. GitLab is currently outgrowing Identity v2 and is building our Identity v3 program.

### GitLab Identity v1

GitLab Identity v1 was managed using Tech Ops practices by the Infrastructure and People Operations team prior to 2018.

### GitLab Identity v2

GitLab Identity v2 is what we do today and have been doing since 2018 with [baseline entitlements](/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/baseline-entitlements/) and [access requests](/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/). See the [Access Management Policy](/handbook/security/access-management-policy/) to learn more.

The processes that we do today meets audit and compliance requirements, however the processes are mostly manual that results in internal inefficiency. It takes a lot of labor hours to manage onboarding, access requests, access reviews, and offboarding processes.

See the [FY24-Q4 State of Identity](https://internal.gitlab.com/handbook/security/identity/state/fy24-q4) in the internal handbook to get more context and valuable insights into the current architecture, challenges, and risks that we are mitigating. All of the documentation on the public handbook has been sanitized with an ideal future state that we are building.

### GitLab Identity v3

{{% alert title="Early Development" color="warning" %}}
We are in the architecture and early engineering incubation phase. Please continue to use existing Identity v2 processes (business as usual) for all requests through mid-2024.
{{% /alert %}}

As we look ahead, we want to focus on a North Star vision that systems are provisioned automatically by systems, not manually by people. With the introduction of Identity Roles and Identity Groups, we can reduce the number of ad-hoc access requests by using predefined policies and automated provisioning based on role-based access control rather than named user access control.

GitLab Identity v3 is where we want to be in FY25-2H (mid-late 2024) with a pseudo-greenfield approach to automate all of our policies and as much of our approvals, provisioning, and access reviews as possible.

Since GitLab is now a public company and the security threat landscape has evolved, the Security department is investing in in-house infrastructure and software engineering to build the automation and tools that we need to meet the challenges of the future, make GitLab easier to do business with internally, and unilaterally address our IAM and RBAC risks with a holistic approach instead of small iterations.

## Platform Engineering

The GitLab Identity Security team has CI/CD script and fullstack development skills to build our own open source policy and provisioning automation for our IAM and RBAC needs.

You may already use [GitLab Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox) that is powered by HackyStack. We are refactoring HackyStack to become a component of the Identity Platform.

We are in the early incubation stage of building the [Identity Platform](/handbook/security/identity/platform) that is powered by [accessctl](https://gitlab.com/gitlab-identity/accessctl), a new open source project. As our Identity Platform matures throughout 2024, we will add documentation for the community to adopt our platform and best practices.

- **Slack Channel:** `#security-identity-eng`
- **Slack Tag:** `@security-identity-eng`
- **GitLab Tag:** `@gitlab-com/gl-security/identity/eng`
- **Epics:** [gitlab.com/gl-security/identity/eng](https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/epics)
- **Issue Tracker:** [gitlab.com/gl-security/identity/eng/issue-tracker](https://gitlab.com/gitlab-com/gl-security/identity/eng/issue-tracker/-/issues)
- **Escalation DRI:** Jeff Martin


## Infrastructure Engineering

The Identity Infrastructure team is focused on our top-level cloud provider infrastructure organization-level management for AWS and GCP in collaboration with the [Infrastructure Security](/handbook/security/security-engineering/infrastructure-security) team.

We build self-service tools for users to create their own AWS accounts and GCP projects and provide castle wall hardening.

Each team that deploys infrastructure resources is responsible for managing their own infrastructure workloads and DevOps operations using industry best practices. In other words, the Security team creates the scaffolding for your castle and provides hardened castle walls, while your team is responsible for anything you build inside the castle walls.

See the [Identity Infrastructure](/handbook/security/identity/infrastructure) handbook page to learn more.

- **Slack Channel:** `#security-identity-ops`
- **Slack Tag:** `@security-identity-ops`
- **GitLab Tag:** `@gitlab-com/gl-security/identity/ops`
- **Epics:** [gitlab.com/gl-security/identity/eng](https://gitlab.com/groups/gitlab-com/gl-security/identity/ops/-/epics)
- **Issue Tracker:** [gitlab.com/gl-security/identity/eng/issue-tracker](https://gitlab.com/gitlab-com/gl-security/identity/ops/issue-tracker/-/issues)
- **Escalation DRI:** Jeff Martin or Vlad Stoianovici

## Identity Operations

When we operationalize GitLab Identity v3 in mid-2024, we will have cross-functional team members from IT Operations, People Operations, and Security Operations teams that will perform day-to-day administration of the Identity Platform and handle business and user requests.

In the interim, the Identity Platform Engineering and Identity Infrastructure team members provide coverage in collaboration with our [counterparts](/handbook/security/identity/counterparts).

- **Slack Channel:** `#security-identity-ops`
- **Slack Tag:** `@security-identity-ops`
- **GitLab Tag:** `@gitlab-com/gl-security/identity/ops`
- **Epics:** [gitlab.com/gl-security/identity/ops](https://gitlab.com/groups/gitlab-com/gl-security/identity/ops/-/epics)
- **Issue Tracker:** [gitlab.com/gl-security/identity/ops/issue-tracker](https://gitlab.com/gitlab-com/gl-security/identity/ops/issue-tracker/-/issues)
- **Escalation DRI:** Jeff Martin

## Transparency

Due to the nature of the risks that we mitigate, our roadmap is only visible to internal team members in our [epics roadmap](https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/roadmap?state=all&sort=start_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&group_path=gitlab-com/gl-security/identity/eng&progress=WEIGHT&show_progress=true&show_milestones=false&milestones_type=ALL&show_labels=true).

You can learn more about our progress in our [Identity Engineering epics](https://gitlab.com/groups/gitlab-com/gl-security/identity/eng/-/epics) and [Identity Engineering issues](https://gitlab.com/gitlab-com/gl-security/identity/eng/issue-tracker/-/issues).

We use public issue trackers for platform feature requests, however all issues related to GitLab's business, data, infrastructure, and risks are created and managed in the [Identity Engineering (internal) issue tracker](https://gitlab.com/gitlab-com/gl-security/identity/eng/issue-tracker/-/issues) and are linked in open source project merge requests (without disclosing title or contents) after the risk has been mitigated and merged.

After a risk has been mitigated and we believe that we have the latest best practices in place, we publish the documentation in our public handbook, internal handbook, and/or in the Access Control documentation.
