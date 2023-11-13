---

title: "Go to Market Rules of Engagement"
description: "Rules of Engagement"
---







- - -



### Objectives  

The purpose of this page is to provide clear guidelines around GitLab's FY24 GTM Rules of Engagement in the following areas:

1. Account Ownership
2. Opportunity Ownership
3. Opportunity Order Type

**For more information on terms and other sales information, please visit GitLab's [Go to Market](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/) page.**


### Account Ownership Rules of Engagement

**Effective FY24-Q1**

**NOTE: Working a Lead, Contact, Opportunity or Account does not ensure ownership. Before investing any effort, it is the responsibility of the sales rep to confirm that an account listed as owned by them in SFDC is in fact in their territory.**

### ROE for Banned Countries:

Additional information on Trade Compliance can be found on the [Legal HB Page for Embargoed Countries](https://about.gitlab.com/handbook/legal/trade-compliance/)
1. Embargoed Accounts (Countries and Cities):
    - Account Address Country equals CU,IR,SS,SD,SY,KP OR [ZI] Country OR  [Admin] Address Country equals Crimea,Cuba,Iran,North Korea,Sudan,Syria
    - Account Address City, [ZI] City OR [Admin] Address City equals Sevastopol, Simferopol, Kerch, Yevpatoria, Yalta, Feodosia, Dzhankoi, Alushta, Bakhchysarai,Krasnoperekopsk, Saky, Armiansk, Sudak, Bilohirsk, Shcholkine, Inkerman, Staryi Krym,Alupka (Cities in Crimea Region)
2. Accounts will be reviewed monthly and updated in the following manner by Sales Ops
    - If the account is assigned to an active user, the Account Owner will be updated to Sales Admin [DO NOT CHATTER THIS USER]
    - Change the “Named Account Territory” Field to X-ECCN-Do Not Do Business
    - The following Chatter comment will be added on the account: “Changed to Sales Admin [DO NOT CHATTER THIS USER] as this is located in an embargoed country and verified via our data enrichment tool(s).”  The existing owner and his or her manager will be tagged for awareness in the event that the account was assigned inadvertently.  SFDC topics of  “Embargoed Country” and “Visual Compliance Checks” will also be flagged on the account.


### Understanding Account Assignment, Rules and Definitions

#### Source of Data

The data sources used to properly segment and route an account are defined and explained in the [Account Demographics](https://docs.google.com/document/d/1UaKPTQePAU1RxtGSVb-BujdKiPVoepevrRh8q5bvbBg/edit#bookmark=id.thpuid9gpo74) section of the handbook. If the data tools have failed to provide employee count and/or address information, the account segment and/or territory will remain Unknown until resolved through manual research and a link to a reputable data is provided to the Sales Operations team to confirm. Follow the process to request changes to the Account Demographics inputs if the account information is missing or wrong. If the employee count is unknown or blank and manual research cannot confirm, Sales Operations will mark the account as SMB with a placeholder of -1 employees in order to get a Territory to populate and assign the account to an account rep. Any disputes must follow the exception process below.

#### Qualifying Accounts

- SAEs/AEs are responsible for validating accounts assigned to them in SFDC are accurately segmented. A reasonable effort should be made to check employee count, Account hierarchy, and Headquarters location.



#### Account Ownership:

Only active Field Sales (AE/SAE) members can own accounts.  The exceptions to this rule include:
1. Field Sales Management temporarily covering an account
1. Sales Admin - ownership is temporary while our data enrichment tools determine the correct Sales member
1. Non-Sales members who own "test" or "junk" accounts

Account ownership will be determined by the Sales Segment and Address.  All children accounts in a hierarchy will be owned by the Global Account Owner of the Corporate Hierarchy regardless of physical location unless the child account has been marked as `Major Account`, `Named Account`, `Holdover` or `Holding Company`.

**The following two policies apply to account ownership in the middle of the Fiscal year:**

1. **Feb 1st Confirmed Segment** applies to when an Account is accurately aligned to the correct segment and owner at the beginning of the year based on employee count. During the year, if there is an increase or decrease to employee count, the Account will NOT be moved to a new segment or owner until the subsequent year.
    - Upon discovery of inaccurate data (examples: bad data, wrong parent account) resulting in incorrect assignment, the SAE/AE is to partner with Sales Support to immediately transfer the Account and open or improperly closed won opportunities (Closed in the last 90 days)  ownership to the correct SAE/AE.

    **When does this policy apply?**

    1. FY24 move if accounts were assigned based on inaccurate data.
    2. FY25 move if organic growth warrants an Account to move segments/owners.
    3. Applies to ENT Named and Major Accounts; Excludes MM Named Accounts.

    **Use Case(s):**

    1. Employee count data was inaccurate and the Account should align to a new segment, reassigned in FY24.
    2. ZoomInfo enriched the Account and the employee count increased and now it aligns to the Enterprise segment. No change to account assignment in FY24, but it will be reassigned to the correct segment in FY25.
    3. Data was accurate for the Feb 1st Confirmed Segment and the number of employees changes (up or down), and the Account is stale (no documented activity). The Account moves in FY25.

2. **Stale Accounts Exception to Feb 1st Confirmed Segment** implies (i) when an Account's employee count deems it should move segments and there has been no SFDC activity records logged within the last 9 weeks, there's no open opportunity and/or close plan prior to a request from the receiving SAE/AE, the team should collaborate to move the Account immediately to the new owner. Activity is defined as bi-directional email exchange, phone calls; meetings (zoom or in-person),updated Command Plan, Next Steps, and Next Steps date.(ii) Stale Accounts with churn expected during the current FY, which is either known or should reasonably be known by the SAE/AE should remain with the existing SAE/AE through the end of the FY.

    **When does this policy apply?**

    1. If it is confirmed there has been no activity documented in SFDC in the last 9 weeks and no open opportunity, the team should collaborate and move the Account immediately in FY24.
    2. If mutual agreement between the SAE/AE and a key individual in the Account (i.e. COO, CTO) is reached to re-engage at a later date and such agreement is documented in the Command Plan, the Account does not move.  
    3. Applies to Named or Major Accounts.

    **Use Case(s):**  

    1. Account Demographic data indicates the Account should move segments, and there is no documented activity on the Account, the Account moves in FY24.

**Important Notes**
- Non-compliance to these policies goes against the GitLab values and it will be up to the SAE or AE Leadership Team's discretion as to applicable disciplinary action.
- If an Account is identified as incorrectly assigned to you, regardless of whether you know someone in the Account, the SAE/AE should not engage in any capacity and instead partner with Sales Support to immediately transfer the Account and open or improperly closed won opportunity ownership to the correct SAE/AE. The transferring SAE/AE is expected to take this action and actively communicate in a manner that optimizes the prospect/customer experience.
- In the event a SAE/AE unknowingly engages with an Account that is not theirs, they should log SFDC activity and notify the correct Account owner. If there is no collaboration initiated with the correct Account owner, your actions will be reviewed by your segment and regional leadership team.
- SAEs/AEs are not permitted to sell into accounts they do not own in SFDC.  

#### Parent/Child Segmentation:

All Accounts in a hierarchy will adopt the MAX Segmentation of any account in the hierarchy. Expanded definitions and examples can be found in the handbook’s [Systems Terminology Definitions](https://about.gitlab.com/handbook/sales/sales-term-glossary/#parent-and-child-accounts).

#### Named Account

An account that is owned by a Sales Rep with a headquarters outside of his or her designated geographical territory. Named accounts are identified by the Named Account Checkbox on the Account. Named Accounts are owned and worked by the designated Strategic Account Executive (SAE) or Account Executive (AE) along with all records (LEADS and CONTACTS) associated with that Named Account and any related Child accounts within or added to SFDC. Upon discovery of data inaccuracies in Named accounts, sales-support should be engaged to review the data and move the account, if applicable, following the February 1st Confirmed Segment and Stale Accounts Exception policies.

#### Major Account

An account that is owned by a Major Account Executive, this account can be headquarters outside of his or her designated geographical territory. Major accounts will be reviewed annually to determine if any ownership changes are required. Upon discovery of data inaccuracies in Major accounts, sales-support should be engaged to review the data and move the account, if applicable, following the February 1st Confirmed Segment and Stale Accounts Exception policies.

#### Public Sector Account:

An account that is identified as Public Sector Worldwide. Once identified, the assignment of these accounts will be according to the Government Rules of Engagement.

#### Commercial Accounts:

Mid-Market accounts are covered by three Sales motions: First Order (New Business) accounts, Named accounts, and Territory accounts:
- **First Order Accounts:** Targeted high-potential prospect accounts, assigned to First Order Account Executives until the initial transaction is closed.
- **Named Accounts:** High potential accounts with an active subscription, that we're looking to expand with dedicated sales resources. These accounts are nominated through both quantitative & qualitative analysis in Annual Planning for their growth potential. In addition, all `First Order` accounts will be passed over as a `Named Account` once an initial deal is closed won. It's important this transition occurs in a timely manner after initial deal closure, to start business expansion efforts ASAP.
- **Territory Accounts:** All remaining Mid-Market accounts are considered Territory Accounts and will be worked by the Territory AE.

#### Override Hierarchy Routing:

An account that is owned by a local account rep regardless of the Global Account Leader. We must have agreement from both ASMs via SFDC Chatter in order to move an account to a different owner than the Global Account rep. Split hierarchies will be reviewed annually to determine if they should be moved to the Global Account Rep at that time.

- **Considerations for transferring an account to a local rep:** If the decision-making power, end users, PO and Terms (or a majority combination) are confined to the child account, the Ultimate Parent owner should hand off the account to the appropriate territory owner as this would be in the best interests of the customer and for GitLab. Follow the Exception Process to request Account Ownership Change.

#### Holdover Accounts:

An account that is being held by a Sales Rep that has been promoted or moved to a new territory. Holdover accounts will be marked using the Holdover Expiration date field. An account rep can only have a holdover account for 90 days. Any account that needs to be held over longer must have manager approval from both the requestor's current manager and receiving manager of the account owner.

#### Stand-alone Child Account:

An account that clearly has their own buying authority and purchasing process.
1. **Private Equity or Holding Company** - Accounts where the governing entity is a Private Equity firm or Holding Company will be considered standalone Accounts. As such, they will not be parented and will include the name of the holding company in the `Holding Company Name` field. Ownership & segmentation will be based on the individual account attributes and NOT the Holding Company or PE account attributes.
2. **Joint Venture**:A business entity created by two or more parties, generally characterized by shared ownership, shall be considered as a stand-alone entity. As such, they will not be parented, and segmentation will be based on the employee count of this particular account.
3. **Government Holding Entity - Child Accounts:**: Public Sector accounts are identified by the Public Sector Account Checkbox on the Account. Once identified, ownership would be determined by the country alignment below. The definition of a PubSec account is the same for United States Public Sector and Rest of World Public Sector.
    1. **United States:** [Gitlab Public Sector Rules of Engagement Handbook Page](https://about.gitlab.com/handbook/sales/public-sector/)
    2. **Rest of World:** [ROW Public Sector Rules of Engagement Handbook Page](https://docs.google.com/document/d/1GR8fFQQhaGlH18quMkbEbY1gIvj0_4-LVRxdHpuZW20/edit#heading=h.kk8kup16ppw8)
        1. **APAC:** All countries covered by Enterprise.
        2. **EMEA:** All countries covered by Enterprise.
        3. **AMER:** All countries covered by Enterprise.


#### Franchises or Consultants  - Child Accounts:

Accounts that are categorized as an independent Franchise or Consultant are considered standalone Accounts.  As such, they will not be parented and the corresponding number of employees will not count towards the HQ Total Employee Count.

#### Newly Updated Accounts

Accounts that have had employee count and/or address information updated that would require a region or segment change, timing on when the account will move will follow the February 1st Confirmed Segment and Stale Accounts Exception policies. If the change is due to organizational changes (i.e Merges and acquisitions) and the org change happened during this FY, the account will move to the correct owner next FY.

**Use Case(s):**
1. Account data was accurate and there was an acquisition. The Account gets realigned to the correct Ultimate Parent in FY25. If the child account being acquired is stale, the Stale Accounts Exception policy applies.  

#### Net New Accounts

Accounts created in Salesforce by a list load or through a data enrichment tool such as Zoominfo. Only Sales Operations has the ability to create new accounts because they must be parented and processed through LeanData to properly segment and assign to the appropriate territory. These will then be assigned to the correct account owner regardless of who requested or imported the account. Contacts will be linked by SDR’s during their normal workflow. For more information on this process you can check the Steps to create an issue for an account list import. To request a new account be created that is not from an enrichment tool or a list load please open an issue in the Sales Operations Project.

**Sales Admin Owned Accounts**: When new accounts are created due to web portal purchases, they are temporarily assigned to the Sales Admin User and are changed to the correct (and active) Sales User in the following cadences:
- For accounts with known attributes (employees and location), the account gets routed to the correct owner via the Account Demographics process
- For accounts without known attributes (employees and location not identified), the account is manually reviewed by Sales Operations twice weekly and assigned to the correct owner.
- If Sales Operations is unable to identify enough attributes to correctly assign the account, it will remain in Sales Admin owned and allocated to SMB for crediting.

All Embargoed Accounts will remain in Sales Admin per ROE for Banned Countries

#### Community Programs (OSS/EDU/Startups) Accounts

For Accounts where there's an OSS/EDU/Startups opportunity, ownership of that Account will remain with the active Field Sales (AE/SAE) member. However, the relevant Community Program DRI will manage the OSS/EDU/Startups relationship and will be identified in a separate field on the Account called Community Program Owner.

#### Field Permissions

In order to ensure Rules of Engagement are being enforced the following fields will need to be updated by Sales Operations: Account Owner, Named Account,Major Account, Holdover Expiration Date along with the ability to create a Parent/Child. To request a change to any of these fields chatter on the account or if there are more than 10 accounts open an issue in the Sales Operations Project.

#### Exception Process to Request Account Ownership Change:

*Any request to transfer an account for any reason must follow the outlined exception process and timeline.*

<details>
<summary markdown="span">Steps to Request Account Ownership Changes</summary>

1. **Step 1- Sales Process:**  Requirements prior to requesting an account transfer
     - **Spirit of Collaboration:** All requests and or actions must adhere to the [GitLab Value of “Collaboration”](/handbook/values/#collaboration) and proactively communicate the inquiry and/or intent to ***all parties affected.***
     - **Indisputable:** Requestor must provide evidence with supporting links.
     - **Final Decision:** For a final decision on account ownership, the current and next Area Sales Manager must both agree to transfer of ownership. If consensus cannot be reached by Area Sales Managers it will continue to escalate up the sales chain to the VP level if necessary.
2. **Step 2**: Chatter @sales-support with the request to have the account transferred and provide all supporting documentation. Chattering @sales-support will create a case in Salesforce for the Sales Operations team to review. Only one tag and case is required for each request.

3. **Step 3 - Sales Operations Process:** Timing and process for account escalation review and moves.
     - **Cases** created by chattering @sales-support for account ownership changes are received and reviewed by Sales Operations. Sales Operations will review the account chatter feed on the escalated account to ensure supporting documentation has been provided, and verify the accuracy of the supporting documentation. Sales Operations will make any necessary updates to account fields to reflect changes such as employee count, address or add the parent to the account.


</details>

#### Holdover Accounts

Requested holdover accounts will have the expriation date and next approved owner populated 90 days from date of approval from all parties.These accounts are monitored on the [Sales Ops: ROE Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7).
1. Holdover Accounts will be moved on the expiration date listed on the account in the `Holdover Expiration Date` field to the `Proposed Account Owner`
2. Ideally there will be no holdovers in Q3 or Q4 for acccurate planning

#### Annual Account  Review Process

Accounts will be reviewed annually prior to the Fiscal Year planning process and territory carving.


### Opportunity Ownership Rules of Engagement

**Understanding Opportunity Assignment, Rules and Definitions**

1. **Opportunity Ownership:**
    1. Only active Field Sales (AE/SAE) members can own opportunities. The exceptions to this rule include:
        1. **Community Program opportunities** (primarily $0 EDU/OSS): which will be owned by a member of that team.
           - For scenarios where there's a paid opportunity **and** a free EDU opportunity, the AE owns the relationship. If there is not a paid opportunity closed-won or any open paid opportunity (pre-closed-won) then the appropriate Commumity Programs team member manages the relationship.
        1. **Reseller opportunities**: which can be owned by the AE or channel manager
            - For scenarios where there's a paid opportunity **and** a free EDU opportunity, the AE/SAE owns the relationship. If there is not a paid opportunity closed-won or any open paid opportunity (pre-closed-won) then the appropriate Commumity Programs team member manages the relationship.
        1. **Reseller opportunities**: which can be owned by the AE/SAE or channel manager:

        1. The opportunity owner should match the corresponding Account owner.  The exceptions to this rule are:
        1. Those noted in the aforementioned section
        1. Holdover opportunities
        1. When an Renewals Manager or SDR has created an opportunity but has not yet transitioned it to the correct AE/SAE
        1. Stage of the opportunity at time of account ownership change
        1. [GSI or MSP opportunties](https://about.gitlab.com/handbook/sales/field-operations/channel-operations/#partner-sourced-deal-registration-msp-opportunities), where the end user is different to whom gets the license. In this case, the opportunity will be assigned to the owner of the end user account.
1. **Sales Admin Owned Opportunities:** When new opportunities are created due to web portal purchases, they are temporarily assigned to the Sales Admin User and are changed to the correct (and active) Sales User in the following cadences:
    - For accounts with known attributes (employees and location), the account gets routed to the correct owner via the Account Demographics process.  Twice weekly Sales Operations reviews the corresponding opportunity and updates the Opportunity owner to match the Account owner (unless exceptions apply).  
    - For accounts without known attributes (employees and location not identified), the account and corresponding opportunity are manually reviewed by Sales Operations twice weekly and assigned to the correct owners.
        - If Sales Operations is unable to identify enough attributes to correctly assign the account or opportunity, they will remain in Sales Admin owned and allocated to SMB for crediting.

### Holdover Opportunities

#### Guiding Principles of the Policy:

1. **Preserve necessary business momentum** - holdovers primarily exist to preserve momentum on key deals in flight, thus mitigating the pipeline impact of GTM related business disruption.
1. **Align incentives**
     - The secondary purpose of holdovers is to give individual contributor Account Owners (AEs and SAEs) an opportunity to be compensated on labor-intensive deals that are near closure at the time an account is transitioned
     - However, holdovers delay account transition and the formation of new pipeline by the new account owner because new account owners are not paid on holdover net ARR.
1. **Minimize holdover volume** - volume should be minimized to the most impactful and mature deals in flight at the time of account transition
1. Stage based criteria is not applicable for opportunities moving out of the Commercial segment. Stage criteria does not apply to holdovers for Commercial because Commercial leadership does not want this criteria to artificially inflate the value of the pipeline. Holdovers should be selected wisely as there will be no extensions to the holdover timeline.


#### Opportunity Holdover Criteria

The following criteria make a deal eligible for a holdover:

#### Annual Review Holdovers

**Enterprise**
1. Deal size (Net ARR) is > $50K for Growth and > $5K for New Logo. Amount is >$5K for PS Only opportunities
1. The deal is in stage 3+
1. Close date must be within 90 days prior to holdover expiration date
1. Requires evidence of engagement in the 30 days prior to announcement of the change
1. Deals that meet this criteria are given a maximum 90 day holdover expiration period. If the deal does not close in 90 days it will be moved to the current account owner.

**Commercial**
1. All opportunities that are **moving to Enterprise** that meet the Enterprise holdover policy thresholds (these opps are identified and flagged by Sales Operations)
     - Deals that meet this criteria are given a 90 day holdover expiration period. If the deal does not close in 90 days it will be moved to the current account owner.
1. For opportunities that are **moving within Commercial**, each affected Account Executive can hold over 2 opportunities.
     - Opportunities will be discussed during AE/ASM 1:1’s and a final list will be shared with Sales Operations to be updated in SFDC.
     - Deals that meet this criteria are given a 30 day holdover expiration period. If the deal does not close in 30 days it will be moved to the current account owner.


#### Additional Guidelines:

- **Sell What You See Period** The interim period between the end of FY23 and when accounts have been aligned to FY24 owners in SFDC (2023-02-08)
     - In this scenario, whoever closes the opportunity & his/her corresponding management will get paid (even if it’s going to a different owner)
- **Documented Account Strategy**  The team who is giving up/losing the account and/or opportunity must work with the new owner on a transition plan to ensure there’s no disruption to current sales cycles or customer/prospect experience.
     - The Account handover checklist: Enterprise Sales can be found [here](https://docs.google.com/document/d/1bhGuzTZxnq70ob-3fxHVhu7LYObcrrFMev0697fDDks/edit)
- **For cross segment holdovers**, the governing rules are dictated by the team that is receiving the account and/or opportunity.   For example, an existing Mid Market opportunity that would be going to an Enterprise AE/ASM would have a 90 day holdover period to close before it would be moved to the receiving Enterprise owner.
- **Holdovers apply to both the giving AE/ASM and receiving AE/ASM in all Segments** to promote teamwork and alignment. During the 90 day holdover period, the bookings, New Logo (when applicable) & commissions credit will be allocated as follows:
    1. Month 1: 100% to the "Giving AE/ASM" and 0% to the "Receiving AE/ASM",
    1. Month 2: 75% to the "Giving AE/ASM" and 25% to the "Receiving AE/ASM",
    1. Month 3: 50% to the "Giving AE/ASM" and 50% to the "Receiving AE/ASM"

Within a Region under one ASM (or acting ASM), it is the ASM's responsibility to obtain and document agreement in chatter between the two AEs in that region.

Within a Geo under one Sales VP, it is the Sales VP's responsibility to obtain agreement between the two ASMs in that Geo and document in chatter.


- **Sales Leaders** are responsible for ensuring that holdover opportunities align with the guiding principles of this policy. Leadership ensures that opportunities are not moved prematurely to stage 3.
- Holdovers do not apply to TAMs or SAs.
- Holdovers do not apply to Renewals Managers.
- Holdover opportunities are flagged in SFDC using the`Holdover Expiration Date` fields on the Opportunity and are monitored on the [Sales Ops: ROE Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7).
- Credit will be given to the AE on the holdover opportunity if it closes before the expiration date.


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
    1. Immediate move - Move the account to the new owner. Move any open opportunties stages 0-2 to the new owner. Opportunities stages 3-6 follow holdover policy above and where applicable mark the `Holdover Expiration Date` for 90 days from date of approval on the Opportunity.
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
1. After inputting the names and Owner ID’s there will be multiple opps that do not have Billing countries listed on the Account. There are many times in which have Account Demographic Country fields populated, but not the Billing Country or vice versa. Use those fields to map and populate the corresponding AE’s.
1. If there is a zip code but no countries listed, it is recommended that you use google search to populate the States/countries to find the corresponding AE’s.
1. If the opportunity is missing a market segment, try to do a quick google search on the company. If no information is found, it is likely that the account is SMB.
1. Populate the Account owner (O), Owner Team (O), and SA Team and match as information above, and table.
1. Repeat this process for each Market Segment (SMB/MM/Large/PubSec) making sure each Territory is correct
1. Make sure all opportunities are populated. If you cannot find any information on the account, make sure to ask about those before uploading.
1. To prepare the upload, you will only need the following fields: Opportunity Owner ID, Opportunity ID, SA Team, Account Owner (O), Owner Team (O) (you also need to update the Account ID/ Account Owner ID but I recommend uploading the accounts on a separate worksheet to avoid confusion.)
1. Save the file as CSV and upload to data loader.
1. To update the account owner you will need Account ID, Account Owner ID. Match the opp owner to the Account Owner and upload.

 </details>

### Process to Request Updates to Territory Ownership

#### Territory Ownership (Sales)

1. Create an issue in the Sales Operations project - utilizing the [Territory Change Request template](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/issues/new?issuable_template=Territory_Change_Request).
2. Follow the directions within the template and provide all requested details.
    - If an Individual Contributor is requesting the change, add your manager to the `/assign` command.
    - If a Manager is requesting the change, submit the issue and it will auto-assign to Sales Ops.
3. Sales Operations will update SFDC.
4. Sales Operations will make the change on the Territory Management document.
5. Sales Operations will update LeanData.
6. Territory Management updates will be uploaded to LeanData by Sales Operations.

#### Territory Ownership (Renewals Managers)

1. Create an issue in the Sales Operations project - utilizing the [Renewal Manager Territory Change Request template](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/issues/new?issuable_template=ISRTerritoryChange).
2. Follow the directions within the template and provide all requested details.
3. Renewal Operations and Sales Systems to update SFDC.
4. To request Renewals Manager ownership exceptions for individual opportunities, please chatter your Manager, Renewals on the opportunity for approval before looping in Sales-Support.
If the opportunity is in a closed period, the Manager, Renewals and Sales Comp need to approve having the Renewals Manager added to the opportunity before tagging Jesse Rabbits directly to make the update.
    - Note: Only James Harrison or Jesse Rabbits can update closed opportunities at this time.

**Warning:** Updating these tables without updating Operations will not be reflected in our various systems causing all reports and routing to be incorrect!

Questions? Ask in the #sales Slack channel and ping @sales-ops.

