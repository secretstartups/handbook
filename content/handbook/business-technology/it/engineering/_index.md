---

title: "IT Engineering"
description: "This handbook page provides information about the IT Engineering sub-department."
---


{:.no_toc}


{:toc}

## Overview


The IT Engineering sub-department is focused on designing, developing, and implementing automation efficiencies using software and systems to improve GitLab's business processes, software systems, and cloud infrastructure. Our team members have one or more specialties that they focus on.

<details>
<summary markdown="span">Access Management and Single-Sign On (SSO)</summary>

<a href="/handbook/business-technology/it/engineering/access-mgmt">Handbook Page</a><br />
<br />
The IT Engineering team implements Okta SSO for our tech stack applications. You can learn more on the <a href="/handbook/business-technology/okta">Okta handbook page</a>.<br />
<br />
The IT Support team handles <a href="https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/">access requests</a> for the tech stack applications that IT manages. All access requests are created in the same <a href="https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request">issue tracker</a> project, regardless of which System Owner is responsible for provisioning your user account.<br />
<br />
The IT Development team also focuses on Identity and Access Management (IAM) and Role-Based Access Control (RBAC) automation. We are developing <a href="/handbook/it/access-manager">GitLab Access Manager (GLAM)</a>, a custom application that will replace access request issues and manual provisioning with a streamlined custom web UI and API integration with most of our tech stack applications for user and role provisioning.<br />

</details>

<details>
<summary markdown="span">Change Management</summary>

<a href="/handbook/business-technology/it/engineering/change-mgmt">Handbook Page</a><br />

</details>

<details>
<summary markdown="span">IT Development</summary>

<a href="/handbook/it/engineering/development/">Handbook Page</a><br />
<br />
The IT Engineering Development team develops custom software applications, automation, APIs and integrations that support internal IT automation for business efficiency and processes managed by the IT department. <br />
<br />
Many of our projects focus on providing self service access request provisioning to our tech stack applications and supporting IT Infrastructure services including the Demo Systems and Sandbox Cloud.<br />
<br />
We are in the process of creating <a href="/handbook/it/access-manager">GitLab Access Manager (GLAM)</a> to provide the next-generation of access request automation across most of our tech stack applications.<br />

</details>

<details>
<summary markdown="span">IT Infrastructure</summary>

<a href="/handbook/business-technology/it/engineering/infrastructure">Handbook Page</a><br />
<a href="https://gitlab.com/gitlab-com/business-technology/engineering/infrastructure/issue-tracker/-/issues">Issue Tracker</a><br />
<br />
The IT Infrastructure team manages AWS and GCP infrastructure that is not related to GitLab.com SaaS production infrastructure and provide managed infrastructure services for other departments, including most ephemeral sandbox infrastructure needs across the company. We also handle access requests for cloud infrastructure and DNS/domain name requests.<br />
<br />
We collaborate with the <a href="/handbook/engineering/infrastructure">Reliability Engineering (SRE)</a> and <a href="/handbook/security/security-engineering-and-research/infrastructure-security/">Infrastructure Security</a> teams to provide Infrastructure Shared Services for all AWS, Azure, and GCP related requests and support across the organization.<br />
<br />
We also provide escalation engineering and triage support for the <a href="/handbook/security/security-operations/sirt">Security Incident Response Team ("SIRT")</a> and <a href="/handbook/security/threat-management/red-team">Security Red Team</a> when security anomalies, events, or incidents require AWS/GCP subject matter expertise.<br />
<br />
Our focus is on organizational policy management, access request provisioning, and services that are outside of the <a href="/handbook/engineering/infrastructure">Reliability Engineering</a> scope of hosting the Gitlab.com SaaS service, such as the provisioning of demo/sandbox/test infrastructure for team members.<br />
<br />
The <a href="/handbook/customer-success/demo-systems">Demo Systems</a> provide an always-on shared sandbox environment for demo and experimental use cases that aren't intended for or supported on GitLab.com and don't need dedicated infrastructure to be provisioned for your use case.<br />
<br />
The <a href="/handbook/infrastructure-standards/realms/sandbox">GitLab Sandbox Cloud</a>, powered by <a href="https://gitlab.com/hackystack">HackyStack</a>, automates the provisioning of AWS accounts, AWS IAM users, GCP projects, and GCP users. This has allowed us to automate a large portion of our AWS and GCP access requests.<br />

</details>

<details>
<summary markdown="span">Project Management</summary>

<a href="/handbook/business-technology/it/engineering/project-mgmt">Handbook Page</a><br />
<a href="/handbook/business-technology/it/engineering/how-we-work">How We Work</a><br />
<a href="/handbook/business-technology/it/engineering/how-we-work/labels">How We Work - Labels</a><br />

</details>

<details>
<summary markdown="span">Tech Stack Application Implementation and Support</summary>

<a href="/handbook/business-technology/it/engineering/tech-stack">Handbook Page</a><br />
<br />
We provide implementation engineering and support for 3rd party tech stack applications that are managed by Business Technology and other non-engineering departments. We usually classify this work as "Engineering Operations" (EngOps).<br />

</details>

## How We Work

See the [How We Work](/handbook/business-technology/it/engineering/how-we-work), [Project Management](/handbook/business-technology/it/engineering/project-mgmt), and [Labels](/handbook/business-technology/it/engineering/how-we-work/labels) page.

## Team

| Name                                                                        | Role                              | Focus Areas (Specialties)                                    |
|-----------------------------------------------------------------------------|-----------------------------------|--------------------------------------------------------------|
| [Peter Kaldis](/handbook/company/team/#pkaldis)        | Manager, IT Engineering                  | Access Management, Okta, Google, Project Management, Stakeholder Collaboration       |
| [Jeff Martin](/handbook/company/team/#jeffersonmartin)       | Senior IT Systems Engineer        | Development, Engineering Mgmt, Infrastructure, Demo Systems, Security, Support  |
| [Marcus Whitaker](/handbook/company/team/#mwhitaker)         | Senior IT Systems Engineer        | Access Management, Okta, Operations                                |
| [Dillon Wheeler](/handbook/company/team/#dillonwheeler)      | IT Systems Engineer               | Development, Google, Security                   |
| [Mohammed Al Kobaisy](/handbook/company/team/#malkobaisy)    | IT Systems Administrator          | Infrastructure, Operations, Support                                |

## Problems We Solve

Business Technology has several Engineering teams in different sub-departments that focus on a specialty area of functions typically handled by an IT organization. There are additional [System Administrators / System Owners in other departments](/handbook/business-technology/#cross-department-system-owners) that manage the tech stack applications specific to their department or team.

<table markdown="0">
    <thead>
        <tr>
            <th style="width: 30%;">Department/Group</th>
            <th>High-Level Problems to Solve</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                <strong>IT</strong><br />
                <i>Infrastructure</i><br />
                <br />
                <a href="/handbook/business-technology/it/engineering/infrastructure">Handbook Page</a>
            </td>
            <td>
                <i>How do users get <strong>access to AWS and GCP</strong> and how do we properly <strong>secure our infrastructure</strong> for accounts, projects, resources, etc. outside of GitLab.com SaaS?</i><br />
                <br />
                We have an <strong>Infrastructure Shared Services</strong> stable counterpart working group in collaboration with <a href="/handbook/engineering/infrastructure/team/reliability/">Engineering Infrastructure Reliability Engineering</a> and <a href="/handbook/security/security-engineering/infrastructure-security/">Engineering Infrastructure Security</a>. We publish our collective architecture, guidance, and policies in the handbook in <a href="/handbook/infrastructure-standards/">Infrastructure Standards</a>. The IT Infrastructure team is the DRI for IAM/RBAC and sandbox infrastructure that has mostly been automated with the <a href="/handbook/infrastructure-standards/realms/sandbox/">GitLab Sandbox Cloud</a>.
            </td>
        </tr>
        <tr>
            <td>
                <strong>IT</strong><br />
                <i>Access Management Engineering</i><br />
                <br />
                <a href="/handbook/business-technology/it/engineering/access-mgmt">Handbook Page</a>
            </td>
            <td>
                <i>How do users <strong>get access to tech stack applications</strong> and how can we streamline <strong>access request approvals</strong>, audit users <strong>least privilege</strong> access, and automate the <strong>provisioning and deprovisioning of their user account</strong> / role(s) / group(s) / etc? (IAM/RBAC focus)</i><br />
                <br />
                <a href="/handbook/it/access-manager">GitLab Access Manager</a> is a custom built full stack application built by the GitLab IT Engineering team that provides a user interface ("UI") for team members, managers, access approvers, audit reviewers, and IT administrators to centrally approve and manage role-based access to the directory of <a href="/handbook/business-technology/it/engineering/tech-stack">tech stack applications</a> ("SaaS providers").
            </td>
        </tr>
        <tr>
            <td>
                <strong>IT</strong><br />
                <i>Engineering Operations ("EngOps")</i><br />
                <br />
                <a href="https://gitlab.com/gitlab-com/business-technology/engineering/operations/issue-tracker">Issue Tracker</a>
            </td>
            <td>
                <i>How do we enable team members to get help with integrating tech stack applications with Google, Okta SSO, Slack integration, etc?</i><br />
            </td>
        </tr>
        <tr>
            <td>
                <strong>Enterprise Applications</strong><br />
                <i>Integrations Engineering</i><br />
                <br />
                <a href="/handbook/business-technology/enterprise-applications/integrations/">Handbook Page</a>
            </td>
            <td>
                <i>How do we create data transfer and workflow automation integrations between business critical SSOT and financial tech stack applications that are streamlined with high data integrity?</i><br />
            </td>
        </tr>
        <tr>
            <td>
                <strong>Data Team</strong><br />
                <br />
                <a href="/handbook/business-technology/data-team/">Handbook Page</a>
            </td>
            <td>
                <i>How do we get analytics and data insights from our tech stack applications and make it available to team members (ex. SiSense) to make more informed data-driven decisions?</i><br />
            </td>
        </tr>
    </tbody>
</table>
