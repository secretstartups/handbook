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

Inline with GitLab's regulatory obligations, changes to [controlled documents](/handbook/security/controlled-document-procedure.html) must be approved or merged by a code owner. All contributions are welcome and encouraged. 

</div>
</div>

# Business Impact Analysis

The Business Impact Analysis (BIA) is developed as part of the Business Continuity Plan process and is a point-in-time analysis of system components that determines the criticality and potential impact to GitLab's mission-critical processes and data as well as impact to GitLab should the system component become unavailable. This quantitative analysis allows GitLab to establish priority levels for sequencing recovery activities and resources.

## Purpose

The purpose of the BIA is to identify and prioritize system components by correlating them to mission critical processes that support ongoing business operations and the GitLab product. Using this information to characterize what would be the impact to GitLab, if any of these systems were to be unavailable. This is considered a bottom-up approach to risk management which is complementary to the top-down approach of the [Annual Risk Assessment](/handbook/security/security-assurance/security-risk/storm-program/#step-1-risk-appetite-and-tolerance).

## Scope

The scope of the BIA is the entirety of systems utilized across GitLab as documented in the [Tech Stack](/handbook/business-technology/tech-stack-applications/).

## Roles and Responsibilities

|Role|Responsibility|
|----------|------------------------------|
|[Security Risk Team](/handbook/security/security-assurance/security-risk/)|Responsible for implementing and executing this procedure periodically. BIAs for new systems are performed at the time of onboarding. |
|[IT Compliance](/handbook/business-technology/it-compliance/)|Utilizes the data obtained from the BIA to drive [Business Continuity Planning](/handbook/business-technology/gitlab-business-continuity-plan/) activities.|
| [Business/Technical Owner](https://about.gitlab.com/handbook/business-technology/tech-stack-applications/#tech-stack-definitions) | Completion of BIA |
| Security Assurance Management (Code Owners)|Responsible for approving significant changes and exceptions to this procedure. |

## BIA Procedures

### New Systems (Ad-Hoc)

A BIA is initiated as the result of TPRMs process for net new systems (guided by our [report template](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/blob/master/.gitlab/issue_templates/TPRM%20Assessment%20Report%20Template.md)). An [associated issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-risk-team/third-party-vendor-security-management/-/blob/master/.gitlab/issue_templates/New%20System%20-%20TS%20Add%20and%20BIA%20Tracking.md) is created by the TPRM engineer to ensure that the new system has a completed BIA and is added to the Tech Stack.  The steps listed below summarize how BIAs are completed for new systems:

1. A formal BIA questionnaire is distributed to the Business/Technical Owner for each system, as listed in the [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml) or Merge Request related to adding the system to the Tech Stack. Launch a new BIA Questionnaire from GitLab's GRC Application, ZenGRC, by following these steps:
      1. Click 'System of Record' > 'Projects' > 'Business Impact Analysis - New Systems' Project (Select [correct Fiscal Year](https://gitlab.zengrc.com/sor/info/Project/106/info))
      1. Click the 3 dots on the top right-hand corner > 'Send New Questionnaire'
      1. Search for and select the 'Business Impact Analysis (BIA)' questionnaire template
      1. Populate the Recipient Details section. The Recipient is "Internal" (input name/GitLab email of one Business/Technical Owner only). 
      1. Search for and select the 'BIA Questionnaire (New System)' email template
      1. Update the Title/Subject, Greeting, Message body, CC and Reply-To @securityrisk@gitlab.com, and Due Date accordingly.  Target completion of the BIA Questionnaire is two weeks.
      1. Click 'Review' > 'Submit' when ready
      1. Map the appropriate System Object to the BIA Questionnaire by clicking the pencil icon in the 'map:system' column.

##### Escalation Path
Security Risk should use discretion when actioning these steps (e.g. consider progress made in completing Tech Stack MR/BIA Questionnaire). Most tech stack / BIA issues are due two weeks from creation.

1. Due Date +1 Business Day: Notify Business/Technical Owner or Delegate in a public Slack channel (e.g. #sec-assurance).
1. Due Date +5 Business Days: Notify Manager of Business/Technical Owner or Delegate in a public Slack channel (e.g. #sec-assurance).
1. Due Date +10 Business Days: Notify SecRisk Manager and consider issuing Risk Acceptance by following the [TPRM Risk Acceptance Process](https://about.gitlab.com/handbook/security/security-assurance/security-risk/third-party-risk-management.html#tprm-risk-acceptance-process).

### Existing Systems (Frequency based on Critical System Tier)

A BIA is performed or existing BIA data are validated once per fiscal year for each Tier 1 system listed on GitLab's [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). BIA data for Tier 2 and 3 systems will be refreshed or validated every 2 years. BIA data for existing Tier 4 systems will not be periodically refreshed or validated due to the low risk they represent to GitLab. In addition to BIA data/response validation, additional questions may be incorporated for the Business/Technical Owner to answer (e.g., questions regarding Technical Debt). The Security Risk Team is responsible for the periodic review and reconciliation of systems which require a BIA year over year. System BIAs will be performed in waves and prioritized by Tier and regulatory need.

### Quality Reviews

The Security Risk team will review the responses to the BIA questionnaires to support completeness and accuracy of the information based on the TPRM assessment performed for the system.

For blank/unknown/obscure responses, engage the Business/Technical Owner via comment functionality within the GRC system, Slack, or a GitLab issue.
### Responses that may result in Tier 3 Observations/Risks

We include some questions in our questionnaire that may lead to the creation of [Tier 3 Observations](https://about.gitlab.com/handbook/security/security-assurance/observation-management-procedure.html#scope). The Security Risk team will review BIA questionnaire responses to identify potential risks to GitLab. Responses that may result in Tier 3 Observations are listed below:

- `Shared Administrative Accounts` = Yes
- `System Specific Recovery Plans` = Insufficient detail in response
- `Authentication Mechanism` ≠ Okta
- `Number of Administrators of the system` < 2

The Security Risk team will follow the observation intake and management process described [here](https://gitlab.com/gitlab-com/gl-security/security-assurance/observation-management/-/blob/master/runbooks/1_Observation%20Intake%20and%20Management.md) for ad-hoc observations.

### BIA Outputs

The data obtained from BIA questionnaires results in:

1. Ensuring that the correct data classification has been applied to a system based on GitLab's [Data Classification Standard](/handbook/security/data-classification-standard.html)
1. Assignment of the appropriate [Critical System Tier](/handbook/security/security-assurance/security-risk/storm-program/critical-systems.html)
   - Critical System Tiers additionally help identify and inventory systems which are considered critical (i.e. disruption that has a significant impact to critical business operations or the functionality/security of GitLab SaaS subscriptions.)
   - Critical System Tiers provide a mechanism to help prioritize and scope activities impacting multiple systems (leveraging tiering assignments to plan work)
1. Data such as maximum tolerable downtime and impact of service disruptions or outages are used as an input for [Business Continuity Planning](/handbook/business-technology/gitlab-business-continuity-plan/)
1. PILOT: Security risk assessment to inform the Security Compliance backlog.

## Reporting

BIA results are reported via updates to GitLab's Tech Stack. Specific attributes like `data_classification` and `critical_systems_tier` are updated accordingly for each system's record should the information from the BIA lead to changes to data classification and/or assignment of a new critical system tier.

## Exceptions

System Proof of Concepts (POC), Proof of Values (POV), and Pilots are exempt from BIA procedures. In the event Tier 1, Tier 2, or Tier 3 systems are added by actors other than Security Risk, these systems will be reviewed as part of the next periodic BIA.

## References

- [Business Continuity Plan](/handbook/business-technology/gitlab-business-continuity-plan/)
- [Data Classification Standard](/handbook/security/data-classification-standard.html)
- [Critical System Tiering Methodology](/handbook/security/security-assurance/security-risk/storm-program/critical-systems.html)
