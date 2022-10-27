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

For details of the scoring methodology used, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-factors-and-risk-scoring) page.

### Step 3: Risk Tracking and Reporting

Risks identified through the Risk Identification phase are formally tracked via an internal risk register. Given the nature of the sensitivity of this information in aggregate, the risk register is [not made public](/handbook/communication/confidentiality-levels/#not-public), and is not distributed externally. However, a publicly viewable GitLab Risk Register Template is available [here](https://docs.google.com/spreadsheets/d/1Lvn-ZjPNcZ-QMh-pkC6HqjwR-acUf70V9w2pquhRmH0/edit?usp=sharing) for those interested in getting some more insight into the type of information tracked in GitLab's risk register. StORM related risk activities are centralized within GitLab's GRC tool, ZenGRC. Additional information on the various risk related activities carried out of ZenGRC can be found on the [ZenGRC Activities](/handbook/security/security-assurance/zg-activities.html#risk-activities) handbook page.

### Step 4: Risk Treatment

For each risk identified above, a formal risk treatment decision is made to determine how GitLab will handle the risk. For details of the risk treatment options available, refer to the [StORM Methodology](/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#risk-treatment-options) page. Note that as part of the risk treatment procedures, the Risk Owner will make a determination on whether or not to accept a risk or pursue remediation based on our Risk Appetite and Tolerances.

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
