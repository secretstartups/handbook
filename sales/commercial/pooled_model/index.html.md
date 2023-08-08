---
layout: handbook-page-toc
title: "Pooled Model"
description: "Overview of the SMB Pooled Model"
---

## Pooled Model

All members of the Sales, Support, Billing and Deal Desk teams should familiarize themselves with the AMER and EMEA Pooled Models.  

The AMER model leverages team-level account alignment so Pooled SMB customers have a team of AE’s to assist them.  Every AE on the Pooled Account Team is equipped to work with any Pooled customer as the sales point of contact.

The CARR threshold for Pooled accounts is <$4k for existing customers, and <$2k for new customer.

In EMEA, each Pooled AE operates in their own, region specific Pool, 

## Account Ownership

All AMER Pooled Accounts are owned by the [Pooled Sales User](https://gitlab.my.salesforce.com/0058X00000F1YFq?noredirect=1&isUserEntityOverride=1).  Note that these accounts are closely monitored and should not be considered ownerless.

All EMEA Pooled Accounts are owned by that regions Pooled AE.

## Opportunity Ownership

All AMER Pooled Opportunities are owned by the [Pooled Sales User](https://gitlab.my.salesforce.com/0058X00000F1YFq?noredirect=1&isUserEntityOverride=1).  Note that these opps are worked as and when required by the Pooled AEs, and should not be considered ownerless.

All EMEA Pooled Opportunities are owned by that regions Pooled AE.

## Engaging with Pooled Accounts

In AMER, since all Pooled Accounts are owned by the Pooled Sales User, Pooled AEs will only engage with these customers when any of the below scenarios are triggered, and will engage through the subsequent case that is created.

In EMEA, Pooled AEs are free to engage with any customer at any tie, however cases will also be created based on the below triggers.  The AEs will focus on resolving these cases first, before engaging with other customers. 

Triggers are split into 3 categories based on the scenario type. 

- RT: Reactive Trigger. Due to a GitLab internal challege, the customer will need sales assistance in order to transact.
- PRO: Proactive Trigger.  Due to customer behavior/ insight, the customer would likely benefit from a conversation with sales.  There is likely to be an opportunity for growth, or to mitigate churn.  
- HR: Hand Raise. The customer has notified us that they require sales assistance. 

### RT: Failed Auto Renewals

These customers think that there subscription will auto renew, however due to internal challenges, it will not.  

#### Process

Every month, the Product team identifies auto renewal opps that are destined to fail.
Once identified, the *Auto Renewal Status* field on these renewal opportunities is updated.  Full info can be found [here](https://gitlab.highspot.com/items/62defca03bbd437fa8d1e1f1?lfrm=srp.0). 
Once these renewal opps are updated, cases are created so that the Pooled AEs can reach out to the affected customers.  

These cases are expected to enter the Pooled Sales Team Case Queue at least 30 days before the opp close date. 
Once these cases enter the queue, they should be picked up on a first in first out basis.  
Should the AE need to adjust the close date, add notes, create a new quote on the opp in question, they are free to do so.  
Once resolved, the case and the opp should be closed by the AE.

#### Policy

Once cases are created based on *auto renewal opps that are due to fail*, an AE should pick up the case on a first in first out basis.  The oldest open case in the queue should always be picked up first, regardless of the case subject. 
Once the case is resolved, and the opp is set to to closed won, credit will fall under the Pooled Sales User

#### AE Steps

- View the [AMER Pooled Sales Team Case Dash](https://gitlab.my.salesforce.com/01Z8X000001Dk59)/ [EMEA Pooled Sales Team Case Dash](https://gitlab.my.salesforce.com/01ZPL0000004jJV) or [AMER Pooled Sales Team Case Queue](https://gitlab.my.salesforce.com/500?fcf=00B8X000009wTi0)/ [EMEA Pooled Sales Team Case Queue](https://gitlab.my.salesforce.com/500?fcf=00BPL00000009Hp) to view the open case.
- (The case will have the subject **Upcoming Auto Renewal Due to Fail: XX.XX.XXXX**
- Click on the Case number
- Confirm there are no open Pooled Cases currently on the account, or AE owned active Upgrade opportunities. If there are, transfer the case to the AE that owns the other case/ active Upgrade opp (further info on Upgrade Opp ROEs can be found at the foot of this page).
- Click **Change** next to the Case Owner field
- Enter your name in the Owner Name box, and click **Save**
- Contact the customer listed on the Case
- Update the Case, and the Opp as needed. 
- Activities should be logged on the case, and related to the contact and opp in question.

### RT: Failed QSRs - Reactive Trigger

A customer may need education on the QSR process and assistance in transacting, or purchasing additional licenses. 

#### Process

Self Service Ops will identify QSR opps where the *QSR Status* field = Failed. 
This means that the opp failed to reconcile and the customer needs assistance.
Cases will be created for these QSR opps, which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed under the preceding trigger, however the case will have the subject **Failed QSR: XX.XX.XXXX**

### RT: EoA Renewals - Reactive Trigger

EoA customers are unable to auto renew. 

#### Process

Self Service Ops will identify EoA opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue.

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **Upcoming EoA Renewal: XX.XX.XXXX**

### RT: Multi Year Renewals - Reactive Trigger

Bespoke non standard term subscriptions are unavailalble for auto renew.

#### Process

Self Service Ops will identify Multi Year opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue.

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **Upcoming Multi Year Renewal: XX.XX.XXXX**

### RT: PO Purchases - Reactive Trigger

Purchases made via a PO are unable to be auto renewed.

#### Process 

Self Service Ops will identify PO Required opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **Upcoming PO Required Renewal: XX.XX.XXXX**

### RT: Customer Recently Cancelled - Reactive Trigger

A customer has chosen not to auto renew.

#### Process

Self Service Ops will identify Non Auto Renewing opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceding trigger.

#### AE Steps

Ss detailed above, however the case will have the subject **Upcoming Non Auto Renewal: XX.XX.XXXX**

### RT: Overdue Renewals - Reactive Trigger

If a customers renewal is past due, there service may be paused/ switched off.

#### Process

Self Service will identify past due renewal opps owned the Pooled Sales User.
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

Note that a case may be created based on a past due renewal opp that also previously triggerd one of the above scenarios i.e an overdue renewal opp where a PO is required.  When this occurs, the newer case will be auto assinged to the owner of the prior open case on the account.

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **Past Due Renewal: XX.XX.XXXX**

### PRO: New 4/5* PTE Accounts

Accounts that were recently updated and now have a PTE of 4 or 5, indicating there is potential for growth.

#### Process

Self Service Ops will identify accounts owned by the Pooled Sales User that were updated to 5* PTE in the last 30 days.
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: New 5* PTE Account**

### PRO: New 1* PTC Accounts - Proactive Trigger

Accounts that were recently updated and now have a PTC of 1, indicating there is a high chance they will churn.

#### Process

Self Service Ops will identify accounts owned by the Pooled Sales User that were updated to 1* PTC in the last 30 days.
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: New 1* PTC Account**

### PRO: Overage and QSR Off - Proactive Trigger

These customers will likely need to purchase additional licenses.  

#### Process

Self Service Ops will identify Self Managed accounts with overages of > $1k and SaaS accounts with an overage of >$0k, that are 60 days out, and create cases for these.
These cases will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: New overage detected**

### PRO: Underutilization

These customers are currently using less licenses than the number they purchased.  This suggest low adoption.   

#### Process

Self Service Ops will identify Pooled Accounts that have at least 1 active user, however their underutilization is sizeable and needs to be investigated.  If they continue to not use licenses they have already paid for, there is a rish of churn or auto contraction at time of renewal.

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: Underutilization**

### HR: Contact Sales Request

A customer has visited the Contact Us [landing page](https://about.gitlab.com/sales/), and submitted a question.

#### Process

When a customer fills in the Sales Contact Us form, a case is automatically created that enters the Pooled Sales Team case queue. (AMER Only)

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: Contact Sales Request**

### HR: Hand Riase PQL

A customer has requsted assistance from within the product. 

#### Process

When a customer Hand Raises, a case is automatically created that enters the Pooled Sales Team case queue. (AMER only)

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: Hand Raise PQL**

### HR: SDR Created

A customer has interacted an SDR, most likely via live chat. They now need assistance from an Account Executive. (AMER only)

#### Process

When an SDR they interacts with a Pooled Customer, and they need to hand over the customer to the Pooled AE, they create a case that drops into the Pooled Sales Team case queue. 

#### Policy

As detailed under the preceding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: SDR Created**


### Support Ticket

If the Pooled Customer raises a support ticket, it will be picked up via Zendesk by a Support Engineer.  If this Support Engineer now needs to loop in Sales, and the owner of the account in SFDC is `Pooled Sales User [ DO NOT CHATTER ]`, the [Working with Sales - Salesforce `Account Owner` is `POOLED USER [ DO NOT CHATTER ]`](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/working_with_sales.html#if-the-salesforce-account-owner-is-pooled-user--do-not-chatter-) workflow should be followed.

#### Self Service Ops

- Self Service Ops will pick up the message, respond to the chatter message to acknowledge the request, and create a case as detailed below: 
    - Log a case on the Account. 
    - Select **Create New Case** and select **Pooled Sales Case** as the case record type.
    - Change **Case Origin** to **SMB Pool Internal Created**.
    - Search the **Contact Name** of the end user contact.
    - Describe the ask of the AE in the case **Description**. Include any relevant links or resources.
    - Enter **Support Ticket** in the **Subject** field.
    - Select a **Case Reason** based on the customers needs. If you are unsure of what **Case Reason** to select, please refer to this [document](https://docs.google.com/document/u/0/d/1cWuGo4XCAQmzMBcfUjF7Emr2undkz1ufcUFt4HKmIns/edit).
    - Check the **Assign using active assignment rules** checkbox, and click **Save**.
    - This Case will now drop into the **Pooled Sales Queue**, and will be actioned by a Pooled AE.

### How Pooled AEs work Cases

- If a Pooled AE has capacity, they will click on an open case in the AMER or EMEA Pooled Sales Team Queue and assign it to themselves, by changing the **Case Owner**.
- Based on the email address entered during case creation, the Contact and Account will be automatically populated on the case. If there is no match, the Pooled AE should manually add in the customer Contact. This will then auto populate the Account field.
- Information pertaining to the case will be displated in the **Description** box.
- Once assigned to a Pooled AE, the **Status** should be set to **In Progress**. This will also update the **Date/ Time First Responded** and **Time to First Response** fields.
- The **Case Reason** should be updated based on the nature of the customer's request. If the case owner is unsure of what **Case Reason** to select, they can refer to this [document](https://docs.google.com/document/u/0/d/1cWuGo4XCAQmzMBcfUjF7Emr2undkz1ufcUFt4HKmIns/edit).
- To work the case, the Pooled AE should contact the customer, adding activities to the case, and relating them to any applicalbe renewal opportunity. They are also able to update the **Notes** field on the case,
- Once a Case is considered resolved, the **Status** should be set to one of the four Closed options, and the **Resolution Action** updated. This will automatically update the **Date/ Time Closed** field.
- If applicable, the related opportunity should also be closed. 
- At any time, a Pooled AE can view their cases by navigating to the **My Cases** list view in Salesforce.
- Since these cases are to be worked on a reactive basis, and are deemed low priority, the below follow up cadence should be followed.  

| *Day 1* | *Day 3* | *Day 5*| *Day 7*        | 
|----------------------|--------|-----------------|-------------------|
| Email          | Call | Email   | Email      | 

- A Pooled AE should look to resolve/ close a case within 7 days of it being opened. 

### Ultimate Upgrade Opportunities (AMER)

Even though all AMER Accounts/ Opportunities are owned by the Pooled Sales User, there is one exception where an opp could be AE owned.

- After working a case, should an AE identify an Ultimate Upgrade opp, they are permitted to create and own an upgrade opportunity. (_Ultimate Upgrade_ should be annotated in the _Next Steps_ and _Opportunity Name_)
- Since the AMER Pooled AEs focus on workinG cases, they are only permitted to own 15 active Upgrade opportunities at any one time.
- If a case enters the queue, and the active Upgrade opportunity lives on the same account, the case should be transferred to the AE that is working the Upgrade opp.
- The AMER Pooled ASM will monitor these Upgrade opportunities, and is free to close them out should they not be deemed valid.
- These Ultimate Upgrade opps are tracked on this [dashboard](https://gitlab.my.salesforce.com/01ZPL0000005I4L).

### FAQ
 
Q. 	Will Cases be added to the queue everyday?

A.	Yes, we expect new Cases to be created daily, and to total approx. 80 per month.

Q. 	Can I pick up any Case in the queue?

A.	No, you must pick up the oldest Case currently in the queue.  If multiple cases enter the queue at the same time, pick up the cases marked _High Priority_ first.

Q.	Is there an SLA in place?

A.	Yes, all Cases should be picked up and responded to within 24 hours (8 business hours) of entering the queue.

Q.	What happens if a Case comes into the queue, and another Pooled AE is working a case/ active Upgrade opp under the same Account?

A.	In this scenario, the AE should assign the case to the owner of the current open case/ active Upgrade opp.

Q.  Where can I provide feedback on this model/ process?

A.  Please submit all feedback via the #self_service_ae_feedback_loop slack channel

Q.  Is additional enablement material available?

A.  Yes, please see the content below;
-[AMER slide deck](https://docs.google.com/presentation/d/1IWgcHXbFN5UVNHCWXtF1fKj_9k5h5KlQGClY-2RbqUE/edit#slide=id.g12b319f6181_0_5)
-[EMEA slide deck](https://docs.google.com/presentation/d/1USd3T_KOkixdxY9T0M9jwTKb9V1YkFDeYkoj4Zh57IM/edit#slide=id.g12b319f6181_0_5)

