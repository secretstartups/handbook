---
layout: handbook-page-toc
title: "Business Impact Analysis"
description: "Information about the Business Impact Analysis process that is carried out periodically by the Security Risk Team"
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

# Business Impact Analysis

The Business Impact Analysis (BIA) is developed as part of the Business Continuity Plan process and is a point-in-time analysis of system components that determines the criticality and potential impact to GitLab's mission-critical processes and data as well as impact to GitLab should the system component become unavailable. This quantitative analysis allows GitLab to establish priority levels for sequencing recovery activities and resources.

## Purpose

The purpose of the BIA is to identify and prioritize system components by correlating them to mission critical processes that support ongoing business operations and the GitLab product. Using this information to characterize what would be the impact to GitLab, if any of these systems were to be unavailable. 

## Scope

The scope of the BIA is the entirety of systems utilized across GitLab as documented in the [Tech Stack](/handbook/business-technology/tech-stack-applications/).

## Roles and Responsibilities

|Role|Responsibility|
|----------|------------------------------|
|[Security Risk Team](/handbook/security/security-assurance/security-risk/)|Responsible for implementing and executing this procedure annually. For new systems that have not previously undergone a BIA, a holistic one will be performed. All other systems that have gone through an initial BIA will undergo a targeted BIA process to validate and obtain the most up-to-date data related about it's use at GitLab.|
|[IT Compliance](/handbook/business-technology/it-compliance/)|Utilizes the data obtained from the BIA to drive [Business Continuity Planning](/handbook/business-technology/gitlab-business-continuity-plan/) activities.|
| Technical System Owners| Completion of annual BIA (with additional support from Business Owner or delegation to another team member, as applicable) |
| Security Assurance Management (Code Owners)|Responsible for approving significant changes and exceptions to this procedure. |

## BIA Procedures

### New systems

A BIA is initiated as the result of GitLab's [process for adding net-new systems to the tech stack](/handbook/business-technology/tech-stack-applications/#add-new-system-to-the-tech-stack) to ensure that BIA data is captured at the time of new system implementation. The steps listed below summarize how BIAs are completed:

1. A formal BIA questionnaire is distributed to the technical system owners for each system, as listed in the [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) or merge request related to adding the system to the tech stack. If there are multiple individuals listed, one team member will be selected. The questionnaire will be sent to the team member's GitLab email directly from GitLab's GRC Application, ZenGRC. Additional information on completing this questionnaire can be found on the [ZenGRC Activities](/handbook/security/security-assurance/zg-activities.html#completing-zengrc-questionnaires) handbook page. More info on the questionnaire is available in the video below.
2. Once the responses are received, the data will be sanitized and aggregated. Follow-ups with the technical owner will be completed as required to ensure the data used is accurate, complete, and objective.
3. Mission critical systems are identified and next steps are taken to ensure that a system recovery/business continuity plan is documented accordingly.
4. On a periodic basis, the BIA is reviewed and will be reperformed. While we do not anticipate significant changes year over year, as part of our due diligence and compliance needs, the Security Risk Team ensures that the data obtained from BIA questionnaires does not become stale through periodic validation.

### Existing systems

A BIA is performed or validated once per fiscal year for each Tier 1 system listed on GitLab's [Tech Stack](/handbook/business-technology/tech-stack-applications/). BIA data for systems below Tier 1 will be performed or validated every 2 years. In addition to BIA data/response validation, additional questions may be incorporated for the Technical Owner to answer (e.g., questions regarding Technical Debt). The Security Risk Team is responsible for the periodic review and reconciliation of systems which require a BIA year over year. System BIAs will be performed in waves and prioritized by Tier and regulatory need.

### Quality Reviews

The results of the questionnaire will be imported into the relevant System Object within GitLab's GRC system to support on-going maintenance, quality/areas of concern reviews, and reporting. Any material change to the Technical Owner's questionnaire response will be accompanied by a communication/acknowledgement to/from the Technical Owner via comment within GRC system, Slack communication, or within GitLab issue. If leveraging Slack, please attach a screenshot of communication to the System Object within the GRC system. The Security Risk team will review the responses to the BIA questionnaires to support completeness and accuracy of the information. Quality checks will include:

- Compare the `Data Classification` field with the `Data Collected` field to ensure alignment. If changes to the Technical Owner's response are required, perform the update with the relevant GRC System Object and communicate the changes to the Technical Owner for acknowledgement.
- Compare the `Data Classification` field with the `Data Classification` field in the [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). If there is a difference, work with the Technical Owner to [update the Tech Stack](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/#update-tech-stack-information) accordingly.
- Compare the `Maximum Tolerable Downtime (MTD)` and `Impact of System Outage` fields to ensure they reconcile. If not, work with the Technical Owner to gain alignment and update values accordingly. Availability is the primary driver for our [Critical Systems Tiering methodology](https://about.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/critical-systems.html#critical-systems-tiering-methodolgy).
- For blank/unknown/obscure responses, engage the Technical Owner via comment functionality within the GRC system, Slack, or a GitLab issue.

As BIA response values are reviewed within System Objects, labels will be applied in the GRC application indicating the fiscal year they were reviewed (e.g., FY24 BIA QR Complete)

### Responses that may result in Tier 3 Observations/Risks

We include some questions in our questionnaire that may lead to the creation of [Tier 3 Observations](https://about.gitlab.com/handbook/security/security-assurance/observation-management-procedure.html#scope). The Security Risk team will review BIA questionnaire responses to identify potential risks to GitLab. Responses that may result in Tier 3 Observations are listed below:

- `Shared Administrative Accounts` = Yes
- `Operating System` = Windows Server
- `System Specific Recovery Plans` = Insufficient detail in response
- `Authentication Mechanism` ≠ Okta
- `Number of Administrators of the system` < 2

The Security Risk team will follow the observation intake and management process described [here](https://gitlab.com/gitlab-com/gl-security/security-assurance/observation-management/-/blob/master/runbooks/1_Observation%20Intake%20and%20Management.md) for ad-hoc observations.

### BIA Outputs

The data obtained from BIA questionnaires results in:

1. Ensuring that the correct data classification has been applied to a system based on GitLab's [Data Classification Standard](/handbook/security/data-classification-standard.html)
1. Provides visibility, where applicable, on the operating system that a system is deployed on, to corroborate that an appropriate [approved operating system](/handbook/security/approved_os.html) is used. 
1. Assignment of the appropriate [Critical System Tier](/handbook/security/security-assurance/security-risk/storm-program/critical-systems.html)
   - Critical System Tiers additionally help identify and inventory systems which are considered critical (i.e. disruption that has a significant impact to critical business operations or the functionality/security of GitLab SaaS subscriptions.)
   - Critical System Tiers provide a mechanism to help prioritize and scope activities impacting multiple systems (leveraging tiering assignements to plan work)
1. Data such as maximum tolerable downtime and impact of service disruptions or outages are used as an input for [Business Continuity Planning](/handbook/business-technology/gitlab-business-continuity-plan/)
1. PILOT: Security risk assessment to inform the Security Compliance backlog.

## Reporting

BIA results are reported via updates to GitLab's Tech Stack. Specific attributes like `data_classification` and `critical_systems_tier` are updated accordingly for each system's record should the information from the BIA lead to changes to data classification and/or assignment of a new critical system tier.

## Exceptions

There are no systems that are exempt from the BIA procedures. Note that GitLab may procure new systems throughout an annual period. While the Security Risk Team will work towards performing a BIA for new systems in a timely manner, systems may periodically not have a BIA performed until the next annual BIA. 

## References

- [Business Continuity Plan](/handbook/business-technology/gitlab-business-continuity-plan/)
- [Data Classification Standard](/handbook/security/data-classification-standard.html)
- [Critical System Tiering Methodology](/handbook/security/security-assurance/security-risk/storm-program/critical-systems.html)
