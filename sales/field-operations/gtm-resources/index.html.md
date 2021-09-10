---
layout: handbook-page-toc
title: "Go to Market"
description: "Operations, Procedures, Documentation"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

- - -

{::options parse_block_html="true" /}

## Reaching the Teams (internally)

### Issues and Projects

- [Sales](https://gitlab.com/groups/gitlab-com/sales-team/-/issues) - general sales related needs & issues
- [Marketing](https://gitlab.com/groups/gitlab-com/marketing/-/issues) - all issues related to website, product, design, events, webcasts, lead routing, social media and community relations
- [Customer Success SA Triage](https://gitlab.com/gitlab-com/customer-success/sa-triage-boards) - technical pre-sales requests

### Slack: A short list of the helpful Slack channels

- `#customer-success`
- `#sales-support`
- `#sfdc-users`
- `#sdr_global`
- `#smb`
- `#mktgops`
- `#outreach`
- `#it_help`
- `#marketing_programs`
- `#marketing`
- `#community-programs`

## Glossary

| Term | Definition |
| ---- | ---------- |
| Accepted Lead | A lead a Sales Development Representative agrees to work until qualified in or qualified out |
| Account | An organization tracked in salesforce.com. An account can be a prospect, customer, former customer, integrator, reseller, or prospective reseller |
| AM | Account Manager |
| AE | Account Executive |
| APAC | Asia-Pacific |
| CAM | Channel Account Manager |
| CS | Customer Success |
| EMEA | Europe, Middle East and Africa |
| EULA | End User Licence Agreement |
| High intent | an event, webcast, demo that is a strong indicator of purchase or evaluation |
| Inquiry | an Inbound request or response to an outbound marketing effort |
| IQM | Initial Qualifying Meeting |
| LATAM | Latin America (includes all of Central & South America) |
| MQL | Marketo Qualified Lead - an inquiry that has been qualified through systematic means (e.g. through demographic/firmographic/behavior lead scoring) |
| MVC | [Minimal Viable Change](/handbook/product/product-principles/#the-minimal-viable-change-mvc) (not Model View Controller) |
| NCSA | North, Central, South America (legacy region being phased out) |
| NORAM | North America |
| Qualified Lead | A lead a Sales Development Representative has qualified, converted to an opportunity and assigned to a Sales Representative (Stage `0-Pending Acceptance`) |
| RD | Regional Director |
| ROW | Rest of World |
| SAL | Strategic Account Leader |
| Sales Admin | Sales Administrator |
| Sales Serve | A sales method where a quota bearing member of the sales team closes the deal |
| [SAO](/handbook/marketing/revenue-marketing/sdr/sales-sdr-alignment/#criteria-for-sales-accepted-opportunity-sao) | Sales Accepted Opportunity - an opportunity Sales agrees to pursue following an Initial Qualifying Meeting |
| SDR | Sales Development Representative |
| Self Serve | A sales method where a customer purchases online through our web store |
| SLA | Service Level Agreement |
| SQO | Sales Qualified Opportunity |
| TAM | Technical Account Manager |
| TEDD | Technology, Engineering, Development and Design - used to estimate the maximum potential users of GitLab at a company |
| Won Opportunity | Contract signed to Purchase GitLab |

## Customer Lifecycle

A customer lifecycle is a term used to track the different milestones prospective customers go through as they learn about GitLab and interact with our sales and marketing teams.
Each subsequent milestone is a subset of the previous milestone, and represents a progression from not knowing GitLab to being a customer (and fan) of GitLab.

At the highest level of abstraction, we use the terms `lead`, `opportunity`, and `customer` to represent a person's progression towards becoming a customer of GitLab.
Those three terms also correspond to record types in salesforce.com.

Lead => Opportunity => Customer

However, there are more granular steps within the above milestones that are used to track the above process with more precision.
They are tracked as follows:

| Funnel stage | Record Type | Status or Stage |
| ------------ | ----------- | --------------- |
| Raw | Lead or Contact | Raw |
| Inquiry | Lead or Contact | Inquiry |
| Marketo Qualified Lead | Lead or Contact | MQL |
| Accepted Lead | Lead or Contact | Accepted |
| Qualifying | Lead or Contact | Qualifying |
| Qualified | Lead or Contact | Qualified (converted) |
| Pending Acceptance | Opportunity | 0 - Pending Acceptance |
| Sales Accepted Opportunity | Opportunity | 1 - Discovery |
| Sales Qualified Opportunity | Opportunity | 2 Scoping - 6 Awaiting Signature |
| Customer | Opportunity | Closed Won |

When going from Qualifying to Qualified Lead the lead is duplicated to an opportunity, and the lead is set to qualified and not being used anymore.

Lead or Contact: #lead--contact-statuses

Opportunity: #opportunity-stages

Sales Accepted Opportunity: #criteria-for-sales-accepted-opportunity-sao

## SAL Sales Capacity

The following calculation is used to measure/plan for sales capacity.
This is a calculation only and should be used to set goals and plan.
Sales capacity is an individual metric that is based on several factors (lead source, tenure of salesperson, competitive landscape, geographic location, rep productivity) not included in the formula below:

- Days to close - 180 days
- Months to close - 6 months
- Win rate - 33%
- Months to lose - 3 months (half of months to close, expecting constant fallout)
- Months on average - 4 (33.3% times 6 and 66.7% of 3)
- Capacity Goal (active opportunities in [Stage 1-6](#customer-lifecycle)) - 40 opportunities
- [SCLAU](/handbook/sales/field-operations/gtm-resources/#glossary) per month - 10 (40 opportunities / 4 months)

## How Tos & Setup

### Events

Conferences, Field Events, Owned Events

Event details are owned by the Field Marketing Team with execution of system tracking, landing pages, reminders, and follow up completed by Marketing Program Managers.
See the [events handbook page](/handbook/marketing/events/) for more details.

### How to do Step 1 cleanup of lead lists before passing to MktgOPS

[List cleaning instructions](/handbook/marketing/marketing-operations/list-import/#import-cleaning-template---info-for-pre-mktgops-hand-off)

## Record Management

### MQL Definition and Scoring

A breakdown of MQLs and lead scoring can be found in the [marketing operations handbook](/handbook/marketing/marketing-operations#mql-scoring-model).

### Segmentation

Sales Segmentation is based on the `Employees` field of the `Global Account`. 
- If a `Global Account` has a lower segment than any of its child accounts, the `Global Account` will adopt the largest sales segment of any of its child accounts.
- If the employee count is unknown or blank and manual research cannot confirm, Sales Operations will mark the account as `SMB` with a placeholder of `-1` employees in the  Number of Employees: Manual - Admin field in order to get a Territory to populate and assign the account to an account rep.

- `Large` = 2,001+ total employees
- `Mid-Market` = 101-2000 total employees
- `SMB` (Small Business) = 0-100 total employees

![gtm-model](/handbook/sales/field-operations/gtm-resources/gtm-model1mm.png)

`Employees` is based on the number of employees that our data enrichment tools return for that Account, `[TSP] Account Employees`, <b>as determined in the [sales segment review process time period](#sales-segment-and-hierarchy-review-process)</b>.
   - Note: `[TSP] Account Employees` will give the most up to date/accurate data in "real time".  Meaning it gets enriched and offers what the answer should be.  `Employees` will remain static until Sales Ops manually tells the system to update it (via the TSP Transfer process) OR manual overrides are made by Sales Operations. 
   
We use a hierarchy structure to determine what the number of employees is for the account.
The hierarchy of our data tools on _Accounts_ as they relate to the `Total Employee` count is shown below.

1. Number of Employees: Manual - Admin
1. Number of Employees Data Fox (we'll be removing DataFox from the process in Q3-Q4)
2. Number of Employees ZI

LinkedIn/Websites are not designated data sources.
If a prospect communicates a different employee size from DataFox/Zoominfo that conflicts with segmentation of what is determined by DataFox/Zoominfo then SalesOPS should be notified via chatter on the record with documented proof from the prospect.
Admins have the ability to override the `Employees` and bypass this hierarchy but only during our [sales segment review process](#sales-segment-and-hierarchy-review-process).

Mid-Market accounts can managed either as a [MM Key Account or belong to a MM Territory AE](/handbook/sales/commercial/#mid-market-roles).

### Sales Segment and Hierarchy Review Process

In order to address issues when it is believed that the employee count, account address and/or account ownership is incorrect follow the [Sales Operations process](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/#what-if-tsp-is-wrong-how-can-i-request-a-change) to have the `[TSP]` fields updated and the account will be reviewed per the Rules of Engagement. 

Provide the URL to validate the request. Examples of valid sources include but are not limited to financial filings, newspaper articles, reports directly from the company. During the Sales Ops review period it is at the discretion of the Sales Ops team to have the Total Employee count updated or to have it remain the same.

If the number of employees, according to our sources based on our hierarchy as described in Segmentation has changed, the Sales Ops team will automatically update the accounts segment and follow the Rules of Engagement account review process.

### Regional Leadership

**Enterprise Sales**
- **VP Enterprise Sales**: Mike Pyle
- **Europe, Middle East and Africa** (`#emea` Slack channel): TBH, Regional Director
- **Asia Pacific** (`#apac` Slack channel): Anthony McMahon, Regional Director
- **North America - US East** (`#us-east` Slack channel): Brittany Caulfield, Area Vice President
- **North America - US West** (`#us-west` Slack channel): TBH, Regional Director
- **Public Sector** (`#public-sector` Slack channel): Bob Stevens, Area Vice President
 
**Commercial Sales**
- **VP Commercial Sales** (Mid-Market & Small Business): Ryan O'Nell
- **Mid Market Global Sales**: Timmothy Ideker, Regional Director
- **SMB North America Sales** (`#smb` Slack channel): Nick Christou, Regional Director
- **SMB EMEA/APAC Sales** (`#international-smb` Slack channel): Helen Mason, Area Sales Manager

### Territories

[Territory tables](/handbook/sales/territories) are maintained within the Sales Handbook.
Both maps & written tables are kept up to date with all pairings and territory assignments.
Our LeanData routing workflows and SFDC reports are based on these tables.

The Location of each account used to determine its Sales Territory is determined by a combination of 3rd party data systems (Datafox, Zoominfo) and manual overrides.
This address is stored in "Account - Territory" on the Account object in SalesForce.
This field inherits data from other fields in the following priority: 

1. Admin Manual Override (if present) 
2. Datafox 
3. Zoominfo 
4. Billing Address

### Industries & Sub-Industries

GitLab recognizes the grouping of companies that are related based on their primary business activities in the following ways: 

1. **Industry**
    - This is the highest level of classification 
    - A list of GitLab's Industry values can be found [HERE](https://gitlab.my.salesforce.com/_ui/common/config/field/StandardFieldAttributes/d?id=Industry&type=Account)
1. **Sub-Industry**
    - Sub-Industry is a more granual/detailed classification of Industry.  
    - A list of GitLab's Sub-Industry values can be found [HERE](https://gitlab.my.salesforce.com/00N6100000HIhad).  This list aligns with the industries used by DemandBase 
1. **Standard Industrial Classification (SIC)**
    - SIC is a standard system for classifying industries by a four-digit code and is the most granular categorization GitLab leverages. 
    - A list of SIC codes can be found [HERE](https://www.naics.com/sic-codes-industry-drilldown/)
  
The Industry and Sub-Industry of each account is determined by a combination of 3rd party SIC data and manual overrides. The information is stored in the `Industry` and `Sub-Industry` fields on the Account object in SalesForce and inherit data in the following priority:

1. Zoominfo SIC mapping to `Industry` and `Sub-Industry`
1. Admin Manual Override 

**Industry & Sub-Industry Enrichment Cadence**

The Industry and Sub-Industry data on an Account is enriched and updated automatically on a daily cadence.  


### Account Ranking for Enterprise Sales
Account Ranking in SFDC allows sales to focus and prioritize activities for their target customers, easily nominate or flag accounts for both marketing support and ABM campaigns. Account ranking would also be leveraged to drive discussions during QBRs.

In order to rank accounts each Enterprise Sales rep would update the 'Account Rank' field located in Account Rank Information section and can also add the Account Rank Notes. The Account rank should be added at the Ultimate Parent Account level and to not more than 50 Accounts. 

[The Account Ranking Guide](https://docs.google.com/document/d/1u2Dg_jorRi_tgcC_2L-FjAmEqnMya76bvZ6WmAt4qGA/edit) can be used to help the Strategic Account Leader focus on a cadence to target each Account Rank. 

#### Definitions for Enterprise Account Ranking: 

* **Rank 1** highest priority accounts that require both sales focus, SDR and marketing support in the next quarter. These are the accounts reviewed in QBR's each quarter by sales and include both Land and Expand accounts. 
* **Rank 1.5** quarterly ABM nominations: should match all of Rank 1 criteria
* **Rank 2** accounts that match our ICP and should be a focus for sales and marketing in the current FY but are not a Rank 1 account. Should include both Land and Expand.
* **Rank 3** don't match our current ICP but are strategic for sales & GitLab in the region. Should include both Land and Expand

## Account Ranking for Commercial Sales
It is a requirement for the Commercial Sales Team to tier their accounts using the fields on the Account Object. This helps prioritize the accounts to go after when prospecting for new or expansion. Please see the [Account Ranking section of the Commercial Sales handbook](/handbook/sales/commercial/#account-ranking) for definitions specific to SMB and Mid-Market AEs.

### Account Ownership Rules of Engagement 

**Effective FY22-Q1**

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

1. **Cases** created by chattering @sales-support for account ownership changes are received and reviewed by Sales Operations. Sales Operations will review the account chatter feed on the escalated account to ensure that consensus has been met by all parties, ensure supporting documentation has been provided, and verify the accuracy of the supporting documentation. Sales Operations will make any necessary updates to account fields to reflect changes such as employee count, address or add the parent to the account. If the request is approved the account will either be moved immediately or marked with the pick list value of `Quarterly Review` in the  `Account Reassignment Status` field. Accounts that have CARR must be flagged to be reviewed at the quarter to review the sum of CARR on all of the AEs accounts requested to move.If the sum of CARR for all requested accounts is under $50K the accounts can be moved as agreed upon. If the sum of CARR for all requested accounts is over $50K Sales Operations will work with Sales Strategy to evaluate the potential impact on AEs quota and work directly with the ASM an accounts will remain with the current owner until a decision is made. Flagged accounts can be tracked in the [Sales Ops: ROE Dashboard](https://gitlab.my.salesforce.com/01Z4M000000oYC7).
1. **Sales Operations Immediate and Quarterly Account Review Process** 
   1. Accounts that can be moved immediately by Sales Operations: 
       1. Public Sector accounts owned by non-Public Sector AEs/SALs 
       1. Non-Public Sector accounts owned by Public Sector SALs
       1. EDU/OSS/Startups accounts owned by a Community Programs team member 
       1. Web directs that are enriched with inaccurate data resulting in incorrect accounts assignment will have the data corrected and account processed to determine the next approved Account Owner and be transferred
       1. Newly created accounts with inaccurate data resulting in incorrect account assignment will have the data corrected and account processed to determine the next approved Account Owner and be transferred
       1. First Order Accounts owned by the Mid-Market or SMB First Order team that have an initial Closed Won opportunity. These Accounts should be transitioned as Key Accounts to the corresponding Account Executive as indicated in the TSP Approved Next Owner field.  
       1. Accounts owned by SDRs, Sales Administrator or any other non sales role
   1. Accounts that will be marked for quarterly review and moved at the quarter with approvals: 
       1. Prospects with open opportunities
       1. Customer accounts - Sales Operations will not immediatly move accounts due to total CARR value of all requested account moves by a rep per quarter. If a rep requests accounts accumulating in over $50K of CARR to be transferred will require a review of remaining accounts to ensure quota is not affected
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
        1. **Community Program opportunities** (primarily $0 EDU/OSS): which will be owned by a member of that team.
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
   1. Prospect and Customer accounts with all approvals and  with `CARR` under $50K can be transferred immediately. Move any open opportunties stages 0-3 to the new owner. Opportunities stages 4-6 mark the `Holdover Expiration Date` for 90 days from date of approval on the Opportunity. 
   1. Prospect and Customer accounts with `CARR` over $50K with all approvals will need to be evaluated to ensure the move doesn't impact quota. Once approved to be moved, follow the step above
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

### Account Sources, Routing and Other Requirements

#### Website

Since an accounts `Website` is a key data point in determining [the accounts segment](#segmentation) and the accounts address and thus the resulting territory and ownership, the website on an account in salesforce is a required field on the layout.
In the event that the account is linked to an individual that uses a free email domain (or other similar cases) than the value of `[Blank]` should be used as the value for the accounts website.

#### Initial Source

A breakdown of `Initial Source` can be found in the [marketing operations handbook](/handbook/marketing/marketing-operations/#initial-source).

#### Lead & Contact Statuses

A breakdown of lead and contact statuses can be found in the [marketing operations handbook](/handbook/marketing/marketing-operations/#lead-and-contact-statuses).

#### Routing

Routing is determined by `Sales Segmentation`, `Region`, and `Global Account Ownership`. Routing through Lean Data when a record has no less than 30 points, this means that they have engaged with at least one piece of content or visited a high value page.

#### Routing & LeanData

**LeanData** works within the Salesforce ecosystem and is the primary tool leveraged to manage all routing workflows.
The Marketing Operations team is responsible for ongoing management and customizations within LeanData.
For more information see the [dedicated LeanData page](/handbook/marketing/marketing-operations/leandata).

#### Contact Requests

All `Contact Us` requests must be followed up within **one (1) business day** Service Level Agreement (SLA) and follow up must be tracked as an activity on the record within Salesforce.

U.S. Public Sector: Routed to the U.S. Public Sector Inside Sales team.

- [GitLab Public Sector Rules of Engagement](/handbook/sales/public-sector/)

#### Professional Service Requests

`Professional Service Requests` are treated like a [`Contact Us` request](#contact-requests) and followed up within **one (1) business day** Service Level Agreement (SLA).
Follow up must be tracked as an activity on the record within SFDC.

Requests submitted through the professional services page will be routed following `Global Account Ownership` rules.
Notification of form submission will be sent to the Strategic Account Leader (SAL) and Sales Development Representative (SDR) as well as Customer Success manager.
Initial response to form submission is the responsibility of the Account Owner (i.e. SAL).

#### Trial Requests

Trials can be requested through [web form](/free-trial/) or within product UI for both self-managed or SaaS.
Default trial length is thirty (30) days, but can be manually extended by the GitLab team for both the SaaS and self-managed products. Trial extensions for the SaaS product use the [`plan_change_request` issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=plan_change_request) template found in the `dotcom` Group, `internal-requests` project.
Extending self-managed trials requires access to the internal `Licensing App`.

#### Universities

United States

- **Public** University = [Public Sector team](/handbook/sales/territories)
- **Private** University = [Public Sector team](/handbook/sales/territories)

Rest of the World

- **Any** University = appropriate regional Sales Development Representative

#### Lead and Contact Record Ownership

Contact Ownership follows the rules as laid out below:
- Large Accounts
   - SDR (If present otherwise AE)
- MM & SMB Accounts
   - Customer Accounts
      - AE
   - Non-Customer Accounts
      - SDR (If present otherwise AE)

When an SDR is assigned to an Account to support and assist with outreach, the SDR will be added in the `SDR Assigned` lookup field to the account in Salesforce.
This field then populates down to the related Contact records.
Only SDRs are able to edit the `SDR Assigned` field and if there is a need to mass update the `SDR Assigned` on many accounts then the SDR should reach out to a member of the Sales Ops Team for support.

Records, both `LEAD` and `CONTACT`, need to be synced to Outreach to ensure email activity is properly mapped back to `Activity History` in SFDC.
The owner of the record in SFDC **does not** need to match the owner in Outreach.

#### Record Ownership and Record Visibility

In order to meet compliance standards our SFDC instance uses a private model.
This private model allows for some records to be visible by all Gitlab team members who use Salesforce, while other records may not be visible to them.
Currently this is in place as it pertains to records owned by the Public Sector team.
All salesforce records (leads, contacts, accounts, opportunities etc.) owned by the Public Sector team are only visibility to other members of the public sector team and a group of supporting staff who have been reviewed and permitted to view the these records.
All other records (owned by non-public sector team members) maintain their standard visibility levels.

This is important as it relates to inbound records or accounts in a sales reps name.
If you believe you have been incorrectly assigned a record that should belong to the public sector team member please coordinate with your manager, the sales-ops team or a member of the public sector team to review the record.

## Changing Ownership in Salesforce

### Changing Account Ownership in Salesforce

Only Sales Systems, Sales Operations and Channel Operations have the ability to change the account owner in Salesforce. This is to ensure that the Rules of Engagement are followed and to ensure that the account is assigned to the correct account owner based on TSP outputs and parent/child association. If there is an issue with account assignment, follow the exception process outlined in the Account Ownership Rules of Engagement. 
- **Note**: Only approved Profiles (those noted above) will have the appropriate buttons on their layouts in SFDC to change owners. The buttons auto-select the correct default behaviors when clicked.

### Changing Opportunity Ownership in Salesforce

Only Sales Systems, Sales Operations, Channel Operations, Finance, Deal Desk, SDRs and ISRs have the ability to change the opportunity owner in Salesforce. This is to ensure that the Rules of Engagement are followed and to ensure that the opportunity is assigned to the correct owner based on the corresponding Account Owner (see Opportunity Ownership for exceptions), TSP outputs and parent/child association. If there is an issue with opportunity assignment, follow the exception process outlined in the Opportunity Ownership Rules of Engagement. 
- **Note**: Only approved Profiles (those noted above) will have the appropriate buttons on their layouts in SFDC to change owners. The buttons auto-select the correct default behaviors when clicked.

### Changing Contact Ownership in Salesforce

Contact Ownership follows the rules as laid out below. This contact ownership cannot be updated as it is maintained by an [automated process in Salesforce](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/#contact-ownership)

- Large Accounts
   - SDR (If present otherwise AE)
- MM & SMB Accounts
   - Customer Accounts
      - AE
   - Non-Customer Accounts
      - SDR (If present otherwise AE)

### Changing Lead Ownership in Salesforce

Everyone is able to change the owner of a Lead as long as they are either changing the Lead Owner to match the Account Owner or they are the current Lead owner.
Lead ownership is set by LeanData due to specific rules by segment and by region/territory which may include round robin. Any lead unable to be routed, is routed to an SDR Queue for the SDR management team to determine proper ownership. For the most part, Leads are owned by SDRs.

### Default Ownership

- In the event that Ops encounters that there is not enough information to assign a record to a specific user in Salesforce it is to be assigned to the default user: [`Sales Admin`](https://gitlab.my.salesforce.com/00561000000mpHT?noredirect=1&isUserEntityOverride=1).
**This user should only be used by ADMINS. Non-Admins should not be reassigning records to this user**.
Before assigning to this user, admins should do their best to assign records to the actual users within Salesforce.
If you are unsure of who to assign it to please coordinate with the SalesOps Team.
This is also only a temporary solution until we have a more scalable solution in place that will reassign records to individuals who can and will actually be able to work records.

### Record Creation in Salesforce

ACCOUNT records in Salesforce are created in a number of ways - [list imports](/handbook/sales/field-operations/sales-operations/#how-to-get-help), [mass creation screen flows](#mass-create-contacts-on-opportunities-with-contact-roles), field event booth scans, research, networking, webcasts, content downloads.
Ideally all ACCOUNTS exist in Salesforce and team members are only creating CONTACT records; however, if a connection is made at an event and follow up needs to be done *prior* to official event list upload occurs team members should do the following:
   - Search Salesforce to be sure ACCOUNT does not already exist **AND** search using the person's email address to ensure duplicate record is not created
   - Record **does not** exist:
        - Create `Standard` ACCOUNT type - required fields are `Account Name` & `Account Type`
        - Create `Standard` CONTACT type - required fields are `Last Name`, `Account Name` (use lookup tool to find ACCOUNT just created) & `Initial Source` (i.e. where is this name coming from `Conference` = Field Event, `SDR Generated` or `AE Generated` = regular networking event, etc)
        - Be accurate where the name is collect from, `Unknown` is **not** acceptable.
        - The `Initial Source` on a CONTACT record *does not* equal `Source` on an opportunity. Refer to [`Initial Source`](#initial-source) for guidance on why this is important.
   - Record **does** exist:
        - If LEAD or CONTACT is unowned or "owned by Sales Admin, James Harrison or Chad Malchow", this record is adoptable by anyone - change `Record Owner` to your name
        - If LEAD or CONTACT is owned by SDR team member, **before** reaching out Chatter on the record asking SDR to transfer ownership. Ownership *must* be transferred **before** reaching out to avoid confusion, cross-communication and/or multiple people reaching out to same contact.

When official event list import is completed the created ACCOUNT or CONTACT record will be appended with the additional data collected at the event.
If there are any questions or you need assistance, please ping Marketing or Sales OPS in Slack `#sfdc-users` channel.

### Best practices

1. Be as accurate with your data as possible.
If you do not have a Contact `Phone` do not substitute the Account `Phone` - Leave it blank on the Contact record.
1. Search the database for duplicates before creating new records.
1. When merging records, retain the `Initial Source` of the record that was created first.

#### Mass create contacts on opportunities with contact roles

This process is specific for the unique cases of creating totally new contacts for an account that also have to be associated with an opportunity.
An example of when to use this process is when you meet a number of new contacts at an account during a demo for a specific opportunity.
The process to create these contacts for that account and to have them related with that opportunity would be through the steps listed below or as demonstrated in this [video](https://drive.google.com/file/d/1iEO4dQUAfa4tkbEmip1Xne7-9Tg2nR6h/view?usp=sharing):

1. Navigate to the Opportunity record in Salesforce that these contacts should be associated with
1. Click on the button `New Contacts & Opp Contact Roles`
1. Follow the screen flow and instructions for creating all contacts and associating them with the opportunity, providing all required and known information
1. If there is additional information for any of the contacts that you have but you were not able to input the information via the screen flow, navigate to the contact(s) once the operation is complete and fill in any additional information you have for the contact(s)

It is important to note that by following this process that all contacts must meet the following criteria:

1. All of the contacts that are created are to be associated with both the account and opportunity for that opportunity record.
1. All of the contacts are net new and do not exist within Salesforce already - as either contacts or leads.
1. All of the contacts will be assigned a contact role on the opportunity.
1. There already is a primary contact, or one of the new contacts will be the primary contact on the opportunity.


Territories are assigned based on [Sales Segmentation](#segmentation) and routing for each type of inbound request is [through LeanData](/handbook/marketing/marketing-operations/leandata/#lead-routing-workflow).

LEAD/CONTACT Records with the `Initial Source` of `GitLab.com` are **not** to be engaged, prospected or targeted unless they have taken a handraising 'active' activity, such as `Trial - Enterprise`, `Trial - GitLab.com`, `Contact Us`, `Demo`, 'Webcast', 'Content' and/or engaged in `Web Chat`.

For information about GitLab's email policy and the types and number of emails we send, please see our [Email Communication Policy](/handbook/marketing/marketing-operations/index.html#email-communication-policy).

#### Active vs. Passive

`Initial Source` cannot be used to determine if a lead is 'active' or 'passive' since the Initial Source is set upon first touch attribution; therefore, looking at the `Last Interesting Moment` field is the primary field used to begin determining if a record is actively being worked.
Reviewing the `Activity History` in Salesforce is another factor considered when evaluating 'active' or 'passive'.

A LEAD or CONTACT is considered 'Active' if they have taken an `Trial - Enterprise`, `Trial - GitLab.com`, attended a high intent live webcast or demo and/or engaged `Web Chat`, these are all handraising 'active' activities.
These types of records are considered 'Active' for a minimum of 60 days from the date of the handraising activity.
For example: the record is considered 'Active' for entire duration of EE trial, plus 30 days after `EE Trial End Date`.

## Campaigns

Salesforce campaigns are used to track efforts of marketing tactics - field events, webcasts, content downloads, etc.
The campaign types align with how marketing tracks spend and align the way records are tracked across three of our core systems (Marketo, Salesforce and Bizible) for consistent tracking.
Leveraging campaign aligns our efforts across Marketing, Sales and Finance. For information on integrated campaigns (managed by Marketing Programs), please see the [Integrated Campaigns handbook page](/handbook/marketing/campaigns/) and to learn more about planned, in progress, and previously executed campaign tactics, please see the [Marketing Programs handbook page](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/).

## Outreach & Tracking End of Availability Customers

To ensure that we're engaged with those customers who were a part of the Starter/Bronze End of Availability initiative, Sales is asked to track their outreach (and other engagements) in SFDC by way of activities.  Below are the steps to ensure we're capturing that activity: 

**Process For Tracking EoA Customer Outreach:** You should follow your existing outreach cadence and tracking via SFDC activities.  However, for any/all outreach to EoA customers, you make two important updates in SFDC:
1. Enter the words “Starter”, “Bronze” or “EoA” in some capacity in the Activity Comments
1. Update the `EoA Sentiment` field on the Account (red, yellow, green - defined in the help text)

**Reporting**: 
- All EoA customers can now be tracked in SFDC leveraging the `FY22 On Starter/Bronze` field (if box is checked, they’re an EoA customer).  A full list by segment, region and owner can be found [HERE](https://gitlab.my.salesforce.com/00O4M000004ajNm)
- EoA account list: https://gitlab.my.salesforce.com/00O4M000004ajNm
- EoA accounts with activity: https://gitlab.my.salesforce.com/00O4M000004ajpR

## System Set-up

### Marketo Programs

The Marketo programs for the corresponding campaign types have been prebuilt to include all the possible necessary smart campaigns, email programs, reminder emails and tokens that are to be leveraged in the building of the program.

You can find a breakdown of all Marketo program types and progression statuses in the [Marketing Operations handbook](/handbook/marketing/marketing-operations/#campaigns)

### Reports and Dashboard Naming Convention

Naming convention for reports and dashboards will leverage sequence of periods (.) to help identify importance.

- . [Name of Report or Dashboard]
- **Example**:
    - . Sales Dashboards
    - .. APAC ENT Dashboards

## Opportunities

### Criteria for Sales Accepted Opportunity (SAO)

The following criteria are **required** for all SAOs:
1. An Opportunity is deemed a Sales Accepted Opportunity (SAO) when the Opportunity is moved from Stage `0-Pending Acceptance` to `1-Discovery` by the Strategic Account Leader. 
1. SDRs do not input the Net ARR $ value, the Sales Opportunity owners do.
1. Required field settings to identify an SAO are:
     - The "SDR Sales Accepted Date" is defined
     - The "Is EDU/OSS Opportunity flag" is 'N'
     - Stage <> `10-Duplicate`

The following criteria is required for an SDR to submit an opportunity to sales:

**Authority**
The prospect being met is directly involved in a project or team related to the potential purchase of GitLab within this buying group, either as an evaluator, decision maker, technical buyer, or *influencer.
*If the “influencer” is not directly involved (i.e. is related to a "decision maker" in another group/division or someone who is not directly tied to the opportunity at hand) the SDR will continue to own the opportunity and will seek to set-up the next meeting with a key contact in the buying group (leaving 0-pending status until date/referral is confirmed), updating the current opportunity with the new directly-involved point of contact in the buying group once it's acquired.

**Initiative**
An initiative the company is working on has been identified and GitLab can potentially help the initiative.
Identified by either a business problem (i.e too many tools), strategic direction or modernization interest (impetus to change).

**Fit**
The following fields have been obtained:

- Current DevOps or software development lifecycle tools (from conversation or credible data source)
- Expected entry point use case (e.g. SCM or CI)
- Potential seats of the first opportunity (if this is a new account or buying group)

**Timing**
After the initial qualifying meeting with the account leader/executive, there must be a tangible next step scheduled with the prospect that is set to occur within a *60 day timeframe.
(*If next step isn’t within a 60 day timeframe, the opportunity remains in stage 0 and in SDR ownership to nurture until the next step is actualized.)

_**SDR best practice:**_
Ask prospect about their environment, what they develop software for etc. to try build a picture of the company and how we will be able to help them.
Share relevant resources with the point of contact.
Add other potential influencers/buyers from that company into our database and the Outreach cadence in an effort to build more momentum within that organization.

_**Before the IQM with the account leader/executive, the SDR will also aim to gather:**_

- SaaS vs. Self Hosted
- Potential Future Seats in the Buying Group
- Total Seats Available Estimate at the company

_**Post IQM:**_
Opportunities in `1-Discovery` stage are accepted and owned by the account leader/executive.
The account leader/executive is responsible for the progression, activities, engaging other resources, and converting this early engagement to a mutual win.
The Sales account leader/excutive is responsible for taking the next step within 60 days, or reverting the opportunity back to SDR ownership or disqualifying the SAO if ultimately there is no opportunity.
Managers should be able to use the 'NEXT STEP DATE' field to determine if the IQM has taken place but opportunity has not been moved to new stage.
Opportunities should be moved to new stage within 48 hours of IQM.

### How to create an Opportunity

An OPPORTUNITY can be created in Salesforce a) when converting a LEAD to CONTACT; b) from a CONTACT.
**All opportunities** should be created with a Stage = `0-Pending Acceptance` regardless of how you create the OPPORTUNITY.
Once the initial setup is complete, the [OPPORTUNITY Stage](#opportunity-stages) can updated based on the criteria below.

#### Creating a New Business Opportunity from CONTACT record

{:.no_toc}

1. On CONTACT record, click the `New Opportunity` button. Required fields are:
    - Opportunity Name - using [Opportunity Naming Convention](#opportunity-naming-convention)
    - Account Name = This should NOT need to be changed as it pulls from the CONTACT object
    - Type = `New Business`
    - Initial Source = DO NOT CHANGE
    - Close Date = if no time frame defined, **SDR** set close date rolling 9-months
    - Stage = `0-Pending Acceptance` - starting stage for ALL opportunities
    - Add as much detail on the OPPORTUNITY record as you can.
    - Click `SAVE`
1. Scroll down OPPORTUNITY record to the `Contact Roles` section, **click** `New`. CONTACTS associated to the ACCOUNT will be listed (up to 50 records). You must select a CONTACT as **Primary** and define the `Role`.
    - If you do not define a **Primary** CONTACT marketing attribution & activity influence on the OPPORTUNITY will not be accurately captured.
1. Change the OPPORTUNITY Owner to the `Account Owner` (i.e. SAL/AM). Click `Save`.
1. Within the OPPORTUNITY record, click the `Initial Qualifying Meeting` button. Enter the required fields (Start/End dates, Type) and update the description field with any notes the SAL/AM should have and review _before_ taking the scheduled meeting.
    - Fill in the `Related to` section for BOTH the CONTACT and the OPPORTUNITY
    - Change the `Assigned to` field to the OPPORTUNITY owner
    - Click `Save`
1. Update the 'NEXT STEP DATE FIELD' with the date of the next action step (most often an IQM).
1. Enter in 'NEXT STEPS' with details that correlate to the NEXT STEP DATE FIELD.

#### Creating a New Business Opportunity from LEAD record

{:.no_toc}

1. On LEAD record, fill out the required qualification questions, add additional notes to the optional sections, if gathered, AND update to `Lead Status` = `Qualified`. Click <b>`Save`</b>.
1. Click the `Convert` button:
    - Change `Record Owner` to the Account Owner (based on Rules of Engagement)
    - Check the "Send Email to the Owner" box
    - Lookup the correct `Account Name` (remove company suffix to avoid duplicates) - if unsure assign OPPORTUNITY to the "Parent" account
    - Opportunity Name - using [Opportunity Naming Convention](#opportunity-naming-convention)
    - Click `CONVERT`
        - If CONTACT record exists, associate converted LEAD to existing CONTACT. _Do not create duplicate if possible_
1. The OPPORTUNITY will need to be updated with the following:
    - Click `Edit`
    - Type = `New Business`
    - Initial Source = DO NOT CHANGE
    - Close Date = if no time frame defined, **SDR** set close date rolling 9-months
    - Add as much detail on the OPPORTUNITY record as you can.
    - Click `SAVE`
1. Scroll down OPPORTUNITY record to the `Contact Roles` section, the converted LEAD will automatically be set as **"Primary"**. Click `Edit` and define the `Role`.
    - Add any additional CONTACTS and define their `Role` that need to be associated with the OPPORTUNITY
    - Opportunities must have a **Primary** CONTACT defined so marketing attribution & activity influence is accurately captured.
    Change the OPPORTUNITY Owner to the `Account Owner` (i.e. SAL/AM). Click `Save`.
1. Within the OPPORTUNITY record, click the `Initial Qualifying Meeting` button. Enter the required fields (Start/End dates, Type) and update the description field with any notes the SAL/AM should have and review _before_ taking the scheduled meeting.
    - Fill in the `Related to` section for BOTH the CONTACT and the OPPORTUNITY
    - Change the `Assigned to` field to the OPPORTUNITY owner
1. Update the 'NEXT STEP DATE FIELD' with the date of the next action step (most often an IQM).
1. Enter in 'NEXT STEPS' with details that correlate to the NEXT STEP DATE FIELD.

#### Creating an Add-on Opportunity

{:.no_toc}

An `Add-On` OPPORTUNITY will inherit information from the _original_ `New Business` OPPORTUNITY.
The steps to create an `Add-on` OPPORTUNITY varies slightly from the instructions above because this type of OPPORTUNITY is created from the `New Business` OPPORTUNITY **not** from a converted LEAD or CONTACT.

This creates a parent-child relationship between the _original_ `New Business` OPPORTUNITY and the `Add-on` OPPORTUNITY.

1. Navigate to the _original_ `New Business` OPPORTUNITY (this will become the "parent" opp).
    - Example: If you are selling additional seats to an existing subscription - you should go to the original `New Business` OPPORTUNITY.
1. Click the `New Add-on Opportunity` button.
1. **UPDATE** the OPPORTUNITY Name - see the [Opportunity Naming Convention] guidelines
1. Define:
    - `Initial Source` = see the [definition table](#initial-source) to choose the most correct source. It is important to be accurate as this does impact reporting and marketing attribution.
    - Close Date = if no timeframe defined input close date on a rolling 9-months.
    - Stage = All opportunities start as `0-Pending Acceptance`
1. Add any additional details on the OPPORTUNITY record
1. Click `Save`

Within the parent-child OPPORTUNITY hierarchy some information will pass from the parent (`New Business`) to the child (`Add-on`). This information will be used in our reporting and analysis to track add-on business OPPORTUNITIES to their `Initial Source` and contributing team members.

There are additional validation rules that are presently in effect:

- The **Parent** OPPORTUNITY must either be a `New Business` or `Renewal` OPPORTUNITY.
- A **Parent** OPPORTUNITY _cannot_ be another `Add-on` OPPORTUNITY
- All sales-assisted non-portal `Add-on` OPPORTUNITIES **must** have a parent opportunity.

#### Creating an Upside IACV Opportunity

{:.no_toc}

An `Upside IACV` OPPORTUNITY will inherit information from the _original_ OPPORTUNITY.
The steps to create an `Upside IACV` OPPORTUNITY varies slightly from the instructions above because this type of OPPORTUNITY is created from the OPPORTUNITY **not** from a converted LEAD or CONTACT.
An `Upside IACV` OPPORTUNITY has a minimal amount of fields as it's only for tracking the potential upside amount.

This creates a parent-child relationship between the _original_ OPPORTUNITY and the `Upside IACV` OPPORTUNITY.

1. Navigate to the _original_ OPPORTUNITY (this will become the "parent" opp).
1. Click the `Upside IACV` button.
1. **UPDATE** the OPPORTUNITY Name - see the [Opportunity Naming Convention] guidelines
1. Define:
    - Close Date = if no timeframe defined input close date on a rolling 9-months.
    - Amount = the upside value in addition to the Parent OPPORTUNITY value. If Parent OPPORTUNITY amount is $100,000 and total OPPORTUNITY amount potential is $150,000, then the Upside IACV amount is $50,000
1. Click `Save`

When the PARENT OPPORTUNITY is changed to "Closed Won" or "Closed Lost," please update the stage of the UPSIDE IACV OPPORTUNITY to "Duplicate."
In order to save this change, you must also enter the PARENT OPPORTUNITY name in the "Duplicate Opportunity" field on the UPSIDE IACV OPPORTUNITY.

Note: Upside IACV opportunities exist for tracking purposes only.
All final IACV (including any won upside IACV) will be attributed to the PARENT OPPORTUNITY.

#### Creating a Professional Services Opportunity

{:.no_toc}

A `Professional Services` OPPORTUNITY will be used to cover any integration, consulting, training or other service that a Sales rep will sell to a prospect/client and needs or wants to be invoiced separately.
To invoice separately a new quote and opportunity must be created.

A full list of professional services can be found [here](/handbook/customer-success/professional-services-engineering/#professional-services-offerings).
See [Working with Professional Services](/handbook/customer-success/professional-services-engineering/working-with/) for workflow details.

##### Steps for creating a Professional Services opportunity in SFDC

1. Navigate to the _original_ OPPORTUNITY (this will become the "parent" opp).
1. Click the "New PS Opportunity" button and fill out the following:
    - OPPORTUNITY Name = will already be set correctly; do not change
    - Type = do not change it will populate from parent OPPORTUNITY
    - Initial Source = do not change it will populate from parent OPPORTUNITY
    - Close Date = if no timeframe defined input close date on a rolling 9-months.
    - Stage = All opportunities start as `0-Pending Acceptance`
    - Professional Services Value (ProServe Value) = enter dollar value, which is defined as the total value of all consulting, training, integration, or other professional services as outlined in the Statement of Work.
    - ACV = **do not populate** an automated workflow will fill this information
    - Amount = **do not populate** an automated workflow will fill this information
    - Professional Services Description, Project Scope, Task Schedule and Key Assumption fields = these will push to the Statement of Work when a PDF is generated from Zuora.
    - Verify the `Professional Services` OPPORTUNITY has the _original_ OPPORTUNITY in the `Parent Opportunity` field. If this is not a validation rule error will occur while attempting to save the OPPORTUNITY.
1. Click `Save`
1. To create a quote, see the ['Creating Accounts, Contacts, Opportunities and Quotes'](/handbook/sales/#creating-accounts-contacts-opportunities-and-quotes-in-salesforce) and begin with Step 4. Here is a [video](https://drive.google.com/file/d/142csIZyrzIfSJOSJkIAK6d9c1JwTO_Rq/view?usp=sharing) that hightlights the process.

#### Tracking Sales Qualified Source in the Opportunity

Sales Qualified Source is dimension used when analyzing pipeline creation, lead conversion, sales cycles, and conversion rates.
Sales Qualified Source may be different from the Lead Source of an Opportunity, which captures the original source (event, campaign, etc).
For example, if a prospect originates from a trial (lead source), that prospect can be qualified by a SDR, Account Executive, Channel Partner, or the Web (sales qualified source).

The logic for the Sales Qualified Source is as follows:

1. If the Sales Development Representative field (Opportunity) is populated, regardless of opportunity owner, the Sales Qualified Source is "SDR Generated"
1. If the Sales Development Representative fields are NULL and the opportunity owner is:
    - a Regional Director, Account Executive, or Account Manager, the Sales Qualified Source is "AE Generated"
    - a GitLab team-member that is not a Regional Director, Account Executive, or Account Manager, the Sales Qualified Source is "Other"
    - an authorized reseller, the Sales Qualified Source is "Channel Generated"
    - the Sales Admin, the Sales Qualified Source is "Web Direct Generated"

#### Reseller Opportunities

Opportunities utilizing a reseller require slightly different data:

Lead/Contact:
The partner record should be converted to their company channel type account.
The end user record should be converted to the end user standard account type.

Opportunity Name:
If the partner is an authorized reseller, rename the opportunity with the partner’s nickname in front, then a dash.
For instance; if it is a Perforce deal, the opportunity name should start with P4 - (whatever your opportunity name is)
This is important for the workflow that solicits updates from the reseller.

Account Name:
It is important that opportunities using a reseller are created on the END CUSTOMER’s account, and not the reseller’s account.
The account name on an opportunity is never a reseller.
Resellers do not buy licenses; they purchase them on the behalf of an end customer.
For instance, the account name field on an opportunity should never be SHI.

Opportunity Owner:
The AE/SAL/Channel Manager who is working the deal with the reseller

Deal Registrant:
The reseller who registered the deal.

Associating Contact Roles:
After creating the opportunity, click “New” in the contact section to associate contacts with the opportunity.

- The primary contact should always be a contact at the end user’s account and not a contact at the reseller.
This is important as resellers come and go, and if we do not capture the contact at the end user account, we will not be able to sell to this account if the reseller ends their relationship with us or with the end account.
- A reseller contact (say, the sales rep at ReleaseTEAM) can, and should be added to the opportunity with the role of Influencer.
NOTE: A contact that works for a reseller should never be added to an end user account.
For instance an employee of SoftwareOne should be a contact of the SoftwareOne account only, and not the Boeing account.

Associating Partners to an Opportunity:
After creating the opportunity, click “New” in the Partners section to associate the reseller with the opportunity.

- You can associate multiple partners with an opportunity if there is more than one reseller involved in the opportunity.
This is not uncommon for government opportunities, or opportunities where the customer is asking multiple fulfillment houses (like SHI and SoftwareOne) to fulfill the order.
- Unofficial resellers should never be marked primary
- If there are any authorised resellers associated, at least 1 must be marked as primary
    - In order of precedence this would be:
        - The deal registrant (`Deal Registrar` field in SFDC, This should be confirmed with the appropriate channel manager)
        - The deal fulfiller (i.e.: The one issuing the PO)
        - The distributor

Opportunity Team List:
Add the reseller user to the Opportunity team list with the role of “Reseller” or else they cannot see the opportunity.

#### Opportunity Naming Convention

Opportunities for subscriptions will use the following guidelines:

- **New Business**: [Quantity]
    - [Name of Company]- [Quantity] [Edition]
    - Example: Acme, Inc- 50 Starter
- **Add-On Business (seats only)**:
    - [Name of Company]- Add [Quantity] [Product]
    - Example: Acme, Inc- Add 25 Starter
- **Add-On Business (Upgrade from Starter to Premium)**:
    - [Name of Company]- Upgrade to Ultimate
    - Example: Acme, Inc- Upgrade to Ultimate
- **Renewal Business (no changes)**:
    - [Name of Company]- [Quantity] [Product] Renewal [MM/YY]
    - Example: Acme, Inc- 50 Premium Renewal 01/17
- **Renewal Business + Add On Business (seats)**:
    - [Name of Company]- [Quantity] [Product] Renewal [MM/YY]+ Add [Quantity]
    - Example: Acme, Inc- 50 Premium Renewal 01/17 + Add 25
- **Renewal Business + Upgrade**:
    - [Name of Company]- [Quantity] Upgrade to Premium + Renewal [MM/YY]
    - Example: Acme, Inc- 50 Upgrade to Premium + Renewal 01/17
- **Professional Services**:
    - [Name of Company]- Professional Services [MM/YY]
    - Example: Acme, Inc- Professional Services 06/18
- **Refunds**:
    - [Original Opportunity Name] - REFUND
    - Example: Acme, Inc- 50 Upgrade to Premium + Renewal 01/17 - REFUND

#### Subscription Cancellation Policy

Customer subscriptions will be moved to cancelled no more than 30 days after the subscription term end date, and the related Renewal Opportunity will be moved to Closed Lost.

#### Opportunity Requirements for Returning Customers

- **Customers Returning within 180 Days of Subscription Term End Date**:
    - If a customer returns to purchase another GitLab subscription **within 180 days** of the previous subscription term end date, the transaction must be booked under a **Renewal Opportunity**, using a new subscription quote. In this scenario, the following actions should be taken:
        - **Sales**: A new renewal opportunity should be created, and Closed Won with the correct booking values.
        - **Deal Desk**: A second new renewal opportunity should be created, and Closed Lost, where Amount, Net ARR and ARR Basis represent the inverse of the same values on the original Closed Lost opportunity.
        - In this scenario, the Order Type 2.0 will be [3. Growth](https://about.gitlab.com/handbook/sales/sales-term-glossary/#growth-customers)
        - Example:
           
            | **Opportunity** | **Stage** | **Net ARR** | **ARR Basis** | **ACV** |
            | --- | --- | --- | --- | --- | 
            | New Business 2020| Closed Won | 100 | 0 | 100 |
            | Renewal 2021| Closed Won | 0 | 100 | 100 |
            | Renewal 2022 | Closed Lost | -100 | 100 | 100 |
            | Renewal 2022 | Closed Won | 0 | 100 | 100 |
            | Renewal 2022 | Closed Lost (Debook) | 100 | -100 | -100 |

- **Customers Returning More Than 180 Days After Subscription Term End Date**:
    - If a customer returns to purchase another GitLab subscription **more than 180 days** after the previous subscription term end date, the transaction must be booked under a **New Business Opportunity**.
        - In this scenario, the original Closed Lost opportunity will not be reversed and the Order Type will be [1. New - First Order](https://about.gitlab.com/handbook/sales/sales-term-glossary/#first-order-customers) or [2. New - Connected](https://about.gitlab.com/handbook/sales/sales-term-glossary/#connected-new-customers) based on the Account Family. 


## Opportunity Types

There are three things that can be new or existing:

- Account (organization)
- Subscription (linked to a GitLab instance)
- Amount (dollars paid for the subscription)

That gives 4 types of opportunities:

1. **New account** (new account, new subscription, new amount): This type should be used for any new subscription who signs up either through the sales team or via the web portal.
Paid training also falls under this type if the organization does not have an enterprise license.
This should be marked as New Business.
1. **New subscription** (existing account, new subscription, new amount): If an existing account is purchasing a new license for another GitLab instance, this will be New Business.
1. **Add On Business** (existing account, existing subscription, new amount): This type should be used for any incremental/upsell business sold into an existing subscription division mid-term, meaning not at renewal.
This may be additional seats for their subscription or an upgrade to their plan.
If an existing account is adding a new subscription, this would be new business, not an add-on.
1. **Renewal** (existing subscription, existing subscription, existing amount): This type should be used for an existing account renewing their license with GitLab.
Renewals can have their value increased, decreased, or stay the same.
We capture incremental annual contract value growth/loss as a field in Salesforce.com.
Renewal business can be a negative amount if renewed at less than the previous dollars paid for the subscription (renewal rate).
Only the part that is more or less than the old amount is IACV, the rest is part of the renewal opportunity.

- In the event that the customer wants to reset their contract, this would be considered a renewal.
For example, a customer starts January 1st for 12 months, but wants to reset starting April 1st for another 12 month term.

**New business** is the combination of new account and new subscription

### Opportunity Stages

To help move sales through the sales process, [here](https://docs.google.com/document/d/1ag7YY9aJ93j0CRZb-DrbfgH3vmHprTEdjG7l3O57xEk/edit) is a list of questions to ask at each stage

**0-Pending Acceptance**: This is the initial stage once an opportunity is created.

- What to Complete in This Stage:
    - For SDR sourced opportunities, the opportunity meets [Sales Accepted Opportunity criteria](/handbook/marketing/revenue-marketing/sdr/sales-sdr-alignment/#criteria-for-sales-accepted-opportunity-sao).
    - The SDR has scheduled a call via Google Calendar, sent invites, created an event on the account object, named the event: GitLab Introductory Meeting - {{Account Name}}
    - Once it is confirmed that the opportunity meets our Sales Accepted Opportunity criteria, the SAL or AE should move the opportunity to the next stage and the `Amount` field must be populated with estimated pipeline. The date the opportunity moves from this to the next stage in the sales cycle will populate the `Sales Accepted Date` field on the opportunity record.
    - If the details on the opportunity do not meet our Sales Accepted Opportunity criteria, the SAL or AE should move the opportunity to an `9-Unqualified` stage (this is the only time an opportunity can move into `9-Unqualified` stage) 
    - All Opps that are sales assisted must first enter this stage before they can be moved further in the pipeline. If they do not enter this stage at some point you will encounter a validation rule error.
    - For renewal opportunities, `0-Pending Acceptance` is only to be used if the renewal is not being actively worked by the Account Executive/Strategic Account Leader.

**1-Discovery**: Uncover as much intelligence about the project as you can, which will be confirmed at later stages throughout the sales cycle.

- What to Complete in This Stage:
    - Begin filling out [MEDDPPICC](/handbook/sales/meddppicc/)
    - Send Plan Letter/Recap Email to Attendees- [Example](https://docs.google.com/document/d/16Gurj_MVREmKoqXTdB1F0OQ3eyq1gzbTNU8LNHHuoEM/edit)
    - Scheduled Scoping Call
    - Provide an estimate for the `Expected Number of Users` and the `Expected Product` for the Opportunity. This information is used to help the customer success team to predict their future workload as well as to help them with their hiring plans.
    - Should the opportunity progress from `1-Discovery` to the next stage (not 8-Closed Lost or 9-Duplicate), it will be considered a `Sales Qualified Opportunity`. The following values are entered once the opportunity progresses from this stage:
        - `Sales Qualified` is True.
        - `Sales Qualified Date` is the date the opportunity moves from this stage to the next open or won stage.
        - `Initial IACV` captures the value in the `Incremental ACV` field. `Initial IACV` is a snapshot field that will not change, even when the `Incremental ACV` field is updated and will be used for `Deal Size` analysis.

**2-Scoping**: Uncover business challenges/objectives, the competitive landscape, realizing fit.

- What to Complete in This Stage:
    - Complete a Demo (Optional)
    - Schedule a Technical Evaluation Call
    - Confirm and collect new [MEDDPPICC](/handbook/sales/meddppicc/) information.

**3-Technical Evaluation**: Confirming technical requirements. A proof-of-concept (POC) might occur at this stage. This is also the stage to confirm information before a proposal is delivered.

- What to Complete in This Stage:
    - Enter POC Notes and POC Success Criteria (if applicable) and enter into the POC Notes and POC Success Criteria fields related to the opportunity.
    - Confirm _Technical Requirements, POC Scope_
    - Confirm _Technical Win/POC Success_
    - Confirm and collect new [MEDDPPICC](/handbook/sales/meddppicc/) information.

**4-Proposal**: Business and technical challenges and been uncovered and resolved. A proposal is drafted and delivered to the prospect.

- What to Complete in This Stage:
    - Confirm Bill to Information (who will receive the invoices), Sold to Information (who will receive the license key). You should also confirm whether or not the customer will issue a PO, and whether there is a vendor registration form required by the customer.
    - Deliver formal contract to the prospect with complete bill to and sold to information. Remember that quotes with incomplete or incorrect information will be rejected by Deal Desk.
    - An MSA may be delivered separately
    - Clear understanding of purchase/contract review process and a close plan (actions to be taken, named of people to complete actions and dates for each action) documented in the Purchasing Plan field.

**5-Negotiating**: The prospect or customer has received the proposal and is in contract negotiations.

- What to Complete in This Stage:
    - Agreement on business terms
    - All proposals should include the standard GitLab [Terms](/terms/#subscription/)
    - Determine if customer will be referenceable when the opportunity closes. If the answer is:
        - "Yes" update the `Referenceable Customer` section on the Account object with appropriate reference information
        - "No" the discussion of being a reference can be revisited at a later date
    - Modifications will not be accepted to the standard terms for any opportunity that is less than $25k, or for Starter edition.
    - If the above threshold is met, requests for modifications to the standard terms should be sent to Legal by creating a legal case in SalesForce, following the process found [here](/handbook/business-ops/order-processing/#process-for-agreement-terms-negotiations-when-applicable-and-contacting-legal).
    - If the Account is seeking to use their own paper, requests will only be entertained if the opportunity is greater than $100k, and the request should be sent to Legal by creating a Legal case in SalesForce, following the process found [here](/handbook/business-ops/order-processing/#request-for-gitlab-review-of-customer-edits-to-gitlab-template-or-review-of-customer-agreement-template).

**6-Awaiting Signature**: The prospect or customer has verbally agreed to the terms and conditions outlined in the proposal and has submitted for signature.

- What to Complete in This Stage:
    - Received signed order form, which signals agreement of all pricing and legal terms.
    - Obtain a purchase order, if applicable.
    - Work with GitLab AR to deliver any tax and/or complete any vendor registration processes.
    - Ensure all relevant documents, MSA, PO, and other forms uploaded to SFDC in the Notes and Attachments section of the opportunity record.
    - EULA (End User Licence Agreement) has been accepted by end-user organization (if applicable).
    - Identify relevant `Competitors` and enter them on the opportunity 
    - Enter `Closed Won Reason` and `Closed Won Details` (a brief summary of why we won the opportunity that supports your Closed Won Reason selection).
    - Subscription created in Zuora.
    - Opportunity has been submitted for Finance approval.

**Closed Won**: Congratulations!! The terms have been agreed to by both parties and the quote has been approved by Finance.

- What to Complete in This Stage:
    - Introduce Customer Success/Account Management (if applicable)
    - Set a calendar reminder for 30 day follow up
    - If applicable, initiate Customer Onboarding or Premium Support onboarding

**8-Closed Lost**: An opportunity was lost and the prospect/customer has decided not to pursue the purchase of GitLab.

- What to Complete in This Stage:
    - Select all applicable Closed Lost Reasons
        - If the loss is due to Competitive Loss, you are required to select the competitor(s) from the opportunity's `Competitor` field
        - If the loss is due to Product Maturity, you are required to select the product stage(s) from the opportunity's `Product Maturity: Product Line` field.
    - `Closed Lost/Unqualified Details` is required all opportunities with IACV of $1,000 or greater OR opportunities where Closed Lost Reason = Other. Enter as much detail as you can as to why we lost the deal. For example:
        - If they selected a competitor, why? Was it due to features or pricing?
        - If decided not to move forward with a project, what were the reasons? Did they not understand the value? Was there not a compelling event or reason?
        - Again, please be as thorough as you can as this information will prove valuable as we learn from these experiences.
    - Please note that for new business deals where the opportunity is with a Large/PubSec Account OR the Net ARR is equal or greater than USD 12,000, then a notification will be sent to the [#lost-deals](https://gitlab.slack.com/messages/C8RP2BBA7) Slack channel.
    - Uncover a time for follow up (incumbent solution contract expiration date)
    - Note that if an opportunity is dead/stalled, mark the Stage as 8-Closed Lost. Should the prospect/customer re-engage before 30 days, you can reopen this opportunity. However, if they re-engage beyond 30 days, you will need to create a new opportunity.
    - If the `Closed Lost/Unqualified Reason` is "Merged into another opportunity" please link this closed opportunity to the opportunity you are merging it into by using the `Merged Opportunity` lookup field. Otherwise, you will encounter a validation rule error.

**9-Unqualified**: An opportunity was never qualified.

- What to Complete in This Stage:
    - Update the `Closed Lost/Unqualified Reason` and corresponding `Closed Lost/Unqualified Details` with any pertinent notes as to why the opportunity was not qualified.
    - A notification will be sent to SDR Team Lead and a feedback session should be scheduled between AE and Team Lead.

**10-Duplicate**: A duplicate opportunity exists in the system. This usually happens when a web direct opportunity is won when an existing opportunity already exists in Salesforce. Another reason could be multiple renewals created for the same opportunity. This stage **should not** be used when disqualifying an opportunity or if it is discovered at some point after acceptance that the opportunity is really part of a larger initiative. If the opportunity was accepted, it cannot be marked as a duplicate. Instead, you must mark the opportunity as `8-Closed Lost` and select the appropriate reason. Possible selections could include "Consolidating order - part of another subscription" or "Merged into another opportunity" as reasons why a duplicate opportunity may have been created.

- What to Complete in this stage:
- Move the Opportunity into this stage
- Fill out the lookup field `Duplicate Opportunity` with the opportunity that this opportunity is a duplicate of. If this field is not populated you will encounter a validation rule error.

### Opportunity Stage Movement Considerations

Note that once you qualify an opportunity via our standard qualification process, you cannot revert an opportunity back to the following stages: `0-Pending Acceptance`, or `9-Unqualified`.
If you need to revert an opportunity you've previously qualified to one of these stages, please contact Sales Operations and we can determine why the opportunity (once qualified) is no longer qualified.

### Reverting an Opportunity to a Previous Stage

If a previously met criteria has become unmet, you are required to revert back to the latest stage where all activities were completed.
For example, if a prospect had previously signed off on GitLab from a technical standpoint, requested a quote and has begun contract negotiations, you would set the opportunity to `5-Negotiating`.
However, if at any point during the negotiations, additional technical questions or requirements arise that result in a re-evaluation of GitLab's technical capabilities, you would revert the opportunity back to `3-Technical Evaluation`.
After the opportunity has once again met the stage completion criteria, you are able to move the opportunity to either `4-Proposal` if a new order form was created as a result of the additional technical requirements, or back to `5-Negotiating` if no changes were made to the original order form.

### Early Stage Deals: Progression Requirements & Automation

To help keep our pipeline clean and ensure that early stage deals are moving through the pipe at the desired velocity, all **New Business** opportunities in stage `1-Discovery` and `2-Scoping` are governed under the below process

**Timelines:**  Inactivity Warning Day & Auto Closure Day by Segment
- Large/PubSec: Day 45 / Day 90
- Mid-Market: Day 21 / Day 45
- SMB: Day 7 / Day 15

**Definitions**: SFDC actions that constitute an **activity** include: 
- Stage Progression, 
- Command Plan Entries 
- Next Steps updated 


**Process for Stage 1-Discovery:**
 1. At (Segment Specific) Warning day the Opportunity Owner and Opportunity Owner's Manager receive an email notification alerting both of inactivity
    - To avoid auto closure, the Opportunity Owner must progress the stage or add an activity to the opportunity
2. If there's no activity between the warning day and auto closure day:
   - The opportunity gets automatically closed (`Closed Lost`) with a `Closed Lost/Unqualified Reason` of "Stale Opportunity" 
   - Email notification goes out to the Opportunity Owner, Opportunity Owner Manager and Marketing of this change
   - In scenarios where an opportunity is still vialbe but has been moved to Closed Lost through this automated process, the Opportunity Owner must create a new opportunity.   
3. If there IS activity against the opportunity OR it progresses to Stage `2-Scoping`, the Warning and Auto Closure Day process starts over

**Process for Stage 2-Scoping:**
1. Same process for steps 1 & 2 above
2. Step 3: If the opportunity progresses to Stage `3-Technical Evaluation`, there are no longer any activity requirements due to aging
 
### Locking Opportunities as a result of their "At Risk" potential

In order to be in compliance with US Regulations there is a need to screen opportunities against known individuals and organizations with whom we are not allowed to do business.
In order to comply with these regulations, opportunities are screened when they are created through a third party application, Visual Compliance.
Visual Compliance is a dynamic screening tool that constantly compares our account information with those sanctioned parties listed on various Denied Party Lists.
Visual Compliance will screen new information and will monitor existing information to ensure the integrity and legality of the parties with whom we do business.
The more **accurate** information in the Account--the better! Partial information may trigger a false ‘hit’ and cause delays.
Please provide the full company name, company address, country and contact name(s).

If you receive an error referencing export when attempting to update an Account:
(i) Check if the Visual Compliance Section of the Account says “Pending”-- Wait 15-30 minutes for the system to run its initial check and update.
(ii) If the Visual Compliance Section of the Account says “Yellow” or“Red”-- The legal team is manually reviewing the Account to ensure compliance. Manual reviews of hits are conducted three (3) times a day.
Changes by Legal will automatically update the Account, although updates may take 15-30 minutes to sync.

- If the status has been updated to “Clear”, the order will process and account functionality will resume.
- If the status is updated to “Escalate”, there is a concern with either the company itself or there is an attempt to sell in an embargoed country. Escalated orders will not process.
(iii) If the Account requires immediate attention (i.e., to close a deal), open a Chatter message in the Account and message “@legal”. Upon receipt of a request, the Legal team can review and update in Visual Compliance.
Please understand that if Legal finds a problem, the flag and the account will remain locked down.

## Executive Sponsorship Program

### Summary 

1. E-group members or designates by E-group members are assigned to *specific accounts*.
2. The Sponsor will maintain direct relationships with individuals at the account and participate in both remote and in-person meetings as appropriate.
3. This is a long-term assignment (i.e., likely years, minimum multiple quarters).

### Objectives

Through account executive sponsorship with our customers, we seek to:

1. Ensure GitLab delivers to the customer's desired outcome with a positive experience
1. Deepen our relationship with key strategic accounts 
1. Provide deeper insights and learnings from our customers to improve our product, engagement approaches, and customer experiences for all customers

### Process 

#### Sponsor Assignments

1. Total accounts with named sponsors: 10
2. Accounts are nominated by Sales VPs and confirmed by CRO after agreement with the named sponsor.
3. Sponsored accounts typically represent deep product utilization, large opportunity, and/or a broad vision for success and engagement with GitLab.
4. Once approved, Sales Operations will update the "Executive Sponsor" field.
5. Executive Sponsored Accounts are [listed in Salesforce](https://gitlab.my.salesforce.com/00O4M000004e2Ma).

#### Additional Notes

1. Only a small number of accounts will have executive sponsorship, there is no guarantee for any account to necessarily have an assigned executive sponsor.
1. Even though most accounts will not have an assigned exec sponsor, the executive team is available to support and engage all customers as needed.
1. Executive sponsors are to be involved in accounts *with and without* active opportunities.

### Responsibilities

#### Executive Sponsor

- The executive sponsor should have contact with their respective customer counterpoint at least once a quarter, including both formal (e.g., EBR, meeting) and informal approaches (e.g., check-in/update email or video chats). 
- Two of the interactions should be in a formal meeting setting (e.g., group or 1:1). If there is a 1:1 meeting, the executive sponsor should send a follow-up email within 24 hours with:
  - Thank you / appreciation of the customer's time and feedback
  - Action items and/or next steps (when applicable)
  - When possible, project the next follow-up interaction

Example Sponsor Activities 

- Introduction between the GitLab executive sponsor and customer contact
- [Executive business reviews](https://about.gitlab.com/handbook/customer-success/tam/ebr/) 
- In-person, zoom meetings, and/or social events like dinner or lunch
- Check-in/status emails to note progress and open lines of communication and feedback
- Build personal relationships with individual leaders at the customer and ensure full understanding of long-term value with each
- Informal communications like ad hoc phone calls

#### Account Team

- SAL or AE should take the lead on providing executive sponsor briefing using the [Briefing Template](https://docs.google.com/document/d/1No6Hzv2UoeFi6Bl8qtVUYYy2hDA7ChwoVENboh8wuVs/edit#). 
- TAM should contribute to the briefing including:
  - Progress on delivering to outcomes, material delivery of value and/or improvements, and customer successes/wins
  - Any notable issues (past or present), concerns, and/or requests that may be presented by the customer
- Make sure to brief your executive sponsor on the goals and objectives of the pending meeting or interaction as well as the follow-up meeting or interaction. This allows the executive sponsor to set expectations for the timing and goal for the next follow-up.

### Opportunity Sponsorship

Summary:
1. E-group members are assigned to *specific sales opportunities*.
1. The Sponsor will be a member of the sales team for the duration of the specific opportunity only and roll off when the opportunity is closed.
1. Sponsors will participate in both remote and in-person meetings as appropriate.
1. Sponsors will share key learnings with E-Group on a periodic basis
1. This is a *short-term assignment* (liklely weeks or months)

In contrast to sponsorship of accounts, Opportunity Sponsorship is an ephemeral (ie: short lived) assignment where a member of the e-group is assigned as a dedicated part of the Opportunity Team for a specific [Swing Opportunity](https://about.gitlab.com/handbook/sales/sales-term-glossary/#swing-opportunity)with a close date in the next 6 months. Since there are very few Swing Opportunities in any given quarter, only a small number of Opportunities will have e-group sponsor. 

The primary purpose of the program is to improve our forecast accuracy by raising visibility of material deals to the e-team, exposing the sponsor to the opportunity process and strategy, and creating additional accountability for specific actions throughout the company during the life of the opportunity.

Example activities for sponsors:
1. The e-group member will maintain direct relationships with Opportunity Team
2. Collaborate with opportunity stakeholders in the internal slack channel for the Account
3. Participate in Opportunity Consults together with the Area Sales Manager. 
4. Participate in opportunity strategy meetings
5. Direct communications with the customer
6. Facilitation of internal conversations and resources where necessary.

How Opportunities are selected for and matched to an e-group sponsor:
1. Target number of Opportunities per e-group sponsors: 2
2. Opportunities may be nominated by SAL’s or Sales Management if they meet the Swing Deal criteria
3. Sponsored Opportunities typically represent deep product utilization, significant ARR opportunity, and/or a broad vision for success and engagement/partnership with GitLab.

Process:
1. Executive sponsors are to be nominated as part of the Opportunity Team field in Salesforce 
2. Opportunity Owners are responsible for establishing a regular Opportunity Consult with their ASM, SA and TAM by working with the e-group members EA to schedule
3. Executive Sponsored Opportunity are listed in Salesforce (link TBD)
4. Command and Close Plans should be updated regularly in preparation for the consult
5. The e-team opportunity sponsor is responsible for reporting back the current status (brief), next steps, and their assessment to the e-team on a monthly basis

## Types of Accounts

### Accounts Created in Salesforce utilizing CE Usage Ping Data

The [CE Usage ping](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html) provides GitLab with some limited insight into how end users are utilizing the platform.
The raw information is cleaned, enriched and then pushed to SFDC as an Account by the Data Team.

If there is not an existing account match in Salesforce, a new account record will be created with the following information populated:

| SFDC Field | Default Value |
| ---------- | ------------- |
| Account Name |  |
| Account Source | `CE Download` |
| Number of Employees |  |
| Billing Street |  |
| Billing City |  |
| Billing Zip |  |
| Billing Country |  |
| Account Type | `Prospect - CE User` |
| Account Website |  |
| Industry | Populated by Clearbit (since been deprecated) |
| Active CE Users | Populated by Usage Ping |
| CE Instances | Populated by Usage Ping |
| Account Owner | Sales Admin by Default |
| Using CE | Checked True |

**Process**

1. Sales Team members can use this data to proactively identify `Prospect - CE User` accounts that fit their target segment(s). Accounts owned by `Sales Admin` can be adopted by a Sales Team member changing ownership in Salesforce.
The adoption of any `Sales Admin` owned records will trigger an email alert that is sent to the Account Research Specialist for transparency and awareness of what account records have been claimed.
2. The Account Research Specialist will be responsible for reviewing the `Prospect - CE User` accounts on a regular basis to determine additional account records that should be worked either by a Sales Team member or Outbound SDR.
3. When an account record has been identified for follow up, the Account Research Specialist will work with the appropriate Regional Director (RD) to determine Outbound SDR assignment based on work load and available capacity.
4. The assigned Outbound SDR will work the `Prospect - CE User` account the same as any other known `CE User` account leveraging the tools at their disposal (Zoominfo, LinkedIn Sales Navigator, etc) to add contacts to the account record and populate the firmographic profile of the account.


