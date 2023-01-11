---
layout: handbook-page-toc
title: "Pooled Model"
description: "Overview of the SMB AMER Pooled Model"
---

## Pooled Model

All members of the Sales, Support, Billing and Deal Desk teams should familiarize themselves with the Low Touch Sales Motion/ Pooled Model in AMER.  This sales motion leverages team-level account alignment so Pooled SMB customers have a team of AE’s to assist them.  Every AE on the Pooled Account Team is equipped to work with any Pooled customer as the sales point of contact.

Pooled SMB customers are all SMB customers with a CARR of <$1k, and in some cases SMB customers with a CARR of <$3k.

All these Accounts are now owned by [Pooled Sales User](https://gitlab.my.salesforce.com/0058X00000F1YFq?noredirect=1&isUserEntityOverride=1). Note: These Accounts are closely monitored and should not be considered ownerless.

## Pooled Customer Account Ranking

All Pooled SMB customers are now auto Ranked based on a criteria devised by the Self Service team.  These auto Ranks are based on a combination of factors and thresholds (see table below) and are updated on a weekly basis if necessary e.g. a Rank 2 customer may receive substantial funding, which in turn triggers an uptier to Rank 1. If a Pooled AE converses with a customer and decides that the auto Rank needs to be adjusted, they are free to do so in the normal fashion.  Any updates they make will be automatically recorded in the Account Rank Notes History field.

| Tier ↓/SFDC Field → | CARR $ | Total Funding $ | Industry                                          | LAM (LAM dev count) | Combination                   |
|----------------------|--------|-----------------|---------------------------------------------------|-------------------------|-------------------------------|
| Tier 1               | 2,964  | 134,985,000     | N/A                                               | 103                     | Any 1                         |
|                      | 2,400  | 44,909,650      | SaaS, FinTech, Healthcare | 44                      | Any 2                         |
|                      | 1,916  | 20,624,700      | SaaS, FinTech, Healthcare | 29                      | Any 3                         |
| Tier 3               | <1500  | N/A             | N/A                                               | <25                     | Both                          |
| Tier 2               | N/A    | N/A             | N/A                                               | N/A                     | Not equal to Tier 1 or Tier 2 |


## Engaging with Pooled Customers

If a Pooled customer contacts someone at GitLab, and requires sales assistance, your first action should be to check the Account in Salesforce to see if that Account is owned by the Pooled Sales User. If they are and they require sales support, follow this process in order to hand off the customer to a Pooled AE (utilize other channels for other types of requests). At the same time, advise the customer that next time they require sales assistance, they can utilize this customer facing [landing page](https://page.gitlab.com/smbsales).  Note that this landing page should not be used by a GitLab employee.


### Creating a New Case on behalf of a Pooled SMB Customer

- Navigate in Salesforce to the Pooled Account needing attention from a Pooled AE.
- Log a case on the Account (please do NOT Chatter).
- Select **Create New Case** and select **Pooled Sales Case** as the case record type.
- Change **Case Origin** to **SMB Pool Internal Created**.
- Search the **Contact Name** of the end user contact to reach out to.
- Describe the ask of the AE in the case **Description**. Include any relevant links or resources.
- Select a **Case Reason** based on the customers needs. If you are unsure of what **Case Reason** to select, please refer to this [document](https://docs.google.com/document/u/0/d/1cWuGo4XCAQmzMBcfUjF7Emr2undkz1ufcUFt4HKmIns/edit).
- Check the **Assign using active assignment rules** checkbox, and click **Save**.
- This Case will now drop into the **Pooled Sales Queue**, and will be actioned by a Pooled AE.

#### Other Scenarios where a New Case needs to be manually created

- Ideally, Pooled SMB customers should use the form referenced above whenever they need assistance from a Pooled AE.  The reality is however that they will like use other methods to hand raise.  In these scenarios, self service ops will manually createa new case on the customers behalf.

- In conjuction with these alternate hand raise methods, GitLab captures key actions undetaken by Pooled Customers, which will also be turned into cases.  This allows us to quantity, track, and analyze key non selling interactions between Pooled customers and Pooled AEs.

- All these scenarios are detailed below.

| Source | Trigger|
| ------ | ------ |
| Contact Us Form Response | Customer completes this form|
| NPS/ CSAT Response | Survey completion|
| PQL Hand Raise | Survey completion|
| Fast Moving Buyer Alert| Customers consumes content on GitLab.com|

#### Contact Us Form Response

These responses are created when a customer completes this public facing form.  
Once completed, the contact owner receives an email as per the below.  As per the new process, all contacts are owned by Pooled Sales User, and as such, the email alerts are sent to 	selfserviceteam@gitlab.com.  The email alert contains the SFDC link, where the notes from the contact can be seen in the ‘Web Form’ field.

Email Example

![contact-us-screenshot](/images/handbook/sales/contactus.png)

[Case Example](https://gitlab.my.salesforce.com/5008X00002CytL1)

#### NPS/ CSAT Response

These responses are created when a customer completes an NPS/ CSAT survey sent to them through Gainsight.  

When they complete the survey, an email similar to the below is sent to the contact owner.
They are also fed to the cs_programs_survey_results Slack channel. 

Email Example

![nps-screenshot](/images/handbook/sales/nps_csat.png)

[Case Example](https://gitlab.my.salesforce.com/5008X00002CyMk8)

#### PQL Hand Raise

These responses are received when a customer ‘hand raises’ from within GitLab.

Email Example

![pql-screenshot](/images/handbook/sales/pql.png)

[Case Example](https://gitlab.my.salesforce.com/5008X00002CxP8A)

#### Post Churn Survey

Similar to a NPS/ CSAT survey, these responses are received when a customer completes a Post Churn survey sent to them via Gainsight.  As opposed to being emailed to the contact owner, the response are fed through to the below Slack channel.  The Account Owner is also @ mentioned.  

#cs_programs_survey_results

Slack alert Example

![churn-screenshot](/images/handbook/sales/churn.png)

[Case Example](https://gitlab.my.salesforce.com/5008X00002FO7rY)

#### Fast-Moving Buyer

These alerts are created when a contact consumes GitLab content. This engagement is tracked via PathFactory.

Email Example

![fma-screenshot](/images/handbook/sales/fma.png)

[Case Example](https://gitlab.my.salesforce.com/5008X00002FOllP)

### Creating a New Case via the Web Form

- Our Pooled SMB customers will be enabled and educated to use this [landing page](https://page.gitlab.com/smbsales) when they need sales support.

### How Pooled AEs will Handle Cases

- If a Pooled AE has capacity, they will click on an open case in the [Pooled Sales Team Queue](https://gitlab.my.salesforce.com/500?fcf=00B8X000009wTi0) and assign it to themselves, by changing the **Case Owner**. ( Be sure to follow the [Low Touch ROE](https://docs.google.com/document/u/0/d/17oGx-y1UN7MyUYuKGrn-sMkzhNhiahJ4P7ysEfW8qWs/edit) ).
- Based on the email address entered in on the web form, a Contact and Account will automatically be added to the case. If there is no match, the Pooled AE should manually add in the customer Contact. This will then auto populate the Account field.
- The information the customer entered in on the web form will also be listed verbatim in the **Web Form Details Section**.
- Once assigned to a Pooled AE, the **Status** should be set to **In Progress**. This will also update the **Date/ Time First Responded** and **Time to First Response** fields.
- The **Case Reason** should be updated based on the nature of the customer's request. If you are unsure of what **Case Reason** to select, please refer to this [document](https://docs.google.com/document/u/0/d/1cWuGo4XCAQmzMBcfUjF7Emr2undkz1ufcUFt4HKmIns/edit).
- To work the case, the Pooled AE should contact the customer, adding relevant activities to the case, and/ or the renewal opportunity. They are also able to update the **Notes** field on the case, and add Activities/ Log Calls.
- Once a Case is considered resolved, the **Status** should be set to one of the four Closed options, and the **Resolution Action** updated. This will automatically update the **Date/ Time Closed** field.
- At any time, a Pooled AE can view their cases by navigating to the **My Cases** list view in Salesforce.

