---
layout: handbook-page-toc
title: "Control Health and Effectiveness Rating (CHER) Procedure"
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

Control Health and Effectiveness Ratings (CHER) determine a [GitLab Security Controls](https://about.gitlab.com/handbook/security/security-assurance/security-compliance/sec-controls.html) overall control health and effectiveness. 

## Scope

Observation risk ratings play a key role in determining how to establish a controls CHER. The procedures outlined in the sections below are used specifically by the Security Assurance Team once an observation's [risk rating is determined](https://about.gitlab.com/handbook/security/security-assurance/observation-management-procedure.html). Team members utilizing the CHER for rating information system risks outside of control testing activities will not need to engage in the procedures below.

### Procedure

<details markdown="1">

<summary><b>Determining the Individual Control Health & Effectiveness Rating (CHER)</b>

#### Risk rating and determining effectiveness

The importance of risk rating each control observation comes into play when making a final determination on how to establish a control's Control Health & Effectiveness Rating (CHER). CHER ratings on a sliding scale outside of the typical effective/ineffective rating used for compliance, allow for clearer communication and prioritization with broader audiences outside of compliance functions and allows non-compliance stakeholders the ability to view how observations impact the control environment.

CHER provides a qualitative value of a control's effectiveness that is used as an input for various processes within the Risk Management Program. When needing to report to management, these quantitative values are translated to qualitative terms: Fully Effective, Substantially Effective, Partially Effective, Largely Ineffective, Ineffective. Refer to the CHER Quantitative vs. Qualitative Terms and Definitions Table below for a mapping of CHER to its definition and the related qualitative term and definition. Use the rating determined by completing the observation risk rating with likelihood and impact scores and applying that risk rating into the table below (i.e if a control has 1 low risk observation per the Observation Risk Rating table, the CHER for that control would be a 2 (Substantially Effective)).

##### CHER Quantitative vs. Qualitative Terms and Definitions (For individual controls)

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-obmi{background-color:#D9EAD3;text-align:center;vertical-align:middle}
.tg .tg-w80k{background-color:#B4A7D6;text-align:center;vertical-align:middle}
.tg .tg-yfns{background-color:#F4CCCC;text-align:center;vertical-align:middle}
.tg .tg-qjco{background-color:#FCE5CD;text-align:center;vertical-align:middle}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-wa1i"><span style="font-weight:bold">Quantitative Value</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">Quantitative Definition</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">CHER Qualitative Term</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">Qualitative Definition</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">1</span></td>
    <td class="tg-cly1">The control has no outstanding HIGH, MODERATE, or LOW risk observations open.</td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Fully Effective</span></td>
    <td class="tg-cly1">Nothing more to be done except review and monitor existing controls. Controls are well designed for the risk, and address the root causes. Management believes they are effective and reliable at all times.</td>
  </tr>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">2</span></td>
    <td class="tg-cly1">There are no outstanding HIGH or MODERATE risk observations associated with the control, but there are some LOW risk observations that are open</td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Substantially Effective</span></td>
    <td class="tg-cly1">Most controls are designed correctly and in place and effective. Some more work to be done to improve operating effectiveness or there are doubts about operational effectiveness and consistent reliability.</td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">3</span></td>
    <td class="tg-cly1">There are no outstanding HIGH risk observations associated with the control, but there is a single open MODERATE (below 9 rating) risk observation and any number of LOW risk observations.</td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Partially Effective</span></td>
    <td class="tg-cly1">Design of controls is largely correct and they treat most of the root causes of the risk, however they are not currently operating very effectively.</td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">4</span></td>
    <td class="tg-0lax"><span style="font-style:normal">There are no outstanding HIGH risk observations associated with the control, but there are </span><span style="font-weight:bold;font-style:normal">multiple</span><span style="font-style:normal"> open MODERATE (below 9 rating) risk observations OR a </span><span style="font-weight:bold;font-style:normal">single</span><span style="font-style:normal"> open MODERATE risk observation with a 9 rating. There can be any number of LOW risk observations.</span></td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Largely Ineffective</span></td>
    <td class="tg-cly1">Significant control gaps. Either controls do not treat root causes or they do not operate at all effectively.</td>
  </tr>
  <tr>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">5</span></td>
    <td class="tg-cly1">There are outstanding HIGH risk observations associated with the control.</td>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">Ineffective</span></td>
    <td class="tg-cly1">Practically no credible control. Management has almost no confidence that any degree of control is being achieved due to poor control design or very limited operational effectiveness.</td>
  </tr>
  <tr>
    <td class="tg-w80k"><span style="background-color:#B4A7D6">0</span></td>
    <td class="tg-cly1">The control is not yet implemented.</td>
    <td class="tg-w80k"><span style="background-color:#B4A7D6">Control Not Implemented</span></td>
    <td class="tg-cly1">Control is not implemented and this is expected. This is different from a control gap because of the awareness around the control and the intentional exclusion of the control from being a key control in the environment. There are other sufficient controls to secure the environment in place.</td>
  </tr>
</tbody>
</table>


<details markdown="1">

<summary><b>Determining System Health Rating</b>

#### Quantitative vs. Qualitative Terms and Definitions

CHER is assigned on a control by control basis but in instances where we want to report on system health, the ratio of high risk observations to the number of applicable controls that were assessed against the system is determined. That ratio is used to determine the system health rating from the following table: 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-obmi{background-color:#D9EAD3;text-align:center;vertical-align:middle}
.tg .tg-yfns{background-color:#F4CCCC;text-align:center;vertical-align:middle}
.tg .tg-qjco{background-color:#FCE5CD;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-wa1i"><span style="font-weight:bold">Ratio of CHER rating to applicable controls assessed</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">System Health Rating Value</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Between 0% and 5% of controls = CHER 2,3,4,5,0</span></td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">1</span></td>
  </tr>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Between 5% and 35% of controls = CHER 2,3,4,5,0</span></td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">2</span></td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Greater than 35% up to 65% of controls = CHER 2,3,4,5,0</span></td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">3</span></td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Greater than 65% up to 85% of controls = CHER 2,3,4,5,0</span></td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">4</span></td>
  </tr>
  <tr>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">Greater than 85% of controls = CHER 2,3,4,5,0</span></td>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">5</span></td>
  </tr>
</tbody>
</table>

Refer to the System Effectiveness Rating Table below for a mapping of averaged CHERs to the qualitative term and definition that can be used to report on system health/effectiveness. Note that when using this table the final average of CHER values should be rounded **up** to the nearest quantitative value to determine the CHER for the system (i.e if average of all CHER's equals 2.3, the final CHER for the system would be rounded up to a 3)

##### System Health Rating Table

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-obmi{background-color:#D9EAD3;text-align:center;vertical-align:middle}
.tg .tg-yfns{background-color:#F4CCCC;text-align:center;vertical-align:middle}
.tg .tg-qjco{background-color:#FCE5CD;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-wa1i"><span style="font-weight:bold">System Health Rating Value</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">System Health Rating Qualitative Term</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">Qualitative Definition</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">1</span></td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Fully Effective</span></td>
    <td class="tg-cly1">Nothing more to be done except review and monitor the existing controls. Controls are well designed for the risk, and address the root causes. Management believes they are effective and reliable at all times.</td>
  </tr>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">2</span></td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Substantially Effective</span></td>
    <td class="tg-cly1">Most controls are designed correctly and are in place and effective. Some more work to be done to improve operating effectiveness or management has doubts about operational effectiveness and reliability.</td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">3</span></td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Partially Effective</span></td>
    <td class="tg-cly1">While the design of controls may be largely correct in that they treat most of the root causes of the risk, they are not currently operating very effectively.</td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">4</span></td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Largely Ineffective</span></td>
    <td class="tg-cly1">Significant control gaps. Either controls do not treat root causes or they do not operate at all effectively.</td>
  </tr>
  <tr>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">5</span></td>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">Ineffective</span></td>
    <td class="tg-cly1">Virtually no credible control. Management has no confidence that any degree of control is being achieved due to poor control design or very limited operational effectiveness.</td>
  </tr>
</tbody>
</table>


<details markdown="1">

<summary><b>Determining Control Family Effectiveness Rating</b>

#### Quantitative vs. Qualitative Terms and Definitions

CHER is assigned on a control by control basis but in instances where we want to report on control family effectiveness, the CHER for each of the individual underlying controls in a control family can be averaged to provide a more holistic view. Refer to the Control Family Effectiveness Rating Table below for a mapping of averaged CHERs to the qualitative term and definition that can be used to report on control family health/effectiveness. Note that when using this table the final average of CHER values should be rounded **up** to the nearest quantitative value to determine the CHER for the control family (i.e if average of all CHER's equals 2.3, the final CHER for the control family would be rounded up to a 3).

##### Control Family Effectiveness Rating Table

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-wa1i{font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-obmi{background-color:#D9EAD3;text-align:center;vertical-align:middle}
.tg .tg-yfns{background-color:#F4CCCC;text-align:center;vertical-align:middle}
.tg .tg-qjco{background-color:#FCE5CD;text-align:center;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-wa1i"><span style="font-weight:bold">Quantitative Value</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">Control Family Effectiveness Rating Qualitative Term</span></th>
    <th class="tg-wa1i"><span style="font-weight:bold">Qualitative Definition</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">1</span></td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Fully Effective</span></td>
    <td class="tg-cly1">Nothing more to be done except review and monitor the existing controls. Controls are well designed for the risk, and address the root causes. Management believes they are effective and reliable at all times.</td>
  </tr>
  <tr>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">2</span></td>
    <td class="tg-obmi"><span style="background-color:#D9EAD3">Substantially Effective</span></td>
    <td class="tg-cly1">Most controls are designed correctly and are in place and effective. Some more work to be done to improve operating effectiveness or management has doubts about operational effectiveness and reliability.</td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">3</span></td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Partially Effective</span></td>
    <td class="tg-cly1">While the design of controls may be largely correct in that they treat most of the root causes of the risk, they are not currently operating very effectively.</td>
  </tr>
  <tr>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">4</span></td>
    <td class="tg-qjco"><span style="background-color:#FCE5CD">Largely Ineffective</span></td>
    <td class="tg-cly1">Significant control gaps. Either controls do not treat root causes or they do not operate at all effectively.</td>
  </tr>
  <tr>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">5</span></td>
    <td class="tg-yfns"><span style="background-color:#F4CCCC">Ineffective</span></td>
    <td class="tg-cly1">Virtually no credible control. Management has no confidence that any degree of control is being achieved due to poor control design or very limited operational effectiveness.</td>
  </tr>
</tbody>
</table>

#### CHER and SHR Override

To account for edge case scenarios or other extenuating circumstances that may not be modeled appropriately using the outlined GitLab Observation Management methodology, the final CHER or SHR can be downgraded (i.e move from 2 to 3) at the discretion of the Security Compliance Senior Director if it is determined that the observation's risk ratings and therefore CHER or SHR does not appropriately reflect the current control or control environment health. The rating cannot be upgraded (i.e move from 4 to 3) to ensure a conservative approach to securing the organization and managing risk.


## Exceptions

The process of completing control assessments will always require an associated CHER rating. There are no exceptions to this process.

## References

- [GCF Control Lifecycle](/handbook/security/security-assurance/security-compliance/security-control-lifecycle.html#)
- [Sarbanes-Oxley (SOX) Compliance](/handbook/internal-audit/sarbanes-oxley/)
- [Observation Creation Procedure](https://about.gitlab.com/handbook/security/security-assurance/observation-management-procedure.html)
- [Observation remediation Procedure](https://about.gitlab.com/handbook/security/security-assurance/observation-remediation-procedure.html)]
- [Observation Management Project](https://gitlab.com/gitlab-com/gl-security/security-assurance/observation-management)

## Contact

If you have any questions or feedback about the observation management process please [contact the GitLab Security Assurance Team](https://about.gitlab.com/handbook/security/security-assurance/#contacting-the-team)
