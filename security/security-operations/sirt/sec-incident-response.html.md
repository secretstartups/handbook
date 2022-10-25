---
layout: handbook-page-toc
title: "GitLab Security Incident Response Guide"
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

# Engaging SIRT

The [Security Incident Response Team (SIRT)](/handbook/security/security-operations/sirt) is on-call [24/7/365](/handbook/on-call/#security-team-on-call-rotation) to assist with any security incidents. If an urgent security incident has been identified or you suspect an incident may have occurred, please refer to [Engaging the Security Engineer On-Call](/handbook/security/security-operations/sirt/engaging-security-on-call.html).

Information about SIRT responsibilities and incident ownership is available in the [SIRT On-Call Guide](/handbook/security/secops-oncall.html).

## Scope 

#### Incident Identification

Security incident investigations are initiated when a security event has been detected on [GitLab.com](https://www.gitlab.com) or as part of the GitLab company. These investigations are handled with the same level of urgency and priority regardless of whether it's a single user or multiple projects. 

Incident indicators can be reported to SIRT either internally, by a GitLab team member, or [externally](/handbook/security/#external-contact-information). It is the Security team's responsibility to determine when to investigate dependent on the identification and verification of a security incident.

The GitLab Security team identifies security incidents as any violation, or threat of violation, of GitLab security, acceptable use or other relevant policies.

## Roles & Responsibilities

| Role | Responsibilities |
| ----- |------------|
| GitLab Team Members | Responsible for following the requirements in this procedure |
| SIRT | Responsible for implementing and executing this procedure | 
| SIRT Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

## Procedure

### Incident Response Process - this guide covers the following activities for all identified security incidents:

1. Detection
- The SIRT, other internal, or external entity identifies a Security or Privacy
- Event that may be the result of a potential exploitation of a Security Vulnerability or Weakness, or that may the result of an innocent error
- One of our Security detection controls identifies event outside of the established security baseline
2. Analysis
- SIRT determines whether the reported security or privacy event is in actuality security or a privacy event
- SIRT determines the incident severity and priority based on the following [incident classification](/handbook/security/security-operations/sirt/severity-matrix.html) methodology
3. Containment
- Mitigates the root cause of the incident to prevent further damage or exposure
- SIRT may implement additional controls to minimize the damage as a result of the incident
- Determine if it is safe to continue operations with the affected system
- Permit or deny the operations of the affected system
4. Eradication
- Components that have caused the security incident are eliminated
- Removal of the attackers’ access to the environment or the targeted system
- Strengthen the controls surrounding the affected system
5. Recovery
- Represents the effort to restore the affected system’s operations after the problem that gave rise to the incident has been corrected
- Implementation of additional monitoring controls
- Update the incident record with any relevant details
6. Post-Incident analysis and activities
- Post Mortem and lessons learned activity

#### Leaked Secrets Incident Response Process

When secrets are confirmed to be leaked, it is important to minimize the exposure time by immediately revoking the secrets. This can be done by automation or manual revocation by the Security team. Security will immediately revoke the secrets to prevent further abuse even if the potential impact of that action isn't clearly understood at that time. In some cases this may cause disruption, when the secrets are being used for legitimate processes. Because of this potential for impact to services dependent on the revoked secrets, Security will post a notification to the `#security-revocation-self-service` Slack channel, where secrets owners can use the channel for manual or automated self-service. Because the secret has already been exposed and revoked, and because it makes it easier for secrets owners to find their secrets in the channel, the clear text version of the revoked secret will be part of the notification.
 
### Confidentiality

Security incidents may (and usually do) involve sensitive information related to GitLab, GitLab's customers or employees, or users who (in one way or another) have engaged with GitLab. GitLab, while codifying the [Transparency](/handbook/values/#transparency) value, also strongly believes in and strives to maintain the privacy and confidentiality of the data its employees, customers, and users have entrusted us with.

A **confidential** issue means any data within the issue and any discussions about the issue or investigation are to be kept to **GitLab employees only** unless permission is explicitly granted by GitLab Legal, a GitLab Security Director, the VP of Security, or the GitLab Executive Team.

### Incident Tracking

Security incident investigations must begin by opening a [tracking issue](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/-/issues/new?issuable_template=Incident_Response) in the [SIRT](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/-/issues) project and using the Incident Response template. This tracking issue will be the primary location where all work and resulting data collection will reside throughout the investigation.

All artifacts from an investigation must be handled per the [Artifact Handling and Sharing](https://gitlab.com/gitlab-com/gl-security/runbooks/-/blob/master/sirt/external_requests/handling_and_sharing_artifacts.md) internal only runbook.

**NOTE:** The tracking issue, any collected data, and all other engagements involved in a Security Incident must be kept **strictly confidential**.

### Incident Severity

Assigning severity to an incident isn't an exact science and it takes some rational concepts mixed with past experiences and gut feelings to decide how bad a situation may be. When considering severity, look at:

- The type of data involved and how it's classified using the [Data Classification Policy](/handbook/security/data-classification-standard.html)
    - Was this data leaked or disclosed to parties who should not have visibility to it?
    - Has the data been modified in our records? (either confirmed or believed to be)
- Was a user or service account taken over?
    - What level of access did this account have and to what services or hosts?
    - What actions were taken by the compromised account?
- If a vulnerability is present on a host or service, consider the impact it might have on GitLab and the likelihood of it being exploited by using the [Risk Factors and Risk Scoring](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-factors-and-risk-scoring) documentation.
    - Was the vulnerability exploited? If so, how was it used and how frequently?
- What is the scope of the incident?
    - How many GitLab.com users were/may have been impacted?
    - How many hosts or services?
- Has this incident resulted in any hosts or services being unavailable?

To help place the correct severity rating on the incident you are about to submit, please refer to the following examples:

| Severity  | Description  | Examples  |Resolution   |   
|---|---|---|---|
| High | A Critical Incident with a High Impact | 1. Gitlab.com is down for all customers <br><br>2. Confidentiality or Privacy is breached <br><br> 3. Customer Data is lost <br><br>4. Exposed key |  Activate Pager Duty Immediately |  
| Low | A minor incident with a very low impact  | Suspicious activity on team-member laptop <br><br>  Third party vendor vulnerability <br><br> [Example_1](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/-/issues/1414)<br><br>[Example_2](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/-/issues/1469) <br><br> [Example_3](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/-/issues/1485) | Resolution will be provided during business hours for Engineer on call |


### Internal Engagement & Escalation

Coordinate with internal teams and prepare for the incident investigation:

- Invite all available parties to the SIRT incident response Zoom conference bridge for easier discussion (see topic in the SIRT Slack channel, or Zoom link in incident issue). The Security Engineer On-Call will begin recording the Zoom conference bridge **to their computer** then upload it to the team drive after concluding the incident bridge.
- Open an incident-focused Slack channel to centralize non-verbal discussion, particularly if the incident is of a sensitive nature. This should follow the naming convention `#sirt_####` where #### is the GitLab issue number in the SIRT project.
- If the incident was created by the security pager, a Google Drive folder and shared Google Doc should have been created automatically and linked to the issue. If the incident was created manually:
    - Set up a [shared Google Drive folder or GCS bucket](https://gitlab.com/gitlab-com/gl-security/runbooks/-/blob/master/sirt/external_requests/handling_and_sharing_artifacts.md#storing-and-sharing-files-using-google-cloud-storage) for centralized storage of evidence, data dumps, or other pieces of critical information for the incident.
    - Create a shared Google Doc from the [Security Incident Response Template](https://docs.google.com/document/d/1mYQxuLXGaBr6xwHV7YgRbDt_k597tk_Dr2NFX4qb79s/template/preview) and move it into the shared Google Drive folder to act as a centralized record of events in real-time. Try to capture significant thoughts, actions, and events as they're unfolding. This will simplify potential hand-off's and eventual Incident Review of the incident.

In the event that an incident needs to be escalated within GitLab, the Security Engineer On Call (SEOC) will page the Security Incident Manager On Call (SIMOC). It is the responsibility of the SIMOC to direct response activities, gather technical resources from required teams, coordinate communication efforts with the Communications Manager On Call, and further escalate the incident as necessary.

Characteristics of an incident requiring escalation include but are not limited to the following:

- Incidents involving or likely to involve data with an Orange or Red classification
- Incidents that are likely to impact, or are actively impacting the availability or functionality of essential services
- Incidents affecting legal or financial resources
- Incidents that are likely to require a breach notification or public notification
- Incidents involving criminal activity or that may require the involvement of law enforcement
- Incidents involving key personnel such as executive leadership

If applicable, coordinate the incident response with [business contingency activities](/handbook/business-ops/gitlab-business-continuity-plan/).

### Containment

Once an incident has been identified and the severity has been set, the incident responder must attempt to limit the damage that has already occurred and prevent any further damage from occurring. When an incident issue is opened, it will automatically contain the `~Incident::Phase::Identification` label. At the start of the containment phase this label will be updated to `~Incident::Phase::Containment`.

The first step in this process is to identify impacted resources and determine a course of action to contain the incident while potentially also preserving evidence. Containment strategies will vary based on the type of incident but can be as simple as marking an issue confidential to prevent information disclosure or to block access to a network segment.

It's important to remember the containment phase is typically a stop-gap measure to limit damage and not to produce a long term fix for the underlying problem. Additionally the impact of the mitigation on the service must be weighed against the severity of the incident.

When triaging `priority::1/severity::1` incidents there may be times that SIRT or Infrastructure are unable to mitigate an issue, or identify the full impact of a potential mitigation. In these cases the [Development Escalation Process](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html) can be used to engage with the development team on-call. It is important that this process is followed [as documented](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#process-outline) and only for `priority::1/severity::1` issues.

### Remediation and Recovery

During the remediation and recovery phase the incident responder will work to ensure impacted resources are secured and prepared to return the service to the production environment. This process may involve removing malicious or illicit content, updating access controls, deploying patches and hardening systems, redeploying systems completely, or a variety of other tasks depending on the type of incident. When transitioning from the containment phase into the remediation phase the SEOC will update the phase lable to `~Incident::Phase::Eradication` and when the remediation is complete the label will be updated to `~Incident::Phase::Recovery`.

An Incident Review will be completed for all `severity::1` incidents to guide the remediation and recovery process. Careful planning is required to ensure successful recovery and prevention of repeat incidents. The incident responder coordinates impacted teams to test and validate all remediations prior to deployment.

This phase should prioritize short term changes that improve the overall security of impacted systems while the full recovery process may take several months as longer term improvements are developed. During the post remediation Incident Review process the incident phase label will be updated to `~Incident::Phase::Incident Review`.

### Resolution

Upon completing the containment, remediation, communication and verification of impacted services, the incident will be considered resolved and the incident issues may be closed and the incident phase label will be changed to `Incident::Phase::Closed`.

The incident response process will move on to a post-mortem and lessons learned phase through which the process improvements and overall security of the organization can be analyzed and strengthened.

### Internal & External Communication

Our [security incident communication plan](/handbook/security/security-operations/sirt/security-incident-communication-plan.html) defines the who, what, when, and how of GitLab in notifying internal stakeholders and external customers of security incidents.

### Engaging Law Enforcement

If during the course of investigating a security event the incident itself, materials involved in the incident (stored data, traffic/connections, etc), or actions surrounding the incident are deemed illegal in the United States, it may be necessary (and advisable) to engage U.S. law enforcement.

1. The Security Engineer On-Call will immediately escalate to the Director of Security Operations to raise awareness of the legal concern.
1. Following review, the Engineer and Director will engage the VP of Security and VP of Legal for validation of next steps.
1. The Director of Security Operations will then contact the appropriate local law enforcement agencies, state agencies or US (federal) government agencies. 

### When You Join an Incident Channel or Call

In the event of a perceived major security incident (which may prove to not be one at a later point), adhoc communication is sometimes required for coordination. This is outlined in the sections above. If you are identified as someone who could assist during the perceived security incident with either the identification, confirmation, or mitigation of the incident, you will be added to a dedicated Zoom call or Slack channel. Upon joining that call/channel, please take note of the following:

- This is crisis management communication channel, that means that it's **private by default**. It may contain business critical or PII information that cannot be shared with the larger company at this time, or ever. Should GitLab Security determine that the content of this particular communication channel can be made internally available or public at a later point, the required changes will be made.
- **Read the channel history before asking questions**. Get some context, read through past conversations and related documents. The relevant person will reach out to you with specific asks at the right time.
- **Do your best to stay professional**. However, be aware that security incidents are often stressful and we're all humans. People may raise their voice, or use wording that seems unnecessary, harsh or inappropriate. It's important to cut people some slack (no pun intended) during this stressful time, and raise/address any potentially erratic behavior with the relevant manager once the incident is over.
- **Humor is your ally**. No, it really is.


### Incident Tracking

Incidents are tracked in the [Operations tracker](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/) through the use of the [incident template](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/-/blob/master/.gitlab/issue_templates/incident_response.md).

The correct use of dedicated [scoped incident labels](#incident-labels) is critical to the sanity of the data in the incident tracker and the subsequent metrics gathering from it.

#### Incident Labels

Incident delineator `Incident` denotes that an issue should be considered an incident and tracked as such.

| **`Incident::Phase`**              | What stage is the incident at? |
| ---------------------------------- | ------------------------------ |
| `Incident::Phase::Identification`  | Incident is currently being triaged (log dives, analysis, and verification) |
| `Incident::Phase::Containment`     | Limiting the damage (mitigations being put in place) |
| `Incident::Phase::Eradication`     | Cleaning, restoring, removing affected systems, or otherwise remediating findings |
| `Incident::Phase::Recovery`        | Testing fixes, restoring services, transitioning back to normal operations |
| `Incident::Phase::Incident Review` | The incident review process has begun (required for all S1/P1 incidents) |
| `Incident::Phase::Closed`          | Incident is completely resolved |

| **`Incident::Category`**                    | What is the nature of the incident? |
| ------------------------------------------- | ----------------------------------- |
| `Incident::Category::Abuse`                 | Abusive activity impacted GitLab.com |
| `Incident::Category::CustomerRequest`       | Customer related request |
| `Incident::Category::DataLoss`              | Loss of data |
| `Incident::Category::InformationDisclosure` | Confidential information might have been disclosed to untrusted parties |
| `Incident::Category::LostStolenDevice`      | Laptop or mobile device was lost or stolen |
| `Incident::Category::Malware`               | Malware |
| `Incident::Category::Misconfiguration`      | A service misconfiguration |
| `Incident::Category::NetworkAttack`         | Incident due to malicious network activity - DDoS, credential stuffing |
| `Incident::Category::NotApplicable`         | Used to denote a false positive incident (such as an accidental page) |
| `Incident::Category::Phishing`              | Phishing |
| `Incident::Category::UnauthorizedAccess`    | Data or systems were accessed without authorization |
| `Incident::Category::Vulnerability`         | A vulnerability in GitLab and/or a service used by the organization has lead to a security incident |

| **`Incident::Organization`**               | What is impacted? |
| ------------------------------------------ | ----------------- |
| `Incident::Organization::AWS`              | One of GitLab's AWS environments |
| `Incident::Organization::Azure`            | GitLab's Azure environment |
| `Incident::Organization::DO`               | Digital Ocean environment |
| `Incident::Organization::GCP`              | GitLab's GCP environment |
| `Incident::Organization::GCP-Enclave`      | GitLab Security's GCP environment |
| `Incident::Organization::GSuite`           | Google Workspaces (GSuite, GDrive) |
| `Incident::Organization::GitLab`           | GitLab the organization and GitLab the product |
| `Incident::Organization::GitLabPages`      | GitLab.com Pages |
| `Incident::Organization::SaaS`             | Incident in vendor-operated SaaS platform |
| `Incident::Organization::end-user-devices` | Team member devices |
| `Incident::Organization::EnterpriseApps`   | Other enterprise apps not defined here (Zoom, Slack, etc) |

| **`Incident::Source`**       | How did SIRT learn of the incident? |
| ---------------------------- | ----------------------------------- |
| `Incident::Source::External` | An external source (such as a GitLab.com customer) |
| `Incident::Source::Internal` | An internal source (such as a finding by a team member) |

| **`Incident::Origin`**                  | How did GitLab learn of the incident? |
| --------------------------------------- | ------------------------------------- |
| `Incident::Origin::Email`               | Reported via email |
| `Incident::Origin::EDR`                 | Endpoint Detection |
| `Incident::Origin::GoogleSecurityAlert` | Google Security Alert |
| `Incident::Origin::H1`                  | HackerOne report |
| `Incident::Origin::HIPB`                | Have I Been Pwned email |
| `Incident::Origin::Issue`               | GitLab issue |
| `Incident::Origin::SIEM`                | SIEM alert|
| `Incident::Origin::Slack`               | Slack |
| `Incident::Origin::Zendesk`             | Zendesk ticket |

| **`Incident::Classification`**            | How accurate was the finding? |
| ----------------------------------------- | ----------------------------- |
| `Incident::Classification::TruePositive`  | True positive |
| `Incident::Classification::FalsePositive` | False positive |
| `Incident::Classification::TrueNegative`  | True negative |
| `Incident::Classification::FalseNegative` | False positive |

## Exceptions
Exceptions to this procedure will be tracked as per the [Information Security Policy Exception Management Process](/handbook/security/#information-security-policy-exception-management-process).

## References
* Parent Policy: [Information Security Policy](/handbook/security/)
* [Security Communications Runbooks](https://gitlab.com/gitlab-com/gl-security/runbooks/-/tree/master/communications) (internal)
* [Incident Communications Plan](https://about.gitlab.com/handbook/security/security-operations/sirt/security-incident-communication-plan.html) 
* [Marketing Emergency Response process](https://about.gitlab.com/handbook/marketing/emergency-response/)
* [Time-sensitive blog post process](https://about.gitlab.com/handbook/marketing/blog/#time-sensitive-posts--instructions)  
* [Marketing rapid response process](https://about.gitlab.com/handbook/marketing/#marketing-rapid-response-process)

