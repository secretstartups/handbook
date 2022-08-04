---
layout: handbook-page-toc
title: "Lead Lifecycle Management"
description: "This page is a dedicated resource for information on how GitLab manages it's lead lifecycle"
---
# Lead Lifecycle

This page is a dedicated resource for all information on how we manage our lead lifecycle. We have two elements covering the lifecyle - The Lead/ Contact Status in SFDC, and the Lifecycle Classifications Fields in SFDC. 

## Lead/Contact Status

We have 9 Lead/Contact status to represent where the lead is sitting within our sales cycle in Salesforce. 

| Status | Definition |
|--------|--------|
| Raw | Untouched prospect, default status |
| Inquiry | Action was taken by the record to specifically give their contact information to GitLab |
| MQL | Marketing Qualified through systematic means |
| Accepted | Actively working to get in touch with the lead/contact |
| Qualifying | In 2-way conversation with lead/contact |
| Qualified | SAO created & hand off to Sales team |
| Disqualified | Person has been disqualified from our sales cycle |
| Recycle | Record is not ready for our services or buying conversation now, possibly later |
| Bad Data | Incorrect data - to potentially be researched to find correct data to contact by other means |
| Ineligible | All leads/contacts that are ineligible to go through the sales process after an initial review |

In addition to our statuses, there are substatus that are required for XDRs to use. The substates are in use for the following Statuses: Disqualified, Ineligilble, Recycle & Bad Data:

| Disqualified | 
|-----|
| Bad Buyer Profile |
| ECCN |
| Competitior |
| Consultant |
| Gitlab Employee |
| No Authority |
| Personal Use |
| Student |
| Unsubscribe |
| No longer at company |

|Ineligible |
|----|
| JIHU |
| Support |
| Remote Inquiries |
| Community Contributors |

| Recycle |
| ----- |
| Cannot move forward |
| Doesn't see value |
| Evaluating |
| In current contract |
| Interested in CE only |
| Interested in Gitlab.com only |
| No Budget |
| No interest |
| No response |
| Not ready to buy |
| Payment option limitation |
| Product limitation |
| Staying with subversion option |

| Bad Data |
|---- |
|Bad phone number |
|Bounced email |
|Invalid email |
|No data collected|
|Spam |

## Lifecycle Classifications

We have 6 fields on the lead and contact that's purpose is to represent where the person is in their jouney with GitLab. 

| Field Name | Definition |
|-----|------|
| Unknown | This person has not matched with any accounts and is not a GitLab user |
| User | This person is a GitLab User |
| Prospect Hierarchy | This person has matched with an account that has first order available |
| Customer Hierarchy Account | This person has matched with an account that is a customer in their account hierarchy |
| Former Customer Account | This person has matched with an account that is a former customer |
| Partner Managed | This person is currently being managed by a partner |

The fields are formula fields and have three possible options - `True`, `False` or `-`, `-` means that we don't have enough information to say if the field is true or false so it will stay in `-` until the information becomes available. More information to come on how to leverage these fields. 



