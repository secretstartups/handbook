---
layout: handbook-page-toc
title: "Billing Operations"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Welcome to the Billing Ops Handbook

### Charter

The Billing team orchestrates and owns the customer billing cycle from invoicing to cash, while working closely with the [Deal Desk team](/handbook/sales/field-operations/sales-operations/deal-desk/).

### Key Focus Areas

* Opportunity Approval
* Invoicing
* Collections

### Helpful Links

* [How to create an opportunity/build a quote? ](/handbook/sales/field-operations/sales-operations/deal-desk/)
* [Order requirements](/handbook/business-ops/order-processing/#step-8--submitting-an-opportunity-for-deal-desk-approval)
* [Contacting the Legal team](/handbook/business-ops/order-processing/#process-for-agreement-terms-negotiations-when-applicable-and-contacting-legal)
* [Questions about licenses and plans](/handbook/support/internal-support/#common-internal-requests---sales-team--technical-account-managers--accounts-receivable)

### Communicating with Billing

Please contact Billing team by emailing ar@gitlab.com or by chattering `@billing-ops` on an opportunity in Salesforce.
Doing so will automatically create a case in the Billing queue that is monitored throughout the day.
We will respond to the case as soon as we can during business hours.
Please note that Billing should not be chattered for assistance with quote creation.
The Deal Desk team is able to assist with opportunities and quotes by chattering `@sales-support` on the opportunity.

Please avoid tagging Billing team members directly in chatter, instead use `@billing-ops` as this way your request will be seen by all Billing team members which  helps avoid delays.

Please avoid contacting any Billing team members [directly via Slack](/handbook/communication/#avoid-direct-messages).
Please tag `@billing-ops` in the `#Finance` channel.

### The scope of our tasks:

* Reviewing and invoicing orders
* Processing refunds - please scroll down to see how to initiate a refund request
* Providing financial documents, e.g. W-9, certificates of incorporation, bank verification letters.
* Handling tax exemptions
* Working on customers’ requests with regards to invoicing and updating account information in Zuora:
   * Account name change
   * Sold to information
   * Bill to information
   * Additional email addresses for invoicing
   * Tax ID updates
   * PO numbers updates
   * Silencing the account when necessary
   * Creating reseller accounts
   * End User confirmations on resellers invoices
   * Updating payment methods and processing credit card payments - credit card payments can be taken by phone
   * Updating payment terms - anything beyond Net30 will require approval
* Billing accounts set to auto-renew
* Collecting overdue payments
* Helping the Sales team to fill out financial information on the vendor setup forms - for full process please view the [Deal Desk page](/handbook/business-ops/order-processing/#how-to-process-customer-requested-vendor-setup-forms)
* Handling credit card disputes made through our gateway system (providing evidence on disputed payments through Stripe, processing refunds where necessary in Zuora for lost disputes)
* Month end reconciliation of invoices and orders
* Improving and streamlining billing processes

### Approving and invoicing orders

In short the approval and invoicing process comprises the following steps:

1. Reviewing the opportunity in SFDC
1. Ensuring the data is correct in Zuora and CustomersDot
1. Approving the opportunity and sending the quote to Zuora - (if the opportunity doesn’t meet the requirements listed below it will be rejected and all the reasons for rejection will be provided)
1. Creating and posting the invoice in Zuora
1. Updating SFDC with invoice information

In order to approve an opportunity the following systems are used **SFDC, Zuora** and **CustomersDot**.
The below points/fields need to be reviewed in the process:

**I. Salesforce:**

* Opportunity page
* Quote object
* Order Form
* PO
* Other documentation if available.

**Opportunity page:**

1. Opportunity (navigate to the **Billing Pending Approvals report**)
1. To assign opportunity update the **Billing Specialist field** to your name
1. Make sure the **opportunity type** is correct (e.g. if in doubt check with the AE whether it’s new business or an add-on)
1. **Opportunity record type** - Standard for standard opportunities
1. **Chatter** for any additional information or approvals on discounts, non-standard payment terms and any other manually added information. Check for information on credit card payments - if so, where available process the card after billing. If aware that the company has filed for bankruptcy, legal and finance approval is required, in addition to upfront payment.
1. **Start date** (due to revenue recognition requirements cannot be more than 60 days in advance) and **end date**
1. **Amount**
1. Upon processing - **Invoice number, Invoice Date, Invoice Status** (Completed), **Entity**

**Quote object:**

1. **Quote template**
1. **Amount** - compare between documents and opportunity
1. **Sold to** contact - search in Zuora and the portal to make sure it’s assigned to the correct account, for reseller orders ensure sold to email address is that of end-user
1. **Bill to** - compare between Zuora and the documents - no need to change if Zuora bill to address is an accounts payable address (Please ensure that all orders for India have been submitted through a partner regardless the payment method.)
1. **Invoice owner** and **Invoice owner contact** - needed for reseller orders
1. **Payment method** and **payment term** - compare between documents and Zuora, check approvals where required
1. **PO number** where available
1. **Auto-renew** - ‘no’ for sales assisted purchases
1. **Start date** - cannot be more than 60 days in advance - orders with with a date beyond 60 days will be processed once the start date falls into the 60 days window
1. **Zuora account ID** - check if the Zuora account ID isn't filled out for new business and is filled out for renewals and add-ons, check if the correct account was chosen.
1. **Product, quantity, discount**, check whether the **add-ons** and **updates** on the product were done correctly (e.g. not added as separate product). Also, in case of two or more lines of product check if approvals are needed.
1. **Discount approvals** - fulfillment reseller and direct deals discounts need to be checked with the matrix and authorized reseller discounts to be checked on Reseller account or Distribution agreements

**Order Form:**

1. **Entity** - [renewal/new business vs. add-on.](/handbook/business-ops/order-processing/#entering-quote-details) For contract resets make sure orders from different entities were not place on one order form.
For authorized resellers check the distribution agreement to ensure correct entity was used.
1. **Start date**
1. **Term**
1. Where required **VAT ID** need to be [validated](http://ec.europa.eu/taxation_customs/vies/vatRequest.html) and added to Zuora - valid VAT number is required if we bill cross-country to EU countries.
1. **Bill to** and **sold to** address - must be complete
1. **Product, quantity, discount, net amount, tax** and **total amount**
1. **Annual payments** outlined where required
1. **Ramps** outlined where required
1. **Special terms** - check for approval - any custom language on the order forms needs approval and should be documented in chatter or through a Legal request case
1. **Payment method**
1. **Payment term**
1. **Terms, reference to special agreements** - if a special agreement is in place the order must reference it
1. **Signature, Title, Date** - for full requirements view [here.](/handbook/business-ops/order-processing/#step-8--submitting-an-opportunity-for-deal-desk-approval)
1. Any other **information added manually** to the order.
1. If the documentation requires **countersignature**, check if countersigned before processing.

**PO**

1. For fulfillment resellers: **quote number, entity, amount** (In case of the PO amount less than the quote amount we allow a difference of less than 1 USD.
In case of an amount significantly higher than quote amount it will need to be checked with the reseller to avoid misunderstandings related to term etc.), **currency** (must be USD), **term, product**
1. For direct customers where order was signed: **currency** (must be USD), **amount** (In case of the PO amount less than the quote amount we allow a difference of less than 1 USD.
In case of an amount significantly higher than quote amount it will need to be checked with the customer to avoid misunderstandings related to term etc.)
1. For direct customers where order was not signed: **reason** why the customer is refusing to execute the order form and **documentation of the customer refusal** followed by **Legal and Finance approval (PAO)**

**Other documentation** to be checked can include MSA, special subscription agreements, Distribution agreement with a reseller. If the documentation requires countersignature, check if countersigned before processing.

**II. Zuora:**

* Account
* Subscription
* Invoice

**Account:**

1. **Account** - navigate to the correct account and review the following:
1. **Entity** - if the entity of the account needs to be changed per renewal a new account for the customer/end user and reseller will need to be created in Zuora (before doing that check Zuora if the correct entity account already doesn’t exist there).
For full process view the Billing WIKI pages.
Make sure the end user is on the same entity as the reseller.
1. Update the **conversion rate** for orders not billed through the US entity.
1. Confirm the **bill to** and **sold to** addresses are correct (sold to address must match the portal sold to address)
1. **Payment terms**
1. **VAT ID** where required
1. **Default communication profile** - needed in order to send the license for renewals and add-ons, especially important for reseller deals!
1. **Silent communication profile** - for some ramped orders or special requests
1. Check whether there are **outstanding invoices** older than 120 days - credit hold.
1. **Email history** - upon processing the invoice ensure invoice was sent.
1. Check for the **callout** - in case of error instruct the AE [to contact Support team](/handbook/support/internal-support/#common-internal-requests---sales-team--technical-account-managers--accounts-receivable)
1. **Credit card** - process if it was requested.

**Subscription:**

1. **Renewal subscription field** - link subscriptions if a new subscription was created for renewal
1. **PO number** - if none was provided and there was one in the past enquire with the AE before posting the invoice
1. **Preview** invoice for accuracy

**Invoice:** gets created after hitting the **Create Bill Run** button.
Untick the **Automatically renew auto-renew subscriptions** field before processing.
The following fields need to be reviewed on the PDF before posting.
If the below are ok the invoice can be posted (**Post**).

1. **Entity**
1. **Payment terms**
1. **Customer data**
1. **Amount**
1. **VAT local currency amount** (add in the Tax local currency amount field)
1. **PO number**
1. **VAT ID** where required
1. **Invoice Comments** - e.g. End User name

**III. CustomersDot:**

1. By searching with sold to email address ensure the **sold to** contact:
* has been **updated** to the correct one
* has the correct **Zuora account ID** assigned
Check the quote vs. Zuora vs. portal - all three need to have the same sold to email address in order for the license to be sent out to the end user/customer.

2. In case of an **upgrade for GitLab.com** portal needs to be updated manually.

**Other documentation** - need to be reviewed for any discrepancies in the above fields e.g. payment terms, product, future price agreements.

______________

Please note that **EDU/OSS opportunities follow a slightly different process**:

* Check signature, amount, start date
* Send to Zuora
* Update entity and conversion rate if necessary in Zuora
* Update account to Batch 50
* Post the invoice automatically without sending if total 0 (if total different than 0 invoice needs to be checked prior to sending to the customer!)
* Update the opportunity in SFDC

________________

Points to note for **professional services opportunities**:
* ‘Opportunity Record Type’ should be ‘Professional Services Only’.
If it’s not, Sales Ops team needs to be informed so that it can be changed or a separate opportunity for PS can be created along with an opportunity for base or add-on products
* If SOW is in place it needs to be signed and countersigned if required
* A cost estimate must be attached to the opportunity record prior to reporting as closed won
* A quote object needs to be created so it can be sent to Zuora
* Read through SOW to bill accordingly - some PS opportunities require e.g. 50% of the amount billed upon execution (signing of the SOW), the 50% upon completion of the services.

________________

Points to remember while billing **AWS orders** can be viewed [here.](/handbook/business-ops/order-processing/#second-review-all-requirements-for-each-type-of-sale)

### Billing Entities

GitLab currently has the following billing entities:

* GitLab Inc in the US
* GitLab BV in the Netherlands
* GitLab Ltd in the UK
* GitLab GmbH in Germany
* GitLab PTY LTD in Australia

This is a general rule for billing through the entities:

| **Entity**          |**Direct / Unauthorized Reseller** | **Authorized Reseller**
|-------              |----------                         |  ----                   |
|BV (Netherlands)     | NL                                | Not AU, DE, UK, or US   |
|GmbH (Germany)       | DE                                | DE                      |
|Ltd (United Kingdom) | UK                                | UK                      |
|Inc (United States)  | Not AU, NL, DE, or UK             | US                      |
|Pty Ltd (Australia)  | AU                                | AU                      |

We bill customers and unauthorized (fulfillment) resellers:

* based in the Netherlands via GitLab BV (VAT will be applied to the invoice)
* based in the UK via GitLab Ltd (VAT will be applied to the invoice)
* based in Germany via GitLab GmbH (VAT will be applied to the invoice)
* based in Australia via GitLab PTY LTD (GST will be applied to the invoice)
* the customers and unauthorized resellers that are based in the US or other countries than the above are billed through GitLab Inc

We bill authorized resellers:

* based in the US via GitLab Inc
* based in the UK via GitLab Ltd
* based in Germany via GitLab GmbH
* based in Australia via GitLab PTY LTD
* the authorized resellers that are based in the Netherlands or other countries than the above are billed through GitLab BV unless the distribution agreement has been signed with another GitLab entity (this only concerns authorized resellers and doesn’t apply to direct customers)

There are 3 reasons why an account for a customer or an unauthorized reseller based in the Netherlands, UK, Germany or Australia is billed through GitLab Inc:

1. The account has been opened through the CustomersDot (web direct) as these accounts are automatically billed through GitLab Inc regardless of the country the customer is based in.
1. The subscription has been billed before an entity in a given country has been opened.
1. The end user’s account follows the entity of the reseller account it has been invoiced to - e.g.
The customer is based in Germany but has been billed via a reseller account based in France - since the end user and reseller account need to be on the same entity - the end user account will be set to the US entity, the same as the reseller account. The entity of the end user account needs to follow the entity of the reseller.

The customers that bought their product over the portal and are renewing over the portal will continue to be billed through GitLab Inc.
The customers or unauthorized resellers based in the UK, Netherlands, Germany and Australia that were billed through GitLab Inc will be moved to the appropriate entity where purchasing a renewal or initiating contract reset via a sales assisted quote (early termination of the existing contract and new term).
Please note that add-on opportunities need to be billed via the entity of the opportunity that they are added to.

### How to initiate a refund request within 45 days from the initial invoice date: 

* Sales Rep can chatter us on the Opportunity that needs to be refunded, giving a reason as to why.
* Customers can email ar@gitlab.com requesting a refund.
* Customers can submit a ticket via the CustomersDot.

### Processing a refund in Zuora (credit card payments): 

1. A refund request has been received by e-mail or chatter in Salesforce.
1. Log in to the customer’s account in Zuora.
1. Find the invoice that needs to be refunded and then find the payment associated with the invoice.
This can be found under the Payment tab.
1. Click on the payment number and it will take you to the payment screen.
1. On the payment screen, click on more and click on "Refund this payment."
1. A new screen will appear, make sure that you have the Electronic Refund button selected.
1. Then scroll down to the Transactions associated with the Original Payment and select create a refund.
This will create a refund.
1. Go back to the main page and you will see that the invoice has an open balance.
1. You either need to cancel the subscription in Zuora using the first day of the service period to be refunded or remove/update the product that is to be refunded.
(Depending on the reason for a refund, the client canceling the subscription or they purchased incorrectly)
1. Create a bill run for the subscription cancellation/amendment.
1. Make sure that the credit invoice amount matches the invoice total.
1. Post the invoice and then go to More and select Transfer to Credit Balance.
1. Now go to the original invoice and go to More and select Apply the credit balance.
Make sure the credit balance of the account is 0.
1. Go into the Salesforce account and find the original opportunity and clone it.
(You can click on the CRM link in Zuora account)
1. In the cloned opp you need to scroll to Refund opp Source and select From Finance and save.
1. Make sure the refund opp is the same Opp Owner as the original Opp.
1. Scroll down to invoice number and put the credit invoice information here.
1. Next make sure that the amounts are a negative amount for the following sections: Renewal ACV, Renewal, and Amount.
(if they are not negative change them to be by putting the “-” in front)
1. Scroll to the Churn section and enter the following information: Churn Type, Churn Month (this will be the date you processed the credit), Churn ACV (this is a positive amount from the credit invoice), and Churn notes (copy the ticket link or chatter link).
1. Go back to the main page in Salesforce and look at the opportunities and make sure that the refund opp has a negative amount and it matches the amount of the original opportunity.
1. Inform the customer that the refund has been processed.
 
### Handling Tax Exemption When Processing an Opportunity 

* Save the Tax Certificate in Google Drive under Tax Exemp Certificates Tax exempt certificates
* Save the Tax Certificate by the customer’s name and add Tax Certificate at the end
* Once the Quote Object is pushed through Zuora confirm the following sections are filled out under the Zuora Account:
   * Tax Exempt: Yes
   * Certificate ID
   * Certificate Type
   * Issuing Jurisdiction
   * Description
* Check the Zuora Subscription under “More Preview” and confirm, the tax wasn’t issued
* While adding tax exemptions to accounts where the invoice has already been processed the invoice will need to be credited for the full amount (not tax amount only).

### Invoicing: Auto-Renewals

1. Download the `Accounts with Auto-generated Renewal Amendment report`
1. Copy the subscription number to Zuora and search
1. Click on customer name and open in a separate tab
1. Click on Subscription number and open in a separate tab
1. Go into the Zuora subscription, click “more, Preview”
1. Confirm there’s a “Preview Invoice” for the next renewal period
1. On the Account page in Salesforce, look for any cases, activity history or chatter that needs review
1. Go back to the Zuora Account and process the renewal
1. Click create bill run
1. Click on the BR#
1. Click invoice number once it loads
1. View invoice, then post it
1. Click the invoice number under generated invoices
1. Click more, then Process a Payment

If the payment goes through, go to the existing renewal opportunity:

   * Click edit
   * Change stage to Closed won
   * Click Close Date
   * Under subscription info: change start date (should match the real subscription date, may not be current date), opportunity term should be 12, click auto-renewal
   * Under Booking Info: Add the amount of the renewal to Amount, click Web Portal Purchase
   * Under Invoice Info: add Invoice Date, Invoice Status: Complete, Invoice Entity, invoice number

If the payment doesn’t go through:

   * Unpost invoice
   * Cancel invoice
   * Create amendment to reverse auto-renewal under terms and conditions and change to current year
   * Go to the CustomersDot and downgrade the product to “free”
   * Go to the CustomersDot
   * Search by the customer’s email address
   * Right click “GitLab Groups” (Open in a New Tab)
   * Downgrade the Plan to free
   * If not possible reach out to Support

### Cash Collections

* Zuora generates a friendly reminder 7 days before invoice due date
* Zuora generates automatic payment reminders at 7, 20, 30 and 45 days after invoice issuance
* Additionally AR team contacts customers with manual reminders
* When an invoice reaches 30 days old an escalation email is sent to the account owner in sales.
* When an invoice reaches 60 days old an escalation email is sent to the account owner in sales, the regional director and the CFO.
* At 90 days old the account is put on support hold. The Billing specialists update the account in Salesforce and the information gets synced into Zendesk for the Support team.
* At 120 days old the account is put on credit hold and orders for that account can no longer be processed.
* In exceptional and rare cases, if a customer on credit hold is to be invoiced for new service, a signed promise to pay document has to be received and approved by the Billing Manager.
* At 150 days old the account is sent to collections for recovery.
* Self-managed accounts that were cancelled before the end of term will be put on credit hold and reviewed before another purchase.

### Month end reconciliation:

1. Check AR sheet for minus amounts (balance that was not transferred)
1. Check if all opportunities were processed for the previous month (if not and they’ve been submitted before month end they'll need to be processed)
1. Vlookup between invoice register and closed won opportunities to create missing items
1. Note: the missing invoices will need the closed date of the reconciled month
1. Fill out all missing info on closed won opportunities - invoice number, entity, start and end date
1. Check closed won report for Opportunity Owners - this should be sales team members
1. Re-run the report in Salesforce
1. Sort the report by Account Name
1. Note total of the closed won opportunities report
1. Check Zuora for any invoices in draft and post them if that should be the case
1. Prepare reconciliation document - clear data from previous month, add invoice register information, sort invoice register by Account Name, add Salesforce data
1. Filter out EDU opportunities
1. Reconcile based on invoice register
1. Recon based on closed won report (do the vlookup based both on opportunity id and name)
1. Add the closed won but not invoice opps on the Salesforce side of the report manually
1. Create separate tab for every month in the final sheet
1. For any items from previous month end reconciliations add opportunity info on SFDC side
1. Keep the amount on these 0 (variance should stay as is)
1. Tabular report add to report through G-connector
1. Add tabular report amount to the reconciliation sheet
1. Add explanation for manually added opportunities that were not invoiced yet
1. Once reviewed add confirmation on Deal Desk month end close issue

### Any manual updates to invoices concerning invoice templates should go through Legal.
