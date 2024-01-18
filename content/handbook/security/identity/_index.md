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

GitLab is one of the stewards of the world’s source code and intellectual property. Our mission is to ensure that customer and product data is protected and industry trust is preserved.

Our work focuses on restricting and securing access to GitLab's internal data and systems based on "need to know" and least privilege security principles to prevent data leakage or data loss. 

We work cross-functionally to define infrastructure architecture, IAM/RBAC standards, and build automation to streamline access management across all internal control plane kingdoms.

### Open Source

Although the risks that we need to solve are confidential, we believe in open sourcing the best practice documentation and tools to solve those risks after we have mitigated the risk to give back to the community and inspire other companies.

**We are stronger and more secure together.**

Our Identity Platform open source projects can be explored at [https://gitlab.com/gitlab-identity](https://gitlab.com/gitlab-identity). Our team members also maintain side project packages that are useful dependencies and development helpers at [https://gitlab.com/provisionesta](https://gitlab.com/provisionesta).

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

#### Role Based Access Control (RBAC)

We are introducing improved role-based access control with [Identity Roles and Identity Groups](https://handbook.gitlab.com/handbook/security/identity/platform/#terminology) so we can reduce the number of ad-hoc access requests by using predefined policies and automated provisioning based on role-based access control rather than named user access control and a high volume of ad-hoc access requests. This is the next generation of job families with a refined schema for IAM and RBAC.

#### Identity Governance (IGA) Implementation

Identity Governance and Administration (IGA) vendor products are typically focused on a compliance lens, with the goal of managing the approval process when a user requests access to an application, and providing a UI for compliance team members to perform user access review audits for existing users that have access to an application.

We are in the early stages of implementing Okta's IGA platform. You can learn more in the [internal slide deck](https://docs.google.com/presentation/d/1B-H2YFm6nLCsGIHXg6_Nh_oss-0mQ-CnYuHoMM5n2WE/edit) and materials in the [Google Drive](https://drive.google.com/drive/folders/18VWrD-dEZOYeLi6t01DMko6VcnCa5CQu) folder. You can also see additional feedback from team members during the RFP process in [it/engops#289](https://gitlab.com/gitlab-com/it/engops/issue-tracker/-/issues/289).

The high level goal is that Okta IGA will provide an improved user experience for users to request access to Okta applications with a Web UI and Slack Bot that are not managed by baseline entitlements, and has helpful compliance backend UI features for performing user access reviews.

#### Custom Code

The Security department is leveraging vendors that specialize in this (ex. Okta, IGA solution, etc.), however no SaaS vendor has all of the features that we need. Due to the existential and security risks associated with IAM/RBAC, the Identity Security team is investing in in-house infrastructure and software engineering to build the automation and tools that we need for last mile automation to meet the challenges of the future, make GitLab easier to do business with internally, and unilaterally address our IAM and RBAC risks with a holistic approach by building an [Identity Platform](/handbook/security/identity/platform). It is not an all encompassing solution, it is a well architected library of scripts that allows us to use a modular approach to add scripts in that fill the gaps of what the vendors can’t solve.

You can learn more about on the [Identity Platform handbook page](/handbook/security/identity/platform). The summary is that this is a collection of scripts that use [CI/CD pipeline jobs](/handbook/security/identity/platform/#cicd-pipeline-jobs) to parse [YAML policy files](https://gitlab.com/gitlab-com/gl-security/identity/data-poc/policies/-/tree/main/role/policies?ref_type=heads), generate [user manifests](https://gitlab.com/gitlab-com/gl-security/identity/data-poc/manifests/-/tree/main/accessctl/manifests/role?ref_type=heads), and use the [REST API](/handbook/security/identity/platform/#group-user-sync) for each respective vendor to check if the user belongs to the group, should be removed from the group, and sync the group members against our policy. See the full data flow for more details.

We will be using [GitOps](https://handbook.gitlab.com/handbook/security/identity/gitops/) (aka. Terraform and GitLab CI/CD pipelines) approach for assigning groups to [Okta applications with state management](https://handbook.gitlab.com/handbook/security/identity/gitops/okta/).

#### Complex Systems

We have identified several key systems and applications that need our focus and investment to optimize Identity Security. We are focusing on a top-down approach to manage the admin control plane and work down, with consideration for including tech stack systems that are causing a lot of business inefficiencies.

We describe these as the “complex” systems that don’t have easy button provisioning that 3rd party vendors can easily manage. We have to build custom automation using Terraform or REST API calls to handle the complex systems.

- (New) Admin Control Plane with GitOps and Admin Accounts
- GitLab SaaS Instance Admins
- Google Cloud
- Google Workspace Groups
- GitLab SaaS Groups and Members (ex. `gitlab-com`, `gitlab-org`, `gitlab-*`, `gl-*` namespaces)
- Okta Group Membership Policies/Rules (used by Okta Applications)

We are also closely involved with processes and systems that cause the most inefficiency or pain and suffering.

- Onboarding issues and access requests
- Baseline entitlement architecture and automation
- Offboarding issues and access deprovisioning
- Okta architecture
- Google Workspace architecture
- 1Password administration
- Google Cloud architecture

For more details, see the related handbook pages, reach out to `#security-identity-ops`` with questions, or schedule a call with Jeff Martin.

## Platform Engineering

The GitLab Identity Security team has CI/CD script and fullstack development skills to build our own open source policy and provisioning automation for our IAM and RBAC needs to supplement our vendors and provide last mile automation "plumbing".

You may already use [GitLab Sandbox Cloud](/handbook/infrastructure-standards/realms/sandbox) that is powered by HackyStack. We are refactoring HackyStack to become a component of the Identity Platform.

We are in the early incubation stage of building the [Identity Platform](/handbook/security/identity/platform) that is powered by [accessctl](https://gitlab.com/gitlab-identity/accessctl), a new open source project. As our Identity Platform matures throughout 2024, we will add documentation for the community to adopt our platform and best practices.

### Automation Options

This is a low context simplified explanation.

#### Okta Authentication

A large number of our tech stack applications have **authentication** federated by Okta single-sign on (SSO) using any combination of SCIM, SAML, and OIDC protocols.

It is important to keep in mind that Okta is not an **authorization** platform. In other words, when you sign in, the application can see your name, email address, and profile attributes or a list of group names that you are a member of, however Okta cannot provision/grant you roles or permissions on the application itself.

Most applications have “simple” provisioning that requires adding the user and they are assigned baseline permissions and users do not need additional permissions. For discussion purposes, this covers ~80% of our applications.

A few applications have code logic with their Okta authentication integration that allows you to specify which user profile attributes or group names should be used to grant access to additional roles and permissions inside of the application, however we rarely see this functionality in applications. Most applications provide a UI that lets you manually assign a role to the existing user.

#### Authorization Automation

For ~20% of applications that require “resource” or “role” provisioning, we have to use no-code or our own scripts to achieve this. There are no features in Okta or other Identity solutions that offer these features. This requires using the vendor’s REST API with our own scripts to call endpoints respectively. Any integrations that you see advertised are usually Professional Services custom integrations that their engineers wrote scripts for.

You can see the GitLab product [Members API](https://docs.gitlab.com/ee/api/members.html) endpoint as an example. We can force users to sign in with Okta, however Okta cannot automate which groups and projects the user has access to or the role/permission level for each of those groups or projects.

#### No Code Automation

You may have heard of no code solutions like Okta Workflows, Tines, Workato, Zapier, etc that can solve these needs. While they work reasonably well in simple use cases for users who do not have code experience, they are not the tool for the job in all cases, particularly complex ones.

Remember that no-code workflows are point-to-point and are not usually part of a shared ecosystem that might provide economies of scale. In other words, you can’t call a function/method from another class.

With any WYSIWYG tool, you cannot use expression language syntax natively like you can when writing a few lines of code, so you have to catch data, pull an attribute, then plug that string attribute into the next function. The end result is that no-code workflows become overly complicated and can become 50 steps that can be accomplished with 5 lines of code.

In other words, no-code is great for something very simple, but should not be relied on for complex workflows without good reason. In Identity v2, we’ve tried to stretch the limits of no-code workflows, and believe that scripts running in CI/CD pipelines offer easier maintenance if well architected.

#### Custom Code Automation

The concept of writing code or custom applications can be perceived as burdensome and requires significant investment. Our strategy is to use small scripts that are run with GitLab CI/CD pipelines, allowing us to keep the code base small and dogfooding the GitLab product while maintaining the smallest possible codebase footprint for automation.

We are in the early incubation stage of building the [Identity Platform](/handbook/security/identity/platform) that is powered by [accessctl](https://gitlab.com/gitlab-identity/accessctl), a new open source project. As our Identity Platform matures throughout 2024, we will add documentation for the community to adopt our platform and best practices.

### Real-Time Updates

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
