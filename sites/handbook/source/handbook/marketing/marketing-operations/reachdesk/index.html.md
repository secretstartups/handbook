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

# Disclaimer: This page is WIP! 

# About ReachDesk
Reachdesk is a direct mail campaign used to land and accelerate deals to fuel pipeline progression using personalized gifts.
Contact: Customer Success Manager - Aoife Sweeney - aoife@reachdesk.com

### Reporting and Dashboard
Utilise the **Insight** tab on the platform. Customised reports can be created upon request, on a monthly/biweekly basis. Please send email to aoife@reachdesk.com

## How to use 
 
# Building Campaigns
### Creating ReachDesk Campaigns
First off click **New Campaign**. You can then select one of four options:
1. Bundle - using items from our warehouses (currently UK and EU warehouse)
1. E- Gift cards and reward Pass - sending e-gift cards, can choose from a vast selection, region specific. It is recommended to include min 3 types of cards
1. Handwritten Note
1. Marketplace - send a physical gift e.g food hampers, flowers, gift boxes etc

### Bundle
1. Enter campaign name e.g. On-Boarding Bundle.
1. Select warehouse. EU for European sends and UK warehouse for UK ONLY sends.
1. Use the drop down to select what items you would like to send. Note you will need to have stock in your inventory first to do this. 
1. Add a note. TIP - Make sure you always add a handwritten note to increase response rate.
1. Then click save! This will then appear in your Campaigns tab.

### E-Gift cards and reward pass
Gift cards are a great start as there is no sourcing required, cost effective (as you get your money back in 14 days if unclaimed) and instantaneous. Gift cards are sent as an email so ensure you add in a template including subject line and body.
Note - gift cards must be built in the currency of the country you're sending to e.g. Uber Eats GBP only works in the UK not in Germany or Norway etc. 

### Handwitten Note

### Marketplace
Reachdesk marketplace allows you to choose from a range of confectionary, flowers, cakes and other perishables from approved third party providers so you can send gifts on a 1-to-1 basis as an out-of-the- box feature. All items can be customised to give that personal touch. Items can be viewed [here](https://airtable.com/shrIR5jn2LQuADwWg/tblWVU3FlI11uBivB) or you can also view items on the campaign build section without actually building the campaign.

# How to send a campaign

1. Please click the ‘Send Engage +’  button and select the campaign/gift you need to send to a prospect.
1. After selecting the campaign, you need to add personal details, this webpage will be different in case you are sending an e-gift or a physical gift.
1. Check the status of your gifts from the sends tab. E-gifts will be sent out immediately, like an ordinary email. In case of physical gifts you will have a 30 mins window to cancel or edit your orders. After that window expires please reach out to us at support@reachdesk.com in case of further assistance. 


## Project management 

Here is a link to the campaign [planning form](https://form.asana.com/?k=hvl00YjBdxU5Qtet-rjMsQ&d=1193162279639741) - for any items you would like the project management team to source directly to our warehouses for you. This could be branded swag or any other bespoke goods that are not available on the Marketplace. 

## Branded banner for the e-gift emails 

1. This image should be 600x80 pxl in Jpeg/Png format 
1. The branding tab under 'Organization' only needs to be completed once, and is for address confirmation emails 

# Creating a Triggered Campaign

### Trigger Reachdesk sends through Salesforce
1. Go to Triggered Campaign > Create Triggered Campaign. Then under Campaign Trigger, select Connector (Salesforce).
1. Select Salesforce as your connector and choose Object. This will depend on what you have in your own Salesforce.
1. Under Field, select Stage. Other options are  Status, Opportunity ID, Opportunity Type, Probability, and Close Date.
1. Under Field, Select Campaign ID (to ensure it is sent to those in that specific campaign), Comparator is Equals. Under Value, copy and paste the Campaign ID from the URL of the campaign in Salesforce. (You have to create a SFDC campaign first with [these steps](handbook/marketing/marketing-operations/reachdesk/#non-marketo-campaigns))
1. Press AND + to add another field. This will then be sent to all members of that SF campaign. 
1. Click Next and Save campaign
TIP: it's advisable to `Pause` triggered campaigns until it's ready to go live/active.

# Creating a Landing Page

This is one link that can be sent to multiple recipients, and the gifts will be automatically fulfilled via this page. The Landing page can be customised, here are some examples :

1. Create New Campaigns in Reachdesk, choose campaign type Marketplace. For each gift that you intend to offer to the recipient a new campaign will be created.
1. Search the marketplace by choosing Category and/or Country, choose gift and click build campaign
1. Add in a unique campaign name, Include logo and note 
1. In CRM Sync - assign Salesforce name and salesforce Campaign
PLEASE NOTE: Do not tick `Ask recipient to confirm their address` for  campaigns linked to a Landing Page
1. Complete this form to request a landing page: https://form.asana.com/?k=mBpww9IX3k5mRbd1dt4D1A&d=1193162279639741
 
### Best Practices when completing the Landing Page form:
1. Create campaigns before completing the form and add the links of these campaigns into 'What campaign(s) would you like to link to this landing page?`
1. Always state `Yes` for question `Would you like approval on submissions?`
1. Revisions will require additional turnaround time, so please allow 5 - 7 days prior to the launch date

# Shipping to Events
Reachdesk can ship items from our warehouses to events! 
1. Complete this [form](https://form.asana.com/?k=zkc-EX_KMUccxk6U5sq1RQ&d=1193162279639741) to submit an event shipping request
1. All requests must be submitted **2 weeks prior to the event** - but the more notice, the better! After your request is received a member of the reachdesk team will reach out within 24 business hours.
1. Only merchandise/giveaways can be shipped to events. No booths, signage, or other booth branding items. Items will be limited to a weight limit below 1 pallet.
1. Shipping to events is a one-way request, cannot pick up from an event.
 

# How to request an invoice for more credit

1. Go to: Organizations > Balances
1. Click on Add Credit on the top right of the page
1. In the Account & Amount section, select either Company Balance or User Balance and populate the amount of money and currency account you want to top-up.
1. In the Billing Entity section, select which Billing Entity you want the invoice to be addressed. In some cases, there is only one so this should be pre-selected. If there is no billing entity, or you cannot find the right billing entity, please contact support@reachdesk.com so we can add this billing entity to our invoicing system.


All campaigns must have a Salesforce.com attached. If this campaign involves Marketo, please skip to [those instructions](handbook/marketing/marketing-operations/reachdesk/#marketo-campaigns), otherwise follow directions [below](handbook/marketing/marketing-operations/reachdesk/#salesforce-campaigns).

Please use this (Mural TO BE CREATED) to determine your setup.

### Salesforce Campaigns
1. Clone [SFDC template](https://gitlab.my.salesforce.com/7014M000001vgGz) and fill in all necessary fields. You must clone because this template contains the  correct member statuses for the integration.
1. Make sure bizible touchpoints are set to `Include only "Responded" Campaign Members`
1. Create your ReachDesk Campaign
1. TBD


### Marketo Campaigns
1. Directions TBD

### Data Requests and Deletions
Even though Reachdesk stores PII in lieu of GitLab, it is still GitLab's responsibility to follow protocol with personal data and deletion requests. Upon receiving one of these requests through our normal channels, Reachdesk will need to be emailed at `gdpr@reachdesk.com` to check for PII and or delete that data, where applicable. 
