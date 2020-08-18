---
layout: handbook-page-toc
title: Vendor Contract Issue Process
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc}

- TOC
{:toc}

## <i class="fas fa-file-signature" id="biz-tech-icons"></i> Deep Dive on the Vendor Contract Issue Process
Procurement will not approve a contract issue until all other approvals have been received to validate the appropriate approval process and policies have been followed. In the event procurement approves an issue prior to other approvals in an attempt to avoid being the source of a backlog, procurement will comment in the issue that their approval is "subject to remaining approvals". At this point it is the responsibility of the issue owner to follow the remaining process and secure remaining approvals BEFORE obtaining contract signature.

>### Security Engagement for Vendor Contracts

1. Security is responsible for reviewing vendor security practicies and will adhere to the [Third Party Vendor Security Review Process](//handbook/engineering/security/security-assurance/security-compliance/third-party-vendor-security-review.html#email-template-for-requesting-security-documentation_). 
1. The Security Compliance team needs 3 business days to complete this review from the time they receive all necessary documentation from the vendor 
1. A contract cannot be signed until it has been approved by the security team. Once the security team approves the vendor and/or identifies gaps in the vendor's security practices for negotiation, security will provide their approval in the issue.
1. Consult the [Data Classification Policy](https://docs.google.com/document/d/15eNKGA3zyZazsJMldqTBFbYMnVUSQSpU14lo22JMZQY/edit#heading=h.a7l25bv5e2pi) to understand whether your contract will need security review. Any contracts that will share RED or ORANGE data will need security approval prior to signing. Additionally, an annual reassessment of vendor's security posture is performed as part of the contract renewal.
1. Complete a [Privacy Review](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new?issuable_template=Vendor-Procurement-Privacy-Review); please note that this will be done in partnership with GitLab's Privacy Officer and reviewed by Security Compliance during the Security Review.

>### Finance Engagement for Vendor Contracts

1. Finance is responsible for confirming the purchase is in budget.
1. Finance is responsible for reviewing and validating the Business Justification. If questions or concerns on the Business Justification, fp&a partner will engage VP, Finance.
1. If the contract exceeds $100K, the CFO will be added as an approver.

>### Legal Engagement for Vendor Contracts

1. Legal is responsible for reviewing vendor contracts and will adhere to the legal playbook.
1. A contract cannot be signed until it has been approved by the legal team. Once the legal team approves the contract, legal will upload the contract with the approval stamp. **Contracts will not be signed unless the legal approval stamp is included.**
>#### Rules of Engagement GitLab entity
1. PEO's, Contractors should be engaged with GitLab IT BV
1. Contract to be engaged locally when there is a GitLab entity available (e.g. Netherlands with BV, UK with Ltd et cetera)
1. If there is no GitLab entity available in the country of a vendor use GitLab Inc
>### Vendor Contract Approval Process

GitLab team-members must obtain the appropriate approvals from other departments such as the department head of your department, finance (budgetary authorization), procurement, legal, and in some cases security as dictated by the contract issue request.

1. Please consult the [Authorization Matrix](/handbook/finance/authorization-matrix/) to determine who must sign off on Functional Approval and Financial Approval.  

*For events, campaigns, or other program expenses where it makes sense to quantify actuals at the time they are invoiced to accounts payable, please include the Campaign Finance Tag as indicated in the issue template.*

1. If you are purchasing new software/tools, you also need to get approval from IT as identified in the contract issue request.  

>### Negotiation Process
When is a contract negotiated?

   * All software contracts >= $25K will be negotiated. 
   * All non-software contracts >= $25K will be evaluated for negotiation opportunity based on type, amount and market conditions.
   * All contracts requiring an RFP will be negotiated. The RFP process should not be closed until procurement can engage in negotiations.

What is the process for negotiating contracts?

**For Software <$75K:**
   * Procurement will assign to our third-party partner, Vendr, to negotiate the transaction. *Procurement reserves the right to engage Vendr at a higher or lower threshold based on current bandwidth.*
   * If it is a renewal/existing vendor, Procurement Ops Analyst will pull previous contract from Contract Works and post to issue. 
      * Procurement Ops Analyst will note any discrepancy in previous order amount, vs. new quote, if available.
      * If contract is unavailable in Contract Works, Procurement Ops Analyst to request contract from issue creator.
      * If issue creator does not have the contract, Vendr will request from vendor during the negotiation process.
   * Ops Analyst will schedule a call with negotiator (Vendr or Sr. Mgr, Procurement), issue creator, and finance business partner (as optional).
   * Procurement Ops Analyst add “Procurement::Vendr” label

**For Software >$75K:**
   * Procurement will negotiate internally. *Procurement reserves the right to engage Vendr at a higher or lower threshold based on current bandwidth.*
   * If this is a renewal/existing vendor, Procurement Ops Analyst to pull previous contract from Contract Works and post to issue. 
      * If contract is unavailable in Contract Works, Procurement Ops Analyst to request contract from issue creator.
      * If issue creator does not have the contract, Sr. Mgr Procurement will request from vendor during the negotiation process.
      * Procurement Ops Analyst will note any discrepancy in previous order amount, vs. new quote if available.
      * Procurement Ops Analyst schedule call with Sr. Mgr Procurement, issue creator and finance partner (optional) to review need.
   * Procurement Ops Analyst add “Procurement::In Negotiation" label

**For Non-Software:**
   * Procurement will negotiate non-software agreements on an as-needed basis if opportunity for savings is identified.
   * If the contract is >$100K, more than one bid is required
   * If the contract is >$250K, an RFP is required

What is the process to RFP and negotiate large hosted event contracts greater than $250K?

   * RFP created by DRI based on guidance from department lead, and project goals. See [RFP template](https://docs.google.com/document/d/1gTcGBdpfeo9RQWWA8uZ37JQOkAIrcyoYO76byCMOsvM/edit).

   * Finalized RFP is shared with Procurement lead via issue (plus slack notification), finance departmental lead and DRI’s department head to verify we all agree on scope and timelines. Everyone has 1 business week to respond with any changes or requests before RFP is sent out to vendors for quotes and availability. This process will follow the rules based on  ...https://about.gitlab.com/handbook/finance/procurement/

   * If there are any substantial changes or objections the discussion process will be extended another business week to resolve. 

   * RFP responses will be shared (with parties outlined above: procurement, department finance lead and DRI’s department lead) in group drive or shared spreadsheet. 

   * As the RFP process comes to a close, the DRI will connect with the procurement lead and finance department contact to review top selection and discussions throughout the process with vendors. At this point, the DRI will introduce the shortlisted vendors to the procurement lead to kick off negotiation discussions. 

   * The DRI and procurement lead will jointly strategize on which points to contest and where critical cost savings lies and set savings goals per contract. 

   * Within a two week period of the RFP closing the DRI, along with counsel from finance and procurement, will compile a final list of selection and budget sheet for further review and approval from top level decision makers (see authorization matrix). 

   * Once the top vendor(s) have been selected, a purchase request issue will be created by the DRI. For events that require a bit more discretion, contracting will progress to it’s designated private project, hitting all the regular contract approvals and checkpoints in a private project. 


>### Procurement Team Approval Process
Before approving issues, the procurement team verifies:

1. Correct purchase request issue type was used.
   * Software: includes IT and Security review and approvals
   * Marketing: Must be non-confidential data. If confidential data is involved and/or shared, a General template must be used for required approvals.
   * General: Consulting and all other services
2. Correct individuals were tagged for approval
   * Confirm the appropriate parties are tagged and have approved according to the [Authorization Matrix](/handbook/finance/authorization-matrix/)?
3. Negotiation process was followed
   * See above as applicable
4. Contract Reviewed
   * Procurment confirms dollar amounts match, confirm currency, confirm entities match in quote, and general scope is addressed.
   * If entities do not match, procurement will tag the issue creator and budget approver to confirm which entity should be used. 
5. Procurement Approval Authority
   * Procurement Ops Analyst can approve purchase requests up to $25K 
      * Purchase requests >$25K will be approved by the Sr. Mgr Procurement
   * Procurement Ops Analyst can approve up to $100K for Field Mktg/Event purchase requests withOUT confidential data
      * Purchase requests >$100K for Field Mktg/Events will be approved by the Sr. Mgr Procurement
      * If it is an on-site event or involves data that might not be publicly available, the Sr. Mgr Procurement must approve
   * In the event procurement approves the purchase request issue before the other approvers to avoid being a bottleneck, procurement will note our approval as pending outstanding approvers.

>### Vendor Contract Signing Process

1. Do not send the contract to the authorized signatory until all approvals are received. Doing so can put GitLab in a direct financial and/or legal risk which could need to be escalated.
1. Once all approvals in the issue are received, send the contract to the authorized signatory:
     - Upload the contract with the legal stamp to HelloSign
     - If a legal stamp is not included in the issue, please request clarification from legal and/or procurement by tagging them in the contract issue or asking for clarification in the #procurement slack channel.
     - In the description field in HelloSign, paste the link to the vendor contract issue request to avoid delays in signature.
     - Enter the signatory's name and email in HelloSign
 1. Once the contract is signed by GitLab, send the contract to your vendor (if not already signed by the vendor) through HelloSign.
 1. After the contract is signed by both parties, upload the fully executed contract to ContractWorks. You will need to upload the fully signed pdf into the folder labeled **01. To Be Standardized**, which in under the parent folder **01. Uncategorized**. Legal will then organize the contracts using their [instructions and best practices](/handbook/legal/vendor-contract-filing-process)
      - If you need access to ContractWorks, please process an access request [here](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Single+Person+Access+Request).

- Note: If your vendor has a signature tool they would like to use and all approvals have been received in the contract issue, request that the vendor send the final contract version with the legal stamp for signature and also include the issue link. This will avoid delays in signature.

>### Vendor Contract Access Request

Similar to our Access Request process for team members, we have an access request process for consultants or professional services providers. If the vendor requires access to systems to complete work, the vendor manager (ie. the GitLab team member who will manage the relationship with the temporary service provider, generally a people manager) is responsible for creation of a Vendor Access Request and Orientation issue. 

These issues aren't created in the same location as access requests for employees so find the link below so use this [access request template](https://gitlab.com/gitlab-com/contingent-workers/lifecycle/-/issues/new?issuable_template=access-request) and assign it to yourself and the relevant provisioner(s) for the tools that the professional services provider requires access to. In the AR, include [**only systems that are necessary**](/handbook/engineering/security/Access-Management-Policy.html#access-management) to the work that the vendor will be performing. 

Create an [orientation issue](https://gitlab.com/gitlab-com/contingent-workers/lifecycle/-/issues/new?issuable_template=orientation-issue) if the professional services provider wants support through the set up of the most common tools used at GitLab. Assign to yourself and the professional services provider if they have a GitLab account with the required access.

>### Payment
1. Vendors will be required to create an account within Tipalti in order to receive payment
1. For complete details on how to obtain payment, please visit Accounting's [Procure to Pay](/handbook/finance/accounting/#procure-to-pay) page.
1. If your annual contract value is equal to or greater than $100K, a Purchase Order must be created to pay the vendor. See Creating a Purchase Order for steps to do so.

## Contract Request Capacity & Back Log

All open contract issue requests, are located at the [Procurement Issue Board](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/boards/1844091)

In the event you have an issue that hasn't received a prompt response from procurement, requestor should mention Aleshia Hansen in the #procurement Slack channel and provide:

1. Link to the Vendor Contract Approval issue; and 
1. Timeline

In the event the procurement team is out of office (as highlighted in PTO calendar or Slack), and the matter is time sensitive, requestor should
contact #legal channel in Slack and provide:

1.  Link to Vendor Contract Approval Issue; and
2.  Reason for escalation, with timeline for requirement(s)

Legal will assign a team member to approve the procurement portion of the issue.
