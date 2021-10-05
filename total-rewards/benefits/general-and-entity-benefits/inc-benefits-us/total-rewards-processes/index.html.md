---
layout: handbook-page-toc
title: "Total Rewards Processes & Audits for US benefits"
description: "Total Rewards Processes & Audits for US benefits."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

----

## Total Rewards Processes & Audits for US benefits

### Processes

#### EOI
TODO

#### Qualifying Life Event (QLE) Verification
TODO

#### Making Updates in the Carrier Systems
This is a temporary process while EDI feeds are being set up.

##### Cigna
TODO

##### Kaiser
TODO

##### WEX Discovery
TODO

## Monthly Health Bill Payments
 
The Total Rewards Analyst will review and initiate payment for all monthly health bills in the United States.
 
* All bills are available on the first of the month and should be paid by the 13th.
* A reconciliation report will be made available in the PlanSource system. Total Rewards will transfer the reconciliation and Group Invoice documents to the US Benefits Billing Google Drive.
    * These documents will be used to verify the proper amount was billed and to provide department breakdowns to AP.
* Total Rewards will login to each admin platform and pay the bills using the banking information and links found in the 1password note: "Monthly Heath Bills"
* Total Rewards will then email a detailed breakdown of the amount/department totals to `ap@gitlab.com` for accounting purposes.
* TODO Build in step-by-step process

### Audits

#### WEX (Discovery) Funding Account Audit
 
This quarterly audit is conducted to ensure the funding of our account used for FSA, DCFSA, and commuter benefit plans according to Accounts Payable matches the amount of claims incurred in WEX (Discovery)'s system.
 
1. Reach out to Accounts Payable to provide an updated payment history report for payments made to WEX (Discovery).
1. In the `Ongoing Discovery Audit` spreadsheet, add new entries in the report provided by Accounts Payable to the bottom of the table in the "Discovery Payments History" tab.
1. Navigate to [WEX (Discovery)'s platform](https://employer.discoverybenefits.com/Login?ReturnUrl=%2f) and log into the employer portal.
  * Select "Benefits Administration" in the left toolbar.
  * Navigate to the "Reports" tab and select the "Employer Funding Report".
  * Download all reports for the months that have elapsed since the last audit was conducted.
1. Add the new monthly report(s) to the `Ongoing Discovery Audit` spreadsheet as new tabs.
1. Reconcile all funding sent by Accounts Payable against the Employer Funding Report details.
  * AP funding will be denoted as "MANUAL EMPLOYER TRANSACTION AND ADJUSTMENT" in these reports.
1. On the "Funding Summary" tab, add the newly downloaded month(s) to the bottom of the summary table:
  * Add the year of the report(s) in column A.
  * Add the month of the report(s) in column B.
  * Copy the formula down for columns C, D, and E.
  * For columns D and E, replace the year and month in the formula with the year and month inputted in a column A and B.
    * For example, if the formula current has `=sumif('March 2020 Funding Detail'!A:A,"Manual Employer Transaction and Adjustment",'March 2020 Funding Detail'!H:H)` and you are working on the row for April 2020, change the formula to say `=sumif('April 2020 Funding Detail'!A:A,"Manual Employer Transaction and Adjustment",'April 2020 Funding Detail'!H:H)`.
1. In the same "Funding Summary" tab, review the difference calculated in cell L3. This difference should be positive and roughly equivalent to the amount we currently have available in our Funding Account for WEX (Discovery), typically in the range of $5,000 to $50,000.
1. Any discrepancies or problems should be escalated to the Manager, Total Rewards.
 
#### WEX (Discovery) Payroll Audit
 
TODO
 
#### PlanSource/Carrier Enrollment Audit
 
This quarterly audit is conducted to identify any differences in enrollment between the carrier records and what a team member has elected in PlanSource.
 
 
#### Kaiser Medical
 
TODO
 
#### Cigna Dental/Vision
 
TODO

