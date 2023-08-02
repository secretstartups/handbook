---
layout: handbook-page-toc
title: "Security Operational Risk Management (StORM) Methodology"
description: "This handbook page details the specific Security Operational Risk Management (StORM) Methodology that is used at GitLab."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Security Operational Risk Management (StORM) Methodology

## Purpose

This handbook page details the specific Security Operational Risk Management (“StORM”) Methodology that is used at GitLab in order to assess Risk Appetite, Risk Tolerance, as well as scoring risks based on their likelihood, impact as well as explicit inherent vs residual risk levels.

## Annual Risk Assessment Schedule

The annual risk assessment is conducted on a predefined schedule from year to year. 

|Timing|Activities|
|-----|-----|
|March|Risk Appetite Survey is sent out to Senior Leadership to establish GitLab's Annual Risk Appetite|
|April-May|Annual risk assessment information gathering is kicked off for risk identification. Once completed, newly identified risks will be documented and quality reviewed. |
|May-June|The [annual StORM reports](/handbook/security/security-assurance/security-risk/storm-program/#step-5-annual-storm-reports) are prepared, reviewed, and approved.|
|June-July|Risk treatment plans are developed for risks identified during the ARA and a retrospective is held to capture improvement opportunities for StORM.|

## Establishing a Risk Appetite and Tolerance for Operational Security Risk Taking

On an annual cadence, the Security Risk Team reassesses GitLab's Security Risk Appetite. This is a key activity that drives risk treatment decisions for risks identified as part of the Annual Risk Assessment. While significant changes to risk appetite are not anticipated, this activity provides a mechanism to ensure GitLab's appetite and tolerance for risk align with changes to threat sources and events.

### How GitLab Determines Risk Appetite
GitLab’s security risk appetite is determined based on the total average priority order determined by senior leadership on the following risk strategy statements:
* GitLab should seek solutions to transfer risks to others whenever possible (risk taking vs risk transfer)
* GitLab should balance pursuing opportunities that align with organizational objectives against the associated risks (organizational objectives)
* GitLab should respond to all risks impacting the organization, regardless of the level of impact (risk response approach)
* GitLab should respond to risks based on cost, management priorities, and ROI (risk response drivers)

Each risk strategy statement is ranked in order of priority from Highest priority risk strategy to Lowest priority risk strategy by senior leadership. GitLab utilizes the following risk appetite matrix:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-9wq8{border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-674h{font-weight:bold;background-color:#380d75;color:#ffffff;border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-yeut{font-weight:bold;background-color:#656565;color:#ffffff;border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-747f{font-weight:bold;background-color:#6e49cb;color:#ffffff;border-color:inherit;text-align:center;vertical-align:middle}
</style>
<table class="tg">
  <tr>
    <th class="tg-674h">RISK APPETITE<br>APPROACH</th>
    <th class="tg-yeut">RISK SEEKING</th>
    <th class="tg-yeut">RISK RECEPTIVE</th>
    <th class="tg-yeut">RISK NEUTRAL</th>
    <th class="tg-yeut">RISK AVERSE</th>
  </tr>
  <tr>
    <td class="tg-747f">RISK TAKING vs<br>RISK TRANSFER</td>
    <td class="tg-9wq8">Aggressive risk <br>taking is justified</td>
    <td class="tg-9wq8">Seek opportunities to transfer risks <br>with pre-existing vendors as applicable<br>(e.g. don't bring in a new vendor to<br> transfer risks)</td>
    <td class="tg-9wq8">Take a balanced approach to <br>risk taking vs risk transferring</td>
    <td class="tg-9wq8">Exercise caution and accept as little <br>risk as possible by identifying risk <br>transfer solutions</td>
  </tr>
  <tr>
    <td class="tg-747f">ORGANIZATIONAL<br>OBJECTIVES</td>
    <td class="tg-9wq8">Willing to accept a large negative<br> impact to the organization to pursue <br>opportunities that align with objectives</td>
    <td class="tg-9wq8">Willing to accept some negative impact <br>(e.g. LOW risks) to pursue opportunities<br> that align with objectives</td>
    <td class="tg-9wq8">The potential for a negative impact <br>vs objectives are given equal <br>consideration when making a decision</td>
    <td class="tg-9wq8">The potential for a negative impact vs <br>objectives are given equal consideration <br>when making a decision</td>
  </tr>
  <tr>
    <td class="tg-747f">RISK RESPONSE<br>APPROACH</td>
    <td class="tg-9wq8">All risks are acceptable as long <br>as they do not impact our legal <br>and regulatory obligations</td>
    <td class="tg-9wq8">Determine risk response options to <br>help accept or reduce risk levels<br> through internal initiatives</td>
    <td class="tg-9wq8">Risk remediation is favored over <br>risk acceptance</td>
    <td class="tg-9wq8">Risks that cannot be effectively <br>treated or transferred are avoided</td>
  </tr>
  <tr>
    <td class="tg-747f">RISK RESPONSE<br>DRIVERS</td>
    <td class="tg-9wq8">No response action required for risks <br>unless they may represent a<br>contract or regulatory violation</td>
    <td class="tg-9wq8">Risk response actions take into <br>consideration cost effectiveness, <br>management priorities, and return <br>on investment</td>
    <td class="tg-9wq8">Risk response actions emphasize the <br>impact to security over the impact <br>to strategic objectives </td>
    <td class="tg-9wq8">Risk response actions are always taken, <br>regardless of cost effectiveness, <br>management priorities, return on investment, <br>and overall organizational objectives</td>
  </tr>
</table>

_GitLab's Risk Appetite Matrix was formed through consideration of guidance set forth in NIST's [SP 800-39](https://csrc.nist.gov/publications/detail/sp/800-39/final) and [SP 800-30 Rev. 1](https://csrc.nist.gov/publications/detail/sp/800-30/rev-1/final)._

Scoring is performed by individuals operating in at least Senior Leadership capacity within GitLab and spans across multiple departments.

### Translating GitLab's Security Risk Appetite to Risk Tolerance

Our risk appetite is translated to a tolerance which defines a range in which a [risk score value](#risk-factors-and-risk-scoring) is tolerable and does not require remediation or a risk acceptance, i.e., the risk response will be set to "monitor". Risk scores can range from 1 (lowest) to 30 (highest). The range is defined per Risk Appetite in the table below:

|Risk Averse|Risk Neutral|Risk Receptive|Risk Seeking|
|:---------:|:---------:|:---------:|:---------:|
|1-5|1-10|1-18|1-26|

Risk scores above 26 are considered too risky to be considered within tolerance for any risk appetite.

### Historical and Current Record of GitLab's Security Risk Appetite

|Fiscal Year|Departments|Risk Appetite|
|:-----:|----------|:-----:|
|FY24|All Departments|Risk Neutral|
|FY23|Engineering, Finance, and Legal|Risk Neutral|
|FY22|E-group, Engineering, Finance, and Legal|Risk Neutral|
|FY21|Engineering, Finance, and Legal|Risk Neutral|

## Identifying Threat Sources and Events

The identification of threat sources and events in relation to operational risks includes multiple considerations. These threat sources and events have been identified based on their potential to have an impact on mission critical objectives in relation to GitLab's operations. 

### Example Threat Sources and Events Considered
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-clye{background-color:#380d75;color:#ffffff;font-weight:bold;text-align:center;vertical-align:middle}
</style>
<table class="tg">
  <tr>
    <th class="tg-clye">Threat Source</th>
    <th class="tg-clye">Example Threat Events</th>
  </tr>
  <tr>
    <td class="tg-wa1i">Adversarial</td>
    <td class="tg-cly1">Fraud and theft, insider threat, malicious hacker, and malicious code</td>
  </tr>
  <tr>
    <td class="tg-wa1i">Non-Adversarial</td>
    <td class="tg-cly1">Errors and omission, loss of physical and infrastructure support (e.g. a natural disaster), exposure of sensitive information, changes to systems used to support the business, changes to external environments supporting GitLab, changes to GitLab's business model, or even changes in leadership</td>
  </tr>
</table>

## Risk Drafting Guidance

StORM Program considerations include both risks (what might happen) and observations (what has happened/non-compliance). For guidance on writing observations, please refer to [Observation Management Procedure Handbook page](/handbook/security/security-assurance/observation-management-procedure.html).

When drafting a risk, start with a risk statement. This will represent the title of the Risk in our GRC system and is an attempt to condense the risk into a single sentence. In the spirit of [low-context communication](https://handbook.gitlab.com/teamops/shared-reality/#low-context-communication), avoid using single words or short phrases for the risk statement (e.g., Supply Chain). As we largely deal with negative risks (vs. positive risks/opportunities), starting the statement with negative language like "Failure to", "Inadequate", "Incomplete", "Lack of", etc. is appropriate, but not required. As risks represent what might happen, use "may" before describing the negative effect it _may_ have on the confidentiality, integrity, availability, security, and privacy of GitLab data. Example: _Inadequate physical security controls may result in the loss of GitLab/Customer data and physical assets._ The risk description should contain details related to the assets/resources at risk, the event that may occur, the source that would trigger the event (root cause), and the consequence (impact/loss) [source](https://www.srmam.com/post/how-to-write-a-risk-statement).

## Risk Factors and Risk Scoring

A scoring model is used to score each risk and is based on the Likelihood of the risk event occurring and the Impact to GitLab if the event occurred. Likelihood and Impact scores directly determine the overall inherent risk to GitLab.

### Determining Likelihood of initiation of a threat event

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-nc7u{background-color:#d9ead3;text-align:center;vertical-align:middle}
.tg .tg-clye{font-weight:bold;background-color:#380d75;color:#ffffff;text-align:center;vertical-align:middle}
.tg .tg-f6g8{background-color:#fce5cd;text-align:center;vertical-align:middle}
.tg .tg-nrix{text-align:center;vertical-align:middle}
.tg .tg-28x2{background-color:#ffcccc;text-align:center;vertical-align:middle}
</style>
<table class="tg">
  <tr>
    <th class="tg-clye">Qualitative <br>Score</th>
    <th class="tg-clye">Risk Level</th>
    <th class="tg-clye">Scoring Guidelines</th>
  </tr>
  <tr>
    <td class="tg-nrix">6</td>
    <td class="tg-28x2">CRITICAL</td>
    <td class="tg-cly1">No expertise required to initiate a threat event</td>
  </tr>
  <tr>
    <td class="tg-nrix">5</td>
    <td class="tg-28x2">VERY HIGH</td>
    <td class="tg-cly1">Low level of expertise required to initiate a threat event</td>
  </tr>
  <tr>
    <td class="tg-nrix">4</td>
    <td class="tg-28x2">HIGH</td>
    <td class="tg-cly1">Some expertise required to initiate a threat event</td>
  </tr>
  <tr>
    <td class="tg-nrix">3</td>
    <td class="tg-f6g8">MODERATE</td>
    <td class="tg-cly1">Difficult to initiate a threat event, even with expertise</td>
  </tr>
  <tr>
    <td class="tg-nrix">2</td>
    <td class="tg-nc7u">LOW</td>
    <td class="tg-cly1">Requires significant expertise to initiate a threat event</td>
  </tr>
  <tr>
    <td class="tg-nrix">1</td>
    <td class="tg-nc7u">VERY LOW</td>
    <td class="tg-cly1">Theoretically impossible to initiate a threat event.</td>
  </tr>
</table>

### Determining the impact of a threat event

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-lboi{border-color:inherit;text-align:left;vertical-align:middle}
.tg .tg-6c9p{background-color:#d9ead3;border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-22ff{font-weight:bold;background-color:#6e49cb;color:#ffffff;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-1mkn{font-weight:bold;background-color:#380d75;color:#ffffff;border-color:#000000;text-align:center;vertical-align:middle}
.tg .tg-747f{font-weight:bold;background-color:#6e49cb;color:#ffffff;border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-oej3{background-color:#fce5cd;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-sy71{background-color:#ffcccc;border-color:inherit;text-align:center;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-1mkn" rowspan="2">IMPACT<br>SCORE</th>
    <th class="tg-1mkn" colspan="6">IMPACT AREAS</th>
  </tr>
  <tr>
    <td class="tg-747f">Organizational Output <br>(time, quality, resources)</td>
    <td class="tg-747f">Brand<br>Reputation</td>
    <td class="tg-22ff">Business<br>Continuity</td>
    <td class="tg-22ff">Customers &amp;<br>Stakeholders</td>
    <td class="tg-22ff">Legal &amp;<br>Regulatory</td>
    <td class="tg-22ff">Financial</td>
  </tr>
  <tr>
    <td class="tg-6c9p">VERY LOW (1)</td>
    <td class="tg-lboi">Organizational output is <br>impacted by less than 20%</td>
    <td class="tg-lboi">Limited to reputational damage <br>with no more than one customer <br>within a fiscal period</td>
    <td class="tg-0pky">Outages of non-critical systems <br>that impact GitLab team members</td>
    <td class="tg-0pky">Impact is limited to one <br>customer and/or stakeholder</td>
    <td class="tg-0pky">Breach of company policy <br>occurring once in a fiscal <br>period</td>
    <td class="tg-0pky">Loss up to $999</td>
  </tr>
  <tr>
    <td class="tg-6c9p">LOW (2)</td>
    <td class="tg-lboi">Organizational output is <br>impacted by 30% - 40%</td>
    <td class="tg-lboi">Confined to a limited number of <br>parties (e.g. specific customers) <br>and not publicized</td>
    <td class="tg-0pky">Outages which result in the inability <br>of GitLab to continue sales and finance <br>operations longer than 72+ hours</td>
    <td class="tg-0pky">Impact is limited to 2-3 <br>customers and/or stakeholders</td>
    <td class="tg-0pky">Breach of company policy <br>twice within a fiscal period</td>
    <td class="tg-0pky">Loss between $1,000 <br>and $9,999</td>
  </tr>
  <tr>
    <td class="tg-oej3">MODERATE (3)</td>
    <td class="tg-0pky">Organizational output is <br>impacted by 40% - 50%</td>
    <td class="tg-0pky">Public domain publicity but limited <br>to industry channels and not the <br>broader public</td>
    <td class="tg-0pky">Outages that impact GitLab's <br>ability to do business across 3+ <br>departments</td>
    <td class="tg-0pky">Impact is limited to 4-5 <br>customers and/or stakeholders</td>
    <td class="tg-0pky">Breach of a regulatory and/or <br>contractual obligation</td>
    <td class="tg-0pky">Loss between $10,000 <br>and $499,999</td>
  </tr>
  <tr>
    <td class="tg-sy71">HIGH (4)</td>
    <td class="tg-0pky">Organizational output is <br>impacted by 50% - 75%</td>
    <td class="tg-0pky">Wide-spread publicity but limited <br>parties are impacted</td>
    <td class="tg-0pky">Outages that result in the loss of <br>availability of GitLab for customers <br>for less than 4 hours</td>
    <td class="tg-0pky">Major impact to many <br>customers and/or stakeholders</td>
    <td class="tg-0pky">Regulatory censure and/or action <br>taken against GitLab</td>
    <td class="tg-0pky">Loss between $500,000 <br>and $999,999</td>
  </tr>
  <tr>
    <td class="tg-sy71">VERY HIGH (5)</td>
    <td class="tg-0pky">Organizational output is <br>impacted by 75% or more</td>
    <td class="tg-0pky">Widely publicized</td>
    <td class="tg-0pky">Outages that result in the loss of <br>availability of GitLab for customers <br>for 4+ hours</td>
    <td class="tg-0pky">Major impact to all <br>customers and/or stakeholders</td>
    <td class="tg-0pky">Public regulatory fines and/or major <br>litigation against GitLab</td>
    <td class="tg-0pky">Loss of $1,000,000+</td>
  </tr>
</table>

To arrive at a final impact score, the impact score of all impact categories is averaged.


### Determining Inherent Risk vs Residual Risk

* Inherent Risk is the risk _before_ considering any existing mitigations in place, such as existing controls, internal processes/procedures, etc. and is determined by the following formula:
   > `Inherent Risk = Likelihood x Impact`

* Residual risk is calculated in the same manner as inherent risk, but the likelihood and impact is reassessed based on the known existing controls, processes/procedures, etc. that reduce/mitigate the risk. 


### Determining if a risk is considered Low, Medium, or High

Once the Inherent and Residual risk score is determined, the following table can be used to determine if a risk is considered Low, Medium, or High:

|Risk Rating|Risk Score Range|
|:---------:|:--------------:|
|Low|1-10|
|Medium|11-20|
|High|21-30|

These ratings represent labels for communication purposes rather than what is or is not acceptable. To determine what is an acceptable risk, please refer to [risk tolerances](https://about.gitlab.com/handbook/security/security-assurance/security-risk/storm-program/storm-methodology.html#translating-gitlabs-security-risk-appetite-to-risk-tolerance).

### The Impact of Control Health & Effectiveness Rating (CHER) on Risks

In some cases where controls are identified that mitigate a risk, the Security Risk Team considers the CHER of the control that is established based on continuous monitoring performed by the Security Compliance Team. For details on how the Security Compliance Team rates observations, refer to the [Observation Management](/handbook/security/security-assurance/observation-management-procedure.html) handbook page.

Given that the scope of the StORM program is limited to Tier 2 Operational Risks, any information system level risks (i.e. Tier 3) identified within the organization are typically not included as part of the StORM program as Tier 3 risks should be addressed by one or more internal controls. However, should a control have a high CHER rating, this may be an indicator of a larger risk. Because of this, there are opportunities for Tier 3 risks to escalate to Tier 2 risks. The decision to escalate a Tier 3 risk in this manner will be documented within the Risk Details.

## Risk Response Options

Each risk identified and triaged through the StORM program is required to undergo a risk response determination. This is an activity that will be discussed with each individual risk owner for the risks that they own.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-clye{font-weight:bold;background-color:#380d75;color:#ffffff;text-align:center;vertical-align:middle}
</style>
<table class="tg">
  <tr>
    <th class="tg-clye">RESPONSE<br>OPTION</th>
    <th class="tg-clye">DEFINITION</th>
  </tr>
  <tr>
    <td class="tg-wa1i">Monitor (do nothing)</td>
    <td class="tg-cly1">The risk score falls within our <a href="#translating-gitlabs-security-risk-appetite-to-risk-tolerance">risk tolerance levels</a> and no additional actions are required at this time. Risks that have been treated, resulting in a risk score that is within the risk tolerance level will be given the status of Monitor within our GRC system.</td>
  </tr>
  <tr>
    <td class="tg-wa1i">Remediate the Risk</td>
    <td class="tg-cly1">The risk is not within our risk tolerance. Complete a risk remediation plan to remediate the risk through: Sharing the risk (identify and implement solutions to share the risk with other parties), Reducing the likelihood of occurrence, and/or Reducing the level of impact to GitLab</td>
  </tr>
  <tr>
    <td class="tg-wa1i">Accept the Risk</td>
    <td class="tg-cly1">The risk is not within our risk tolerance. Accept or take the risk without executing a remediation plan because the cost to pursue remediation is higher than the potential benefit.</td>
  </tr>
</table>

The risk object in the GRC application will be updated to reflect the agreed upon risk response. If "Remediate the Risk" is selected, the Risk Owner will execute a Risk Treatment Plan. The documented plan and status of the risk treatment will be captured within the GRC application as well. See below for more information about risk response options.

### Monitor (do nothing)

In the cases where a risk owner has concluded that a risk is within [tolerance](#translating-gitlabs-security-risk-appetite-to-risk-tolerance), no additional action is required besides ensuring that the StORM Program DRI agrees with the treatment option.

### Remediate the Risk

When choosing to remediate the risk, a specific path must be selected:
   * Remediate by reducing the likelihood that the risk could occur
   * Remediate by reducing the impact to GitLab if the risk occurs
   * Remediate by sharing or transferring the risk with a third party
   * Remediate by avoiding the risk by deciding not to start or continue with the activity that gives rise to the risk

Once a path is selected, the Risk Owner is required to provide a [SMART](https://en.wikipedia.org/wiki/SMART_criteria), detailed plan that includes milestones and due dates for working towards risk remediation. The treatment plan must be achievable and address the root cause of the risk event. Additionally and in alignment with our value of [Transparency](https://about.gitlab.com/handbook/values/#transparency), each treatment plan will include a step for documenting the results/outcome of the remediation within the Handbook. If the result of the remediation is considered [not public](https://about.gitlab.com/handbook/values/#not-public) and cannot be documented within the Handbook, it should be documented within our Internal Handbook or an internal runbook. The Security Risk Team will leverage these risk treatment plans to track the status of risk remediation.

If the risk treatment plan is executed and results in a downgrading of the residual risk level for the risk (e.g., the residual risk level goes from High to Moderate), validation of the remediation will be performed and captured within the associated risk object in ZenGRC. Quality review of the downgrade support documentation will be completed by the Security Risk Manager and captured via comment in the GRC application.

### Accept the Risk

In the cases where a risk owner has opted to pursue a risk acceptance, the following approvals will be required based on risk rating that was assigned to the risk undergoing a risk acceptance:

|Risk Level|Approval Level Required|
|-----|-----|
|HIGH|Risk Owner + Director/VP Level Approval* + E-group Level Approval|
|MODERATE|Risk Owner + Director/VP Level Approval*|


- `*` If the Risk Owner is a Director/VP, no additional Director/VP level approval is required

By accepting the risk, the Risk Owner and risk acceptance approvers (if separate from Risk Owner), agree to reassess the risk on an annual basis to determine whether risk acceptance is the best response option for the respective risk. If risk acceptance is appropriate based on the annual assessment, approvals will be re-obtained based on the risk and approval requirements noted in the table above. Additionally, the Risk Owner will be on point for remediation in the event the risk is realized or risk acceptance is no longer appropriate.
