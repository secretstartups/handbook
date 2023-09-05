---
layout: handbook-page-toc
title: "GitLab Audit Logging Policy"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

<div class="panel panel-gitlab-orange">
**This is a Controlled Document**
{: .panel-heading}
<div class="panel-body">

Inline with GitLab's regulatory obligations, changes to [controlled documents](https://about.gitlab.com/handbook/security/controlled-document-procedure.html) must be approved or merged by a code owner. All contributions are welcome and encouraged. 

</div>
</div>

## Purpose

To ensure the proper operation and security of GitLab.com, GitLab logs critical information system activity. 

## Scope

The audit logging policy applies to all systems within our production environment. The production environment includes all endpoints and cloud assets used in hosting GitLab.com and its subdomains. This may include third-party systems that support the business of GitLab.com.

## Roles & Responsibilities

| Role | Responsibility |
| --- | --- |
| GitLab Team Members | Responsible for following the requirements in this policy |
| Security Team | Responsible for implementing and executing this policy |
| System Owners | Definition of individual audit log criteria; Definition and execution of system audit log procedures | 
| Security Management (Code Owners) | Responsible for approving significant changes and exceptions to this policy |

## Procedure 

* GitLab shall log and monitor critical information system activity.
* Logs must be retained for a defined period of time.
* Logs must not be modified and or deleted.
* Access to audit log data must be limited based on the principle of least privilege. 

Inline with GitLab's [Continuous Monitoring Controls](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/guidance/continuous-monitoring.html)
System Owners are responsible for determining what constitutes "critical information system activity" in their respective system based on their experience and professional judgement; such activity is then documented either in the handbook or a runbook, whichever is found to be appropriate. Audit logging process must be created and implemented by the department(s) or team(s) responsible for a given system.

## Exceptions

Exceptions to this policy will be tracked as per the [Information Security Policy Exception Management Process](https://about.gitlab.com/handbook/security/).

## References

* Parent Policy: [Information Security Policy](/handbook/security/)
* [What is considered production](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/compliance/-/blob/master/production_definition.md)
* [Production Architecture](/handbook/engineering/infrastructure/production/architecture/)
* [Configuration Management](/handbook/security/security-assurance/security-compliance/guidance/configuration-management.html)
