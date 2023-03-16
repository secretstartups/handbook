---
layout: handbook-page-toc
title: "Cognism"
description: "Cognism is sales intelligence software that provides contact or account data helping sales and marketing teams drive predictable pipeline"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### About Cognism

Cognism is sales intelligence software that provides contact or account data helping sales and marketing teams drive predictable pipeline

### Set Up

Once you receive your login and enter the Cognism platform you will need to download the Cognism Chrome extension. You can also find the link for the Cognism Chrome Extension by following this [link](https://help.cognism.com/hc/en-gb/articles/4403402216722-How-to-install-the-Cognism-Chrome-Extension). 

### Connect your tools

Once you are logged in into your Cognism Web-App, start by connecting your tools (Salesforce & Outreach). This will allow you to export leads to both tools. 

Even though this process is very straight forward, feel free to reference the [How to Integrate Cognism to Salesforce](https://help.cognism.com/hc/en-gb/articles/4407455139602-How-to-Integrate-Cognism-to-Salesforce-) and [How to Integrate Cognism to Outreach](https://help.cognism.com/hc/en-gb/articles/4403394602130-How-to-integrate-Cognism-to-Outreach) documentations if need be. 

### Ways to access Cognism

Your direct login allows you to login in either the [Cognism Web App](https://app.cognism.com/auth/sign-in) or in the Cognism Chrome Extension. Both can be used to access the Cognism data. Additionally, Cognism data is populated directly into our SFDC instance, on the Cognism fields for the leads that meet the criteria to be automatically enriched or, on the leads that have been exported manually from the Chrome Extension or from Cognism Web App. 

### Who can use Cognism at Gitlab?

For the moment, the Cognism Web App and the Cognism Chrome Extension are only used by the Sales Development Organization and specifically by the BDR role. We do allow for temporary licenses outside of the BDR role if we have them available, however, the temporary license will get revoked as soon as a BDR needs it. 

The Cognism data that was enriched on specific lead records, however, can be viewed by anyone by just checking the Cognism fields on the lead & contact objects. 

### Training

Both the Cognism Web App and the Cognism Chrome Extension are self explanatory and very user friendly, however, Cognism does provide additional videos that can be viewed to get familiar with the tool. 

| Title | Duration | Summary |
| ------ | ------ | ------ | 
| [Cognism Chrome Extension Intro](https://www.youtube.com/watch?v=D0kv7aF7Iho&ab_channel=Cognism)| 2:04 | A general overview of the Cognism Chrome Extension|
| [Cognism Chrome Extension Workflow](https://www.youtube.com/watch?v=GduWMj4nzx8&ab_channel=Cognism)| 1:13 | Cognism Chrome Extension Workflow Examples|
| [How to Use Cognism for Sales - Product Tour](https://www.youtube.com/watch?v=4YG5NhxbN-w) | 10:40 | Cognism Platform Product Tool|
| [How to Use Cognism for Marketing](https://www.youtube.com/watch?v=4YG5NhxbN-w) | 04:19 | How to use the Cognism platform to power-up your marketing engine |

### SFDC Field Mappings

With Cognism, we're only enriching Cognism custom fields so the mapping reflects this. You'll find these fields by looking for `[Cognism]` in their field label name. On the lead & contact layouts, you'll find the Cognism Section, right below the Zoominfo Section. 

If you have concerns about field mapping or you notice that some of the fields do not get enriched as expected, do reach out to Marketing Operations. 

### Outreach Integration

The Cognism Outreach integration is live and you may export contacts directly to Outreach. Any contacts you do export, will also be exported in SFDC. 

There are some limitations in place:

- We do not allow for new accounts/account updates from Cognism into Outreach.
- Please do not upload any contact without an email address into Outreach- if you do, the prospect will not sync into SFDC and any activities you do on the prospect will not be recorded in SFDC.
- Any prospects created without email address will be found and deleted in the Outreach database management we will run monthly. To avoid uploading contacts with no email addresses, please use the Cognism filtering available.

### Use of Cognism Enhance feature to enrich lead list uploads without email

There are situations where list uploads, obtained from various events, do not have an email and, therfor, cannot be uploaded into our SFDC instance. To bypass this challenge, we use the [Cognism Enhance](https://help.cognism.com/hc/en-gb/articles/4404423963026-Using-Cognism-Enhance) feature.  It only needs certain data points (`First Name`, `Last Name`, `Company Name`) to be able to fill in the rest (`Email`). 

If your lead list does not have is missing the email data point, feel free to open a Mops project with this issue template, fill in the needed details, and the missing data will be added for those leads that match to Cognism's database. 

**NOTE:** All leads that have been enriched with email information, are, by default, opted out of email communication. These are not opted in and we can only reach out if we get the proper `express consent`. 

### Cognism <> Openprise Automated Enrichment

Using Openprise and the Cognism API Key, we're able to leverage our Cognism Credits and automatically enrich salesforce records on a daily basis. Once the record meets the below criteria, it is added to the enrichment queue and automatically enriched if it matches Cognism's database. 

The current enrichment criteria is the following: 

1. `Owner Profile` contains `SDR, Sales Development` *AND* `Initial Source` equals `AE Generated, Cognism, DiscoverOrg, Email Request, etc.`, `Lead Status` equals `Accepted`, *AND* `Created By` not equal to `Marketo Integration, Outreach Integration`; 
2. `Last Interesting Moment Date` equals `Last 30 Days` *AND* `[PQL] Product Qualified Lead` equals `True` *AND* `[PTPT] Score Group` equals `4,5`;
3. `Initial Source` equals `Zoominfo` *AND* (`Phone` equals `blank` *OR* `Email` equals `blank`) *AND* `Demographic Score` greater than `59`;
4. `Initial Source` equals `Request - Contact` *AND* (`Phone` equals `blank` *OR* `Email` equals `blank`) *AND* `Lead Owner` does not contain `disq,inel,jihu`.






