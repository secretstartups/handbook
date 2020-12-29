---
layout: handbook-page-toc
title: "Procure to Pay"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


**Introduction**

Procure to pay is the process of requisitioning, purchasing, receiving, paying for and accounting for goods and services.

**Appplications Used**

|Applications|Primary Use|
|-----|-----|
|Tipalti|Accounts payable application|
|Netsuite|ERP system used by the Finance team to record the financial activity|
|Trip Actions|Used to book travel and accommodation|
|ContractWorks|Contracts are stored here|
|HelloSign|Used to sign contracts|
|Expensify|Employee reimbursement tool|
|Tipalti|Accounts payable tool|

It includes the following sub processes:

## 1. Procurement

[Link to Flowchart](https://docs.google.com/presentation/d/1o1FyUqvq524wTKc8EK9RxwWuF2L72i9QAqhXVW_HYGs/edit#slide=id.g7a5d2379ec_2_0)

### Introduction

This section outlines the various [procurement](/handbook/finance/procurement/) activities.

##### Procurement Budgeting

All departments submit their yearly budgets to finance team for review, comment and eventually approval. These budgets include any planned purchases for items,  or software that the department needs. When someone initiates the procurement process, the procurement team reaches out to the Finance Business Partner to confirm whether that item or software is in the approved plan for that person’s department. If the item or software isn’t part of the approved plan, then this would need to go through a purchase approval process as per [authorization matrix](/handbook/finance/authorization-matrix/) **(P2P.C.01)**. 
For more information on budget preparation and variance analyses, refer to [FP&A page here.](/handbook/finance/financial-planning-and-analysis/#expense-controls-and-improving-efficiency)

##### Creating an issue for purchase request

A confidential issue is to be created each time a person (the requestor) wants to purchase something on behalf of GitLab. An issue is created at least 60-90 days before the service/product is needed to allow for the best negotiations and terms. Issues are always created before agreeing to business terms / and or pricing. 

There are 3 contract templates to be used, depending on the type purchase.

**[Template 1](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/new?issuable_template=software_vendor_contract_request)** is to be used for these purchase types: 
1. SaaS Agreements
1. SaaS Renewals
 
**[Template 2](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/new?issuable_template=general_vendor_contract_request)** is to be used for these purchase types:
1. Professional Services
1. Field Marketing Events With confidential data being shared
1. All other contract types
 
 **[Template 3](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/new?issuable_template=vendor_contracts_marketing_events)** is to be used for these purchase types:
1. Field Marketing Events without confidential data being shared
 
 
**Template 1:**

- The [contract issue](https://drive.google.com/open?id=1Xi3MF49bxozuQF5_JinG3parmsccuV7x) is assigned to the requestor.
- The status of the purchase is entered in the comment section of the issue, and the box is checked off.
- After Steps 1-3 are completed and the approvers are tagged, the contract issue is opened and this box is checked off.
- Confirmation that this is the correct template for the purchase is given.<br>
- STEP 1:
  - Enter the [name](https://drive.google.com/open?id=1XdVkvLUA-0yWXLS9Kt5RiLpi0YQ4HA9l) of the software application at the top, and enter the URL of the vendor below this.
  - The software purpose is identified next. If the purchase is meant to be for an application that's meant to replace a preexisting tool, check that box (so that IT can also review the tool). If this purchase is meant to be a renewal for a tool that GitLab already uses, check that box. If the purchase is meant to acquire additional licenses for a tool that GitLab already uses, check that box. 
  - A high level description of the application is given next (provided the application is new to GitLab).
  - If this application integrates with current GitLab applications, then this box is checked off and the application names are mentioned.
  - If any data from this application is to be reported on from the warehouse or Business Intelligence tool, the box is checked, and a discovery issue for the Data team is also submitted [here](https://gitlab.com/gitlab-data/analytics/issues/new?issuable_template=Extraction%20Discovery).
  - Any additional documents are linked and the box is checked (RFPs, use cases).
  - The [Data Protection Impact Assessment Policy](/handbook/engineering/security/dpia-policy/).
 is consulted to understand whether the contract will need security review. Any contracts that will share RED or ORANGE data will need security approval prior to signing. Additionally, an annual reassessment of vendor's security posture is performed as part of the contract renewal. If any non-public GitLab data will be processed, transmitted, or stored by the vendor, a review of the vendor's information security program is required in order to obtain security approval. The Security Compliance team needs 3 business days to complete this review from the time they receive all necessary documentation from the vendor.
  - Complete a DPIA (Data protection impact assessment) for the item [here](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/compliance/issues/new?issuable_template=Data%20Protection%20Impact%20Assessment). This is done in partnership with  GitLab's Data Protection Officer and reviewed by Security Compliance during the Security Review. For more info refer [here](/handbook/engineering/security/dpia-policy/).
  - After the DPIA is completed, the box is checked. If this is a renewal, the prior period DPIA is checked.
  <br> 

- STEP 2:

  Any unsigned contract/quotes are attached [here](https://drive.google.com/open?id=1Xes_98GXt4B1JLT88ZyojPJnEO6T_LpI), and the box is checked off. The number of bids to be acquired is according to  spend amount [Link to authorization matrix](/handbook/finance/procurement/prior-to-contacting-procurement/).

    * Spends above $100k require multiple bids while spends above $250k require a RFP. Vendr helps GitLab get bids for Software spends, and an intake form on Vendor’s website can be submitted [here](https://www.vendr.com/intake-form) **(P2P.C.02)**. 
  A bid waiver can be requested from the functional leader and procurement on the issue. Negotiation with the vendor and  quote obtainment also occurs here. After these bids are obtained, they are compared. This comparison is done on a case by case basis. Internal discussion is done on a separate, confidential issue, where the bids are uploaded and compared, and the requestor/team reaches out to the vendors directly to negotiate. GitLab requires a contract even if the vendor doesn’t, and in this case legal can and will provide [contract terms] (/handbook/finance/procurement/vendor-terms-and-conditions/) to govern the transaction based on the level of risk. 

    * The annual budgeted amount (total annual amount in the budget) is entered and this box is checked off.
    * The expected Return on Investment is calculated and entered and the box is checked off. 
    * The expected number of licenses used in month 1 and 12 are entered and the box is checked off. 
    * If the spend is greater than $100k attach a second quote, and check the box.
    * If the spend is greater than $250k, an RFP is executed and linked, and the box is checked off. 
    * Purchase Orders are used for purchases over $100,000 USD, or with an annual spend of over $100,000 USD.If an invoice is received that is at or above $100K and there is no PO, the invoice will not be paid until a PO is created which could cause delays to the vendor's receipt of payment.
    * Exceptions to the Purchase Order process are:
    * Confidential Legal Fees - AP will route approvals in Tipalti based on matrix.
    * Audit and Tax Fees - AP will route approvals in Tipalti based on matrix.
    * Benefits & Payroll - Includes PEOs and benefit related expenses.<br> 

- STEP 3:
    * The type of GitLab data that will be processed by the vendor as a part of this contract is entered [here](https://drive.google.com/open?id=1XOYAOOekMU9Z4wvDzew0hEHETUezfEsy):
    * Depending on public or non public data the boxes are checked off accordingly.
    * The results of the DPIA completed in the first step (red/yellow/orange) are entered here in the appropriate box. 
    * If Non Public Data will be shared, an NDA is filled out [here](https://drive.google.com/file/d/1kQfvcnJ_G-ljZKmBnAFbphl-yFfF7W5U/view) and attached.
    * Additional Security Documentation is requested from the vendor outlined in the [Third Party Risk Management Procedure](/handbook/engineering/security/security-assurance/risk-field-security/third-party-risk-management.html). After this data is requested and received, this box is checked off. 
<br>

- STEP 4: 

  This step is all about getting approvals. The functional, budgeting, security, procurement, and legal approvals need to be obtained in the [issue](https://drive.google.com/open?id=195RvdGgDPqg7nQXRZdNd2qtw34eg10bV)), before an item is procured.
  Functional Approval is based on the [authorization matrix](/handbook/finance/authorization-matrix/). Technology approval is obtained by the VP of Information Technology. 

  The finance business partner is tagged in the item request issue, and needs to approve the item, after verifying that the spend is part of the planned budget. The Finance Business Partner also provides the Department and the GL account that this spend is to use, as well as the entity. 

  Security tags the appropriate reviewer/approver here.
  Anytime Non - Public GitLab data will be stored or processed by the vendor, security approval is required. Security is responsible for reviewing vendor security practices and will adhere to the [Third Party Risk Management Procedure](handbook/engineering/security/security-assurance/risk-field-security/third-party-risk-management.html). The Risk and Field Security Team assesses whether the vendor has the appropriate security policies and practices in place to protect any date that Gitlab shares with them.

    * If no vendor security review is needed, the box is checked by the Security Team.
    * If a security review was performed, and there are no risks associated with the use of this vendor, the box is checked and no approval is required.
    * If a security review was performed, and risks were identified with compensating controls in place, the Security Manager checks off the box, giving approval.
    * If a security review was performed, and major risks were identified, and the use of the vendor isn’t recommended, the Security Director or VP approval is required.

  Procurement approval is the next step. Procurement will not approve a contract issue until all other approvals have been received to validate the appropriate approval process and policies have been followed. In the event procurement approves an issue prior to other approvals in an attempt to avoid being the source of a backlog, procurement will comment on the issue that their approval is "subject to remaining approvals". At this point it is the responsibility of the issue owner to follow the remaining process and secure remaining approvals BEFORE obtaining contract signature.

  Legal is the final approval. Legal approves all contracts and a contract cannot be signed until it has been approved by the legal team.  Legal is tagged on the contract issue so that it can give its approval. What legal checks on the contract varies depending on the type of contract, the services/ products being provided by the supplier, whether or not Personally identifiable information or confidential information is accessed, stored or processed by the supplier, how GitLab will consume the products/ services, and whether or not the products/services are for internal use only or whether they will be distributed to GitLab customers.

  Various provisions must be reviewed based on the facts stated above. Additionally; GitLab legal is always seeking to obtain the correct limitation of liability (and damages waiver) for GitLab’s use of the services/ product and the appropriate liability for the supplier based on the services or product (including uncapped liability for indemnification obligations for 3rd party claims or breach of confidentiality or Personally identifiable information from the supplier). Legal ensures that the supplier is GDPR compliant, when appropriate. 

  Legal works for proper indemnification provisions from the supplier (and appropriate indemnification from GitLab to the supplier). Legal reviews the final draft, and if needed, appropriate confidentiality obligations. Legal confirms that any indemnification from GitLab to the supplier is proper and that, if in the contract, is not overreaching.

  If the supplier or contractor is creating work for GitLab, legal reviews and drafts proper ownership rights for any IP.

  Legal works on extending the payment terms to net 45 or longer if possible to help GitLab cash flow. Legal also:

    * Adds proper invoicing and PO language whenever needed. 
    * Adds payment dispute language. 
    * Deleting auto-renewals in favor of renewal upon supplier's receipt of GitLab order to better control budget.
    * Whenever possible add "termination for convenience" with no termination liability to GitLab to provide complete flexibility to the Business Unit for business-relevant decisions.
    * Look at security matters and engage the Security Team when appropriate --- including getting a Data Protection Agreement in place (adding it as an addendum to the Agreement when appropriate).
    * Review the warranties section for appropriate warranties.
    * Review and negotiate proper license rights to any software provision.
    * Illuminate supplier's right to use the GitLab name or logo on any customer list, advertisement or any type of announcement. 
<br>

- STEP 5:

  After all approvals are obtained, the contract with the legal stamp and the [issue](https://drive.google.com/open?id=1Y7GFZ8wrrY7mBLYsT2BhrRjkrju9UUml) are sent to the finance authorized signatory using Hellosign. The signatory is according to this [approval matrix](/handbook/finance/authorization-matrix/). 

- STEP 6:

  The Gitlab signed contract PDF is uploaded to HelloSign, and sent to the vendor for signature.
  The contract signed by both parties is then uploaded to ContractWorks. 

  Purchase Orders are used for purchases over $100,000 USD, or with an annual spend of over $100,000 USD.If an invoice is received that is at or above $100K and there is no PO, the invoice will not be paid until a PO is created which could cause delays to the vendor's receipt of payment.

  It is the responsibility of the business owner/issue creator to request a Purchase Order be generated. To do this, complete the steps below within the vendor contract request [issue](https://drive.google.com/open?id=1Y13Eg_9DXLgW9xBm3HI56e20TqAHJ5aq). Once these steps are completed, a PO will be generated by the procurement team:
  *  After the contract has been through the approvals process and signed by both parties, attach it to the issue in the comments section.
    *  A PO will not be created until the signed contract is uploaded to the issue in the appropriate step. The request will be rejected and delayed until the contract is uploaded.
    * A PO will not be created unless all approvals have been received in the contract request issue, and the vendor is set up in Tipalti. 
  * The Signed Contract is uploaded to Step 6 in the issue, and The contract start and end dates are entered,
  * The AP invoice approver is entered here and the box is checked off. 
  * To Create a Purchase order for Software Spends (Done by the Senior Procurement Manager):
    * [Login](https://drive.google.com/open?id=1_tBVVOFpjiNh0zc9ufIyTgBtMHhoz8UL) to Netsuite.
    * Under the Vendors tab, click on [“Enter Purchase Orders”](https://drive.google.com/open?id=1_vP9tOp1e_q3dhABzDHa-Xm3a9CVVRdI).
   <br>
   
   1. Primary Information
      * In The custom form field, select ["GitLab Standard Purchase Order"](https://drive.google.com/open?id=1Z5zBCuBKIHVpVveVUi3Im3G3hqEY4gSv).
      * Date field auto-populates to the current date.
         * If the date the Purchase Order is being completed is different from the date the contract is signed, update this field to reflect the date the contract is signed/executed.
      * The Vendor number field is left blank.
      * The Purchase Order Number field should be set to “To be Generated”
      * The [vendor field](https://drive.google.com/open?id=1Z8VKtwlbfAX9rXSSdoSdkgwdANOrKJvF) is a dropdown field, and the name of the vendor should match the vendor on the contract.The Vendor should already be set up on Tipalti prior to creating a new PO.
      * The memo field is left blank.
      * The approval status field is left untouched.All approvals should already be obtained and tracked in the Contract issue.
      * The Receive By field is left blank.
      * The next approver field is left blank.
      
  2. Classification
      * The Subsidiary field auto populates according to the Vendor selected in the [Primary Section](https://drive.google.com/open?id=1Z32Gp48F4sHtIkqglhiYbxULtaPhtTa4).
      * The Department field is left blank.
      * The Class field is left blank.

  3. Intercompany Management 
      * The Paired Intercompany Transaction field is left blank.
      * The Currency field is auto populated according to the Vendor selected in the Primary Section. Default should be "US Dollar".
      * In the [JE Support field](https://drive.google.com/open?id=1Z5WFqRwO-MjjzP9F_af-bdK5wQUYBp6e) the GitLab contract issue link is pasted.
      * The [JE Created By field](https://drive.google.com/open?id=1Ys-42538h02PHbACvGDkNDzTtpNgjvkI) is auto-populated with the user that is creating/entering the Purchase Order.
      * The Created From field is left blank.
      * The [Estimated Start Date](https://drive.google.com/open?id=1YaxcLmJHapsMs4Me0QeCaDfJP7O32KPX) is entered with the [contract start date](https://drive.google.com/open?id=1Yi2j0GIr5VLl-Al62PHtI_k0EBGTOYkl) from the contract issue.
      * The Estimated End Date is entered with the contract start date from the contract issue.
      * The Billed Amount field is left blank. 
      * The Amount Remaining field is left blank.
      
  4. Scroll down to the next section and click on “Items".
     * Click on [“items”](https://drive.google.com/file/d/1Yi2j0GIr5VLl-Al62PHtI_k0EBGTOYkl/view) to add a new line.
       * The [Item field](https://drive.google.com/open?id=1YcD5SNKD3f-4IOGwNzwwagkLO8K0rd97) is filled with the GL account found in the contract issue.[Screenshot Link](https://drive.google.com/open?id=1Yi_f_9c631uAnA-8JfMeTgtK4mU5D9Bo)
       * The [Quantity field](https://drive.google.com/open?id=1YiTAIpLvfwwvGPdID-IpZRSEPse8Ev7n) is filled with the total cost.[Screenshot Link](https://drive.google.com/open?id=1YpOeHPCjHp7LO1_NWMKiuh_Bx2sBAzGc)
       * The Units field is left blank.
       * The Description field is filled with a brief description of the Purchase Order. This description is the Title of the contract issue.
       * The Rate is always = 1.
       * The Amount is Auto-populated after adding the quantity.
       * The Options field is left blank.
       * The [Department field](https://drive.google.com/open?id=1YmKlfjzUs3iJ_8KbNjzGjUZe7P3s7jjS) is filled with the department found in the contract issue.[Screenshot Link](https://drive.google.com/open?id=1XrD91senU4VZVFDstgXEH70mzcPzFeUm)
       * The Class field is left blank unless a Campaign Finance Tag is found in the Finance Issue (for marketing events).
       * The Customer field is left blank.
       * The Billable field is left blank.
       * The Related Asset field is left blank.
       * The Service Date field is left blank.
       * The IC field is left blank.
     * Click on ["Add"](https://drive.google.com/open?id=1XkiOdRwft1s8dgbY3PNgQJqwr-Jwx4Jm)
     * If additional items need to be added, you may add them by manually entering in the new information or selecting "Copy Previous" and updating the fields accordingly.
     * If no additional items need to be added, Click on the ["Communication" tab"](https://drive.google.com/open?id=1XuBDKCTUC7y-9tDkA3T1ECSj6odxk1TD).
     * Select the checkbox ["To be E-Mailed"](https://drive.google.com/open?id=1aoP1-i59g6LALR025gVDa_zg1ePxAf-L) and populate it with the vendor email address.
     
  5. Open the [Custom tab](https://drive.google.com/open?id=1akiMjrAjhPn6cDvB8KqE9WvEOsPODodb).
     * [Requestor name](https://drive.google.com/open?id=13LZzVZBLEo2OMkRSmI2sBRqtRgxUOc0H)[] → Person who opened the [Finance issue](https://drive.google.com/open?id=1pWZ0vK8qhfgvPTxqKZeGkrPwN32c9yq3).
     * Requestor’s [email](https://drive.google.com/open?id=11gvs3DFo5VSzgYwmaioaUTW-Qvvikr_v) → Auto-populated after adding the requestor's name.

  6. Once all information has been entered, select ["Save"](https://drive.google.com/open?id=1hkUTxnbFX5zeIUWkFZZDU8ynXbNHzTbv).
     
  7. The screen will refresh and a message at the top of the screen will be displayed with the transaction save confirmation.

    After the Purchase Order has been completed, Procurement will:

    1. Add the Purchase Order number to the comments section of the Vendor Contract Issue.
    1. Attach the Purchase Order PDF to the comments section of the Vendor Contract Issue.
    1. Add the label “PO-Done” to the Vendor Contract Issue.

- STEP 7: 

  The accounts payable specialist checks if the vendor is available on NetSuite and Tipalti, and if not, sends them an onboarding request on Tipalti, after checking the [box](https://drive.google.com/open?id=1yxmljD-4UzYeH_eFKcp_Q-2wjP6JJERn) on the issue. After the vendor self onboards, or is onboarded on Tipalti, they are automatically set up on NetSuite too. 

- STEP 8:

  For all technology solutions, the requestor opens an [issue](https://gitlab.com/gitlab-com/business-ops/Business-Operations/issues/new?issuable_template=Add%20New%20System%20to%20Tech%20Stack%20Application%20List) to add the tool to the tech stack.

- STEP 9: 

  Contract savings [details](https://drive.google.com/open?id=1XF1VA9CnjH_pPRFxAzXSa0YhE2TU0c09) are entered here by Procurement, including negotiation details, the initial bid, the final pricing, and savings.

- STEP 10: 

  The [Issue](https://drive.google.com/open?id=1X9nyt8CWlVg329cb9FqiuprOcUlCZnb8) is closed and stored for future reference.

**Template 2:**

* The contract [issue](https://drive.google.com/open?id=1mNxWOPfm3rsIGbCIa_3jE7tB9uw68Ybd) is assigned to the requestor
<br>

* STEP 1:
  * Enter the [name](https://drive.google.com/open?id=1X5445UgR4RBnIoPu9kyrkORlPmIFChkn) of the vendor at the top, and enter the URL of the vendor below this.
  * A high-level description of the vendor is given next (to understand why this vendor may need to be contracted).
  * The [Data Protection Impact Assessment Policy](/handbook/engineering/security/dpia-policy/) is consulted to understand whether the contract will need security review. Any contracts that will share RED or ORANGE data will need security approval prior to signing. Additionally, an annual reassessment of the vendor's security posture is performed as part of the contract renewal. If any non-public GitLab data will be processed, transmitted, or stored by the vendor, a review of the vendor's information security program is required in order to obtain security approval. The Security Compliance team needs 3 business days to complete this review from the time they receive all necessary documentation from the vendor.
  * Complete a [DPIA (Data protection impact assessment)](https://gitlab.com/gitlab-com/gl-security/security-assurance/sec-compliance/compliance/issues/new?issuable_template=Data%20Protection%20Impact%20Assessment) for the item. This is done in partnership with  GitLab's Data Protection Officer and reviewed by Security Compliance during the Security Review. For more info check [here.](/handbook/engineering/security/dpia-policy/)
  * After the DPIA is completed, the box is checked. If this is a renewal, the prior period DPIA is checked. 
<br>

* STEP 2:
  * Any unsigned contract/quotes are attached [here](https://drive.google.com/open?id=1X4T6x6yi2AZf8JZG7q1JMN5ouC4ivA3Z), and the box is checked off. The number of bids to be acquired is according to  spend amount [Link to bid requirements](/handbook/finance/procurement/prior-to-contacting-procurement/).

  Spends above $100k require multiple bids while spends above $250k require a RFP **(P2P.C.02)**. A bid waiver can be requested from the functional leader and procurement on the issue. 
  Negotiation with the vendor and  quote obtainment also occurs here. After these bids are obtained, they are compared. This comparison is done on a case by case basis. Internal discussion is done on a separate, confidential issue, where the bids are uploaded and compared, and the requestor/team reaches out to the vendors directly to negotiate.  
  GitLab requires a contract even if the vendor doesn’t, and in this case legal can and will provide contract terms to govern the transaction based on the level of risk. GitLab’s standard contract is shown [here](https://drive.google.com/open?id=1K0pJyeQKgjDMfbsob8By-72PbMRSjgNj).  

    * The Total Contract value is entered and the box is checked off. 
    * The expected Return on Investment is calculated and entered and the box is checked off. 
    * Any other additional performance indicators relevant to the vendor are entered here and the box is checked off. 
    * If the spend is greater than $100k attach a second quote, and check the box.
    * If the spend is greater than $250k, an RFP is executed and linked, and the box is checked off. 
    * For Marketing vendors only, the Campaign Finance tag where applicable, is pulled directly from the finance budget document and entered here, and the box is checked off. 
<br>

* STEP 3:

  * The type of GitLab data that will be processed by the vendor as a part of this contract is entered [here](https://drive.google.com/open?id=1YM6MR_8Hwmz3y0LkM9eRxDuC-elDObqS).
  * Depending on public or non public data the boxes are checked off accordingly. 
  * The results of the DPIA completed in the first step (red/yellow/orange) are entered here in the appropriate box. 
  * If Non Public Data will be shared, an NDA is filled out [here](https://drive.google.com/file/d/1kQfvcnJ_G-ljZKmBnAFbphl-yFfF7W5U/view), and attached
  * Additional Security Documentation is requested from the vendor outlined [here](/handbook/engineering/security/third-party-vendor-security-review.html#email-template-for-requesting-security-documentation). After this data is requested and received, the box is checked off. 
<br>

* STEP 4:

  This step is all about getting approvals. The functional, budgeting, security, procurement, and legal approvals are obtained (on the [issue](https://drive.google.com/open?id=1TauFiEeQ0UOUV64alRzLcujrmn0vhYHR)), before an item is procured.
  Functional Approval is based on this [authorization matrix](/handbook/finance/authorization-matrix/). 

  The finance business partner is tagged in the item request issue, and needs to approve the item, after verifying that the spend is part of the planned budget. The Finance Business Partner also provides the Department and the GL account that this spend is to use, as well as the entity. 

  Security tags the appropriate reviewer/approver here.
  Anytime Non - Public GitLab data will be stored or processed by the vendor, security approval is required. Security is responsible for reviewing vendor security practices and will adhere to the Third Party Risk Management Procedure](/handbook/source/handbook/engineering/security/security-assurance/risk-field-security/third-party-risk-management). The Risk and Field Security Team assesses whether the vendor has the appropriate security policies and practices in place to protect any date that Gitlab shares with them.
  * If no vendor security review is needed, the box is checked by the Security Team.
  * If a security review was performed, and there are no risks associated with the use of this vendor, this box is checked and no approval is required.
  * If a security review was performed, and risks were identified with compensating controls in place, the Security Manager checks the box of, giving approval.
  * If a security review was performed, and major risks were identified, and the use of the vendor isn’t recommended, the Security Director or VP approval is required.

  Procurement approval is the next step. Procurement will not approve a contract issue until all other approvals have been received to validate the appropriate approval process and policies have been followed. In the event procurement approves an issue prior to other approvals in an attempt to avoid being the source of a backlog, procurement will comment on the issue that their approval is "subject to remaining approvals". At this point it is the responsibility of the issue owner to follow the remaining process and secure remaining approvals BEFORE obtaining contract signature.

  Legal is the final approval. Legal approves all contracts and a contract cannot be signed until it has been approved by the legal team.  Legal is tagged on the contract issue so that it can give its approval.
  <br>

* STEP 5:

  After all [approvals](https://drive.google.com/open?id=1912gNTWsmou6UywqJdTu7ikcQ-KBM0qK) are obtained, the contract with the legal stamp and the issue are sent to the finance authorized signatory using Hellosign. The signatory is according to the [approval matrix](/handbook/finance/authorization-matrix/). 
<br>

* STEP 6:[Screenshot Link](https://drive.google.com/open?id=1GOkEzJHsSdMgx3gulrdIE7gI8qOVTIgA)

  The Gitlab signed contract PDF is uploaded to HelloSign, and sent to the vendor for signature.
The contract signed by both parties is then uploaded to ContractWorks. 

    Purchase Orders are used for purchases over $100,000 USD, or with an annual spend of over $100,000 USD.If an invoice is received that is at or above $100K and there is no PO, the invoice will not be paid until a PO is created which could cause delays to the vendor's receipt of payment.

***Process to raise the Purchase order is the same as Template:1***.
<br>

* STEP 7:

  The accounts payable specialist checks if the vendor is available on NetSuite and Tipalti, and if not, sends them an onboarding request on Tipalti, after checking the box on the [issue](https://drive.google.com/open?id=1r0uDcb4aMUQMzjrP1c_mLBDTmI24pf8P).  After the vendor self onboards, or is onboarded on Tipalti, they are automatically set up on NetSuite too. 
<br>

* STEP 8: 

  Contract savings [details](https://drive.google.com/open?id=1_3bYWT10bNm5flwAWiuVS8o-7dl9vp58) are entered here by Procurement, including negotiation details, the initial bid, the final pricing, and savings.
<br>

* STEP 9:

  The [Issue](https://drive.google.com/open?id=1Zt6o0A-fuY7knuugFjhdsBbjVSAvLlk3) is closed, and stored for future reference.
<br>

**Template 3:** 

Confirmation is given [here](https://drive.google.com/open?id=1Zi6Ay8BOZAAaujMF7asMIkpzNwjyV8b6) that no confidential information will be shared to the vendor as a part of this contract. The box is checked off. 

* STEP 1: 

  * The requestor is assigned to the [issue](https://drive.google.com/open?id=18OZDIswEuErx0DQbNcBbO14xcGcYOHA9) at the top. 
  * The unsigned vendor contract is attached to the issue, and the box is checked off. Multiple bids do not need to be obtained here. GitLab currently doesn’t have a process to get the best pricing on field marketing and events. The requestor has the autonomy to choose and negotiate terms in the case of these.  The contract is uploaded to the issue. 
  * The vendor name is entered, and the box is checked off. 
  * The contract start and end dates are entered here in the issue, and the boxes are checked off. 
  * The Campaign Finance tag where applicable, is pulled directly from the finance budget document and entered here, and the box is checked off. If there is no campaign tag in the budget, the tag is created and entered into the budget and the issue.
<br>

* STEP 2:
  * The contract/invoice cost is entered on the [issue](https://drive.google.com/open?id=1Zg4C-lf5LkiCekdgRbdcpWak3DoSn2zG).
  * The overall event cost in the marketing budget is provided here on the issue.
  * The expected ROI, the Marketo Qualified Lead, and whether this item was purchased previously are entered here. (if so, the previous ROI is also entered here)
<br>

* STEP 3: 

  This step is all about obtaining approvals. The functional, budgeting, procurement, and legal are obtained(on the [issue](https://drive.google.com/open?id=13T8FTcskQD8JvoYGwOa2JfchjYEUrNrZ)), before the item is procured.

  Functional Approval is based on the [authorization matrix](/handbook/finance/authorization-matrix/). 

  * If the contract is below $10,000 , the Field Marketing Country Manager is tagged for approval.

  * If the contract is between $10,000 and $25,000 , the Field Marketing Country Manager is tagged for approval. After the Field Marketing Country Manager approves, he/she will tag the Global Director of Field Marketing for approval. After the Global Director of Field Marketing approves, he/she will tag the Senior Director of Revenue Marketing  for approval.  Approvals are given by checking the box.

  * If the contract is above  $25,000 , the Field Marketing Country Manager is tagged for approval. After the Field Marketing Country Manager approves, he/she will tag the Global Director of Field Marketing for approval. After the Global Director of Field Marketing approves, he/she will tag the Senior Director of Revenue Marketing  for approval.   After the Senior Director of Revenue Marketing  approves, he/she will tag the Chief Marketing Officer for approval. Approvals are given by checking the box.

  The finance business partner is tagged in the item request issue, and needs to approve the item, after verifying that the spend is part of the planned budget. The Finance Business Partner also provides the Department and the GL account that this spend is to use, as well as the entity. 

  Procurement approval is the next step. Procurement will not approve a contract issue until all other approvals have been received to validate the appropriate approval process and policies have been followed. In the event procurement approves an issue prior to other approvals in an attempt to avoid being the source of a backlog, procurement will comment on the issue that their approval is "subject to remaining approvals". At this point it is the responsibility of the issue owner to follow the remaining process and secure remaining approvals BEFORE obtaining contract signature.

  Legal is the final approval. Legal approves all contracts and a contract cannot be signed until it has been approved by the legal team.  Legal is tagged on the contract issue so that it can give its approval.
<br>

* STEP 4:

  After [all approvals](https://drive.google.com/open?id=1a-npEknlQAzy-Olo3xsmA9wmg0pVPs-4) are obtained, the contract with the legal stamp and the issue are sent to the finance authorized signatory using Hellosign. The signatory is according to this [approval matrix](/handbook/finance/authorization-matrix/). 
<br>

* STEP 5:

  The accounts payable specialist checks if the vendor is available on NetSuite and Tipalti, and if not, sends them an onboarding request on Tipalti using the vendor information provided, after checking the [box](https://drive.google.com/open?   id=11OJVnGicP3nflauSreR1ryUW_PaVCx-E) on the issue. After the vendor self onboards, or is onboarded on Tipalti, they are  automatically set up on NetSuite too. 
<br>

* STEP 6: [Screenshot Link](https://drive.google.com/open?id=1_yjJL5C4TQ-Ma5GBJa6TO8zUZi4D1094)

  The Gitlab signed contract PDF is uploaded to HelloSign, and sent to the vendor for signature.
  The contract signed by both parties is then uploaded to ContractWorks. 

  Purchase Orders are used for purchases over $100,000 USD, or with an annual spend of over $100,000 USD. If an invoice is received that is at or above $100K and there is no PO, the invoice will not be paid until a PO is created which could cause delays to the vendor's receipt of payment.

  It is the responsibility of the business owner/issue creator to request a Purchase Order be generated. To do this, complete the steps below within the vendor contract request issue. Once these steps are completed, a PO will be generated by the procurement team:

  * After the contract has been through the approvals process and signed by both parties, attach it to the issue in the comments section.
    * A PO will not be created until the signed contract is uploaded to the issue in the appropriate step. The request will be rejected and delayed until the contract is uploaded.
    * A PO will not be created unless all approvals have been received in the contract request issue and the vendor is set up on Tipalti. 
  * The Signed Contract is uploaded to Step 6 in the issue, and The contract start and end dates are entered,
  * The AP invoice approver is entered here and the box is checked off. 
  * To Create a Purchase order for Field Marketing Spends (Done by the Senior Procurement Manager):
  * Login to Netsuite
  * Under the Vendors tab, click on [“Enter Purchase Orders”](https://drive.google.com/open?id=1MWsoXt8ePF5GQaulwWzllmoUIZmksYXJ).
  * Primary Information 
    * In the custom form field, select ["Marketing Purchase Order"](https://drive.google.com/open?id=19TPI1oVFy7y7TsQk21Bjg8qubmaLJcuo).
    * Date → This field auto-populates to the current date.
      * If the date the Purchase Order is being completed is different from the date the contract is signed, update this field to reflect the date the contract is signed/executed.
    * The Vendor number field is left blank.
    * The Purchase Order Number field should be set to “To be Generated”
    * The [vendor field](https://drive.google.com/open?id=1Ui_H3zq1CZ8-7UgjxFDYfrBhaIkI3l03) is a dropdown field, and the name of the vendor should match the vendor on the contract. The Vendor should already be set up on Tipalti prior to creating a new PO.
    * The memo field is left blank.
    * The approval status field is left untouched. All approvals should already be obtained and tracked in the Contract issue.
    * The Receive By field is left blank.
    * The next approver field is left blank.
    * The [Estimated Start Date](https://drive.google.com/open?id=1dcqeTQZdc3MDmKvkawoqokJTMUkvNLjD) is entered with the contract start date from the [contract issue](https://drive.google.com/open?id=1t1X10N1zJxT2JLh9gtRamqffqavkOnak).
    * The Estimated End Date is entered with the contract start date from the contract issue.
    * In the [JE Support field](https://drive.google.com/open?id=1UuVWIqfJIncWnlVxCWsITRzLCc71SY6m) the GitLab contract issue link is pasted.
    * The Billed Amount field is left blank. 
    * The Amount Remaining field is left blank.
    
  * Classification 
    * The Subsidiary field auto-populates according to the Vendor selected in the Primary Section.
    * The Department field is left blank.
    * The Class field is left blank.
  * Intercompany Management - Follow the below guidelines to create the PO correctly:
    * The Paired Intercompany Transaction field is left  blank.
    * The Currency field is auto-populated according to the Vendor selected in the Primary Section. Default should be "US Dollar".
    * The [Requestor Name field](https://drive.google.com/open?id=1kKMnky66VVKkt-eZkesJkiJH9ywe0jss) should be filled with the invoice approver name found in the [contract issue](https://drive.google.com/open?id=1zij_9UcrTEB9gnP6Df0rWt329HcvuOy6).
    * The Requestor [Email field](https://drive.google.com/open?id=1jAikNubAqpwQkf8jt6pPaNsrqFCQBSL3) should auto-populate after adding a requestor in the Requestor Name field.
  * Scroll down to the next section and click on “Items".
    * Click on [“items”](https://drive.google.com/open?id=13AKrnmW393iBgzvoZjimBHe6Zz6Y5CC3) to add a new line.
      * The [Item field](https://drive.google.com/open?id=1xzpXxFSv1r4MiT_SNDoXp9eTkcMkC51x) is filled with the GL account found in the [contract issue](https://drive.google.com/open?id=1XS45SpHnzwKD1vIMX7BX_kSNv-OGz27x).
      * The [Quantity field](https://drive.google.com/open?id=1wU00iuCpC8xw1lXoa7ok6WfF1gjUVCkV) is filled with the total cost.[Screenshot Link](https://drive.google.com/open?id=1oqIvX-hUiZW5aXn9CBEM2XiwUoRR8BpN)
      * The Units field is left blank.
      * The Description field is filled with a brief description of the Purchase Order.This description is the Title of the contract issue.
      * The Rate is always = 1.
      * The Amount is Auto-populated after adding the quantity.
      * The Options field is left blank.
      * The [Department field](https://drive.google.com/open?id=1uatrYp3_zUvtx9s2XFNVHw0hO9AMfQs6) is filled with the department found in the contract issue.[Screenshot Link](https://drive.google.com/open?id=1TbZOEuBWxdttKBWV7QrcGjLNhWYY2k_c)
      * The Class field is filled with the Campaign Finance Tag is found in the Finance Issue (for marketing events)
      * The Customer field is left blank.
      * The Billable field is left blank.
      * The Related Asset field is left blank.
      * The Service Date field is left blank.
      * The IC field is left blank.
  * Click on ["Add"](https://drive.google.com/open?id=1HkkCxBnHUlPnMfHkHtxetIq8-KMoQAoF).
  * Once all information has been entered, select ["Save"](https://drive.google.com/open?id=1nEwYqY3aMhWIjrD83D6KhkLwm9yyf2Fe).
  * The screen will refresh and a message at the top of the screen will be displayed with the transaction save confirmation.

  After the Purchase Order has been completed, Procurement will:

    * Add the Purchase Order number to the comments section of the Vendor Contract Issue.
    * Attach the Purchase Order PDF to the comments section of the Vendor Contract Issue.
    * Add the label “PO-Done” to the Vendor Contract Issue.

<br>

* STEP 7:

  The [Issue](https://drive.google.com/open?id=188vH5wYFQAtC5CDfxl94zc0jfwIbQkxn) is closed, and stored for future reference.


**Addendums to a contract**

Any addendums to a contract need to be approved by Legal.

If an addendum to an original contract needs to be made, if the original contract has already been approved, but there is an addendum that does not change pricing, the addendum is to be attached to the previously made issue, and the Finance Business Partner is intimated, but finance approval doesn’t have to be obtained.<br>

If the original contract has already been approved, but there is an addendum that changes pricing, a new issue is created.

<br>

## 2. Accounts Payable

[Link to Flowchart](https://docs.google.com/presentation/d/1h7xrEApYluwnkjJBC-XReHmUcPGTdelGjA790YPFzlY/edit)

Introduction:

This section outlines the various Accounts Payable activities at GitLab. GitLab uses Tipalti to pay invoices. All invoices must be approved by the respective business units, PAO (Upto 100K USD), or CFO (Beyond 100K USD)  as per the approval matrix and the before any payments are made.


**Vendor Registration on Tipalti**
	
* Step 1: Intimation to AP Specialist to create an account

  Tipalti is used in conjunction with NetSuite. They are both synchronized, and anything that goes into Tipalti syncs into NetSuite every 10 minutes. Either Vendors completely onboard themselves onto Tipalti, or if the vendor doesn’t want to, the AP Billing Specialist onboards them on their behalf. The AP team sends a request to the vendor via email to onboard themselves. Check if the vendor needs to be setup in AP tool and if the vendor is not already setup, send a new onboarding request to the vendor are checked on the invoice [issue](https://docs.google.com/document/d/1_N8jJguTfP2biQ1y01iemIrzHul_w6X-PDNxGS3-IMw/edit) if a new vendor needs to be created on Tipalti.

  If the following details aren’t present in the issue, the AP team reaches out to the business to get them:

    * The Billing Email of the Vendor
    * The name of the vendor
    * Which subsidiary the vendor is to work with (If it’s multiple, then multiple vendors are created ex. PWC US, PWC BV, etc)

  ***Controls being implemented: P2P.C.03 and P2P.C.04***
<br>

* Step 2: Onboarding Request sent to Vendor 

  If the vendor is a company, then the company is selected, and Payee ID is auto-filled by Tipalti and can be used to identify the Payee in the future. The default AP account selected is always AP account 2000. After this, the Invite to the Supplier’s portal is checked. This option isn’t checked if the AP specialist is going to onboard the vendor herself. 

  The contact to which to send the [onboarding request](https://docs.google.com/document/d/1rjts_OVzhIiXlT7UdLONdylr1i6R6rQ_cS1FV5DYyI8/edit) is specified in the vendor onboarding issue.
<br>

* Step 3: Onboarding Request received by Vendor

  The vendor receives [this](https://docs.google.com/document/d/1T4ionTMxUCryzuekf83YEH4wGLoRBmkrZ4ElOhwLOeA/edit) request and fills out the rest of the data themselves with information such as;
      * The address of the vendor
      * Bank Account Information
      * Payment Type ( ACH, Wire, E-Check) 
      * Contact Information
      * Tax Information
  Otherwise, the AP specialist reaches out to the vendor themselves to get this information and enters it. 

  To add the payee manually, click [login](https://docs.google.com/document/d/1T6STj7pDeHZUVS-93slfqCkx8JlhKCsPF_kpO1ZJsHM/edit) as payee.

  Enter all the information shown [here](https://docs.google.com/document/d/1WNyiIfAK9ait9lQX2LhJrmew1Fh5W72sU1yDTQqULZg/edit). This information comes either from the Invoice, or the vendor themselves(the AP specialist contacts them directly)

  The tax form must be directly submitted by the vendor. This portion cannot be uploaded by the AP specialist.
Once the vendor is onboarded, they become [Payable](https://docs.google.com/document/d/17S2rqTcfCM-fczYFY_2Req-eVBenLVTWeZoK926JeX0/edit), and this allows the AP team to start processing that vendor’s invoices.

**Invoice Processing**

* Step 1: Submitting of invoice by Vendor

  Once a vendor successfully onboards himself the vendor will receive auto-generated instructions via email on how to submit their invoices to GitLab upon onboarding.
  The vendor has two ways to submit the invoice:
      1. They can log on and upload their invoices directly on the Tipalti portal 
      2. Send them to gitlab@supplierinvoices.com.
  In the cases where vendors send their invoices to the AP team, the AP team forwards the invoices to gitlab@supplierinvoices.com. This email ID is linked to Tipalti.

* Step 2: Coding of Invoices in Tipalti

  All the invoices submitted either directly by the vendor through Tipalti or through `gitlab@supplierinvoices.com` are coded by the AP Specialist and a line item is created which is reflected in AP team’s Tipalti portal. When the AP specialist receives an invoice, he/she cross-references it with its respective approved contract issue before sending it to the business head for approval. If he/she can’t find one, he/she reaches out to the requestor and if the invoice is above $5000, then the invoice isn’t processed.

* Step 3: Coding of Invoices by AP Specialist

  Once any invoices are received, the AP team puts in 
      * The date of the invoice
      * The due date of the invoice
      * The invoice number
      * The GL Coding (The GL Strings of the invoice are created on Tipalti and fed to NetSuite)
      * The Department
      * The Class
      * The service date (the time period the service is rendered)

  This [information](https://docs.google.com/document/d/1OSM73OGeuNc_MqtX8cW56keYP4YbZDU8q29fHzvTK2Y/edit) comes from the [finance issue](https://docs.google.com/document/d/17q_RbAUe0FRxnBWigzdcchTgI8BesGmJLEoIv3rYXGM/edit) for the invoice and is provided by the Finance Business Partner and the Director of Tax. 

  The [tax code](https://docs.google.com/document/d/1_2IXUs0oVjxC7_4tmOE7PyrNwKhhnUfw8U0UsIuyr5Q/edit) is entered by the AP Specialist according to the invoice.  A tax code is an input credit taken for the purchases made by GitLab, and is applied towards Sales Tax. The Tax Code can be selected from the dropdown menu shown above. The list of tax codes comes from NetSuite.
  After all this information is filled out, the AP specialist looks over and approves the invoice before it goes to the next step **(P2P.C.20)**. The link of the invoice’s issue is also included by the AP specialist with the invoice in Tipalti.

  ***Controls being implemented: P2P.C.06, P2P.C.11, P2P.C.13***

**Approval of the Invoice**

* Step 1: Invoice is sent to the business for approval

  Once the AP Specialist reviews the invoice, the invoice is sent to the relevant team for approval (to confirm that the invoice is valid). Anyone on the team can approve **(P2P.C.05 and P2P.C.09)**.

  The approver is entered using the dropdown menu shown [here](https://docs.google.com/document/d/18iy7zLLglcswEdsVC_M3E4KjO8pdg8dQpXosQY0TfBg/edit). 


* Step 2: Approving the Invoice

  There are several options:
    * Approve the invoice - The invoice is approved
    * Send back to AP - Sent back to AP with clarifications
    * Dispute the invoice with the vendor - The invoice is sent back to the vendor along with the reason for rejection. After an agreement is reached, the dispute is canceled on Tipalti, and the invoice is reactivated.

  The business can approve the invoice through the [email notification](https://docs.google.com/document/d/1mU2c9HcQHAn3cmc07dhM86Ue4e9HusSd-7iixzWxj-A/edit) itself, or it can log into Tipalti and approve the invoice on the [dashboard](https://docs.google.com/document/d/10sQSqUFbteeE4oCxxDNdMeme2m3QZljAduMu5dxr2n8/edit).

  Once the invoice is approved by the business, it automatically feeds into NetSuite.

  ***Controls being implemented: P2P.C.12***

**Payment of the Invoice**

* Step 1: Preparing an invoice for payment*

  Once the invoice is approved by the Business it goes to the pending payment section of Tipalti.
  The [Pending Payment Section](https://docs.google.com/document/d/1JFqTPaloVyYWEW5iJRm6Z61rmLtb88A7C5R1dGGPx1k/edit) shows all the invoices which are still to be paid.

  The invoice is paid through Tipalti. No standard Payment Terms with Vendors are defined at GitLab. 
  Payment runs happen every week. The AP team goes through Tipalti to check for invoices in which the due date is coming up (upto 2 weeks in advance). The AP team looks this far ahead for due dates to avoid any late payments. 
  To Pay a Bill, select the bill from the Pending Payments List, and then click the [pay bill](https://docs.google.com/document/d/1uMHbTfySaDiuSUWMzGUl3LOcQ5L9LhGWH5NM2giHeRg/edit) button.

  Click on Pay Bills on Specific Date, and [enter the date](https://docs.google.com/document/d/18wUjGRq0j0Ec-tqqowi04el_d5lWfSE2p-dsxosCLRk/edit). Usually the date is set to the following Monday so that Tipalti has enough time to get funded. Pay bills based on payment cycle is never selected. 

* Step 2: Submitting an Invoice for payment

  Once the invoice is prepared for payment it is now ready to be submitted for payment.AP specialist selects the invoice to be submitted for payment, and clicks on [“Submit”](https://docs.google.com/document/d/1-QSWPOkgopWBYR1iE7OQSLnzM1HSd5wnkMhKeNFbHz4/edit).

  Once the invoice is submitted a payment batch is created. 

* Step 3: Creation of a payment batch and approval by PAO/ CFO

  The batch consists of all invoices that are lined up for payment i.e once the AP specialist has submitted the invoices.

  Once a batch is created, an email notification is sent to the PAO or the CFO. The PAO has the authority to review invoices of total value upto 100K USD and for invoices beyond 100k USD, the CFO approves **(P2P.C.14)**.

  The PAO looks at the validity of each invoice if there are questions the PAO reaches out to the business approver and also verifies if the appropriate person has approved the invoice **(P2P.C.14)**.

  Each invoice in the batch on Tipalti is approved, and once that happens, Tipalti can release the payments **(P2P.C.14)**. 

  In the [status column](https://docs.google.com/document/d/12AgtDF1ztgoAvKSVQJVqlYxfP9DY3oJNVMJcbJFLElY/edit) of the Payment Summary section, depending on who has approved, it’ll say “_ of 2”.

* Step 4: Funding of Tipalti

  Once the batch is created, before payment, the AP team needs to fund Tipalti with the amount required so that payments of invoices can happen. The AP team funds Tipalti with the total value of the batch, and this wire transfer is also approved by the Director - Corporate Controller and the CFO in the bank portal. The different bank accounts used to fund Tipalti are Commerica and all other banks.

  To fund Tipalti:

  * [Login](https://docs.google.com/document/d/1SUnGR3o5NOxpQrtZVMY1LanOM2bM2p2MotfGDRiPSCQ/edit) to the [bank account](https://docs.google.com/document/d/1D9QJRHfvmHheWTOsSaMVhae0bxmrM5HdNASWznqhErQ/edit).

  * Go to [Payments](https://docs.google.com/document/d/1qbghAVEuNF4rQp2BcB_rQnS-21ugzQ5QC4NJEl8-AU8/edit).

  * Click on [New Wire Payments](https://docs.google.com/document/d/1w6H_1vBzAoBVAbrJTscv8bUcT3oyp89Sn37JwpEN7j4/edit). 

  * Select the [Tipalti Template](https://docs.google.com/document/d/1RO4fgXlMTiBxZb4hF50ZZwRMvrwgaBtAfBDhvjkDASY/edit).

  * Enter the amount to be funded, and the date, and click [preview payment](https://docs.google.com/document/d/1oIkuYGy5eiZrXrwIcfJmjq6PH1_x4zGt-GmAp0Z1ntQ/edit) at the bottom.

  The payment then moves to the Director - Corporate Controller and the CFO for approval. The CFO is intimated earlier that a payment is in the works, and then an email is sent after the payment is initiated. The aging report is mentioned in the [email](https://docs.google.com/document/d/1e_I3y6eOHtVUkm5mSAy2v6pQ7jl0_hW0EO-Tp-p3MWU/edit), so that the CFO can see the split-up of the amount to be funded to Tipalti.

  These are the steps on Comerica. For other bank accounts, the same process is followed.

* Step 5: Payment by Tipalti

  After the payment is made by Tipalti, the payment amount feeds into NetSuite, and NetSuite shows that the invoice has been paid. 

  At the end of the month, reconciliation is done between Tipalti and the bank accounts to make sure that all the payments that were made on Tipalti actually went through. The reconciliation is done every single month by the AP specialist and is approved by the Senior Accounting Operations Manager **(P2P.C.16)**. To pull a [reconciliation report](https://docs.google.com/document/d/1fakO4WVrB_sXPjd4XBoxLNmCJtw98ikrwz33im2aKzQ/edit).

  * Select a [time period](https://docs.google.com/document/d/187qo1dVLKnt23ixbWAsoQEWoxpyKOla3Svkbc2Oy13w/edit).

  * Select an [entity](https://docs.google.com/document/d/1d-VCjc0BSbumQEOGeqLJIxuLvJWs5ecMp7654M9irL8/edit). 

  The spreadsheet shows all the payments that went through in that time period. It also shows the expected ending balance, which should match the bank account balance. 

  On a monthly basis, the AP specialist keeps track of anything that's aged, and does research as to why **(P2P.C.17)**. If any clean up needs to be done, the AP specialist works on doing so **(P2P.C.17)**.

  To access the aging report, log on to NetSuite, and click vendors/payables.

    * Click [A/P aging](https://docs.google.com/document/d/1865ylM_QJ3q-1LQbgw8reohWPA-_xXEkkr9Xh1YYdG4/edit).

    *  Run the [report](https://docs.google.com/document/d/1gkMDMdXJzmYGj_mrjG0AxBxut_p3Z0LJPOAxdYeXuCs/edit) for the consolidated GitLab.

    *  Select the period, and click [refresh](https://docs.google.com/document/d/1gkMDMdXJzmYGj_mrjG0AxBxut_p3Z0LJPOAxdYeXuCs/edit).

    * This [screen](https://docs.google.com/document/d/1oCnBCpFXu-xAv8j8XxKNWuDmEZNlJwFVxDXb--mXVJU/edit) shows the current aging balance, aging history, and days aged (based on the terms set up with the vendor - invoice date). 

    * For days>90, any credits need to be offset. (Intercompany balances hit the intercompany AP account, but show up in the aging report because the invoices are transacted using AP. When these intercompany balances are reconciled, they are reconciled with the trade AP account with the help of the Senior Manager, Accounting and External Reporting.) 

  This [aging report](https://docs.google.com/document/d/1tNzWKXj6bteabzGce-DEMjkjoEDZhz5FGUxVmVOqF7M/edit) is also compared to the Balance sheet summary to make sure that everything ties. To access this click on [Balance Sheet Summary](https://docs.google.com/document/d/1ffxddH8DfopkMXaFv82tjXO7n0sshQf-hroMc-iGy1U/edit).

    *  Choose [consolidated](https://docs.google.com/document/d/1svFZajmoOQzwkncQ4s6nGMNUq-l8oVTdbKmJs_wNHi8/edit).

    *  Choose the period and click [refresh](https://docs.google.com/document/d/1qPtfoJRm17X0tusoyddThFE9ikKv7zFG207V12KnI28/edit).

    *  The AP account [total](https://docs.google.com/document/d/1EieFKrBgOkZLTBSCJadFHz4d3_QoJrjSC4GvuljvuOo/edit) should tie with the aging report total.

  This [file](https://docs.google.com/document/d/1g6iKJnNJPcIjyr5-5mWKCTot_zIp0S9qe5ORXlxWPK8/edit) is then loaded onto FloQast for review, and the Senior Accounting Operations Manager works with the AP specialist to investigate all the open balances **(P2P.C.17)**.

**Employee Advances**

All employee advances are done on a case by case basis. An issue is created and approved by People Ops and the CFO. The advance is booked to an employee receivable account and then offset after the employee expenses it. The amount can also be offset by payroll by deducting the employee paycheck by an appropriate amount. 

**Vendor Advances/Deposits**

Vendor advances for future events/services are paid through invoices and go into the prepaids section of the Balance Sheet. These are reconciled every month and reviewed by the Senior accounting manager. Advances need to be approved by the respective business heads, and have SOWs. When the vendor bills GitLab the final invoice, the invoice will show that a deposit has been paid prior, so the final invoice will just be the difference. The requestor needs to approve this invoice before it’s paid.
If the invoice doesn’t show this deposit, then it is the responsibility of the requestor to figure out that a deposit/advance has already been paid. 

**Check Payments**

Checks are used to make payments (mostly for tax payments). Currently, the check is written by the PAO (in future this  will move to the Sr. Executive Business Administrator), and is signed by either the CFO, and/or the CEO, before it is mailed out. If a physical check is needed the requestor will submit the request in an issue with the support and tag AP and Sr. EBA to CFO.   If the Sr. EBA to CFO has any questions about supporting documents etc. the Sr. EBA to CFO will reach out and will only write the check if the Sr. EBA to CFO sees the support attached **(P2P.C.10)**. The Sr. EBA to CFO prepares the manual check and sends it to the CFO/CEO for signature and the CFO/CEO sends it out **(P2P.C.15)**.  The Sr. EBA to CFO provides a copy of the check and/or check details in the issue.  AP books the invoice directly in NetSuite and creates the bill payment referencing the manual check.

**Payment of Employee Expenses**

All employees have access to and use expensify to submit their expense reports (for accounting purposes)  but only US policy employees are reimbursed through expensify. 
All other employees who are not paid directly through Expensify, payroll and/or a 3rd party vendor will be paid directly through GitLab's AP department with the normal weekly AP payment run as long as their report was "final approved" no later than end of day Tuesday of that same week. Any report final approved on Wednesday to Friday of that week will be reimbursed the following Friday. Once an employee is reimbursed AP will create the payment in NetSuite against the record (via Tipalti) to close the report as paid. These reports will be paid through Tipalti (an AP payment processing tool)

|Type|Mode of Reimbursement|
|----|----|
|Legal Entities|- US - Expensify<br>- Non US (all entities except Canada and UK)- Tipalti<br>- Canada and UK - Payroll|
|Contractors|Tipalti|
|PEOs|PEO's from Tipalti|

More information on this can be found here: 1. [Link](/handbook/finance/payroll/#expenses), 2.  [Link](/handbook/finance/accounting/#8-employee-reimbursements---expensify)

The data for employees that aren’t paid through Expensify is extracted via a report and forwarded to the correct people (Payroll/Third Party) for reimbursement. All the relevant and approved expense reports are exported as a CSV, and then forwarded.  This is done by the Payroll Specialist EMEA. 

Invoices are fed into NetSuite and an aging report is run every Wednesday or Thursday. This information is imported into Tipalti, and each employee ID is matched with each invoice (employees would’ve onboarded themselves onto Tipalti prior to this). The invoices are then paid. 

To upload an aging report onto Tipalti:

Download the [aging report](https://docs.google.com/document/d/1RGTtEuOFkNYY-wDRaXFMveeQ6mJeXwsGX6sFfwmhe9A/edit) from NetSuite. This contains all the information about the invoices with each invoice attached in the link section.

Prepare in the following [format](https://docs.google.com/document/d/1tA1hdhn-2uEECccNSj9iGo4hZYz6BLbvYIrMCP8GRfM/edit) to import into Tipalti: Identification number (Payee ID) for Tipalti, Amount, Submitted currency, the message to go along with the reimbursement, and the scheduled date of payment.

These payments are reviewed each Thursday before the payment run, and [marked off](https://docs.google.com/document/d/1tMe7pWECVr1BWVOKvu3rjKqK0vXzye6Clde_cJ3qpAs/edit) by the Senior Accounting Operations Manager.

To import this file into Tipalti, click [payments](https://docs.google.com/document/d/1yF0vZntcCzo0AC5OWjJzTaVin0Jt08gfaRCmcG_NRm0/edit).

  *  Go to upload Payment File and click [select](https://docs.google.com/document/d/1jAHdiDMvLM5W0rlso4mLWh2P_7aNQj-o8R99zvTer2Y/edit).

  *  Choose the [CSV payment file](https://docs.google.com/document/d/1OLxCxuTdApFzcsNO3a-Y4dcSZOJVlhOa9bwkjhAcUY8/edit) that you want to upload in the previous format.

After uploading, these follow the same approval workflow as any other invoice.

**Synchronization** 

Tipalti is interfaced with NetSuite every 10 min. Any errors in syncing are sent as email notifications to the AP specialist and are cleared on a daily basis **(P2P.C.18 and P2P.C.19)**. 

[Example](https://docs.google.com/document/d/1vZT5B3N-gfSILjLBLvdSW4cDwIvPOKCgE-SUaw6dUeM/edit) of an error log on Tipalti:

<br>

## 3. Travel

[Link to Flowchart](https://docs.google.com/presentation/d/1fVNzfQW-xM5_MMn4_N__ORwaGHjexgc9pTtRvXYQu2M/edit#slide=id.g7a5d2379ec_2_0)

Introduction:

This section explains how employee travel takes place in GitLab.
Travel Bookings can be done using TripActions or through other websites/means.

**TripActions** [Screenshot Link](https://docs.google.com/document/d/1XCeClxcfVoaX-5jx0xpW1HPIHmy97PWUrezqUc11Who/edit)

TripActions is accessible by all GitLab team members and can be used to book flights, hotels, trains, and cabs. 

TripActions synchronizes with Okta so that a separate User ID and password don’t have to be created. 
To log in to TripActions via Okta, 

* Log in to Okta and click [next](https://docs.google.com/document/d/1uWHOXqvlB-KF_MGwaB_6W7DEmZH3MRLtshE-yHBm8JQ/edit). 
* Enter your password and click [verify](https://docs.google.com/document/d/16KbwaQVQ8OFpFJt3i4KHK12Dv52yu5F-Kvc_bedJzxI/edit).
* Enter your [security key](https://docs.google.com/document/d/1OeM7pv83klQjeD2vgnNmVMOnkr5FvKgI2vmbXQJnGu4/edit).
* Click on the [TripActions](https://docs.google.com/document/d/1mru9oPK0KJq54s0r4jVGWGRscpjZmd8lURLGq0UbTAY/edit) after logging in to Okta.

After processing occurs, TripActions [opens](https://docs.google.com/document/d/19zjWD_bCCryv92AfVBibl5a-AZoKxeaUj8BgYcwlCiM/edit) .

TripActions also synchronizes with BambooHR, so that the details of the employee (department, manager, etc) are loaded onto TripActions, and Expensify so that every TripActions expense is pushed to Expensify and then approved by the employee’s reporting manager. All receipts are auto attached by TripActions or Montpac.  
There is a [reconciliation report](https://docs.google.com/document/d/19sCsKwNjw3IHGK5ES_vnLFkC_pRfghjpk9sFF24E9FU/edit) that is prepared by comparing the charges per the Amex Statement to the bookings made once a month.  The reconciliation report is prepared by the Senior Accounting Operations Manager and reviewed by the PAO. The reconciliation is prepared and sent for approval to the PAO by 1st business day of the month.

Montpac uses this recon report to help with coding and informs the Senior Accounting Operations Manager/Accounts Payable Manager (in future) if any receipts are missing and the Senior Accounting Operations Manager will reach out to TripActions to get the bills.


To book, [select](https://docs.google.com/document/d/1nvBTQwnIyca5BkONwUUGbEm-mSd-9StvJN_c40lKW_4/edit) what you want to book (flights, hotels, trains, cars).

* **Flights**

All flights have to be booked through TripActions (Business related flights). No credit card is needed.
 
Fill in all necessary trip [details](https://docs.google.com/document/d/1W4L8IXXC_WTtEDqn5kQ_jPEEz3I9bGWuVwVLQEaTg10/edit) like:
  * From location
  * To location
  * Whether the trip is a one way, round trip, or multi-city trip
  * The date(s) of travel, along with the time, if needed
  * The names of the traveller(s)
  * The number of stops preferred

A [list](https://docs.google.com/document/d/1bY4SAHZGG1URb-sI_9iBuYq_va6AOyt7adENnUOVDhw/edit)  of options is displayed, where the user can select which one they want, and continue with the booking.

The bookings [default](https://docs.google.com/document/d/1eERUUFnMPGSS6hjnP2N9ZT0le8JpDyZ_H5HP_f1MO-I/edit) to the travel AMEX card, which is available for all users.

When a card is added, it is only visible to that user. 

GitLab has a [travel policy](https://docs.google.com/document/d/1Hqc-X8zB24ZvzNt4mDL3LCqInCXq3hMcLhP3LTrQ2Ik/edit) defined on TripActions.

* A Short flight is defined as under 8 hours.
* A long flight is over 8 hours.
* There is no max price set for these bookings.
* GitLab employees default to economy for short flights, with an upgrade to economy plus being permissible if you are above 6’5’’. 
* On long flights, premium economy is allowed.
* No cabin upgrades for short and long flights are allowed, but seat upgrades are allowed for both. 
* Directors and Executives are permitted to fly first class. 
* Anyone can request an upgrade, but justification should be given to the person’s reporting manager, or the request will be denied.

[Link to the travel budget limits](/handbook/travel/)

If a booking is not according to this policy, or out of policy, the user’s manager gets an [email](https://docs.google.com/document/d/1UJ8s9zpljMX2RB1OwOYS4w-FFVB1moEfDvznHQdsluE/edit)  with a justification for the booking being out of policy.
If the manager doesn’t deny the request within 24 hours, then the request is automatically approved. If the manager wants to cancel the booking after 24 hours, they or the employee need to reach out to TripActions support to do so. There may be cancellation fees involved, depending on what was booked. 

* **Hotels** 

Hotels booked through TripActions need to be charged to a personal credit card. The costs can be submitted for reimbursement via Expensify.

Fill in all necessary trip [details](https://docs.google.com/document/d/1VtB1idOogTD9ImBbFytDbEA5wDST19hTUWLc_LcRJCs/edit) like:

  * Name of the destination city/address/hotel name/landmark 
  * Duration of stay
  * Name of the guests
  * Number of rooms

Select the [option](https://docs.google.com/document/d/1vOcpGO25Iu-YwLmkneJGxUYu-7IfFY00JtifYuHmAsQ/edit) that you want.

Choose the [room option](https://docs.google.com/document/d/1tJx3Za2bbj49GFkvW9t8IODidtJy27N0T21iPKF597A/edit) that you want. 

The process followed to make the payment is the same as in flights except, the employee will use their personal credit card to make the payment.

* **Trains**

Trains can be booked through TripActions and no credit card is needed as the trip fare is charged to the corporate AMEX card.

Select Trains and fill in all necessary [details](https://docs.google.com/document/d/1iuU29fHGSa8SBk4Dwsmn6311-YlPnZ4Wu3psDnFmhJQ/edit) like:
* One way/round trip
* Starting point and destination
* The date and time of travel if one way, and additionally, the return date and time if it is a round trip
* The traveler(s)
* Whether the trip is personal or billable to a client

Select from the [options](https://docs.google.com/document/d/1tnCqxIJo2_YtbTWg01sG4PqGXZzJgxJeAT-5tlq-vec/edit) displayed.

Finalize the booking, and proceed on to the [payment](https://docs.google.com/document/d/13Ak3PDKVCBCUtDOGiliKlMEp-4-Ct2yvKQg2A2zw6gw/edit) as with flights.

The process followed to make payment for the trip is the same as the flights. 


* **Cars**

Cars booked through TripActions need to be charged to a personal credit card. The costs can be submitted for reimbursement via Expensify.

To book a car, select the car tab.
Fill in all the necessary [details](https://docs.google.com/document/d/1NO2mPYZ_SmaFsQvpcjaZ6-DY6Ic9xQEybmcwvP9Zztw/edit) like; 
* Cars by airports/Cars by location
* The pick-up point and the drop off point
* Duration
* The person involved
* Whether the trip is personal or billable to a client

Select from the [options](https://docs.google.com/document/d/1mB33rpu_MPsbL8iIkMz20AFrQCNV3sGOPdyK11H5V5o/edit) displayed.

Finalize the booking, and proceed on to the [payment](https://docs.google.com/document/d/1eUKQJwuMeAIZq_SjXl3-CXrie3IseTRkcQnUPbJJTs8/edit) as with flights.

The process followed to make the payment is the same as in flights except, the employee will use their personal credit card to make the payment. 

To bill a trip to a client, select the [bill to client](https://docs.google.com/document/d/1Dykp81UjKuWHWgalE6KJvGuDEOAEuv99QPsdbURl_vQ/edit) option at the beginning of the booking.

At the end screen, enter the [name](https://docs.google.com/document/d/1JTA2unfyi9rQAc68ypOY63mbMRUFBgCS8nG780YcWhQ/edit) of the client that you want to bill.

For more information on billing a client, please see [here](https://patch-19826112268552.about.gitlab-review.app/handbook/finance/sox-internal-controls/index.html#6-employee-reimbursement) 

The current TripActions admins are:
1. Business Systems Analyst
2. IT Manager
3. IT Operations Systems Administrator.  

The PAO currently owns TripActions with GitLab looking for a finance head to own it instead.

There is an Access report audit done every quarter by the Business Systems Analyst.

TripActions can also be used to book personal trips, in which case, the user needs to use their personal credit card. GitLab corporate credit cards won’t show up as options for personal trips.

For events, the admins can assign delegates to send invitations to people inside and outside the organization. These events have travel budgets that are to be adhered to when booking through the invitations for attendance. 

If someone books out of policy for an event, the out of policy approval email is sent for to the delegate who sent out the invitations. 

To add a delegate: search for them and [change](https://docs.google.com/document/d/1NdeqHcJZD-6ksudR8gOqSzH1hIo-J9cGyOqrMyt-xBM/edit) their permissions to “invite guests for self-booking”.

To send invitations to someone, click on the [manage invitations](https://docs.google.com/document/d/1oXA0T9XGeihJJH5sLPIxT1uA9aqDzUlFhc222P0BLvA/edit) button.

You can manually enter the details of each guest, or you can upload all of them using the “Upload info” tab. The file to be uploaded needs to be in the .csv [format](https://docs.google.com/document/d/1RAh28TtSV1t9uppmyuX6l-bc21I-nJJ7Sj9IcZ-Ohcw/edit).

Next, enter the [details](https://docs.google.com/document/d/1RqJGngs4XLWHlYzk7Hao7Iw7Fvpqan4CRsWj12eQrzQ/edit) of the event, including;
* Name
* Address
* Duration
* Hotel check-in and check-out dates

You can then set a [travel policy](https://docs.google.com/document/d/1lM9KodYQUsexqcSGUNGN0PQZp6-Ds2njW9_wz1Ij8UA/edit) for the guest, which depends on the budget of the event.

Next, the payment information is entered. You can also [enter](https://docs.google.com/document/d/1PetsA0wY7mWWdQkWVnIXUkiupGzyEuT7Yo2Dl7tc5tY/edit)  the cost center, department, trip purpose, and allowed hotel rates. These all change, depending on the event.

After everything is filled out, you can review the invite one last time, and then send out the invitation by clicking [“Send emails to all guests”](https://docs.google.com/document/d/1S4mQiOmJD-QZhm6G3uL7diFa-4YzHkOQQAo0FaMvKjM/edit).

**Self Booking**

If the employee chooses not to use TripActions for whatever reason they can pay for it themselves or with their company credit card, and then get reimbursed via Expensify. They still need to book as per spending [policy](/handbook/travel/), as their reporting manager will need to approve on Expensify. 


For more info, please visit [here](/handbook/travel/#booking-travel-through-tripactions)

<br>

## 4. Marketing Expenses

[Link to Flowchart](https://docs.google.com/presentation/d/1DPHdLoaFti3zhBb8ZqUpc29ZR62b9HsELX8RxMio3Vs/edit#slide=id.g7a5d2379ec_2_0)

Introduction:

Marketing spends can be categorized broadly in 2 main groups: People & Programs. Operations have ownership of software subscriptions which usually get associated with programs but are used internally.  

People spend include salaries and benefits and other human capital-driven operating expenditures such as travel and entertainment, office equipment, etc.
Program spends include those that drive activity into the marketing areas such as Public Relations, Digital Advertising, etc. The following categories are used:

1.  Digital Marketing
    *  Paid Digital Advertising

1.  Field Marketing
    * Field Events
    * Paid Digital Field

1.  Corporate Marketing
    * Corporate Sponsored Events
    * Awareness
    * Brand Activation
    * PR
    * Content
    * Swag

1. Brand & Digital Design   

1.  Strategy
    * Competitive Intelligence
    * Analyst Relations
    * Customer References
    * Buyer Research
    * Partners & Channel Marketing
    * Product Marketing
    * Technical Marketing

1. Marketing Operations (mostly SaaS)
1. Community Relations
1. Team building/Enablement

**Budgeting**

Marketing budgets are rolling and are created top-down by the Chief Marketing Officer with help from Marketing Ops and Finance Business partner using the CFO’s guidance based on Operating Expenditure as a percentage of Non-GAAP revenue. Budgets are finalized and approved by the Board of Directors.  The budget is broken out department wise and the departmental leadership builds a bottom-up plan based upon this guidance. 

The [Marketing Capacity Model](https://docs.google.com/document/d/15l4olZxYfm-n9LDRI7tCX_a1E1euoweG1WiU08bFaEQ/edit) feeds into the [GitLab financial model](https://docs.google.com/document/d/1ByPgYlxT0dhtsAKduRDAxm8KDQ8wFjaZMX3QIV6yJFQ/edit) and is the planning model for the Marketing organization.

This model contains all active GitLabbers and their salary information. It also contains benchmark salary data and bonus and benefits packages. 

Marketing spends go through the procurement and accounts payable process, and for each spend, an [issue](https://docs.google.com/document/d/1ZZDvTF3fB1tbN4SIi0x-n4M35JvzpBB0CML2H0CW5us/edit) is created where the Finance Business partner provides the GL account, the cost center, and the department to be used for entry booking.

The FY20XX  Marketing Plan in the [Revenue Model](https://docs.google.com/document/d/1vjZ-LFsh3nrnoCHdqvq_rHQcjgw7Qun110dxeaBk9B4/edit) is a snapshot of what the plan looks like. The Chief Marketing Officer breaks down the budget based on the following categories and amounts (which are percentages of the demand generation budget).

1.  Digital Marketing (Demand Generation) is assigned a spend based on marketing funnel activities (how much spend you need in order to drive a certain amount of pipeline that you generate).

1.  Corporate Marketing Spends are broken up into: 
    * Public Relations, 
    * Owned Events (Events hosted for Corporate Marketing), and 
    * Awareness/Brand/ Content

1.  Marketing Operations (Any SAAS tools or software subscriptions that the marketing team needs to use ie. Marketo). 

1. Product Marketing is responsible for product positioning, value messaging, and go-to-market strategy to support sales and outbound messaging with analysts, press, and prospects.  

1. Community Relations spend is the money that the Community Relations team uses to build and maintain relationships with the open-source community. 

1. Staff training and enrichment is training and development.	

1. People Spend includes salaries and benefits, office equipment, payroll tax, and other people driven costs. 
 
**Budgets Vs Actuals**

Budgets Vs Actuals for Marketing Spends are tracked on NetSuite.


* To do so, [log on to NetSuite](https://docs.google.com/document/d/1OB3FBghVOl_0UxjwnV9nyJaBJC2vkYGedasPCXhdxrE/edit).

* Click on [Budget vs Actuals](https://docs.google.com/document/d/1nNzMJp23cNtkemQvevRF4i9lB8ROcYj31f3OQi6YlGM/edit).

* [Select](https://docs.google.com/document/d/1J9HXesJEWaRrbKYVDcSpNCT7kMrYbowZ1KWX08IHWko/edit) the period and click refresh.

* Select the [departments](https://docs.google.com/document/d/1rShHms2k_3B90FHlSJdfrHdokLG73DDZ2lZzaTdVEPM/edit) which you want to view. 

* Budgeted amounts, actual amounts, and the amount over budget are [displayed](https://docs.google.com/document/d/1k1ZIn9HsEL6bor42Psr-ey1Bz1EcEFak2I_UqMIpaNw/edit).

This [data](https://docs.google.com/document/d/1GaZPC5rm0PDZ8RexzVI9BYyu0TsdrOLfkA89DmLh2i4/edit) also flows into Sisense so that it can be visualized in the dashboard form. This data is updated in real-time.
Any spending is approved via the [Procure to Pay process](/handbook/finance/sox-internal-controls/index.html#1-procurement), and each spend is approved depending on the template used and the [authorization matrix](/finance/authorization-matrix/).

**Post Marketing Event Assessments**

Before any spending takes place, a potential Return on Investment (ROI) is calculated for each spend. Field Marketing, for example has 4 different types of events, and each type has a different Marketo Qualified Lead target(30%,50%,70%). [Screenshot Link](https://docs.google.com/document/d/1tmBOQ1V87XhuGu6KWUViLMC82U1rwu4RakrANinpKao/edit)

The leads are calculated with the formula shown [here](https://docs.google.com/document/d/1Dyvj-DVhETjQ8xRQ045q644iwkG-fHwmINHarphtLAU/edit). A percentage of the goals for leads need to become Marketo Qualified Leads, and the percentage is defined for each type of event. 

After the event takes place, all relevant data is entered on SalesForce. Sisense contains a [marketing linear attribution model](https://docs.google.com/document/d/1RpvXKgk9aRukW2gUu3GQ-CGzKuIF3txwBihIi6_ZN6g/edit) that tracks the actual Pipe to Spend (P2S) ratio of the event from the data entered on SalesForce via the campaign tag of the event. A Google Sheet is also filled out by all of the GitLab attendees detailing the high and low points of the event, any prospective customers to follow up on, and whether the event should be repeated again are consulted. 

When the spend for the event gets put through the procurement process again (for repetitions), a screenshot of the actual Pipe to Spend is posted on the issue, and a decision is made on whether the event will be approved again **(P2P.C.01)**.
A similar process is followed for other marketing events (non-field).

For more info on marketing please visit [here.](/handbook/marketing/)

## 5. Research and Development

[Link to Flowchart](https://docs.google.com/presentation/d/1UspQxMeXD4W6DpHCSBN6Au13frUTe1XTP5weQQULG3o/edit#slide=id.g7a5d2379ec_2_0)

Introduction:

GitLab has 7 different engineering departments, through which its Research and Development activities take place. These include:

* Development
* Infrastructure
* Quality
* Security
* Support
* UX
* Frontend

Development is focused on delivering Merge Requests promptly. 

The Infrastructure Department is responsible for the availability, reliability, performance, and scalability of all user-facing services. 

Quality is responsible for reviewing product requirements and designs to identify risk and steer the team on quality strategy and reviewing code in collaboration with counterpart teams to ensure adequate test coverage.

Security’s vision is improving GitLab Products’ time to market (new features getting into releases faster and preventing slippage), Strengthening GitLab's enterprise grade security, and Reducing GitLab's threat landscape.

Support is responsible for ensuring the success of the customer. When a customer experiences trouble or downtime, support takes action with the same urgency support would have if GitLab were experiencing downtime.

UX supports the designing and building of software that solves important problems, is easy to use, enables everyone to contribute, and is built for a diverse, global community.

Frontend is responsible for working on GitLab’s products. This includes both the open source version of GitLab, the enterprise editions, and the GitLab.com service as well.

R&D is driven from the product management side where GitLab identifies and funds the features and categories that it wants to have available for the next calendar year. 

**Budgeting**

The finance team is responsible for the budget. All department leaders in conjunction with the Finance Business Partner  submit their yearly ongoing budgets to finance. These budgets include any tools or software that the department needs. These budgets are approved by the E group, and the board and are reviewed quarterly.  Variances between budget vs actuals are tracked on Google Sheets for GitLab.com, using the data from NetSuite. These are looked at in the monthly infrastructure meetings. 

**Allocation Model**

The finance business partner builds and runs the allocation model which is responsible for doing the allocations of costs. Journal entries are booked by the accounting team for allocations. The entries are populated in a Google Sheet and are used as a reference for the teams to book entries in NetSuite. For each spending, an issue is created where the Finance Business partner provides the GL account, the cost center, and the department to be used for entry booking. 
GitLab.com allocations are done using the allocation model which derives all its data from NetSuite. This model is signed off by the CFO, the PAO, and the VP of Finance, and is updated as needed. It’s reviewed each time it’s updated/changed.  The model pulls all costs out of the natural entities and allocates them out to the appropriate entities based on revenue. Inputs from the model come from NetSuite and the issue with the invoice attached. The accounting team takes the allocated costs that come from the model and books them on NetSuite. 
The allocation model is built on a [google sheet](https://docs.google.com/document/d/18NjdPHD7ZiOtQWJ799nPibIGvUqGcxK5H4Bmm0Vs5MQ/edit) and shows all of the costs that are associated with engineering.

*  **Support:** 

The model shows all of the revenue that [support](https://docs.google.com/document/d/1MQgYl32Q0PCjWv1Kk340rYEvTX-pbwvfuQzM73oME_8/edit) brings in towards GitLab.com, and other revenue, along with the costs associated.

*  **Infrastructure:** [Screenshot Link](https://docs.google.com/document/d/1WZ0fixfn6PyfeWQt0cgOR1KdHfMETw6rwxab3OPdszc/edit)

The cloud service internal costs are allocated towards the internal costs, and cloud service external costs are attributed depending on paid vs free users. Paid Users are booked to Cost of Good Sold and Free/Internal Users are booked to Marketing Expenses.

Paid and free users are calculated using a Sisense dashboard that comes from NetSuite, which shows the total number of free/internal and paid users. [Screenshot Link](https://docs.google.com/document/d/1xtJn-S-JecMbwXI3nsxPcVETciE3TUFNAkw1xsluRKE/edit)


* **Cloud Services Allocation:** [Screenshot Link](https://docs.google.com/document/d/1Gj6LPD7GbLrUwtbAiKA-1fBwgFxJJQen7_9okGkaZhs/edit)

Internal Users are based on the GitLab headcount and GitLab.com total users. A percentage is calculated by determining headcount divided by total users. This is done for all vendors except GCP. For GCP, data is pulled directly from the GCP portal [Screenshot Link ](https://docs.google.com/document/d/1T5bZEh5_17MCtQ3P7-76Qelrq-alMHw321t4uE8yyoI/edit)


This info shows the number of users (internal and external).[Screenshot Link](https://docs.google.com/document/d/1rhPIN-4VKWW4e8hjsUSNGs2ljxdfQHjA4ePqkQxFDFY/edit)

Total Internal Cloud Services hit engineering, and total external cloud services are split into paid users and free users like with infrastructure.

All this data runs into the GitLab.com [R&D P&L Sheet](https://docs.google.com/document/d/1vAaKK8hyGQHfcUAs207wdxZ9YKFwcfUympgfnz2ojlQ/edit).

A [mapping outline](https://docs.google.com/document/d/1llgv2dnJRc_7pKzqDETTVxOlHn1EuDKT7b40qee5mXo/edit) of each account is created by the Finance Business Partner to code numbers appropriately.

This mapping is done via issues where the Finance Business Partner identifies which GL account and which department within R&D the expense needs to hit.

R&D expenses are booked to the indirect expense (600x) accounts, while GitLab.com expenses are apportioned to the Cost of sales (500x) accounts. 

R&D expenses are allocated to the 500x COGS accounts with Gitlab.com 
600X accounts are 6026 - hosting services and 6060 - subscriptions.

**Variance Analysis for Gitlab.com (R&D Expenses)**

Budget vs Actuals are done on Google Sheets for GitLab.com. These numbers come from NetSuite. This is reviewed monthly as a part of the Infrastructure Review, and the monthly Finance variance review. Variances above 0 are colored in red, and those below 0 are in green.
There are no thresholds hard defined as of now (baseline = 0) for variances, but a loose threshold used is +/-10%, post which a discussion is to be had around the variance.
The primary metrics that would drive a variance are also shown [here](https://docs.google.com/document/d/1aTIKoN7W8MwzZkNrjq5Jp7XpuXFnuFXciyJj6RjTo8I/edit).

<br>

## 6. Employee Reimbursement

[Link to FLowchart](https://docs.google.com/presentation/d/1ZVPzQ8Cv3EC4ur3XEhIaaeaUlH-1XKNjZwOr-8QY7yk/edit#slide=id.g7a5e42a379_0_17)

Introduction:

All employees have access to and use Expensify to submit their expense reports (for accounting purposes)  but only US policy employees are reimbursed through Expensify. 
All other employees who are not paid directly through Expensify, payroll and/or a 3rd party vendor will be paid directly through GitLab's AP department with the normal weekly Friday AP payment run as long as their report was "final approved" no later than the end of day Tuesday of that same week. Any report final approved on Wednesday to Friday of that week will be reimbursed the following Friday. 

Once an employee is reimbursed AP will create the payment in NetSuite against the record (via Tipalti) to close the report as paid. These reports will be paid through Tipalti (an AP payment processing tool).
The data for employees that aren’t paid through Expensify is extracted via a report and forwarded to the correct people (Payroll/Third Party) for reimbursement. All the relevant and approved expense reports are exported as a CSV and then forwarded.  This is done by the Payroll Specialist EMEA. 

|Type|Mode of Reimbursement|
|----|-----|
|Legal Entities|US - Expensify<br>Non US (all entities except Canada and UK) - Tipalti<br>Canada and UK - Payroll|
|Contractors|Tipalti|
|PEOs|Tipalti|

more information on this can be found on [Payroll Page](/handbook/finance/payroll/#expenses), [Employee reimbursements - Expensify](/handbook/finance/accounting/#8-employee-reimbursements---expensify)

**Onboarding**

Employees are added to Expensify when they join as a part of the onboarding tasks issue. The Expense Specialist goes into Expensify and adds them to the assigned policy based on their location and status with the company. Employees receive this [email](https://drive.google.com/open?id=1IHiqvZK6ZqjrsA479sYnTppit-yPHGTnkNczLcHXmbU)
, and go in and set their password and their bank account details (the US only). People who are reimbursed through payroll or Tipalti don’t set up their bank accounts here.

**Logging In**

* Click on Expensify. 

* Enter your [email and password](https://drive.google.com/open?id=1bmk3Elojn2Z8L9zWUSmrzUJX-03wMhvAR4Q6Nrpq9Zw), and click verify. You can also log on to Expensify via Okta.

*  Verify your identity by following the instructions on the screen.

**Creation of an expense** 

*  To add an expense report, click on the expenses tabs, and click on the [new expense button](https://drive.google.com/open?id=1QNEoWDgGnJ8XPRVoOqWPCWINvEMd_GDcVOIYG7UAhhI).


*  To  [Manually Create an expense](https://docs.google.com/document/d/1EH3DcPP_cUC7I_F6pkrKA-cpaBUgNyy4OxDPQ0nLBOQ/edit), the following [pop up box](https://drive.google.com/open?id=1wgGrl6-KO361pVMKz52feHkDZKsy2Q0V2qub4_uUVL8) comes up.

Enter:

 * The merchant name -  You can select from a dropdown containing merchants that other people have used, or you can just type the name of the merchant manually.
 * The date of the expense - This needs to match what it says on the bill.
 * The time of the expense - This needs to match what it says on the bill.
 * The Value of the expense - This needs to match what it says on the bill.
 * Whether the expense is reimbursable or billable to a client.
 * The [category of the expense](https://drive.google.com/open?id=1SNpciYbOUj90nSOVbjGNiOH0bQRSIugzKoAm_qp9pDs) - The category can be selected from a dropdown containing all the different categories. These categories are set up on NetSuite and synchronize with Expensify.
 * The person who incurred the expense.
 * Classifications, Customers, the Description, and the report fields aren’t mandatory. Classifications usually refer to a specific event/offsite/project and can be selected from a dropdown. They are set up by AP in NetSuite and synchronize with Expensify. The [description](https://drive.google.com/open?id=1k7XXat2BXVRrJCp7eJGFOEQJA78KiRJ2WTkIDHo1nAE) is used to give a short description of the expense.

 *  To attach the bill to the expense, [click](https://drive.google.com/open?id=1zCOCNSD0Gs6IobflayDI_wjWBCIjtES2rMnTom7qJfo) on the green plus button.

 *  [Click](https://drive.google.com/open?id=162eB8K-EsX99KJwotZWFTZeYilyZE_nUhwodmExdUvw) on Import from Computer.

 *  Select and [Attach](https://drive.google.com/open?id=14F7T0JhzqWHOFjyjC_04S2Obc0HChOjjUtgTdybYaTY) the appropriate bill.

 *  After filling in all necessary and any additional fields, [hit save](https://docs.google.com/document/d/18N9WZlbv0dO3zIJao3IeSTlMikMPhV6oPbVNkgQF9DQ/edit) on the bottom right. 
 
 *  The expense appears in the expenses section. To Scan a Receipt, [click](https://docs.google.com/document/d/1C5PscfkiPN5uwVNrc7ydx4RoUy3589ow2AainiHAogI/edit) on the scan receipt button.

 *  [Scan receipt](https://drive.google.com/open?id=1NxGfddVec3JGJNbFOX3_cpKn8A9EXA8-Y1C8birjXAc) allows you to select a bill, and Expensify automatically updates all fields.

 *  The expense appears on the [list](https://drive.google.com/open?id=1hhxt9o2nhftKeVYfOVVEKegpSc40NWw8UTLwkDdIrVo).

 *  To fill out the details yourself, [click](https://drive.google.com/open?id=11drWxx2tBVOXpXDjUFsQz4BZP2DTC0gGn9fS31Vo9ys) on fill out the details.

 *  To Create Multiple, [click](https://docs.google.com/document/d/1f8WT4oU_EamuQSk6pSEZCIu5IxgAhSs-M3S6xaDLtbg/edit) on the create multiple button. This allows you to [create](https://docs.google.com/document/d/1b2kIUu0hRo4fag9miJiiW2sWq5ag7osx32ybNKDvQ3c/edit) multiple expenses at the same time. 
 
 *  To Create a Time expense, [click](https://docs.google.com/document/d/1ruzlSnE6ea_SSXefMHBsneNqKQ6cyIGPidxngnm2epA/edit) on the Time button. [Time](https://drive.google.com/open?id=1NbJjFR1qGNyuzXDeVUf0IplmsJkm97WafeHaR1gQ8ig) isn’t used by GitLab.

 *  To create a distance expense, [click](https://drive.google.com/open?id=1SnRt7NAAhoMxABFh-XW3E8Xo08VhzmC2Bw3wXwiMApo) on Create from Map.

 *  This is used for commutes. Enter the starting and endpoints, and [click](https://docs.google.com/document/d/1Ck_o71jyID9X9pJNxKaf2TpfDhcG7pOCAopPIvHIAW4/edit) Save. The expense [screen](https://drive.google.com/open?id=1EL82dx7PFJe1cWreZ9Zr0KHqBmKHuFzKxw2uJtXPFmk) comes up, where you can select the rate per mile of the trip. Rates are defined as per the policy in Expensify (depending on country/location). Based on the assigned policy, the default rate holds a value. The amount is the default rate multiplied by the distance.

 *  To manually create a distance expense, [click](https://drive.google.com/open?id=17Iq0pPM3yzVA0YuPRhD7G-v-Oo8ONdF1YyAdr4gBjz4) on manually create, and create the expense as with create from the map.

 *  To Bill a client, [select](https://drive.google.com/open?id=1i_8hSRREzqsJM_5vDsv15uHJ57uTUvDN2_RSAn-7kPk) billable when adding the expense.

 *  To delete an expense, select the expense, and [click](https://drive.google.com/open?id=1PAq9IdaV8ZrUHe78Qu0tGX2vr1UJBsLr2OLgPVfeGFk) on the trash button.

 *  To export expenses for your records as a CSV file, select the necessary expenses, and [click](https://docs.google.com/document/d/1mKfFOUW1q-hupTRjGpF6EWJ9I9tJiyvFIL7s-GnAO6g/edit) on export to. The [output](https://docs.google.com/document/d/1_-q4H9MvNconqAhBYKdm9b8jrStm5S-hxH2iLO06v6o/edit) is downloaded. To edit multiple expenses, select the necessary expenses, and [click](https://drive.google.com/open?id=1aWtvV6btCYHBMPF6GcMIJQHPt7Y4LksU4K-fPGYEktc) edit multiple.

 *  This allows the user to [edit](https://drive.google.com/open?id=1w5nbIPzTt0wviYhhN3JoYeVMuaG1xJKGUeUvZBXhbK8) the fields of all the selected expenses.

 *  To split expenses, [click](https://drive.google.com/open?id=1DKpT1nWkpvdyV0QBE-sYftzdaalICV4agX9umHMOSA8) on the split expense button when viewing the expense.

 *  This allows you to [split](https://drive.google.com/open?id=17teXolxTmhS-BASpxs_HVFkngOTPoC5UBz5rxMp_fWo)  a bill into multiple categories. This is useful when you receive a total bill for different activities (example hotel (lodging, room service, etc)).

 *  The bill starts out being split in half. You can add more splits with the add split, or split the expense by days. Click on save after you’re done. To merge expenses, [click](https://drive.google.com/open?id=1-6IrBoMplZAKDnKGkdthFkl92Q2UhAXdMHFKoU10lUo) on the merge expense button when viewing the expense.

This is used to [merge](https://docs.google.com/document/d/1NMTd5w39lfg3E_31UFbJ4grwyeNCiUXAaRy8ZsmleM4/edit) expenses under the same merchant into one expense.

**Submission and Approval of an Expense Report**

* To add Expenses to an expense report, select them and [click](https://drive.google.com/open?id=1ejPW5lg6FuLjOCk1x62cZLCBTJH9f7T1ovupiHZCWVg) on add to a new report.
 
* To open a report, click on any of the expenses in the report to open the report. The total, and the individual expenses show up in the [report](https://drive.google.com/open?id=1ckB2IN2taDHHwpilEEYpB4HNMMkEVomgmNyzHnJxBDw).

* To submit the report for approval, [click](https://drive.google.com/open?id=1GmsH2yhiSMJRVOXK2RJ2VPNP0u9mlBYEOMuVdq01LtY) on the submit button on the top left.
 
* The employee’s reporting manager [shows up](https://drive.google.com/open?id=1ZK8N0kHEwFllQJZx1CF1A4rdsRRbhiOpFAQoA_tXeDY) automatically, as each employee is set up under their respective managers in the policy. 

* Clicking send sends this expense report to them. They receive an email notification that an expense report has been uploaded for their approval. After the manager approves, the expense specialist receives an [email](https://drive.google.com/open?id=1_uJQeivqKnhlA71xuZBwFPJI7VztUcADN0wdwAeAoNY) for final approval.

* The report status shows up at the top with an option to undo the submission.To approve an expense report, open the expense report on Expensify, and [review](https://drive.google.com/open?id=1vdSnmT9tWY71DggsQJDVAN9wiWGLgpA5qeZnaVljLTY) the expenses and the bills attached.

* [Click](https://drive.google.com/open?id=1F1qgMU0peHCGhMt9jWOIfxA2eJoA7ayvcgiEKvjdCLs) on the bill button to open the expense and view the bill.

* Make sure that the right amount, category, and date are entered for the expense. Verify and change and discrepancies, and [click](https://drive.google.com/open?id=1PGj--TPJW_SK0B6HggJOR4VYc8puwtqBLBedAz0PNQw) the save button at the bottom.

* Any changes made are sent as [notifications](https://drive.google.com/open?id=10tD2Lp4DTmqRAjQgLwULAvieCZT6ULeY8XfFxEo2MYA) to the employee, and auto added to the expense log at the bottom of the screen.
 
* To approve the report, [click](https://drive.google.com/open?id=19mDMSERQjaE4aZpppUCD6vqKI48qh4MIO8tCae2JqBw)  the approve button at the top, and hot approve and forward. There are 2 levels of expense report approval. The reporting manager approves first, by hitting the Approve and Forward button and the Expense Specialist (someone on the payroll team) gives the final approval. The reporting manager is responsible for checking the validity of the expense, while the expense specialist is responsible for checking whether all the fields are filled in correctly. 
 
*  When checking the category the expense specialist looks up the employee on BambooHr to find out which cost center they are under. Anybody under the Cost of Sales center uses categories starting with COGS. Find the list [here.](https://drive.google.com/drive/folders/1U_LNOEc3ZsLB38O9XxebMFeHl8bWXKLW)

* To reject the expense report, [click](https://drive.google.com/open?id=1xN6sK19l2rztsCKIvTcXpxMAeyAHRUFLlNYws5jaRC4) on the reject expense and give the justification for doing so, or click on the reject button at the top of the expense report.

* After final approval, Reimbursement happens [automatically](https://drive.google.com/open?id=1qw-e0oGFbBHEbEQ7nixxLGZMgY73uTwX88YufXn3fzA) (for employees who are reimbursed through Expensify).

* Policy admins can take control of an expense report to approve on behalf of an expense specialist (final approval). This can only be done after the reporting manager approves. Policy admins can also take control of an expense report from a reporting manager, and approve on their behalf. If this is done, the reporting manager final approves if the employee is reimbursed via expensify, and submits for the final approval to the expense specialist, if the employee isn’t reimbursed via expensify.

* To take control of an expense report, [click](https://drive.google.com/open?id=1Z6sQFf3Tx9pAedkudSyy8PIwkytQPXS7JgtH4ElhY3o)  on the take control button at the top left of the expense report.
 
* Expensify will flag duplicate expenses on the same date, and of the same amount. Employees will have the ability to resolve these duplicates by either deleting the duplicate transactions, merging them, or ignoring them (if they are legitimately separate expenses of the same date and amount). To resolve these flagged expenses, [click](https://drive.google.com/open?id=1AGuwD1HcyVjf6jf30n3WRFrjuSY469g-HSUHwV616ME)  into the red exclamation point to open the expense and resolve.
 
* Once the employee is ready to resolve the duplicates, they will have the ability to either trash the duplicate, merge them by selecting the appropriate fields from both expenses, or ignore if they are not duplicates.

* If the employee chooses to merge the expenses, they will be able to [select](https://drive.google.com/open?id=1H3SytprVTdNqXgoInNtPqS32V5DS5R_GzfnRwvrAMls) which specific fields they want assigned to the finalized expense.
  
* After expenses are reimbursed, payroll does a reconciliation between the amount paid for Non US payrolls and the expenses submitted for reimbursement. This is done as a part of payroll processing. 

* Employees carrying company cards in their name are required to submit expenses in Expensify on a monthly basis. Reports are to be submitted no later than the fourth business day of each month.

* Card transactions are auto-imported into Expensify which then auto-generates the expense reports to match that of the American Express statements.
 
* On a daily basis, Expensify will auto-generate an expense report and leave the report open until it is submitted. The employee can submit their report(s) on a regular basis but need to ensure that all are submitted no later than the 3rd business day following the statement end date. Accounting will send out a reminder email informing the employee of the statement period and due date of when the report(s) need to be submitted by. Before submitting any expense report the employee needs to fill out the details of the expenses as shown above.

**Domain Access**
  
* The domain admins in Expensify are shown [here](https://drive.google.com/open?id=1A38EhVI88pJRuSQqC51QzqV8TLR-W-VCYKpGLapLp7U) . Domain admin access is restricted to people from the payroll team, the AP team, and the accounting team.
  
* To add a new Domain admin, click on [Add Admin](https://drive.google.com/open?id=1GDCHFYlNICrM2O-o1H6OX0mhuMyFLvaLpYJsEv-sW-c). 
 
* To delete a Domain admin, click on the [trash icon](https://drive.google.com/open?id=1zKfu10QE1sJQXI1Uk9Rdk8I7eEgPQE_NAFnjAnOk56w).
 
**Policies**

* [Policies](https://drive.google.com/open?id=18m2xTn00gEmiTdYKfbosCdQWbqRhq2FZ5Puic14-COs) are set up on Expensify which define how an employee in a certain location gets paid (location, currency, manager, etc).
  
* Clicking on the people tab [shows](https://drive.google.com/open?id=1Ty-yeJefTNz27tXEgTWTny_dul4SDEYtl-ZBeCwd8FI)] everyone that is present in that policy.
  
* To invite someone to a policy, click on the [Invite](https://docs.google.com/document/d/16gr93v2a_tCB_aPXxpDCYWRmBOukeMwpWppLV1n6uu0/edit) button. To remove them, click on the remove button.
 
* Here you can [enter](https://docs.google.com/document/d/1KxPAvrO6JdSHtsNtZY-GXFKs86hrgquQKLJ6efBMaTM/edit) the employee’s email ID, set their role (employee, auditor, policy admin), choose who they submit their reports to, and choose whose reports they can approve.
  
* To remove an employee from a policy,  click on the [remove](https://docs.google.com/document/d/1w-xJHM8OF-gn0T2RMbsUyk0v1EhoXwTHMJQ4PY4RRK0/edit) button.
  
* To view the list of existing policies, click on settings, and click policies.
 
* The list of policies with their respective owners are displayed [here](https://docs.google.com/document/d/11VKuVeJXWKiRHV5wZZtL5ZPAYlBBrvfbyxU2zrv-rAY/edit).
 
* To Set up a new policy, click on the new policy [button](https://docs.google.com/document/d/1Ct1kXyfl4p9KHUcuPImLs3oNqaZzHHVoDHpXzGZUf8w/edit) at the top:
 
* Select the appropriate [option](https://docs.google.com/document/d/1dewn7Kpes_oQirUGnF-Mo0A2vNXCKy7hm3uRf6nQI68/edit).
 
* The [policy](https://docs.google.com/document/d/11UOrAjXji6BRJ0szimTeXcXUXKrXM4BNgreDonOCqEg/edit) is set up with the user as the owner.

* Billable expenses can be identified via a report, which can be pulled from TripActions. At the end of the month, this report is generated by the Director of Revenue, and this report shows all billable expenses. The respective reports are pulled, and attached to the client opportunity on Salesforce.

* To pull this [report](https://docs.google.com/document/d/1XlcPQfFPm-soYf2_AcULpUKPDy1u_nm7q5p-wcmhRzc/edit), select the billable policies from the list of policies.

* Select [all expenses](https://docs.google.com/document/d/1ED2Xb15My3FymkhxNaVyAvsEkHoXfhiAq5f2N9FX60o/edit).
 
* Click on Export To, and select [Billable](https://docs.google.com/document/d/1FjwFqlMBmABbDlKUZqBvRgCRt0eOzUN5_fP_Su05oMU/edit).
 
* An [excel file](https://docs.google.com/document/d/1cUaamsOUl65cw4wUOY3o2Qnb9Trddep4P2P_T80spNs/edit)  is produced, which shows the details of the expense and the name of the client. 
 
* Using this, the [respective reports](https://drive.google.com/open?id=1MUJsH2WIJJvOcrkYUIMb1rKwWyrDoy5nZLLRQvrij50)  are pulled out using their report IDs.
 
* A copy of the expense report is attached to the opportunity in SalesForce, and the billing team is intimated so that it can create an invoice.

**Accounting Treatment**

* After expenses are final approved, Expensify synchronizes with Netsuite, and a journal entry is automatically created for any policies which are set up to sync in that manner. 

* Any expense report that is auto paid by Expensify or paid manually by the AP team is accounted for the same way:

  Debit Expense (GL Account) 
  Credit AP Trade (GL Account)
 
* Then when it is paid:
 
  Debit Accounts Payable Trade 
  Credit Cash

* For the reports that are paid by PEO or payroll, the expense reports are pushed in as journals and NOT BILLS. The entry is:

  Debit Expense (GL Account) 
  Credit AP Other 2225

* Then when the PEO bills GitLab or Payroll processes the payment with their payroll run it is:

  Debit AP other (GL Account) 
  Credit Cash or AP Trade.

* The Credit AP Other 2225 account is reconciled monthly and some FX differences are booked by AP. This is because Expense reports are normally paid to the employees in local currency but when the PEO bills and/or Payroll accounts for them they are converted into the local currency of that entity's books. 
 
* Expense reports that are auto paid by Expensify get pushed to NetSuite first as bills and then bill payments. The bill payments are reconciled by Accounts Payable to ensure that the payments made tie to what Expensify is pushing into NetSuite. AP reconciles the cash posted to the bank statement. The bank statement is updated based on bank activity. AP opens the [statement](https://docs.google.com/document/d/1krB_sXHeL0L5i8ZRA5sL6BpkZUYlcy2FEhcmSUDznvw/edit) and highlights the cash associated with the expense report paid and ensures the cash ties to what should have been paid by checking each transaction.

*  This is done weekly.

*  For Expense reports that are not auto paid by Expensify,  AP has to manually pay those so AP checks each report pushed in from the [AP aging report](https://drive.google.com/open?id=1wYsLs27yHWDyRQ1ortQlPYTr-KdrIqD-mhu6XM20A-o) to ensure it ties to the report in Expensify before the report is paid. This is done by the AP specialists on a weekly basis, and is reviewed by the Senior Accounting Operations Manager, and the Director - Corporate Controller before the expenses are reimbursed.

**Synchronization**
 
*  Expensify interfaces to NetSuite real time. Any errors in syncing are sent as email notifications to the AP specialist, and are cleared on a daily basis **(P2P.C.19)**.

    [Example](https://drive.google.com/open?id=10erextzRruVNaOPQjZmSvoszJg_rx9k498XIwrDR6Co) of an error notification email from Expensify.
