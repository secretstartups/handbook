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

DRI: Automated by PlanSource

1. Employee elects Voluntary Life & Ad&D plans in PlanSource.
1. If required, PlanSource routes the employee to the Cigna website to fill out the Evidence of Insurance directly.
1. The Employee fills out the Evidence of Insurability and completes enrollment. 
1. Cigna/NY York Life rejects/approves the request and automatacally updates the election amount on PlanSource. 

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
| Establishment or Dissolution of Domestic Partnership | [Domestic Partner Affidavit](https://drive.google.com/file/d/11cV-WXJXu8G626muav2aJvpYS4CMleeE/view?usp=sharing) <br> [Dissolution of Domestic Partnership Affidavit](https://drive.google.com/file/d/1vlhVumXZbw8to2EHXgoDw0HCK4DwWLQ3/view?usp=sharing) | Name of team member, name of domestic partner, date of birth, date of event |
| Death of Dependent | Death Certificate | Name of dependent, date of death |
| Gain of Coverage Elsewhere | Benefits summary, letter from new benefits admin/HR, letter from new insurance carrier | Name of team member and/or dependents being removed from coverage, effective date of new coverage, list of new coverages (medical, dental, vision) |
| Loss of Coverage Elsewhere | Benefits summary, letter from old benefits admin/HR, letter from old insurance carrier, COBRA paperwork | Name of team member and/or dependents being added to coverage, termination date of old coverage, list of coverages (medical, dental, vision) being lost |

#### Making Updates in the Carrier Systems
Cigna & Kaiser are automatically fed Member and plan data from PlanSource via the integration. 

##### WEX Discovery
Cadence: Semi-Monthly, after each pay period
DRI: Total Rewards, Benefits - Raisha Kole
Temporary process until integrations are in place

**HSA, DCFSA, Commuter Parking and Commuter Transit Funding** 

1. Request a report from Payroll on the latest pay period's HSA, DCFSA, Commuter Parking and Commuter Transit Deductions.
    * HSA ONLY Log on to Plansource to Data & Tools > Reports. Search for HSA Funding Report, and enter the payroll date in the "Point In Time" date. Reconcile the Payroll Report and the PlanSource report to ensure that the HSA deduction data is accurate. If HSA funding data is missing from the Payroll Report, a double deduction may need to occur the following Pay cycle. 
1. Log on to [Discover Wex Administration Portal](https://benefitsemployerlogin.wexhealth.com/home). Click on "Imports" in the side menu
1. Click on the "New Import"> "Contribution" . Check "Pre-populate Template" and select the savings account you'd like to fund:
    * If HSA - Select "Health Savings Account" under Plan Year - then check "Health Savings Account" 
    * If DCFSA - Select the current plan year "1/01/2021 - 12/32/2021" - then check "Dependent Care FSA" 
    * If Commuter Transit or Parketing - Select "Commuter Plan 2021" - then check "Mass Transit" and "Parking" 
1. Click "Download Template"  This will generate a report with the following Columns: EmployeeIdentifier, Contribution Date, Contribution Discription, Contribution Amount, PlanName, PriorTax Year. Enter the information as follows:
    * EmployeeIdentifier: This Column is the Employee's SSN, and will already be populated for all employees that have an Open HSA Wex account.
    * Contribution Date: The Payroll Deduction date. Format should be MMDDYYYY - no dashes 
    * Contribution Description: If the contribution is from the Employer (i.e. Employer HSA Funding) select "Employer". If the contribution is a deduction from the Employee, select "Payroll"
    * Contribution Amount: The amount that was deducted from the employees' paycheck OR the amount that the Employer is contribution to the employee's HSA.
    * PlanName: Pre-populated with the type of Funding account.
    * ProirTaxYear: Leave Blank
1. Double check the Payroll report if any employees received a deduction or contribution and did not populate on the Pre-populated Template. If so, create a Wex account for that employee and add them to the report.
1. Once the report is completed, download it as a CSV file. Return to the Wex Import Page where you had left off. Click on "Next", then upload the CSV file. Click "import"
1. Check if the report had any errors or issues by going back to the "Import" page on the Administration Portal. Under "Pending" you will see if your report had any errors. If there were only a handful of errors you can update directly on the portal by selecting "Fix All". If there were many errors, you can cancel the report and upload a new one.




#### Census & New Hire Updates

Cadence: Weekly - Thursdays
DRI: Total Rewards, Benefits - Raisha Kole
Temporary process until intregrations are in place

**BambooHR to PlanSource:**

1. Download a New Hire Report from Bamboo HR, log on to PlanSource and update New Hire's profile with salary and full time/part time designation. 
1. Review the US Payroll Changes spreadsheet weekly for any salary changes that would need to be made in PlanSource.
1. If there are only a few updates to be made, navigate to the team member's profile directly and make any applicable updates.
1. If there are many updates to be made, navigate in PlanSource to "Data & Tools" -> "Data" -> "Employee Update Worksheet". Download the template with the necessary fields and re-import here once updated with the information from the Payroll Changes spreadsheet.


### Monthly Health Bill Payments
 
The Total Rewards Analyst will review and initiate payment for all monthly health bills in the United States.
 
* All bills are available on the first of the month and should be paid by the 13th.
* A reconciliation report will be made available in the PlanSource system. Total Rewards will transfer the reconciliation and Group Invoice documents to the US Benefits Billing Google Drive.
    * These documents will be used to verify the proper amount was billed and to provide department breakdowns to AP.
* Total Rewards will login to each admin platform and pay the bills using the banking information and links found in the 1password note: "Monthly Heath Bills"
* Total Rewards will then email a detailed breakdown of the amount/department totals to `ap@gitlab.com` for accounting purposes.
* TODO Build in step-by-step process

### Assigning A 'Benefits Group' for Team Members

The People Operations team will update the 'Benefits Group' in the HR system of record for Team Members when they are onboarded or relocated. The Benefits Group determines which plans team members are eligible for.

##### Instructions on assigning a benefits group:

There are two parts of the Benefits Group: **1. The entity** and **2. The team member's location.**
For example'Fed-FT-Colorado' would be the correct option for a GitLab Federal Team Member living in Colorado.

**Entity**

* 'Fed-FT-': Team Members employed in the Federal entity
* 'Ft-' Team Members employed in the Inc entity

**Location**

* Colorado: Team Members with a home address in Colorado
* Hawaii: Team Members with a home address in Hawaii
* NorthernCA: Team Members with a home address in Northern California
* SouthernCA: Team Members with a home address in Southern California
* TX/MO/OK: Team Members with a home address in Texas, Missouri, or Oklahoma
* OOS: Team members with a home in any other state not listed in the above.

Ineligible: Any Team Member that relocated outside of the US and is no longer eligible for a plan, OR any team member that may not be eligible due to Part-Time employment (under 30 hours per week). Please note that interns are eligible for benefits if they work over 30 hours per week.

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
 


