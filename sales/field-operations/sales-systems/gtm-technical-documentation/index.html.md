---
layout: handbook-page-toc
title: "Go-To-Market Technical Documentation"
description: "This page is the key GitLab Handbook page for all the technical documentation relating to the main projects and automations that the sales systems has worked on, developed and deployed. It includes a high level business overview as well as technical details revolving around each projects technical lift."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to use this documentation

The Documentation below is organized by Feature, each section will have the relevant inputs and outputs as well as references to the logic that processes the input and outputs.

---

## ARR

Please see the dedicated [ARR Technical Documetation Page](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/sfdc-booking-metric-fields/)

## Gainsight

Please see the dedicated [Gainsight Technical Documentation Page](/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/gainsight/)

## Xactly 

More information to come. If you need a new field brought into Xactly please leverage the `AddFieldToXactlySales` [issue template](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/new?issue%5Bmilestone_id%5D=#) in the Sales Systems Project


## Territory Success Planning

**Business Process this supports:** [Territory Success Planning](/handbook/sales/field-operations/sales-operations/#territory-success-planning-tsp)

**Overview:** The goal of TSP is to keep a set of staging fields consistently up to date from a variety of data sources, then at given intervals copy these values to the "Actual" set of fields for general use. This allows for us to constantly receive changes but only apply those changes in a controlled fashion. This also allows us to easily track exceptions. Note: This project was originally referred to as ATAM, which is why the API names of the fields reference that instead of TSP.

**Logic Locations:** [AccountJob.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/blob/master/force-app/main/default/classes/AccountJob.cls)
Code Units:
* highestEmpsAndTSPAddress
* ownerTransfer

**Inputs:** DataFox, Zoominfo, Manually Entered Address & Employee Data, Account Parenting Hierarchy

**Outputs:** Here is the outline between two sets of fields we are setting on the Account object. Staging(TSP / ATAM) are set nightly via an APEX job. Actuals are set at given intervals found in the business documentation.

| **Data Name**     | **Actual - Field API Name**                  | **TSP - Field API Name**        |
|---------------|--------------------------------------------|-----------------------------|
| Owner         | Owner                                      | ATAM_Approved_Next_Owner__c |
| Owner Role    | Owner.Role                                 | ATAM_Next_Owner_Role__c     |
| Owner Team    | Account_Owner_Team__c                      | ATAM_Next_Owner_Team__c     |
| Sales Segment | Ultimate_Parent_Sales_Segment_Employees__c | JB_Test_Sales_Segment__c    |
| Territory     | Account_Territory__c                       | ATAM_Territory__c           |


## Contact Ownership

**Business Process this supports:** This supports our [contact ownership rules](/handbook/sales/field-operations/gtm-resources/#changing-contact-ownership-in-salesforce)

**Overview:** The goal of the Contact Ownership code is to ensure that contacts are owned by the appropriate user within salesforce in an automated fashion so that contact ownership is maintained without any work needed by team members. 

**Logic Locations:** [ContactJob](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/blob/master/force-app/main/default/classes/ContactJob.cls)
Code Units:
* maintainContactOwnership

**Inputs:** Contact Owner, Account Owner, Account SDR Assigned, Account Type, Sales Segment

**Outputs:** Contact Owner


## Salesforce Record Sharing And Visibility Settings 

**Business Process this supports:** Security and compliance requirements for federal customers

**Overview:** The goal of our record sharing settings in Salesforce is so that the Public Sector Team and approved supporting functions can view public sector records. A Public Sector record is considered any record in Salesforce that is owned by the Public Sector team. This is accomplished by the use of sharing rules and groups within Salesforce. If a record is owned by a member of the Public Sector Group then that record is only shared and visible to other members of the Public Sector Group. If the record is owned by anyone other than a member of the public sector group, then that record is visible to all internal users within our Salesforce Instance. Membership to these applicable groups is controlled by System Administrators and Sales Operations.  

**Logic Locations:** 
* [Salesforce Object Sharing Settings](https://gitlab.my.salesforce.com/p/own/OrgSharingDetail?setupid=SecuritySharing&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DSecurity)
* [Public Groups in Salesforce](https://gitlab.my.salesforce.com/p/own/OrgPublicGroupsPage/d?setupid=PublicGroups&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DUsers)


## Quote Approval System

**Business Process this supports:** Discount Approvals

**Overview:** According to the [Deal Approval Matrix](https://docs.google.com/document/d/1-CH-uH_zr0qaVaV1QbmVZ1rF669DsaUeq9w-q1QiKPE/edit) Quotes must have discounts approved by different management levels depending on discount percentage and term length. To achieve this, we have written automation to stamp a quote with each potential approver, revised the code that determines which approvals are required, and revised the actual approval process in Salesforce.

**Quote Management Stamp** When a Quote is inserted, get the owner of the related Opportunity. Then, find the manager of the owner and the manager of the manager for each manager, five managers down. Record the first active Regional Director, Area Sales Manager, and Vice President on the Quote. These lookup fields will be used in the Approval Process, if needed.

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

**Business Process this supports:** The field needs a streamlined process to address their concerns on specific salesforce records [within salesforce](/handbook/sales/field-operations/sales-operations/#how-to-communicate-with-us). This is also used by the finance team to help address record specific billing issues, as well as the Community Advocate team to manage the influx of requests the team receives. 

**Overview:** The goal of the Chatter To Cases functionality is to allow a streamlined communication channel that the field can leverage while also providing a streamlined case management system for the supporting team members to manage the requests that are sent to them from the field. If a team member uses an appropriate tag in salesforce a salesforce case record will automatically be created. Once these records are created supporting team members can work through the respective cases that are created to address the fields needs and concerns.

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
   * This alias is leveraged by the Deal Desk team to manage inbound request from the Sales Team.
* `@billing ops`
   * This alias is leveraged by the Billing team to manage inbound request as they pertain to Billing.
* `@revenue`
   * This alias is leveraged by the Revenue team to review Opportunities and how we will record revenue.[Detailed Response Here](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/859#note_386593491).
* `@SMB Flat Renewals`
  * This alias is used by our SMB team for flat renewal support. Please see this [Section of the handbook](###) for how this is used. 
* `@Partner Help Desk`
  * This alias is used by Channel Partner Help Desk (PHD) Team. Please see this [Section of the handbook](https://about.gitlab.com/handbook/sales/field-operations/channel-operations/#partner-help-desk-support-and-communication) for more information.

**Steps to add a Group:** 
* Do to limitations with Salesforce much of the minor updates must be implemented manually in production
* Create a Chatter Group with the alias that you want the end users to be able to chatter in Salesforce (In Production)
* Create a Queue that will own the Case until it is automatically switched into a users name who will work the case. (Changeset)
   * Review Queue member and email options with requester 
* Update the `ChatterFeedCommentClass` and the `ChatterFeedItemClass` to monitor for the use of the Chatter Group in chatters within Salesforce (Changeset)
* Update the `CaseClass` to include the new groups Id so that it updates the case owner what ownd by this queue. 
* Add a picklist value to the `Origin` field on the case object (In Production) 

**Related Epic**
* [@Sales-Ops Case Epic](https://gitlab.com/groups/gitlab-com/sales-team/field-operations/-/epics/7)


## Legal Request System

**Business Process this supports** The sales cycle, if a GitLab sales rep encounters an issue that requires legal knowledge, opinion, or action.

**Overview** A sales rep can quickly and easily create a Case for our legal team directly from an Opportunity's page layout in Salesforce. The legal team has access to a Salesforce dashboard to see how many Cases have been created for them, how many are in their name, etc. Clicking the "Legal Request" button on each Opportunity's page will bring the user to a page that asks a few questions that the legal team would like to know. Once the page is submitted, a Case is created with the Origin marked as "Legal Request." The legal team has dashboards that view Cases with Origin equal to "Legal Request" and can assign and take action from there.

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

**Overview** The goal of this functionality is to capture the progression of an opportunity through the stages in the sales process.  To support this, a check box and date stamp will be automatically populated for each stage as the oportunity advances and or moves back in stage.  The tracking begins at stage 0-Pending Acceptance.  In the event an opportunity advances forward and skips stages, all of the skiped stages will be stamped with the same date as the resting stage. In the event of Closed Lost and Unqualified, the checks and dates will only apply for the stages that were actually met.  To avoid data loss and confusion, the stage progression tracking will only run once, the first time through the stages. 

**Logic Locations**
* To be added once functionality is in Production

## Opportunity Validation Rule for Closed Accounting Period

**Business Process this supports**  The Sales Finance & Analytics

**Overview** The goal is have a static opportunity population in salesforce once the opportunity close date is past accounting close date ( which is 10th day of the month) so it ties to everything that was reported to the Board. And to ensure the bookings data don't change as there are other downstream implications such as Commissions Calculation, Booking Reporting & Adaptive Bookings Data,need to build a mechanism to lock the booking related opportunity fields after green light from Deal Desk & Finance. If there are any minor adjustments ( if needed ) to historical periods we have a specific permission sets to make the appropriate changes.

**Logic Locations**
* [ Validation Rule](https://gitlab.my.salesforce.com/03d4M000001113V?setupid=OpportunityValidations)

## Block Salesforce From Transferring Historical Opp Owners On Account Owner Transfers

**Business Process this supports:** In order to provide reliable and accurate historical data to the analytics team, the sales organization and to the companye as a whole we need to ensure that historical opportunities and relevant information on opportunities is not changed once the opportunity is closed. 

**Overview:** The goal of this blocking logic is to close a backdoor that Salesforce has built into the system. While we have a number of validation rules in place to prevent information from changing on closed opportunities it is possible to change historical opportunity owners (as well as fields that are derived from the owner field) while transferring accounts. Anyone who could have been able to change the owner on an account would have been able change historical opportuntiy data that they would not be able to edit otherwise. This logic still allows users to complete this account ownership transfer without any impact to historical opportunities while also allowing the various business teams at GitLab to manually update the owners of opportunities at month close.

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

**Business Process this supports:** [New vs Connected New vs Growth](/handbook/sales/sales-term-glossary/)

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

**Overview:** Leads should be sorted into different Sales Segments based on their company's employee count so the appropriate salesperson can pursue them. We have a number of different information sources to get company size, so we must also establish a hierarchy for them.

| **Info Source** | **Salesforce Lead Field API Name** |
| ---- | ---- |
| Lean Data | Lean_Data_Matched_Account_Sales_Segment__c |
| Web Portal | Web_Portal_Purchase_Company_Size__c |
| Marketing | Employee_Buckets__c |
| DemandBase | DB_Employee_Count__c |
| Zoominfo| 	ZI_Employees__c |
| Salesforce User | NumberOfEmployees |

**Logic Locations:** [LeadClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LeadClass.cls)
Code Unit: 
   * determineSegment


## Force Management / Command of The Message / Command Plan

**Business Process this supports:** [Command of The Message](/handbook/sales/command-of-the-message/)

**Overview:** This Visualforce page and supporting controller provide the sales team with an easy to use button on their opportunities to populate the needed information. 

**Logic Locations:** 
* [ForceManagement.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/ForceManagement.cls)
* [ForceManagement.page](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/pages/ForceManagement.page)


## Linear Weighted Net ARR

**Business Process this supports:** [Linear Attribution](/handbook/marketing/marketing-operations/bizible/#linear-attribution)

**Overview:** Linear Weighted Net ARR is a measure at Gitlab that is used to measure the effectiveness of our marketing campaigns. Please refer to the excellent [Linear Attribution](/handbook/marketing/marketing-operations/bizible/#linear-attribution) section in our handbook for additional details. In summary the Linear Weighted Net ARR is calculated by taking the Net ARR of an Opportunity and dividing it by the Number of associated Bizibile Touchpoints related to the Opportunity. 

**Logic Locations:** [OpportunityJob.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityJob.cls)
Code Unit: 
   * countBizibleTouchpointsCalculateLineariACV


## Mavenlink


**Business Process this supports:** This supports our professional services team. They leverage Mavenlink projects to coordinate their projects, the hours they spend on each project and their associated tasks, schedules and more. 

**Overview:** The following sections of code control the process by which Mavenlink project in Salesforce are created, which in turn are then pushed over to Mavenlink by leveraging an extension class that was provided by Mavenlink. Currently a Mavenlink Project is created when one of the following scenarios is met
   - A primary quote is created, that has a flagged Quote Rate Plan Charge on it (Mavenlink flag), where its associated opportunity is in stage 5 or later and their is not already an existing Mavenlink project for the related Opportunity
   - A Opportunity is moved into stage 5 or later, and it's primary quote has a flagged Quote Rate Plan Charge on it (Mavenlink flag) and their is not already an existing Mavenlink project for the related Opportunity
   - In the above two cases if there is an associated Mavenlink project the project is updated with the new updated information that has been changed 

**Logic Locations:** 
   * [OpportunityClass.CreateAndMaintainMavenLinkProject](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityClass.cls#L176)
   * [QuoteRatePlanChargeClass.CreateAndMaintainMavenLinkProject](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/QuoteRatePlanChargeClass.cls#L3)
   * [MavenlinkProjectClass.upsertMavenLinkProject](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/MavenlinkProjectClass.cls)
   * [GitlabMavenlinkExtension.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/GitlabMavenlinkExtension.cls)
   * [OpportunityClassTests.CreateAndMaintainMavenLinkProject](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityClassTests.cls#L227)
   * [QuoteRatePlanChargeClassTest.CreateAndMaintainMavenLinkProject](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/QuoteRatePlanChargeClassTest.cls#L3)
   * [GitlabMavenlinkExtensionTest.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/GitlabMavenlinkExtensionTest.cls)


## Opportunity Splits


**Business Process this supports:** This supports the automatic creation validation of our opportunity split that supports our compensation team. This helps ensure that our team members are compensated for the opportunities that they are associated with in an automated fashion 

**Overview:** 
   -  **Split Creation and Automation**
   -  Below we'll see some key points as they pertain to Opportunity splits and below that we attempt to summarize the automation by end user story. 
   -  Split for any Opportunity can only be created by an individual on one of the teams Below. To clarify the current permission does not aim to say who should be creating opportunity splits but rather who can create them based on our current permission set assignments.  
         - Compensation Team
         - Deal Desk
         - Sales Ops
         - System Admins
   - `Account Executives` / `Opportunity Owner`
      - All of these splits should only ever appear in ``Opportunity - Incremental ACV 2`` split type
      - When the Opportunity Owner is updated, the splits for the Opportunity Owner are updated.
      - If a split is needed for the Owner the split needs to be created manually by an approved user 
   - `Sales Development Representatives` / `ISR` / `Primary Solutions Architect` / `Technical Account Manager` / `Channel Manager`: Base split automation rules
      - When the corresponding lookup field on the Opportunity is populated (created or updated) a split for 100% is created for the user in the lookup field and added to the opportunity
      - The population of the above lookup fields follow the same rules and processes as they have before the rollout of this automation
      - If a lookup field is changed from User A to User B then ALL splits for that User Role on the Opportunity are deleted and a split for 100% is assigned to User B
      - If a lookup field is changed from a User to Null/Empty then ALL splits for that User Role on the Opportunity are deleted, and there will be not splits for that Team Role on the Opportunity
      - If a split is needed for any of these roles the split needs to be created manually by an approved user 
   - `Technical Account Manager` Special Use Cases
      - When the `Technical Account Manager` field on the Opportunity is populated a split for 100% is created for whoever is added into the Technical Account Manager lookup 
         - The population of the `Technical Account Manager` is currently handled automatically, OpportunityClass.maintainTamTeamLookup, as they are only to be stamped onto Opportunities when the Opportunity is a Growth Opportunity
      - If a split is needed for a Technical Account Manager the split needs to be created manually by an approved user
   - `Channel Manager` Special Use Cases
      - When the corresponding lookup field on the Opportunity is populated a 100% split it creates. Because of the workflow of Channel Managers it is likely that a lot of these splits will end up being incorrectly updated to the Opportunity Owner instead of staying with the Channel Manager (See the general automation notes for more details). To work around this, when an opportunity moves from Open to Closed any Channel Manager splits are cleared and reinserted for the user that is in the Channel Manaher lookup field at the time of close. 

**Split Validation** 
   - `OpportunityClass.checkAndConfirmSplitPercentages`
      - When an Opportunity has its stage changed there is a validation run against the splits on the opportunity. The validation aims to ensure that all splits on the Opportunity when grouped by Role add up to 100%. If the splits do not add up to 100% an error is thrown and the splits must be updated prior to moving the opportunity forward
      - For the purposes of this validation the Team Roles of `Opportunity Owner`, `Account Executive`, `null/Empty` are assumed to be the same role and are summed accordingly. 
   - Validation Rules
      - For individual end users to avoid having their splits errased - see the general automation notes for more details - a number of validation rules have been created. These validaiton rule prevent the Opportunity Owner from ever being the same user as either the `Sales Development Representatives`, `ISR`, `Primary Solutions Architect` or `Technical Account Manager`. 
         - `Channel Managers` are not included in this Validation rule because they are not paid until after the close, the validation rule would conflict with existing automations and because it is expected that Channel Maanagers will never have a split Opportunity.


**Logic Locations:** 
   - [OpportunityClass.maintainTamTeamLookup](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityClass.cls#L315)
   - [OpportunityClass.maintainTeamMembersToSplits](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityClass.cls#L399)
   - [OpportunityClass.checkAndConfirmSplitPercentages](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityClass.cls#L337)
   - Please also see the [OpportunityClass.singleWonOppSplitOwnerUpdate](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityClass.cls#L126) where split are also handled but not directly in alignment with the needs for this process

**General Automation Notes**
- Salesforce has a default behavior that when an opportunity is updated, any opportunity split that is owned by the old owner of the opporutnity is updated to the new owner of the opportunity. This is irregardless of what type of split it is, if it is split or not. Even if we try to work around this exception with an After trigger the SFDC automation fires after any after triggers we write. 

## Refund Opportunity 

**Business Process this supports:** [Decommision Opportunity Process](/handbook/sales/field-operations/sales-operations/deal-desk/#creating-decomission-opportunties)

**Overview:**  For this process to function properly there is a button that has been added to the Opportunity layout. This button should only be visible to users who should be working on our bookings (Deal Desk, Finance Users, etc.). This button, when clicked, updated a checkbox on that opportunity to mark it as a refunded opportunity. This checkbox causes the the trigger class to run and create a full clone of the existing opportunity. This class also updates a number of fields to null or the override fields are used to negate our bookings numbers. Additionally if the owner of the original opportunity is no longer active the Opportunity owner is updated to that users Manager. If that manager is also no longer active than the opportunity is assigned to the user who triggered the process. Because this process uses a checkbox field it is also possible to mass trigger refunds on through a dataload or similar mass update. 

**Logic Locations:** 
   * [OpportunityClass.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityClass.cls)
Code Unit: 
      * CreateRefundOpp
   * Create Refund Opportunity Button 


## SQS [ Sales Qualified Source] Override

   **Business Process this supports:** Sales Cycle & Operations  [Tracking Sales Qualified Source in the Opportunity](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/#tracking-sales-qualified-source-in-the-opportunity)

   **Overview:** There are times in which we may need to override Sales Qualified Source. In this event, we have a system that will allow this. This ability is limited to James Harrison and Colleen Farris. To override Sales Qualified Source, enabling user with perform the following steps:

1. Check the Override SQS checkbox
2. Select the updated value in Sales Qualified Source

Once this is complete, a validation rule will prohibit anyone other than the above mentioned users from editing this field. All automation that updates this field includes criteria that excludes them from firing if the Override SQS checkbox is checked.

**Logic Locations:** 

* Permission Set : [Edit SQS Override](https://gitlab.my.salesforce.com/0PS4M00000113aW)
* Validation Rule : [Cannot edit overridden SQS](https://gitlab.my.salesforce.com/03d4M000001118T?setupid=OpportunityValidations )


## Maintain Channel Manager

**Business Process this supports:** This automation maintains the correct Channel Manager on Opportunities. This is important for trakcing which Channel Manager gets compensated on which Opportunity. 

**Overview:** 
   - Currently there are a handful of automations that maintain the Channel Manager on Opportunity records. 
      - When a Deal Registration is associated with an Opportunity the Channel Manager on the Deal registration is stamped onto the Opportunity. This also happens when creating the Opportunity from the Deal registration. This is handeled through our managed package, Vartopia. 
      - When a Deal Registration has its Channel Manager updated, the new Channel Manager is stamped onto the Opportunity in the Channel Manager field. This is to accomadate for scenarios with Pub Sec Accounts. Instead of having two Channel accounts in SFDC have only one and update the channel manager on the Deal Registration when it is a Pub Sector Deal Registration. 
      - `This Class/Automation` When the Channel Manager on an account is updated. Find all open Opportunities where that Partner Account is the same as the account with the owner change and the Old Account Owner is stamped as the `Channel Manager` on the Opportunity and update the `Channel Manager` to the new Owner of the Partner Account. 


**Logic Locations:** 
   - [AccountClass.maintainChannelManagerOpenOpps](###) - Link Pending Code Merge
   - [AccountClassTest.maintainChannelManagerOpenOpps](###) - Link Pending Code Merge


## SA Team Stamping

**Business Process this supports:** The primary area that this is used is for Compensation. As a number of teams and users are compensated on a regional nunmber, stamping the SA Team of the Opportunity Owner onto the Opportunity allos us to properly pay out this compensation. 

**Overview:**  When a Opporuntiy meets one of the criteria below the SA Team from the Opportunity Owner is stamped onto the Opportunity. This allows for the field to track the owner of the Opporutnity at Close, adjust when the owner is updated but to still allow for the finance teams to override as needed. 
   - Inserted as a closed opportunity
   - A opportunity is updated from not closed to closed
   - A closed opportunity has its owner updated

**Logic Locations:** 
   * [OpportunityClass.stampSATeam](###) - Link Pending Merge


## GitLab Admin Contact Required

 **Business Process this supports:** Digital Journey - In order to deliver the digital journey enablement series to new customers, we need a way to identify contact roles for certain personas in the business to receive the right material.

**Overview:** For the Commercial and Enterprise markets, we will require identifying the GitLab admins at each Account at the time of Opportunity approval submission. When the “Submit for Approval” button is clicked in the Opportunity, logic will run the check criteria (defined below) on if a GitLab Admin is required and if there is currently one defined. Providing a GitLab Admin is defined by having at least one contact on the Account that has `Role` CONTAIN GitLab Admin [as seen here.](https://about.gitlab.com/handbook/customer-success/tam/digital-journey/nominating-contacts-for-the-digital-journey/) Note: This contact can have other roles defined in this field in addition to GitLab Admin. If the criteria is met, there are two potential results:

   1. There is already a GitLab Admin defined on the Account. 
      * Result: The submission continues to the normal screen of Closed Won Reason requirements for approvals.
   2. There is not a GitLab Admin defined on the Account
      * Result: An error screen will display instructing the user to define a GitLab Admin. Once the GitLab Admin is defined, they can re-submit the Opportunity for approval.

   **Criteria to enter this logic:**
   * `Web Portal Purchase` is Unchecked (false value)
   * `Order Type 2.0` is 1. New - First Order OR 2. New - Connected OR 3. Growth
   * `Net ARR` less than $50,000
   * `Stamped Opp Owner User Segment` is SMB or Mid-Market or Large
   * `[TSP] Region` is not APAC
   * `[TSP] Region` is not LATAM

**Logic Locations:**

   * Flow: [Opp Approval Field Check 3.0 GitLab Admin Check](https://gitlab.lightning.force.com/lightning/setup/Flows/page?address=%2F3004M000000brYQQAY%3FretUrl%3D%2Flightning%2Fsetup%2FFlows%2Fhome)


## Downgrade Reason Required

**Business Process this supports:** This supports internal visibility/reporting on why customers are downgrading. Downgrade Opportunities are technically Closed Won Opportunities with negative `Net ARR`. This will allow us to capture reasons for a downgrade on these opportunities rather than Closed Won reasons:

**Overview:** For Opportunities with negative `Net ARR` of less than -$480, we will require the identification of why there was a downgrade. When the "Submit for Approval" button is clicked in the Opportunity, logic will run to determine if `Downgrade Reason` should be required. There are two potential scenarios of Net ARR with varying results.

   1. `Net ARR` is less than $0 but greater than -$480
      * Result: The submission will immediately submit for approval. Neither `Closed Won Reason` or `Downgrade Reason` will be required.
   2. `Net ARR` is less than -$480
      * Result: The submission will continue to a screen to provide a `Downgrade Reason`. Optionally, `Downgrade Details` can also be provided for a further explanation. Additionally,`Competitors`  may be required depending on the selection in `Downgrade Reason` on a second screen. This will be required if `Downgrade Reason` was selected to equal one of the following values: "Lack of Adoption", "Product Value / Gaps", "Product Quality / Availability", "Lack of Engagement / Sponsor", "Corporate Decision".

 `Downgrade Reason` values align directly with our `Closed Lost/Unqualified Reason` values and [can be found here.](https://about.gitlab.com/handbook/sales/sales-term-glossary/#closed-deal---lost-reasons)

**Logic Locations:**

* Flow: [Opp Approval Field Check 3.0 GitLab Admin Check](https://gitlab.lightning.force.com/lightning/setup/Flows/page?address=%2F3004M000000brYQQAY%3FretUrl%3D%2Flightning%2Fsetup%2FFlows%2Fhome)


## Next Steps History

**Business Process this supports:** Sales tracks their next steps in the `Next Steps` field. It is important to have a historical log of these "Next Steps" so that they can be referenced in the future. We have created a system to streamline this process so that sales will only need to update what the true "Next Step" is and the system will log the historcal data.

**Overview:** On the Opportunity, when the `Next Steps` field is updated, the previous value of this field will be stamped into the `Next Steps History` field. This will be complete with a time stamp and will keep the previously existing value of `Next Steps History` to keep a full log.

 **Criteria to enter this logic:**
   * `Next Steps` has been changed/updated OR the Opportunity has just been created.
   * `Next Steps` previous value was not a "blank" value.

**Logic Locations:**

* Workflow Rule: [Next Steps History](https://gitlab.my.salesforce.com/01Q4M000000sslN)
* Field Update Action: [Update Next Steps History](https://gitlab.my.salesforce.com/04Y4M000000saO7)



## Automations

### Email Alerts

**Business Process this supports:** Sales Cycle & All Operations

**Overview:** Email alerts are emails generated by an automated process and sent to designated recipients. These actions consist of the standard text and list of recipients for an email. Email alerts are associated with processes, flows, workflow rules & approval processes. Here is the [Email Alert Document](https://docs.google.com/spreadsheets/d/1F_4Cs46wmHAG-HipRT2Ltu0iafhcE1Z-Lhr5U7XQGRU/edit#gid=859280293) which lists all the email alerts with associated automation details, email template details & target audience information that are sent from salesforce instance. To request deactivating and/or updating these emails alerts for business reasons please create an [issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/new) in SalesSystems Board for Systems Team Member to review & make necessary updates.

**Logic Locations:**   
* [Email Alerts](https://gitlab.my.salesforce.com/01W?setupid=WorkflowEmails&fcf=00B61000001XPLx)

### Late Renewals Notifications and Closure
 
**Business Process this supports:** Sales Cycle - [Late Renewal Notification & Auto Close Process](https://about.gitlab.com/handbook/sales/sales-renewal-process/#closed-lost-renewal-management)
 
**Overview:** To keep the Sales Pipeline clean and for a systematic way to notify opportunity owners (and their managers) of renewal opportunities that are at risk of lapsing, automatically close late renewals that fall out of adherence to [Bookings Policy](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#fy22-bookings-policy) this automation has been built. This automation triggers for all Open Renewal Opportunities based on Quote Start Date in the opportunity.
This logic is included in the `OpportunityJob` to trigger the action (Field Update) & alert. The recipients who receive these emails are Opportunity Owner, Opportunity Owner's Manager & ISR. Specific templates have been created to match up with the notifications. The field updates made to `Admin Poke` field are used to trigger `Troops` to send email alerts to the SAs(Primay Solution Architect).
To request updating these emails alerts/recipients/actions, please create an [issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/new) in SalesSystems Board for Systems Team Member to review & make necessary updates.
 
Here is the config table for the automation logic for reference:
 
 
 
| For Open Renewal Opportunity Only                                 | Email Template ID Used  | Logic [Opportunity Quote Start Date]  | Field Update                                                                                                                                                                                                                      | Email Alerts Sent To                         | Troops Alerts Sent To |
|-------------------------------------------------------|--------------------|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|--------------|
| First Notification - Email Alert - 15 days prior to Quote Start Date                      | 00X4M00000121nCUAQ | Today = Quote Start Date - 15 Days  | Admin Poke = 15 days prior lapsed renewal alert1 sent                                                                                                                                                                                       | Opportunity owner, ISR, opp owner manager | SAs          |
| Second Notification - Email Alert - Day of Quote Start Date                    | 00X4M00000121nFUAQ | Today = Quote Start Date      | Admin Poke = on the day lapsed renewal alert2 sent                                                                                                                                                                                         | Opportunity owner, ISR, opp owner manager | SAs          |
| Third Notification - Email Alert -30 days after Quote Start Date                      | 00X4M00000121nDUAQ | Today = Quote Start Date + 30 Days  | Admin Poke = 30 days prior lapsed renewal alert3 sent                                                                                                                                                                                      | Opportunity owner, ISR, opp owner manager | SAs          |
| Final Notification - Email Alert + Closed Lost Update -46 days after Quote Start Date | 00X4M00000121nEUAQ | Today = Quote Start Date + 46 Days    | Admin Poke = opp closed lapsed renewal alert4 sent,        Opportunity Stage = Closed Lost,                                 Closed Lost/Unqualified Reason = Other,               Closed Lost/Unqualified Details = Auto closed lapsed renewal | Opportunity owner, ISR, opp owner manager | SAs          |
 
**Logic Locations:**
 
* [Email Templates](https://gitlab.my.salesforce.com/00X?setupid=CommunicationTemplatesEmail&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DCommunicationTemplates)
 
* [OpportunityJob.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/OpportunityJob.cls)
 
 
 


