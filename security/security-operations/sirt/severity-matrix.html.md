---
layout: handbook-page-toc
title: "Security Incident Classification"
description: How we determine severity and priority within Security Incidents
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Incident Classification

The following are key factors we consider when classifying security incidents and response:

* Severity - The potential and actual impacts resulting from an incident
* Priority - The urgency required for responding to a given incident
* Escalation paths - Escalation level necessary for coordinating response efforts or communications.

## Severity

### Definition

At GitLab, we define four categories of security incident severities. Incident severities should identify the potential impact of the incident, and upon closure, it should identify the highest level of impact severity realized during the incident. Each severity category is linked to a label we use to classify incidents, and these lables are used for automation and reporting. The four categories are similar to the categories used in GitLab [incident issues](https://docs.gitlab.com/ee/operations/incident_management/incidents.html).

| Severity | GitLab labels | Description |
| ------ | ------ | ------ |
| Critical | \~S1 | Severe impact to production data confidentiality, integrity or availability is likely if immediate action is not taken. Current controls do not satisfactorily mitigate the risk. Possibility of mass customer impact. Or, reputational risk is severe.|
| High | \~S2 | Impact to production data confidentiality, integrity or availability is likely if one or more security controls are circumvented.  Current controls mitigate the initial risk. Possibility of multiple customers being impacted. Or, reputational risk is high. |
| Moderate | \~S3 | Unlikely to impact production data confidentiality, integrity or availability unless multiple security controls fail or are bypassed. Current controls mitigate the initial risk. Customer impact is isolated. Or, reputational risk is moderate. |
| Low | \~S4 | No risk to impact production data confidentiality, integrity or availability unless multiple security controls fail or are bypassed. Current controls are adequate. No risk of customer impact. Reputational risk is low or highly unlikely. |

### How impact is determined

There are a few factors we take into account when determining impact. Every time we are faced with a security incident, we evaluate the scope and exposure of the risk, the confidentiality level, and more. By doing so, we split the issue into multiple, easier to assess, sub-issues. Here are a few examples:

**The issue pertains to...**
- Confidentiality
- Integrity
- Availability

_This assessment helps us compute a Confidentiality-Integrity-Availability (CIA) rating._ 

**What is the scope and exposure of the risk?**
- GitLab infrastructure
- Customer data
- Cloud accounts
- One particular application
- A customer's instance
- Your own machine

**How exploitable is the issue?**
- Very easily
- Requires some effort
- Difficult 

Exploitability can be determined by a few factors. Does an attacker simply need to run a command or script to trigger the issue? Does the attacker require someone else to be logged in to exploit the issue? These distinctions influence the exploitability score. 

**Who can see this issue?**
- Everyone
- Someone with specific access
- Only me

This methodology is loosely based on the [CVSS](https://www.first.org/cvss/calculator/3.1) scoring system. 


### Severity calculation

The GitLab platform has a Remote Code Execution vulnerability, allowing a user to perform tasks with admin privileges on the platform, but it requires certain conditions to apply. The person reporting through the `/security` workflow is the only one aware of this issue.  

In this matrix, the assigned score for each sub-issue depends on our perception of its **gravity**. Therefore, an exploitability score of 1 does not mean the exploitability is low. Low exploitability would be scored as 3, because, if it's harder to trigger the issue, the gravity is **lower**. If we aren't sure, we score it as 2. 

After computing the base score, we use our CIA rating to compute the impact score. Depending on whether confidentiality, integrity, or availability is effected, this will influence the base score. 

| Sub-issue | 1 | 2 | 3 |
| ------ | ------ | ------ | ------ |
| **Scope and exposure** | X | | | 
| **Exploitability** | | X | |
| **Visibility** | | | X |

Because the issue is both a confidentiality and integrity issue (availability is not immediately affected), we obtain the following table:

| Confidentiality | Integrity | Availability |
| ------ | ------ | ------ |
| X | X | | 

The CIA rating is 2. We can now calculate the severity score:

```math
(2 + 1 + 2 + 3)/4 = 2
```

We divide by 4 because we have three sub-issues and the CIA rating. By doing so, we obtain a score between 0 and 3.

### Functional impact rating examples

**Critical impact** / `S1`:

A critical system is down. One or more departments is affected. A significant number of staff members are not able to perform their functions. The incident has the potential to impact a large number of customers. The incident has the potential for major financial loss or damage to the organization’s reputation. Other criteria, depending on the function of the organization and the affected systems, could include such things as threat to public safety, potential loss of life, or major property damage.

**High impact** / `S2`:

Impact to production data confidentiality, integrity or availability is likely if one or more security controls are circumvented.  Current controls mitigate the initial risk. Possibility of multiple customers being impacted. Or, reputational risk is high.. There is no threat to life, public safety, or physical property.

**Moderate impact** / `S3`:

Only a small number of users are affected. No critical services are involved, and there is little or no potential for financial loss or loss of reputation.

**Low impact** / `S4`:

No users have been affected. Any impact is theoretical, but SIRT attention is still warranted.

## Priority

Assigning priority depends on the urgency level of a certain issue or incident. 

### Priority rating examples 

Priority indicates how urgent an incident is. We recognise five distinct priorities. Unlike incident severity, incident priority is flexible and can change easily - an S1/P1 can become an S1/P2-5 once the incident has been mitigated. In our current handbook we use separate score for urgency and priority, with P = S*U. We may be able to drop the urgency score entirely.

| Level | Indicates | Work cadence | Examples | 
| ------ | ------ | ------ | ------ |
| P1 | Extremely urgent, page on-call engineer. | Work should continue in every region (follow-the-sun), with updates per shift in relevant channels. | Unauthenticated RCE vulnerability on production instances. |
| P2 | Urgent, page depending on severity. | Work should continue in every assigned region, with daily updates in relevant channels. | A *patched* RCE vulnerability on production instances.|
| P3 | No urgent action required, but actively monitored by SIRT. |  Work should continue in every assigned region. Updates are posted in the incident issue when needed. | A patched RCE vulnerability on production instances that is being rolled out to the wider public. |
| P4 | No action required, monitored in case the situation changes. | Updates are posted in the incident issue when needed. | A previously revoked and investigated access token has been discovered. |
| P5 | No action required, handled when/if SIRT has spare cycles. | Updates are posted in the incident issue when needed. | False positives kept open for review, informational notices. |

## Escalation

Depending on this and other factors like seniority level required to handle the incident, the SIRT provides a [guide](https://about.gitlab.com/handbook/security/security-operations/sirt/#-engaging-sirt) on how to escalate issues.
