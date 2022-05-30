---
layout: handbook-page-toc
title: "Conversica Dedicated Resource"
description: "This page is a dedicated resource for the Conversica tool that help enterprise marketing, sales, customer success, and finance teams attract, acquire and grow customers at scale."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}
- TOC
{:toc .hidden-md .hidden-lg}

## About Conversica

Conversica is a Conversational AI tool that help enterprise marketing, sales, customer success, and finance teams attract, acquire and grow customers at scale across the customer revenue lifecycle. The AI Assitant works by engaging the prospect in a human like conversation over email in an effort to further qualify the prospect. 

In keeping with our GitLab value of Transparency, our AI assitant is named "Alex Taylor" and it's role is a virtual assitant. 

## Conversica Training:

[SDR GitLab Training](https://hello.chorus.ai/listen?guid=a5622598ccc144cf98384b1e1f4edb91)

[Conversica Help Center](https://conversica.zendesk.com/hc/en-us)


## Conversica Rollout

While rolling out Conversica, we will be using a crawl/walk/run method.

**Crawl**:Associate SDRs will be trained and answered a selected target audience of AMER SMB Trial leads with Personal Emails

**Walk**: We will take filters off of the selected targeted audience and expand across other audiences. 

**Run**: We will be training all SDRs and rolling out to them. 

## Conversica & Salesforce

We have installed a number of fields and a dashboard that will help you navigate the functaility of Conversica.

To find the dashboard, go to your Salesforce Tabs> + sign > search for conversica in the list of apps.

Below are the list of fields available on the Lead and Contact object that will help you understand at what stage the prospect is at in Conversica.

| Field Name | Description |
| ------ | ------ |
| Conversica Date Added | Date the lead was first added to Conversica |
| Conversica First Message Date | Date and time the lead was sent their first Conversica email |
| Conversica Last Message Date | Date and time the lead was sent their most recent Conversica email |
| Conversica Last Response Date | Date and time the lead last replied to Conversica |
| Conversation Stage | Defines the grouping of the lead stage, indicating where the lead is in a conversation. |
| Conversation Stage Date | Date and time the lead stage was last updated. |
| Conversation Status | Provides additional details on the messaging status of a lead. |
| Conversation Status Date | Date and time the Conversation Status was last updated. |
| Conversica Lead Status | Identifies the actionable label of the lead; for example, if they are a Hot Lead, Lead at Risk or if the response needs to be reviewed by a rep/manager. |
| Conversica Lead Status Date | Date and time the Lead Status was updated |
| Conversica Options | Ability to have Conversica follow-up after contact was made, or stop messaging. Details outlined below. |
| Conversica Hot Lead | Checked if the Lead/Contact is a Conversica Hot Lead |
| Conversica Hot Lead Date | Date/Time a Lead/Contact became a Conversica Hot Lead |
| Conversica Action Required | Checked if the Lead/Contact replied in a manner that Conversica has identified needs to be reviewed by a rep. Conversica will no longer message this lead unless they reply indicating interest. |
| Conversica Action Required Date | Date/Time a Lead/Contact was last flagged as Action Required |
| Conversica Lead At Risk | Checked if the Lead/Contact is a Conversica Lead At Risk |
| Conversica Lead At Risk Date | Date/Time a Lead/Contact became a Conversica Lead At Risk |
| Conversica Confirmed Phone 1 | If a new phone number is detected in a lead’s response, this field will be populated with the new number. |
| Conversica Options | This field will allow you to change statuses- you can select stop, which will stop all contact from the AI Assitant or Skip To Follow Up, where Converisca will wait and few days and then follow up with the prospect |

### Lead Views

[Conversica - Accepted](https://gitlab.my.salesforce.com/00Q?fcf=00B4M000004yFgZ) : These leads have been messaged by Conversica and have moved to Accepted- no action needed yet. 
[Conversica - Action Needed](https://gitlab.my.salesforce.com/00Q?fcf=00B4M000004yFgZ) : These leads have responded to Conversica and need an action by you.
[Conversica - Please Review](https://gitlab.my.salesforce.com/00Q?fcf=00B4M000004yFgZ) : These leads have been moved to Nurture or Unqualifed, please review to ensure they are correctly place. 

### Salesforce Lead Management Status:

Salesforce lead statuses will update according to how the conversation with the bot is going:

- if field "Conversica first message sent date" not empty- Lead status= Accepted
- if field "Conversica lead status" = Hot Lead, Lead to Review, Further Action - Lead status = Qualifying
- if field "Conversica lead status" = Satisfied, No Further Action - Lead status = Nurture
- if field "Conversica lead status" = Disqualifed, - Lead Status = Unqualified

We will provide lead views/reports for you to monitor activity. You will also see all email updates in your inbox.

## What actions do I need to take as an SDR?

| Status | Action |
| ------ | ------ |
| Hot lead | Call or send an email within 2 days |
| Lead to Review | Review the conversation and decide on next best steps |
| Further Action | Review the conversation and call or email immediately |
| Disqualifed | Make sure the lead is appropriately marked in SFDC and no further action |
| Continue Messaging | No action required- the bot is messaging the prospect |
| Do not contact | No action required |
| Stop Messaging | No action required |
| Check back later | No action required- the bot will alert you when the prospect is ready |
| Out of Office | No action required- the bot will alert you when the prospect is ready | 



