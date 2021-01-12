---
layout: handbook-page-toc
title: Purchase Request Process
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc}

- TOC
{:toc}

## Procurement Toolkit
<div class="flex-row" markdown="0" style="height:110px;">
  <a href="/handbook/finance/procurement/vendor-selection-process/" class="btn cta-btn ghost-purple" style="width:250px;margin:5px;display:flex;align-items:center;height:100%;">Vendor selection process</a>  
  <a class="btn cta-btn purple" style="width:250px;margin:5px;display:flex;align-items:center;height:100%;">YOU ARE HERE: Purchase request process</a>
  <a href="/handbook/finance/procurement/vendor-guidelines/" class="btn cta-btn ghost-purple" style="width:250px;margin:5px;display:flex;align-items:center;height:100%;"><span style="margin-left: auto; margin-right: auto;">Vendor guidelines</span></a>
</div>

## What is a Purchase Request?
- All purchases made on behalf of GitLab that are not a personal expense, must have an approved purchase request before work can begin, contracts can be signed, or payment can be made.
- The specific approvals needed are based on your spend type, spend threshold, key terms, and risk to GitLab. They are identified in the issue template links below. This is to ensure that GitLab purchases are strategically aligned and to ensure SOX Compliance.

## When should I create a Purchase Request Issue?
- First review the [Vendor Selection Process](https://about.gitlab.com/handbook/finance/procurement/prior-to-contacting-procurement/) page for the policies regarding multiple bid and RFP requirements. 
- **Before sharing details and/or confidential information regarding our business needs, please obtain a [Mutual Non-Disclosure Agreement](https://drive.google.com/a/gitlab.com/file/d/1hRAMBYrYcd9yG8FOItsfN0XYgdp32ajt/view?usp=sharing) from the potential vendor(s).**
- **Create a purchase request BEFORE you agree to pricing and terms with a vendor.** 
- If you are running an RFP, open a purchase request issue before the RFP is closed.
- Once you obtain a quote from a vendor, inform your vendor it will need to be reviewed and approved through the GitLab purchasing process.
- If you would like procurement to help you obtain a quote, please tag us in the issue asking for support obtaining a quote.

| New Software | Software Renewal | Field Mktg & Events | Consultants/Professional Svcs |
| ------ | ------ | ------ | ------ |
| Once initial quote is received, or sooner | 60-90 days before renewal date | Once contract is received | Once initial quote is received |

- If ever in doubt, create a purchase request issue sooner rather than later. There is no downside to opening an issue early. If opened too late however, your project could be delayed and GitLab could be put at risk in multiple areas.
- If you don't have a contract yet that's OK and you can still create a purchase request issue. Title the issue as "WIP" and note the status in the comments field. 
- If you're uncertain, ask us in the #procurement slack channel!!

## Software Renewal Process
Procurement Team is monitoring ContractWorks for upcoming contract renewals.
1. Procurement Team will contact Business Owner 60-90 days before renewal date to confirm vendor contract renewal
2. Once BO confirms renewal Procurement Team will create WIP: Procurement Issue
3. If new contract was not already provided by the supplier, Procurement Team will help requestor to obtain it:
4. Procurement Team will schedule a discussion call with requestor with following [Agenda](https://docs.google.com/document/d/1Qc8CHbE7TIWM7UJ0sI78rN865t_pKjrxIgbE2Ghpdh8/edit?usp=sharing) to understand the need. 
   <br>

If you have a contract that is 60-90 days from renewal date and you have not heard from Procurement yet, please create a [Purchase Request](/handbook/finance/procurement/vendor-contract-saas/) to begin the process in the event the contract is not available in ContractWorks.

   *In order to help Procurement provide prompt support please prepare the following information regarding the renewal:*
- Renewal date
- Current usage (e.g. number of users, projects, API's, etc.)
- Anticipated usage for next 12 months (e.g. flat, growing or decreasing usage by 20 users)
- Satisfaction with services (scale of 1 (poor) - 10 (exceptional) and why
- Estimated budget<br>


## Are there any exceptions to the purchase request process?
The exceptions to the process are below:
1. Last minute un-planned onsite event needs such as food and rental transactions needed for event.
1. One-time field marketing and event purchases less than $10K such as booth rentals, AV equipment, catering, etc.

In these instances, the vendor can invoice GitLab in Tipalti, and AP will route approvals based on the matrix

## When can my contract be signed?
- **Before a contract can be signed, the associated purchase request for the contract must be approved.** 
- Vendor invoices will not be paid without an approved purchase request. 
- After the Purchase Request is approved by all parties, the contract can be signed, and the vendor may submit an invoice.

## When is a contract negotiated?
   * All software contracts >= $25K will be negotiated. 
   * All non-software contracts >= $25K will be evaluated for negotiation opportunity based on type, amount and market conditions.
   * All contracts requiring an RFP will be negotiated. The RFP process should not be closed until procurement is engaged.

## What is the process for negotiating contracts?
**For Software <$75K:**
   * Procurement will assign to our third-party partner, Vendr, to negotiate the transaction. *Procurement reserves the right to engage Vendr at a higher or lower threshold based on current bandwidth.*
   * If it is a renewal/existing vendor, Procurement Ops Analyst will pull previous contract from Contract Works and post to issue. 
      * Procurement Ops Analyst will note any discrepancy in previous order amount, vs. new quote, if available.
      * If contract is unavailable in Contract Works, Procurement Ops Analyst to request contract from issue creator.
      * If issue creator does not have the contract, Vendr will request from vendor during the negotiation process.
   * Ops Analyst will schedule a call with negotiator (Vendr or Sr. Mgr, Procurement), issue creator, and finance business partner (as optional).
   * Procurement Ops Analyst add “Procurement::Vendr” label

**For Software >$75K:**
   * Procurement will engage directly. 
   * If this is a renewal/existing vendor, Procurement Ops Analyst will pull previous contract from Contract Works and post to issue. 
      * If contract is unavailable in Contract Works, Procurement Ops Analyst to request contract from issue creator.
      * If issue creator does not have the contract, Sr. Mgr Procurement will request from vendor during the negotiation process.
      * Procurement Ops Analyst will note any discrepancy in previous order amount, vs. new quote if available.
      * Procurement Ops Analyst schedule call with Sr. Mgr Procurement, issue creator and finance partner (optional) to review need.
   * Procurement Ops Analyst add “Procurement::In Negotiation" label

**For Non-Software:**
   * If under $100K, the DRI is responsible for requesting and negotiating the best price for GitLab, unless there is a business reason to engage procurement sooner.
   * If greater than $100K, procurement will negotiate non-software agreements on an as-needed basis.
   * At any point in time the DRI can engage procurement for additional support to review and/or negotiate the contract regardless of spend.

## How long does it take to negotiate a contract?
- It can wildly vary based on the complexity of the contract.
- Typically contracts are negotiated in 2-6 weeks once the issue is created, and all parties are aligned.
- Large contracts can take several months.
- If you are unsure or have a deadline you are working with, ask us in #procurement slack channel!

## What is the process to RFP and negotiate large hosted event contracts greater than $250K
   * RFP created by DRI based on guidance from department lead, and project goals. See [RFP template](https://docs.google.com/document/d/1gTcGBdpfeo9RQWWA8uZ37JQOkAIrcyoYO76byCMOsvM/edit).

   * Finalized RFP is shared with Procurement lead via issue (plus slack notification), finance departmental lead and DRI’s department head to verify we all agree on scope and timelines. Everyone has 1 business week to respond with any changes or requests before RFP is sent out to vendors for quotes and availability. This process will follow the rules based on  ...https://about.gitlab.com/handbook/finance/procurement/

   * If there are any substantial changes or objections the discussion process will be extended another business week to resolve. 

   * RFP responses will be shared (with parties outlined above: procurement, department finance lead and DRI’s department lead) in group drive or shared spreadsheet. 

   * As the RFP process comes to a close, the DRI will connect with the procurement lead and finance department contact to review top selection and discussions throughout the process with vendors. At this point, the DRI will introduce the shortlisted vendors to the procurement lead to kick off negotiation discussions. 

   * The DRI and procurement lead will jointly strategize on which points to contest and where critical cost savings lies and set savings goals per contract. 

   * Within a two week period of the RFP closing the DRI, along with counsel from finance and procurement, will compile a final list of selection and budget sheet for further review and approval from top level decision makers (see authorization matrix). 

   * Once the top vendor(s) have been selected, a purchase request issue will be created by the DRI. For events that require a bit more discretion, contracting will progress to it’s designated private project, hitting all the regular contract approvals and checkpoints in a private project. 


## How do I open a Purchase Request Issue?

#### [**Software/SaaS**](/handbook/finance/procurement/vendor-contract-saas/)
- Read more about this purchase type BEFORE agreeing to business terms and/or pricing.
- It is preferred we negotiate the best pricing up front to keep our ongoing costs to a minimum across our long-term relationships with vendors. We also continue to evaluate supplier pricing at the time of renewal to minimize our ongoing costs across our long-term relationships with vendors.


#### [**Field Marketing and Events**](/handbook/finance/procurement/vendor-contract-marketing/)
- Examples for this template type include marketing events, programs, sponsorships, catering, hotels, swag and services that do NOT involve the processing or sharing of data.
- Due to the rapid nature of these types of requests, procurement will only negotiate if spend is greater then $100K.
- If you will be sharing confidential data with the vendor, please use the Professional Services & General template.

#### [**Professional Services and all other general contracts**](/handbook/finance/procurement/vendor-contract-professional-services/)
- Read more about this purchase type BEFORE agreeing to business terms and/or pricing.
- This template can be used for addendums that either do or do not change pricing.



