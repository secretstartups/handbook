---
layout: handbook-page-toc
title: "Deal Desk"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## **Welcome to The Deal Desk Handbook** 

The Deal Desk team's mission is to streamline the opportunity management process while acting as a trusted business partner for field sales. We are the first point of contact for sales support.

### Key Focus Areas
    
*  Sales Support
*  Quote Configuration
*  Month End / Quarter End Reconciliation

### Helpful Links

*   **Salesforce Reports and Dashboards**
    *   [Current Quarter WW Sales Dashboard](https://gitlab.my.salesforce.com/01Z4M0000007H7W)
    *   [Monthly Bookings Report](https://gitlab.my.salesforce.com/00O61000004Ik27)
    *   [Deal Desk Pending Opportunity Approvals Report](https://gitlab.my.salesforce.com/00O4M000004e0Dp)

*   **Frequently Used Handbook Pages**
    *   [Sales Order Processing](/handbook/business-ops/order-processing/)
    *   [Deal Desk Opportunity Approval Process](/handbook/business-ops/order-processing/#submitting-an-opportunity-for-deal-desk-approval)
    *   [Useful Company Information](https://gitlab.com/gitlab-com/finance/wikis/company-information)
    *   [Account Ownership Rules of Engagement](/handbook/business-ops/resources/#account-ownership-rules-of-engagement)
    *   [IACV Calculation Guide](/handbook/sales/#incremental-annual-contract-value-iacv)
    *   [Vendor Setup Form Process](/handbook/business-ops/order-processing/#how-to-process-customer-requested-vendor-setup-forms)
    *   [Security Questionnaire Process](/handbook/engineering/security/#process)
    *   [Troubleshooting: True Ups, Licenses + EULAS](/handbook/business-ops/business_systems/portal/troubleshooting/)
    *   [Licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/)
    *   [Legal Authorization Matrix](/handbook/finance/authorization-matrix/)
    *   [Trade Compliance (Export/Import)](/handbook/business-ops/order-processing/#trade-compliance-export--import-and-visual-compliance-tool-in-salesforce)

*   **Other Resources**
    *   [Sales Territory Spreadsheet](https://docs.google.com/spreadsheets/d/1PYU8oQJQEPpi8K-SHuqSgPeSpLcWeSQd9FuwKtgD048/edit?ts=5d6ea274#gid=0)
    *   [Quote Approval Matrix](https://docs.google.com/document/d/1-CH-uH_zr0qaVaV1QbmVZ1rF669DsaUeq9w-q1QiKPE/edit?ts=5d6ea430#heading=h.ag75fqu12pf0)
    *   [Billing FAQs and Useful Tips](https://gitlab.com/gitlab-com/finance/-/wikis/Billing-Team-FAQs-&-Useful-Tips)
    *   [Sample Order Form (Blank)](https://drive.google.com/open?id=1NB5KH7U4cucjiOjUdZrq94mYGzH6jG4f)

### **Sales Support**

#### Deal Desk SLA 

The Deal Desk team will do their best to respond to each request within 4 hours. Revenue generating, current quarter requests will take priority, especially during Month & Quarter End. If a task is not resolved within 24 hours it will be escalated (if necessary). 

| Type of Request | First Response | Resolution |
|----- | ----- | ------| 
| Basic Quote Assistance | 6 Hours | 8 Hours | 
| Ramp Deal | 6 Hours | 24 hours |
| Flat Renewal | 6 Hours | 24 Hours |
| IACV Calculation | 6 Hours | 24 Hours |
| Contract Reset / Co-Term | 6 Hours | 24 Hours | 
| RFP/Vendor Forms | 6 Hours | Dependent on AM |

#### Deal Desk - A Global Presence

The Deal Desk team is located around the world and will be available during standard business hours within most regions - typically 9:00am - 6:00pm for the local time of the team member, as outlined below. 

**EMEA**
*  Marcsi Szucs - Budapest, Hungary
*  Donatela Cekada - Dublin, Ireland

 **AMER**
*  Jesse Rabbits - New York, NY 
*  Ashley Potter - New York, NY 
*  Cal Baker - Seattle, WA

**APAC**
*  Kriti D'Souza - Pune, India 

#### Salesforce Chatter Communication

Deal Desk's primary communication channel is Salesforce Chatter. When you chatter `@Sales-Support`, it will automatically create a case in the Deal Desk queue. Deal Desk team members monitor the queue throughout the day and will respond to a case within 6 hours, Monday-Friday, with the exception of National/Regional holidays. Resolution or escalation will occur within 24 hours. 

To Chatter the DD team, tag `@Sales-Support`in Chatter on the related opportunity or account page and a short sentence on your request. If the Deal Desk team needs more information, we will follow up directly via Chatter.

**Please avoid tagging Deal Desk team members directly in chatter**, instead use @Sales-Support to ensure coverage in case the DD team member who replied first is unavailable. If someone is working on a case, they will continue to support until the case is closed.  If an issue has been resolved, please chatter @Sales-Support to reopen a case.

#### Slack Communication

#### Primary Slack Channel

Use our Slack channel in case of general, non-record related requests and/or urgent questions: 
**#sales-support** [If the request is related to a quote, opportunity, or acccount - please chatter on the page in Salesforce instead of the Slack channel.] 

#### Slack Best Practices

Please avoid contacting the DD team members directly via Slack. Utlizing the channel is best to ensure timely coverage and helps others who may have similar questions.

In case of a specific opportunity or quote related question please use SF Chatter (see section [Salesforce Chatter Communication](#salesforce-chatter-communication))

#### Slack Announcements

Desk Desk process updates and announcements will be communicated via **#sales** and **#sales-support** Slack channels. 


#### Deal Desk Office Hours

Weekly Deal Desk Office Hours are scheduled each Wednesday at 12 PM EST. During Month End, Office Hours will take place on Monday, Wednesday, and Friday, scheduled in both AMER and EMEA time zones. Calendar invites will be sent to Sales-All Distribution group. Priority will be given to opportunities closing within the quarter. 

Supported topics include:
* Create or modifying a quote
* Quote approval acceleration
* IACV calculation
* Submitting an opportunity for close
* Validation/segmentation of closed opportunities
* And anything else to help drive opportunities closing within the quarter!


#### Merging Accounts and Contacts

##### How to Determine if an Account is a Duplicate

1. Review DataFox / domain name - At minimum, the domain name should be a match on both accounts. You can also review Billing and Ship to addresses to confirm if it’s a duplicate. 

1. Open tabs of the accounts you want to merge. You can merge up to 3 accounts at a time. 
1. Not required, but helpful. Change the Name of both accounts to something that you can find easily. 

    Example - You need to merge CustomerCentral with Customer Central 
    Add 'Merge' to the end of the Account to be merged
    Account 1: CustomerCentral MERGE
    Account 2: Customer Central 
	 

1. Click on the Accounts tab in Salesforce. 
1. Scroll down, in the bottom right hand corner of the page, click “Merge Accounts” 
1. Search the name of the Accounts you want to merge - following the example above - in the search bar type xCustomer
1. Select the checkbox on the left of each account to merge, click Next. 
1. Review this section carefully. It’s best practice to keep the most accurate information when you merge accounts. You will be able to select one record to move the information into. 

1. On the top of the Merge Page you can Select which account URL you want to keep. If there is an existing Billing account/Subscription on the account it should be the master account! 
1. Once you have reviewed the information, click “Merge”. 

##### How to Update Opportunity IDs in Zuora

After an account is merged it is important to update the Zuora Billing account Opp ID. If this is not updated, Zuora cannot sync existing billing or subscription information to new quotes. 

1. Go to Zuora, under the Customers tab, search the account name - 
1. Click on the accounts that were merged 
1. Ensure that the CRM Account ID shows a hyperlinked account name with a green check mark. 
1. If it shows a Yellow exclamation mark, go to the primary account that is left from the merge. Copy the last 15 characters in the account page URL and paste into the CRM Account ID field in Zuora. Click Save. 

If Zuora successfully maps to the correct account, a green check box will appear.


##### Merging Contacts 

**NOTE** To merge a Lead with an existing contact, click "Convert Lead" - this is the SDR/Account Owner responsiblity, not Deal Desk. 

1. Go to the Account page in Salesforce. 
    * Note, both contacts must be under the same Salesforce account in order to be merged. If they are not under the same account, change the account on the Contact level to the correct one. 
1. Navigate to the contacts section on the Account, click Merge Contacts. 
1. Select the contacts you need to merge (you can select 3 records at a time) 
1. Best practice - confirm that the email address is a duplicate before merging. 

##### Yikes, I merged something that I was definitely not supposed to! HALP. 

Never fear! Deal desk is here! All merged records go to the recycle bin, chatter at sales-support for assistance. The record will be retrievable from the recycle bin for 2 weeks before it’s permanently deleted. Dun, dun, dun. 


### IACV + Renewals

#### Calculating IACV 

To calculate IACV, please review the [IACV page of the handbook](/handbook/sales/#incremental-annual-contract-value-iacv). Alternatively, please chatter @Sales-support on the opportunity for assistance in calculating IACV. 

You can also use [this calculator](https://docs.google.com/spreadsheets/d/10hX1ZwTuxa-5PyJr30rTlATClzXmc8i0OunW1u-2D2I/edit#gid=0) to **estimate** the IACV for renewals.

#### Flat Renewal Support

**Please note that Flat Renewal Support has been decommissioned due to sever under utilization and inefficiencies in the process. To create a Flat Renewal quote, please review the Quote Configuration Guide below.

### Duplicate Opportunity Management - Web Direct Purchase vs. Sales Accepted Opportunity

To ensure SDRs receive proper credit for purchases made via the web portal, but which relate to active sales accepted opportunities, Deal Desk will follow the below processes:

##### If the Opportunity Close Date is in the current month:

*  Open both the web direct and sales accepted opportunities.
*  Copy the following fields from the web direct opportunity to the sales accepted opportunity:
    * A. Close Date
    * B. Start Date
    * C. End Date
    * D. Opportunity Term
    * E. Amount
    * F. Renewal Amount
    * G. Renewal ACV
    * H. Web Portal Purchase = Yes
    * I. Invoice Date
    * J. Invoice Status
    * K. Invoice Entity
    * L. Invoice Number
*  On the sales accepted opportunity, ensure the above fields are updated, and save. Change stage to Closed Won, save. Ensure Close Date reflects Close Date on web direct opportunity.
*  On the web direct opportunity, change the stage to Duplicate. Delete Sales Accepted Date and Sales Qualified Date. Enter name of sales accepted opportunity in the Duplicate Opportunity field. Save.

##### If the Opportunity Close Date is in a previous month:

*  Open both the web direct and sales accepted opportunities.
*  Clone the web direct opportunity.
    * On the cloned web direct, change the close date to today. 
    * Change the opportunity name to add "Internal Refund" to the title.
    * Change the amount (and renewal amount/renewal acv) to the negative value. 
    * Ensure stage is Closed Won.
    * The "Refund Opp Source" field should read "From Finance"
    * Save, and (1) ensure the negative values saved as negative, as these should be perfect opposites of the numbers on the web direct opportunity. 
    * (2) Ensure the owner of the cloned web direct opportunity is the same owner as the original web direct opportunity.
*  Copy the following fields from the original web direct opportunity to the sales accepted opportunity:
    * A. Close Date (should be the same date as the cloned web direct opportunity)
    * B. Start Date
    * C. End Date
    * D. Opportunity Term
    * E. Amount
    * F. Renewal Amount
    * G. Renewal ACV
    * H. Web Portal Purchase = Yes
    * I. Invoice Date
    * J. Invoice Status
    * K. Invoice Entity
    * L. Invoice Number
* On the sales accepted opportunity, ensure the above fields are updated, and save. Change stage to Closed Won, save. Ensure Close Date reflects Close Date on cloned web direct opportunity (today's date).


### **Zuora Quote Configuration Guide - Standard Quotes**

The following is intended as a step by step guide for opportunity owners or SDR's to learn how to create standard quotes for new subscriptions, amendments, and renewal opportunities. 

#### New Subscription Quote

Follow this step by step guide for creating a **New Subscription** quote. Use a New Subscription quote when the customer is purchasing a brand new subscription **OR** if the customer is **renewing** for a term that is different from the original subscription (ex. original term 36 months, renewing for 12 months = new subscription quote). 

A.  Open the New Business opportunity and click the **“New Quote”** button.

B.  When prompted **select “New Subscription”** and click “Next.”

C.  Provide Quote, Account, and Subscription Term Details and click “Next.”
*   **Select “Sold To” and “Bill To” contacts.** Note that the “Sold To” contact will receive the EULA and/or license key via email. Note: Each contact record must have a complete address.
*   For **Reseller deals,** populate the “Invoice Owner” and “Invoice Owner Contact” fields.
    *   Ensure that the Invoice Owner Contact is connected to the correct reseller account - i.e. if the reseller is in Germany, the Invoice Owner Contact should also be based in Germany.
    *   Reseller deals require that **“Click-through EULA required?” be set to “Yes.”**
*   Populate **“Initial Term”** in months. (i.e. for a two-year deal, enter “24”)
*   If the customer or reseller is based in the EU, enter the “VAT ID” number.
*   If there is a **signed MSA** between the customer and GitLab, the **“Existing GitLab Agreement Effective Date” field** should be populated with the date of the MSA’s signature. In addition, select the **“EXISTING AGREEMENT”** quote template.
*   Note: Non-standard payment terms (Net 30 = standard) should be reflected on the quote object, and will require approval per the approval matrix.

D.  Select **“Add Base Products”** from the drop-down menu on the “Edit Products and Charges” page. Select the correct product and click Next.
*   Note: Choose the correct term length - i.e. a 2 year Premium deal should use “Premium - 2 Year”
E.  Enter the product quantity, and adjust the discount or effective price as needed. Click Submit.
F.  **Order Form Generation**
*   If no discounts or special terms are requested, click “Generate PDF.”
*   If the deal contains discounts that require approval, please submit the quote for approval using the button on the quote. The quote must be approved before the PDF can be generated.
    *   In the case of reseller deals, please obtain the approvals in Chatter based on the approval matrix.
*   **Order Form Manual Edits**
    *   Please note that Sales reps may only generate PDF versions of the Order Form. If you require special wording or other manual edits, please make the request by tagging @Sales-Support in chatter. 

**To supplement these steps, review the [THIS TRAINING VIDEO](https://youtu.be/XqQC65-vJws) to see each step live for a New Subscription quote.**

**Note:** If you cannot view the video, make sure you are logged in to GitLab Unfiltered. You can [learn more about how to log in or request access to GitLab Unfiltered here!](/handbook/marketing/marketing-operations/youtube/#unable-to-view-a-video-on-youtube) 


#### Amend Subscription Quote


This quote type should be used when new users are being added to an existing subscription. This includes both additional licenses to existing products, and true-ups. This also includes any scenario where the products are being changed during the term - i.e., an upgrade from Premium to Ultimate.

**A.  Add-On Quote Creation**
*   Open the New Business opportunity and click the **“New Quote”** button.
*   Select the **existing billing account**.
*   When prompted **select “Amend Existing Subscription for this Billing account**, and select the appropriate subscription. 
    *   Note: If there are multiple billing accounts or subscriptions available, and you are unable to determine which to choose, please ask @Sales-Support via Chatter.
*   Provide Quote, Account, and Subscription Term Details and click “Next.”
    *   The **Start Date** cannot be set before the subscription start date.
    *   The **End Date** will automatically be set to co-terminate with the existing subscription.
    *   The **Initial Term** should match the initial term of the New Business or Renewal subscription that precedes this quote. (i.e. if you’re amending the quote halfway through a 12 month term, the Initial Term should be 12, not 6.
    *   The **GitLab Entity** must be the same as it was on the initial deal you’re amending.
    *   For **Reseller deals,** populate the “Invoice Owner” and “Invoice Owner Contact” fields.
        *   Ensure that the Invoice Owner Contact is connected to the correct reseller account - i.e. if the reseller is in Germany, the Invoice Owner Contact should also be based in Germany.
        *   Reseller deals require that **“Click-through EULA required?” be set to “Yes.”**
    *   If the customer or reseller is based in the EU, enter the “VAT ID” number.
    *   If there is a **signed MSA** between the customer and GitLab, the **“Existing GitLab Agreement Effective Date”** field should be populated with the date of the MSA’s signature. In addition, select the **“EXISTING AGREEMENT”** quote template.
    *   Note: Non-standard payment terms (Net 30 = standard) should be reflected on the quote object, and will require approval per the approval matrix.
*   Under the **Edit Products and Charges** page, increase the existing license quantity to reach your total - i.e. enter the new total license count. This page will show all currently licensed products (marked “Original”), but the Order Form that generates will only show the added quantity and amount for the pro-rated period. **To add users to the existing subscription at a different price**, the new user licenses should be added on a separate product line. 
*   **True-Ups:** If you are quoting true-up users, click “Add Products” and wait for the next page to load. Then, click “Select” and choose “Add Add-On Products.” Select True-Up and click Next. Edit the quantity and effective price. Click “Submit.”
*   **Order Form Generation**
    *   If no discounts or special terms are requested, click “Generate PDF.”
    *   If the deal contains discounts that require approval, please submit the quote for approval using the button on the quote. The quote must be approved before the PDF can be generated.
        *   In the case of reseller deals, please obtain the approvals in Chatter based on the approval matrix.
    *   **Order Form Manual Edits**
        *   Please note that Sales reps may only generate PDF versions of the Order Form. If you require special wording or other manual edits, please make the request by tagging @Sales-Support in chatter.

**B.  Upgrade or Switch Products During the Subscription Term**
*   Create an “Amend Subscription” quote by following the steps in Section 2 (A) above.
    *   The **Start Date** should be the date of the product exchange. 
    *   On the **Edit Products and Charges** page, select “Add Products” and wait for the next page to load.
    *   Click “Select” and click “Add Base Products.”
    *   Select the **new** product type, and the correct SKU. Click Next.
    *   Select the **Remove** drop down button (which is not fully visible) next to the current product, which you are removing in lieu of the new product.
    *   Adjust the new product line - quantity, discount. Click “Submit.”
    *   Note: On the Order Form, the product being removed will display with a negative amount reflecting the credit for that product for the remainder of the subscription term.


**To supplement these steps, review [THIS TRAINING VIDEO](https://youtu.be/iTVbggacglo) to see each step live for an Amendment Quote:**

**Note:** If you cannot view the video, make sure you are logged in to GitLab Unfiltered. You can [learn more about how to log in or request access to GitLab Unfiltered here!](/handbook/marketing/marketing-operations/youtube/#unable-to-view-a-video-on-youtube) 


#### Renew Subscription Quote


**A.  Standard Renewal**
*   Open the Renewal opportunity and click the **“New Quote”** button.
*   Select the **existing billing account.**
*   When prompted **select “Renew Existing Subscription for this Billing account,** and select the appropriate subscription. 
    *   Note: If there are multiple billing accounts or subscriptions available, and you are unable to determine which to choose, please ask @Sales-Support via Chatter.
*   Provide Quote, Account, and Subscription Term Details and click “Next.”
    *   The **Start Date** cannot be edited. This will be the true renewal date.
    *   The **End Date** will automatically be determined by the Renewal Term.
    *   Populate **“Renewal Term”** in months. (i.e. for a two-year renewal, enter “24”)
    *   Select the proper **GitLab Entity.**
    *   For **Reseller** deals, populate the **“Invoice Owner”** and **“Invoice Owner Contact”** fields.
        *   Ensure that the Invoice Owner Contact is connected to the correct reseller account - i.e. if the reseller is in Germany, the Invoice Owner Contact should also be based in Germany.
        *   Reseller deals require that **“Click-through EULA required?” be set to “Yes.”**
    *   If the customer or reseller is based in the EU, enter the **“VAT ID”** number.
    *   If there is a **signed MSA** between the customer and GitLab, the **“Existing GitLab Agreement Effective Date”** field should be populated with the date of the MSA’s signature. In addition, select the **“EXISTING AGREEMENT” quote template.**
    *   Note: Non-standard payment terms (Net 30 = standard) should be reflected on the quote object, and will require approval per the approval matrix.
*   Click Next, to enter the Products and Charges page.
    *   Note: The product lines from the Initial Term are already listed and will be marked “Original.” You may add new products, update the quantity on the original license, or remove the existing license. To add users to an existing license at a different price, the new user licenses should be added on a new product line.

**B.  Renewal Using a New Subscription Quote**

Note: Certain renewals require a New Subscription quote. The most common scenario is if you are changing the term as of the renewal date - i.e. changing from an annual plan to a multi-year plan.

*   Open the Renewal opportunity and click the **“New Quote”** button.
*   Select the **existing billing account.**
*   When prompted **select “New Subscription for this Billing account,”** and select the appropriate subscription. 
    *   Note: If there are multiple billing accounts or subscriptions available, and you are unable to determine which to choose, please ask @Sales-Support via Chatter.
*   Fill out the necessary information on the quote per the instruction under the **New Subscription Quote** section above. 
    *   **Note: The Start Date must be the renewal date.** 
*   Click Next and update the products and fees per the steps above.

**To supplement these steps, review [THIS TRAINING VIDEO](https://youtu.be/kDZJW-ss5j4) to see each step live for an Renewal Quote:**

**Note:** If you cannot view the video, make sure you are logged in to GitLab Unfiltered. You can [learn more about how to log in or request access to GitLab Unfiltered here!](/handbook/marketing/marketing-operations/youtube/#unable-to-view-a-video-on-youtube) 


#### Co-Terming

Co-terming is when a customer wants to align two or more subscriptions with different end dates.

Example:

Customer has 2 subscriptions for Premium.

* Subscription 1 = 100 seats, expiring 2018-06-30
* Subscription 2 = 50 seats, expiring 2018-12-31

The most likely scenario is to co-term into the subscription ending last:

* On the renewal opportunity for subscription 1, create an amendment quote for subscription 2;
* The start date for the amendment will be 2018-07-01;
* Add 100 seats to the existing 50 and close as usual;

The other scenario is co-terming into the subscription ending first:

This requires two steps: first combining the subscriptions, then cancelling the leftover one.

* Create a new opportunity, with a quote amending subscription 1;
* The start date will remain unchanged, e.g. 2018-04-01;
* Add 50 seats to the existing 100 and close as usual;
* Once closed, create a new opportunity to cancel subscription 2 on the day before the start date of the previous quote e.g. 2018-03-31;

#### Professional Services Quote

**A.  Create a standalone Professional Services Opportunity.**

*   Create a New Business Opportunity and select “Professional Services Only” under “Opportunity Record Type.” **Note: Professional Services products must always exist on a separate, standalone opportunity.**

**B.  Creating a Professional Services Quote with Standard Product SKUs**

*   Create a new subscription quote under the Professional Services opportunity by following the steps above under “new Subscription Quote.” Select the required SKUs for Professional Services.
*   More information on [Professional Services SKUs](/handbook/customer-success/professional-services-engineering/#professional-services-skus) 

**C.  Creating a Professional Services Quote with Custom SKUs**

*   Create a new subscription quote under the Professional Services opportunity by following the steps above under “new Subscription Quote.” Select **GitLab Service Package.** Update the price to reflect the price on the SOW.

**D.  Before submitting a Professional Services Opportunity for Closure:**

*   Please note that the following items must be attached to the opportunity before it can be Closed Won:
    *   SOW signed by **both the customer and Paul Machle.****
    *   Cost Estimate spreadsheet (Link provided by the PS team)
    *   For a custom service package (Custom SOW), a fully executed SOW and Cost Estimate are required
    *   For [standard professional services skus](/handbook/customer-success/professional-services-engineering/#current-skus), only a signed order form is required 
    *   For opportunities with both - standard professional services skus AND a custom service package - then both a fully executed SOW and Cost Estimate is required 

#### How to Clone an Existing Quote

If you'd like to save time by cloning an existing quote, you can do so by doing the following:

1. On the Quote Detail page of the quote you want to clone, click Clone Quote.
1. On the Quote Clone Configuration page, select the following options:
    * Clone Products: Select to clone the products associated with the quote. This option only applies to the New Subscription quotes. Ensure that the products associated with the quote are maintained in the current version of the product catalog.
    * Maintain Quote: Select to be directed to the first step in the Quote Wizard flow that allows you to edit the newly cloned quote. The flows are configured based on the quote type, i.e., New Subscription, Amendment, and Renewal, in the Quote Wizard Settings.
1. Click Next.
    * If you selected the Maintain Quote option, you are redirected to the first step in the Quote Wizard of the newly cloned quote.
    * If you did not select the Maintain Quote option, you are redirected to the Quote Detail page of the newly cloned quote.
1. Please note that you cannot clone the products on an amendment (add-on or renewal quote.)

#### How to Create a Draft Proposal

Follow the standard process for [quote creation](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#zuora-quote-configuration-guide---standard-quotes). The Quote Object **does not** need to be approved before generating a Draft proposal. 

1. Click Edit Quote. 
2. Select the Draft Quote Template. Save. 
3. Click Generate PDF. A Draft Proposal PDF will be attached to the opportunity in the Notes & Attachments section. 

**Important Notes** 
- A Draft Proposal PDF is not an Order Form. All quotes must go through the applicable approval process before you can generate an Order Form. Draft Proposals are not guaranteed approval.
- A Draft Proposal PDF will not be accepted in place of an Order Form under any circumstance. 

### **Non-standard Quotes**

Occassionaly an opporutnity will require a unique structure that is outside of the normal quote format. Examples of these scenarios are listed below. Deal Desk will partner with the Account Owner to structure the opportunity and provide guidance on creating the quote. Please chatter on the opportunity if you need assistance with one of these scenarios! 

#### Contract Reset

Note: Contract Resets are used to perform an "Early Renewal" - i.e. start a new 12 month subscription before the renewal date. They can also be used if a customer needs to change a billing date or would like to change the term length, mid term. 

*   Open the Renewal opportunity and click the **“New Quote”** button.
*   Select the **existing billing account.**
*   When prompted **select “New Subscription for this Billing account,”** and select the appropriate subscription. 
    *   Note: If there are multiple billing accounts or subscriptions available, and you are unable to determine which to choose, please ask @Sales-Support via Chatter.
*   Fill out the necessary information on the quote per the instruction under the New Subscription Quote section above. 
    *   **Note: The Start Date should be the new subscription term’s start date, or the “Early Renewal” date.**
*   Click Next and update the products and fees per the steps above.
*   **IMPORTANT:** Next, tag @Sales-Support in Chatter on the Renewal Opportunity to create a credit opportunity and quote to cancel the existing subscription, which in this scenario is being replaced with the new subscription. Deal Desk will then manually generate a Contract Reset Opp and Order Form to add the credit line into the contract.
*   Deal Desk will attach a PDF of the consolidated quote to the opportuntiy 
*   Sales team will send the order form to the customer for signature
*   Upload the signed order form to the renewal opp and to the credit opp as well and submit both opps for approval


#### Add-On + Early Renewal

When a customer is adding on and renewing their current subscription early, and **is not** changing the term dates: 

*   Create an add-on quote per the Add-On section above.
*   Create a Renewal Quote object from the renewal opportunity per the Renew Subscription section above.
*   **IMPORTANT:** Tag @Sales-Support in Chatter on the opportunity to create the consolidated Order Form.


#### Multi-Year Deals


A.  Note: In the case of multi-year deals, the Initial Term” should be updated to reflect the number of months in the term - 24, 36, 48, etc. Also, select the correct Product (i.e. for a 2 year Starter deal, select “Starter - 2 Year”).

B.  If annual payments are requested for multi-year deals, use the 1 Year product. Note that annual payments must be approved in chatter by Paul Machle.

C.  Note: If annual payments are approved, create a separate opportunity and quote for each year of the subscription. A three-year deal with an annual payment schedule will have 3 separate opportunities and quotes reflecting each year of the subscription. Work with @Sales-Support in Chatter if needed

#### Ramp Deals

A.  To create a ramp deal, tag @Sales-Support in chatter on the opportunity. **Provide the following information for each ramp period:**
*   Start date/term length
*   Bill To and Sold To Contact
*   Product, quantity, discount
*   Payment Terms (i.e. Net 30)
*   Any other requests (i.e. Price Lock)

B.  Request template:
*   Deal Desk has created a [G Sheet template](https://docs.google.com/spreadsheets/d/1ho_ndKIZDvgdWOn873XONK2oc1tLloVJwlnpxgHYjiE/edit#gid=0) for Sales reps to enter ramp information.
    *   To use this template, copy the template to your own Drive, enter the information, and share your G Sheet with @Sales-Support in Chatter.

C.  Note: Deal Desk will create the quotes and Order Form.


#### Opportunities Requiring Multiple Invoices

If an opportunity requires multiple invoices due to a specific professional services delivery schedule or approved annual payment terms, a separate opportunity is required for each invoice period. If there is no difference in number of seats or price across the years only one subscription and quote would be required (ie. Invoice Only opps do not require a quote object).

**Opportunity Structure**

* Invoice Only Opp type should be New Business
* Each individual opportunity will require a quote object that is equal to the amount being invoiced
* All products, dates, and contacts should match the original opp / quote
* Build Invoice Only quote objects as a "New Subscription" quotes

**Invoice Amounts** 

If all payments associated with the opportunity are equal (ex. 3 payments of $10,000) the quote on the orignal opporuntiy must reflect the entire opportunity term. 

**Ex.** 

3 Year Subscription worth $30,000, broken out into 3 equal annual payments of $10,000. 
* Primary Opp Quote - 3 Year New Subscription Quote (using the 1 Year Product SKU). Term Length should be 36. 
* Invoice Only Opp - Year 2 - Update the Amount field to reflect the total to be invoiced. A quote object is not required.
* Invoice Only Opp - Year 3 - Update the Amount field to reflect the total to be invoiced. A quote object is not required.

If the payment amounts or user count per year are not identical, (ex. Year 1 - $15,000 Year 2 - $10,000, Year 3 $5,000)- then the original opporuntiy quote should only reflect the first year (invoice period) of the subscription. 

**Ex.** 

3 Year Subscription worth $30,000, broken out into 3 payments. Year 1 - $10,000, Year 2 - $7,000, Year 3 $13,000
* Primary Opp Quote - 3 Year New Subscription Quote (using the 1 Year Product SKU). Term Length should be 36. 
* Invoice Only Opp - Year 2 - Update the Amount field to reflect the total to be invoiced. A quote object is not required. (Use the same SKU as the original opp, update intital term to 12)
* Invoice Only Opp - Year 3 - Update the Amount field to reflect the total to be invoiced. A quote object should be created to reflect the total amount to be invoiced. (Use the same SKU as the original opp, update intital term to 12)

**Ex.** Professional Services Deal -Opportunity amount $300,000. 4 Deliverables are outlined in the Custom SOW to the customer, each deliverable includes a different date for delivery. This requires 4 opportunities because the customer will be invoiced after completion of each deliverable.


*  Opp 1 (Original Opportunity) - First Deliverable - $50k in services
*  Opp 2 (Cloned from Original) - Second Deliverable -$50k in services
*  Opp 3 (Cloned from Original) - Third Deliverable - $100k in services
*  Opp 4 (Clone from Original) - Fourth Deliverable - $100k in services

To create opportunities requiring multiple invoices: 

*  Clone the original forecasted opportunity
*  Update the opportunity name to include “Deliverable # and the Date of delivery. The close date should be the same for all opportunities (if SOW and Cost Estimate was received on 1/1/2020, all opportunities should show 1/1/2020 as the close date even if it will be invoiced in a future period).
*  Create a quote reflecting the value of the Deliverable. Build out each quote using the same SKU and discount (if applicable). The start date should match the delivery date outlined in the SOW.
*  The quote should follow the standard quote creation process (link to quote building process). Set the quote as primary. Repeat for all opportunities. The sum amount of all opportunities should equal the total amount for the SOW.
*  Attach the signed SOW and Cost Estimate link to **each opportunity.**
*  Submit the Opportunity for Deal Desk/Billing approval. The Billing team will flag each deliverable opportunity for future invoice periods.


#### Miscellaneous (But Important) Information

A.  **To add users to an existing license at a different price**, please add the users on a new, separate product line.

B.  **To create a true-up/add-on quote for a multi-year deal**, please add **both** the true-up and increase the license count by the same number of users. Note that the user number cannot decrease during the term of a multi-year deal - i.e. in the case of a three-year deal, if the customer exceeds the 100 license count by 25 users, (1) True-Up SKU with 25 users, and (2) increase the license quantity from 100 to 125.

C.  **If the customer signs a renewal quote, but a true-up is required before the renewal date**, create an add-on opportunity from the closed renewal opportunity, use the same start date as the renewal, and add the necessary true-up.

D.  If you have **multiple quote objects** under one opportunity, the quote you are using **must be marked Primary.**


#### Zuora Quote Template Updates 

The Deal Desk team owns and manages any updates made to all quote templates. If you have a suggestion for an improvement to our existing quote templates, please [open an issue here](https://gitlab.com/gitlab-com/sales-team/field-operations/deal-desk)  

Include the following in the issue:

* Proposed Improvement
* Net New template or Adjusting an Existing Template? 
* Business Impact 

<details>
<summary markdown='span'>
  Zuora Template Resources
</summary>

In order to update quote templates that are used in Salesforce, and pulled in from Zuora, please reference the below resources provided by Zuora. 
1. [General overview to update quote templates](https://knowledgecenter.zuora.com/CA_Commerce/C_Zuora_Quotes/CB_Zuora_Quotes_Configuration_Settings/D_Quote_Template_Settings/Customize_Quote_Templates)
1. [Leveraging mail merge fields to update templates](https://knowledgecenter.zuora.com/CA_Commerce/C_Zuora_Quotes/CB_Zuora_Quotes_Configuration_Settings/D_Quote_Template_Settings/Customize_Quote_Templates/C_Customize_Quote_Template_using_Word_Mail_Merge) - This must be completed in Microsoft word and saved accordingly
1. [Reference the merge fields that are supported](https://knowledgecenter.zuora.com/CA_Commerce/C_Zuora_Quotes/CB_Zuora_Quotes_Configuration_Settings/D_Quote_Template_Settings/Customize_Quote_Templates/K_Supported_Merge_Fields_for_Quote_Templates_and_Mapping_to_Salesforce#Charge_Summary.Quote_Rate_Plan_Merge_Fields)
1. [How to displaty multiple quote charges in a table](https://knowledgecenter.zuora.com/CA_Commerce/C_Zuora_Quotes/CB_Zuora_Quotes_Configuration_Settings/D_Quote_Template_Settings/Customize_Quote_Templates/E_Customize_Quote_Templates_Using_Microsoft_Word_Mail_Merge)
1. [Uploading to Zuora and connect to Salesforce](https://knowledgecenter.zuora.com/CA_Commerce/C_Zuora_Quotes/CB_Zuora_Quotes_Configuration_Settings/D_Quote_Template_Settings) 

</details>


#### How to Process a Professional Services SOW Amendment (Change Order)

Occasionally, changes will be made to a Custom SOW after an opportunity has been booked. These changes could include delivery (invoice) schedules or types of services delivered. The total value of the opportunity **should not change.** If the total value of an opportunity changes, this will require an internal refund and rebooking of the order. 

If the total value of the opportunity has not changed:

*  Clone the original Closed-Won opportunity. Update the opportunity name to include “Amended SOW”.
*  Update the Original Closed-Won opportunity as duplicate, linking to the Amended SOW Opportunity.
*  Build a quote identical to the original closed-won opportunity. Update the quote to primary.
*  Attach the original SOW, the Amended SOW, and link to Cost Estimate to the Amendment Opportunity.
*  Submit the Opportunity for Deal Desk/Billing Approval.
*  The Opportunity Close Date for the Amended SOW should be manually updated to match the original Closed-Won opportunity.


<details>
<summary markdown="span"><b>Deal Desk Only - Manually Consolidated Order Form Forma<b></summary>


#### Deal Desk Only - Manually Consolidated Order Form Format

Deal Desk will manually consolidate an Order Form for complex deals, including: Ramp Deals, Multi-Year Ramps with Annual Terms, Add-On + Early Renewal, or Contract Resets. Quote Format should be as follows: 

Date format on all quotes should match the entity format. EMEA quote dates are generated DD-MM-YYYY, NAMER quote dates are generated as MM-DD-YYYY. 

#### Order Form Format for Add-ons to multi-year Subscriptions

Where annual payments were approved for multi-year subscriptions, the add-ons to these orders will be created for the whole duration of the subscription and should indicate the full payment, 
e.g.: 
1. 2020-07-01 - 2021-01-31 - 5700 USD (pro-rated)
1. 2021-01-31 - 2022-01-31 - 11400 USD (full)
1. 2022-01-31 - 2023-01-31 - 11400 USD (full)

#### Contract Reset Order Form Format

**Product Information Section**

* **Cancelled Product Line - Contract Reset** [Full SKU - Year ] 

* **Quantity** - [Total Quantity of Users cancelled] 

* **List Price** - [BLANK] 

* **Discount** - [BLANK] 

* **Effective Price** - [BLANK] 

* **Total Price**- [($XX,XXX.XX)] - Total Price reflects the subtotal of the product (less VAT/Tax) and should be in parenthesis



**Quote Charge Summary Section**

* **Credit:** [($xxxx.xx)]- This should be Subtotal on the Credit from the Contract Reset quote object. This number should be in parenthesis

* **Credit VAT/TAX:** [($xxxx.xx)] - This is the VAT/TAX amount on the Contract Reset quote object. This number should be in parenthesis 

* **Subtotal:** [$xxxx.xx] - New Subscription Product Line Total Price - Contract Reset **Subtotal** 

* **VAT/Tax:** [($xxxx.xx)] New Subscription Product Tax - Contract Reset VAT/Tax 

* **Total:** [($xxxx.xx)] Subtotal + VAT/Tax 


</details>


#### Quote Entity Information

Note that the GitLab entity information will be populated via the following rules. This table is based on the [ISO-2 billing country code](http://www.nationsonline.org/oneworld/country_code_list.htm) of the direct customer or reseller we are delivering invoices to:

<table>
	<thead>
		<tr>
			<th>GitLab Entity</th>
			<th>Direct Customers and Unofficial Resellers</th>
			<th>Authorised Resellers</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>BV (NL)</td>
			<td>NL</td>
			<td rowspan="5">NOTE: Currently the default invoice entity is BV in the quoting tool.
				<br />
				<br />For new resellers: GL entity should be determined based on the signed reseller agreement.
				<br />
				<br />For old resellers: check the entity under the account in Zuora
			</td>
		</tr>
		<tr>
			<td>GmbH (DE)</td>
			<td>DE</td>
		</tr>
		<tr>
			<td>Ltd (UK)</td>
			<td>UK</td>
		</tr>
		<tr>
			<td>Inc. (US)</td>
			<td>All customers outside of NL, DE, UK, AU</td>
		</tr>
		<tr>
			<td>PTY LTD (AU)</td>
			<td>AU</td>
		</tr>
	</tbody>
</table>


**Note**: all initial web direct subscriptions ordered through the portal are placed on the US entity. (Clarification: however if the initial order was invoiced by the DE entity -through a sales assisted order- and customer orders an add-on via the portal, the add-on will be invoiced by DE as well.)

**Important**: in case of add-ons, the add-on quote/order form must reflect the same invoice entity that was on the initial/base deal.



### **Monthly Bookings Close Process**

The Monthly Bookings Close involves Billing, Deal Desk, Sales Analytics, and Finance. The Deal Desk close process is below. 

#### Required Tools 

We use Dataloader to manage these uploads. Download dataloader and follow the instructions for install [found here](https://help.salesforce.com/articleView?id=loader_install_mac.htm&type=5)

#### Bookings Close Process Overview

1.  **Reconcile** Renewal ACV
2.  **Reconcile** Web Direct Purchases vs. Upcoming Renewals
3.  **Reconcile** Missing Product Categories on Opportunities
4.  **Reconcile** Last Month's True-Ups
5.  **Reconcile** Compensation File

##### 1. Reconcile Renewal ACV

A.  Purpose: 

Review all Closed Won/Closed Lost renewals to confirm/correct the Renewal ACV and Renewal Amount fields.
*   Closed Won: This review ensures that the correct IACV is recorded.
*   Closed Lost: This review allows us to track lost Renewal ACV.

B.  Process:

*   Open Month Close Reconcilation Google Sheet.
*   Access Renewal ACV Reconciliation tab.
*   Click Add-Ons > G-Connector for Salesforce > Refresh Current Sheet (from Salesforce).
    *   This action will pull [this report](https://gitlab.my.salesforce.com/00O4M000004dypc) from Salesforce. Note that the report’s date range should be updated.
    *   The report shows all Closed Won and Closed Lost renewals where Renewal ARR (del)  is empty. Renewal ARR (del)  triggers renewal notifications to Slack.
*   Enter Renewal Amount, Renewal ACV, Renewal ARR (del), and Admin Review Date (Columns Q, R, S, V).
    *   Go to the Account ID tab and click on the ID. This will take you to the Account record.
    *   Go to the Opportunities related list.
    *   For opportunities up to 12 months, add up the Amount fields on the previous renewal and add-ons. These amounts will constitute Renewal ACV.
*   Notes:
    *   Starting in Feb. 2020, CI Minutes and Professional Services will always be zero ACV and ARR.
    *   Populate opportunity term, select to upload.
*   When all updates are made, click Update/Insert on G-Connector to upload the updated data back into SFDC.
    *   Highlight Opportunity IDs (Column B) that you want to update before clicking Update/Insert.
    *   After updating, refresh the tab to confirm the update was successful.
*   Finally, open [Closed Lost Renewals - Last Month](https://gitlab.my.salesforce.com/00O61000004hgLb) and move any Closed Lost renewal opportunities’ Close Dates to future months if the start date on the opportunity is in a future month.

**Upload the completed file using Dataloader** 

1. After the RACV tab has been reviewed and updated manually by the MP team, open the Open FQ Renewals - Renewal ACV Reconciliation tab of the weekly recon sheet.
1. Open excel and paste the required columns that need to be updated and uploaded, i.e; Opportunity ID, Renewal ACV, Renewal ARR, Renewal Amount and Amount (the columns from Sales Segment until Opportunity Term are of no use and can be deleted off the sheet).
1. Apply formula and check if the Renewal ACV is equal to Amount (=IF(B2=E2,”OK”,Check)
1. The ones which are equal are fine. The ones that do not, manually go to the respective opportunity in order to check why to make sure we do not have a negative IACV.

** Checks prior to uploading via Dataloader **
1. Once the checks are done, format all the values as Number.
1. Run a vlookup to check that we are not updating any closed-won opps. Steps below-
- Pull report from Xactly for all Closed-Won opportunities.
- Paste it in the next sheet of the excel being used above and run a vlookup to see that no Closed-Won opportunities are being updated.
- Remove the amount column.
- Remove all the blank columns and rows and save the file as .CSV

**Open rACV using DataLoader** 

1. Open DataLoader and under Settings check the batch size (5) and make sure the “Insert Null Values” checkbox is unchecked.
1. Click the Update button in Data Loader.
1. Login with your SFDC password and hit Next.
1. Under the “Select Salesforce object” field start typing “opportunity”.
1. Select the “Opportunity (Opportunity)”.
1. On the same window choose the CSV file saved and hit Next.
1. It starts running and a pop-up window appears with the total line items (worth to double-check if the correct CSV has been selected based on the number of lines).
1. On the next page hit the “Create or Edit a Map” button - Map the columns to the SFDC values =>Search for the name of the fields and select them and drag them down one by one. 
1. Select the directory - select your Downloads folder and hit Finish.
1. Pop-up: hit Yes -> loading starts.
1. Pop-up: Operation Finished - View Successes - View Errors -> check errors (whether the renewal amounts are populated on the opp).

**After DataLoader upload is done - Refresh Sheet** 

1. Delete the contents of the sheet leaving the headers.
1. In order to refresh the G-sheet, go to Add-ons tab -> G-Connector for Salesforce -> Refresh Current Sheet (from Salesforce).

##### 2. Reconcile Web Direct Purchases Against Upcoming Renewals

A.  Purpose: 

Confirm whether subscriptions are net new, or whether customers have simply created a new subscription instead of renewing their existing subscription.

B.  Process:
*   Open Month Close Reconcilation Google Sheet.
*   Access the Last Month Web Directs tab.
    *   Enter Add-Ons, click G-Connector for Salesforce, and refresh.
    *   Last Month Web Directs report.
    *   Be sure the close date filters are up to date - extend the close date past the current quarter to capture potential future renewals that closed early.
*   Access the Upcoming Renewals tab.
    *   Enter Add-Ons, click G-Connector for Salesforce, and refresh.
*   Enter Last Month Web directs tab again.
    *   We ultimately will be looking at LEFT 7, MATCH LEFT 7, Full Account Name, and MATCH FULL columns.
    *   We are trying to gather whether we have any new business web directs that are matched on the Upcoming Renewals sheet.
    *   First, start with MATCH FULL
        *   Drag the formula down the entire list. 
        *   Look for “TRUE” - these accounts match.
            *   Filter further by New Business - if TRUE, these are accounts that were up for renewal but were closed as New Business.
            *   For each account, go to SFDC and check whether the subscription is truly new business or whether the customer intended to renew.
                *   Copy renewal ACV.
                *   Edit new business opp.
                *   Change Type to Renewal.
                *   Update Renewal ACV amounts.
                *   Save.
                *   Return to account, find the true renewal opp, save as duplicate.
                *   Chatter Billing Ops to ask them to link the subscriptions. (“Please link the subscriptions.”)
                *   Be sure to assign to the correct rep, not Sales Admin if the opp is not SMB.
            *   For accounts where there is only the new business web direct closed but it looks like a renewal, search for duplicate accounts. If you find a duplicate, merge the accounts. 
                *   In Zuora, go to the “new” account and update the CRM Account ID with the correct account’s ID. 
                *   In this case, we will leave as two separate subscriptions.
                *   Be sure to assign to the correct rep, not Sales Admin if the opp is not SMB.
    *   Filter by NA and FALSE.
        *   Check whether C Account Name matches M Full Account Name.
            *   For near matches, access the SFDC account.
            *   Open a new tab and search SFDC for the near-match name to attempt to determine if it is the same company.
            *   If the companies are truly the same, merge the accounts as above.

##### 3. Reconcile Missing Product Categories on Opportunities

A.  Purpose: 

Add all products to the opportunity record for Closed Won and Closed Lost renewals. 

1. Open Zuora Product Report .csv file. This report runs weekly and is sent to the Deal Desk team.
1. Search for "Credit" in the product category field, delete all rows. 
1. Search for "True-ups" in the product cateogry column. delete all rows. 
1. Open the Products tab of the Weekly Reconcilation gsheet.
1. Create a new sheet next to the Products tab in the Weekly Recon file - copy/paste the remaining rows from the .csv file on this tab
1. Create a Vlookup for the invoice nr in column R on the Product tab for the Zuora invoice report: VLOOKUP (I2, Sheet115!C:D, 2, false). => column I is the invoice column on the product tab, then we use the sheet for the Zuora report and select Invoice Number and Invoice Item: Charge Name (columns C and D)
1. Clean-up: Filter column R for each true value per product and update the Product Category column with the standardized name “Bronze”
1. Check for Ci minutes based on the amount column and mark them as CI minutes in the Product Category column
1. Copy the values from the Product Purchased (column G), insert it to the Product Category column and clean up the values again to reflect the standard product category (without the words “1 Year” etc.)
1. Clear the column R values on the lines which were cleaned up
1. Where the Product Purchased column is blank, leave for manual review. 

Upload Product Category using Dataloader 

1. After the products manual review is finished and the Product Category column is updated manually, for the upload select the Opp ID, Type and Product category columns and paste to an Excel. Only the oppty id and product category will be uploaded back but we can leave in other columns.
1. In Data Loader settings check the batch size (5) and make sure the insert null values checkbox is unticked.
1. Click Update in Data Loader and follow the process details under the Renewal ACV part above.
1. The Type column should not be mapped (the one that won`t be uploaded)

Helpful tips: 

*   Reduce number of opps requiring manual review - 
    *   Anything that is $8, 16, 24, 40 will be CI Minutes
    *   The Charge name generally informs which product to enter in Column P.
    *   In cases with multiple products, the opportunity takes precedence.
    *   True-Ups should follow the product being true’d-up.
    *   Spend more time researching higher IACV deals.
    *   Be sure to distinguish EDU/OSS - write in “Gold (EDU/OSS)” vs. “just Gold.”
    *   For legacy products, enter “Other.”
    *   If there are lines that do not have Product Details listed, use Products Purchased.
    *   If there are lines that do not have Product Details OR Products Purchased, find the invoice and enter the product listed on the invoice.
*   Notes:
    *   Basically, look to H to ensure P is populated.
    *   If H is empty, go by G.
    *   G and H blanks 
        *   First, take care of CI Minutes. 
        *   Filter A for opp name. If the name does not inform the product, go into the opp to review the subscription.


##### 4. Reconcile Last Month's True Ups

A.  Purpose: 

Map any sales-assisted deals with true-ups into the True-Up Value field on the Opportunity object to comply with Revenue Recognition requirements.

B.  Process:
*   Access Month Close Reconciliation
*   Access the “Last Month True Ups” tab.
*   Click Add-Ons > G-Connector for Salesforce > Refresh Current Sheet (from Salesforce)
    *   This action will pull [True Ups (Won Last Month) Report](https://gitlab.my.salesforce.com/00O61000004Ihvs) from Salesforce.
    *   This report contains all Quotes sent to Z-Billing where the product rate plan contains “True Up.”
*   In the True Up Value Column, enter the formula to multiply the quantity by effective price.
*   Highlight all rows that will be appended back to SFDC. Do not include the header row, as this will result in an error.
*   Note that the mapping template should already be set. If you do need to recreate it, you’re only mapping two columns: Opportunity ID and True Up Value.
*   Click Push Selected Rows

##### 5. Reconcile Compensation File

A.  Purpose: 

Review ownership of opportunities to ensure that each opportunity is attributed to the correct team (Region + Segment) for compensation purposes, as these fields will be pushed into CaptivateIQ and will determine commission.

B.  Process:
*   Access Month Close Reconciliation
*   Access Comp tab.
*   Click Add-Ons > G-Connector for Salesforce > Refresh Current Sheet (from Salesforce)
    *   This action will pull [Bookings Report - Sales Metrics (Comp)](https://gitlab.my.salesforce.com/00O61000004hlFs) from Salesforce.
    *   Note that refreshing the sheet will replace formulas: (a) Do a VLookup for Account Owner Team (against Account Owner) and Owner Team (Against Opportunity Owner - compare column G in Users tab, returning Column J, the user team field)
    *   Note that SA Team - Xactly should = Column S (ex: should read Commercial - SMB, not SMB) - formula to pull this over.
    *   Note, at this stage column M is correct, and R,S,T need to be reviewed.
    *   Notes:
        *   Does Sales Segment = Owner Team? If so, it’s correct (if R to U match, no action needed. This is generally 60-70% of opps)
        *   Unknown? That’s SMB.
        *   Sales Admin Opp under Sales Admin/SMB-owned account? No updates needed.
        *   Customer Advocate? Ignore.
        *   Opportunities owned by Ralph Kompare should be reassigned to the proper Public Sector owner - confirm with Brent Caldwell.
        *   For Public Sector, Sub Industry (K) must be populated, and the owner territory should match Sub Industry.
*   Review Opportunity Owner column to ensure that all owners are Sales reps who should own records.
*   New users: An Error in columns R,S,T means there is a new employee. Add them via the Users tab.
*   Opportunity Ownership: Note that if a non-rep (SDR, partner manager) owns the opp, update the opp in SFDC.
*   Review the Comp tab and fill in the following fields:
    *   User Segment [Taken from the User Table in SFDC]
    *   Account Owner Team (O) [This is the account owner’s team]
    *   Owner Team (O) [This is the opportunity owner’s team]
    *   SA Team - Xactly [This is based on the opportunity owner’s team, and is integral for Solution Architects’ compensation because SAs are paired with the opportunity owner.]
*   Review User Segment
    *   Ensure that all User Segments are correct.
    *   Options are: Large, Mid-Market, SMB
    *   Do a VLOOKUP against the Users tab on the Opportunity Owner field and return User Segment.
*   Review Account Owner Team (O)
    *   Ensure the teams are entered correctly. This field is based on the Account Owner, not the Ultimate Parent Account Owner.
    *   Do a VLOOKUP against the Users tab on the Account Owner field and return Team.
*   Review Owner Team (O)
    *   Filter or sort by users.
    *   Do a VLOOKUP against the Users tab on the Opportunity Owner field and return Team.
*   SA Team - Xactly
    *   This should match the Owner Team (O)

| Account Owner Team (O) | Owner Team (O) | SA Team - Xactly |
|----- | ----- | ----- |
| APAC | APAC | APAC |
| EMEA | EMEA | EMEA |
| Public Sector | Public Sector |Public Sector |
| US East | US East | US East |
| US West | US West | US West |
| MM - East, MM - West, MM - EMEA, MM - APAC | MM - East, MM - West, MM - EMEA, MM - APAC | MM - East, MM - West, MM - EMEA, MM - APAC |
| SMB | SMB | SMB |
    

*   Push the fields you updated in Steps VI to IX back into Salesforce. 
*   Ensure Correct Segment Ownership.
    *   Filter by the Ultimate Parent Segment field.
        *   Large Accounts
            *   Should have an Account Owner Team of APAC, EMEA, Public Sector, US East, or US West. Opportunities may be owned by other segments, as they are likely holdovers.
            *   Should not be owned by Commercial - MM or Commercial - SMB.
            *   If you identify a Large Ultimate Parent Account owned by a Commercial rep, reassign the account to the correct Strategic Account Leader. Update the Account Team Owner (O) field on the Comp tab.
        *   Mid-Market Accounts
            *   Should have an Account Owner Team of Commercial - MM, except for Public Sector. Opportunities may be owned by other segments, as they are likely holdovers.
            *   Should not be owned by Strategic Account Leaders or Commercial - SMB reps.
            *   If you identify a Mid-Market Ultimate Parent Account owned by a Strategic Account Leader or Commercial SMB rep, reassign the account to the correct Commercial - MM rep. Update the Account Team Owner (O) field on the Comp tab.
        *   SMB/Unknown Accounts
            *   Should have an Account Owner Team of Commercial - SMB, except for Public Sector. Opportunities may be owned by other segments, as they are likely holdovers.
            *   Should not be owned by Strategic Account Leaders or Commercial - MM reps.
            *   If you identify an SMB Ultimate Parent Account owned by a Strategic Account Leader or Commercial MM rep, reassign the account to Sales Admin. Update the Account Team Owner (O) field on the Comp tab.
    *   Review Large/Mid-Market Accounts/Opportunities owned by Sales Admin
        *   These accounts should be owned by the territory/account owners.
        *   Access each record and reassign based on DataFox data. For Accounts that are reassigned, also assign the associated opportunities to the correct owner. Do not reassign historical opportunities.
    *   Add Sub-Verticals for Public Sector Accounts/Opportunities
        *   Inside Sales Representatives are compensated based on the sub-vertical.
        *   Add this from the account object. Simply copy the values from Column J and add to Column K and make sure to push the values back into the field on the opportunity.
*   Notes:
    *   Community Advocate can own any segment’s opportunity. Do not reconcile.
    *   Public Sector can own any segment’s accounts. Do not reconcile.
    *   If there is bad data, update the account. Go 1 by 1.
    *   Make edits directly in SFDC is opp or account owner must be updated.
    *   Remember to update M R,S,T on the sheet and upload it back for Closed Won and Closed Lost.
    *   On first pass, if Sales Segment falls under the correct account and opportunity owner, we know it’s correct.
    *   Exceptions: Romer Gonzalez and APAC MM reps can also own SMB deals.





