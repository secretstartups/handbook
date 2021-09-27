---
layout: handbook-page-toc
title: "Reachdesk"
description: "Reachdesk is a direct mail provider that we use for sales and marketing campaigns to fuel pipeline progression using personalized gifts"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

# Disclaimer: This page is WIP! We expect Reachdesk to be functional in Q3.

# About ReachDesk
Reachdesk is a direct mail campaign used to land and accelerate deals to fuel pipeline progression using personalized gifts.

## Successful Usage
TBD - FM to fill in

### Reporting and Dashboard
TBD

## How to use 
 

# Building Campaigns
### Creating ReachDesk Campaigns
There are four options of campaigns to choose from
1. Bundle - using items from our warehouses (currently UK and EU warehouse)
1. E- Gift cards and reward Pass - sending e-gift cards, can choose from a vast selection, region specific. It is recommended to include min 3 types of cards
1. Handwritten Note
1. Marketplace - send a physical gift e.g food hampers, flowers, gift boxes etc

## Project management 

Here is a link to the campaign planning form [https://form.asana.com/?k=hvl00YjBdxU5Qtet-rjMsQ&d=1193162279639741] - for any items you would like the project management team to source directly to our warehouses for you. This could be branded swag or any other bespoke goods that are not available on the Marketplace. 

## Branded banner for the e-gift emails 

1. This image should be 600x80 pxl in Jpeg/Png format 
1. The branding tab under 'Organization' only needs to be completed once, and is for address confirmation emails 

# Creating a Triggered Campaign

### Trigger Reachdesk sends through Salesforce
1. Go to Triggered Campaign > Create Triggered Campaign. Then under Campaign Trigger, select Connector (Salesforce).
1. Select Salesforce as your connector and choose Object. This will depend on what you have in your own Salesforce.
1. Under Field, select Stage. Other options are  Status, Opportunity ID, Opportunity Type, Probability, and Close Date.
1. Under Field, Select Campaign ID (to ensure it is sent to those in that specific campaign), Comparator is Equals. Under Value, copy and paste the Campaign ID from the URL of the campaign in Salesforce.
1. Press AND + to add another field. This will then be sent to all members of that SF campaign. 
1. Click Next and Save campaign
TIP: it's advisable to `Pause` triggered campaigns until it's ready to go live/active.

# Creating a Landing Page

This is one link that can be sent to multiple recipients, and the gifts will be automatically fulfilled via this page. The Landing page can be customised, here are some examples

1. Create New Campaigns in Reachdesk, choose the type of campaign, Marketplace. For each gift that you intend to offer to the recipient a new campaign will be created.
1. Search the marketplace by choosing Category and/or Country, choose gift and click build campaign
1. Add in a unique campaign name, Include logo and note 
1. In CRM Sync - assign Salesforce name and salesforce Campaign
PLEASE NOTE: Do not tick `Ask recipient to confirm their address` for  campaigns linked to a Landing Page
1. Complete this form to request a landing page: https://form.asana.com/?k=mBpww9IX3k5mRbd1dt4D1A&d=1193162279639741
 
### Best Practices when completing the form:
1. Create campaigns before completing the form and add the links of these campaigns into 'What campaign(s) would you like to link to this landing page?`
1. Always state `Yes` for question `Would you like approval on submissions?`
1. Revisions will require additional turnaround time, so please allow 5 - 7 days prior to the launch date


# How to request an invoice for more credit

1. Go to: Organizations > Balances
1. Click on Add Credit on the top right of the page
1. In the Account & Amount section, select either Company Balance or User Balance and populate the amount of money and currency account you want to top-up.
1. In the Billing Entity section, select which Billing Entity you want the invoice to be addressed. In some cases, there is only one so this should be pre-selected. If there is no billing entity, or you cannot find the right billing entity, please contact support@reachdesk.com so we can add this billing entity to our invoicing system.


### Non-Marketo Campaigns
All campaigns must have a Salesforce.com attached. If this campaign involves marketo, please skip to those instructions, otherwise follow directions below:

1. Clone [SFDC template](https://gitlab.my.salesforce.com/7014M000001vgGz) and fill in all necessary fields. You must clone because this template contains the  correct member statuses for the integration.
1. Make sure bizible touchpoints are set to `Include only "Responded" Campaign Members`
1. Create your ReachDesk Campaign
1. TBD


### Marketo Campaigns
1. Directions TBD
