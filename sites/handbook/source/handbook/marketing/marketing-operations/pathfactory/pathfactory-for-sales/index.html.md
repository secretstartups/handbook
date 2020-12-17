---
layout: handbook-page-toc
title: "PathFactory for Sales"
description: "PathFactory for Sales is an extension of PathFactory within Salesforce that gives the sales development and sales teams a direct view into content and lead insights, and allow them to select content tracks to send to prospects."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## PathFactory for Sales

PathFactory for Sales is an extension of PathFactory within Salesforce that gives the sales development and sales teams a direct view into content and lead insights, and allow them to select content tracks to send to prospects.

### Training

- [PathFactory for Sales SDR onboarding track](https://internal.lookbookhq.com/c/pf-for-sales-one-pag?x=5RhDye)
- [PathFactory for Sales SDR enablement training session](https://drive.google.com/file/d/1mD-rWd6W7d_5O4tHM1lUsQBvVsb5YpAG/view)

### Saved searches

PathFactory for Sales enables you to quickly search your accounts in Salesforce to locate accounts with specific attributes. You can save these search parameters to easily repeat the search in the future.

**There are 2 types of Account Searches:**

1. Shared searches: Configured by any user with a PathFactory administrator login, and are available to all users
1. My searches: Only visible to the user who created the search

**How to create: Shared Search (PF admins only)**

Shared Searches can be seen by all users, but can only be created by PathFactory administrator users.

1. Open the PathFactory for Sales app/tab in Salesforce.
1. Click on `Settings`.
1. Enter your administrator login details. Credentials are stored in the MktgOps Admin 1Pass vault.
1. Click `New Search`.
1. Configure all desired filters, ensure the `Shared Searches` box is selected, and click `Save`.

**How to create: My Search**

1. Open the PathFactory for Sales app/tab in Salesforce.
1. Click `New Search`.
1. Configure all desired filters and click `Save`.

### Content activation

Use the `Content Activation` tab in the PathFactory for Sales app in Salesforce to share content asset links.

**PathFactory for Sales**

1. Navigate to the PathFactory for Sales app/tab.
1. Click on `Content Activation`.
1. Under the `Email Tracking` drop down, select `Outreach Email Template/Snippet`.
1. You can use the `Filter by Track Labels` or `Filter by Content Topics` to quickly find content you'd like to share. Use search for content and tracks using the search bar next to the filter fields. You can also look through the available content tracks located under the `GitLab Content Tracks` folder.
1. From the `Tracks` pane, select the content track you want to view by clicking `View Content Assets`. You can use the sort functionality on this pane to search by `Name` or `Time Spent`.
1. From the `Content Assets` pane, you can select the specific asset you'd like to share. You can choose to `Preview` the asset inside the content track and sort by `Track Order` or `Time Spent`.
1. When you've selected the asset you want to share, click `Copy Link`. A dialogue box will pop up with the following information:

![image](/handbook/marketing/marketing-operations/pathfactory/pathfactory-for-sales/pf-sales-outreach-link.png)

You can use this same process to share content from the lead, contact, account, and opportunity.

**Important: You must use the Outreach option to share links to properly track activity and associate it back to the person you sent it to. If you don't follow this process, the person you send it to may or may not be served a form if they are `unknown` within PathFactory.**

### Fast-Moving Buyer Alerts

A fast-moving buyer alert or FMB alert is an email alert set up in Marketo to send a lead’s details to the lead owner. The alert is triggered when a lead spends at least 90 seconds and views at least 3 assets in a PathFactory experience. Below is an example of what the FMB alert looks like:

![image](/handbook/marketing/marketing-operations/pathfactory/pathfactory-for-sales/fmb-alert.png)

The links in the alert will direct you to the lead or contact record in Salesforce where you can navigate to the PathFactory for Sales section to dive deeper into their content consumption journey. 

### FAQs

**Why do some of my accounts, leads, and contacts have no PathFactory engagement data in Salesforce?**

Sometimes campaigns are run on channels that target an unknown audience (social, display). Some visitors will be anonymous until they are identieifed by a cookie or form fill. To help mitigate this, apply UTM paramters to track the channels the content link track is used on.

**I want to have better conversations with my prospects via Marketing-approved PathFactory Content and track their real engagement. How do I ensure that their content engagement appears within Salesforce?**

The email must be sent via Marketo or Outreach.

**Will anonymous visitors be displayed?**

Yes, anonymous visitors will appear within an account’s engagement summary and will be marked as `anonymous`.

**Are the dashboards visible to all Salesforce users?**

All reports are visible to all users who have access to the account, opportunity, lead, or contact pages.

**Can I export or download this data?**

Engagement data is only available for download from within [PathFactory Analytics](/handbook/marketing/marketing-operations/pathfactory/#pathfactory-analytics), and not via Salesforce.

**Does a content track have to be activated for PathFactory for Sales in order for data to flow through to PathFactory for Sales analytics?**

All content track analytics will appear in PathFactory for Sales even if it is not activated for PathFactory for Sales. 