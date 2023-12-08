---
title: "The GitLab Tax Team"
description: "The tax department is responsible for GitLab’s overall tax strategy including all components of tax compliance, tax planning and accounting for income taxes. In addition, the tax department manages GitLab's statutory requirements including statutory audits, filing of entity-level financial information, transfer pricing, and ensuring intercompany transactions are recorded appropriately."
---

## Contacting the Tax Team

The Tax Team is responsible for GitLab’s tax compliance (see here for payroll taxes), tax planning and accounting for business taxes, including income taxes and indirect taxes such as sales taxes and value-added taxes (VAT). Taxation differs between countries, and taxation in one country is not always complementary to taxation in another country, resulting in possible double-taxation on the same GitLab revenue. It is the fundamental goal of the Tax Team to minimize double taxation, to optimize our global effective tax rate, and to timely apply resources to various company needs. Those needs range from routine compliance and tax audits to strategically positioning the company for its next phase of growth.

## Organization

The Tax team is part of the Finance function and headed by the VP Tax. The VP Tax reports to the Chief Financial Officer. The Tax team is structured to address (a) U.S. domestic taxes and global accounting for business taxes and (b) international tax planning and compliance, including US international tax planning.

## Responsibility

The scope of the Tax Function includes, but is not limited to continuous evaluation of i) effectiveness of GitLab’s tax planning, ii) GitLab's tax risk management and iii) GitLab's tax-related SOX controls. In exercising its activities the responsibilities of the Tax team can be described as follows:

- Establishing GitLab’s international tax strategy and corporate structure.
- Maintaining GitLab’s transfer pricing policy, taking into account US regulations and OECD standards.
- Managing PE risks in accordance with US regulations and OECD standards.
- Supporting mergers, acquisitions and other corporate restructuring.
- Overseeing the business tax returns in all operational jurisdictions.
- Overseeing the completion of national and/local state income tax returns including all related analysis and support.
- Overseeing the VAT, Sales, Use and Property tax functions.
- Managing audits of international, federal, state and local business tax-related filings.
- Overseeing the accounting for income taxes (ASC 740) in the US and International subsidiaries.
- Overseeing the accounting for income taxes for international subsidiaries with third party vendors.
- Ensuring that appropriate internal controls are in place over accounting for income taxes.
- Liaising with IT staff on all technical matters relating to tax applications.
- Ensuring the Company implements and maintains controls compliant with Sarbanes-Oxley.

### Tax Procedure for Compliance with Transfer Pricing

One of the consequences of GitLab's global footprint is that inter-company transactions are conducted between GitLab entities. International transfer pricing standards and US regulations require that inter-company transactions are priced at arm’s length. “At arm's length” means that GitLab's companies should agree on terms and conditions of these services that independent enterprises would also apply (i.e. pay for use of services, goods or intangibles). Inter-company transactions (not necessarily those executed at GitLab) can be grouped into four categories:

1. Tangibles: e.g. finished goods, raw materials, fixed assets;
1. Intangibles: e.g. IP, patents, know-how, trademark, trade name;
1. Financing: e.g. loans, guarantees
1. Services: e.g. management, research & development, general & administration, distribution, sales & marketing

### Tax Procedure for Reporting Indirect Taxes to Tax Authorities

GitLab's entities are subject to statutory reporting requirements of indirect tax in their home countries (i.e. GST and VAT).

### USA Territory

In the USA the filing of Sales & Use Tax returns is managed via Avalara software. Avalara AvaTax calculates sales and use tax for transactions, invoices, and other activities registered on Zuora. State returns are filed by Avalara. Quarterly analysis is performed to check taxable nexus in each state (e.g. depending on the state, nexus arises economically by volume of transactions, or physically by employees being resident of that state or sales representatives traveling through that state).


### Canada Territory

GitLab Inc. is registered as non-resident for GST/HST, PST, and QST purposes. As such Avalara AvaTax calculates sales and use tax for transactions, invoices, and other activities registered on Zuora.

### International Territory

All non-US entities are supported by local tax consultants to prepare and file indirect tax returns. The procedure for filing the statutory indirect tax returns is as follows:

1. Calculate VAT on Sales
  - Tax Accountant pulls the transactions from Avalara
  - The report from Avalara generates the taxable sales
  - The report from Avalara generates the VAT/GST on Sales amount
1. Calculate VAT on purchases
  - Tax Accountant exports VAT on Purchases ledger from [Netsuite](https://system.netsuite.com/pages/customerlogin.jsp)
  - Tax Accountant requests copies of all invoices relating to purchase transactions with the Accounting team
1. Tax Accountant shares reports and documentation from steps 1 and 2 above with tax consultant
1. Tax consultant drafts VAT return
1. Draft VAT return is reviewed by Tax Accountant
1. Tax Accountant approves or rejects draft
1. Rejection > start with step 4 // Approval > Senior Manager, Tax gives final approval for submission
1. Tax consultant files VAT return
1. Tax consultant provides copy of VAT return filed to Tax Accountant
1. Tax consultant informs VAT payable amount to Tax Accountant
1. Tax Accountant informs AP team to lodge payment into banking system
1. Standard approval flow for payment is adhered to
1. Upon approval the VAT due is wire-transferred or auto-debited to the Tax Authorities

## Tax Procedure for Reporting Taxable Gains on Option Exercises

1. Options are exercised by following this [procedure](/handbook/stock-options/#exercising-your-options)
1. CFO provides options exercise file on monthly basis to Payroll & Payments Lead
1. Payroll & Payments Lead ensures wage tax compliance for employees per country as defined in the table below
1. Employee receives gain from exercise according to the common monthly salary payment procedure

Access this [page](/handbook/tax/stock-options/) for a country-by-country tax analysis when exercising GitLab stock options.

## Tax Procedure for International Corporate Income Taxes to Tax Authorities

All GitLab entities have engaged tax consultants in their country of establishment that prepare and file Corporate Income Tax returns.

The procedure for filing the statutory corporate direct tax returns is as follows:

1. Data request from the Tax Consultant to the Tax Team
1. International Tax Manager and Tax Accountant follow up on data request and provides data to Tax Consultant
1. Tax Consultant prepares Corporate Income Tax Return
1. Draft Corporate Income Tax Return sent by Tax Consultant to International Tax Manager
1. International Tax Manager reviews Corporate Income Tax Return and informs Director of International Tax
1. Director of International Tax reviews Corporate Income Tax Return and upon approval requests approval from VP, Tax
1. Upon approval by the VP, Tax the International Tax Manager confirms the Tax Consultant to file Corporate Income Tax Return with the local Tax Authorities
1. Tax Consultant files Corporate Income Tax Return with the local Tax Authorities

## Tax Procedure for Adding a New Tax Location (all actions on Tax Accountant)

Open an issue in the tax team VAT/GST epic, with the below information:

- Description of the new tax location.
- What triggered the tax to be collected.
- Billing entity (current or new).
- Review local invoice requirements (coordinate with Finance Systems Administrators any required changes) and add to the invoice templates repository.
- Provide the deadlines for the Avalara start date.
- Will there be any fillings related to the tax? If yes, provide the schedule.
- Tag the Tax, Billing and Sales teams.
- Confirm in the issue, by Avalara due date, that tax collection has started.
- Share the issue in the #tax, #finance and #sales-support Slack channels.


## Tax Procedure for Making US Corporate Tax Payments

Open an issue in the tax team CIT Estimates/Prepayments epic, with the below information:

- Tax preparer uploads calculation for quarterly/annual/other corporate tax payments for Tax Director and VP, Tax reviews and approvals;
- After approvals, tax preparer will initiate US corporate tax payments, print payment confirmations and send to A/P team for backup;
- When making corporate tax payments to any tax authorities for the first time, AP will enter the bank account/routing numbers and save the information at each respective tax payment portal for tax preparer to use for future payments. The Tax Accountant will confirm whether such payment results in a requirement that any subsequent payments be remitted electronically;
- AP team will book the appropriate journal entries in Netsuite and reconcile the payment confirmations with the bank withdrawals to ensure the bank account, payee and withdrawn amount are correct.


## Withholding Tax Management

The payment for the use of GitLab's software can be subject to withholding tax. Paragraph 6.7 of GitLab's standard terms and conditions prescribe that the customer will pay any required withholding itself and will not reduce the amount paid to GitLab on account thereof.

Fees under this Agreement are exclusive of any and all taxes or duties, now or hereafter imposed by any governmental authority, including, but not limited to any national, state or provincial tax, sales tax, value-added tax, property and similar taxes, if any. Fees under this agreement shall be paid without any withholding or deduction. In the case of any deduction or withholding requirements, Customer will pay any required withholding itself and will not reduce the amount to be paid to GitLab on account thereof.


## Indirect Taxes Management

The payment for the use of GitLab's software can be subject to any indirect taxes, taking into consideration the local indirect tax requirements. Please be aware that GitLab might charge any related indirect taxes, without prior notice, as a consequence of a required tax registration obligation for GitLab. Based on the local regulations, output indirect taxes charged by GitLab are generally claimable as input tax on the customer’s indirect tax return.
