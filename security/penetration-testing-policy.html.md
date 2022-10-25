---
layout: handbook-page-toc
title: "Penetration Testing Policy"
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

# Penetration Testing Policy

A penetration test, (aka pentest or ethical hacking), is a process to identify security vulnerabilities in an application or infrastructure with an attacker's mindset in a safe manner in order to evaluate the security of the system. The test is performed to identify strengths, weaknesses, and vulnerabilities; including the potential for unauthorized parties to gain access to a system's features and data enabling a full risk assessment to be completed.

GitLab performs external, independent penetration testing at least annually with a firm that has a strong reputation within the security industry against production systems and internally, if it is determined that a significant change has been made to applications or infrastructure.

## Purpose

The purpose of this test is to secure personal, confidential, sensitive data from outsiders, like hackers, who can have unauthorized access to the system. Once the vulnerability is identified it is used to exploit the system to gain access to sensitive information.

A penetration test determines whether or not defensive measures employed on the system are strong enough to prevent security breaches. Penetration test reports also suggest the countermeasures that can be taken to reduce the risk of the system being attacked.

## Scope of Penetration Testing
The scope of a GitLab's Penetration Testing may vary due to a number of factors including priority and resources but will be explicitly outlined prior to any Penetration Testing taking place. At minimum, annually a Penetration Test or a combination of Penetration Tests will result in 100% of the external facing Gitlab.com environment being reviewed.

## Roles & Responsibilities

| Role | Responsibility |
|----|-------|
| GitLab Team Members | Responsible for following the requirements in this policy |
| Security Team | Responsible for implementing and executing this policy | 
| Security Management (Code Owners) | Responsible for approving significant changes and exceptions to this policy |

## Procedure
### Why GitLab should perform Penetration Testing

1. To meet the information security compliance requirements at GitLab and to implement an effective security strategy.
2. Independent testing brings a new perspective which reduces the likelihood of undiscovered errors made by GitLab.
3. Assure customers that their security of data is kept safe from vulnerabilities. We are seeing many customers requesting evidence of our penetration testing as part of contract negotiations. 
4. Penetration testing at regular intervals to protect information systems against security breaches.
5. As a check to ensure that critical, sensitive, and personal data is secured while in-transit.
7. To find security vulnerabilities in an application or infrastructure which reduces the vulnerabilities likely to be discovered through 3rd party reporting which saves GitLab money.
9. To assess the business impact of successful attacks. 

## Exceptions
Exceptions to this policy will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References
* Parent Policy: [Information Security Policy](/handbook/security/)
