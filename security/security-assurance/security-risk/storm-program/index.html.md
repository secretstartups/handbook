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

# Overview

## Quick Introduction to Risk Management at GitLab

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/vt56R5ufR8g" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

## Purpose

The purpose of the Security Operational Risk Management (“StORM”) program at GitLab is to identify, track, and treat security operational risks in support of GitLab's organization-wide objectives. The Security Risk Team utilizes the procedures below to ensure that security risks that may impact GitLab's ability to achieve its customer commitments and operational objectives are effectively identified and treated. 

## Scope

The scope of the StORM program is limited to operational (also referred to as Tier 2) risks as defined in the [NIST SP 800-30 Rev. 1](https://csrc.nist.gov/publications/detail/sp/800-30/rev-1/final) risk management hierarchy below. These risks are generally identified during the Annual Risk Assessment(ARA) or Ad-Hoc reports. 

**Out of Scope** Risks, such as operational risks that don't impact Security, Third Party Vendor risk, and Information System deficiencies, are managed through separate processes. However, observations noted at the Tier 3 level have the potential to escalate to a Tier 2 Risk based on a [Control Health & Effectiveness Rating (CHER)](/handbook/security/security-assurance/observation-management-procedure.html).

![Risk Management Hierarchy](/handbook/security/security-assurance/images/nist-rm-hierarchy.png)

## Roles and Responsibilities

A risk governance structure has been put in place to outline the overall roles and responsibilities of individuals as it relates to StORM. The current governance structure is:

| Role | Responsibility |
| ------ | ------ |
| Risk Owners | Makes decisions for their specific organizations <br><br>* Provides insight into the day-to-day operational procedures executed by their organization in support of Risk Treatment planning <br><br>* Responsible for driving risk acceptance and/or implementing remediation activities over the risks identified |
| Security Risk Team | Coordinates and executes the annual risk assessment <br><br>* Maintains the risk register and tracks risks through treatment <br><br>* Acts in a Program Management capacity to support the tracking of risk treatment activities <br><br>* Coordinates peer validation testing after all risk remediation activities have been completed |
| Manager of Security Risk| Provides management level oversight of the StORM program, including continuing reviews of GitLab's Risk Register and acts as a point of escalation as needed |
| Director of Security Assurance | Provides senior leadership level oversight of the StORM program, including a review and approval of the annual risk assessment report |
| VP of Security | Executive sponsor of StORM program, performs a final review and approval of the annual risk assessment report |
| Senior Leadership | Sets the tone of the risk appetite across the organization <br><br>* Drives direct reports in their respective business units to comply with the StORM program |
| GitLab Team Members (Employees and Contractors) | Comply with the StORM program policies and procedures |
| Security Assurance Management (Code Owners) | Responsible for approving significant changes and exceptions to this procedure |

## StORM Procedures

<details>
<summary markdown="span"><b>Annual Risk Assessment Procedures</b>
</summary>

### Step 1: Risk Appetite and Tolerance

**Tone at the Top**: GitLab's StORM methodology uses a defined Risk Appetite and Risk Tolerance as the primary drivers to determine what risks GitLab are willing to accept versus what risks we will need to treat. These thresholds are defined by Senior Leadership across the organization to ensure the Tone at the Top is aligned with the StORM program. Risk Appetite and Tolerance are reassessed year-to-year during the annual security operational risk assessment process. This is done through an annual **Risk Appetite Survey** based on the [ISO 31000 Risk Management Methodology](https://www.iso.org/iso-31000-risk-management.html). The survey is distributed to individuals operating in a Senior Leadership capacity with direct relations to Security Operations. The responses are averaged to arrive at an overall risk appetite and tolerance. 

### Step 2: Risk Identification

In order to effectively identify, manage, and treat operational risks, GitLab has defined a set of threat source categories alongside specific risk factors and risk scoring definitions. Based on these threat sources, various stakeholders across the organization will be identified to participate in the Risk Identification phase. For details on the identified threat sources and example threat events, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#identifying-threat-sources-and-events) page.

The Security Risk Team conducts security operational Risk Identification interviews with individuals operating in at least a Manager capacity/level at GitLab in order to identify security operational risks within their respective departments. Risks identified will always be framed in terms of threat sources and threat events, and then assessed against the likelihood of occurrence and the impact to GitLab if the risk event occurs. Additionally, these risks will be assessed against the current internal controls in place to determine the overall residual risk remaining. 

For details of the scoring methodology used, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-factors-and-risk-scoring) page. For guidance on drafting risk language see the [Risk Drafting Guidance](/handbook/security/security-assurance/security-risk/storm-program/#step-2-risk-identification) below. Risks will be quality reviewed by the Security Risk Manager or delegate and approval captured via comment in the GRC application.

### Step 3: Risk Tracking and Reporting

Risks identified through the Risk Identification phase are formally tracked via an internal risk register. Given the nature of the sensitivity of this information in aggregate, the risk register is [not made public](/handbook/communication/confidentiality-levels/#not-public), and is not distributed externally. However, a publicly viewable GitLab Risk Register Template is available [here](https://docs.google.com/spreadsheets/d/1Lvn-ZjPNcZ-QMh-pkC6HqjwR-acUf70V9w2pquhRmH0/edit?usp=sharing) for those interested in getting some more insight into the type of information tracked in GitLab's risk register. StORM related risk activities are centralized within GitLab's GRC tool, ZenGRC. Additional information on the various risk related activities carried out of ZenGRC can be found on the [ZenGRC Activities](/handbook/security/security-assurance/zg-activities.html#risk-activities) handbook page.

### Step 4: Risk Treatment

For each risk identified above, a formal risk treatment decision is made to determine how GitLab will handle the risk. For details of the risk treatment options available, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-treatment-options) page. Note that as part of the risk treatment procedures, the Risk Owner will make a determination on whether or not to accept a risk or pursue remediation based on our Risk Appetite and Tolerances. Treatment plans will be reviewed by the Security Risk Manager  or delegate and approval captured via comment in the GRC application.


### Step 5: Annual StORM Reports

Once the annual security operational risk assessment is completed, an executive and detailed report is prepared:
* **Executive Report**: The executive report is a summary report that is used to share internally and upon request from external parties as applicable. This report is a high level summary that does not expose specific details about risks identified and individuals involved during the annual assessment.
* **Detailed Report**: The detailed report contains information about the specific high risks identified as part of the annual assessment in addition to the specific individuals that contributed to the annual assessment process.
</details>


<details>
<summary markdown="span"><b>Ad-hoc Risk Identification and Assessment</b>
</summary>

There may be times that risks are identified outside of the annual StORM process - such as risks that arise from a security incident, risk identified through regular day-to-day business operations, etc. All security operational risks identified ad-hoc are discussed with the Security Risk Team, an inherent risk score is assigned, and a quantitative analysis done to determine if it should be escalated to the risk register. 
</details>

<details>
<summary markdown="span"><b>Pilot: Annual Technical (Tech) Debt Analysis</b>
</summary>

### Purpose

On an annual basis, the Security Risk Team performs an analysis of security tech debt to support GitLab's ability to respond to emerging threats.

### Definition

[Technical debt](https://about.gitlab.com/blog/2019/04/29/avoiding-foreclosure-on-your-technical-debt/#what-is-technical-debt) is a pattern in which a development team does not have enough time, information, or capacity to refine and refactor their code, so their architecture, implementation, and testing may be incomplete. Tech Debt can also be used to describe IT systems and applications that are not effectively enabling the achievement of our mission and goals.

Examples of Tech Debt include systems/apps that:

- have more breakfixes than planned changes
- are no longer utilized or supported
- are outdated or obsolete
- are redundant
- do not align with GitLab's overall strategy or enterprise architecture

### Scope

Systems/apps that support and/or enable GitLab's security controls are in-scope for the purposes of the Tech Debt Analysis. A list of in-scope systems can be found [here](https://internal-handbook.gitlab.io/handbook/security/#security-tooling). This list is supplemented by other tools that are owned outside of Security (e.g., Okta or NIRA) that can be found in the [Tech Stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). 

### Process Overview

#### 1. DRIs of Security Tech Stack Systems/Apps Complete "Tech Debt Questionnaire" (2 Weeks)
The Security Risk Team will send each Directly Responsible Individual (DRI) of a security control-enabling system/app a separate Tech Debt Questionnaire. This brief questionnaire requests the DRI's input on topics such as:
- Investment Classification and Rationale (What should be done with the system/app at this point in time? Invest, maintain status quo, replace, or [dogfood](https://about.gitlab.com/handbook/engineering/development/principles/#dogfooding)?)
- Volume and cycle time of development changes and incidents/issues (if applicable)
- UI responsiveness
- Security updates and feature releases

#### 2. Security Risk Team Reviews Completed Questionnaires (1 Week)
As DRIs complete questionnaires, the Security Risk Team will review responses to assess whether the system/application represents a risk to GitLab. The information collected will also help to support decision-making from a budget/investment perspective.

#### 3. Reporting of Results
TBD
</details>

<details>
<summary markdown="span"><b>Security System Intake</b>
</summary>

### Purpose
To assess newly acquired/developed systems that enable security controls OR are/may be in scope for compliance programs for potential inclusion into our [GitLab Control Framework (GCF)](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/sec-controls.html#gitlab-control-framework-gcf) and compliance programs  (e.g., [Security Compliance Program](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/#-core-competencies) and [SOX Program](https://about.gitlab.com/handbook/internal-audit/sarbanes-oxley/)).

### Process Overview

#### 1. System identification
Our goal is to identify systems that enable security controls (e.g., access management system) OR systems that are (or may be) subject to regulatory (e.g., SOX) or compliance requirements (SOC2) as early as possible via our [Third Party Risk Management (TPRM) Program](https://about.gitlab.com/handbook/security/security-assurance/security-risk/third-party-risk-management.html). As we engage with third parties for new systems, we assess the use of the system and whether or not it meets the criteria described above. Existing systems can also be ingested into the Security Compliance Intake process. Examples of these could include systems whose funcionality has expanded to support security controls or instances where our understanding of a security control has improved resulting in the identification of a previously uncredited supporting system.

If the system meets the criteria, we open up a new [Security Compliance Intake Issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/security-compliance-intake/-/issues/new?issue[title]=System%20Intake:%20%5BSystem%20Name%20FY2%23%20Q%23%5D&issuable_template=intakeform).

#### 2. Creating Security Compliance Intake Issue
[Security Compliance Intake Issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/security-compliance-commercial-and-dedicated/security-compliance-intake/-/issues/new?issue[title]=System%20Intake:%20%5BSystem%20Name%20FY2%23%20Q%23%5D&issuable_template=intakeform) asks the author to include details related to the system including:
- System overview
- Implemented security controls or impacted regulatory or compliance program
- Link to TPRM review and results
- Link to most recent[Business Impact Analysis](/handbook/security/security-assurance/security-risk/storm-program/business-impact-analysis.html) and [Critical System Tier](/handbook/security/security-assurance/security-risk/storm-program/critical-systems.html#critical-systems-tiering-methodolgy) (CST)
- Control owner details
- Deployment model and implementation status
- Data classification
- Regulatory scope (supported by Security Compliance and [Internal Audit](/handbook/internal-audit/))
The author of the issue completes as much of the issue as they can and assigns it to the Security Risk team for completion/triage (if the issue is not originally created by the Security Risk team).

#### 3. Security Compliance workflow
Once the Security Compliance Intake issue is populated, Security Risk assigns the issue to the Security Compliance team to complete the following tasks to incorporate the system into our Security Compliance Program:
- Notify stakeholders and system owners of upcoming testing requirements
- Incorporate testing requirements (driven by CST and regulatory/compliance requirements) and recommendations into the fiscal year audit schedule
- Determine when [user access reviews](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/access-reviews.html) for the new system need to start and communicate to compliance teams
</details>

## Communication of Risks to the Security Risk Team

There are multiple ways the team can be engaged for risk:

1. (**Preferred**) If the risk was identified outside of a GitLab issue or MR or is extremely sensitive and requires some discretion, team members can do the following:
   * Join the `#security-risk-management` Slack channel
   * Execute the `Risk Escalation` workflow by clicking on the blue lightning bolt in the bottom right corner of the message box and selecting `Risk Escalation`
   * Fill out the form presented in Slack and submit 
   * The Security Risk Team will intake and triage the risk and will follow-up if needed
   * **Note that Slack will not post the details that are entered into the form to the public channel**
2. If the risk is identified within an issue, for example like a Security Incident issue, the following label can be applied: `risk::escalation`. The Security Risk Team will monitor and triage issues or MRs that have this label applied. 
   * Team members can also tag the team directly by @ mentioning `gitlab-com/gl-security/security-assurance/risk-field-security-team` on the issue or MR
3. Submit a [Risk Escalation issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/risk-field-security-team/risk-assessments/-/issues/new?issuable_template=risk-escalation) on the StORM Repo

### Risk Drafting Guidance

StORM Program considerations include both risks (what might happen) and observations (what has happened/non-compliance). For guidance on writing observations, please refer to [Observation Management Procedure Handbook page](https://about.gitlab.com/handbook/security/security-assurance/observation-management-procedure.html).

When drafting a risk, start with a risk statement. This will represent the title of the Risk in our GRC system and is an attempt to condense the risk into a single sentence. In the spirit of [low-context communication](https://about.gitlab.com/handbook/teamops/shared-reality/#low-context-communication), avoid using single words or short phrases for the risk statement (e.g., Supply Chain). As we largely deal with negative risks (vs. positive risks/opportunities), starting the statement with negative language like "Failure to", "Inadequate", "Incomplete", "Lack of", etc. is appropriate, but not required. As risks represent what might happen, use "may" before describing the negative effect it _may_ have on the confidentiality, integrity, availability, security, and privacy of GitLab data. Example: _Inadequate physical security controls may result in the loss of GitLab/Customer data and physical assets._ The risk description should contain details related to the assets/resources at risk, the event that may occur, the source that would trigger the event (root cause), and the consequence (impact/loss) [source](https://www.srmam.com/post/how-to-write-a-risk-statement).

## Transparency and the StORM Program

As per [GitLab's Communication Page](/handbook/communication/confidentiality-levels/#not-public), information about risks tracked in GitLab's Risk Register defaults to _not public and limited access_. Given the nature of risk management, GitLab will always be susceptible to risks. The goal of implementing risk treatment plans and carrying out risk remediation activities is to reduce the likelihood or impact (or both) of a risk occurring. Given that no risks identified can ever be fully eliminated, but instead are mitigated through reduction of likelihood and/or impact, risks that have been escalated to GitLab's Risk Register will be shared on a need-to-know basis.

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
    - [How to write a risk statement by Julian Talbot on SRMAM.com](https://www.srmam.com/post/how-to-write-a-risk-statement)
