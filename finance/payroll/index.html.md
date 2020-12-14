---
layout: handbook-page-toc
title: "Payroll"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

Welcome to the Payroll Group handbook!  You should be able to find answers to most of your questions here.  If you can't find what you are looking for, then please do the following:
-  **Email** your question(s) to one of the following group email addresses:
   *   US team members: uspayroll@gitlab.com
   *   Non-US team members: nonuspayroll@gitlab.com
-  **Chat channel**:  `#payroll` slack channel for questions that is not confidential.
- Please email all questions related to commission such as calculation, deals, etc... to sales-comp@gitlab.com

## Legal Entity Payroll providers

- GitLab BV (Netherlands) - HR Savvy
- GitLab BV (Belgium) - SD Worx
- GitLab IT BV - iiPay payment service
- GitLab Federal (US) - ADP
- GitLab Inc (US) - ADP
- GitLab GmbH (Germany) - CloudPay
- GitLab LTD (UK) - Vistra
- GitLab PTY (Australia) - [iiPay](#iipay---australia)
- GitLab PTY (New Zealand) - CloudPay
- GitLab Canada Corp (Canada) - CloudPay
- GitLab Ireland Ltd (Ireland) - CloudPay

## Pay Date

1. Employees of GitLab Inc and GitLab Federal will get paid on the 15th and the last day of the month. The payroll schedule, payslips, and W-2(s) are available on [ADP portal](https://workforcenow.adp.com).
   - To access pay statements, go to Myself -> Pay -> Pay Statements.
   - To access form W-2, go to Myself -> Pay -> Annual Statements.
1. Employees of GitLab BV (Netherlands) will get their salary wired on the 25th of every month, and can see their payslip in their personal portal on
[HR Savvy's system](https://hr-savvy.nmbrs.nl/) towards the end of the month.
1. Employees of GitLab BV (Belgium) will get their salary wired the last day of each month and will receive their payslip in their personal portal on [myworkandme] (https://www.myworkandme.com/portal/)
1. Employees of GitLab Ltd will get their salary wired on the last day of every month, and can see their payslip via their personal portal on [Vistra's system](https://www.webcare2.com/vistra) towards the end of the month. The login details are the 9-digit user ID the employees were provided with following their first payroll. Contact `peopleops@ gitlab.com` if you need to have your password reset.
1. Employees of GitLab GmbH will get their salary wired on the last day of every month, and can see their payslip via their personal account on [CloudPay ESS portal](https://payroll.cloudpay.net/app/servlet/workflow?mode=ess ).
1. Employees of GitLab Canada Corp will get pay bi-weekly and they can access their payslip via their personal portal on [CloudPay's ESS portal](https://payroll.cloudpay.net/app/servlet/workflow?mode=ess).
1. Employees of GitLab PTY Australia will get their salary on the 27th of each month, and they can access their payslip through [iiPay portal](https://pay.iipaysp.com/GITL)
1. Employees of GitLab PTY NZ will get pay their salary on the 28th of each month, and they can access their payslip via [CloudPay's ESS portal](https://payroll.cloudpay.net/app/servlet/workflow?mode=ess).
1. Employees of GitLab IT BV that are employed through GitLab's co-employer PE0:
   - Global Upside (India) will get their salary wired by the last day of the month. Global Upside will send payslips electronically through their HR portal.
   - Safeguard are paid monthly and on the last day of the month (depending on the country) with exception to Switzerland, which is the 25th of each month. Payslips are provided electronically by Safeguard.
1. Contractors from Nigeria, South Africa, and the US will get pay within 15 days after they submitted their monthly invoices for services to nonuspayroll@gitlab.com.
1. Contractors through CXC Global will get paid by the 25th of each month.
1. All other contractors will get paid by the 22nd of the month by iiPay and remittance advice will send to their gitlab email address.


## US

### Adding New Hire into ADP

1. Total Rewards Analysts will notify Payroll when I-9 verification is completed
1. Login to ADP as Administrator
1. Select Process, HR, and Hire/Rehire
1. Select Payroll Only (System) template
1. Enter the legal name from Passport or SSN in BambooHR
1. Select SSN for the Tax ID Type
1. Enter Hire Date
1. Select Gender
1. Reason for Hire – New Position
1. Enter Birth Date
1. Company Code – 26X for GitLab Inc or JW9 for GitLab Federal
1. Select USA under the drop down under Countries
1. Enter address
1. Select Works from Home from the More Fields section on the right side
1. Select Yes for Works from Home and Use Primary Address as the Work Address
1. Select Ethnicity/Race ID Method under More Field
1. Look up the Ethnicity under Job section in BambooHR
1. Enter Job Tile and Report to Manager
1. Select FT – Full Time under Worker Category
1. Select team member’s lived in state for Location
1. Select NAICS worker comp code – be sure to use 5302 for WA residents
1. NAICS worker's comp code 8859 only to be used for CA residents
1. Enter work email address and check “Use For Notification”
1. Select Salary or hourly under Regular Pay Rate
1. Enter 86.67 hours for salary team members under Standard Hours and leave it blank for hourly members
1. Enter the Worked in State, Lived in State, and SUI/SDI tax code
1. Select Done
1. Email the ADP Registration email to the team member(s)
1. If the team member is hourly then be sure to copy the hourly template and share it with the team member via Google Sheet

### Processing Payroll

#### One time payment

1. Create a batch and name it accordingly
1. Select the Bonus paydata grid
1. Add employee
1. Enter the earning type and amount
1. Enter B pay frequency
1. Enter 2, or 3 under pay #
1. Enter W under Special Action


#### Updating Benefits

Lumity will send a “Diff” payroll file to Payroll 5 days before pay date for all new enrollments along with changes.  Payroll Specialist will covert the information into an import file to update all changes in ADP.

1. Download the Diff file from Lumity secured portal
1. Make a copy of the original Diff tab and name it as "Payroll"
1. Insert 4 tabs into the workbook: ER Ded, EE Ded, ER Catchup, and EE Catchup
1. Insert a column into the "Payroll" tab for ADP PositionID.  Use the SSN column to pull in the information via VLOOKUP formula
1. Copy the "Payroll" tab and paste onto those 4 new tabs
1. For the ER Ded tab - delete all deductions columns except for Employer deduction column
1. Sort the ER Ded tab by Benefits Plan Name and add ADP deduction code
1. For the EE Ded tab - delete all deductions columns except for Employee deduction column
1. Sort the EE Ded tab by Benefits Plan Name and add ADP deduction code
1. Add the deduction code and deduction amount onto an import template "EMP(company code)EPI".  Example - EMP26XEPI.csv or EMPJW9EPI.csv
1. A copy of this template is saved in each payroll folder on Google shared drive
1. For the ER catchup tab - delete all deduction columns and only keep ER catchup column and add ADP memo code
1. For the EE catchup tab - delete alld deduction columns and  ony keep EE catchup column and add ADP memo code
1. Add those memo codes and amounts only the Benefits adjustment template (a copy is available in the payroll folder).  Template -26XBCEPI.csv or JW9BCEPI.csv
1. Import employee data for deductions: Process - Utilities - EMP Data import
1. Import benefits adjustment: Payroll - Paydata Batch - Import batch (see one time adjustment instruction)

#### Other payroll adjustment tasks:

1. Update payroll changes
1. Validation reports:
    *  payroll department between ADP and BambooHR
    *  salary validation between ADP and BambooHR
    *  lived in, worked in, and SUI state for each team member in ADP
1. Generate payroll reports for review:
   * Employee changes
   * Active hourly without hours
   * Inactive employees with paydata
   * Autopay cancellation
   * Payroll Summary
1. Preview payroll:
   * Total payroll reconcilation (input vs. output)
   * There are two Payroll Specialists for US payroll
   * Payroll Specialist processing GitLab Inc will review payroll changes for GitLab Federal payroll and vice versa
   * Sr. Manager, Global Payroll and Payments will perform a final review and approve the payroll
   * All validation and reconcilation reports must be sign by the preparer, reviewer, and approver


#### Reports after Accept payroll

Generate the following reports and saved them on Google Shared drive for Federal and Inc:

1. GL report
1. Payroll Reports (Payroll Summary, Statistical Summary, and Payroll Register Total)
1. Commission and Bonus per check date
1. Benefits deduction for Lumity
1. MISC deductions
1. 401(k) Contribution report

#### Benefits Funding Process

* H.S.A
  * Employer contributions will be funded each payroll ($50 per pay)
  * Missed ER contribution will not have a catch up (Employee enrolls late…Lumity will only fund ER contribution on the upcoming pay period. Any missed employer contributions will be disregarded)
  * Discovery will debit GitLab Bank account on each funding date
  * Max out is allowed
* FSA
  * Funds will debit from the Discovery reserve account once the employee submits a claim
  * Discovery will contact GitLab if the reserve is low on funds
* Dependent Care FSA
  * Funds will debit from the Discovery reserve account once the employee submits a claim
  * Discovery will contact GitLab if the reserve is low on funds
* Limited FSA
  * Funds will debit from the Discovery reserve account once the employee submits a claim
  * Discovery will contact GitLab if the reserve is low on funds
* Commuter
  * Employee payroll deduction will occur on the last payroll of the month and funded on the 1st of the following month
  * Funds will debit from the Discovery reserve account once the employee submits a claim
  * Discovery will contact GitLab if the reserve is low on funds

## Non-US


### Australia, UK, Belgium, Netherlands, Germany, Ireland and Japan Monthly Payroll Process

1. Payroll changes due date to the payroll providers is 10th with exception of Australia (12th) & UK (15th).  If the due date falls on a weekend or a holiday, then it will be the working day before this.  
1. Total Rewards Team will add bonus, promotion, title changes, etc.. to the Payroll Changes template
1. Payroll changes are entered into a spreadsheet for commission, bonus, new salary, expenses (only for UK & Canada) and password protected the file
1. Payroll sends the payroll changes file to the local payroll providers.
1. Local payroll providers will send the payroll reports to Payroll for review and approval
1. Senior Payroll Specialist will review and notify Payroll Manager for final review and approval.  Once that is completed then SPS will sends the approval email to the payroll provider before the 21st.
1. Payroll to be saved and upload the payroll report to the GoogleDrive by month and under the right entity
1. Payroll will notify the Payments team of funds requests due
1. GL Reports to be worked on once available from the local provider and forwarded to the GL team at least 4 days before check date


### iiPay - Australia

For employees of GitLab PTY (Australia), to view payslips visit the [iiPay sign-in portal](https://pay.iipaysp.com/GITL).

If you have not received an invitation to create an account, visit the [register URL](https://pay.iipaysp.com/RegisterUser/GITL).

#### Contractors:

1. Team members must submit their salary invoices through BambooHR and expenses through Expensify by the 8th of each month. For example, submit May salary invoice in the month of May, which is the current month.

1. To enter salary invoice in BambooHR:
   * Visit "My Info" page
   * Select "Request a Change", locate at the upper right corner in that section
   * Click "Contractor Invoice..."
   * Enter "Date Submitted" - current date
   * Enter "Invoice Number" - it should be incremental from the last invoice
   * If new team member, then it will be 1
   * Enter "Invoice Date" - it should be same as invoice date
   * Enter "Monthly Salary"
   * For new hires starting after the 1st of each month, the pro-rated calculation is: `(monthly salary / # of business days for that month) * actual work days from the hire date`
   * Change the currency to match with the currency on the employment contract
   * Enter bonus or commission according to the position. For referral or discretionary bonus, please convert it into your assigned currency by using the corresponding [exchange rate](/handbook/total-rewards/compensation/#exchange-rates).
   * Change the currency
   * Submit - there will be a message at the top of the page - "Your request was submitted successful"
   * The submitted invoice can be seen in "Sent Requests" page, locate the inbox icon at the upper right corner of the page
1.  The invoice will submit to the Payroll specialist for approval
1.  BambooHR will send an email after the invoice was approve or reject with the reason
1.  The invoice will be visible in BambooHR at that time
1.  Note - Once Payroll approved the invoice, any corrections to that invoice must be edit by Payroll through correction request(s) email to       nonuspayroll@gitlab.com
1.  All invoices will be approve by Payroll by the 9th of each month
1.  For expense reimbursement, team member will need to submit through Expensify and report(s) must be approved by managers by the 8th of each month
1.  Payroll will approve all expense reports by the 9th of each month
1.  If the 8th fall on the holidays or weekend, then the due date will move to the last business day before the 8th.
1.  For all new hires starting after the 8th of each month, then the current month payment will be paid with the following month's invoice as separate payment. For example, new joiner who joined after 8th April to submit pro-rated April salary invoice by the 8th of the following month, which is 8th of May.
1.  Note - all new team members will receive a testing payment from iiPay to validate their bank details prior to th 1st live payment.  Please enter the bank details on the 1st day of employment.
1.  The required fields for bank details in BambooHR under Bank Information tab:
    * Bank Name
    * Beneficiary Name
    * Account Number (as needed due to each country's banking requirements)
    * Routing number (as needed due to each country's banking requirements)
    * IBAN - this is international Bank Account number.  Each region will have different name for this number.  Be sure to check with your bank
    * SWIFT (as needed or available due to each country's banking requirements)
    * Account type
1.  If you are changing your bank details for any reason please let nonuspayroll@gitlab.com know and you can update BambooHR accordingly so another test payment can be set up. Please dont change your banking details just before the deadlines per above as this will cause delays in payment.
1.  If you receive a promotion, salary increase and you need to back date it, you can include the back pay amount on one invoice with a comment of the detail or submit two separate invoices which ever is prefered, and let Payroll know.

#### CXC Global

- Poland
- Portugal
- Russia
- Romania
- Turkey
- Israel
- Ukraine
- Greece
- Czech Republic

Team members from the above countries will get paid through CXC Global. Team members will need to submit their monthly invoice (Salary, bonus, commission, expense, etc.) to CXC Global by the 20th of each month This is [the template](https://docs.google.com/spreadsheets/d/1uQ-0KOgifQW0ZNiUS4z5nk1pQstwSpSXdYYM11KElCk/edit#gid=1931869221) you could use for any CXC invoice, but this is not mandatory, you can also use your own format. Team members should ensure their expenses are approved on Expensify by the 8th of each month so they can include them on their invoice to CXC. Payroll will submit commission, bonus, and expenses to CXC by the 10th of each month (depending on when the weekend falls, then it will be the working day before).  For new hires starting after the 1st of each month, the pro-rated calculation is: `(monthly salary / # of business days for that month) * actual workdays from the hire date`

### PEO

#### SafeGuard

- Brazil
- France
- Italy
- Spain
- South Korea
- Switzerland

The internal deadline for changes is the 8th of each month, Payroll will send by the 10th of each month.  Payroll will submit commission, bonus, salary adjust, expense reimbursement to SafeGuard via a password encrypted template.  SafeGuard will issue an invoice for each country no later than the 16th of each month.  Payroll Specialist will review and submit the invoice for payment with AP.

#### Global Upside

- India
- Philippines
- China

Payroll changes will be send by the 10th of the month.  Global Upside will send an estimated invoice by the 5th of the previous month. For any additional adjustment, they will invoice the adjustment on the following months invoice.

#### Remote.com

- Hungary
- Austria
- Mexico
- South Africa

#### Payroll cut off date

All payroll changes (demographic information, job, bonus/commission payout requests, etc..) must submit to Payroll by the payroll changes deadline date to be included in the current month.  Any new hires start after the payroll changes date will get pay on the following check date.

- GitLab Inc and GitLab Federal [Payroll calendar](https://docs.google.com/spreadsheets/d/12NmHxC8UI5CKK-j7MXO91o3PtcR4Z-lC-elnPkPFhjY/edit#gid=0)
- GitLab Canada Corp [Payroll calendar](https://docs.google.com/spreadsheets/d/1ECkI_Z8R82j1eipJEEybXjO-EDtzw4TuhJPOnHypDho/edit#gid=0)
- Global Upside [Payroll Calendar](https://docs.google.com/spreadsheets/d/1At1qOHUwQCVueBZdZ8gEwAitUzQA_9yJkhhir0Z6U-U/edit#gid=0)
- GitLab LTD [Payroll Calendar](https://docs.google.com/spreadsheets/d/12Ch7jkpGLD3eQbzOx3zf7FBqsuMRrevj3hALajfj9aY/edit#gid=1241976897)
- GitLab BV (Netherlands) [Payroll Calendar](https://docs.google.com/spreadsheets/d/1c9bOUTLVsadWtM0gy6tqTHa6DDar0YGT1N4mT02xvOc/edit#gid=887208509)
- GitLab BV (Belgium) [Payroll Calendar](https://docs.google.com/spreadsheets/d/1eMPUirNk-AtBMTF4tE49G1xCHWES_r2VfDph5KiIHP0/edit#gid=1680317269)
- GitLab GMBH [Payroll Calendar](https://docs.google.com/spreadsheets/d/19lNDx_aiAQDoSKBRRWF779jT2qB5lG84PrBOYQYd5sI/edit#gid=1165608204)
- GitLab PTY LTD Australia [Payroll Calendar](https://docs.google.com/spreadsheets/d/1CO7H27ofFcFL7ztVi8Eg8_hI3W8mUwAwUtePsPJkdGw/edit#gid=724771463)
- GitLab PTY LTD New Zealand [Payroll Calendar](https://docs.google.com/spreadsheets/d/19S-PMIDLCCn0goo407lXKutbuMlFynoO63BBu8V5hO0/edit#gid=0)
- GitLab Ireland Ltd [Payroll Calendar]()
- For all PEOs and iiPay Contractors, the payroll cut off date is 8th of each month.
    - CXC (Poland, Turkey, Israel, Ukraine, Russia, Romania, Portugal, Greece) [Payroll Calendar](https://docs.google.com/spreadsheets/d/18cPImcwNM4muYxJj-NHQ6YwPrxG45AmDn7GZ1t-N1rI/edit#gid=114243454)
    -  SafeGuard ([S. Korea, France](hhttps://docs.google.com/spreadsheets/d/1-Kj8RqhrRbbYK00DbWLkZh42wxXpoqqDLZWjFHi-erY/edit#gid=775664482),[Brazil](https://docs.google.com/spreadsheets/d/1-Kj8RqhrRbbYK00DbWLkZh42wxXpoqqDLZWjFHi-erY/edit#gid=1366369546), [Italy](https://docs.google.com/spreadsheets/d/1-Kj8RqhrRbbYK00DbWLkZh42wxXpoqqDLZWjFHi-erY/edit#gid=2113229619), [South Africa](https://docs.google.com/spreadsheets/d/1-Kj8RqhrRbbYK00DbWLkZh42wxXpoqqDLZWjFHi-erY/edit#gid=818494923), [Spain](https://docs.google.com/spreadsheets/d/1-Kj8RqhrRbbYK00DbWLkZh42wxXpoqqDLZWjFHi-erY/edit#gid=2086701953), [Switzerland](https://docs.google.com/spreadsheets/d/1-Kj8RqhrRbbYK00DbWLkZh42wxXpoqqDLZWjFHi-erY/edit#gid=1979351390)) Payroll Calendar
    - Remote.com
    - Global Upside

## Performance Indicators

### Payroll accuracy for each check date = 100%
Payroll is paid on time and accurately for each check date.

### Payroll journal entry reports submitted to Accounting <= Payroll date + 2 business days
Payroll journal entry reports are to be submitted to Accounting GL team:
- Non-US legal entities (except for Canada)- four calendar days before the check date
- US and Canada - two calendar days before the check date

The payroll journal entry reports submitted dates are tracked in the Monthly Closing Checklist on a monthly basis.
