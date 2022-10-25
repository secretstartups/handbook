---
layout: handbook-page-toc
title: "Incident Classification"
description: How we determine severity and priority at SIRT
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Incident Classification

The following are key factors we consider when classifying incidents and instigating proper response measures:

* Severity - The impact resulting from an incident
* Priority - The urgency required for responding to a given incident
* Escalation paths - Seniority level necessary for coordinating response efforts or company wide notification.

## Severity

### Definition

At GitLab, we define three categories for severity. Each category is linked to a label we use internally to classify incidents and reports. Severity is used to assess **incident priority**. 

| Severity | GitLab labels |
| ------ | ------ |
| High impact | \~S1 |
| Moderate impact | \~S2 | 
| Low impact | \~S3 | 

### How impact is determined

There are a few factors to take into account when determining impact. Every time we are faced with an incident, we ask ourselves questions that pertain to the nature of the issue, the affected surface, the confidentiality level, and more. By doing so, we split the issue into multiple, easier to assess, sub-issues. Here are a few examples:

**The issue pertains to...**
- Confidentiality
- Integrity
- Availability

_This assessment helps us compute a Confidentiality-Integrity-Availability (CIA) rating._ 

**What is the affected surface?**
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

### Severity Matrix

Depending on the answers to these questions, we can build a severity matrix to assist us with determining a base score. 

| Sub-issue | 1 | 2 | 3 |
| ------ | ------ | ------ | ------ |
| **Affected surface** | | | | 
| **Exploitability** | | | |
| **Visibility** | | |

In this matrix, the assigned score for each sub-issue depends on our perception of its **gravity**. Therefore, an exploitability score of 1 does not mean the exploitability is low. Low exploitability would be scored as 3, because, if it's harder to trigger the issue, the gravity is **lower**. If we aren't sure, we score it as 2. 

| Confidentiality | Integrity | Availability |
| ------ | ------ | ------ |
| | | | 

After computing the base score, we use our CIA rating to compute the impact score. Depending on whether confidentiality, integrity, or availability is effected, this will influence the base score. 

### Severity rating example

The GitLab platform has a Remote Code Execution vulnerability, allowing a user to perform tasks with admin privileges on the platform, but it requires certain conditions to apply. I am the only one aware of this issue.  

| Sub-issue | 1 | 2 | 3 |
| ------ | ------ | ------ | ------ |
| **Affected surface** | X | | | 
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

This issue would have `moderate impact` and receive the `S2` label.

### Functional impact rating examples

**High impact** / `S1`:

A critical system is down. One or more departments is affected. A significant number of staff members are not able to perform their functions. The incident affects a large number of customers. The incident has the potential for major financial loss or damage to the organization’s reputation. Other criteria, depending on the function of the organization and the affected systems, could include such things as threat to public safety, potential loss of life, or major property damage.

**Moderate impact** / `S2`:

Some staff members or customers are affected. None of the services lost are critical. Financial loss and damage to the organization’s reputation are possible, but limited in scope. There is no threat to life, public safety, or physical property.

**Low impact** / `S3`:

Only a small number of users are affected. No critical services are involved, and there is little or no potential for financial loss or loss of reputation.

## Priority

Assigning priority depends on the urgency level of a certain issue or incident. 

### Urgency rating examples 

**High urgency:**

A service which is critical for day-to-day operations is unavailable. The incident’s sphere of impact is expanding rapidly, or quick action may make it possible to limit its scope. Time-sensitive work or customer actions are affected. The incident affects high-status individuals or organizations (i.e., upper management or major clients).

The fact that an indicent is still ongoing influences the urgency score. Furthermore, if credentials were leaked in the process, we need to act sooner than possible. 

**Low urgency:**

Affected services are optional and used infrequently. The effects of the incident appear to be stable. Important or time-sensitive work is not affected.

### Priority calculation

To compute the priority of an incident, we also take Severity into the calculation: 

```math
Priority = Impact + Urgency
```

Both impact and urgency need to meet a single criterion, rather than all or a majority of criteria, to be sufficiently classified. Here is a grid to illustrate the above:

||Severity| S1 | S2 | S3 |
|----------|--|--|--|--|
| **Urgency** | High | P1 | P2 | P3 |
|  | Medium | P2 | P3 | P4 |
|  | Low | P3 | P4 | P5 |

## Escalation

If the impact is confirmed, depending on the urgency, the level of response will be differet.

| Urgency | Use Case |
|--------|---------|
| High | Immediate response from SEOC is needed |
| Medium | The issue can wait until daytime for SEOC |
| Low | Informational or a not weaponized or not replicable (yet) H1 report |

Depending on this and other factors like seniority level required to handle the incident, the SIRT provides a [guide](https://about.gitlab.com/handbook/security/security-operations/sirt/#-engaging-sirt) on how to escalate issues.
