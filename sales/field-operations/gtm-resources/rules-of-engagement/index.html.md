---
layout: handbook-page-toc
title: "Go to Market Rules of Engagement"
description: "Rules of Engagement"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

- - -

{::options parse_block_html="true" /}

### Objectives  
The purpose of this page is to provide clear guidelines around GitLab's FY22 GTM Rules of Engagement in the following areas:

1. Account Ownership
2. Opportunity Ownership 
3. Opportunity Order Type 

**For more information on terms and other sales information, please visit GitLab's [Go to Market](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/) page.**


### Account Ownership Rules of Engagement 

**NOTE: Working a Lead, Contact, Opportunity or Account does not ensure ownership.**

**Understanding Account Assignment, Rules and Definitions**

1. **Source of Data:** The data sources used to properly segment and route an account are defined and explained in the [Territory Success Planning (TSP)](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/#territory-success-planning-tsp) section of the handbook. If the data tools have failed to provide employee count and/or address information, the account segment and/or territory will remain `Unknown` until resolved through manual research and a link to reputable data is provided to the Sales Operations team to confirm. Follow the process to [request changes to the TSP inputs](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/#what-if-tsp-is-wrong-how-can-i-request-a-change) if missing or wrong. If the employee count is unknown or blank and manual research cannot confirm, Sales Operations will mark the account as `SMB` with a placeholder of `-1` employees in order to get a Territory to populate and assign the account to an account rep. Any disputes must follow the exception process.
1. **Account Ownership:** 
    1. Only active Field Sales (AE/SAL) members can own accounts.  The exceptions to this rule include:
        1. Field Sales Management temporarily covering an account
        1. Sales Admin - ownership is temporary while our data enrichment tools determine the correct Sales member
        1. Non-Sales members who own "test" or "junk" accounts 
    1. Account ownership will be determined by the Sales Segment and Address.  All children accounts in a hierarchy will be owned by the Global Account Owner of the Corporate Hierarchy regardless of physical location unless the child account has been marked as a `Named Account`, `Strategic/Locally Managed`, `Holdover` or `Holding Company`. 
1. **Parent/Child Segmentation:** All Accounts in a hierarchy will adopt the MAX Segmentation of any account in the hierarchy. Expanded definitions and examples can be found in the handbook’s [Systems Terminology Definitions](https://about.gitlab.com/handbook/sales/sales-term-glossary/#parent-and-child-accounts).
1. **Named Account:** An account that is owned by a Named Account Rep, regardless of corporate headquarters. Named accounts are identified by the `Named Account` Checkbox on the Account. Named Accounts are owned and worked by the designated Strategic Account Leader (SAL) and the paired Sales Development Representative (SDR).Named accounts will be reviewed annually to determine if they should be moved to the Global Account Rep at that time or remain Named.
This pairing owns all records (LEADS and CONTACTS) associated to a Named Account and any related Child accounts within SFDC.
1. **Commercial Accounts:** Mid-Market accounts are covered by three Sales motions: First Order (New Business) accounts, Key accounts, and Territory accounts:
    - **First Order Accounts:** Targeted high-potential prospect accounts, assigned to First Order Account Executives until the initial transaction is closed.
        - **Criteria:** Account hierarchies with no active subscription (now or within the last 180 days), and 500+ Employees.
    - **Key Accounts:** High potential accounts with an active subscription, that we're looking to expand with dedicated sales resources. These accounts are nominated through both quantitative & qualitative analysis in Annual Planning for their growth potential. In addition, all `First Order` accounts will be passed over as a `Key Account` once an initial deal is closed won. It's important this transition occurs in a timely manner after initial deal closure, to start business expansion efforts ASAP.
    - **Territory Accounts:** All remaining Mid-Market accounts are considered Territory Accounts and will be worked by the Territory AE. This includes Prospects (100-499 employees), and Customers not marked as a Key Account.
1. **Locally Managed:** An account that is owned by a local account rep regardless of the Global Account Leader. Locally managed accounts are identified by the `Strategic/Locally Managed` check box on the account.Strategic/Locally Managed accounts will be reviewed annually to determine if they should be moved to the Global Account Rep at that time.
   1. **Considerations for transferring an account to a local rep:** If the decision-making power, end users, PO and Terms (or a majority combination) are confined to the child account, the Ultimate Parent owner should hand off the account to the appropriate territory owner as this would be in the best interests of the customer and for GitLab. Follow the Exception Process to request Account Ownership Change.
1. **Strategic Accounts:** An account that is not a Named account or Locally managed but management has decided it should belong to an AE or SAL for strategic business reasons. Accounts that are strategically owned by a non-named SAL or AE will be marked using the `Strategic/Locally Managed` check box and must have manager approval. Strategic/Locally Managed accounts will be reviewed annually to determine if they should be moved to the Global Account Rep at that time.
1. **Holdover Accounts:** An account that is being held by a Rep that has been promoted or moved to a new territory.  Holdover accounts will be marked using the `Holdover Expiration`  date field. An account rep can only have a holdover account for 90 days. Any account that needs to be held over longer should be marked as a `Strategic/Locally Managed` and must have manager approval from both the current manager and the global account rep’s manager.
1. **Stand-alone Child Account:** An account that clearly has their own buying authority and purchasing process.
    1. **Private Equity or Holding Company** - Accounts where the governing entity is a Private Equity firm or Holding Company will be considered standalone Accounts. As such, they will not be parented and will include the name of the holding company in the `Holding Company Name` field. Ownership & segmentation will be based on the individual account attributes and NOT the Holding Company or PE account attributes.
    1. **Government Holding Entity - Child Accounts:**
        1. **AMER:** [Gitlab Public Sector Rules of Engagement Handbook Page](https://about.gitlab.com/handbook/sales/public-sector/)
        1. **Rest of World:** 
            1. For all Non-US Government accounts: Ownership is solely based on the individual government entity’s employee count.
            1. Government entities include: All Executive, Legislative, or Judicial agencies, departments, commissions, boards, offices, councils, or authorities (including Government Agencies), hospitals, medical centers, and other health facilities operated by Federal Government Agencies outside the Continental United States or US territories.
            1. These entities will exist in SFDC as standalone accounts unless they are a wholly owned (100%) subsidiary of a Federal Government Agency (as described above).
            1. Wholly owned subsidiaries will be parented under the appropriate Federal Government Agency and account ownership will be based on the ultimate parent employee count.
        1. **Franchises or Consultants  - Child Accounts:** Accounts that are categorized as an independent Franchise or Consultant are considered standalone Accounts.  As such, they will not be parented and the corresponding number of employees will not count towards the HQ Total Employee Count.
1. **Newly Updated Accounts:** Accounts that have had employee count and/or address information updated that would require a region or segment change. Timing on when the account will move will follow the escalation process since there is a potential it could affect  TAM and quota assignment.This includes changes to the Ultimate Parent details as a result of a merger, acquisition or move of headquarters.
1. **Net New Accounts:** Accounts created in Salesforce by a list load or through a data enrichment tool such as Zoominfo. Sales Operations has the ability to create new accounts because these accounts must be parented, processed through LeanData to properly segment and assign to the appropriate territory. These will then be assigned to the correct account owner regardless of who requested or imported the account. Contacts will be linked by SDR’s during their normal workflow. For more information on this process you can check the [Steps to create an issue for an account list import](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/#how-to-get-help). To request a new account be created that is not from an enrichment tool or a list load please open an issue in the Sales Operations Project. 
1. **Sales Admin Owned Accounts:** When new accounts are created due to web portal purchases, they are temporarily assigned to the Sales Admin User and are changed to the correct (and active) Sales User in the following cadences:
    - For accounts with known attributes (employees and location), the account gets routed to the correct owner via the TSP process
    - For accounts without known attributes (employees and location not identified), the account is manually reviewed by Sales Operations twice weekly and assigned to the correct owner. 
        - If Sales Operations is unable to identify enough attributes to correctly assign the account, it will remain in Sales Admin owned and allocated to SMB for crediting. 
1. **Community Programs (OSS/EDU/Startups) Accounts** For Accounts where there's an OSS/EDU/Startups opportunity, ownership of that Account will remain with the active Field Sales (AE/SAL) member. However, [the relevant Community Program DRI](/handbook/marketing/community-relations/community-operations/community-program-applications/) will manage the OSS/EDU/Startups relationship and will be identified in a separate field on the Account called `Community Program Owner`. 
1. **Field Permissions** In order to ensure Rules of Engagement are being enforced the following fields will need to be updated by Sales Operations:   `Account Owner`, `Named Account`, `Strategic/Locally Managed`, `Holdover Expiration Date` along with the ability to create a Parent/Child. To request a change to any of these fields chatter on the account or if there are more than 10 accounts open an issue in the Sales Operations Project.

**Exception Process to Request Account Ownership Change:** _Any request to transfer an account for any reason must follow the outlined exception process and timeline._

**Step 1- Sales Process:**  Requirements prior to requesting an account transfer

1. **Spirit of Collaboration:** All requests and or actions must adhere to the [GitLab Value of “Collaboration”](https://about.gitlab.com/handbook/values/#collaboration) and proactively communicate the inquiry and/or intent to **_all parties affected._**
1. **Indisputable:** Requestor must provide evidence with supporting links.
1. **Final Decision:** For a final decision on account ownership, the current and next Area Sales Manager must both agree to transfer of ownership. If consensus cannot be reached by Area Sales Managers it will continue to escalate up the sales chain to the VP level if necessary.
1. **Notify Sales Support:** Consensus must be met by all parties prior to asking for a transfer. Chatter @sales-support with the request to have the account transferred and provide all supporting documentation. Chattering @sales-support will create a case in Salesforce for the Sales Operations team to review.
1. **Timing for Submitting Requests:** Dates for submittal, black out periods and moves will be posted on the [Field Operation's Calendar](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/#how-we-work)
   1. First week of Q2 (reactive) moves: Requests that come from the field
   1. First week of Q3 (proactive) moves: Sales Ops does a review and cleans up accounts + addresses field requests
   1. First week of Q4 (reactive) moves: Requests that come from the field
   1. First week of Q1 no moves, FY planning will address moves   

 **Step 2 - Sales Operations Process:** Timing and process for account escalation review and moves.

1. **Cases** created by chattering @sales-support for account ownership changes are received and reviewed by Sales Operations. 
- Sales Operations will review the account chatter feed on the escalated account to ensure that consensus has been met by all parties, ensure supporting documentation has been provided, and verify the accuracy of the supporting documentation. 
- Sales Operations will make any necessary updates to account fields to reflect changes such as employee count, address or add the parent to the account. 
- If the request is approved the account will either be moved immediately or marked with the pick list value of `Quarterly Review` in the  `Account Reassignment Status` field. 
- Accounts that have CARR must be flagged to be reviewed at the quarter to review the sum of CARR on all of the AEs accounts requested to move. If both ASMs agree to immediately move an account with CARR, Sales Ops management would also need to approve this move outside of the Quarterly review.
- Sales Operations will work with Sales Strategy to evaluate the potential impact on AEs quota and work directly with the ASM an accounts will remain with the current owner until a decision is made. 
- Flagged accounts can be tracked in the [Sales Ops: ROE Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7).
1. **Sales Operations Immediate and Quarterly Account Review Process** 
   1. Accounts that can be moved immediately by Sales Operations: 
       1. Public Sector accounts owned by non-Public Sector AEs/SALs 
       1. Non-Public Sector accounts owned by Public Sector SALs
       1. EDU/OSS/Startups accounts owned by a Community Programs team member 
       1. Web directs that are enriched with inaccurate data resulting in incorrect accounts assignment will have the data corrected and account processed to determine the next approved Account Owner and be transferred
       1. Newly created accounts with inaccurate data resulting in incorrect account assignment will have the data corrected and account processed to determine the next approved Account Owner and be transferred
       1. Prospect accounts with no open opportunities with ASM approval
       1. First Order Accounts owned by the Mid-Market or SMB First Order team that have an initial Closed Won opportunity. These Accounts should be transitioned as Key Accounts to the corresponding Account Executive as indicated in the TSP Approved Next Owner field.  
       1. Accounts owned by SDRs, Sales Administrator or any other non sales role
   1. Accounts that will be marked for quarterly review and moved at the quarter with approvals: 
       1. Prospects with open opportunities
       1. Customer accounts - Sales Operations will not immediatly move accounts and will require a review of remaining accounts to ensure quota is not affected
1. **Holdover Accounts** 
Requested holdover accounts will have the expriation date and next approved owner populated 90 days from date of approval from all parties.These accounts are monitored on the [Sales Ops: ROE Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7).
   1. Holdover Accounts will be moved on the expiration date listed on the account in the `Holdover Expiration Date` field to the `[TSP] Next Approved Owner`
   1. Ideally there will be no holdovers in Q3 or Q4 for acccurate planning

1. **Annual Account  Review Process**
Accounts will be reviewed annually prior to the Fiscal Year planning process and territory carving.


### Opportunity Ownership Rules of Engagement 
**Understanding Opportunity Assignment, Rules and Definitions**

1. **Opportunity Ownership:** 
    1. Only active Field Sales (AE/SAL) members can own opportunities. The exceptions to this rule include:
        1. **Community Program opportunities**: which will be owned by a member of that team.
            - For scenarios where there's a paid opportunity **and** a free EDU opportunity, the AE/SAL owns the relationship. If there is not a paid opportunity closed-won or any open paid opportunity (pre-closed-won) then the appropriate Commumity Programs team member manages the relationship.
                - If a paying customer is also interested in a free EDU license, the Commumity Programs team will always reach out to the AE/SAL prior to engaging with the customer.  
        1. **Reseller opportunities**: which can be owned by the AE/SAL or channel manager
    1. The opportunity owner should match the corresponding Account owner.  The exceptions to this rule are:
        1. Those noted in the aforementioned section
        1. Holdover opportunities
        1. When an ISR or SDR has created an opportunity but has not yet transitioned it to the correct AE/SAL
        1. Stage of the opportunity at time of account ownership change
1. **Holdover Opportunities** Holdover opportunties are flagged using the`Holdover Expiration Date` fields on the Opportunity and are monitored on the [Sales Ops: ROE Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7).Credit will be given to the AE on the holdover opportunity if it closes before the expiration date.
   1. Stage considerations
        1. All open opportunities stages 0-3 will immediately be moved to the new account owner when the account transfers unless there is a requested holdover approved by all parties in chatter
        1. All open opportunities stages 4-6 will automatically have a 90 day holdover expiration date populated by sales operations team when moving accounts. If the opportunity does not close in the 90 days it will be moved to the account owner on the expiration date.
        1. There will be no considerations made to extend a holdover if the opportunity moves stages during the 90 day holdover period. 
1. **Sales Admin Owned Opportunities:** When new opportunities are created due to web portal purchases, they are temporarily assigned to the Sales Admin User and are changed to the correct (and active) Sales User in the following cadences:
    - For accounts with known attributes (employees and location), the account gets routed to the correct owner via the TSP process.  Twice weekly Sales Operations reviews the corresponding opportunity and updates the Opportunity owner to match the Account owner (unless exceptions apply).  
    - For accounts without known attributes (employees and location not identified), the account and corresponding opportunity are manually reviewed by Sales Operations twice weekly and assigned to the correct owners. 
        - If Sales Operations is unable to identify enough attributes to correctly assign the account or opportunity, they will remain in Sales Admin owned and allocated to SMB for crediting.


### Opportunity Order Type Rules of Engagement 
**Understanding Order Type Assignment, Rules and Definitions**

**Source of Data:** The account attributes used to properly assign Order Type are defined and explained in the [Sales Term Glossary](https://about.gitlab.com/handbook/sales/sales-term-glossary/#customer-definitions-for-external-reporting) section of the handbook.   

**Common Manual Override Scenarios:** Although Order Type is generated automatically on an opportunity, there are common scenarios in which it could require updating via a manual override:
- [Customers Returning More Than 180 Days After Subscription Term End Date](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/#opportunity-requirements-for-returning-customers)
- Refunds
- Incorrect Parenting/Hierarchies

**Process to Request Order Type Changes:**  In the event that Order Type needs to be changed, please chatter @sales-support on the opportunity with details as to why the change is being requested.  This will trigger a case, which will be reviewed by the Sales Operations and Deal Desk teams. 

<details>
<summary markdown='span'>
  Sales Ops Operators Guide for Account and Opportunity Review and Moves
</summary>
 
 **Best Practices**
1. Before moving an SDR Account or non-Sales owned account check for duplicate accounts in the system. If a duplicate is found, merge the records.
1. Before moving an SDR Account or non-Sales owned account check if the account is a child account and needs to be parented. If so, parent the account and assign to the owner of the parent account.

 **Case Review Process**
 1. When a case is received, review to see if consensus has been met by all parties and if the supporting documentation is included in the chatter feed
 1. Update any of the data on the account if needed to reflect what was provided
 1. Determine if the request meets any of the criteria for an immediate move. 
    1. Immediate move - Move the account to the new owner. Move any open opportunties stages 0-3 to the new owner. Opportunities stages 4-6 mark the `Holdover Expiration Date` for 90 days from date of approval on the Opportunity. 
    1. If the account does not meet the criteria for an immediate move, select the Picklist Value of `Quarterly Review` in the `Account Reassignment Status` field so the account will show up on the [Sales Operations Quarterly Account Review Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7)
 1. Close the case and indicate in chatter that this will be reviewed and if approved by Sales Operations when they can expect the account ownership to transfer

 **Quarterly Account Review Process**
1. Use the reports on the [Sales Operations Quarterly Account Review Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7) to review the requested account moves. 
   1. Prospect and Customer accounts will need to be evaluated to ensure the move doesn't impact quota. Once approved to be moved: move any open opportunties stages 0-3 to the new owner. Opportunities stages 4-6 mark the `Holdover Expiration Date` for 90 days from date of approval on the Opportunity. 
   1. Once account ownership has been updated remove the `Quarterly Review` picklist value from the `Account Reassignment Status`

**Holdover Account and Opportunity Review Process**
1. Review the [Account & Opportunity Holdover Expiration reports](https://gitlab.my.salesforce.com/01Z4M000000oYC7) and move the expired accounts and opportunities to the current `Account Owner` and remove the date from the field. 
1. Remove the value from the `Holdover Expiration Date` after transfer of ownership (Note that this cannot be removed from accounts past stage 6)
1. Accounts are not eligible for a second holdover request. If this request is made the ASMs must agree and must be approved by Sales Operations Leadership

**Annual Review Process** 
1. Ensure these requests are reviewed and approved as part of the annual territory planning process. Utilize the dashboard to capture all requests from Q3 & Q4 to be moved at the beginning of Q1

**Order Type Review** 
- Validate that the requestor has provided adequate details to justify the change request.
- Follow the below steps for each Common Manual Override Scenarios:
    1. **Customers Returning More than 180  Days After Subscription Term End Date:** Review the subscription term end date from the existing subscription.  If it is > 180 days, the opportunity Order Type should be manually updated to  First Order or New Connected.
    1. **Refunds:** Confirm with deal desk that the opportunity is, in fact, a refund.  If yes, the opportunity Order Type should be manually updated to  First Order or New Connected.
    1. **Incorrect Parenting/Hierarchy:** Validate that the parenting is, in fact, incorrect.  If so, unparent the account(s) and manually update the opportunity Order Type to First Order or New Connected


**Sales Admin Owned Review and Owner Change Process**

Steps to add AE names to open/closed opps owned by Sales Admin (Easy Fixes)

1. Export the easy fix reports from [this dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYRM) 
1. To work from google sheet: Copy Values and paste into google spreadsheet, or you can use Excel
1. Match the opportunity owner to the current account owner
    - **EXCEPTION**: For existing accounts where the OSS/EDU Assigned field is populated AND the Web direct opportunity is $0 Net ARR, the opportunity owner should be the person in the OSS/EDU Assigned field
1. To prepare the upload, you will only need the following fields: Opportunity Owner ID, Opportunity ID, SA Team, Account Owner (O), Owner Team (O) (you also need to update the Account ID/ Account Owner ID but I recommend uploading the accounts on a separate worksheet to avoid confusion.)
1. Save the file as CSV and upload to data loader. 
1. To update the account owner you will need Account ID, Account Owner ID. Match the opp owner to the Account Owner and upload.
1. The opportunities update in smaller increments (my cutline was 20). Split the upload sheet in 20’s as necessary and upload. 

Steps to add AE’s to Closed Opps and accounts owned by Sales Admin (Hard Fixes)

1. Export the hard fix reports from [this dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYRM) 
1. To work from google sheet: Copy Values and paste into google spreadsheet, or you can use Excel
1. Add filters onto the sheet to organize the sheet in alphabetical order 
1. Sort the “Billing Country” field A → Z, this way you can populate multiple owners if the opps have the same billing country
1. It is easier to work by market segment, filter by SMB/MM/Large/PubSec (choose a field from Account Owner Team, Owner Team, SA Team - it is usually just best to choose the field with more values since many opportunities have missing fields)
1. Use [this mapping file](https://docs.google.com/spreadsheets/d/1n3_JQULEzHjwlrSQcchxnFiSLVD698yxF4k-M6OtQ2E/edit#gid=950930175) to look for corresponding AE’s 
1. Insert 2 rows on the sheet and add Owner Name and Owner ID (you will delete the name later in prior to uploading- but is there for your view) 
1. After inputting the names and Owner ID’s there will be multiple opps that do not have Billing countries listed on the Account. There are many times in which have TSP Country fields populated, but not the Billing Country or vice versa. Use those fields to map and populate the corresponding AE’s.
1. If there is a zip code but no countries listed, it is recommended that you use google search to populate the States/countries to find the corresponding AE’s. 
1. If the opportunity is missing a market segment, try to do a quick google search on the company. If no information is found, it is likely that the account is SMB. 
1. Populate the Account owner (O), Owner Team (O), and SA Team and match as information above, and table.
1. Repeat this process for each Market Segment (SMB/MM/Large/PubSec) making sure each Territory is correct
1. Make sure all opportunities are populated. If you cannot find any information on the account, make sure to ask about those before uploading.
1. To prepare the upload, you will only need the following fields: Opportunity Owner ID, Opportunity ID, SA Team, Account Owner (O), Owner Team (O) (you also need to update the Account ID/ Account Owner ID but I recommend uploading the accounts on a separate worksheet to avoid confusion.)
1. Save the file as CSV and upload to data loader. 
1. To update the account owner you will need Account ID, Account Owner ID. Match the opp owner to the Account Owner and upload.

 </details>
