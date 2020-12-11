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

#### Audit Steps 

##### Who to Onboard 

Check [Bamboo Onboarding Report](https://gitlab.bamboohr.com/reports/custom/Onboarding/511) to find out the list of new hire for the week.

Only audit once team members have started and added their birthdate under the personal tab. If not, then comment on the onboarding issue and remind the concerned people experience associate to remind the team member on their 2nd day to add their DOB. 
* Go to the team member’s Bamboo Profile > click “More” > Onboarding
* Import from template
* Go over the Onboarding Tasks.

##### Access Level

* Job tab > Settings icon > BambooHR Level:
* For Employees who are Managers of people: "Managers"
* For Contractors (independent or corp-to-corp): "Contractor Self-Service"
* For Contractors who are Managers of people: "Multiple Access Levels": "Contractor Self-Service" and "Managers"

##### Audit Job Tab

* Signed Letter: Documents tab > check that the signed contract is in the “Contracts & Changes” folder. 
   * Effective Date, Hire Date, Compensation & Job Information Effective Date, Employment Status: Check the hire date on the contract. If it is different, go back to the folder and search for a date change confirmation file (usually uploaded by candidate experience specialist. 
   * If the signed letter is not in the folder: go to Greenhouse > search for team member > Activity Feed > Find CES > ping CES on slack and ask for the date change confirmation to be uploaded.
* Cost Center, Department & Division: Should be the same as the manager’s.
* [Payroll Type](https://about.gitlab.com/handbook/contracts/)
* Compensation:
   * Fill out the [onboarding calculator](https://docs.google.com/spreadsheets/d/1khOeUjkl6l6d_3TaLCo8qn_lnb3AbUq-1rspmNRLzcs/edit?ts=5d7edfee#gid=1910573508)
   * Cross-check calculator results against Compensation, Pay Frequency, On Target Earnings, Currency Conversion fields
   * For Non-Sales, “On Target Earnings” should say “No”, no need to add the date
   * Effective Date should be the hire date.
   * Exchange Rate Effective Date is going to be 2020-12-01 until we revisit this again in 2021
   * Equity: Audit Shares field against contract or Greenhouse details.
   * Job Information: cross-check against contract. 
   * If title has a speciality, add it under “Job Title Speciality”, for example, “Backend Engineer, Verify” - “Backend Engineer” will go under “Job Title” but “Verify” will go under “Job Title Speciality”
* Job Codes: audit job title and job code against this [list](https://docs.google.com/spreadsheets/d/1j7A0GmPffyICjBgKAY1RwcB2lx4Rx_uswFJA7Oc7KLM/edit#gid=1977487429)

##### Audit Locality & Region
* Personal tab > Audit Locality to match the city: 
* Check if the locality is on Greenhouse (Candidate City + URL for compensation calculator). If not:
* Check [distance of city to locality on Google Maps](https://www.google.com/maps/dir/Smyrna,+GA/Atlanta/@33.8222471,-84.5194938,12z/data=!3m1!4b1!4m18!4m17!1m5!1m1!1s0x88f50c3d75fa13e7:0x996104eec4f504a3!2m2!1d-84.5143761!2d33.8839926!1m5!1m1!1s0x88f5045d6993098d:0x66fede2f990b630b!2m2!1d-84.3879824!2d33.7489954!2m3!6e0!7e2!8j1571299200!3e0). Distance should not be more than 1 hour and 45 minutes during rush hour (8AM). Change the time to 8:00AM
* Audit Region

##### Sales Geo Differential
* Personal tab > Sales Geo Differential
* For non-sales : n/a Comp Calc
* For sales: pick the region (it will be for any of the titles under the “Not In Comp Calc” section of the [comp calculator](https://docs.google.com/spreadsheets/d/1NS_yTVXQ87UnXaLYvnOk9_4D91jg1pMFRpFy4fgpuSg/edit?ts=5d7ee2b2#gid=1417734479) OR the team member will have On Target Earnings)

##### Payroll Change Report

Reports (black heading on BHR) > Standard reports > Payroll change report > Change the date for the week > tick the team member’s name

##### Update GitLab and Turn off Notifications

* Go back to the onboarding issue of the team member >  Before Starting at GitLab > Total Rewards > tick “Total Rewards Analyst” task
* Turn off notifications

##### Only For US Team Members:

Wait for People Experience Team to tag you on the team member’s onboarding issue. Only audit the profile once the SSN has been added to the account. If not, comment on the onboarding issue and remind the team member on their 2nd day to add their SSN. 

**Additional steps to audit the profile of US team member:**

* SSN added?
   * Personal tab > make sure “National Identification Number Type” and “National Identification Number” are filled out
* I-9 Field
   * Personal tab > Once the SSN has been added, tick the I-9 Processed checkbox
* Benefit Group
   * Check team member’s state (under Personal tab) against the [Benefit Group Cheat Sheet](https://docs.google.com/spreadsheets/d/1QU2rsFrrKSRQIrzWu2eqylK0HrNvt9FUhc_S5VQAVJ4/edit?ts=5d922f86#gid=0).
* Ready to Add to ADP
   * Comment on the onboarding issue, tagging US payroll Specialist to add to ADP.
* Update GitLab and Turn off Notifications
   * Go back to the onboarding issue of the team member >  Before Starting at GitLab > Total Rewards > tick “Total Rewards Analyst” task
   * For employees in the US only > Total Rewards > Tick “Total Rewards Analyst” tasks
   * Turn off notifications

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
     * Conversion Effective Date: Returns TRUE if the correct Effective Date for the currency conversion is being used depending on when the last currency conversion refresh took place, either December 1 or June 1. 
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
