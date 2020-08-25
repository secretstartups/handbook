---
layout: handbook-page-toc
title: "Go-To-Market Technical Documentation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to use this documentation

The Documentation below is organized by Feature, each section will have the relevent inputs and outputs as well as references to the logic that processes the input and outputs.

---

## Territory Success Planning

**Business Process this supports:** [Territory Success Planning](/handbook/sales/field-operations/sales-operations/#territory-success-planning-tsp)

**Overview:** The goal of TSP is to keep a set of staging fields consistently up to date from a variety of data sources, then at given intervals copy these vales to the "Actual" set of fields for general use. This allows for us to constantly receive changes but only apply those changes in a controled fashion. This also allows us to easily track exceptions. Note: This project was orginally referred to as ATAM, which is why the API names of the fields reference that instead of TSP.

**Logic Locations:** [AccountJob.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/blob/master/force-app/main/default/classes/AccountJob.cls)
Code Units:
* highestEmpsAndTSPAddress
* ownerTransfer

**Inputs:** DataFox, DiscoverOrg, Manually Entered Address & Employee Data, Account Parenting Hierarchy

**Outputs:** Here is the outline between of two sets of fields we are setting on the Account object. Staging(TSP / ATAM) are set nightly via an APEX job. Actuals are set at given intervals found in the business documentation.

| **Data Name**     | **Actual - Field API Name**                  | **TSP - Field API Name**        |
|---------------|--------------------------------------------|-----------------------------|
| Owner         | Owner                                      | ATAM_Approved_Next_Owner__c |
| Owner Role    | Owner.Role                                 | ATAM_Next_Owner_Role__c     |
| Owner Team    | Account_Owner_Team__c                      | ATAM_Next_Owner_Team__c     |
| Sales Segment | Ultimate_Parent_Sales_Segment_Employees__c | JB_Test_Sales_Segment__c    |
| Territory     | Account_Territory__c                       | ATAM_Territory__c           |

## Salesforce Record Sharing And Visibility Settings 

**Business Process this supports:** Security and compliance requierments for federal customers

**Overview:** The goal of our record sharing settings in Salesforce is so that the Public Sector Team and approved supporting functions can view public sector records. A Public Sector recrod is considered any record in Salesforce that is owned by the Public Sector team. This is accomplished by the use of sharing rules and groups within Salesforce. If a record is owned by a member of the Public Sector Group then that record is only shared and visible to other members of the Public Sector Group. If the record is owned by anyone other then a member of the public sector group, then that record is visible to all internal users within our Salesforce Instance. Membership to these applicable groups is controlled by System Administrators and Sales Operations.  

**Logic Locations:** 
* [Salesforce Object Sharing Settings](https://gitlab.my.salesforce.com/p/own/OrgSharingDetail?setupid=SecuritySharing&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DSecurity)
* [Public Groups in Salesforce](https://gitlab.my.salesforce.com/p/own/OrgPublicGroupsPage/d?setupid=PublicGroups&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DUsers)

## Quote Approval System

**Business Process this supports:** Discount Approvals

**Overview:** According to the [Deal Approval Matrix](https://docs.google.com/document/d/1-CH-uH_zr0qaVaV1QbmVZ1rF669DsaUeq9w-q1QiKPE/edit) Quotes must have discounts approved by different management levels depending on discount percentage and term length. To achieve this, we have written automation to stamp a quote with each potential approver, revised the code that determines which approvals are required, and revised the actual approval process in Salesforce.

**Quote Management Stamp** When a Quote is inserted, get the owner of the related Opportunity. Then, find the manager of the owner and the manager of the manger for each manager, five mangers down. Record the first active Regional Director, Area Sales Manager, and Vice President on the Quote. These lookup fields will be used in the Approval Process, if needed.

**Quote Approval Code** This is a table of the Quote (API Name: zqu__Quote__c) fields that trigger quoteApprovals to recalculate and what must happen to them.

|**Field API Name**|    **What Must Happen**|
|----|----|
|Rate_Plan_Count__c|Change|
|zqu__Previewed_TCV__c|Change|
|zqu__Previewed_SubTotal__c|Change|
|zqu__Previewed_Discount__c|Change|
|Non_Standard_Contract_Terms__c|Change|
|Reseller_PO_Status__c|Change|
|zqu__PaymentTerm__c|Change|
|zqu__Previewed_Total__c|Change|
|zqu__Previewed_Discount__c|Change|
|Quote_Amendment_Last_Modified_Date__c|Change|
|zqu__InitialTerm__c|Change|
|zqu__RenewalTerm__c|Change|
|X_Trigger_Quote_Approval_Check__c|Become true|

If any of these events happen, all "Required_Approvals" fields (Required_Approvals_From_CEO__c, Required_Approvals_From_CFO__c, Required_Approvals_From_CRO__c, Required_Approvals_From_CS__c, Required_Approvals_From_Legal__c, Required_Approvals_From_VP_of_Channel__c, Required_Approvals_From_VP_of_Sales_RD__c, Required_Approvals_From_RD__c, Required_Approvals_From_ASM__c) are cleared. These are the rich text area fields that show which management levels need to approve the Quote on the page layouts.
Then, all relevant Quote Rate Plan Charges (API Name: zqu__QuoteRatePlanCharge__c) related to the Quote are queried, these are what hold the term, product, and discount information we need to determine what approvals are required. Following the [Deal Approval Matrix](https://docs.google.com/document/d/1-CH-uH_zr0qaVaV1QbmVZ1rF669DsaUeq9w-q1QiKPE/edit), we determine what level of management the Quote Rate Plan Charge needs and stamp the correct "Required_Approvals" fields with the discount percentage, type, and term. Similar logic is then run for any Quote Rate Plan Charges related to Professional Services products.
Finally, the Quote's Approval_Stage__c field records whether it needs approval, doesn't need approval, or has been approved.

**Quote Approval Process**
This utilizes Salesforce's built-in Approval Process functionality.
We have two Approval Processes for Zuora Quotes, the first for undiscounted, and the other for ones with discounts.
The Quote must be submitted using the "Submit for Approval" button on the page layout to enter the correct Approval Process.
* Undiscounted Approval Process
    * If the Quote's Approval Stage is "Approvals Not Required" or null, the Approval Stage is updated to "In Review" and the Owner of the Quote is emailed confirming submission for approval. Then, if there are any Special Terms and Notes or has been flagged as Requires Deal Desk Review, a member of the Deal Desk team must approve. If neither of those are true, the deal auto-approves. Upon approval, the Owner of the Quote is emailed to inform them of the approval and the Approval Stage is updated to "Approved". If the Quote is rejected, the Approval Stage is set to "Rejected" and the Owner is emailed informing them.
* Discounted Approval Process
    * If the Quote's Approval Stage is "Approvals Required" or "Rejected", the Approval Stage is updated to "In Review" and the Owner of the Quote is emailed confirming the submission for approval. Then, based on the "Required_Approvals" fields, the Quote waits for approval by the people in that step. Once all approvals are acquired, the Approval Stage is set to "Approved" and the Owner of the Quote is emailed. If any step rejects, the Approval Stage is set to "Rejected" and the Owner is emailed as well.

**Logic Locations:**
* [ZuoraQuoteClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/ZuoraQuoteClass.cls)
Code Unit:
    * stampManagerStack
* [ZuoraQuoteClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/ZuoraQuoteClass.cls)
Code Unit:
    * quoteApprovals
* [Salesforce Approval Process Setup](https://gitlab.lightning.force.com/lightning/setup/ApprovalProcesses/home)
Manage Approval Process For:
    * Quote (Installed Package: Zuora Quotes)

## Salesforce Chatter to Cases 

**Business Process this supports:** The field needs a streamlined process to address their concerns on specifc salesforce records [within salesforce](/handbook/sales/field-operations/sales-operations/#how-to-communicate-with-us). This is also used by the finance team to help address record specific billing issues, as well as the Commmunity Advocate team to manage the influx of requests the team receives. 

**Overview:** The goal of the Chatter To Cases functionality is to allow a streamlined communication channel that the field can leverage while also providing a streamlined case management system for the supportung team members to manage the requests that are sent to them from the field. If a team members uses an appropraite tag in salesforce a salesforce case record will automatically be created. Once these records are created supporting team members can work through the respective cases that are created to address the fields needs and concerns.

**Inputs:** Chatter text within Salesforce

**Outputs:** Salesforce Case Records 

**Logic Locations:** 
Code Units:
* Triggers
   * [ChatterFeedCommentTrigger.trigger](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/triggers/ChatterFeedCommentTrigger.trigger)
   * [ChatterFeedItemTrigger.trigger](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/triggers/ChatterFeedItemTrigger.trigger)
* Clases
   * [ChatterFeedCommentClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/ChatterFeedCommentClass.cls)
   * [ChatterFeedItemClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/ChatterFeedItemClass.cls)
* Tests
   * [ChatterFeedItemTest.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/ChatterFeedItemTest.cls)

**Supported Groups**
* `@sales-support`
   * This alias is leveraged by the Deal Desk team to manage inbound request from the Sales Team 
* `@billing ops`
   * This alias is leveraged by the Billing team to manage inbound request as they pertain to Billing
* `@community-advocate`
   * This alias is monitored by the Community Advocate team.
* `@revenue`
   * This alias is leveraged by the Revenue team to review Opportunities and how we will record revenue. [Detailed Response Here](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/859#note_386593491)

**Steps to add a Group:** 
* Do to limitations with Salesforce much of the minor updates must be implemented manually in production
* Create a Chatter Group with the alias that you want the end users to be able to chatter in Salesforce (In Production)
* Create a Queue that will own the Case until it is automatically switched into a users name who will work the case. (Changeset)
   * Review Queue member and email options with requester 
* Update the `ChatterFeedCommentClass` and the `ChatterFeedItemTest` to monitor for the use of the Chatter Group in chatters within Salesforce (Changeset)
* Add a picklist value to the `Origin` field on the case object (In Production)

**Related Epic**
* [@Sales-Ops Case Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/7)
   
## Legal Request System

**Business Process this supports** The sales cycle, if a GitLab sales rep encounters an issue that requires legal knowledge, opinion, or action.

**Overview** A sales rep can quickly and easily create a Case for our legal team directly from an Opportunity's page layout in Salesforce. The legal team have access to a Salesforce dashboard to see how many Cases have been created for them, how many are in their name, etc. Clicking the "Legal Request" button on each Opportunity's page will bring the user to a page that asks a few questions that the legal team would like to know. Once the page is submitted, a Case is created with the Origin marked as "Legal Request." The legal team has dashboards that view Cases with Origin equal to "Legal Request" and can assign and take action from there.

**Logic Locations**
* Custom Buttons:
    * [In Setup, under Opportunity, "Buttons, Links, and Actions", Legal Request](https://gitlab.my.salesforce.com/00b4M000001ZNps)  
* Visualforce Pages:
    * [LegalCaseCreate.page](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/pages/LegalCaseCreate.page)  
* Apex Classes:
    * [LegalCaseCreateController.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LegalCaseCreateController.cls)

## Primary Quote System

**Business Process this supports** The sales cycle and the financial processes around deals.

**Overview** We are now ensuring Opportunities in Salesforce have only one Quote that is marked as Primary. If multiple Quotes are being inserted under an Opportunity marked as primary in the same transaction, only the first in the list will be the primary. If a Quote is being inserted as primary, and there is an existing primary Quote, the existing will become not-primary and the incoming will be the new primary. If more than one Quote under the same Opportunity is being updated to become primary in the same transaction, an error message will prevent the update. A primary quote will not be allowed to be deleted. To change which Quote is primary, simply navigate to the Quote you want to be primary and update it as such, the previous primary Quote will automatically be updated to no longer be primary.

**Logic Locations**
* [ZuoraQuoteClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/ZuoraQuoteClass.cls)
Code Unit:
    * primaryCheck

## Opportunity Stage Progression Tracking

**Business Process this supports** The sales cycle and analytics.

**Overview** The goal of this functionality is to capture the progression of an opportunity through the stages in the sales process.  To support this, a check box and date stamp will be automatically populated for each stage as the oportunity advances and or moves back in stage.  The tracking begins at stage 0-Pending Acceptance (an opportunity in stage 00, will not be stamped).  In the event an opportunity advances forward and skips stages, all of the skiped stages will be stamped with the same date as the resting stage. In the event of Closed Lost and Unqualified, the checks and dates will only apply for the stages that were actually met.  To avoid data loss and confusion, the stage progression tracking will only run once, the first time through the stages. 

**Logic Locations**
* To be added once functionality is in Production

## Block Salesforce From Transferring Historical Opp Owners On Account Owner Transfers

**Business Process this supports:** In order to provide reliable and accurate historical data to the analytics team, the sales organization and to the companye as a whole we need to ensure that historical opportunities and relevant information on opportunities is not changed once the opportunity is closed. 

**Overview:** The goal of this blocking logic is to close a backdoor that Salesforce has built into the system. While we have a number of validation rules in place to prevent information from changing on closed opportunities it was possible to change histoircal opportunity owners (as well as fields that are derived from the owner field) while transferring accounts. Anyone who could have been able to change the owner on an account would have been able change historical opportuntiy data that they would not be able to edit otherwise. This logic still allows users to complete this account ownership transfer without any impact to historical opportunities while also allowing the various business teams at GitLab to manually update the owners of opportunites at month close.

**Inputs:** Account records that are changing ownership

**Outputs:** Reverts opportunity owners to their original owners if the user attempted to change them 

**Logic Locations:** 
Code Units:
    * ProtectClosedOppOwnersBefore
    * ProtectClosedOppOwnersAfter
* Triggers
   * [AccountTrigger.trigger](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/triggers/AccountTrigger.trigger)
* Clases
   * [AccountClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/AccountClass.cls)
* Tests
   * [AccountClassTest.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/AccountClassTest.cls)

## Order Type System

**Business Process this supports:** [New vs Connected New vs Growth](/handbook/sales/#account-family)

**Overview:** The goal of the Order Type system is to determine a given Opportunity's relationship with the business. Did it start a new customer relationship, cross into a related segment of the customer, or grow an existing relationship.

**Design Presentation:** [https://docs.google.com/presentation/d/1G95aExDMTT1of6TkVWMPsx1FhNp3sNBl431t5PsKZmE/edit?usp=sharing](https://docs.google.com/presentation/d/1G95aExDMTT1of6TkVWMPsx1FhNp3sNBl431t5PsKZmE/edit?usp=sharing) 

**Logic Locations:** [AccountJob.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/blob/master/force-app/main/default/classes/AccountJob.cls)

Code Units:
* determineOpportunityRevenueTypes

**Inputs:** Salesforce Account Hierarchy, Salesforce Opportunity Close Date and Stage.

**Outputs:** Populates the Order Type field on the Opportunity with New - First Order, New - Connected or Growth based on the following logic:

| **Order Type**     | **Description** |
|---------------|--------------------------------------------|
| New - First Order | The First Closed Won Opportunity in an Account Family. |
| New - Connected | The First Closed Won Opportunity on an individual Account, that is not the first one in the Account Family.|
| Growth | All opportunities that follow the `New - First Order` or `New - Connected` opportunities. This includes Add-ons, Renewals, and additional Subscriptions. |

## Lead Segmentation

**Business Process this supports:** [Sales Segmentation](/handbook/sales/field-operations/gtm-resources/#segmentation)

**Overview:** Leads should be sorted into different Sales Segments based on their company's employee count so the appropriate salesperson can persue them. We have a number of different information sources to get company size, so we must also establish a hierarchy for them.

| **Info Source** | **Salesforce Lead Field API Name** |
| ---- | ---- |
| Lean Data | Lean_Data_Matched_Account_Sales_Segment__c |
| Web Portal | Web_Portal_Purchase_Company_Size__c |
| Marketing | Employee_Buckets__c |
| DemandBase | DB_Employee_Count__c |
| DiscoverOrg | DiscoverOrg_Number_Of_Employees__c |
| Salesforce User | NumberOfEmployees |

**Logic Locations:** [LeadClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LeadClass.cls)
Code Unit: 
   * determineSegment

## Gainsight 
*  Gainsight is a system that our TAMs use in order to support our customers and to manage their workflow. Below, the integration between Salesforce and Gainsight is documented and the applicable rules that sync the data between the systems as well system processes that have been set up withing the system itself.

### Gainsight Rules Engine
*  The Rules engine is a business automation tool build within Gainsight that allows for automation to be built within Gainsight but also to sync out to other systems. It is used in a variety of ways in our instance from enriching data that we bring in from Salesforce (i.e. Company Hierarchies) to Call To Action automatiosn and even syncing data back from Gainsight to Salesforce. More info can be found on the [Rules Engine on Gainsights Website](https://support.gainsight.com/SFDC_Edition/Rules_Engine/About/Rules_Engine_Overview).

### Bi-Directional Syncs: Salesforce <> Gainsight 
*  Bi-Directional syncs between Salesfroce and Gainsight have to be cordinated on a schedule in order to preserve the data integrity between the two systems. In order to acchomplish this we only pull in updated information into salesforce by leveraging date stamps of when our bi-directional fields are updated. After this is complete we push back all of the data to Salesforce so that any information that was updated within Gainsight makes it back to Salesforce. This ensure that both systems have the updated information. 

#### Bi-Directional Rules
*  Bi-Directional Builds
   *  Pull/Push CSM changes: This rule maintains the Technical Account Manager on the acocunt between the two systems.

### Syncing Data from Salesforce to Gainsight
#### Connector 2.0 
*  The `Connectors 2.0` is used as one of the main ingestion methods of data from Salesforce to Gainsight and is a native built integration that exists between the two systems. The connector is authenticated using a Gainsight Integration user in our Salesforce Instance. More information in regards to the connector and how to set it up [in Gainsights Knowledge Base](https://support.gainsight.com/Gainsight_NXT/01Onboarding_and_Implementation/Onboarding_for_Gainsight_NXT_in_Salesforce/Salesforce_Connector/Salesforce_Connector_Overview). 
*  The `Connectors 2.0` is used between our Salesforce instance and Gainsight instance to mainly sync three objects:
   *  Accounts
   *  Contacts
      * The Upsert Key for Contacts is there Email Address. This is useful when it comes to the bi-directional sync of contacts that are created in Gainsight
   *  Salesforce Users
* For a list of fields that are ingested from Salesforce through the Connector 2.0 can be found on [this Google Document](https://docs.google.com/spreadsheets/d/15ppKZ164nRWbDm4LDm0FQBslxS5d8A6S2UJLWFDgzUA/edit#gid=0)

#### Rules Engine
*  While the `Connectors 2.0` are very powerful we also have to supllement the data that is brought in through the connector to correctly display it within Gainsight and to coordinate bi-directional data syncs (and more). The below rules that exist in Gainsight are highlighted and shared in a manner that reflects their use in various Rule Chains in Gainsight. 

##### Admin Daily - Load to Company
*  Admin - Load Ultimate Parent Accounts
*  Admin - Load Non-Customer Child Accounts
*  Admin - Load Prospect Details to Company
   *  The 3 Rules above are built out in order to correctly associate our accounts to one another in a manner that matches our account hierarchy in Salesforce.
   *  CURRENTLY THIS IS ON HOLD AS WE WORK WITH THE TAMS ON IF THIS IS THE FINAL DESIRED.
*  Admin - Set Company Status (Active/Inactive)
   *  This is an Admin Rule that controls which accounts are active in Gainsight. This helps ensure we are not billed extra for accounts that are not customers. 
*  Admin - Load Public Sector Flag
   *  Flags Accounts in Gainsight as Pubcli Sector. This is important for our sharing settings. 
*  Admin - Load Inactive Users (Permission Set Based)
   *  This Rule maintains users status in Gainsight as Active or Inactive. Users access and status in Gainsight is controlled by whether or not they are assigned the `Gainsight NXT` permission set in Salesforce and are also an Active user in Salesforce. 
*  Admin - Load Onboarding Start Date to Company
*  Admin - Load Onboarding End Date to Company
*  Admin - Load First Engagement Date to Company
*  Admin - Load Last Activity Date to Company
   *  The above 4 Rules act as Rollups for Data that exist within Gainsight that native Gainsight Objects
*  Admin - Load Open Zendesk Ticket Count to Company
   *  The above rule acts as a rollup calculation used for ZenDesk Tickets withing Gainsight
*  Admin - License Utilization Calculation
   *  This updates a calcualtion field on the Account Nightly
*  Admin - Delete UnMatch Recrods
   *  This flags accounts that have been deleted from Salesforce (since they were merged or deleted) and that need to be deleted from Gainsight 
*  Admin - Load GS Contacts to SFDC
   * This is the second half of the bi-directional sync of Contacts between Gainsight <> Salesforce. Gainsight pushes Contacts back to Salesforce that do not have an External Contact Id and that have a unique Email address that does not already exist within Salesforce (in order to avoid duplicates). This External Id is then appending by the Connector 2.0 on the next scheduled sync. 
* SFDC RefEdge Reference Status
   * This is pushing to our Reference Profile in SFDC what a Gainsight directed Referenc Status would be. The goal is to get better alignment between the Reference Team and the Customer Success Team and to help decrease the amount of time it takes for the Reference Team to learn of any improvmenets or problems at once of our reference accounts. 


##### Admin Daily - Stage Adoption
*  Admin - Load Stage Counts to Company
*  Admin - Load Aggregated Stage Adoption Data to MDA
   *  The above two rules act as field rollups to calcualte fields within Gainsight
*  Admin - Load Usage Ping Data to Company
   *  This rule is leveraged to associate the lastest usage ping with Accounts in Gainsight 

##### CTAs - Daily
*  CTA - New Account TAM Assignment v2
*  CTA - Onboarding v2
*  CTA - Success Planning v2
*  CTA - Post Onboarding Check-ins
   * These rules are the automations that trigger the various Calls To Action to be created and each have their own criteria

##### Scorecard Rules
*  Set Score - Support Issues
*  Set Score - Load Sentiment Scores from Timeline
   *  These Rules are asscoaited with updating andf maintaining various health scores in  Gainsight. They do not control the overall health score within Gainsight but rather the individual sub-score that is used in the overall rollup of the accounts health score. 

### Syncing Data from Gainsight to Salesforce
*  Data is synced back to Salesforce a few different ways - depending on the object. While Gainsight does have some objects that can automatically sync back to Salesforce through their base integration other objects and data points have to be synced back via the Rules Engine

#### Connector 2.0 
* Activity Timeline is automatically synced back from Gainsight to Salesforce

#### Rules Engine
##### Push to SFDC
*  Pushes a variety of data points back from Gainsight to Salesfoirce. The following Salesforce Fields are populated via this rule that pushes info back from Gainsight to their associated Salesforce account. This Rule Chain had its batch size reduced by 50% for all of the rules in the Rule Chain. This was completed in order to reduce the errors returned from the sync since it was colliding with other jobs in Salesforce. 
   *  [GS] Configure Active?
   *  [GS] Create Active?
   *  [GS] Defend Active?
   *  [GS] Manage Active?
   *  [GS] Monitor Active?
   *  [GS] Package Active?
   *  [GS] Plan Active?
   *  [GS] Release Active?
   *  [GS] Secure Active?
   *  [GS] Verify Active?
   *  [GS] TAM Sentiment :Former Health Score
   *  [GS] Provider
   *  [GS] Geo?
   *  [GS] Google Doc Notes
   *  [GS] Health Score
   *  [GS] Health Score Label
   *  [GS] High Availability?
   *  [GS] Hosting
   *  [GS] Lifecycle Stage
   *  [GS] Architecture Diagram Link
   *  [GS] Customer Type
   *  [GS] Support Issues Measure
   *  [GS] Product Risk Measure
   *  [GS] Summary
   *  [GS] Triage Issue URL
*  This rule also pushes back to contacts in Salesforce in the event that anyone in Gainsight marks them as someone who has Opted out of marketing communication
*  This rule also pushes back any contacts that were created in Gainsight and that do not exist in Salesforce.
*  To see a complete list of fields that are synced back from Gainsightto Salesforce review the `Gainsight => SFDC` Tab in [this Google Doc](https://docs.google.com/spreadsheets/d/15ppKZ164nRWbDm4LDm0FQBslxS5d8A6S2UJLWFDgzUA/edit#gid=1617197788)

### Syncing Timing 
*  As a system design Gainsight syncs any updates, new customer accounts etc. up into Gainsight first before pushin information back to Salesforce. 
#### Gainsight `Connector 2.0`
*  User, Company & Company Person Sync 
   *  12:00 AM Pacific Standard time - Everyday
#### Gainsight Rules Engine
*  Admin Daily - Load to Company
   *  3:00 AM Pacific Standard Time - Everyday
*  Admin Daily - Stage Adoption
   *  3:30 AM Pacific Standard Time - Everyday
*  Scorecard Rules
   *  4:00 AM Pacific Standard Time - Everyday
*  CTAs - Daily
   *  4:30 AM Pacific Standard Time - Everyday
*  Bi-Directional Builds
   *  5:00 AM Pacific Standard Time - Weekdays
*  Push to SFDC
   *  5:30 AM Pacific Standard Time - Weekdays
#### Weekend rules
* We leverage a differeent scedule on the wekend in order to avoid conflicts with our other nightly jobs.
*  Push to SFDC
   *  9:00 AM Pacific Standard Time - Weekends
*  Bi-Directional Builds
   *  8:00 AM Pacific Standard Time - Weekends

### Syncing Data from Zendesk to Gainsight
*  Zendesk is synced directly into Gainsight via a `Connectors` (Admin: This is different from the `Connectors 2.0` within Gainsight). 
*  Due to limitations of the integrations between Zendesk, Gainsight and Salesforce it is possible that the sync of tickets is disrupted. Zendesk does not push the Zendesk Organization ID over to Salesforce. To address this a one time upload of Zendesk Organization IDs was compelted in Salesforce ([Zendesk Organization ID (ADMIN)](https://gitlab.my.salesforce.com/00N4M00000Ib2z1?setupid=AccountFields)). This field is then ingested to Gainsights via the Salesforce `Connectors 2.0`. Gainsight then leverages this Organization ID to match Tickets (that are synced over from Zendesk) with Accounts (that are synced over from Salesforce). 
   * There is currently an [open issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/761) to address this shortcoming and we are exploring solutions to this. If you find that this limitation impacts your flow the solution would be to re-import Zendesk IDs into Salesforce so that as many accounts have Zendesk Organization IDs associated with them. 
*  The tickets that are seen on the company view within Gainsight are shown their by selecting one report from the dropdown list. As a specific report is seslected the Zendesk Tickets that are associated with that company and that meet the reports filter criteria are shown. This means it is relatively easy to create differnt views of the Zendesl Tickets associated with the account (similar to list views in Salesforce, but thatare specific only to one company)

