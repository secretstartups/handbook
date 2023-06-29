---
layout: handbook-page-toc
title: "Security Operational Risk Management (StORM) Program & Procedures"
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

<div class="panel panel-gitlab-purple">
**Not a GitLab team member but want to provide feedback on our StORM program?**
{: .panel-heading}
<div class="panel-body">

We receive [feedback](https://about.gitlab.com/handbook/people-group/guidance-on-feedback/#feedback-at-gitlab) from GitLab team members regularly and we wanted to provide a mechanism for non-GitLab team members to provide feedback as well to help us [iterate](https://handbook.gitlab.com/handbook/values/#iteration) and align more closely with [our values](https://handbook.gitlab.com/handbook/values). If you are not a GitLab team member and would like to provide feedback on our Security Operational Risk Management (StORM) program or methodology, plese use this [feedback form](https://docs.google.com/forms/d/e/1FAIpQLSfmD4G6CTdpbCe5Aymoz0oD6Z3Oi1X-2xxYzGNbJ2wcYh6uOA/viewform?usp=sf_link) to submit anonymous feedback.

</div>
</div>

## Purpose

The purpose of the Security Operational Risk Management (“StORM”) program at GitLab is to identify, monitor, treat and report upon security operational risks in support of GitLab's [strategy](https://about.gitlab.com/company/strategy/). The Security Risk Team utilizes the procedures below to ensure that security risks that may impact GitLab's ability to achieve its customer commitments and operational objectives are effectively managed. 

## Scope

The scope of the StORM program is limited to operational (also referred to as Tier 2) risks as defined in the [NIST SP 800-30 Rev. 1](https://csrc.nist.gov/publications/detail/sp/800-30/rev-1/final) risk management hierarchy. These risks are generally identified during the Annual Risk Assessment(ARA) or Ad-Hoc reports. 

**Out of Scope** Tier 2 risks such as operational risks that are not security-related are out of scope (accounting related risks, for example). [Tier 3 Risks](https://about.gitlab.com/handbook/security/security-assurance/observation-management-procedure.html) identified by teams across the organization are considered by Security Risk when scoring and/or treating their associated Tier 2 risk (where applicable). Security Risk does not directly facilitate the treatment of Tier 3 risks but may effectively do so through the treatment of a Tier 3 risk's associated Tier 2 risk. [Tier 1 risks] or enterprise risks are managed as part of our Enterprise Risk Management Program and examples can be found on our [Mitigating Concerns](https://about.gitlab.com/handbook/leadership/mitigating-concerns/) handbook page.

## Roles and Responsibilities

A risk governance structure has been put in place to outline the overall roles and responsibilities of individuals as it relates to StORM. The current governance structure is:

| Role | Responsibility |
| ------ | ------ |
| Risk Owners | - Makes decisions for their specific organizations<br>- Provides insight into the day-to-day operational procedures executed by their organization in support of Risk Treatment planning<br>- Responsible for driving risk acceptance and/or implementing remediation activities over the risks identified |
| Security Risk Team | - Coordinates and executes the annual risk assessment<br>- Maintains the risk register to ensure accuracy and currency<br>- Acts in a Program Management capacity to support the tracking of risk treatment activities<br>- Coordinates peer validation testing after all risk remediation activities have been completed <br>- Periodically reports on the status of security operational risks |
| Risk Manager | This role is assigned per risk to a specific Security Risk team member. Expectations include:<br>- Maintains knowledge on the history, current-state, and direction of their risk<br>- Works with the risk owner or owners to ensure the risk and remediation activity is accurately captured<br>- Identifies, monitors, and participates in associated issues/MRs/epics/working groups that are relevant to their assigned risk<br>- Validates remediation activities<br>- Maps risks to relevant <a href="https://about.gitlab.com/handbook/security/security-assurance/security-compliance/sec-controls.html#gitlab-control-framework-gcf">GCF controls</a>, <a href="https://gitlab.com/groups/gitlab-com/gl-security/security-assurance/-/epics?state=opened&page=1&sort=start_date_desc&label_name[]=Observation+Epics">Root Cause Observation Epics</a>, <a href="https://gitlab.com/gitlab-com/gl-security/security-assurance/observation-management/-/issues/?sort=created_date&state=opened&label_name%5B%5D=ZenGRC%3A%3AObservation&first_page_size=100">Security Compliance Tier 3 Observations</a>, <a href="https://about.gitlab.com/handbook/security/security-assurance/field-security/field-security-study.html">Field Security Study Observations</a>, and other observations noted from security-impacting assessments|
| Manager of Security Risk Team | Provides management level oversight of the StORM program, including continuing reviews of GitLab's Risk Register and acts as a point of escalation as needed |
| Senior Director of Security Assurance | Provides senior leadership level oversight of the StORM program, including a review and approval of the annual risk assessment report |
| CISO | Executive sponsor of StORM program, performs a final review and approval of the annual risk assessment report |
| Senior Leadership | Sets the tone of the risk appetite across the organization <br><br>* Leverages information derived from StORM to make strategic decisions |
| Security Assurance Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

## StORM Procedures

### Risk Assessment Procedures

#### Step 1: Risk Appetite and Tolerance

**Tone at the Top**: GitLab's StORM methodology uses a defined Risk Appetite and Risk Tolerance as the primary drivers to determine what risks GitLab are willing to accept versus what risks we will need to treat. These thresholds are defined by Senior Leadership across the organization to ensure the Tone at the Top is aligned with the StORM program. Risk Appetite and Tolerance are reassessed year-to-year during the annual security operational risk assessment process. This is done through an annual **Risk Appetite Survey** based on the [ISO 31000 Risk Management Methodology](https://www.iso.org/iso-31000-risk-management.html). The survey is distributed to individuals operating in a Senior Leadership capacity with direct relations to Security Operations. The responses are averaged to arrive at an overall risk appetite and tolerance. 

#### Step 2: Risk Identification

In order to effectively identify, manage, and treat operational risks, GitLab has defined a set of threat source categories alongside specific risk factors and risk scoring definitions. Based on these threat sources, various stakeholders across the organization will be identified to participate in the Risk Identification phase. For details on the identified threat sources and example threat events, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#identifying-threat-sources-and-events) page.

The Security Risk Team interviews/surveys GitLab team members operating in a leadership capacity at GitLab in order to identify security operational risks within their respective departments. Risks identified will always be framed in terms of threat sources and threat events, and then assessed against the likelihood of occurrence and the impact to GitLab if the risk event occurs. Additionally, these risks will be assessed against the current internal controls in place to determine the overall residual risk remaining. 

For details of the scoring methodology used, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-factors-and-risk-scoring) page. For guidance on drafting risk language see the [Risk Drafting Guidance](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-drafting-guidance). Risks will be quality reviewed by a member of the Security Risk Team.

#### Step 3: Risk Tracking and Reporting

Risks identified through the Risk Identification phase are formally tracked via an internal risk register. Given the nature of the sensitivity of this information in aggregate, the risk register is [not made public](/handbook/communication/confidentiality-levels/#not-public), and is not distributed externally. However, a publicly viewable GitLab Risk Register Template is available [here](https://docs.google.com/spreadsheets/d/1Lvn-ZjPNcZ-QMh-pkC6HqjwR-acUf70V9w2pquhRmH0/edit?usp=sharing) for those interested in getting some more insight into the type of information tracked in GitLab's risk register. StORM related risk activities are centralized within GitLab's GRC tool, ZenGRC. Additional information on the various risk related activities carried out of ZenGRC can be found on the [ZenGRC Activities](/handbook/security/security-assurance/zg-activities.html#risk-activities) handbook page.

#### Step 4: Risk Response

For each risk identified above, a formal risk response decision is made to determine how GitLab will handle the risk. For details of the risk response options available, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-response-options) page. Note that as part of the risk response procedures, the Risk Owner will make a determination on whether or not to accept a risk or pursue remediation based on our [Risk Appetite and Tolerances](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#establishing-a-risk-appetite-and-tolerance-for-operational-security-risk-taking). Treatment plans will be reviewed by the Security Risk Manager or delegate and approval captured via comment in the GRC application.

#### Step 5: StORM Detailed Report

Once the security operational risk assessment is completed, a detailed report is prepared to provide an overview of the Security Risk landscape and risk-specific information, including the incorporation of information gathered as part of our risk assessment. The template we've used can be found [here](https://docs.google.com/presentation/d/1uwz8sKnf9sWY9Of_GKPtIU2dDa3i6k6xekZENPW41NY/edit?usp=sharing) for reference.

### Ad-hoc Risk Identification and Assessment
There may be times that risks are identified outside of the annual StORM process - such as risks that arise from a security incident, risk identified through regular day-to-day business operations, etc. All security operational risks identified ad-hoc are discussed with the Security Risk Team, an inherent risk score is assigned, and a qualitative analysis done to determine if it should be escalated to the risk register. 

### Security System Intake
To assess newly acquired/developed systems that enable security controls OR are/may be in scope for compliance programs for potential inclusion into our [GitLab Control Framework (GCF)](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/sec-controls.html#gitlab-control-framework-gcf) and compliance programs  (e.g., [Security Compliance Program](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/#-core-competencies) and [SOX Program](https://about.gitlab.com/handbook/internal-audit/sarbanes-oxley/)).


#### 1. System identification
Our goal is to identify systems that enable security controls (e.g., access management system) OR systems that are (or may be) subject to regulatory (e.g., SOX) or compliance requirements (SOC2) as early as possible via our [Third Party Risk Management (TPRM) Program](https://about.gitlab.com/handbook/security/security-assurance/security-risk/third-party-risk-management.html). As we engage with third parties for new systems, we assess the use of the system and whether or not it meets the criteria described above. Existing systems can also be ingested into the Security Compliance Intake process. Examples of these could include systems whose functionality has expanded to support security controls or instances where our understanding of a security control has improved resulting in the identification of a previously uncredited supporting system.

If the system meets the criteria, we open up a new [Security Compliance Intake Issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/security-compliance-intake/-/issues/new?issue[title]=System%20Intake:%20%5BSystem%20Name%20FY2%23%20Q%23%5D&issuable_template=intakeform).

#### 2. Creating Security Compliance Intake Issue
[Security Compliance Intake Issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/security-compliance-intake/-/issues/new?issue[title]=System%20Intake:%20%5BSystem%20Name%20FY2%23%20Q%23%5D&issuable_template=intakeform) asks the author to include details related to the system including:
- System overview
- Implemented security controls or impacted regulatory or compliance program
- Link to TPRM review and results
- Link to most recent [Business Impact Analysis](/handbook/security/security-assurance/security-risk/storm-program/business-impact-analysis.html) and [Critical System Tier](/handbook/security/security-assurance/security-risk/storm-program/critical-systems.html#critical-systems-tiering-methodolgy) (CST)
- Control owner details
- Deployment model and implementation status
- Data classification
- Regulatory scope (supported by Security Compliance and [Internal Audit](/handbook/internal-audit/))
The author of the issue completes as much of the issue as they can and assigns it to the Security Risk team for completion/triage (if the issue is not originally created by the Security Risk team).

#### 3. Security Compliance workflow
Once the Security Compliance Intake issue is populated, Security Risk assigns the issue to the Security Compliance team to complete the following tasks to incorporate the system into our Security Compliance Program:
- Notify stakeholders and system owners of upcoming testing requirements
- Incorporate testing requirements (driven by CST and regulatory/compliance requirements) and recommendations into the fiscal year audit schedule
- Determine when [user access reviews](/handbook/security/security-assurance/security-compliance/access-reviews.html) for the new system need to start and communicate to compliance teams
</details>

## Communication of Risks to the Security Risk Team

There are multiple ways the team can be engaged for risk:

1. (**Preferred**) If the risk was identified outside of a GitLab issue or MR or is extremely sensitive and requires some discretion, team members can do the following:
   * Join the `#security-risk-management` Slack channel
   * Execute the `Risk Escalation` workflow by clicking on the blue lightning bolt in the bottom right corner of the message box and selecting `Risk Escalation`
   * Fill out the form presented in Slack and submit 
   * The Security Risk Team will intake and triage the risk and will follow-up if needed
   * **Note that Slack will not post the details that are entered into the form to the public channel**
2. If the risk is identified within an issue, team members can tag the team directly by @ mentioning `@gitlab-com/gl-security/security-assurance/security-risk-team` on the issue or MR
3. Submit a [Risk Escalation issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/risk-field-security-team/risk-assessments/-/issues/new?issuable_template=risk-escalation) on the StORM Repo

When documenting risks, team members can leverage [Observation Description guidance](/handbook/security/security-assurance/observation-management-procedure.html#drafting-observation-description-guidance) for existing issues/observations or [risk drafting guidance](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-drafting-guidance).

## Transparency and the StORM Program

As per [GitLab's Communication Page](/handbook/communication/confidentiality-levels/#not-public), information about risks tracked in GitLab's Risk Register defaults to _not public and limited access_. GitLab will always be susceptible to risks. The goal of implementing risk treatment plans and carrying out risk remediation activities is to reduce the likelihood or impact (or both) of a risk occurring. Given that no risks identified can ever be fully eliminated, but instead are mitigated through reduction of likelihood and/or impact, risks that have been escalated to GitLab's Risk Register will be shared on a need-to-know basis.

## Exceptions

The only exceptions to this procedure are those risks that are out of scope (as defined above). 

## References

- GitLab Handbook References:
    - [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html)
    - [GitLab's Communication Page, Not Public Section](/handbook/communication/confidentiality-levels/#not-public)
    - [ZenGRC Activities](/handbook/security/security-assurance/zg-activities.html#risk-activities)
- External References
    - [NIST SP 800-30 Rev. 1](https://csrc.nist.gov/publications/detail/sp/800-30/rev-1/final)
    - [ISO 31000 Risk Management Methodology](https://www.iso.org/iso-31000-risk-management.html)
