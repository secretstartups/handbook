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

### Payroll Changes Report Audit

Cadence: Weekly

BambooHR creates a standard Payroll Change report to capture any changes processed on a team member's profile. 

Process for auditing:

1. At the end of each week, a member of the Total Rewards team downloads a csv of the payroll changes report through that day from BambooHR and imports it into the 'Payroll Changes Report Audit' spreadsheet in a new tab labelled with the corresponding date. 
1. A member of the team will add a column for checkboxes and filter out any "Time off Taken" change types.
1. They will then review each change captured in the report to ensure the change was intentional, inputted correctly, and proper processing was followed for the change. Once the change has been reviewed, it can be checked off on the report.

### New Hire Audit

Cadence: Weekly

This audit is meant to identify and fix any errors that may have missed during the initial [onboarding audit](https://about.gitlab.com/handbook/total-rewards/total-rewards-audits/#onboarding-audit).

Process: 

1. Total Rewards recieves a weekly automated email with a report named: Report: New Hire Audit
1. The following should be checked if the audit returns Please Check:
     * Locality: Returns Please Check if the team member's Country doesn't match the country in their Locality. 
     * Region: Returns Please Check if the team member's Region doesn't match the correct region for the Country listed.
     * I-9: Returns Please Check if the team member is located in the US AND the I-9 box is not checked OR the team member is not located in the US AND the I-9 box is checked. The I-9 box should never be checked for someone not located in the US. If the person is located in the US and the box hasn't been checked, check their onboarding issue to see if this has been verified by the People Experience team. 
     * Cost Center: Checks whether the team member's Cost Center is aligned to their Department.
     * Division: Checks whether the team member's Division is aligned to their Department. 
     * Department: Returns Please Check if the team member's Department does not match the Department of their manager. Exceptions to this can be added to the "Exceptions" tab in column B. An example of this would be a VP who leads a more specialized department than the executive they report to. 
     * Payroll Type: This checks to make sure the team member is categorized into the correct Payroll Type based on their Country. For example, someone in Australia should be "Employee" while someone in India should be "Employee-PEO".
     * Pay Rate: This checks that the team member's Annual Salary (local) divided by their Pay Frequency is equivalent to their Pay Rate.  
     * Pay Schedule: this checks the team members in the US have a Pay Schedule of "Twice a month", team members in Canada have a Pay Schedule of "Every other week", and team members in all other countries have a Pay Schedule of "Monthly".
     * Pay Frequency: this checks if the [Pay Frequency aligns with the country](https://about.gitlab.com/handbook/contracts/#employee-types-at-gitlab).
     * OTE USD: this checks if the Annual Amount (USD) plus the Variable Pay Amount (USD) equals the OTE Amount (USD). 
     * OTE Local: this checks if the Annual Amount (local) plus the Variable Pay Amount (local) equals the OTE Amount (local).
     * Variable Pay Frequency: this checks if the Variable Pay Frequency aligns with the [correct Variable Pay Frequency for the role](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/7c94f8338163f782919a689a871724c48439c575/data/variable_pay_frequency.yml).
     * Conversion Effective Date: this checks if the correct Effective Date for the currency conversion is being used depending on when the last currency conversion refresh took place, either December 1 or June 1. 
     * Currency Conversion Factor: this checks if the correct [Exchange Rate](https://about.gitlab.com/handbook/total-rewards/compensation/#exchange-rates) is being used. This will also check that the correct Currency is in BambooHR.  
     * Conversion: This checks if the Currency Conversion Factor multiplied by the Local Annual Salary equals the USD Annual Salary.
     * USD: Audits based on the conversion inherently check whether the correct local currency is being used. This audit returns TRUE if the USD currency is being used in all fields in BambooHR denoted USD.  
     * Location: This checks if the team member's Entity matches the correct Entity for their country. For example, team members located in Canada should have Entity "Canada Corp".
     * Benefit Group (US Only): Checks that everyone in the Federal Entity is in a corresponding FED benefit group, while everyone in the INC Entity is in a corresponding FT Benefit Group. 
     * Benefit Group Location (US Only): Checks that everyone is in the correct Benefit Group classification based on their state: OOS, NOEPO, Colorado, NorthernCA, SouthernCA, or Hawaii. 
     * Sales Geo: This is a 2-part check. It will check whether the team member is subject to the Sales Geo Differential based on their role and whether they have been categorized into the correct Geo based on their Locality. 
     * Job Code: this checks if the Job Code entered in BambooHR is equivalent to the Job Code that matches the team member's Job Title per the Job Codes Sheet.
     * Job Grade: This checks if the Grade corresponding to the Job Code per the Job Codes Sheet is entered in BambooHR.
     * Role Level: This checks if the correct Role Level corresponding to the Job Code per the Job Codes Sheet is used in BambooHR (ex. Leader, Manager, Individual Contributor, Intern).

### Emergency Contacts

A Sisense notification will be sent to Total Rewards everytime there is a missing BambooHR Emergency Contact. Total Rewards will send an e-mail to notify team members to add their Emergency Contacts.

### Full Population Audit

Cadence: Monthly

This audit is meant to identify and fix any errors that occur during promotions, transfer, and any other changes that take place throughout the year to a team member's BambooHR profile. 

Process: 

### Access Level Audit

Cadence: Every Quarter / As per requirement of Security Audit Team

This audit is meant to identify and fix errors that occur during onboarding, termination, promotions, relocation, country conversion and any other changes that take place throughout the year to a team member's access level in BambooHR profile.

Process:

* Create a Manual Report using New Report Option. Name it as “Access Report.”
* This report should have the following fields in sequence:
1. Employee #
1. Last name, First name
1. Work Email
1. Status
1. Hire Date
1. Self-service access
1. Job Title
1. Reporting to
1. Payroll Type
1. Role
* Keep a count of the no. of people shown in the report. **(A)**
* Go to the “More” option and “Export Report as.” “Excel.”
* Go to Access Level - GitLab Google Sheet >> File >> Import >> Upload >> Select a file from your device >> Insert New Sheet(s) >> Import data
* Rename the new sheet in the following syntax - Access Level -<Date of report generation> 
* Add two new fields at the end of the report viz “Access Level” and “Additional.”
* Apply filter >> Self-service access >> Uncheck Yes >> OK. Count the number of Team Members. **(B)**
* Once this selection is applied. You will get Future joining Team Members details and test accounts. Delete them all and turn off the filter. Count the no. of team members and note the same **(C)**. This number should be **(A) minus (B)** 
* Turn on the filter >> Payroll Type >> Uncheck Employee & Employee-PEO >> OK.
* Fill “Contractor self-service” in the Access Level column for all the team members.
* Turn off the filter >> Create a filter >> Role >> Uncheck Individual Contributor
* For Non-Contractors the “Access Level” will be Managers but for Contractors the “Access Level”  will be Contractor Self Service and “Additional” field should be Managers.
* Go to Settings >> Access Levels >> Levels. Here you will see all the special access levels with names. 
* Select the special access levels one by one and check the team members profile mentioned in that level. Update their “Access Level” in the report accordingly.
* Turn off the filter >> Search the name one by one >> Update their Access Level according to the profile in the Access Level & Additional Column. Use “;” for multiple access levels.
* For rest of the team members fill the Access Level with “Employee self-service”
* Turn off filter >> Create a filter >> Role >> Uncheck Individual Contributor >> Job Title >> Select all the Job titles which are individual contributors but their role is equivalent to managers. Example: Staff Backend Engineer, Fellow Engineer, Principal Product Manager. Change their access level to Employee self-service from Managers and for Contractor self-service, remove Managers from the Additional column.
*Turn off filter >> Create a filter >> Select each access level to audit with the BambooHR access level count. Make sure to match the count of Employee self-service, Managers and Contractor self-service

**Note:** A terminated team member on Garden Leave will still have the access level to prevent reporting issues. To prevent the access, IT Ops turns off the access via Okta manually as BambooHR is still active for team members.

## Benefits Audits

* [GitLab Inc (US) Benefits Audits](https://about.gitlab.com/handbook/total-rewards/benefits/general-and-entity-benefits/inc-benefits-us/#audit-processes).


