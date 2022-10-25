---
layout: handbook-page-toc
title: "Red Team Rules of Engagement"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Red Team Rules of Engagement

Red team exercises are meant to provide comprehensive assessments that reflect real-world conditions and demonstrate tangible risks posed by a malicious actor during a legitimate attack. The results of these exercises are intended to be used to improve security awareness and training and to assess levels of security control effectiveness.  Please see more about the [principles and vision](./index.html) of our red team and the security team as a whole.

We choose to operate under the following rules of engagement to provide the most benefit to the organization with as little ambiguity as possible for each engagement.  In short, the intent is to give guidance to GitLab organization as a whole as to how engagements are defined, communicated, and executed, as well as how the resulting information is disseminated to aid the organization.

### Scope Definition

In general, a scope definition for an engagement should be *exclusive* vs. inclusive in nature. It should be scenario driven, with specific goals, based on real security threats. Those scenarios can be elaborated with to the input of other security teams, such as the Threat Intelligence team. They should be recorded ahead of the engagement, validated by the Director of Security, and should include the following details:

1. Describe any systems that should be *excluded* from the engagement such as IP addresses, applications, and personnel.
1. Testing time period expressed in either [UTC or PT](/handbook/communication/).
1. Define techniques that should be excluded from the engagement such as social engineering, Denial of Service attacks, etc.
1. Define the controls that prevent infinite escalation in the event of a successful engagement if applicable.  In other words, not every vulnerability exploited as part of a Red Team engagement should end up classified with an overall risk of [very high](https://gitlab.com/gitlab-com/gl-security/security-assurance/field-security-team/risk-assessments/blob/master/Risk%20Scoring%20Matrix.md#overall-impact) and engage an [incident response](/handbook/security/threat-management/vulnerability-management/incident-response-guidance.html).

### Ethics

A tangible artifact of authorization from someone with the authority to give it should exist prior to the opening of the engagement.  This means getting permission in writing from GitLab representatives when systems or teams they manage may be impacted.  We obtain the proper permission from any third party providers such as  Amazon Web Services, Google Cloud, etc. should those systems be relevant.  These artifacts can be either persistent or transitive and should be stored securely should retrieval of evidence become necessary.

The process for obtaining the necessary permission can be different per engagement and service provider and will require due diligence.  For example, AWS has its own unique set of guidelines for performing assessments that can be found here:  https://aws.amazon.com/security/penetration-testing/.  In contrast, Google Cloud's policy is completely different from the evidence illustrated here:  https://support.google.com/cloud/answer/6262505?hl=en.  

As security professionals, we aim to be ethical in every engagement while maintaining the spirit of mimicking real-world attacks in the wild.  We respect the privacy of the employees at GitLab and follow the guidelines mentioned in the [Employee Information Privacy section of the Code of Business Conduct & Ethics](../../people-operations/code-of-conduct/#employee-information-privacy) page of the handbook during our engagements.  As a GitLab employee, it is expressly important to review the statements in this documentation regarding privacy of personal information and personal devices used for GitLab business.

### Communication and Collaboration

The Red Team is an extension of the Security Team as a whole.  We actively collaborate with other members of the Security Team to improve the security posture of the organization.  We take every reasonable opportunity to share knowledge before, during, and after an engagement.  Some engagements, specifically those intended to test the organization's response to a security event without prior warning, are of course communicated differently. It is expected that the red team will need to maintain a certain separation from the organization it is protecting in order to maintain the proper scope, independence, and authority to act as an actual attacker and produce effective results and aid the organization.

### Results, Remediation, and Escalation

As we are a results driven organization, engagement results are properly and securely documented, communicated, and actionable with proper respect given to the [sensitivity of information](./data-classification-standard.html).  In order to make results actionable, we collaborate with our teammates in ours and other departments to track remediation through [existing organizational processes](/handbook/security/#creating-new-security-issues), making issues confidential where necessary.  Specifically, we follow the functional and operational escalation points mentioned in the previous link for tracking remediation. 

### Critical Vulnerabilities and Exploits

Critical vulnerabilities and exploits found during an engagement that are currently or have immediate propensity to impact normal GitLab business operations should engage the security on-call and follow our [incident response guide](/handbook/security/threat-management/vulnerability-management/incident-response-guidance.html).  [Sensitive information](./data-classification-standard.html) and communicated by creating a confidential security issue using [existing Security Issue Triage process](/handbook/security/#issue-triage) in the appropriate project.

### Emergencies

All red team testing and engagements are first carefully planned in advance and will not intentionally impact production system or customers.  However, accidents do happen and in the case of a production system being impacted during an engagement, either directly or indirectly, we escalate the incident by notifying the red team manager.  We also engage our security operations team using our [incident response guide](/handbook/security/threat-management/vulnerability-management/incident-response-guidance.html) at the earliest reasonable time giving full disclosure of what caused the issue.  Depending on the circumstances, the infrastructure team may need to be made aware through an [incident report](/handbook/engineering/infrastructure/incident-management/) to negate or reduce the impact to our customers.  Proper [root cause analysis](/handbook/engineering/root-cause-analysis/) is recorded following resolution of the incident.

## Red Team Common Techniques

This section describes techniques that are commonly used by the Red Team. These lists are not all inclusive, but are meant to provide team members reasonable expectations of things the Red Team may or may not do.

If any team members have questions or concerns about these operations, please contact us in the `#security-department` Slack channel using the tag `@red-team`.

### Open Scope Techniques

Techniques used in [open-scope work](./#open-scope-work) include:

- Port scanning.
- Web crawling and scraping.
- Manual or automated vulnerability scanning.
- Manual or automated exploit attempts on vulnerable software or infrastructure.
- Manual or automated attempts at abusing misconfigurations.
- Manually and programmatically querying the GitLab API.
- Accessing and cloning any public projects, issues, snippets, etc. on www.gitlab.com.
- Accessing other data intended to be open to the public, such as logging platforms.
- Attempting to log in to any publicly-exposed administrative interface with common and default credentials.
- Attempting to validate credential data such as GCP service accounts, SSH keys, and API keys found in public locations.

### Stealth Operation Techniques

During a [stealth operation](./#stealth-operations), the Red Team may:

* Begin an operation assuming a breach has occurred, meaning the team will have some level of access to resources that are not exposed publicly.
* Attempt to gain access to team member accounts on any GitLab-managed platform (GitLab.com, Google, Slack, Zoom, etc).
* Authenticate as any team member using credential data discovered on any GitLab-managed resource (passwords, access tokens, SSH keys, etc).
* Attempt to gain access to any resource in GitLab's cloud environments, and use those resources to escalate privileges and move laterally in the cloud.
* Exploit vulnerabilities and abuse insecure configurations in any system owned and managed by GitLab.
* Attempt digital social engineering (email, Slack, GitLab issues, etc) and attacks on the software supply chain.

If you are a team member at GitLab and suspect you have uncovered a stealth red team operation in the course of your daily work, please refer to our deconfliction process mentioned in the "[Is This Red Team?](./#is-this-the-red-team)" section.

At this time, the Red Team **will not**:

* Attempt to gain access to team member laptops without prior consent.
* Attempt to access resources inside a GitLab team member's home (wireless networks, non-GitLab machines, etc).
* Attempt to socially engineer team members via phone calls.
* Attempt to socially engineer team members via channels not managed by GitLab (such as social networks, personal email addresses, etc).
* Attempt to gain access to anything that is not strictly work-related and managed/owned by GitLab.
