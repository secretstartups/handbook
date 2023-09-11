---
layout: handbook-page-toc
title: "Pooled Model"
description: "Overview of the SMB Pooled Model"
---

## Pooled Model

All members of the Sales, Support, Billing and Deal Desk teams should familiarize themselves with the AMER and EMEA Pooled Models.  

The AMER model leverages team-level account alignment so Pooled SMB customers have a team of AE’s to assist them.  Every AE on the Pooled Account Team is equipped to work with any Pooled customer as the sales point of contact.

The CARR threshold for Pooled accounts is <$4k for existing customers, and <$2k for new customers.

In EMEA, each Pooled AE operates in their own, region specific Pool. 

## Account Ownership

All AMER Pooled Accounts are owned by the [Pooled Sales User](https://gitlab.my.salesforce.com/0058X00000F1YFq?noredirect=1&isUserEntityOverride=1).  Note that these accounts are closely monitored and should not be considered ownerless.

All EMEA Pooled Accounts are owned by that regions Pooled AE.

## Opportunity Ownership

All AMER Pooled Opportunities are owned by the [Pooled Sales User](https://gitlab.my.salesforce.com/0058X00000F1YFq?noredirect=1&isUserEntityOverride=1).  Note that these opps are worked as and when required by the Pooled AEs, and should not be considered ownerless.

Exception: AMER Pooled AEs are permitted to own Ultimate Upgrade opportunities, since these are typically high value, and required dedicated AE attention. 

All EMEA Pooled Opportunities are owned by that regions Pooled AE.

## Engaging with Pooled Accounts

In AMER, since all Pooled Accounts are owned by the Pooled Sales User, Pooled AEs will only engage with customers when specific customer events/ scenarios are triggered.  Once one of these defined sceanrios is triggered, a case will be created. A Pooled AE will then pick up the case, and work it through to completion

In EMEA, Pooled AEs are free to engage with any customer at any time, however cases will also be created based on the same specific scenarios.  The AEs will focus on resolving these cases first, before engaging with other customers. 

## Case Scenarios

- Expansion Opportunity
- Churn & Contraction Mitigation
- Urgent Renewal & TRX Support
- Inbound Request

Each case scenario is broken down into specific case triggers.  Details of the current case triggers can be found in the deck below.

[Pooled Model: Case Types and Logic - Iteration 3](https://docs.google.com/presentation/d/1CYNMh4PND1qk9bwtWkNFUryOuXVmIiYh4twe_CcXqHg/edit#slide=id.g1287bf62b57_0_209)


## How a Pooled AE works a case

- View the [AMER Pooled Sales Team Case Dash](https://gitlab.my.salesforce.com/01Z8X000001Dk59)/ [EMEA Pooled Sales Team Case Dash](https://gitlab.my.salesforce.com/01ZPL0000004jJV) or [AMER Pooled Sales Team Case Queue](https://gitlab.my.salesforce.com/500?fcf=00B8X000009wTi0)/ [EMEA Pooled Sales Team Case Queue](https://gitlab.my.salesforce.com/500?fcf=00BPL00000009Hp) to view the open cases.
- View the **Subject** in order to identify what case trigger created the case.
- Click on the Case number
- Confirm there are no open Pooled Cases currently on the account, or AE owned active Ultimate Upgrade opportunities. If there are, transfer the case to the AE that owns the other case/ active Ultimate Upgrade opp.
- Click **Change** next to the Case Owner field
- Enter your name in the Owner Name box, and click **Save**
- Contact the customer listed on the Case
- Update the Case, and the Opp as needed. (See this [cheat sheet](https://docs.google.com/spreadsheets/d/1fDEr7dDfN3ZCJZAd1UU6v6TNntC-tSBbB0p3O7eLFlI/edit#gid=0) which explains which fields need to updated, and when). 
- Once resolved, close out the case and the related opp (if one exists).

## How any GitLab Team Member can create a case, to loop in the AMER Pooled Team

Any GitLab team member is free to create a case, should they need to loop in a Pooled AE. 

- Navigate to the applicable **Account** in Salesforce.
- Click on Cases, **New Case**.
- Select **Pooled Sales Case**, from the **Record Type** dropdown. 
- Change **Case Origin** to **SMB Pool Internal Created**.
- Search the **Contact Name** of the end user contact.
- Describe the ask of the AE in the case **Description**. Include any relevant links or resources.
- Enter in a **Referral** the **Subject** field.
- Select a **Case Reason** based on the customers needs.
- Check the **Assign using active assignment rules** checkbox, and click **Save**.
- This Case will now drop into the **Pooled Sales Queue**, and will be actioned by a Pooled AE.

### Support Tickets

If a Pooled Customer raises a support ticket, it will be picked up via Zendesk by a Support Engineer.  

If this Support Engineer now needs to loop in Sales, the [Working with Sales - Salesforce `Account Owner` is `POOLED USER [ DO NOT CHATTER ]`](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/working_with_sales.html#if-the-salesforce-account-owner-is-pooled-user--do-not-chatter-) workflow should be followed.


## How Pooled AEs work Cases

- If a Pooled AE has capacity, they will click on an open case in the AMER or EMEA Pooled Sales Team Queue and assign it to themselves, by changing the **Case Owner**.
- **High Priority** cases should always be picked up first. 
- Information pertaining to the case will be displated in the **Description** box.
- Once assigned to a Pooled AE, the **Status** should be set to **In Progress**.
- The **Case Reason** should be updated based on the nature of the customer's request.
- To work the case, the Pooled AE should contact the customer, with all activities logged on the contact/ account. The **Notes** field on the case should also be updated to include the case next steps.
- Once a Case is considered resolved, the **Status** should be set to one of the four Closed options, and the **Resolution Action** updated. This will automatically update the **Date/ Time Closed** field.
- If applicable, the related opportunity should also be closed. 
- At any time, a Pooled AE can view their cases by navigating to the **My Cases** list view in Salesforce.
- When working cases, the following outreach cadence should be followed.  

| *Day 1* | *Day 3* | *Day 5*| *Day 7*        | 
|----------------------|--------|-----------------|-------------------|
| Email          | Call | Email   | Email      | 

- A Pooled AE should look to resolve/ close a case within 7 days of it being opened. 

### Ultimate Upgrade Opportunities (AMER)

Even though all AMER Accounts/ Opportunities are owned by the Pooled Sales User, there is one exception where an opp could be AE owned.

- After working a case, should an AE identify an Ultimate Upgrade opp, they are permitted to create and own an upgrade opportunity. (_Ultimate Upgrade_ should be annotated in the _Next Steps_ and _Opportunity Name_)
- Since the AMER Pooled AEs focus on working cases, they are only permitted to own 15 active Upgrade opportunities at any one time.
- If a case enters the queue, and an active Ultimate Upgrade opportunity lives on the same account, the case should be transferred to the AE that is working the Upgrade opp.
- The AMER Pooled ASM will monitor these Upgrade opportunities, and is free to close them out should they not be deemed valid.
- These Ultimate Upgrade opps are tracked on this [dashboard](https://gitlab.my.salesforce.com/01ZPL0000005I4L).

### FAQ
 
Q. 	Will cases be added to the queue everyday?

A.	Yes, we expect new cases to be created daily, and to total approx. 80 per month.

Q. 	Can I pick up any Case in the queue?

A.	No, **High Priority** cases must be picked yp first.  If there are no **High Priority** cases, cases must then be worked oldest first.

Q.	Is there an SLA in place?

A.	Yes, all cases should be picked up and responded to within 24 hours (8 business hours) of entering the queue.

Q.	What happens if a case comes into the queue, and another Pooled AE is working a case/ active Upgrade opp under the same Account?

A.	In this scenario, the AE should assign the case to the owner of the current open case/ active Upgrade opp.

Q.  Where can I provide feedback on this model/ process?

A.  Please submit all feedback via the #self_service_ae_feedback_loop slack channel

Q.  Is additional enablement material available?

A.  Yes, please see the content below;

[AMER slide deck](https://docs.google.com/presentation/d/1IWgcHXbFN5UVNHCWXtF1fKj_9k5h5KlQGClY-2RbqUE/edit#slide=id.g12b319f6181_0_5)

[EMEA slide deck](https://docs.google.com/presentation/d/1USd3T_KOkixdxY9T0M9jwTKb9V1YkFDeYkoj4Zh57IM/edit#slide=id.g12b319f6181_0_5)

