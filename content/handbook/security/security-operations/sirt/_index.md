---
title: Security Incident Response Team - SIRT
description: GitLab Security Incident Response Team Overview
---

The Security Incident Response Team - SIRT is on the forefront of security events that impact both GitLab.com and GitLab the company.

## <i class="fas fa-rocket" id="biz-tech-icons"></i> Our Vision

To detect security incidents before they happen and to respond promptly when they do happen.

### Our Mission Statement

Ensure maximum operational uptime of mission critical infrastructure and informational assets in its daily operations. This mission is achieved by providing effective crisis response, timely distribution of security notifications, continuous monitoring of potential issues, postmortem of major incidents for training and environmental awareness.

## <i class="fas fa-users" id="biz-tech-icons"></i> The Team

### Team Members

| | |
|---|---|
|Matt Coons|[Security Manager]({{< ref "security-incident-response-team#manager-security-incident-response-team" >}})|
|Shrishti Choudhary|[Security Manager]({{< ref "security-incident-response-team#manager-security-incident-response-team" >}})|
|Valentine Mairet|[Security Manager]({{< ref "security-incident-response-team#manager-security-incident-response-team" >}})|

| | |
|---|---|
|Bala Allam|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|
|Chathura Kuruwita|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|
|Ellis Coulson|[Security Engineer]({{< ref "security-incident-response-team#security-incident-response-team-engineer-intermediate" >}})|
|Harjeet Sharma|[Staff Security Engineer]({{< ref "security-incident-response-team#staff-security-incident-response-team-engineer" >}})|
|Janina Roppelt|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|
|Jason Hawkins|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|
|Laurens Van Dijk|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|
|Leslie Anzures|[Security Engineer]({{< ref "security-incident-response-team#security-incident-response-team-engineer-intermediate" >}})|
|Mitra Jozenazemian|[Staff Security Engineer]({{< ref "security-incident-response-team#staff-security-incident-response-team-engineer" >}})|
|Neil McDonald|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|
|Sean Gillespie|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|
|Yunus Khan|[Senior Security Engineer]({{< ref "security-incident-response-team#senior-security-incident-response-team-engineer" >}})|

## <i class="fas fa-stream" id="biz-tech-icons"></i> Services We Provide

1. Reactive - Services design to respond to active incident handling, including but not limited to
    - Incident analysis
    - Incident response support and coordination
    - Incident response resolution
    - Detection and response engineering
1. Proactive - Services designed to improve the infrastructure  and security  processes of GitLab before any incident occurs or is detected. The main goals are to avoid incidents and to reduce the impact and scope when they do occur.
    - Cyber Threat Analysis of vulnerability warnings and security advisories
    - Monitor Adversaries' activities and related trends to help identify future threats
    - Configuration and maintenance of security tools, applications, and infrastructure
    - Detection and response engineering
1. Administrative - Services design to assist with requests from GitLab's Legal and HR Departments.

## <i class="fas fa-bullseye" id="biz-tech-icons"></i> Engaging SIRT

The [SIRT]({{< ref "." >}}) is on-call [24/7/365](/handbook/engineering/on-call/#security-team-on-call-rotation) to assist with any security incidents. If an urgent security incident has been identified or you suspect an incident may have occurred, please refer to [Engaging the Security Engineer On-Call]({{< ref "engaging-security-on-call" >}}).

Information about SIRT responsibilities and incident ownership is available in the [SIRT On-Call Guide]({{< ref "secops-oncall" >}}).

## <i class="fas fa-receipt" id="biz-tech-icons"></i> Incident Management and Review

As part of the incident management and review process the SIRT maintains a recurring meeting that takes place on Monday of each week. During this meeting all of the previous weeks incidents, and any incidents that are currently open are reviewed. The review process covers the incident's scope, impact, the work performed to mitigate and remediate the incident, next steps, blockers, and current status. These meetings are also an opportunity to discuss mishandled incidents and process improvements.

## Limited Access

Information about security incidents or investigations is considered [limited access]({{< ref "confidentiality-levels#limited-access" >}}) and is not shared with all team members. After being resolved, a determination will be made as to whether or not the incident or investigation issue contains [Materially Non-Public Information (MNPI)](/handbook/product/product-processes/product-safe-guidance/#materially-non-public-information). Only incidents or investigation issues that do not contain MNPI will be made visible to GitLab team members. More information about how this aligns with [GitLab's value of Transparency](/handbook/values/#transparency) can be found on the [Transparency by Default page]({{< ref "transparency-by-default" >}}). The workflow for this is:

```mermaid
graph TD
    A[Security incident occurs] --> |Incident reported| B[SIRT automation creates a private project]
    B -->C[SIRT automation creates issue in new project]
    C -->D[Reporter added to the issue/project]
    D -->E[Other team members are added as needed*]
    E -->|Incident is resolved| F[Determine whether or not the incident contains MNPI]
    F -->|no MNPI present| G[Make visible to GitLab team members]
    F -->|MNPI present| H[Keep confidential]
```

\*A pre-defined list of team members are automatically added when the incident is `~severity::1`.
