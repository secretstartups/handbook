---
layout: handbook-page-toc
title: "Quote to Cash"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}




**Introduction**

The quote-to-cash (QTC) process encompasses customer account management, order fulfillment, billing, and accounts receivables functions. It considers the steps taken by sales operations team to configure a quote, through to when payment is received from the customer.

**Applications Used**

* [Salesforce](https://about.gitlab.com/handbook/business-technology/tech-stack/#salesforce) 
* [Zendesk](https://about.gitlab.com/handbook/business-technology/tech-stack/#zuora-revenue)       
* [DataFox](https://about.gitlab.com/handbook/business-technology/tech-stack/#datafox)    
* [Shopify](https://about.gitlab.com/handbook/business-technology/tech-stack/#shopify)                                                
* [Zuora](https://about.gitlab.com/handbook/business-technology/tech-stack/#zuora)                                               
* [Zuora Revenue](https://about.gitlab.com/handbook/business-technology/tech-stack/#zuora-revenue)
* [Xactly](https://about.gitlab.com/handbook/business-technology/tech-stack/#xactly-commission-expense-accounting-cea)
* [Netsuite](https://about.gitlab.com/handbook/business-technology/tech-stack/#netsuite) 

It includes the following sub-processes:


## 1. Customer Account Management and Conversion of lead to opportunity
 
[Link to Flow Chart](https://docs.google.com/presentation/d/1mq94fgmWprwDUTALQr1mOH7euYBXc9DBoWjB-kN7NJk/edit#slide=id.g7a757d16b1_0_0)

Leads are generated from various sources like campaigns, events, trade shows, road shows, sponsor meetups, inbound traffic for a 30-day trial version, etc. Customer Account is created in Salesforce when the lead is assessed as qualified.

Accounts, contacts and opportunities are usually created by a salesperson from the sales team. However, it is the responsibility of the Sales Operations team to review all the creations and assist salespersons in creation if required. 

The [sales operations team](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/) reviews the transaction and identifies if it is a new, upsell or renewal transaction and creates an account only if needed.

At the time of account creation, the Legal team reviews the transaction for trade compliance issues and ensures not selling to a restricted country.

The Sales Operations team reviews if the transaction is with a related party and flags the transaction accordingly. 

[Process steps screenshot link](https://docs.google.com/document/d/10WANQY2YkODwPXtr1JuxcAYhLc7Twk2x8-8RMmaRUjM/edit)

<br> 

**1.1. Customer account can be created in the following [ways](https://docs.google.com/document/d/10WANQY2YkODwPXtr1JuxcAYhLc7Twk2x8-8RMmaRUjM/edit):**


- **Creation of customer account in Salesforce**

  - Select [“New” option ](https://docs.google.com/document/d/1KviCaYA4wN0eOsLpZZ3SeFXaBt9ATNC6Koi8uWC2Hg4/edit)from the Accounts tab in Salesforce.

  - Select [account type](https://docs.google.com/document/d/1iT-dIDSotSDCiI2JauivAW7SD5n8G_Tye0dhHGIJ2VI/edit) for the account to be created and select “continue” option. The following are the various customer account types;<br>
<ins> Customer</ins> - Former Customer, Integrator, Partner, Prospect, Prospect Partner, Prospect CE <br>
<ins> Reseller</ins> -  Authorised reseller, former reseller, prospective reseller, unofficial reseller

  - Update the [account information](https://docs.google.com/document/d/1NyQVMljwhBPttOVkXuDzuDL_KVapjPQ9wSGhmW5YxRk/edit) in the account creation page. Account information is sourced from the lead details recorded during the lead generation stage.<br>
Details such as Account name, Parent Account, Account type, Employees, GitLab plan are to be updated. 

  - Select [“save” option](https://docs.google.com/document/d/1JbPiJAAApwwwxcWjDTuolK4zzfL3cAd58W5fkZg5VMk/edit). Customer account is created.

   ***Controls being implemented: QTC.C.01***

- **Creation of customer account from Data fox**

  Data fox provides the sales representatives various information on leads such as the number of employees, address, revenue, funding, etc. The potential leads are selected from Data fox for the creation of customer accounts. The customer details for selected leads are auto-interfaced from Data fox to Salesforce upon clicking “Sync” (on a real-time basis) and the customer account is created in Salesforce.

    - Search for [lead details](https://docs.google.com/document/d/1Sn3GZVS9icr27U0Tg0gtXaVObp5ZdJXl0XAE1QdTp9c/edit) on Data fox.

    - Select the [“Sync” option](https://docs.google.com/document/d/1_9-DyhMQODEHCz7VWHfkcRo3zst1jgleZ6l3byLX_wk/edit) in the lead page. Lead details are auto-interfaced to Salesforce and a customer account is created.


- **Creation of new customer account from Web portal**

  On purchase of subscriptions by customers from the web portal, the customer details are auto-interfaced to Salesforce on a real-time basis and the customer account and opportunity are updated in Salesforce. The opportunity name specifies that it is a [“Web-direct” order](https://docs.google.com/document/d/1E1swy8zGW7Xz_lEDqqcnRn359aZAQVnrCIqB95DZdKQ/edit).

   ***Controls being implemented: QTC.C.02***


Refer [this page](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#creating-accounts-and-contacts) for more details.

<br>

**1.2. Conversion of lead to opportunity is updated in Salesforce by the Sales Operations team.**

- **Creation of new customer account (based on lead details generated) and conversion of lead to opportunity for customer account created**

   - Select the lead and select [“Convert” option](https://docs.google.com/document/d/1XgvDxIQpfeZRE9tbKX6plrPAiGJlbZTpc65lxTP6ZXM/edit).

   - Select “[Create New Account](https://docs.google.com/document/d/1kACdT6wi-jpIVoFj_6x3eK3az3A5ypzYcSR1mWoaRLc/edit): [Account Name]”.

   - Update the [opportunity name](https://docs.google.com/document/d/1zFtMpgHDflS8haK7NmZ65LVt4dBYVoDEKAy8QVSYqQM/edit).

   - Opportunity gets [created](https://docs.google.com/document/d/137EH3jxPloxpiB60VYJuRBPni1XIPOR9onVwnt6KBjA/edit) with customer account details.

   - Opportunity stage is subsequently updated by the sales operations team. The various stages of an opportunity are shown [here](https://docs.google.com/document/d/1cwoL5fHHR-O-hnyC446dBB9FOsD7ELcwsfEfaHh3Px4/edit).


- **Conversion of lead to opportunity for existing customer account**

   - Select the lead and select [“Convert” option](https://docs.google.com/document/d/1QnTqjL0M-jTAhUkQgNsPBB1stCMBi5-a8wVDd-SuhEs/edit).

   - Select “[Attach to Existing](https://docs.google.com/document/d/1JOnyL0XpSBA6arzH4vXGz3ISlnNwX8f5MyN-zIfGeGc/edit): [Account Name]”.

   - Update the [opportunity name](https://docs.google.com/document/d/1mTQHnFi532JulAkuNkBld9if6bFzOaxF92akhr4iETE/edit).

   - Opportunity gets [created](https://docs.google.com/document/d/1uJYoubhta1AcEQi-VqCuBzV7lR9GHwPHx1OSoPehsgQ/edit) with customer account details.

   - Opportunity stage is subsequently updated by the sales operations team. The various stages of an opportunity are shown [here](https://docs.google.com/document/d/1ay_6ElBs76PYRKUrTyCLxCl-eWU_bFydFGxOCZiVoX0/edit).

Refer [this page](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#submit-an-opportunity-for-booking) for more details.

<br>

## 2. Price Master Management


[Link to Flowchart](https://docs.google.com/presentation/d/1uOKDBA5cl0cbpfVXfJC3ODpBznNOmNnidvJzjsVOhvE/edit#slide=id.g7a74f9b049_0_0)

**2.1. Creation of price master for product/ service**

Price masters are created in Zuora for new products and services by the Director of Revenue based on the approvals obtained from the CEO, CFO and CRO through a GitLab issue.  Once the new product is set up in Zuora by the Controller, it is reviewed and approved by PAO through a GitLab issue.

- In Zuora, [select “Product catalog”](https://docs.google.com/document/d/1P_OHpD6mS7UFVVfIA-mXNwB76oxMTEVWLg7cEImlVw8/edit).
 
- Select [“Add new product”](https://docs.google.com/document/d/1CG2oH4vp-aUNMRnrWZmSsvyF-E4rxsardfh-mrhNsQ4/edit) in the product catalog.

- Update the following [details in the Product Information section](https://docs.google.com/document/d/1htNJ-TytcwBcIhjJxVvbDy0jY77xdSB_1edmKZs8Q5M/edit) and select “Save”.<br>
  Name, Description, SKU number, Effective start date and End date, Category (The details are updated based on the approvals obtained for the new product or service).

- New product catalog gets created. [Status](https://docs.google.com/document/d/11LW8tBGLbrWn21jhdUkHKFW9zzZ-1QFUZTksCHJQH8M/edit) will be “Active”.

- Under the rate plans section, [create a new rate plan](https://docs.google.com/document/d/1x3kywZTcyEeo2eEDO8N3ORZCONwh1AWm-1-r_wP-P8Y/edit) by updating the following details and select “Save”.<br>
  Name, Description, Effective start date and End date (The details are updated based on the approvals obtained for the new product or service).

- Update the Charge name, description, Charge model (Per unit price), List price, Default Quantity and the timing of the [charge fields](https://docs.google.com/document/d/1No2gZO5BkU-YQXzFpfEhUKu_DXJp9iEmFkTNz_13lkk/edit).

- Update the [revenue recognition rule](https://docs.google.com/document/d/1mATP6LI3znucWRaY-3gYZMtRhVrpIvgf1o_yu8a5Ltc/edit).<br>
  For subscriptions – Select “Recognize Monthly over time”<br>
  For professional services – Select “Manual recognition”

- Update the [Taxation mode](https://docs.google.com/document/d/1zSEXgNABoWojUvfBo-n-iJTqVjJN7IQUTdvjNWn1Cjc/edit) (tax inclusive/ tax-exclusive - prices approved are usually tax exclusive)  and Tax code of the product (tax code of the product is selected based on the nature of product and is based on the tax codes defined in Avalara) and select “Save”.


**2.2. Revision of price master for product/ service**

Revision of price masters in Zuora for existing products and services is done by the  Director of Revenue based on approvals obtained from  CEO, CFO and CRO through a GitLab issue.  Revisions to products setup in Zuora carried out by the Controller are reviewed and approved by PAO through a GitLab issue.

- In Zuora, select “[Product catalog](https://docs.google.com/document/d/1knW5volmycAOldR6T4qSctu2LdsaUbqhhKrNfbs7UKw/edit)”.

- Select the [product to be revised ](https://docs.google.com/document/d/1V2XE266kxL0AI_SO0QdTKFbcpgBFtP5VxR6z_A7VZzE/edit)from the product catalog.

- Select “[edit](https://docs.google.com/document/d/19E4-bOXkqRk09J0g9NHLQguCRMKLGqiq-yDcdMYV1wc/edit)” under the Rate plans of the product.

- Update the [List Price](https://docs.google.com/document/d/1Hx0PBiL8RrdWrToQrU86MaVhpjFR_1SbuA9yRzmDMek/edit) of the product.

- Click [“save” to update](https://docs.google.com/document/d/1CDYyFdT6VmOQj7WlERvfxgP9SayH9pu-wBK7dyjpNDM/edit) the revised price.

***Controls being implemented: QTC.C.03, QTC.C.04***

  <br> 
   
## 3. Quote Creation

[Link to Flowchart](https://docs.google.com/presentation/d/19VuhpfPQXzCQfXMTMDfZrhkUuB2RkGFO7vq8JsPC0YU/edit#slide=id.g7a73fc52c4_0_0)

On finalizing an opportunity, a quote is created in Salesforce by the Sales person with details of product/ service sold and sale value. Sales operation team assists the sales team as and when needed to create a quote. [Screenshot link](https://docs.google.com/document/d/1fiJ9_3Cxocwxf0cisgTdt7b8PFjpA1r8_J669soXiGw/edit)

- Select the opportunity and select [“New Quote”](https://docs.google.com/document/d/1A21Cv3gn7m9XIxqoQNWQgLpl7XxOZcbvA5OA_pmQTMY/edit) on Salesforce.

- Select the appropriate applicable quote template. [Update the quote name](https://docs.google.com/document/d/1BgeHkBE0sYN1z_-4zj5OKtrtsy6HrlnV3Zb4nROCwII/edit).

- From the list of products and services (based on the product price masters defined in the Price master management process, select the [subscription plan/service](https://docs.google.com/document/d/1t4U1tRR4jAYmtlY6sEBDNt2UZlcePeyiqIKSgg6rYTQ/edit) chosen by the customer.

- [Update ](https://docs.google.com/document/d/1ic9Uw8nKpushrAWxGPoe3EwGqp4iplcr5gukIX9SJgo/edit)the quantity, effective price (USD), discount and total (USD). The list price is based on the price masters defined as in the Price master management process. Any changes made to the effective total price at this stage will be reflected as a discount.

- Obtain approval for the discount offered as per [approval matrix](https://docs.google.com/document/d/1-CH-uH_zr0qaVaV1QbmVZ1rF669DsaUeq9w-q1QiKPE/edit?usp=sharing).**(QTC.C.05), (QTC.C.07)**

- Select [“Save” option](https://docs.google.com/document/d/1fZvoOluaGMT1AYLaww56q6WtxY2frT7-ROslkOozU2k/edit). Quote is generated in Salesforce.

- [Generate PDF](https://docs.google.com/document/d/1bGe58cHGOOvpIibKGZJoO3pCXcE1UFClO5BuanemXmc/edit) copy of quote from Salesforce by selecting “Generate PDF Doc”

- If a customer Purchase order is available then, the sales operation team matches the quote and order form generated.

- Generate the PDF copy and get it signed by a GitLab authorised person before it is sent to the customer for signature.

- Send the PDF copy generated from the Sales force to Customer for acceptance and signature. It is the Sales Operations team's responsibility to ensure that all Order forms are duly signed by the customer.

- Upload the signed quote received from customer in Salesforce by selecting [“Add Google Doc” option](https://docs.google.com/document/d/1L-320HDzouaMF12O68s47sa0bzu-1kBgU9sLZEPvLd0/edit) under “Google Docs, Notes & Attachments”

- Recheck the quote details and [submit for approval](https://docs.google.com/document/d/1dd4ymS7iJP59joU3ghdcsUS297D-xipUDDh16VV8SAA/edit) of the deal desk as part of the invoicing process. Sales operations team ensures that the quote is complete, with all approval documented for changes to standard terms. The Sales operations team helps the Sales team in gaining approval from the deal desk.

  [Sample Statement of Work](https://drive.google.com/open?id=1IqQHMCNQEyWDJ5cNCNtWNKQmQnVVob5d) <br>
  [Sample Master Service Agreement](https://drive.google.com/open?id=1tkc3-a-MedlfFBQC_0KOCL3dpXuBek5h) <br>
  [Sample Order Form](https://drive.google.com/open?id=1fXWJTXHI_oMzbopGapAQtn6vmJtdRIYA)


  For the order forms not signed by the customer,  PAO and VP of Legal - Commercial, IP & Compliance or CFO reviews the PO to ensure no terms in PO counters to the terms mentioned in the order form.**(QTC.C.36)**

- Once the opportunity and quote are complete and all the required approval is obtained, the opportunity is sent to the Deal desk for approval. The sales representative clicks on the “Submit for Approval” button on the opportunity.

- Once the sales representative submits the opportunity for Deal Desk approval, Deal Desk review is initiated. The opportunity submitted for approval will flow into the report shown [here](https://gitlab.my.salesforce.com/00O4M000004e0Dp) which is used by deal desk to monitor opportunities submitted for approval.

-  Deal desk analyst to assign themselves to review the deal via the [“Deal Desk Analyst” opportunity field.](https://docs.google.com/document/d/1kUnoxCXcVBLgaMBjxk-j-8TXXFiTrBUrZQtQNrVVzn0/edit)

- Deal desk analyst to review the opportunity for per the [deal approval process](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#deal-desk--finance-approval-workflow).**(QTC.C.40)**

- If the Deal Desk analyst approves the opportunity based on the above criteria, the “Approval Status” field will update to “Deal Desk Approved”. The opportunity will remain in stage “7. Closing,” but will route to the billing team for finance approval.

- Deal Desk to approve via the module shown [here](https://docs.google.com/document/d/1cjFQ5E0khjN9EckWqcCUyLGA8vMjgHzsaNmIEP9GrYk/edit), (which shows exactly who approved and at what time).

- Deal Desk analyst to [click Approve/Reject](https://docs.google.com/document/d/1dd7T3OWuqX6ZTiNN6KXvwgVfJ1AU6xIv0mGCrf-t0Do/edit), a new page is opened in which Deal desk analysts need to Approve or reject along with comments.

- Once approved by Deal Desk, the opportunity field [“Approval Status” ](https://docs.google.com/document/d/1r8n01JXZlWEqEhqFMDBVFo4wN-YdHdi3GLPubCIy3OI/edit)will reflect “Deal Desk Approved” and the stage is still “7 - Closing”.

- At this stage, Billing/Finance receives the notification in their [report](https://gitlab.my.salesforce.com/00O61000003iSpN).  (Refer [“Invoicing to customers”](/handbook/finance/sox-internal-controls/quote-to-cash/#6-invoicing-to-customers) for process on approval by Billing Team).

- Once Deal Desk has reviewed and approved the transaction, Billing team will review. If the opportunity is approved by Billing team, the stage will update to “Closed Won” and the deal is officially booked. An approval email will be sent to the opportunity owner and a Slack message will appear in the “wins” channel and the "wins-key-deals" channel where applicable.

- Once the opportunity has been approved, the Billing team executive receives an email from Salesforce to push the Quote to Zuora.

- The Billing team assignee now goes to the Quote and clicks on the “Send to Zuora” button.**(QTC.C.39)**

   **Controls: QTC.C.06, QTC.C.08**

- The Quote is now sent to Zuora for billing.

Refer [this page](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/) for more details.

   <br>
   
## 4. Reseller Management

[Link to Flowchart](https://docs.google.com/presentation/d/1xZRkGygzMQkOXSqb1cJnvU7s4oVmwzTHFWgqM7D6_88/edit#slide=id.g7a76194e77_0_0)

GitLab enters into contracts with resellers to sell the products. The sale rates for the resellers are based on standard discount rates, agreed in the contracts.[(Process steps screenshot)](https://docs.google.com/document/d/168xu-tactXINGD7Gej_OoTvPNMFAUu70NndWyPC713g/edit)

Resellers are further classified into 2 classes based on their experience and association with GitLab.Follwing is the classification:

|                   Open           |             Select                                         |                                                                                    
|:--------------------------------|:----------------------------------------------------------|
| Qualified organizations who have sound business plans and qualifications. They have completed our training and review. | Organizations that have met our highest bars of training, services capabilities, and customer success. Must provide unique value. These are the partners that we invest the most in and must be invited into the Select track. |


For details regarding requirements and benefits please visit: https://about.gitlab.com/partners/program/  


Deal registration and closing a deal through Resellers:


**4.1.  Identifying potential resellers**

**Public sector resellers and distributors**

The prospective resellers and their evaluation and contracting statuses are tracked on the Salesforce Account record. 

- Partners submit an application at partners.gitlab.com. This triggers a notification to CAMs and creates an account in Salesforce with Partner Status = “Prospect”.   Channel Account Managers review the applications in Salesforce and determine if they want to proceed with onboarding the partner.

- Evaluate the prospective reseller based on the [BEPIC methodology](https://docs.google.com/document/d/1LAgvpZwpy02pY2ZLa2yU6m2ZyZyj2eA6bOZq5yqV8b0/edit).

- If the prospective reseller passes the reseller evaluation, share the draft of the reseller agreement by using the [Legal Request](https://docs.google.com/document/d/1cY7H2zi5Mr0FNrHqAdE7hcMlpr2pwN3bBfetGUj1sEM/edit) on the Salesforce account. The reseller, on accepting the terms in the agreement, signs the reseller agreement. The reseller agreement is approved per the approval policy and the [latest approval matrix](/handbook/finance/authorization-matrix/). 
	
- Update the account for the reseller in Salesforce.  Set the [Partner Status](https://docs.google.com/document/d/1sUrXhyRG5mYeyJqerVz-WdVkDalgKycB-h7QVIxp57Y/edit) to “authorized” to give the partner access to register deals in the Partner Portal. **(QTC.C.09)**

- Upload the signed contract in Salesforce in the Reseller account page by selecting [“New Contract” under Contracts section](https://docs.google.com/document/d/1z7Umq2ZWxBkO5dl_8Byq9UOGdeUaPY3zJlXI-PdRBZg/edit).

- To enable creation of orders from resellers, update the reseller as a partner in Salesforce by selecting the [option “Enable as partner” ](https://docs.google.com/document/d/1KnGX6cqQI762xFNtGL6EWtfAG1O9kknjdj5bd3opDpk/edit)in the reseller account page.

- Update the [bank details](https://docs.google.com/document/d/10F5Rm24EvTMcyjxKApK4afDubT08qjnQC8-ExKNnXrw/edit) of the reseller on the reseller account page for future payouts.


**Private sector resellers**

The prospective resellers and their evaluation and contracting statuses are tracked on the Salesforce Account record in a Google Sheet. 

- Partners submit an application at partners.gitlab.com. This triggers a notification to CAMs and creates an account in Salesforce with Partner Status = “Prospect”.   Channel Account Managers review the applications in Salesforce and determine if they want to proceed with onboarding the partner.

- If the prospective reseller passes the CAM’s evaluation, share the draft of the reseller agreement by using the Legal Request on the Salesforce account. The reseller, on accepting the terms in the agreement, signs the reseller agreement. 

- Upload the signed contract in Salesforce in the Reseller account page by selecting [“New Contract” under Contracts section](https://docs.google.com/document/d/1ZO9dWvX0-FzRqQnkorLoxzkyQusQ4gVCmw92u3AhoSk/edit).

- To enable creation of orders from resellers, update the reseller as a partner in Salesforce by selecting the [option “Enable as partner”](https://docs.google.com/document/d/1LTfW3oisu6hQjhC3vPlod_B-7rSkalOA85lxBRSjZes/edit) in the reseller account page.

- Update the [bank details](https://docs.google.com/document/d/1cL8QiEJBBGXbNst-4oLKDdhExEvohj55RXvXWc_MjnI/edit) of the reseller on the reseller account page for future payouts.


**4.2.  Creation of opportunity and quote for deals registered by a reseller**

Reseller, on identifying a customer opportunity, [registers a deal](https://docs.google.com/document/d/1mMvnTW2hzYYxDa9S5Usg98oqCg0QQd_vJDN71lfIdgQ/edit) in the Partner Portal (partners.gitlab.com). 


DEAL REGISTRATION INSTRUCTIONS FROM CHANNEL OPERATIONS:  https://docs.google.com/document/d/1_4yqx9e6Q0043awYeKyfbw_61uXhBW5BURwxXVfiQOw/edit?usp=sharing

- On submission of the deal registration form by the reseller, the registration details [auto-populate in the Google Sheets](https://docs.google.com/document/d/1yzxtQwZfuZKUK4PqEQ7pLzCQJc0tc2Gppm9qTjb1_hw/edit) maintained for tracking deal registrations. 

- Create an opportunity in Salesforce for the deal registered.  (Refer [section 1](/handbook/finance/sox-internal-controls/quote-to-cash/#1-customer-account-management-and-conversion-of-lead-to-opportunity) for a process for opportunity creation)

- The deal is evaluated by the Sales team based on the [Deal registration approval workflow ]( https://drive.google.com/open?id=1hqjSGoXB8tOVumNYALYJ8exS4LueD6yy ).

- The sales team also accordingly [updates the stage](https://docs.google.com/document/d/1Jp92yENGWsGdFz0gEWoC_3dm5QmJS-E9FG2ZBirpHmQ/edit) of the opportunity in Salesforce.

- On finalizing the opportunity, the sales team also creates a quote in Salesforce with details of product/ service sold and sale value. (Refer [quote creation process](/handbook/finance/sox-internal-controls/quote-to-cash/#3-quote-creation))


The following additional details are to be updated for creating a quote for reseller:

1. [Authorized discount details](https://docs.google.com/document/d/1X-4xME79n5KIB_HwlPsJty-ySZbYNmwf_RQtFaX3ULY/edit) of the reseller based on the signed contract. ***Controls being implemented QTC.C.34***

1. Reseller to be [updated as the invoice owner](https://docs.google.com/document/d/11Zsl_Ea5U74dLICcNFLOsnsKRfKpEgCiP3zO31ju2J4/edit).

1. End user name to be updated under [“Sold to Contact”](https://docs.google.com/document/d/1RwWDTZwjnFzSeEch3nXccQzfl99Qsbb0HbbkevbWoPY/edit) (Based on this update, license details will be shared with the end-user.

1. End user’s acceptance of licensing agreement to be updated as required ([Field “Click through EULA required” ](https://docs.google.com/document/d/1Yw6byOu1VaSZuFA5Pjl8A40HiuN_Ak7dOi_-JdQlHak/edit)to be updated as “Yes”).

[Sample Reseller Quote](https://docs.google.com/document/d/1R7aRUa-1f7Os5A541Gr39OZM_y56VWvWRhuMFfWHllQ/edit)

For further details, refer /handbook/resellers/#gitlab-quote
   
   <br>
   
## 5. Contract Management

[Link to Flowchart](https://docs.google.com/presentation/d/194cBXx599t_3z1KyEV9kbWE8-5uu9dglA37mI8QSG5o/edit#slide=id.g7a75e96678_0_0)

Contracts are entered into with customers for selling product subscriptions and for providing professional services.

The Standard Order Form, which forms a part of the contract with customers, has standard terms. When there is a change from the standard terms or when terms suggested by the customer are to be included in the service agreement, the same is to be reviewed by the Legal team as per the process detailed below.

**What constitutes a non-standard order form?**<br>
Any changes to  (a) payment terms (Net, Annual Pay requests), (b) discount, (c) non-standard Subscription type (Evaluation / Free Subscriptions), (d) If subscription start date is >30 days post close, (e) ramped deals, (f) Subscription term is not 12, 24, 36 months, (g) billing terms (i.e., VMS portal), (h) SLA and SLA credits, is requested, will constitute a non - standard order form.

**Legal approval for greater than $ 25000 Opportunities:**

If the Opportunity meets the dollar thresholds:
  - Greater than $25,000 (USD) Opportunity to review edits on GitLab Agreement template(s)
  - Greater than $100,000 (USD) Opportunity to review Customer template/agreement version(s) The Sales Team Member will follow the below workflows to make requests for, (i) editable version(s) of GitLab Templates, (ii) engagement of contract negotiations, and (iii) assistance on general questions related to a Customer / Opportunity.

No modifications are allowed if the opportunity value is less than $ 25000.


- **Step 1: Request editable version of GitLab Template:**

   - Click ["Legal Request"](https://docs.google.com/document/d/1GDbdLZHVxnuspQJCRYBv5UCsulhH8eLiOWt1OaZFH78/edit) (located at the top of Account and Opportunity SFDC layout).

   - For "Type of Legal Request" select ["Request for GitLab Agreement Template"](https://docs.google.com/document/d/1JQ5I4NW3DJtcNN8YqRC_Ihdh3ImAfkUIiL53mUUecFw/edit).

   - For "Type of Contract" [select the Template desired](https://docs.google.com/document/d/1AxUAV9Urs0I543SWGbUpHwoXIc9KDzez0jK5rbs-AZo/edit). For example, for a Non-Disclosure Agreement request, select "NDA".

   - For "Contract Source" select[ "GitLab Contract Template"](https://docs.google.com/document/d/1Bq0m5JXcmtZOyKGieGJOmARqLEsW3LGNDtj0RgcCgKI/edit).

   - Add any [additional notes](https://docs.google.com/document/d/1OU-zQ2iz-_nfJkkXUmU9cPRfKKILZZ8vv7h6oD2Zw_A/edit) that may be helpful for GitLab Contract Manager / Legal and hit "SAVE".

   - The information provided will [open a "Case"](https://docs.google.com/document/d/1Lsd8ArKTQUz1ehzBBauD6_Q1Y-TJYkBGmYZYkO2HKHA/edit), which will automatically be assigned to a Contract Manager / Legal Member.

   - The Contract Manager / Legal Member will[ attach the requested template](https://docs.google.com/document/d/19WtLHvdi0EOUMr1drOjPn5xCK8GL6pDKZn8ek1GgaZo/edit) and tag the requesting Sales Team Member.

   - The Sales Team Member will take the template version and provide to the Customer. <br>
      - NOTE: Sales Team Members are responsible for communication(s) with Customers. This includes providing back GitLab templates and negotiated terms.
<br>

- **Step 2: Request for GitLab review of Customer edits to GitLab Template, OR, Review of Customer Agreement Template**

On Customer Account, OR, Opportunity:

   - Click ["Legal Request"](https://docs.google.com/document/d/1k3Z_51g846k7KXT2rwc81GyM5zYrMoctwssYpzQfIm0/edit) (located at the top of Account and Opportunity SFDC layout).

   - For "Type of Legal Request" select ["Contract Review"](https://docs.google.com/document/d/1Ub5KsFmLmnBXM9nfjykFmDX0JrOPKznEvL2grAqx32Q/edit).

   - For "Type of Contract" [select the type of Agreement / Template](https://docs.google.com/document/d/1YSwbOanFFxQn9mbm3j0OU7sGSvswUJ4LYGLwHzw--fk/edit) being negotiated. For example, for a Non-Disclosure Agreement request, select "NDA".

   - For "Contract Source" [select the applicable Agreement / Template Source](https://docs.google.com/document/d/1XKK-K2aRScT-Pb5C853k_z5HhOOru2KvZN84z6Gx7ZQ/edit) <br>
      - For edits to a GitLab Agreement / Template select "GitLab Contract Template". NOTE: Be sure the Opportunity size is above $25,000 (USD).<br>
      - To request GitLab to edit a Customer Agreement / Template select "Customer Contract Template". NOTE: Be sure the Opportunity size is above $100,000 (USD).

   - Add any [additional notes](https://docs.google.com/document/d/1ReNOoSt2tMVnl-2Pc6PqBN8hol6No1icilo_7HI_chI/edit) that may be helpful for GitLab Contract Manager / Legal and hit "SAVE".

   - The information provided will [open a "Case"](https://docs.google.com/document/d/1DTs9YONzXUgSJqlFHKMfMrn81SKjqieaAvSoWBzDnxI/edit), which will automatically be assigned to a Contract Manager / Legal Member.

   - The Contract Manager / Legal Member will [review](https://docs.google.com/document/d/1fntZWER3_cppEqGUXcA_3JsqSisbk7gl12oVWri2r2A/edit) the Agreement / Template and attach updated red-lines. **(QTC.C.33)** <br>
      - The Sales Team member will be alerted (via SFDC Chatter) to the Agreement being updated and ready to be sent to customer.

   - If another round of edits are necessary, the Sales Team member will [attach the Customer provided red-lines and tag](https://docs.google.com/document/d/1AbyQQGcr_uvqF-FOhAoO69PyAB_6UkwG62rJhx97qEs/edit) (via SFDC Chatter) the Contract Manager / Legal Member assigned.

   - The same steps will repeat until an executable version is reached. At which point, the Contract Request [Case will be closed](https://docs.google.com/document/d/1uMbhFeZdYZHAVmnfQzBuRDo3p8j3YCOg3AAorJXr3go/edit).

   - The Sales Team Member will follow the steps found at "Obtain Signatures" and attach the fully executed version to the Customer Account. NOTE: The above process may be used to also engage Contract Managers / Legal Members to add non-standard language to Order Forms.
  
   <br>
   
## 6. Invoicing to Customers 

[Link to Flowchart](https://docs.google.com/presentation/d/1aXyGUASe4KJHzwJ5cMV1U-6mTXSm1kNp9SlZ2O9MFwc/edit#slide=id.g7a74f30df8_0_3)

Following are the different scenarios under which invoicing to customer happens: 


**6.1. Invoicing for sales operations team assisted product sale**

Sales operations team updates the opportunity and creates a quote in Salesforce. The quote created is submitted for approval. The opportunity is first approved by the Deal Desk team and then by the Billing Team. Once the Billing team approves the opportunity as per [Approving opportunity checklist](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/Approving%20opportunities%20checklist), the opportunity is sent to Zuora by the Billing team.

- **Approving the opportunity and quote in Salesforce by Billing Team**

   - Select the subscription to be invoiced from the [Opportunity page](https://docs.google.com/document/d/1fEKyu5RxqloelvN8VbW9ZljiTUwFBHp20ZvTCznqrVk/edit) in Salesforce.
 
   - [Generate the signed quote/ order form](https://docs.google.com/document/d/16CGp2ZjnYAYUguCklkEqD4rDG58ywhP0d9UJiHMG2S0/edit) that has been included as a google doc attachment during quote creation process.
 
   - Verify the following in the signed order form.
      - Completeness of billing address, 
      - Correctness and completeness of account details of reseller (in case of reseller invoices) and
      - Approval of discount as per the approval matrix.

   - [Verify](https://docs.google.com/document/d/1R9gMomBvTvTAZo6gMP2dsoIFZHPXkitXk_Djlrq71L0/edit) whether the quote object created is as per the signed order form for correctness of rates, product selected and reseller/ customer details.

   - In case of resellers, verify whether the [discount is as per the deal approval matrix](https://docs.google.com/document/d/1-CH-uH_zr0qaVaV1QbmVZ1rF669DsaUeq9w-q1QiKPE/edit#heading=h.ag75fqu12pf0)

   - Verify if the [quote has been signed](https://docs.google.com/document/d/1hwktzpbhV0dYQjKVXnyzA90RxZ5bFcZN68uR33ClCgE/edit) by the customer. 

   - In case of sales made through resellers, check if the requirement for end user’s acceptance of terms and conditions ([“Click through EULA required”](https://docs.google.com/document/d/11JOdUttEPQrFOWPeZDntloQSCwHQV16IuGOq32kmg_w/edit)) is marked as “yes”. 

   - Approve the order in the [approval history section](https://docs.google.com/document/d/1MHL4pt5u5vdImYZxKcNWwiyuEwm4MCKRn1g7DBcoUfM/edit).
 
   - The opportunity is updated as [“Closed Won”](https://docs.google.com/document/d/1SyyfqB4ece7ZaOxSQNLxcwEcv6nkuXw7MlPh3lFU8so/edit) on approval of order.



- **Sending quote to Zuora by Billing Team**

   - In Salesforce, [verify the correctness of account information](https://docs.google.com/document/d/1b45PIK-yDX34MoHVDwCwtEYaYeJzqvmETsRZpWULoY0/edit) in the quote (Note both Billing Team and Deal Desk review the information).

   - Verify if communication profile for the account in Zuora is mentioned as [“default profile”](https://docs.google.com/document/d/1YeJ2sDxflq-SLyj6pl0XGWzNT-frc0e1dzKMMPvixII/edit).

   - Select “[Send quote to Zuora](https://docs.google.com/document/d/1cjflKK0y2kUU23D9GpvL5X8vo8UVU-O0M-otvPsvogo/edit)” option in the quotes page.


- **Raising invoice in Zuora by Billing Team**

   - From the customer’s account page in Zuora, select the subscription for which invoice is to be raised in Zuora and [verify with the signed quote/ order form](https://docs.google.com/document/d/1vVZ_EgOCeYlqKt_E_onxDpH_FrhUyDluN6Z5ZbpWQBs/edit).

   - In the case of Forex bills, [update the conversion rate ](https://docs.google.com/document/d/1JieZOeMGGShTc45FxJd-IxEoQ8ibDypUi2hPXFzcwrc/edit)(based on rates from Google search) in the customer’s account page under the section “Basic Information” and select the “save” option. In case of sales made through resellers, also update the conversion rates in the reseller’s account page. **(QTC.C.11)**

   - Select [“Create bill run”](https://docs.google.com/document/d/1LtMDKxnEyDiTA8lgtx9qvPrI-Jtdbd6FyQBA104deiw/edit) under the “Transactions” section in the customer’s account page. In case of sales made through resellers, the bill run is to be created from the reseller’s account page.

   - Bill run page is generated. Verify the details and select [“Create Bill](https://docs.google.com/document/d/1Y7RKrTAcxiC8RbaUcVUDvc_vUUrKxvjdP_-dmIVHNak/edit) run” option.

   - Select the [bill run generated](https://docs.google.com/document/d/10T90bXyI7-TJHxydGFh-NpTqopmqhES9HceQYJwVp5I/edit).

   - The draft invoice is generated. Select the [draft invoice ](https://docs.google.com/document/d/1mBeJt5SVNMMhMQx5aj-n3ip8HfUlHE50l4-umClHfGE/edit?usp=drive_web&ouid=111314924466435551734)by clicking the invoice number.
	
   - From the invoice screen, select [“View PDF option”](https://docs.google.com/document/d/1rq516SdmWj7BIMW7qmR7nDzUvDuHb-YHaIRwBk-ivg0/edit) to view the PDF of draft invoice generated.

   - [Verify](https://docs.google.com/document/d/1jV_qQwqdLi-Y31_hbQE1KSuDiYA2u7BaEzS6NN3mpKA/edit) the draft invoice generated for the correctness of billing entity, invoicing account and address, rates, quantities and invoice value based on the signed quote/ order form.

   - Post the invoice after verification by selecting the [“Post invoice” ](https://docs.google.com/document/d/1cAi6Qrn-dxDbb3RTo4xWOgLP-M9FtdEOq9GRc7KzI-8/edit)option in the invoice page.

<br>

**6.2. Invoicing for web portal based product sale**<br> 

[Process steps screenshot](https://docs.google.com/document/d/1RRWhgPOxuM5zbIqtd2-OingGnsuNspqKQiOLG3QgXhY/edit)

- [Opportunity](https://docs.google.com/document/d/10L2YhjUs2IyUkaLcfe6MtEWWfENFDZS_aQJsHisRLBY/edit) is created automatically in Salesforce based on orders placed by customers.

- The opportunity details are auto-interfaced from Salesforce to Zuora. Based on opportunity details interfaced, [the invoice is auto-generated ](https://docs.google.com/document/d/1XYt0qZasEZXclpQepdDP-tr9Wv40LVtGAcoP74rYjig/edit)in Zuora. **(QTC.C.13)**

<br>

**6.3. Invoicing for services** 

   [Process steps screenshot](https://docs.google.com/document/d/1cNsADMHGyMG2dU1A90lDmwEMH8k2qZ-0nlZl0nzYm2w/edit)

- **Approving the opportunity and quote in Salesforce**

   - Select the [opportunity ](https://docs.google.com/document/d/1FfAPw17uss7q5btmoyzwzvIzOg5IOWSoF7DOuhqBh7A/edit)in Salesforce

   - Select the [quote object](https://docs.google.com/document/d/1gQcfnlo6XIbSTmHY0aapfkcZbtWm2A-yx2-L5xDJeTA/edit) in Salesforce

   - Verify the following based on Statement of work 
      - Correctness of billing information. 
      - Amount to be invoiced (based on quote object) 
      - SOW is signed 
      - Cost estimate is referenced via chatter/attached on the opportunity by the Manager of Professional services.

   - Under approval history, select the [“Approve”](https://docs.google.com/document/d/1WEXtZFX2eonrhNRx3l2C8sDXbD9gh_CltxDTMDqMTOo/edit) option 

   - Opportunity is updated as “[Closed won](https://docs.google.com/document/d/1CKFwtNsf05uQqQjT8wkyK-VwkNCzUCG-h-jL9ZChtlc/edit)” in Salesforce on approval


- **Sending quote from Salesforce to Zuora by Billing Team**

   - Select the [quote object](https://docs.google.com/document/d/1o7ngzvdW1EFOZmzjwVGWHe1jd1jp4Xj9QJKblg8kd3Q/edit) in Salesforce

   - Select [“Send to Zuora”](https://docs.google.com/document/d/1NJ3DSDgJLzcrr3rFFvhim-71mO0o70gcRLr2PPfgNVw/edit) option in the quotes page

   - Preview the order and select [“Submit”](https://docs.google.com/document/d/1hZSwGqDmuS7e1Wuv4a-Hb_-70cLHNE94gljqcE6y3M4/edit) option

- **Raising invoice in Zuora**

   - From the customer’s account page in Zuora, [select the subscription](https://docs.google.com/document/d/1IQygcb4XTfYKPe3wNE78Cmwg6tsq3jkcNd5YNfqGxE4/edit) for which invoice is to be raised in Zuora and verify with the signed quote/ order form

   - In the case of Forex bills, update the conversion rate (based on rates from Google search) in the customer’s account page under the section “Basic Information” and select the [“save” ](https://docs.google.com/document/d/1mKM56DxIOJ0ZXgFKc8iPvFBwePpfoKUayE8bbPfzb4I/edit)option. In case of sales made through resellers, also update the conversion rates in the reseller’s account page. **(QTC.C.11)**

   - Select [“Create bill run”](https://docs.google.com/document/d/1L1uRzqwppa9vtoM6cDA4TOPx2HTQeas693K9OektHV4/edit) under the “Transactions” section in the customer’s account page. In case of sales made through resellers, the bill run is to be created from the reseller’s account page.

   - Bill run page is generated. [Verify](https://docs.google.com/document/d/1ewBcK04FnHgmkJmwtGoHPk4uN-0xYhWkQizOxafg2ac/edit)the details and select “Create Bill run” option

   - Select the [bill run generated](https://docs.google.com/document/d/1L0DmtgKZALh133En1sCm7DJ-NLlqKDkPJc1T_MlZNGo/edit)

   - The [draft invoice](https://docs.google.com/document/d/1_-rj3GHyiDgtmqruVYricjeO_iiU5mpguxN4PFIBpYo/edit) is generated. Select the draft invoice by clicking the invoice number.

   - From the invoice screen, select “[View PDF option](https://docs.google.com/document/d/1du3AeupTjT8g_5qd30VyVXxYSEoxm8B_KIvx0DH4J2I/edit)” to view the PDF of draft invoice generated

   - [Verify ](https://docs.google.com/document/d/1m9mSqpKE8DsS0nu4rLD2xLS1kMY_OHAOKByLMybFQMI/edit)the draft invoice generated for the correctness of billing entity, invoicing account and address, rates, quantities, and invoice value based on the signed quote/ order form. **(QTC.C.41)**

   - Post the invoice after verification by selecting the [“Post invoice”](https://docs.google.com/document/d/1076o9RdXlirxMPj9cpWXYk1ShIdT7V6xkXxyWvwRslQ/edit) option in the invoice page.

<br>

**6.4. Invoicing for auto-renewal of subscriptions**

[Process steps screenshot](https://docs.google.com/document/d/1mUK_tJCzB-feVIe67-Aal6vdwbRTF6RMkuHlAgRAWD8/edit)

When a customer opts for auto-renewal of subscription,  renewal invoice is raised on the due date. Zuora, on a daily basis, generates the list of renewal invoices to be raised based on the due dates updated in the initial subscription. The billing team raises renewal invoices based on the list generated from Zuora.

An [automated email](https://docs.google.com/document/d/19Oq-N7kH_zSiUhGCksyikr0y8dH3jcBnQs6aAFJH3Ho/edit) from Zuora is received by the billing team on a daily basis. 

The report contains the name of the account to be invoiced, subscription reference, start date and end date. For each of the accounts to be invoiced, the billing team manually creates a bill run in Zuora as per the procedure detailed [here](https://docs.google.com/document/d/10Nz45SeGHR4ooUZWwJgD8lnXm2MTTnWYeywd9bnMA2U/edit).

- **Review of subscription details**

   - In Zuora, [search](https://docs.google.com/document/d/1u8fwtFfYO16QR_kF94ZV8gG30eyCIJWiKL3_5F390B0/edit) for the subscription (using the search option), for which renewal invoice is to be raised. Select the subscription by clicking on the subscription reference.

   - In the subscription page, select “more” and then select [“preview”](https://docs.google.com/document/d/1OJIUutVhib5MXrJ9D6nvPnejdjx1L-8jv9MnC6Wc1mk/edit)

   - The details of subscription to be renewed (product, pricing, and renewal details) are generated in the [“Preview invoice”](https://docs.google.com/document/d/1wHhGJ4_PZEdnb09QErG-kKRxKop_KuYmazWPaX3ONYs/edit) section. 

   - Renewal invoice is to be raised only if the customer has not raised any tickets, email requests or cases for changing the subscription quantity. This is to be verified in Salesforce using the CRM reference. 

   - In the customer account page in Zuora, select the [“CRM Account ID”](https://docs.google.com/document/d/1pqvegtkmN9_8FXfceqVbp3FWPv2K22C-1JaVVOX7STo/edit) to navigate to the customer’s account page in Salesforce.

   - Under [“Cases”](https://docs.google.com/document/d/15omKfaaJrXTv0Jt_mti317tiGgKljSOBjknvTj8vzN4/edit) section, check if there are any pending cases **(QTC.C.14)**

   - Under [“Zendesk tickets”](https://docs.google.com/document/d/1WiffG7_p8lv4yBN7TSSMML-VT1-aw-ziKYqW75PJCC8/edit) section, check if there are any open tickets **(QTC.C.14)**

   - Under the [“Activity history”](https://docs.google.com/document/d/1DxS4PW9BruWhwt8U0YcjiNa_D9E92rq0qCaUAK6MYxo/edit) section, check if there are emails requests received from the customer for change in number of users. **(QTC.C.14)**

   - If there has been a request from the customer for changing the subscription quantity, the renewal invoice is not raised. The sales team follows up with the customer on the request and creates a revised opportunity and quote based on the customer’s requirement. **(QTC.C.14)**

   - Under the [“opportunities”](https://docs.google.com/document/d/1yIHfEYzsvNx2j1XAvVn8Rho3NkmMAvJcVMCTbcJIz5Q/edit) section, select the renewal opportunity. Check if a quote has been already raised by the sales team for renewal. If a quote has been already raised by the sales executive, the renewal invoice is not raised. Invoice is raised as per section 6.1 Invoicing for sales operations team assisted product sale for the quote raised.
  

- **Raising renewal invoice**

   - In Zuora, select [“Create bill run” ](https://docs.google.com/document/d/14KGAFoj9T03BwnbHdNTgh-RB1qOJDRQUGHpUWMGKJVs/edit)under the “Transactions” section in the customer’s account page. In case of sales made through resellers, the bill run is to be created from the reseller’s account page.

   - Bill run page is generated. [Unselect the processing rule](https://docs.google.com/document/d/1NCHkeMGo2L43fXXvY4pPqvr9M06y0DdHuSAWj_sTlsU/edit): “Automatically renew auto-renew subscriptions that are up for renewal”. (This is to avoid auto-renewals of other subscriptions of that customer)

   - Verify the details and select [“Create Bill run” ](https://docs.google.com/document/d/15ZumzUeLAsbpD2ZZswC2si8hUO48-trGkaR4mvHNZRI/edit)option

   - Select the [bill run generated](https://docs.google.com/document/d/1sQbm_FOFnnQFDO3OqHg_x5QX8lGnD7xk3clpGsoVhXs/edit)

   - The [draft invoice](https://docs.google.com/document/d/11MQanH9eRN-mhxQmFvsu1-Og3cwmccK0xFO4Xlm7Q3k/edit) is generated. Select the draft invoice by clicking the invoice number.

   - From the invoice screen, review the invoicing details and post the invoice by selecting [“post” ](https://docs.google.com/document/d/150LRXeNP2KOjhRdSZvsjuyx3zEuBr05S6sUsNG091KY/edit)option **(QTC.C.41)**

   - In the customer account page, under [“Notification history”](https://docs.google.com/document/d/1DZhDX2omc7i5keefCftGXoQKZ0a4ZN0UeGCjP4IxVEY/edit) section, verify whether the invoice has been dispatched to the customer


- **Processing payment for the renewal**

   - Select the invoice raised. In the invoice page, select “More” and then select [“Process a payment”](https://docs.google.com/document/d/1PsGpwdocdPlkN8Uv50g8P2hj5KHBPHCNTd2zxngQudk/edit).
 
   - Select the [payment mode](https://docs.google.com/document/d/1nwKXHvTbyOOnuvO6M1Q6Y-aMyh5JAmgiWHpGsVVYlKc/edit) from the dropdown list. 

   - Review the payment details. 

   - Select [“Create payment”](https://docs.google.com/document/d/1xfuLpcuA3N0fewvU8YJPZ7teJQg3XfIWoYXlrxazPXY/edit) and click “Yes” to confirm the payment processing.

   - Based on the payment details provided, the renewal subscription amount is auto-debited from the customer’s bank account or credit card. [Payment processing acknowledgment](https://docs.google.com/document/d/1KbWEktX__ehbFgDhbDYQoHRShf-MNsRm6IZfUOncxlM/edit) is generated.


- **Updating the opportunity in Salesforce**

   - In the Customer’s account page in Salesforce, select the renewal opportunity and select [“edit” ](https://docs.google.com/document/d/1ANHS4MmWmSP0kfGl23BqzJu5U73LECR8tnD_4afdWJE/edit)option.

   - Update the opportunity as [“Closed Won”](https://docs.google.com/document/d/1kOvlWzfvYRMuk5PKtQBkuxi73_-TMHCZV8_w5b2wKAM/edit).

   - In the invoice information section, update the [invoice number](https://docs.google.com/document/d/1H4sm5YUYECpwAiR2ly6rTzm-ilEnTlNGrT4NSoaw06w/edit) of the renewed subscription and the billing entity. All renewals are to be billed by the US entity (GitLab Inc.).

   - [Enter](https://docs.google.com/document/d/1Y8o6YuSUSsgP74NZ2XwG0a2fP17NgKv31-iXbbDgRbk/edit) the Start date and End date of the subscription, opportunity term and the renewal amount.

   - Select [“Save” ](https://docs.google.com/document/d/1P9MeZFRRT4833ya7L0JlXic4IzdrSwSOnR8bMRdPEgU/edit)option. The renewal opportunity is updated in Salesforce.
   
**QTC.C.12**  
***Controls to be implemented: QTC.C.32 and QTC.C.15***

   <br>
   
## 7. Invoice Cancellations and Refunds

[Link to Flowchart](https://docs.google.com/presentation/d/1eL08A1xPcg7UIy7FFsBgFcUNS3TwSPkt_I0cqJIB3aA/edit#slide=id.g7a74bf9a71_0_0)

The invoice cancellation and corresponding refund are initiated by the billing team based on a refund request received from the sales team, sales operations team or from the customer via email to the accounts receivable team or deal desk or through support team via ZenDesk ticket. Refunds can be initiated within 45 days from the start date of the subscription. **(QTC.C.16)** 


**7.1. Processing a refund to customer** **(QTC.C.17, QTC.C.38)**

- From the customer account page in Zuora, under the transactions section, [search](https://docs.google.com/document/d/1FQr8_GFCSIcSh_5fY6U8ZS9gpwvslvKQNOe4RGM18zY/edit) for the invoice that needs to be cancelled.

- From the customer account page, under the transactions section, search for the [corresponding payment](https://docs.google.com/document/d/1RQJvS5AS8MeO93eAc61_VNi1fweE6Ep7M2FcuPDFgAc/edit) to be refunded

- On the payment screen, click on more and click on ["Refund this payment" ](https://docs.google.com/document/d/1tkoVjFIm9rFik_NFbnKiqWqhOXj-xqjUT1xDAGrXFe8/edit).

- [Verify](https://docs.google.com/document/d/1g61vXBVMFNLe_LxRiFCazfheE4IooHfctBLWRtq5Ey4/edit) the details for processing refund (refund type, payment details, reason code and comments, if required) and select “Create refund”.

- An auto-generated email will be sent to the customer that the refund has been processed.

- The payment will be reversed on the invoice and there will be a balance due.


**7.2. Creating a credit note for cancellation of subscription** **(QTC.C.37)**

- From the customer account page in Zuora, under the Subscriptions and Amendments section, select the [subscription to be cancelled](https://docs.google.com/document/d/1N1VWwMkfYGmsCfgIpfKemQCmlXcaFPhLSH0UN2PlyZk/edit). 

- In the subscriptions page, select [“cancel”](https://docs.google.com/document/d/13oXyvEz96cNeVLlU_0Yc0a4xfxJM-_Vc0HYQTG9XCjI/edit) option to initiate cancellation. 

- Update the cancellation details and select [“save” ](https://docs.google.com/document/d/1QI5nlRFbSq9srhKbxRTpBajb3u5X99PrWI14OlAuvlc/edit)option.

- In the subscription page, a [negative invoice entry](https://docs.google.com/document/d/1N0g2rz43hlNlJkXsf0ImS_sTm557HwO4jU-DXeWpH_g/edit) is created.

- In the customer account page, under the transactions section, select [“create bill run”](https://docs.google.com/document/d/1fTpcbtCA54nc5_ieMYMB1piZbUttzlzufMc05_jwMx4/edit) to generate credit invoice for subscription cancelled.

- In the New Bill run page, [update the details](https://docs.google.com/document/d/1sSXWbTXkYSy80nKyRptCf0ouH2wZ7eURbtZJOhI0VbQ/edit) and select “Create bill run”.

- From the Bill runs page, select the [bill run created](https://docs.google.com/document/d/1uvNYAb0Weugf1VezCb8-emcsQIXaxD0DIYXqQia5FeA/edit).

- Select the [draft invoice](https://docs.google.com/document/d/1acsfHdbv4LeYjcELj6D4ARJlGhpImQjB7dOPx9JgdHU/edit) generated in the bill run.

- Verify and [post ](https://docs.google.com/document/d/1CKXE9S3DzpWBY90tlmPh9SLfFRUelPhQcshlbAFuOB4/edit)the invoice. 


**7.3. Applying the credit note to original invoice**

- On the credit invoice screen click on more and click on [“Transfer to Credit balance”](https://docs.google.com/document/d/14HY0XX0Qp_7v0cWpz9bR2Tkkp3BKXJytgYnvwPlvlnk/edit).

- Update the details and select [“Transfer to credit balance”](https://docs.google.com/document/d/10QqfkBDh51uLnU1dn0N8gIiCE_UFqKAHNfXxpd8co8c/edit).

- From the customer accounts page, under the transactions section, select the [original invoice](https://docs.google.com/document/d/16lSz_0kPic1mdBnD0dU6U4oC_-mIgc_mlQTdUfGTHNE/edit).

- On the invoice screen, click on “more” and click [“apply credit balance to invoice”](https://docs.google.com/document/d/1aECVNJ6IhxdtWM3opzHBQSteoL4eAqZ2sb_A6BqPcmU/edit).

- Update the details and select [“Apply credit balance to invoice”](https://docs.google.com/document/d/1_7tOKhVK_klU94GG5tNJvRt-H6H4FlfmVb-iuatY-9U/edit).

More details on the Invoice Cancellations and Refunds process can be found [here](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/Refund%20Approvals%20Sales%20Assisted%20&%20Web%20Direct).

   
   <br>
   
## 8. Revenue Recognition and Accounting


[Link to Flowchart](https://docs.google.com/presentation/d/1zKCzRpzlKRaEReenBsTge6Be7GkbshXf0A2nqikVo94/edit#slide=id.g7a75e78db3_0_0)


To comply with ASC 606 requirements, GitLab has modified its practice of recognising 100% of revenues for product subscriptions on a straight line basis to recognising revenue on basis of performance obligations. This has resulted revenue being recognised in the following manner:

| One Year Subscription     | Starter | Premium | Ultimate |
|---------------------------|:-------:|:-------:|:--------:|
| Upfront                   |   15%   |   10%   |    5%    |
| Over the life of contract |   85%   |   90%   |    95%   |
| Total                     |   100%  |   100%  |   100%   |

| Two Year Subscription     | Starter | Premium | Ultimate |
|---------------------------|:-------:|:-------:|:--------:|
| Upfront                   |   8.1%  |   5.3%  |   2.6%   |
| Over the life of contract |  91.9%  |  94.7%  |   97.4%  |
| Total                     |   100%  |   100%  |   100%   |

| Three Year Subscription   | Starter | Premium | Ultimate |
|---------------------------|:-------:|:-------:|:--------:|
| Upfront                   |   5.6%  |   3.6%  |   1.7%   |
| Over the life of contract |  94.4%  |  96.4%  |   98.3%  |
| Total                     |   100%  |   100%  |   100%   |



**8.1.1.  Zuora Revenue Data Collection**

* An automated data collection is run by Zuora Revenue on a weekly basis every Sunday in order to collect subscriptions that have been created in Zuora Billing.

* Any duplicate or incomplete data collected in staged is not processed by Zuora Revenue. This data is reviewed by the Revenue Accounting team and resolved before being released into Zuora Revenue.

* The Data Collection in Zuora Revenue can also be run manually by the Revenue Accounting team as required. 

* Each month a final data collection is run for the period once the period is closed in Zuora Billing.

Refer [here](https://docs.google.com/document/d/1Kv-HCtSYqDaCi-8mVQRToxuaRch-Kz1fPt77PrrzaAg/edit) for detailed steps followed in Data Collection Process in Zuora RevPro.


**8.1.2.  Zuora Revenue Contract Creation**

* Zuora Revenue creates Revenue Contracts based on subscriptions collected from Zuora Billing.

* Subscriptions under the same Customer Accounts that are created within 60 days of each other are grouped into Single Revenue Contracts.

* The Revenue Accounting team reviews Contracts to ensure these are grouped correctly and reflect the Contract Review Tracker.

* Where Contracts are not grouped correctly by Zuora Revenue, the Revenue Accounting team corrects these by [delinking and relinking Contracts](https://docs.google.com/document/d/1LvxsfFfzJiEPaNlDnC-ob4SIh6XX92g_txzUtKYvkOI/edit). Each Contract has a unique 5 digit ID in the format RCXXXXX.


**8.1.3.  Revenue Contract Review**

* The Revenue Accounting team reviews revenue contracts in accordance with the [Contract Review Thresholds](https://docs.google.com/document/d/1hY56QXU5u4gSZBv_97ULVD9vWa5XCJ3lAUr_Vj8_Kjw/edit) set by the Senior Director, Revenue Accounting.

* The Revenue Accounting team downloads the [Bookings report](https://docs.google.com/document/d/1-umVnNEd0nPiU09Bmb2qui7ovjutQhbUbnPHPIIdLZE/edit) from Salesforce and reviews the data in order to identify contracts that require review.

* Any contracts that require review are added to the [Contract Review Tracker](https://docs.google.com/document/d/1NzLLh9PC4Nr-WhTV3GeJQNL9P8hKLfbl3TmUJi0SKwo/edit) for that Quarter. Revenue Accountants review the Quote/Order Form, PO, Master Agreement, License Keys, Invoices and any additional paperwork related to each contract in accordance with [ASC 606 and Gitlab's Revenue Accounting Policy](https://docs.google.com/document/d/1r6Ow2tmP_mekBd-S4wfudRSlNTOZ-OIfctx6tOKJqE8/edit).

* For each contract, the Revenue Accountant forms their accounting conclusion accordingly and then identifies the contract in Zuora Revenue and ensures that revenue & billing correctly reflects the contract and their accounting conclusion.

* The Revenue Accounting Manager performs a 2nd level review for each contract.

* The Senior Revenue Manager, Senior Director, Revenue Accounting and PAO perform an additional review on those contracts that are above their [review thresholds](https://docs.google.com/document/d/1hY56QXU5u4gSZBv_97ULVD9vWa5XCJ3lAUr_Vj8_Kjw/edit) and they provide sign-off for their review in a [Contract Review Checklist](https://docs.google.com/document/d/1bBGpmK7j5XeM-xqbSQN3AJ5jQjNysLGvumX2fConamE/edit), with sign-off documented in a [Gitlab Issue](https://docs.google.com/document/d/1oQg2nIPX7drkMvto_pxzVs_sFDyPOKsA4qpGBo6Q7SQ/edit).

* Where contracts have material revenue allocations or non-standard accounting, they are communicated to business stakeholders such as FP&A, Sales Ops and PS Ops.

<br>

**8.2.  Zuora Billing Accounting Close**

* The Director, Billing & Collections will [close the period](https://docs.google.com/document/d/1DP2bxemt8m23wUDVie9ZfbsWem57xMH6H7lVxQjVyUE/edit) in Zuora Billing each month once all invoicing and payment application is complete and will notify the Revenue Accounting team.

* The Revenue Accounting team will [run and export the journal entries](https://docs.google.com/document/d/17MofyKdYMt-A1rgTDbPGJpfY8l6vm8JGbzqr0o-qVs0/edit) from Zuora Billing. These are summarised into a [pivot table](https://docs.google.com/document/d/1pVjtId-_1MCH_09hVqvm0yqvuUTTBeDxPAmoEdxWjKw/edit) for each entity and reviewed.

* An additional set of [intercompany entries](https://docs.google.com/document/d/1L-Y59EAJfvO5jRSPHg7Tmu96NsFXorPHVymWdp9z17U/edit) are also created to account for the fact that payment of invoices under one entity is sometimes paid into the bank account of another entity.

* [Journal Entries(JE)](https://docs.google.com/document/d/1xTwskc892hIqzoHJel8rSGTtEeVDnrnVrSUJ2MIevWA/edit) are prepared and booked in NS for each entity by the Revenue Accountant.

* The Senior Director, Revenue Accounting receives a notification from Netsuite that each JE is ready for approval.

* The Senior Director, Revenue Accounting reviews and approves each JE in Netsuite.   For Billing, Entries are: **(QTC.C.18)**
         DR/CR Sales Tax/VAT/GST Payable
         DR/CR Accounts Receivable
         DR Bank fees, DR Bank (Various Accounts)
         CR Customer refunds
         DR/CR Deferred Revenue (Various Accounts)
         DR/CR Stripe

<br>

**8.3.  Zuora Revenue - Revenue Accounting**

Zuora Revenue automatically places [Revenue Contracts > 50K on hold](https://docs.google.com/document/d/1pnhL3WFVbzGvaTUIQhUi-1R2QkugAvBN6rWDlpt-9bs/edit). As the Revenue Accounting team reviews each contract they ensure that revenue is accounted for in line with the accounting conclusion formed during the Revenue Contract Review (8.1.1 above) and they release any holds.

<br>

**8.4.  Professional Services Revenue**

* Gitlab implemented Mavenlink in FY21 in order to track the professional service projects.

* The Professional Service(PS) Ops team maintains projects in Mavenlink, they track hours delivered, projects completed and project acceptances from customers.

* Each month the PS Ops team runs a [report](https://docs.google.com/document/d/1Z8TQBAuSuPpUpfG6uQTVSKhVg6l9zhhHhOQRoxdQnaA/edit) from Mavenlink of projects eligible for Revenue Recognition.

* The Revenue Accounting team reviews this report each month to determine if revenue can be taken. Where there are revenue allocations or non-standard accounting impacting PS revenue, these are communicated to PS Ops so that they can adjust for this in Mavenlink.

* As part of the month-end close process, the Revenue Accounting team uploads [csv](https://docs.google.com/document/d/1qh2KNzDmiYFh8rZIdXXVTZWt8wP9xoo4Hqu2LtpayK4/edit) file to Zuora Revenue in order to recognise revenue on those deals that they approved for Revenue Recognition that month. Sales order line ID field is the unique identifier in Zuora Revenue, used to match invoices from the CSV file to Zuora.

* The Revenue Accounting & PS Ops teams reconcile the revenue recognised in Zuora Revenue with Mavenlink on a monthly basis.

<br>

**8.5.  Zuora Revenue Accounting Close**

* Upon completion of 8.1 - 8.4 above the Revenue Accounting team ensures that revenue for the period is correctly recorded in Zuora Revenue by completing the additional tasks as outlined in the [Month End Close Checklist](https://docs.google.com/document/d/1qYCWNA549Wt0qFjsYOiLEYs4Sf83FyjPoalV_3r8j7E/edit).

* Upon completion of the Zuora Revenue Month End Close Checklist Tasks, the Revenue Accounting team closes the Accounting Period in Zuora Revenue.

* All month-end close reports are generated including the journal entry report for the period.

* The Revenue Accountant summarises and reviews the journal entries by the entity.

* Journal entries for non-US entities are converted to the applicable functional currency for each entity and JEs are prepared in Netsuite by the Revenue Accountant.

* The Senior Director, Revenue Accounting or Senior Revenue Manager receives a notification from Netsuite that each JE is ready for approval.

* The Senior Director, Revenue Accounting or Senior Revenue Manager reviews and approves each JE in Netsuite. For Revenue, the journal entries are:
         DR/CR Revenue
         DR/CR Deferred Revenue

<br>

**8.6.  Netsuite Revenue Accounting Close**

After booking the Zuora Revenue Journal Entries in Netsuite for the closed period, the Revenue Accounting team works through all FloQast close [checklist tasks](https://docs.google.com/document/d/1ocRMd1TG46YwFTRPT6ex5-Rz1xIVMFedDUyknwLvp5w/edit) which includes preparation and booking of manual revenue journal entries in Netsuite as listed in the Month End Close Checklist as well as Bad Debt, Functional currency adjustments and Short Term Long Term Split Journal Entries for Deferred Revenue.

<br>

**8.7.  Balance Sheet Reconciliation**

After all journal entries are booked in Netsuite, the Revenue Accounting team will perform balance sheet reconciliations of all deferred revenue accounts in Netsuite and will upload [reconciliations](https://docs.google.com/document/d/1CL-6l0qWKVwVouM7Gvt3po2xF34WLijius1yxhkX0ew/edit) to FloQast to be signed off by both Revenue Accountant and the Senior Director, Revenue Accounting or Senior Revenue Manager.

 <br>
   
## 9. Accounting of Income from sale of merchandise

[Link to Flowchart](https://docs.google.com/presentation/d/18bk70WKJDswU7yE5vhC_LFAUMjt1LkDvrX0DVSVyZi4/edit#slide=id.g7a7540af44_0_0)

Customers buy merchandise from the GitLab website. The sale transaction is updated in the [Shopify ](https://docs.google.com/document/d/10gAXdbf_21jNBIUR0KddiEHNVixTT2D86o8rtUVS9HE/edit)application. The income from the sale of merchandise is accounted in NetSuite as “Other Income” on a monthly basis

- Download the [sale details](https://docs.google.com/document/d/13vf4Niab3xOAwc8zbOrbLGnoNcql8DC_LWVRlJhTFNQ/edit) from Shopify. 

- Download the [bank receipts ](https://docs.google.com/document/d/1gpWO96OunHt8CKCa674FnL2I00KuzD4HkuoQPZuyvrs/edit)for sales made.

- Reconcile the monthly sales with the receipts.

- Get the details of [cost of sale](https://docs.google.com/document/d/13fkC548XEwXFWx9gfPZ5xmtq5mCa9y757m_FBZZzn-8/edit) calculated in Printfection.

- Create a draft of the [accounting entry](https://docs.google.com/document/d/1AEwNP1o1f3816hPq74EYv5G-wxzEbb2KrRaZVpQTblA/edit) (in MS-Excel) for the revenue, receivable and cost of sale. Difference between the sale value and receipts, if any is accounted as marketing expense.

- Account for the revenue, receivable and cost of sale by posting a journal entry in NetSuite. The following is the accounting entry to be posted:

  Dr. Bank (bank account to which collections are realized)<br>
  Cr. 4006 Other income (Income)<br>
  Dr. 5042 Other expenses COGS (Cost of sale)<br>
  Cr. 6150 Marketing programs: Brand Marketing: Corporate Marketing (Cost of sale, shipping charges and variance 
  between cash received and sales)<br>
  Cr. 2227 Sales tax payable (Sales tax liability)<br>
   
   <br>
   
## 10. Accounting of Income from GCP Referral

[Link to Flowchart](https://docs.google.com/presentation/d/1JrFJx0YcIkuRFthOqRMn212x9QSiuIodQv0Ldjh_-nQ/edit#slide=id.g7a763c7d61_0_0)

GitLab refers customers to Google cloud platform. If the customer signs up, Google pays a referral fee to GitLab. The revenue and receivable is accounted as a Journal in NetSuite. The following will be the [accounting entry](https://docs.google.com/document/d/1DboG_3yBuNK9eao2PsUFTJi3w3WKdEWZI1u27jVMHrM/edit):

Dr. 1101 Accounts receivable<br>
Cr. 4008 Revenue – GCP referral

   
   <br>
   
## 11. Accounts Receivable

[Link to Flowchart](https://docs.google.com/presentation/d/1dMLg0oWnxEmKDejQgxQ31s722JaRRDxfU62BxrBVKC0/edit#slide=id.g7a74540988_0_0)

Customers can make payment through credit card, cheque and bank transfer. Payments are manually matched with the invoices in Zuora by the billing team. **QTC.C.21**<br>

**11.1. Accounting for customer collections**

- **Customer payments received through cheque**

   All checks received from customers are managed by Lockbox. Lockbox on receipt of check, verifies the completeness of the information provided and deposits the same in GitLab’s bank account.

   Accounting for check collections happens based on the deposits reflected in the bank statement.

   - To view the list of check deposits made by customers, login to the bank’s portal and [select “Positive pay image services” ](https://docs.google.com/document/d/1zP9KZAGhDYN-iR7tjl2tzHWZVrwzBSfMn9h4JCzv6ik/edit).

   - In the Positive pay and Image service page, [select “Checks & Invoices”](https://docs.google.com/document/d/1RPI46r_Pz7LgQf72e3afZxqi0rMmCplmgowxYZ6F_T0/edit). 

   - Select the [Lockbox number](https://docs.google.com/document/d/1Sg0g0QBmJQYeTso2q7GuUMRhyRkvZvHHJ5PKAAU2Ppc/edit).

   - Update the dates for which the list of check deposits are to be viewed and [select "submit"](https://docs.google.com/document/d/1afX42fbpHKWmm3c3-EmqY6IHzvaQX6aHj77fibU7xsE/edit) option.

   - Under Report options for Images and Indexed information, [select “All Images & Related images”](https://docs.google.com/document/d/1Lm0p6hm33vMq3EKEr_5dJXiXZXB0FbUyvh7YOXqaZNg/edit?usp=drive_web&ouid=111314924466435551734) to view the corresponding checks and other payment details. 

   - On the confirmation screen, [select submit](https://docs.google.com/document/d/1pt5aCHlcWBEbNpZwukvH8xrQ4Ys8XA_mGmlT-Q4i0q8/edit).

   - Select [“View PDF report”](https://docs.google.com/document/d/1wIAjRJrZzZsuRvSkVhkwQmTLZe2jl6d_2hE_nnX67VE/edit) to generate a report of all check deposits. 

   - A [PDF file is generated](https://docs.google.com/document/d/1KmL2QODGR5acaA74HGgkYpeA2rH2Tjf3uJe-JhCsoIc/edit) which has a copy of the cheque, date and payment account.

   - [Search](https://docs.google.com/document/d/13tZnxi1pjMNA4ZDTc-0N31SbXGmrUALtQv6XJffAn-k/edit) for the respective customer account in Zuora.

   - In the customer account page, select [“Process a payment” option](https://docs.google.com/document/d/13d_r-N1d1z199dSwvUXtknbWLZaZvaWxQjxMFzFVG2U/edit).

   - Update [the payment details](https://docs.google.com/document/d/1R-zf1pQEIF3S8tRiTw3BSPRZsk7_MQcBe_Ocnob5oyA/edit) in the Payment processing screen – Date, payment mode, payment total and payment reference ID.

   - Select the [invoices associated](https://docs.google.com/document/d/1MbDAmfts7wsZpth63uSAF-4PsbeccLZoe7Wr8_PQGEM/edit) with the payment.

   - Select [“Create payment”](https://docs.google.com/document/d/1u2WYmectKTkl7c-tc-sRJNX3yq63OrtDmodrl14JhOs/edit) option. Payment is updated in Zuora against the corresponding invoice.

- **Customer payments received through bank transfer**

   - To view the list of check deposits made by customers, login to the bank’s portal and select “GitLab Inc” under Accounts Summary > [“All Accounts”](https://docs.google.com/document/d/1LEtn6gqg-eOOhsn4Z4jC2hP0CuPVTon817CbYmYUzPU/edit). 

   - The list of bank transactions is generated. Filter the results for the required period using the [“Filter”](https://docs.google.com/document/d/1nHWK7NSE9MsFgKvhyBDnwmtv58ZX3FedJyNPTEI2Zb0/edit) option and select “Search”. The list of bank transactions for the required period is generated. 

   - [Select the payment ](https://docs.google.com/document/d/1r-kQ3u7KFrVkaJttw5-yRPjjBaKOPOHpk5knq7NIeH4/edit)for which accounting is to be made. Payment transaction details are reflected under the details section. Based on the transaction narration, identify the customer name, quote / invoice number.

   - [Search](https://docs.google.com/document/d/11ylBpEpllpXlT69t2MNLA6a2SfehLnUI6AJMER9sxMw/edit) for the respective customer account in Zuora.

   - In the customer account page, select “[Process a payment](https://docs.google.com/document/d/1VY4mlMG8Q_ullldPQJUTxMBEVEHt745KDG58KX1MEow/edit)” option.

   - Update the [payment details](https://docs.google.com/document/d/1VwK2GpgWlv_pvsorC-PX_VtfHJpP6FxprlRKPx0iU7c/edit) in the Payment processing screen – Date, payment mode, payment total and payment reference ID.

   - Select the [invoices associated](https://docs.google.com/document/d/1GGANxT8A1_XEGsehhX9Pdsg0Qz6S0OmdsX5cNP09mmE/edit) with the payment.

   - Select “[Create payment](https://docs.google.com/document/d/1bTHedsm2W-KtWlA3iozL8XIH1DLmmXnyaRlkZKL4vqY/edit)” option. Payment is updated in Zuora against the corresponding invoice.

<br>

**11.2. Monitoring of outstanding dues**

- **Invoice aging analysis** **(QTC.C.22)**

  Invoice aging analysis is carried out by the Billing team on a weekly basis.

   - Under reports section in Zuora, select “[Invoice aging – GitLab” report](https://docs.google.com/document/d/1wZjrqL5EZ-LqCXElfrL75t1b8kEh0AD0lqvAR_JBoVE/edit).

   - Select [“Run Summary Report”](https://docs.google.com/document/d/17gVmC5uGmkI3uoJeyuLFVjvxVUtmwbjYKTg16UzXjR4/edit) under Run Detail report section.

   - The [invoice aging report](https://docs.google.com/document/d/1LwmYZpKF6Xm-chcg6Syxo08ou44PSokXKGKmf47hdcc/edit) gets generated with the following details for analysis:<br>
  Account name, Account number, Invoice number, Due date, Days overdue, Balance, Entity, Support hold status, Comments stating when the reminder mails were sent.

   - Analyse the report generated for overdue payments.



- **Reminders for outstanding dues**

   - Zuora generates [automatic payment reminders](https://docs.google.com/document/d/1-hmliJG8YC9shO5Dsr3-Ygj-01fYFRiSZO9q-U__hCw/edit) at 30, 60 and 90 days after invoice issuance.**(QTC.C.23)**

   - When an invoice reaches 30 days, an automated escalation email is sent to the account owner in sales.

   - When an invoice reaches 60 days, an automated escalation email is sent to the account owner in sales, the regional director and the CFO.

- **Support hold for overdue payments**

   When the invoice is overdue for more than 90 days, the account is kept on “Support hold”.**(QTC.C.24)**

   - In the customer’s account page in Zuora, check the box [“Support Hold”](https://docs.google.com/document/d/1ahjMhYc9mZ5p_1w7aIu20oms4WJ1PCGEoGcQmr0SIIo/edit) under the Finance information section.

   - Send an email to support@gitlab.com with the customer information - Account name, Account number, Invoice number, Due date, Days overdue, Balance, Entity, Support hold status, Comments stating when the reminder mails were sent.

- **Credit hold for overdue payments**

   When the invoice is overdue for more than 120 days, the account is kept on “Credit hold” and orders for that account can no longer be processed.**(QTC.C.24)**<br>
   - In the customer account page in Zuora, select [”edit”](https://docs.google.com/document/d/1rg8jBq3Ta5PlX7pAV54AkAIN73LUm6eUJ7PGMIt4cgA/edit) and under Notes and add a note stating “Support and Credit Hold”.

Refer to the [Collection process](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/Collections%20Process%20NEW), and  [Customer Cash Reconciliation & FX Validation](https://gitlab.com/gitlab-com/Finance-Division/finance/-/wikis/Customer%20Cash%20Reconciliation%20&%20FX%20Validation) page for more details.

<br>

**11.3. [Accounting of Provisions for Doubtful Debts and Bad debts write off](https://about.gitlab.com/handbook/finance/accounting/#accounts-receivable-process-for-non-payment-of-invoices)**

**Controls: QTC.C.26, QTC.C.27, QTC.C.28**
   
   <br>
   
## 12. Commission payouts to Sales executives

   To be updated
   
   <br>
   
## 13. Licence Key

[Link to Flowchart](https://docs.google.com/presentation/d/1EHPu9_TI9lFUPek-0fD2WjWbP_devWR4y3tfR8PTgUE/edit)

There are two models in which customers can use the product:<br>
    1. On premise model i.e self managed<br>
    2. On cloud model

In case of a self managed model the customer downloads the products onto their server and manages the product.

In the case of the on cloud model the product is hosted on GitLab server and is available to customers through the internet.



**1. On Premise Model**

Sales is made to customer through following channels:

**a. Web Direct Sales:**

Customer logs in to CustomersDot and directly buys the product as per their requirements.

* Step 1: Customer completes the purchase in CustomersDot and credit card details go through. An opportunity is automatically created in Salesforce.

* Step 2: Transaction is automatically pushed to Zuora from Salesforce once purchase is successful.

* Step 3: Zuora pushes the customer information along with Zuora reference number to the [CustomersDot](https://docs.google.com/document/d/1iLiq3IegyaFZISDUAXcDVt87PzGS3zn8SKZrRvcJgYY/edit). 

* Step 4: Upon successful receipt of Zuora reference number, [CustomersDot](https://docs.google.com/document/d/1fSIewFE_uDiTyLolFC1CHbYAwTFDgGm25Wy_HWxY-pw/edit) will store all details such as customer info, contact details and product details.

* Step 5: CustomersDot will create a cloud activation code.

* Step 6 a) When Cloud Licensing was declined, CustomersDot sends license key to customer through an email. Alternatively, customer can also download the license key through CustomersDot.

* Step 6 b) When Cloud Licensing is still pending, CustomersDot sends license key and the activation code to customer through an email. Alternatively, customer can also download the license key and activation code through CustomersDot.


**b. Sales team assisted sales:**

Sales team is involved in the sales process, Salesforce is used to create customer accounts, send out quotes and close the deal.

* Step 1: Sales team completes the sales and marks the [opportunity](https://docs.google.com/document/d/15iH3EBfDCNRt03zOzu84dXC3u-kBq6fpOj4dIB6rJGA/edit) as closed and won in Salesforce.

* Step 2: Upon closing of opportunity as “Closed and won” in Salesforce, the Billing Team sends the quote to Zuora leading to creation of customer subscription in Zuora. Once a customer subscription is created in Zuora, Zuora automatically pushes the [customer details](https://docs.google.com/document/d/1Vauh36fizeaV7doPhftCGmpdMwZoUkn-p9xxMRTH-fM/edit) to CustomersDot. 

* Step 3: Upon successful receipt of Zuora reference number the CustomersDot will store all details such as customer info, contact details and product details.

* Step 4: CustomersDot will create a cloud activation code.

* Step 5 a) When Cloud Licensing was declined, CustomersDot sends license key to customer through an email. Alternatively, customer can also download the license key through CustomersDot.

* Step 5 b) When Cloud Licensing is still pending, CustomersDot sends license key and the activation code to customer through an email. Alternatively, customer can also download the license key and activation code through CustomersDot.


**c. Reseller assisted Sales:**

GitLab reseller is involved in the sales process, Sales representative uses Salesforce to create customer accounts, send out quotes and close the deal

* Step 1: At the time of updating an opportunity for a reseller account, End user name will be updated under [“Sold to Contact”](https://docs.google.com/document/d/14c6dQ-d7-8jSNOj7WdnJRoUwrBMilHEzsHoJF7HVRlQ/edit) (Based on this update, license details will be shared with the end user.

* Step 2: End user’s acceptance of licensing agreement to be updated as required (Field [“Click through EULA required”](https://docs.google.com/document/d/1y-kOeaSDQS2ZRhV-eOmloO46iUO5mHUaWlW7SqTDtbY/edit) to be updated as “Yes”).

* Step 3: End customer will receive an email to accept the terms and conditions. The opportunity can move to the next step only upon acceptance of terms and conditions by End customers. 

* Step 4: Sales team completes the sales and marks the [opportunity](https://docs.google.com/document/d/1bMj3wDX860kGk1ZxVvB721rls7VIAAlPBRpo9xcgMU4/edit) as closed and won in Salesforce.

* Step 5: Upon closing of opportunity as “Closed and won” Salesforce the Billing Team sends the quote to Zuora leading to creation of customer subscription in Zuora. Once a customer subscription is created in Zuora, Zuora automatically pushes the customer details to [CustomersDot](https://docs.google.com/document/d/1Se_JzQrg19USGdYiIjB3I-En1yyq1JOMrIXHNDrDEH0/edit). 

* Step 6: Upon successful receipt of Zuora reference number and acceptance of EULA by customer the CustomersDot will all details such as customer info, contact details and product details.

* Step 7: CustomersDot will create a cloud activation code.

* Step 8 a) When Cloud Licensing was declined, CustomersDot sends license key to customer through an email. Alternatively, customer can also download the license key through CustomersDot.

* Step 8 b) When Cloud Licensing is still pending, CustomersDot sends license key and the activation code to customer through an email. Alternatively, customer can also download the license key and activation code through CustomersDot.




**Manual generation and dispatch of Duplicate License Key**

Broadly there are three circumstances in which license keys need to be generated and dispatched manually:


1.  Customer faces difficulty in accessing the license key and raises a ticket via Zendesk.

    * Step 1: Ticket is received in Zendesk (User raises the [ticket](https://docs.google.com/document/d/1hkvV72IDzKB5QXD0BIWZWtvIeQ-dHCIWwyZG7nogR4Q/edit) for help).

    * Step 2: Based on the problem the Support Engineer decides how the problem is to be solved.

    * **License exists in LicenseDot:**

       * Step 3: Check whether a [duplicate license key is required](https://docs.google.com/document/d/1OO7Fi2Re2ol7mipu_RVbhtkrqWlgDSt6WKDluKLSjHU/edit). 

       * Step 4: If a duplicate license key is required, Support Engineer will generate a duplicate license key by clicking on “Duplicate licenses” under the [Edit licenses tab](https://docs.google.com/document/d/1aehHB8cTT0VY0k4bK-_T4bzgAJzRt-dpC-wvWQY8MR0/edit).

       * Step 5: Support Engineer enters [details of number of users](https://docs.google.com/document/d/1hQbtXvgEX__Jqeu2wIP3A6VN5I0lh_uZG0gkb94mcuw/edit) that require access to duplicate licenses. 

       * Step 6: Support Engineer to reference the Zendesk ticket or Internal GitLab issue. When creating a new license, enter any comments and notes required in the [“Notes” section](https://docs.google.com/document/d/1xj4SBCj0_XSRkO5CoIi6Z8e56_w8cDgVv7vT3w9PNTY/edit).

       * Step 7: To generate the duplicate license key, the Support Engineer clicks on [“Create license”](https://docs.google.com/document/d/1qjwqgBdWkEXHtORiu9q7itf4qQpVEykDv22TfHv9SYc/edit).

    * **License exists in CustomersDot:**

      * Step 3: Support Engineer can either resend the license key or create a new license (the option to duplicate a license is currently not available).

      * Step 4: Support Engineer to reference the Zendesk ticket or Internal GitLab issue. When creating a new license, enter any comments and notes required in the [“Notes” section](https://docs.google.com/document/d/1P4jubNq19Z_kVsO7JiqK1s78ocsI8cd_-B6a7JqIw00/edit).

      * Step 5: To create the license, the Support Engineer clicks on [“Save”](https://docs.google.com/document/d/1COothH-y5fHWOWZYjHoklZAqcAX9mxd3BNBZm27YkeY/edit).

2.  Sales team offers trial license keys to Prospective/Current customers.

3.  Sales team decides to issue the license manually (in these cases, the billing team marks the customer’s profile as “Silent” in Zuora. This causes the licence to not generate automatically).



**Create missing or resend Cloud Activation Code**

a) Create missing cloud activation code

* Step 1: In the Admin Area of CustomersDot, go to the Customer in the [Customers menu item](https://docs.google.com/document/d/17lKe0tVuplAfFDcIF7LLtQNostlCRCitdRb8bL2HS-w/edit), and then view their [Zuora Subscriptions](https://docs.google.com/document/d/1XcsQSmE3IlSSdJHFPTCTyLu4SakwCk8aZn3h5DrLP4g/edit). If the cloud activation code is missing, [a link](https://docs.google.com/document/d/1hZu_5aLmTSeSQVtzbhN5x3p5XnN-3lGepu6pOsdG9cI/edit) to create an activation code will be displayed.

* Step 2: Creating a missing cloud activation code will automatically send it to the customer through email.

b) Resend cloud activation code

* Step 1: In the Admin Area of CustomersDot, go to the [Cloud Activations menu item](https://docs.google.com/document/d/1CT6gyqUml6qCi62VW8eeL-_xdJAGqT8bSr9eqywvwTY/edit).

* Step 2: Click [the link](https://docs.google.com/document/d/19NOO7SZrOHrVctoV5oiU_H_6PPatLX9cpUJ300mikI0/edit) to resend the cloud activation code via email to the customer.



**Subscription Cancellations:**

Customers can cancel the subscription anytime within 45 days and avail full refund for the amount paid. Based on customer requests the billing team cancels the subscription and invoice  in zuora and creates an opportunity with a negative value in Salesforce.

***Controls being implemented: QTC.C.25, QTC.C.44, QTC.C.47, QTC.C.48, QTC.C.42, QTC.C.43, QTC.C.45, QTC.C.46, QTC.C.49 & QTC.C.53***

<br>


**2. On Cloud  Model**

In the on cloud model there is no concept of Licence Keys, the successful provisioning of an account will automatically enable the customer to start using the account.<br>
Once a purchase has been made the customer has to connect their customer account (CustomersDot) with GitLab.com by opening both the tabs simultaneously and selecting the connect option available in the CustomersDot.


**a. Web Direct Sales:**

Customer logs in to CustomersDot and directly buys the product as per their requirements.


* Step 1: Customer logs on to the CustomersDot and  clicks on [“Buy new subscription”](https://docs.google.com/document/d/1rMWfTtj76ye3xuNGqgjBvItEQsUwJhDwLHot0bnbi1o/edit) to select the subscription needed. If the customer is an already existing customer then the system [prompts](https://docs.google.com/document/d/1jsnXvmMNiYTlkO_Xro2U4mEN5_wC5Qi1O4VPhtHpuxE/edit) if the customer wants to manage an existing account or add a new subscription.

* Step 2: Customer selects the subscription that clicks on [“Order Plan”.](https://docs.google.com/document/d/1PNSXqrKWABLit63V-OVdztQf4vymmBvDTRJJOofS5WI/edit)

* Step 3: Customers need to [connect](https://docs.google.com/document/d/1qjIsTZjOYKsbFCAudrP5Hz_VEAuVqMJbtr4tzJWOjJc/edit) their account to GitLab.com account. Once the account is connected to GitLab.com, the system automatically calculates the number of existing users in case of an upgrade.

* Step 4: Once the purchase is completed, the system automatically provisions the account by [updating the plan](https://docs.google.com/document/d/1FY3DiHg8_DHN2XnQ3JjTL1XmNw4bGbVRIuYALBNuWw8/edit) in the user account. 



**b. Sales team assisted sales:**

Sales team is involved in the sales process, Salesforce is used to create customer accounts, send out quotes and close the deal.

* Step 1: Sales team completes the sales and [marks the opportunity](https://docs.google.com/document/d/1rH4-Uk0GI71Cc-QUVIVufCRUXX6ohN1nZ0_hAdvQsLM/edit) as closed and won in Salesforce.
 
* Step 2: Upon closing of opportunity as “Closed and won” in Salesforce, the Billing Team  sends the quote to Zuora leading to creation of customer subscription in Zuora. Once a customer subscription is created in Zuora, Zuora automatically pushes the customer [details to CustomersDot](https://docs.google.com/document/d/15uwg8uDjfylopuh3CuNnRGAOOEN6_GCf57KLLfKj93s/edit). 

* Step 3: Customers need to [link](https://docs.google.com/document/d/1aBqXQppzo99Uoa91q1Y7x9q9MYt91PrPWFpqiVEOBqA/edit) the GitLab CustomersDot with their account in GitLab.com. Click on the “My accounts” option in CustomersDot and select “Account details” option.

* Step 4: Click on [Link Account/Change linked account](https://docs.google.com/document/d/1mtega3-recCDwl7UvgSt4Cywd5jwRkvShS_mvLObgOE/edit) option.

* Step 5: Log on to a different browser tab and log in to GitLab.com. Come back to CustomersDot and Click on [“Change linked account/Link account”](https://docs.google.com/document/d/1xtp_m_ZWxxwKYrPcPz-bkicDtTWHl-hulBKMNYFQOzc/edit) to connect both the accounts. There is an API Cache that has the login details, once the “Change linked account/Link account” button is selected the accounts get linked.

* Step 6: Now the customer needs to [link the namespace](https://docs.google.com/document/d/1zaC76xddppTwwT-MoMQmilp2FSZSRCQZF3fRwEZhjOY/edit). Because on GitLab.com a customer can have unlimited number of groups and the customer can link their subscription to any one of the groups or your personal namespace. This process basically indicates to the system as to where the subscription is applied to.

* Step 7: Select “[Change linked namespace](https://docs.google.com/document/d/1XwAKdUpNbcFKYHl5X3JqjhXEYg4-xeYyH3pXzQJGkU8/edit)” and come into the namespace by clicking on the namespace.

* Step 8: Select the subscription and click on “[Processed to checkout](https://docs.google.com/document/d/18-fSatW1vRMck-W1hlohrp-f_Vw_nsvJ6-oVsMXM7FY/edit)” to apply the selection.

* Step 9: Once “Proceed to check out” is selected the system [reads the number of users](https://docs.google.com/document/d/1mzBy_ncsWLeBzaoM-RWEYUcvVb65bTd3pGpmjz4FqSA/edit) in that particular group or namespace and if it was more than the seats that were sold then the system will walk the customer through the payment for overage. 


**Subscription Cancellations:**

**Premature cancellation: Cancellation within the first 45 days.**

Ideally once the billing team cancels the subscription in Zuora, Zuora creates an amended invoice and based on the amended invoice CustomersDot instructs GitLab.com to downgrade the customer account to the basic version.  
Since this is not happening automatically, GitLab admin downgrades the account manually.

* Step 1: Billing team creates an internal [issue](https://docs.google.com/document/d/1UrAMTI53Qj5XvvFi4Q-BZnkKJhqkbvkYZ2XKQ62ri1g/edit) for the support team to have the subscription cancelled manually.

* Step 2: Support admin goes into the actual customer account and select the “[Edit](https://docs.google.com/document/d/1oSHzf4j54Ak_lrSeEBAFcuaqcY-yRMtFMkfXLBX0Eyw/edit)” button.
 
* Step 3: And [change the existing plan](https://docs.google.com/document/d/17P10gzJfNJPNxjgduzNXJebCli36y085N_9t6x3IMUM/edit) i.e “Gold” to “No Plan”.

* Step 4: Update the [pipeline minutes](https://docs.google.com/document/d/13JI525IrqJZCJRb6TmpMW88e110OBud3nS4cgXruGNE/edit) to reflect the pipeline minutes of the downgraded plan.

* Step 5: Enter a [note](https://docs.google.com/document/d/1tGInLoXsgEuoPQFalI6XrSOTcOD8joYmf61gotYjbzM/edit) to maintain details of why the change was made and provide a link to the issue created by the billing team requesting the changes. A note can only be entered when cancelling a user account, when cancelling a group account, there is no admin note feature. 

* Step 6: Click on “[Save changes](https://docs.google.com/document/d/1FlGUy8Sq0qs0dS3Wq8EkbcpLHtzlNnMFH1FOTrvBbFU/edit)” to give effect to the changes.


**Cancellations due to failure to renew the subscription by customer:**

Due to system limitations currently the cancellation/downgrades of the customer account from paid subscription to “Free Plan” does not happen. This has resulted in multiple accounts continuing to have access to paid features even after expiration of the subscription period. However the support services for these accounts are shut down.<br>
 
 

**c. Reseller assisted Sales**

GitLab reseller is involved in the sales process, Sales representative uses Salesforce to create customer accounts, send out quotes and close the deal.

* Step 1: At the time of updating an opportunity for a reseller account, End user name will be updated under “[Sold to Contact”](https://docs.google.com/document/d/1T7RPmjXT8CVpQqticVpRTIfFJWMc1vNC_Hqrcv6FCwg/edit) (Based on this update, license details will be shared with the end user.

* Step 2: Sales team completes the sales and [marks the opportunity](https://docs.google.com/document/d/1LITdgrQKqFnhD5ApkoFVhrsl3T1ADEV5XYa7ypFDg7o/edit) as closed and won in Salesforce.

* Step 3: End customer will receive an email to accept the terms and conditions. The opportunity can move to the next step only upon acceptance of terms and conditions by End customers. 

* Step 4: End user’s acceptance of licensing agreement to be updated as required (Field [“Click through EULA required”](https://docs.google.com/document/d/1_e8ki2rfqvWyGNGmEt3sVr9A-OOQP_gZJN83rziN1mI/edit) to be updated as “Yes”).

* Step 5: Sales team completes the sales and [marks](https://docs.google.com/document/d/1jztd8LPmHGaaOdzeRcAZeePeDU8u85v-Uh2nF3BTbpc/edit) the opportunity as closed and won in Salesforce.

* Step 6: Upon closing of opportunity as “Closed and won” Salesforce the Billing Team  sends the quote to Zuora leading to creation of customer subscription in Zuora. Once a customer subscription is created in Zuora, Zuora automatically pushes the [customer details to CustomersDot.](https://docs.google.com/document/d/1VVnigNSfMDmdP5S8bMiZ-vyqDRPVyp_gH9BbEEW6-IU/edit) 

* Step 7: Customers need to [link the GitLab CustomersDot](https://docs.google.com/document/d/1Zg_JgmMotSXdXRWoZsHN5AsRtLyxJ112p0D1-apNv8o/edit) with their account in GitLab.com. Click on the “My accounts” option in CustomersDot and select account details option.

* Step 8: Click on [Link Account/Change linked account option](https://docs.google.com/document/d/1EFPxlulStwdArlcozhC2qCr19oiiyPknIn20s1Lc1FA/edit).

* Step 9: Log on to a different browser tab and log in to GitLab.com. Come back to CustomersDot and Click on “Change linked account/Link account” to connect both the accounts. There is an API Cache that has the login details, once the [“Change linked account/Link account”](https://docs.google.com/document/d/1irrKsrhnnVtU3Qcl5-bkqxKReqIIZShWB1DPhrNiKW0/edit) button is selected the accounts get linked.

* Step 10: Now the customer needs to [link the namespace](https://docs.google.com/document/d/1M3ZHmri2s0njoZl9jelITpG-WxT6X8Jlwp_dXZNnTo8/edit?usp=drive_web&ouid=111314924466435551734). Because on GitLab.com a customer can have unlimited number of groups and the customer can link their subscription to any one of the groups or your personal namespace. This process basically indicates to the system as to where the subscription is applied to.

* Step 11: Select “[Change linked namespace](https://docs.google.com/document/d/1i-mpZY4EQer5QWoims6eEItRgZe9mp0Pek5edIHxWjM/edit)” and come into the namespace by clicking on the namespace.

* Step 12: Select the subscription and click on “[Processed to checkout](https://docs.google.com/document/d/1Z4CJTx-tqeINDYCEIGhZQxrMcM4qYIot-sTiYNlFZl0/edit)” to apply the selection.

* Step 13: Once “Proceed to check out” is selected the system [reads the number of users](https://docs.google.com/document/d/1GmnFDhg70h6B5RO602FBU4B_-AlrJZMEj5mFTZAjPiQ/edit) in that particular group or namespace and if it was more than the seats that were sold then the system will walk the customer through the payment for overage. 



**Manual Provisioning of Account:**

In case the system does not automatically provision the purchase/upgrade, or due to issues linked to credit card purchases not going through, Support Engineers with administrative access can manually change the plan. 

* Step 1: Support Engineers [logs in](https://docs.google.com/document/d/1aKHB4m3aHSUeyNw1FSyQDf34H1haUAPQGD12P1uFS-E/edit) using administrative access. [Administrative view](https://docs.google.com/document/d/17LsiyS8k6qo4N6qYuy3S5yxHBbXM8Jr4C-IEPHCH9mo/edit)

* Step 2: Click on the “[Edit](https://docs.google.com/document/d/1RPR3htkBhGqI5X_Ee4TFEopd_eM2pZWMiaHDYlF8Pso/edit)” button to make the changes.

* Step3: Make the [changes](https://docs.google.com/document/d/1wQxC8eWZc2tQ1ggncy1G5l_-Mn7Oxz7EC_6lVRW-E_8/edit) to Plan.

* Step 4: Add a [note](https://docs.google.com/document/d/1fTSdUO-8yivWAtqhz5w-1zU7PuIs9qV4xWDXn4qmKT4/edit) justifying the reason for change and link to Zen Desk ticket raised by the customer.

* Step 5: Click on “[save changes](https://docs.google.com/document/d/1qKa9m4FUe_TnfgqZCahPEPE9VkQKCERIP6pa0e1q0kA/edit)” to complete the change.

***Controls being implemented: QTC.C.50, QTC.C.51 & QTC.C.52***



