---
layout: handbook-page-toc
title: "Zoominfo"
description: "ZoomInfo is sales intelligence software that provides a database of business and professional contact information."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### About ZoomInfo

ZoomInfo is sales intelligence software that provides a database of business and professional contact information.

### Set Up
Once you receive your login and enter the Zoominfo platform you will need to download the [Zoominfo ReachOut Chrome extension](https://chrome.google.com/webstore/detail/zoominfo-reachout/fofjcndophjadilglgimelemjkjblgpf). You can also find the link by navigating down to the bottom right of your homepage.

It is recommended to add Zoominfo to your tabs in SFDC. 

To do so click the :heavy_plus_sign:>Click `Customize My Tabs`> Scroll down to find Zoominfo>Highlight it>Hit the right arrow button :arrow_right:>Hit the `Save` button.

### Ways to access Zoominfo
Your direct login allows for direct export into SFDC. However you can also access it directly from the lead, contact, account record within SFDC, or from the tab view as shown above. Lastly, the chrome extension allows for additional functionality while browsing LinkedIn or company websites.

### Training

**To access Zoominfo University:**
- Login to Zoominfo 
- Under your name on the right hand side click on Zoominfo University
- Once you've created your Zoominfo University login the links below will give you direct access

**I'm brand new to DiscoverOrg or Zoominfo! Start here:**

| Title | Duration | Summary |
| ------ | ------ | ------ | 
| [Introduction to Zoominfo (condensed version)](https://university.zoominfo.com/courses/101-introduction-to-zoominfo-condensed)| 6:42 | A general overview covering core concepts, profile info, building a search, saving and subscribing, and tagging.  |
| [Best Practices with Zoominfo (condensed version)](https://university.zoominfo.com/courses/102-best-practices-with-zoominfo-condensed) | 6:23 | Using scoops and more advanced features. We do not currently have Intent, so you can skip this section. |
| [Introduction in Salesforce ](https://university.zoominfo.com/learn/course/101-introduction-in-salesforce-on-demand/training-session/101-introduction-in-salesforce) | 31:15 | This is a general overview of how to use the native integration within SFDC.|


**I've been using DiscoverOrg or Zoominfo already or ready to learn more! Skip to topics that interest you:**

| Title | Duration | Summary |
| ------ | ------ | ------ | 
| [Tagging](https://university.zoominfo.com/learn/course/tagging-hosted-by-dan-veillette/knowledge-center/staff-picks-series-tagging) | 4:54 | A quick review on how to use tags. |
| [Scoops](https://university.zoominfo.com/courses/scoops-hosted-by-joy-bernard) | 10:04 | A guide for searching and filtering for Scoops alerts. |
| [ListMatch](https://university.zoominfo.com/courses/listmatch-hosted-by-amber-jackson) | 13:00 | ListMatch allows you to upload a list of contacts or company information in bulk to run through the Zoominfo search. |
| [Technology and Company Attributes](https://university.zoominfo.com/courses/technology-and-company-attributes-hosted-by-william-stevens) | 3:56 | Learn how to access technology information within a company profile. |
| [Exploring the Sunny Side of Saved Searches](https://university.zoominfo.com/courses/exploring-the-sunny-side-of-saved-searches) | 57:26 | **Skip to 6:40** to learn about general info on saved searches. **Skip to 14:32** for building a saved search. **Skip to 21:30** to learn how to set up an email alert for your saved search. **Skip to 29:17** to learn about how to save Scoops alerts. **Skip to 35:14** for learning about targeting personas with saved searches. **Skip to 38:10** to learn about the tagging feature. **Skip to 43:00** for saving and sharing searches with others.|
| [How to Make a (Sales) Splash with ReachOut](https://university.zoominfo.com/courses/how-to-make-a-sales-splash-with-reachout) | 53:12 | **Skip to 14:10** to see how to use it with LinkedIn. **Skip to 17:00** to export into SFDC. **Skip to 18:00** to build a list from LinkedIn and export in bulk by using tags. **Skip to 30:20** to see how to use the extension on a company website. |

**Sales Enablement Recordings:**

| Title | Duration | Summary |
| ------ | ------ | ------ |
|[Sales Enablement: Saved Searches](https://youtu.be/OpTgvoOQ1jM) | 10:38 | Optimizing your saved searches for your workflow. Please log in to GitLab Unfiltered to access. |
|[Sales Enablement: List Match](https://youtu.be/vl1kpsNa874) | 8:18 | Leveraging list match. Please log in to GitLab Unfiltered to access. |
|[Sales Enablement: Tagging in LinkedIn](https://youtu.be/GQWTZWbMgg8) | 3:44 | Leveraging tagging for LinkedIn and bulk exports. Please log in to GitLab Unfiltered to access. |


Do you have a topic not covered you'd like to see? Slack #zoominfo room or reach out to marketing operations.

To access Zoominfo training sessions specific for GitLab follow [this link](https://university.zoominfo.com/courses/gitlab-inc-recorded-trainings).

To access additional Zoominfo on-demand training follow [this link](https://university.zoominfo.com/pages/on-demand-training).

### Credits

ZoomInfo credits represent the consumption (export) of a professional or company profile from the ZoomInfo platform. This export can originate from the primary ZoomInfo platform, the ReachOut Chrome Extension, or any time an API call is made from any number of our integrations, including CRMs, marketing automation platforms, and sales automation tools. 

-   **Users** -  Monthly credits are set at 1,000 and bulk credits are set at 2,000. 
Each user has 1,000 monthly credits to use for prospecting. A credit is consumed any time a user exports a contact or company out of the platform. These credits reset on the first of each month. When a user pushes "export" it should automatically pull from the monthly credits until a user has utilized all 1,000 of their monthly credits. After those monthly credits are consumed you are then able to use the bulk credits. Bulk credits are adjustable. Monthly credits are not. A user also has 2,000 views in which they can use to click on a contact and view/unlock the contact information.
-   **Accounts** - Max number of accounts a user can export to SFDC is set to 100.
-   **Contacts** - Max number of contacts a user can export to SFDC must match accounts and is set to 100. This is because contacts MUST be associated with accounts in SFDC. When exporting a contact, Zoominfo will check to see if an Account exists within SFDC that matches the company the contact works at. If not, users can create a new account which they will associate the contact to. Enforcing that contact creation is equal to or less than accounts is to make sure there is not a scenario where a contact export fails because they are unable to create the same number of accounts.
-   **Leads** - Max number of leads a user can export to SFDC is set at 1,000. This ensures that the user will not max out their monthly allotment in one export.
-   **Bulk requests** If a bulk download is needed for a campaign, please open an [issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new) for the marketing operations project. Admins have unlimited credits to be able to export bulk lists or a temporary lift can be made for individual users.
-   **Reporting bad leads** - If a lead is found to be incorrect the user can submit a `Suggest Contact Update` and the research team will usually update it within 1-2 business days. When the lead is updated the user can manually append it or re-push the prospect into SFDC without expending a credit (for two months while it's "under management").
-   **API Credits**- Leads, Contacts & Accounts are being enriched [as detailed below](https://about.gitlab.com/handbook/marketing/marketing-operations/zoominfo/#sfdc-account-enrichment) and an API Credit is used everytime the webhook is called (1 per lead/contac/account), regardless of how many fields, on that particlar record, are updated.

### Field Mappings
All current field mappings are documented [here](https://docs.google.com/spreadsheets/d/1lZ2BgNER_OYR5jjYDHreCMRbpODQbprUpGKVRD5TMnY/edit#gid=504148174). 
Custom fields start with [ZI] and will be visible in the Zoominfo section in SFDC. Example name: `[ZI] Company Phone`. All [ZI] fields are set to be able to overwrite the field should new data be available on a lead, contact, or account. The only information mapped to standard fields are fields needed for basic lead, contact, or account creations. Example: `First Name`, `Last Name`, and `Email Address`.

### SFDC Native Integration
- The Salesforce Native App is available on any lead, contact, or account directly within SFDC. 
- The Salesforce Native App only allows users to export 25 at a time. Where as logging in directly and using the standard Salesforce web connector allows you to push up to 2,000 at a time - for any bulk pushes it is recommended you use the normal ZoomInfo website.


## SFDC Account Enrichment
All of Salesforce current accounts in the database have been enriched with Zoominfo. Accounts are scheduled to be refreshed with Zoominfo weekly on Saturdays. Instant Enrich will enrich any new accounts that are created.

## SFDC Lead Enrichment
The lead enrichment jobs currently running in Zoominfo prioritize the following leads: 

1. Leads that are owned by the `SDR Queue` are scheduled to be enriched by Zoominfo weekly on Saturdays. Leads updated by ZoomInfo during this Scheduled Enrich job are reprocessed by LeanData and if possible, assigned to the appropriate SDR. 

2. Leads that either:
- Had a Last Interesting Moment in the last 120 days;
- Have No Phone # OR no Title OR no Email OR have free email AND are not in Raw status AND have not yet been enriched(based on `Zoominfo First Updated` field) ;
- Large & MM leads based on `Employee bucket` field;

All jobs are scheduled to be enriched over the weekend (on Saturdays). 

## SFDC Contact Enrichment
Weekly enrichment in SFDC has been extended to all contacts as of 25th September 2021. 

## Campaign Member Enrichment (Leads & Contacts) 

Zoominfo Campaign Member Enrichment can be done in two ways: 

1. Via Scheduled Enrich with List Views and Enrichment Jobs for both Leads & Contacts (Recommended)
To do this, follow the steps below:
- Mark the leads & contacts with the use of an operational field like **MktgOPS_C**
- Create Lead List Views & Contact List Views and filter using the operational field;
- Create & Schedule Zoominfo enrichment jobs for both leads & contacts and select enrichment via the list views created at the previous step. 
2. Via Instant Enrich via SOQL (Currently buggy)

### Outreach Integration
The ZoomInfo Outreach integration is now live and you may export contacts directly to Outreach. Any contacts you do export, will also be exported in SFDC. They will be initially missing some ZI information in SFDC but there will be an append job that will run automatically to update any missing information.

 There are some limitations in place:

- There is a 100 contact export limit in place.
- We do not allow for new accounts/account updates from ZoomInfo into Outreach. 
- Please do not upload any contact without an email address into Outreach- if you do, the prospect will not sync into SFDC and any activities you do on the prospect will not be recorded in SFDC. 

Any prospects created without email address will be found and deleted in the Outreach database management we will run monthly. To avoid uploading contacts with no email addresses, please use the ZoomInfo filtering available.

### Marketo Integration
There is a Marketo integration utilizing ZoomInfo's **Enrich** product. This is done on an automated basis utilizing a webhook.

Marketo/ZoomInfo if the person record meets the following criteria (on an ongoing/future basis):
1. SaaS Trials
1. Self-managed Trials
1. Filled out Contact Us form 

Enrich is set to update the ZoomInfo fields, `Employees Bucket` and a few Marketo standard fields (First, Last, Title) only if they are blank or unknown. ZoomInfo fields will overwrite with the most up to date information.
