---
layout: handbook-page-toc
title: "Pooled Model"
description: "Overview of the SMB AMER Pooled Model"
---

## Pooled Model

All members of the Sales, Support, Billing and Deal Desk teams should familiarize themselves with the Low Touch Sales Motion/ Pooled Model in AMER.  This sales motion leverages team-level account alignment so Pooled SMB customers have a team of AE’s to assist them.  Every AE on the Pooled Account Team is equipped to work with a Pooled customer as the sales point of contact.

Pooled SMB customers are all SMB customers with a CARR of <$1k, and in some cases SMB customers with a CARR of <$3k.

Pooled Accounts are owned by Poooled AE's (Tier 1/1.5 accounts), and by [Pooled Sales User](https://gitlab.my.salesforce.com/0058X00000F1YFq?noredirect=1&isUserEntityOverride=1) (Tier 2/3 accounts). Note that accounts owned by the Pooled Sales User closely monitored and should not be considered ownerless.

## Pooled Customer Account Ranking

All Pooled SMB customers are now auto ranked/ tiered based on a criteria devised by the Self Service team.  These auto ranks are based on a combination of factors and thresholds (see table below).

| Tier ↓/SFDC Field → | CARR $ | Total Funding $ | Industry                                          | LAM (LAM dev count) | Combination                   |
|----------------------|--------|-----------------|---------------------------------------------------|-------------------------|-------------------------------|
| Tier 1               | 2,964  | 134,985,000     | N/A                                               | 103                     | Any 1                         |
|                      | 2,400  | 44,909,650      | SaaS, FinTech, Healthcare | 44                      | Any 2                         |
|                      | 1,916  | 20,624,700      | SaaS, FinTech, Healthcare | 29                      | Any 3                         |
| Tier 3               | <1500  | N/A             | N/A                                               | <25                     | Both                          |
| Tier 2               | N/A    | N/A             | N/A                                               | N/A                     | Not equal to Tier 1 or Tier 2 |


Rank 2 & 3 accounts are re-ranked on a monthly basis, and should any meet the criteria to be a Rank 1 account, their rank will be updated and the account auto assinged to a Pooled AE. 

If they are re-ranked from Rank 2/3 to Rank 1, it will be due of 1 of 3 scenarios;

1. Renewal Uptier = An increase in CARR moved them to Rank 1
2. Non renewal Uptier = A recent change in funding or LAM Dev count moved them to Rank 1.
3. New Account moving from FO to Pool = A new account enters the Pool that hits the criteria to be a Rank 1.

Rank 1 accounts will not be re-ranked on a monthly basis.  They will only be re-ranked at time of renewal. This means that the Pooled AE owning this account will own them throughout their subscription term.  

If an account churns, it is possible that the account will be downtiered, and moved to the Pooled Sales User. 

If an AE engages with a Rank 2/3 account via a case (Rank 2/3 account case creation is detailed below), they can nomiate the account to be uptiered to a Rank 1.

They can only do this if strict criteria is met;

1. The account was enriched incorrectly, i.e the website does not match the company name.  This would mean that industry, funding, LAM dev count are void and the autmated rank cnnot be relied upon, AND
2. The renewal date is not in the next 30 days, AND
3. The AE has engaged, and logged an activity on the contact/ acount/ case/ opp within the last 7 days, AND
4. Add on/ License increase quote with nARR >$0 has been created.

An AE cannot manually uptier or downtier an account. 

**A Pooled AE can is however free to prioritize the accounts they own, by shifiting them from to a Rank 1, to 1.5.  This will not change account ownership.**


## Account Ownership

Pooled AEs own all Pooled accounts where the Rank = 1/ 1.5.
As detailed above, accounts are auto ranked by Self Service Ops.
At the start of FY24, all Pooled AEs will own approx 50 accounts. Based on our analysis, this will increase to 80 as new accounts enter the Pool throughout the year.
This represents approx 15% of the total Pooled Account base.
These customers have high growth potential, and require dedicated AE coverage

The Pooled Sales User will own all accounts where the Rank = 2/ 3.
This represents 85% of the total Pooled Account base.
These customers are mainly self serve and do not warrant dedicated AE focus. They will only be engaged with on a transactional basis, when sales assistance is absolutely nessecery.

## Opportunity Ownership

Each Pooled AE will own all opportunities under the accounts they own (Pooled Accounts where the Rank = 1/1.5)
This includes QSR and Web Direct opp that are auto created & auto closed won under these accounts.

The Pooled Sales User will own all opportunities under Pooled accounts (Pooled Accounts where the Rank = 2/3), including scenarios where an AE was required to engage to transact the renewal opportunity. 
This includes QSR and Web Direct opportunities that are auto created & auto closed won under these accounts.


## Engaging with Tier 1 Accounts

Pooled AEs own Rank 1/1.5 Accounts and Opportunities, and they should focus on growing these accounts.  These accounts/ opps can be viewed and worked through any report/ list view set to 'My Accounts', or 'My Opportunities'

## Engaging with Tier 2/3 Accounts

Since Rank 2/3 accounts are owned by the Pooled Sales User, Pooled AEs will only engage with these customers when any of the below scenarios are triggered, and will engage through the subsequent case that is created.

Triggers are split into 3 categories based on the scenario type.  The category a trigger falls into it is annotated in the subsequent case subject line;

- RT: Reactive Trigger. Due to a GitLab internal challege, the customer will need sales assistance in order to transact.
- PRO: Proactive Trigger.  Due to customer behavior, they would welcome a conversation with sales due to increase usage/ growth. 
- HR: Hand Raise. The customer has notified us that they require sales assistance. 

### Failed Auto Renewals - Reactive Trigger

These customers think they are going to auto renew, but they will not. They need a Pooled AE to help them transact the renewal. 

#### Process

Every month, the Product team identifies all Auto Renewal Opps that are destined to fail.
Once identified, this list of renewal opportunities, that now require Sales Assistance, is published via Highspot, and on a SFDC dashbaord. 
Once the list is published, Self Service Ops will create cases for each opp due to fail.  

The cases are expected to enter the [Pooled Sales Team Case Queue at least 30 days before the opp close date. 
Once these cases enter the queue, they should be picked up on a first in first out basis.  
Should the AE need to adjust the close date, add notes, create a new quote on the opp in question (which will be listed in the case), they are free to do so.  
Once resolved, the case and the opp should be closed by the AE.

#### Policy

Once cases are created based on auto renewal opps that are due to fail, an AE should pick up the case on a first in first out basis.  The oldest open case in the queue should always be picked up first, regardless of the case subject. 
When they work the case, and set to the opp to close won, credit will fall under the Pooled Sales User

#### AE Steps

- View the [Pooled Sales Team Case Dash](https://gitlab.my.salesforce.com/01Z8X000001Dk59) or [Pooled Sales Team Case Queue](https://gitlab.my.salesforce.com/500?fcf=00B8X000009wTi0) to view the open case.
- (The case will have the subject **RT: Upcoming Auto Renewal Due to Fail: XX.XX.XXXX**
- Click on the Case number
- Confirm there are no open Pooled Cases currently on the account.  If there are, transfer the case to the AE that is working the other case.
- Click **Change** next to the Case Owner field
- Enter your name in the Owner Name box, and click **Save**
- Contact the customer listed on the Case (The renewal opp link will also be contained the case description)
- Update the Case, and the Opp as needed. 
- Activities should be logged on the case, and related to the contact and opp in question

### Failed QSRs - Reactive Trigger

A customer may need education on the QSR process and assistance in transacting, or purchasing additional licenses. 

#### Process

On a daily basis, Self Service Ops will identify QSR opps owned by the Pooled Sales User, that are greater than 14 days old and are not set to closed won.  
This means that the opp failed to reconcile and the customer needs assistance.
Cases will be created for these QSR opps that are > 14 days old, which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed under the preceeding trigger, however the case will have the subject **RT: Failed QSR: XX.XX.XXXX**

### EoA Renewals - Reactive Trigger

EoA customers are unable to auto renew. 

#### Process

On a daily basis, Self Service Ops will identify EoA opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **RT: Upcoming EoA Renewal: XX.XX.XXXX**

### Multi Year Renewals - Reactive Trigger

Bespoke non standard term subscriptions are unavailalble for auto renew.

#### Process

On a daily basis, Self Service Ops will identify Multi Year opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **RT: Upcoming Multi Year Renewal: XX.XX.XXXX**

### PO Purchases - Reactive Trigger

Purchases made via a PO are unable to be auto renewed.

#### Process 

On a daily basis, Self Service Ops will identify PO Required opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **RT: Upcoming PO Required Renewal: XX.XX.XXXX**

### Auto Renewal Turned Off - Reactive Trigger

A customer has chosen not to auto renew.

#### Process

On a daily basis, Self Service Ops will identify Non Auto Renewing opps owned the Pooled Sales User, that are 60 days out. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

Ss detailed above, however the case will have the subject **RT:Upcoming Non Auto Renewal: XX.XX.XXXX**

### Overdue Renewals - Reactive Trigger

If a customers renewal is past due, there service may be paused/ switched off.

#### Process

On a daily basis, Self Service will identify past due renewal opps owned the Pooled Sales User.
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

Note that a case may be created based on a past due renewal opp that also previously triggerd one of the above scenarios i.e an overdue renewal opp where a PO is required.  When this occurs, the newer case will be auto assinged to the owner of the prior open case on the account.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **RT: Past Due Renewal: XX.XX.XXXX**

### New 5* PTE Accounts - Proactive Trigger

Accounts that were recently updated and now have a PTE of 5, indicating there is potential for growth.

#### Process

On a daily basis, Self Service Ops will identify accounts owned by the Pooled Sales User that were updated to 5* PTE in the last 30 days.
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: New 5* PTE Account**

### New 1* PTC Accounts - Proactive Trigger

Accounts that were recently updated and now have a PTC of 1, indicating there is a high chance they will churn.

#### Process

On a daily basis, Self Service Ops will identify accounts owned by the Pooled Sales User that were updated to 1* PTC in the last 30 days.
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: New 1* PTC Account**

### Accounts likely to upgrade to Ultimate - Proactive Trigger

Similar to accounts with a high PTE, these customers could benefit from features found in Ultimate. 

#### Process

On a daily basis, Self Service Ops will identify accounts owned by the Pooled Sales User that were updated to say 'Likely to upgrade to Ultimate = True'. 
Cases will be created for these which will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: Likely to Upgrade**

### Accounts with Overages - Proactive Trigger

These customers will likely need to purchase additional licenses.  

#### Process

On a daily basis, Self Service Ops will identify Self Managed accounts with overages of > $1k and SaaS accounts with an overage of >$0k, that are 60 days out, and create cases for these.
These cases will subsequently drop into the Pooled Sales Queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **PRO: New overage detected**

### Pooled Web Form - HR

A customer has visitied the dedicated Pooled customer [landing page](https://page.gitlab.com/smbsales), and submitted a question.

#### Process

When a customer fills in the Pooled Team Web Form form, a case is automatically created that enters the Pooled Sales Team case queue.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **New Case [Contact] at [Account]**

### Contact Sales Request - HR

A customer has visited the Contact Us [landing page](https://about.gitlab.com/sales/), and submitted a question.

#### Process

When a customer fills in the Sales Contact Us form, a case is automatically created that enters the Pooled Sales Team case queue.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: Contact Sales Request**

### Hand Riase PQL - HR

A customer has requsted assistance from within the product. 

#### Process

When a customer Hand Raises, a case is automatically created that enters the Pooled Sales Team case queue.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: Hand Raise PQL**

### NPS/ CSAT Survey Response - HR

A customer is willing to share their feedback, and has submitted a survey response.

#### Process

When a customer completes a survey, Self Service Ops creates a case that enters the Pooled Sales Team case queue.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: NPS/CSAT Survey Response**

### Post Churn Survey Response - HR

A customer is willing to share thier feedback, even though they recently decided to part ways with GitLab.

#### Process

When a customer completes a survey, Self Service Ops creates a case that enters the Pooled Sales Team case queue.

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: Post Churn Survey Response**

### SDR Created - HR

A customer has interacted an SDR, most likely via live chat. They now need assistance an Account Executive.

#### Process

When an SDR they interacts with a Pooled Customer, and they need to hand over the customer to the Pooled AE, they create a case that drops into the Pooled Sales Team case queue. 

#### Policy

As detailed under the preceeding trigger.

#### AE Steps

As detailed above, however the case will have the subject **HR: SDR Created**


### Support Ticket

If the Pooled Customer raises a support ticket, it will be picked up via Zendesk by a Support Engineer.  If this Support Engineer now needs to loop in Sales, and the owner of the account in SFDC is `Pooled Sales User [ DO NOT CHATTER ]`, the [Working with Sales - Salesforce `Account Owner` is `POOLED USER [ DO NOT CHATTER ]`](sites/handbook/source/handbook/support/license-and-renewals/workflows/working_with_sales.html.md) workflow should be followed.

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

- If a Pooled AE has capacity, they will click on an open case in the [Pooled Sales Team Queue](https://gitlab.my.salesforce.com/500?fcf=00B8X000009wTi0) and assign it to themselves, by changing the **Case Owner**.
- Based on the email address entered during case creation, the Contact and Account will be automatically populated on the case. If there is no match, the Pooled AE should manually add in the customer Contact. This will then auto populate the Account field.
- Information pertaining to the case will be displated in the **Web Form Details Section**, and/ or the **Description** box, based on the trigger that created the case.  If the case was creaetd from a Reactive Trigger (RT), the relevant renewal opportunity will be listed in the **Description** box.
- Once assigned to a Pooled AE, the **Status** should be set to **In Progress**. This will also update the **Date/ Time First Responded** and **Time to First Response** fields.
- The **Case Reason** should be updated based on the nature of the customer's request. If the case owner is unsure of what **Case Reason** to select, they can refer to this [document](https://docs.google.com/document/u/0/d/1cWuGo4XCAQmzMBcfUjF7Emr2undkz1ufcUFt4HKmIns/edit).
- To work the case, the Pooled AE should contact the customer, adding activities to the case, and relating them to any applicalbe renewal opportunity. They are also able to update the **Notes** field on the case,
- Once a Case is considered resolved, the **Status** should be set to one of the four Closed options, and the **Resolution Action** updated. This will automatically update the **Date/ Time Closed** field.
- If applicable, the related opportunity should also be closed. 
- At any time, a Pooled AE can view their cases by navigating to the **My Cases** list view in Salesforce.

### FAQ
 
Q. 	Will Cases be added to the queue everyday?

A.	Yes, we expect new Cases to be created daily, and to total approx. 80 per month.

Q. 	Can I pick up any Case in the queue?

A.	No, you must pick up the oldest Case currently in the queue.

Q.	Is there an SLA in place?

A.	Yes, all Cases should be picked up and responded to within 24 hours (8 business hours) of entering the queue.

Q.	What happens if a Case comes into the queue, and another Pooled AE is working a case under the same Account?

A.	In this scenario, the new Case will automatically assigned to the owner of the current open case.  Regardless, when picking up a case you should check the account to double check no open Pooled Sales Cases exist on the case.

Q.  Where can I provide feedback on this model/ process?

A.  Please submit all feedback via the #self_service_ae_feedback_loop slack channel

