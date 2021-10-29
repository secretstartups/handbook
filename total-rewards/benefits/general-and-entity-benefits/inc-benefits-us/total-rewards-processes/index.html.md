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

DRI: TBD
Cadence: Weekly until integration is in place.

1. Log into [Cigna For Employers](https://cignaforemployers.cigna.com/), select `Reports & Tools`, and select `Medical Underwriting`. 
1. In the Medical Underwriting platform, select `GitLab Inc` and `Activity in Last 7 Days`. 
1. When an application moves to and "Approved" or "Closed" status, find the corresponding EOI Request in PlanSource find in the My Tasks section on the homepage.
1. Checkmark all of the EOIs that are able to be reviewed at this time and click the button to `Review the Selected Queue`.
1. If any amount over their current election is approved per the Cigna Underwriting website, update the effective date to the current date, select to send subscriber an email, and select to approve. If the entire requested amount was denied by Cigna, keep the original effective date and select to reject. 

#### Qualifying Life Event (QLE) Processing

DRI: TBD
Cadence: Ad hoc (check at least weekly)

1. Log into PlanSource and select `Life Events` (in the "Your Tasks" box).
1. For any new pending life events, you will need to request documentation from the team member:
    * Nagivate to the team member's profile.
    * Scroll down to the `Tasks` section and in the Actions drop-down, select "Create a Document Request".
    * Select "New Document Request" and paste the following text: 
       > Hello, 
       > 
       > We received your request to update your benefits due to your Qualifying Life Event. This Qualifying Life Event requires documentation to substantiate it. Please review the following table to understand the documentation requirements: https://about.gitlab.com/handbook/total-rewards/benefits/general-and-entity-benefits/inc-benefits-us/total-rewards-processes/#qle-acceptable-documentation-table. 
       >
       > If you have any questions or neeed any help uploading your documentation, please reach out to the Total Rewards team.
     * Choose acceptable documents for the team member's Life Event per the table below and click "Submit"
1. Once you have checked the `Life Events` task for any new life events, navigate to `Document Requests` in the "Your Tasks" box to review whether any team members have submitted documentation. Note that this may reflect 0 in your summary view even if the team member has submitted a document. 
1. If a new document has been submitted and needs review:
     * Click the task.
     * Click the link under "Documents Requested From Employee" which will open a side panel. 
     * Click to open document in a new window if preview doesn't work.
     * Review the document per the documentation table below ensuring the effective date in the QLE matches the event date in the documentation.
     * If it meets documentation requirements, click "Accept." If not, click "Reject and Issue New" and reach out to the team member to explain what else is needed.
     * Once the documentation is accepted, you'll also want to make sure to approve the original life event. 
1. Once all documents and life events are approved in PlanSource, any carrier updates will also need to be made manually while the EDI integrations are being set up. 

##### QLE Acceptable Documentation Table

| Event | Acceptable Documents | Requirements |
|-------|----------------------|--------------|
| Marriage | Marriage Certificate | Name of team member, name of spouse, date of marriage, official seal/signature |
| Birth | Birth certificate <br> Hospital Documentation | Name of team member, name of child, date of birth, hospital letterhead, seal, or signed by doctor/hospital admin (hospital documentation only) |
| Adoption | Court order for adoption | Team member name, new dependent's name, court order effective date |
| Divorce or annulment | Divorce decree/court ruling for annulment | Name of team member and ex-spouse, date of divorce/annulment |
| Establishment or Dissolution of Domestic Partnership | N/A | N/A |
| Death of Dependent | Death Certificate | Name of dependent, date of death |
| Gain of Coverage Elsewhere | Benefits summary, letter from new benefits admin/HR, letter from new insurance carrier | Name of team member and/or dependents being removed from coverage, effective date of new coverage, list of new coverages (medical, dental, vision) |
| Loss of Coverage Elsewhere | Benefits summary, letter from old benefits admin/HR, letter from old insurance carrier, COBRA paperwork | Name of team member and/or dependents being added to coverage, termination date of old coverage, list of coverages (medical, dental, vision) being lost |

#### Making Updates in the Carrier Systems
This is a temporary process while EDI feeds are being set up.

##### Cigna
TODO

##### Kaiser
TODO

##### WEX Discovery
TODO

#### Census Updates

Cadence: Semi-monthly
DRI: TBD
Temporary process until intregrations are in plance

**BambooHR to PlanSource:**

1. Review the US Payroll Changes spreadsheet at the middle and end of each month for any changes that would need to be made in PlanSource ie job title changes, salary changes, address changes.
1. If there are only a few updates to be made, navigate to the team member's profile directly and make any applicable updates.
1. If there are many updates to be made, navigate in PlanSource to "Data & Tools" -> "Data" -> "Employee Update Worksheet". Download the template with the necessary fields and re-import here once updated with the information from the Payroll Changes spreadsheet.

**PlanSource to Carriers:**

1. In PlanSource, navigate to "Data & Tools" -> "Reports" and download both an "Employee Census Report" and "Dependent Census Report" using the date range from the last time the report was ran to today's date. 
1. Any new hire enrollments or changes due to qualifying life events should have already been updated during separate processes. Any address changes or census changes not tied to a new hire or QLE will need to be updated in the applicable carriers system by logging into the admin portal, navigating to the team member's profile, and selecting to change/update.

### Monthly Health Bill Payments
 
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

