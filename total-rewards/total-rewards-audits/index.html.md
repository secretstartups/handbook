---
layout: handbook-page-toc
title: Total Rewards Audits
description: Information on the audits the Total Rewards team conducts. 
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## BambooHR Audits

### Onboarding Audit

Cadence: Each new joiner.

This is a manual review of each new joiner's BambooHR profile that takes place within their first week of employment. This audit is intended to correct any profile errors and, for US team members only, to check that the I-9 has been completed and sort each team member into the correct Benefit Group. 

### Payroll Changes Report Audit

Cadence: Weekly

BambooHR creates a standard Payroll Change report to capture any changes processed on a team member's profile. At the end of each week, a member of the Total Rewards team reviews each change captured in the report to ensure the change was intentional, inputted correctly, and proper processing was followed for the change. Once the change has been reviewed, it can be checked off on the Payroll Change report. 

### New Hire Audit

Cadence: Weekly

This audit is meant to identify and fix any errors that may have missed during the initial [onboarding audit](https://about.gitlab.com/handbook/total-rewards/total-rewards-audits/#onboarding-audit).

Process: 

1. In BambooHR, access the custom report "New Hire Audit." 
1. Edit the report and adjust the Hire Date filters to include all new hires since the audit was last ran up to the most recent Friday.
1. Save the report, download it, and upload it to the `BambooHR Audit` Google sheet using the "New Hire Audit Template". 
1. The following should be checked if the audit returns FALSE:
     * Locality: Returns FALSE if the team member's Country doesn't match the country in their Locality. 
     * Region: Returns FALSE if the team member's Region doesn't match the correct region for the Country listed.
     * I-9: Returns FALSE if the team member is located in the US AND the I-9 box is not checked OR the team member is not located in the US AND the I-9 box is checked. The I-9 box should never be checked for someone not located in the US. If the person is located in the US and the box hasn't been checked, check their onboarding issue to see if this has been verified by the People Experience team. 
     * Cost Center: Checks whether the team member's Cost Center is aligned to their Department.
     * Division: Checks whether the team member's Division is aligned to their Department. 
     * Department: Returns FALSE if the team member's Department does not match the Department of their manager. Exceptions to this can be added to the "Exceptions" tab in column B. An example of this would be a VP who leads a more specialized department than the executive they report to. 
     * Payroll Type: This checks to make sure the team member is categorized into the correct Payroll Type based on their Country. For example, someone in Australia should be "Employee" while someone in India should be "Employee-PEO".
     * Pay Rate: This checks that the team member's Annual Salary (local) divided by their Pay Frequency is equivalent to their Pay Rate.  
     * Pay Schedule: Returns TRUE if team members in the US have a Pay Schedule of "Twice a month", team members in Canada have a Pay Schedule of "Every other week", and team members in all other countries have a Pay Schedule of "Monthly".
     * Pay Frequency: Returns TRUE if the [Pay Frequency aligns with the country](https://about.gitlab.com/handbook/contracts/#employee-types-at-gitlab).
     * OTE USD: Returns TRUE if the Annual Amount (USD) plus the Variable Pay Amount (USD) equals the OTE Amount (USD). 
     * OTE Local: Returns TRUE if the Annual Amount (local) plus the Variable Pay Amount (local) equals the OTE Amount (local).
     * Variable Pay Frequency: Returns TRUE if the Variable Pay Frequency aligns with the [correct Variable Pay Frequency for the role](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/7c94f8338163f782919a689a871724c48439c575/data/variable_pay_frequency.yml).
     * Conversion Effective Date: Returns TRUE if the correct Effective Date for the currency conversion is being used depending on when the last currency conversion refresh took place, either January 1 or July 1. 
     * Currency Conversion Factor: Returns TRUE if the correct [Exchange Rate](https://about.gitlab.com/handbook/total-rewards/compensation/#exchange-rates) is being used. This will also check that the correct Currency is in BambooHR.  
     * Conversion: Returns TRUE if the Currency Conversion Factor multiplied by the Local Annual Salary equals the USD Annual Salary.
     * USD: Audits based on the conversion inherently check whether the correct local currency is being used. This audit returns TRUE if the USD currency is being used in all fields in BambooHR denoted USD.  
     * Location: Returns TRUE if the team member's Entity matches the correct Entity for their country. For example, team members located in Canada should have Entity "Canada Corp".
     * Benefit Group (US Only): Checks that everyone in the Federal Entity is in a corresponding FED benefit group, while everyone in the INC Entity is in a corresponding FT Benefit Group. 
     * Benefit Group Location (US Only): Checks that everyone is in the correct Benefit Group classification based on their state: OOS, NOEPO, Colorado, NorthernCA, SouthernCA, or Hawaii. 
     * Sales Geo: This is a 2-part check. It will check whether the team member is subject to the Sales Geo Differential based on their role and whether they have been categorized into the correct Geo based on their Locality. 
     * Job Code: Returns TRUE if the Job Code entered in BambooHR is equivalent to the Job Code that matches the team member's Job Title per the Job Codes Sheet.
     * Job Grade: Returns TRUE if the Grade corresponding to the Job Code per the Job Codes Sheet is entered in BambooHR.
     * Role Level: Returns TRUE if the correct Role Level corresponding to the Job Code per the Job Codes Sheet is used in BambooHR (ex. Leader, Manager, Individual Contributor, Intern).

### Emergency Contacts

A Sisense notification will be sent to Total Rewards everytime there is a missing BambooHR Emergency Contact. Total Rewards will send an e-mail to notify team members to add their Emergency Contacts.

### Full Population Audit

Cadence: Monthly

This audit is meant to identify and fix any errors that occur during promotions, transfer, and any other changes that take place throughout the year to a team member's BambooHR profile. 

Process: TODO

## Benefits Audits

* [GitLab Inc (US) Benefits Audits](https://about.gitlab.com/handbook/total-rewards/benefits/general-and-entity-benefits/inc-benefits-us/#audit-processes).
