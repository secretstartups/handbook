---
layout: handbook-page-toc
title: "Regulatory"

---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}




## 1. Sales Tax/ Value Added Tax/ Goods and Service Tax

[Link to Flowchart](https://docs.google.com/presentation/d/1hWrxQb6d0QwdTCh-mGUiST0OEmsfM3G3UaQ5hs51E1Q/edit)

**Responsibility:**  Director of Tax 

**Application used:**  Avalara, Zuora and NetSuite

Tax on all sales is charged at the time of invoicing to customers. Based on the tax code updated for the product in the price master (refer Quote to Cash – Price master management process for detailed procedure) and the billing entity, the applicable tax rate is determined and charged in the invoice. 

The tax rates are determined at the time of invoicing through the Avalara software. 
***Controls being implemented: REG.C.02***
    
* The product and billing entity details are auto-interfaced (on a real time basis) from Zuora to Avalara during invoicing. 
* Based on the tax code of the product and the billing entity, the tax rate applicable is determined in Avalara and auto-interfaced to Zuora (on a real time basis).

Based on the tax rate determined, the tax applicable on the sale is automatically charged in the invoice.**(REG.C.01)**

Accounting for tax liability is done as part of invoice accounting process (refer Quote to Cash – Invoicing process and process for Accounting of transactions in NetSuite for detailed procedure).

**[Sample](https://docs.google.com/document/d/1k92GPFJRT9AQuboyx8j5KF4OQPCv2lu8auhaqN8zsMY/edit) tax calculation in Avalara**

**[Sample](https://docs.google.com/document/d/1-b1gpNbDeCvZl-BrabXv_b535JnBA5PDAOVZcRlg3BE/edit) tax invoice generated in Avalara**

**[Sample](https://docs.google.com/document/d/12afXaUKbYDKu4ryUMDGWD0OPmbULBkmdt-dONkNY62c/edit) tax invoice generated in Zuora** 

<br>

**1.1. Sales tax for US entity (GitLab Inc.)**


**1.1.1.   Filing of returns**

The compliance requirements for sales tax in the US for various states are defined in the Avalara software. 

The details of sales made and corresponding tax charged at the time of invoicing are auto interfaced from Zuora to Avalara on a real-time basis.

Based on the sale details updated, the tax returns are automatically filed on the due dates through the Avalara software.

The Director of Tax reviews and [approves](https://docs.google.com/document/d/174qsBRGTSvsHvCy32wHr23OrZscJ1O_O7xE-Wxga3Bk/edit) via Avalara, the draft return prepared by Avalara for correctness of tax liability ascertained before filing. Purchase tax is manually calculated for US entities.**(REG.C.03)**



<br>

**1.1.2. Payment of tax**

The tax liability due is remitted by Avalara to the tax authority and auto-deducted from Gitlab’s bank account.
***Controls being implemented: REG.C.05***


**Account the tax payment as a journal in NetSuite.** 

The following is the entry posted in NetSuite:
Dr. 2227 Sales tax payable 
Cr. Bank account (Bank account from which payment is made)


[Organisation structure](https://docs.google.com/document/d/1Rshh5oWKYWwGre1i8hE3FxWgh9eQmb67WWwBq2L40eY/edit) updated in Avalara 

[Return filing calendars ](https://docs.google.com/document/d/1CYP60TfcUpGE5o0kmG_OGBKonjrD19oDjlE3dboY44M/edit)updated in Avalara

<br>

**1.2.  Value Added tax/ Goods and Service tax for non-US entities**

Tax returns for non-US entities are filed by third party consultants based on sales and purchase tax details provided by Gitlab. Sales tax details are generated from Avalara and purchase tax details are generated from NetSuite.<br>


**1.2.1.  Generating sales tax report from Avalara**

* Select “[Tax return reports](https://docs.google.com/document/d/1Gi63cZ-NseJSuM342w6wZacPuhELH--c-NMsSL1wiDc/edit)” under Reports section in Avalara.

* Select the [reporting entity](https://docs.google.com/document/d/1mI-WB96GBHIAOUfGu-JJYyCR_Cu56zdCVTl4QxC_MeI/edit) for which Tax return report has to be generated.

* Select “[Sales and Sellers Use Summary](https://docs.google.com/document/d/1QjfYd8xC34qz-_dq6Q4YtUL-ihAB3yy3Mq1Mjri5V9w/edit)” and select “Generate”.

* [Sales Tax report](https://docs.google.com/document/d/1TZtVhmtSqZarxw3esCNS4NofzL0EbCz3irSD4QOIs7A/edit) for the entity gets generated. 

* Select “Save” and select– “Excel 2003” to export it as an [MS-Excel report](https://docs.google.com/document/d/1taNPyLzDsIR4fsB18GX9wdpeWK1IgTTzJV7aUHEE0y8/edit).

* Summarize the report to reflect Invoice-wise Sales tax amount. 

* The sale value and tax liability is updated in US dollars in the report generated.  

* [Convert](https://docs.google.com/document/d/1mS1SRoU43Q0De2WrjuwuQlB5xcuRMx38nPVUQPd46LY/edit) the sale value and tax liability to the local currency based on the conversion rates applicable on the invoicing date.

<br>

**1.2.2.  Generating purchase tax report from NetSuite**

* In NetSuite, under Reports, select “Financial’ and then select “Trial balance”.

* Search the Purchase VAT ledger and click on the ledger balance amount to view the list of transactions in the ledger.

* Select the Export to Excel icon for generating an MS-Excel report.

* The purchase VAT ledger is downloaded as an Excel report.

<br>

**1.2.3.  Filing of returns**

* Share Sales tax / VAT report and Purchase tax / VAT report with the third-party tax consultant. 

* The consultant prepares a draft return, estimates the tax liability and shares the same (through email) with the Director - Corporate Controller. 

* Review and approve the computation of tax liability and the draft return.

* On approval of the draft return by the Director of Tax, the tax consultant files the return with the tax authorities.**(REG.C.04)**

<br>

**1.2.4.  Payment of tax**

* The tax liability is ascertained by the tax consultants and payment advise is shared with the Controller. Controller reviews the tax liability estimated and remits the liability to the tax authorities through a wire transfer on or before the due dates. The remittance is approved by CFO in banking portal as per the work flow configured.**(REG.C.06)**

* Account the tax payment as a journal in NetSuite. The following is the entry posted in NetSuite


**GitLab BV (Netherlands)**

Cr. Bank account (Bank account from which payment is made)<br>
Cr. 1109 VAT on Purchases (Purchase tax)<br>
Cr. 1112 Deductible VAT combined (Purchase tax)<br>
Cr. 1113 VAT on invoices from EU countries (Purchase tax)<br>
Cr. 1114 VAT on invoices from outside the EU (Purchase tax)<br>
Dr. 2260 VAT on sales (Sales tax)<br>


**GitLab Ltd (UK)**

Cr. Bank account (Bank account from which payment is made)<br>
Cr. 1250 VAT on Purchases - Gitlab Ltd (Purchase tax)<br>
Dr. 2260 VAT on sales (Sales tax)<br>

**GitLab GmbH (Germany)**

Cr. Bank account (Bank account from which payment is made)<br>
Cr. 1251 VAT on Purchases - Gitlab GmBH (Purchase tax)<br>
Dr. 2261 VAT on sales - GitLab GmbH (Sales tax)<br>


**GitLab Pty Ltd (Australia)**

Cr. Bank account (Bank account from which payment is made) <br>
Cr. 1115 GST paid (Purchase tax) <br>
Dr. 2280 GST Collected (Sales tax)


<br>


## 2. Corporate Income tax

[Link to Flowchart](https://docs.google.com/presentation/d/18mF9M6rdVzAs64Of3kaHPB8t7glyW9l1xWA_rt10OdA/edit#slide=id.g7a75959d13_0_0)

**Responsibility:**  Director of Tax

**Application used:**  NetSuite

**Compliance requirements for Corporate Income Tax**

|       Entity       |                           Filing Deadline                          |                                                       Final Payment Deadline                                                       |                                     Estimated Instalments Deadline                                     |
|:------------------|:------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------|
| GitLab, Inc.       | 15 April                                                           | By the 15th day of the 12th month of the tax year                                                                                  | Equal estimated installments due on the 15th day of the 4th, 6th, 9th, and 12th month of the tax year  |
| GitLab Federal LLC | 15 April                                                           | By the 15th day of the 12th month of the tax year                                                                                  | Equal estimated installments due on the 15th day of the 4th, 6th, 9th, and 12th month of the tax year  |
| GitLab Japan       | Within two months after the end of the company's accounting period | Within two months after the end of the company's accounting period                                                                 | Within two months after the end of the sixth month of the company's accounting period                  |
| GitLab BV          | Five months after the end of the company's fiscal year             | Within two months of the date of the assessment notice                                                                             | Not applicable                                                                                         |
| GitLab IT BV       | Five months after the end of the company's fiscal year             | Within two months of the date of the assessment notice                                                                             | Not applicable                                                                                         |
| GitLab GmbH        | 31 July                                                            | Stated on the assessment notice                                                                                                    | Quarterly installments due on the tenth day of March, June, September, and December                    |
| GitLab Ltd         | 31 January                                                         | Depends on profitability; E.g. when annual taxable profit exceeds 1.5m GBP, Ltd is required to make quarterly installment payments | Quarterlyinstallmentss due on the tenth day of March, June, September, and December                    |
| GitLab Pty Ltd     | 15th day of the 7th month following the end of the income year     | 1st day of the 6th month following the end of the income year                                                                      | Monthly or quarterly                                                                                   |
| GitLab Canada      | Six months after the end of the fiscal year                        | Two months after the end of the fiscal year                                                                                        | Monthly                                                                                                |
| GitLab South Korea | Within three months after the end of the fiscal year               | Along with the filing of the return                                                                                                | Not applicable                                                                                         |

<br>

**2.1.  Filing of Corporate Income tax US and Non-US**

The filing of returns for Corporate Income tax for all entities is carried out by third-party consultants, based on the data provided by the  Accounting and External Reporting Manager.

The tax consultants prepare a draft return based on the information provided and share the draft with the International Tax Manager for review.

The return is reviewed by the Manager, International Tax. 

The draft is then approved by the Director of Tax and CFO.**(REG.C.07)**

The draft approved by the Director of Tax and CFO is then filed by the tax consultant with the local tax authorities.

<br>

**2.2. Payment of Corporate Income tax**

The payment of income taxes is made based on the tax liability assessed by the consultants. In case of some entities (refer process guidelines section for details), payment is to be made based on the assessment made by the tax authorities.

<br>

**2.2.1. Payment process for US entity**

Payment of corporate income tax for the US entity is made through the EFTPS portal. The tax liability assessed by the consultants is filed in the EFTPS portal as an estimate form.

* In the [EFTPS portal](https://docs.google.com/document/d/11fcNw3YG8ppOZbqQfBMC9YkpGQkFFixlEZmaVnoTjdo/edit), under payments section, select “1120 – CIT return”

* Enter tax form number[](https://docs.google.com/document/d/1cHdHr_gOEO8_gzDun07NswHP7eAUVSzIZ798XXQ21J4/edit) and select “Next”. This is the reference number for the estimate form filed by the consultant.

* Select the [tax type](https://docs.google.com/document/d/1ulOB48Wyk6KlgDolADF1DlKGhtPrEKCmdiO4ZbcW8XU/edit) and select “Next”

* [Update](https://docs.google.com/document/d/1zqQc4ZHlemBGRrLSOxFcH8-AgpLTXTVt5RvSUCIa9B4/edit) the payment amount, tax period, settlement date and bank account details and select “Next”. 

* Review the details of the payment based on the estimate and select “[Make Payment](https://docs.google.com/document/d/106c1S3bxIlGQl7Zcrq5UkuwduW85EBRZWdgy7vLZ6Ac/edit)”. Based on the bank account details updated, the tax liability as per form submitted will be auto-debited from the bank account.
 
* [Acknowledgment](https://docs.google.com/document/d/1BhxDOTq05Y2xfOj7gcory5Htyq00yw6BC3BFwNp974g/edit) is generated for confirmation of payment made.

* Account the tax payment as a journal in NetSuite. The following is the entry posted in NetSuite:
  DR Income Tax Liability
  DR Prepaid Income tax (for advance payments)
  CR Bank Account<br>

<br>

**2.2.2. Payment process for non-US entities**

* Pay the applicable tax liability to the tax authority by making a wire transfer.

* GitLab Director - Corporate Controller puts the payment into the banking system.

* CFO approves payment in the banking system.**(REG.C.08)**

* Account the tax payment as a journal in NetSuite. The following is the entry posted in NetSuite:
  DR Income Tax Liability
  DR Prepaid Income tax (for advance payments)
  CR Bank Account



<br>

## 3.  Wage tax

[Link to Flowchart](https://docs.google.com/presentation/d/1WwxG7eJ_akSsFpOvXnWFNOeONmWuN_cm8yH3D9FiKj8/edit#slide=id.g7a75eda02c_0_0)

**Responsibility:**  Senior Manager, Global Payroll and Payments and Senior Accounting Manager 

**Application used:**  ADP


<br>

**3.1. Wage tax for US**

The compliance requirements for wage tax in US are monitored by ADP (payroll processing service provider) through the ADP application.

Based on the salary details of employees updated in ADP application, the wage tax liability for each employee is ascertained and updated in the payroll report generated.

*  Senior Manager, Global Payroll and Payments: Review and approve the liability ascertained before processing payroll.**(REG.C.09)**

The returns for wage tax are filed with the tax authorities on the due dates by ADP based on the liability ascertained during payroll processing. ***Controls being implemented: REG.C.11***

The tax liability is remitted to the tax authorities by ADP and auto-debited from Gitlab’s bank account. ***Controls being implemented: REG.C.13***

* Senior Accounting Manager: Account the tax payment as a journal in NetSuite. The following is the entry posted in NetSuite.

  DR Wage tax due <br>
  CR Bank Account (bank account through which payment is made)

<br>

**3.2. Wage tax for Non-US locations**

The compliance requirements for wage tax for non-US locations are monitored by payroll processing service providers. 

**REG.C.10**

Based on the salary details of employees, , the payroll service providers ascertain the wage tax liability for each employee and updates in the payroll report.The Payroll report is reviewed by the Payroll Specialist, and then by the Senior Manager, Global Payroll and Payments. The Senior Manager, Global Payroll and Payments reviewes all payments for accuracy before submitting approval for that payroll to the provider.

Based on the salary details of employees considered for payroll, the payroll service providers file the wage tax returns with the tax authorities on the due dates.

* Senior Manager, Global Payroll and Payments reviews whether the tax returns are correctly filed on or before the due dates.**REG.C.12**

* The tax liability remittance is made as follows:
  * UK – Tax liability is auto debited from Gitlab’s bank account based on the returns filed. ***Controls being implemented: REG.C.14***
  * Germany and Netherlands – Director - Corporate Controller: Pay the tax liability by making a wire transfer to the tax authority.**(REG.C.15)**<br> 
  * Belgium – Payroll service provider remits the tax to the tax authorities. The liability remitted is charged to Gitlab as part of the monthly payroll bill. The Senior Manager, Global Payroll and Payments reviews whether the tax remittances are correctly made on or before the due dates.**(REG.C.16)**
<br>

* Finance team: Account the tax payment as a journal in Net Suite. The following is the entry posted in Net Suite.

  Dr Wage tax due<br>
  Cr Bank account (Bank account from which payment is made)

<br>

**3.3. Tax on stock options**

When stock options are exercised by employees, the tax (wage tax) applicable on the transaction (based on the country), is deducted from payroll. (refer Process Guidelines section for detailed guidelines on taxation).

* Senior Manager, Accounting and External Reporting: Provide details of options exercised during the month to Senior Manager, Global Payroll and Payments. 

* Senior Manager, Global Payroll and Payments: Ascertain the applicable wage tax on stock option exercised (this may be done based on advice from third party tax consultants).

* Senior Manager, Global Payroll and Payments: Include the wage tax on tax options in the payroll report for the employee.**(REG.C.17)**


**Compliance requirements for Tax on stock options**

| Country        | Description                                                                                                                                                                             |
|----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| United States  | If ISO reporting is handled through filing of Form 3921 as part of year end filing                                                                                                      |
| United Kingdom | Difference between fair market value and exercise price is taxed at the date of exercise if there is a liquid market for the stock at time of exercise.                                 |
| Netherlands    | Difference between fair market value and exercise price is taxed at the date of exercise.                                                                                               |
| Australia      | Difference between fair market value and exercise price is taxed at the date of exercise.                                                                                               |
| Germany        | Difference between fair market value and exercise price is taxed at the date of exercise.                                                                                               |
| Belgium        | Difference between offer price and exercise price is taxed at the date of exercise.<br>Percentage of the Fair Market Value on the offer date; which is generally 23% is Taxed at Grant. |
| Canada         | Difference between offer price and exercise price is taxed at the date of exercise.                                                                                                     |

The payment of wage tax and filing of returns is done as per sub processes 3.1 Wage tax for US and 3.2 Wage tax for Non-US locations.




