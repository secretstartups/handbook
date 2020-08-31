---
layout: handbook-page-toc
title: "List Imports"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The MktgOps team is responsible for importing records into Marketo for both field events and prospecting. List imports are processed in **Marketo** which has native matching by `Email Address` functionality.    

**Field event list uploads are to be done *before* any kind of follow up or outreach is done so we can ensure proper order of operations & attribution is given correctly.**

There are three primary ways to import records into the database:

| Import Method | SLA | Submission Instructions | Operations Instructions |
| :------------ | :-- | :---------- | :-------- |
| DiscoverOrg VisualForce w/in SFDC | self-managed | [Instruction video how to do this](https://drive.google.com/file/d/1saQqwLuVpy50LfIH0tkXY_dUt4Rybxth/view?usp=sharing) | Not applicable |
| csv file | **Accepted by OPS** - 24 business hours<br><br>**Upload to SFDC** - up to 5 business days | Use [MktgOPS **general** list import request template](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=general-list-import-request), format as a Google Sheet (Gsheet) & place **link to Gsheet in issue**<br><br>[Written Instructions how to use template](#import-cleaning-template) | [Ad Hoc Upload](#ad-hoc-import) |
| List from Field Event, Sposorship or Advertising | **Accepted & uploaded by OPS** - 24 business hours | Use [MktgOPS **event** clean and upload issue template](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=event-clean-upload-list), format and clean csv per instruction & place **link to Gsheet in issue**<br><br>[Written Instructions how to use template](#import-cleaning-template) | [Field Event Upload](#field-and-corporate-event-import)<br><br>[Alliance Event Upload](#alliance-event-upload) |
| List for Acceleration SDR Team | TBD | Template Instructions are WIP | [Acceleration Upload](#acceleration-team-monthly-import) |

#### Import Methods and their SLA
The SLA for each import method has been decided based on the perceived optimal response time. The turnaround time for an `Event, Sponsorship and or Advertising` list upload is deemed a high priority due to the nature of necessary `SDR` outreach on "warm" prospects. If a list of prospects cannot be considered "warm", please expect a turnaround time of the listed 5 day SLA and use the appropriate template.


#### If a last minute request, please open issue any way and ASK for a faster turnaround or ping OPS in `#mktgops` slack channel to discuss options.
{:.no_toc}


The following data cleanup is required for any list prior to sending it to the Operations team. **If your spreadsheet/data does not meet these guidelines it will returned to you to fix prior being uploaded.**
- Preferred format is .csv, but will accept an .xls, or .xlsx - provide as Google Sheet **DO NOT** upload the file directly on the issue
- It is the responsibility of the person submitting the list to clean the list utilizing the [import cleaning template](#import-cleaning-template)
- All fields are separated into their own column
     - Person name separated into two columns - `First Name` `Last Name`
     - Address separated into individual fields (`Street`, `City`, `State/Province`, `Zip/Postal Code`, `Country`)
     - Specify if address is for the CONTACT or the ACCOUNT
     - `Country` that **are not** `United States` or `Canada` *must* have `State` field deleted or cleared as it will create conflicts
- Record ownership will be assigned using the [Account Ownership Rules of Engagement](/handbook/business-ops/resources/#account-ownership-rules-of-engagement)
- ADD column for `Source` and provide the source where the names came from (LinkedIn, DiscoverOrg, Event, etc) - see [Initial Source definitions](/handbook/business-ops/resources/#initial-source) if unsure
     - DiscoverOrg is the ONLY approved & GDPR compliant source for EMEA records, all other sources will be rejected
- If there are any records who have opted out of contact for any reason please be sure to define that on the spreadsheet

#### Best Practices
1. Remove inaccurate entries
     - `Title` **remove** "self", "me", "n/a", etc
     - `Phone` **remove** obvious junk numbers 0000000000, 1234567890, etc
1. **Blank fields** are better than junk data. We have enrichment tools that are designed to write to blank fields. Also we can run reports on the blank fields to find where our data gaps are.
1. If you do not have a CONTACT `Phone` **do not** substitute the ACCOUNT `Phone` and vice versa. Leave it blank.
1. Sort spreadsheet by `Email Address` and remove duplicates.
1. Only records from authorized sources that have verifiable GDPR compliance will be flagged as `GDPR Compliant`.
     - Pulling list of names out of LinkedIn and importing the records into SFDC **does not** qualify as compliant. In EMEA these lists *will not* be uploaded
     - Field events that have not gained consent from the attendees that their name will be shared **are not** compliant.
     - Getting someone's name and/or business card from a meetup **does not** qualify as compliant.
1. Remove all [embargoed country](https://about.gitlab.com/handbook/people-group/code-of-conduct/#trade-compliance-exportimport-control) records. 
1. `Washington DC` is a `State` value and is not to be split up between `City` `State`. 
1. `Zip Codes` contain five (5) numbers, States in US East may start with a `0`, make sure the `Zip/Postal Code` field is **plain text** and the leading `0` appears. 
1. If list contains non-Latin characters (ex. Asian languages), it must be uploaded to Marketo using UTF-8 and UTF-16. [Marketo instructions here](https://docs.marketo.com/display/public/DOCS/Import+a+Non-Latin+Characters+List). Salesforce Data Loader requires UTF-8 encoding, [instructions here](https://help.salesforce.com/articleView?id=faq_import_dataloader_specialchars.htm&type=5).

### Import Cleaning Template

Use [this template](https://docs.google.com/spreadsheets/d/1INbR1I-2REF1n4C7XVatdEft9lQjBp3zrWo2cMnvN-Q/edit#gid=1927309383) which uses formula fields to
* cleanup proper case of name, job title, address
* use lookup of SFDC-accepted state/province and country
* alert to any duplicate email addresses, gitlab email addresses, or possibly inaccurate email syntax

**Steps (also documented in *How it Works* sheet):**
1.	Keep your data in the original export version so you can always check back on an untouched file
1.	Use the "DROP IT HERE" tab to drop your relevant data into the matching blue columns in the left-most rows (i.e. copy the column in your file for "First Name" and paste it in the column "First Name")
1.	**Do not** add or delete any columns that are present on the spreadsheet. The data **must** remain in the column order as presented.
1.	Do not touch any rows with the green column headers. These contain formulas that will reference your inputs and provide you with proper capitalization (see clarifications below for more detail), as well as data entry that is acceptable for Salesforce, and check the syntax of the email provided by your event organizer.
1.	Check for any ""warnings"" highlighted in red in the green columns - if there are none, you are good to go! (If there are highlighted cells, follow the instructions in the *Warning Handling* steps below. Correct the errors and then proceed.)
1.	Copy the columns with the green header and PASTE > VALUES into a new sheet of your original doc.
1.	Pass this to MktgOPS for next step in the list cleaning process.

**Error Handling:**
* **Email Syntax:** If the syntax of the email is not met (meaning it includes @ and a relevant ending such as .com or .co.uk or .io) it will be listed as FALSE and the email can be updated to make it ready for upload.
* **GitLab emails:** If the person has @gitlab in their email address, they will appear Orange, and should be removed from the list.
* **Duplicate Records:** If the person is a duplicate based on email address, they will appear Red, and should be removed from the list.

Video of how this works tbd.


### Operations Upload Instructions 

* [Field & Corporate Event Import](#field-and-corporate-event-import)
* [Alliance Event Import](#alliance-event-import)
* [Ad Hoc Import](#ad-hoc-import)
* [Acceleration Team Monthly Import](#acceleration-team-monthly-import)

#### Field and Corporate Event Import

##### Booth Leads
{:.no_toc}

- Create folder in corresponding Marketo program called “Lists”
- Add a static list to the folder title with the same Campaign_Name_Leads
- Check that Interesting Moments Smart Campaigns have been correctly activated
- Double check the lead list is cleaned to Marketing Ops standards for list import and load to static list in Marketo
- Leads are updated to  `Visited Booth`
-  `Follow Up Requested` is used if notes indicate a meeting request
- All leads `Visited Booth` or `Follow Up Requested` get Bizible touchpoints
- Update empty initial source by running a Smart Campaign with logic "If Person Source **is empty** change Person Source to `event type`"
- Update empty status/contact status of `Visited Booth` leads to `Inquiry` unless `Follow Up Requested` 
- If marked `Follow Up Requested`, Marketo scoring should automatically `MQL` lead 
- Post announcement to [`#event_list_upload`](https://gitlab.slack.com/archives/CQ8ADJMHT) Slack channel

##### Booth Leads - Received full attendee list
{:.no_toc}

- Create folder in corresponding Marketo program called “Lists”
- Add a static list to the folder title with the same Campaign_Name_Leads
- Check that Interesting Moments Smart Campaigns have been correctly activated
- Double check the lead list is cleaned to Marketing Ops standards for list import and load to static list in Marketo
- Full attendee list gets marked as `Attended` and X amount who visited our booth get marked `Visited Booth`
- Only `Visited Booth` and `Follow Up Requested` get Bizible touchpoints
- Update empty initial source by running a Smart Campaign with logic "If Person Source **is empty** change Person Source to `event type`"
- If attendee is not marked as `Visited Booth` or `Follow Up Requested`, update empty status/contact status to `Raw` 
- If attendee is marked `Visited Booth`, update empty status/contact status as `Inquiry`
- If marked `Follow Up Requested`, Marketo scoring should automatically `MQL` lead
- Post announcement to [`#event_list_upload`](https://gitlab.slack.com/archives/CQ8ADJMHT) Slack channel

##### Webcast and Virtual Sponsorship Leads
{:.no_toc}

- Create folder in corresponding Marketo program called “Lists”
- Add a static list to the folder title with the same Campaign_Name_Leads
- Check that Interesting Moments Smart Campaigns have been correctly activated
- Double check the lead list is cleaned to Marketing Ops standards for list import and load to static list in Marketo
- Update attendees campaign status to `Attended`
- Run a workflow to change left over `Registered` to `No Show`
- Only `Attended` get Bizible touchpoints
- Update empty initial source by running a Smart Campaign with logic "If Person Source **is empty** change Person Source to `event type`"
- Update empty status/contact status to `Inquiry` unless `Follow Up Requested`
- If marked `Follow Up Requested`, Marketo scoring should automatically `MQL` lead
- Post announcement to [`#event_list_upload`](https://gitlab.slack.com/archives/CQ8ADJMHT) Slack channel

##### Speaking session leads
{:.no_toc}

- Create folder in corresponding Marketo program called “Lists”
- Add a static list to the folder title with the same Campaign_Name_Leads
- Check that Interesting Moments Smart Campaigns have been correctly activated
- Double check the lead list is cleaned to Marketing Ops standards for list import and load to static list in Marketo
- Only leads who have attended one of our speakers get marked as `Attended`
- Only `Attended` get Bizible touchpoints
- Update empty initial source by running a Smart Campaign with logic "If Person Source `is empty` change Person Source to `event type`"
- Update empty status/contact status to `Inquiry` unless `Follow Up Requested`
- If marked `Follow Up Requested`, Marketo scoring should automatically `MQL` lead
- Post announcement to [`#event_list_upload`](https://gitlab.slack.com/archives/CQ8ADJMHT) Slack channel

##### Public Sector Leads
{:.no_toc}

- Create folder in corresponding Marketo program called “Lists”
- Add a static list to the folder title with the same Campaign_Name_Leads
- Check that Interesting Moments Smart Campaigns have been correctly activated
- Double check the lead list is cleaned to Marketing Ops standards for list import and load to static list in Marketo
- Leads are updated to `Visited Booth`
- All leads `Visited Booth` or `Follow Up Requested` get Bizible touchpoints
- Update empty initial source by running a Smart Campaign with logic "If Person Source **is empty** change Person Source to `event type`"
- If attendee is not marked as `Visited Booth` or `Follow Up Requested`, update empty status/contact status to `Raw`
- If attendee is marked `Visited Booth`, update empty status/contact status as `Inquiry`
- If marked `Follow Up Requested`, Marketo scoring should automatically `MQL` lead
- Post announcement to `#public-sector` and `#public-sector-isr` Slack channels

#### Gated Content - First and Third Party

- Create folder in corresponding Marketo program called “Lists”
- Add a static list to the folder title with the same Campaign_Name_Leads
- Check that Interesting Moments Smart Campaigns have been correctly activated and list the downloaded content
- Double check the lead list is cleaned to Marketing Ops standards for list import and load to static list in Marketo
- Leads are updated to `Downloaded`
- All leads `Downloaded` get Bizible touchpoints
- Update empty initial source by running a Smart Campaign with logic "If Person Source **is empty** change Person Source to `event type`"

#### Alliance Event Import

The Alliance list import follows the same guidelines as [Field & Corporate event import](#field-and-corporate-event-import) instructions with the following addition.  

##### Process
{:.no_toc}   

1. Follow the [Field & Corporate Event Import](#field-and-corporate-event-import) instructions above. 
1. In **Marketo**, navigate to the static list file and `Select All` records. 
1. Under the `Person Actions` menu, navigate to `Marketing` -> `Change Data Value` 
1. In the lightbox, `Attribute` = `Alliance Record` / `New Value` = `true` -> then press `**Run**`
     * The `Alliance Record` checkbox activates: 
          * Correct ownership assignment in LeanData
          * Suppression of records in general Marketing communication


##### Acceleration Team Monthly Import

The Acceleration Team has list import requests every month for their target patches. They presently are using a modified version of the Ad Hoc import template. 

**Key Differences**
- SLA of 5 business days *does not* apply to the monthly imports as there are multiple lists per issue & multiple issues per month
- Lists are raw data dumps from DiscoverOrg & not cleaned up 

In Marketo & SFDC there are two programs/campaigns set up to handle these imports. If you are coordinating efforts with another Ops team member be sure to clarify who is using which program/campaign to avoid commingling of records.

Please **do not** make any changes to the programs, campaigns or related workflows without talking to MktgOps first. 

##### Acceleration Upload - Ops 1
{:.no_toc}

* [Marketo Program](https://page.gitlab.com/#PG3938A1)
* [Salesforce Campaign](https://gitlab.my.salesforce.com/7014M000001lnDr)
* [CONTACT view](https://gitlab.my.salesforce.com/003?fcf=00B4M000004oVs8)
* [LEAD view](https://gitlab.my.salesforce.com/00Q?fcf=00B4M000004oVvM)

##### Acceleration Upload - Ops 2
{:.no_toc}

* [Marketo Program](https://page.gitlab.com/#PG4142A1)
* [Salesforce Campaign](https://gitlab.my.salesforce.com/7014M000001loEg)
* [CONTACT view](https://gitlab.my.salesforce.com/003?fcf=00B4M000004oXqs)
* [LEAD view](https://gitlab.my.salesforce.com/00Q?fcf=00B4M000004oXqn)

##### Process
{:.no_toc}

1. Verify that you have `Edit` access to all of the GSheets shared by the Acceleration team, if not ping the Sheet owner in the issue and request.
1. Clean up list to remove any columns not needed, update [`Field Names`](https://docs.google.com/spreadsheets/d/1dkh715tPngbY29PZis02dNPNd_Uc-xGbfV7LghsKWqE/edit?usp=sharing) to Marketo compatible values. 
     - Sort list by `Email Address` -> remove any lines without `Email Address` provided (we do not upload any record w/o `Email Address` it is our unique identifier across all systems)
     - Sort list by `Phone` -> check to ensure all values are correct format (plain text, XXX-XXX-XXXX or (XXX) XXX-XXXX), if there is an extension it should be obvious its an extension with either an `x` or `ext.` 
     - Sort list by `Country` -> if `Country` **does not** equal `United States` or `Canada` remove the value in `State`
     - Sort list by `Billing Country` -> if `Billing Country` **does not** equal `United States` or `Canada` remove the value in `Billing State` 
     - Update `State` and `Billing State` values to be full name not abbreviation
     - Select all -> **Data** Remove duplicates -> check "Data has header row" -> only select `Email Address` field as the duplicate value to analyze
1. Once list is clean in GSheet download as csv
1. **IMPORTANT** make sure both the SFDC & Marketo list are entirely empty & program has **NO** members *before* starting import. 
1. In **Marketo**, update the Smart Campaign - Flow Step 6 `Sync Person to SFDC`. **Assign to** needs to match the list owner as the campaign will trigger as soon as the list is uploaded.   
1. Click on the List in `List Actions` menu click **Import List**
1. In the lightbox that appears: 
     - Select `Browse:` and choose the csv list you just downloaded
     - Leave all other dropdowns with default values
     - Select `Next`
     - Review the `Marketo Field` matches
          - If there are any `--IGNORE--` use drop down to update selecting correct field, unless they are intentionally skipped
     - Select `Next`
     - `Aquisition Program` = `Acceleration Upload - Ops 1` or `Acceleration Upload - Ops 2` (we do not use Marketo Revenue Modeler but please fill in for accuracy)
     - Select `Import`
1. **Marketo** import will be running and associated Smart Campaign will immediately trigger. 
1. Wait for the sync between Marketo<>SFDC to finished processing list
1. In **SFDC**, the `Responses in Campaign` should MATCH the number of records uploaded into Marketo
1. Use the `Acceleration Upload` LEAD and CONTACT views to verify:
     - `Owner` matches the Acceleration SDR owning the list
     - `Person Source` value is not blank &/or is set to `DiscoverOrg`
     - `Status` equals `Raw` if net new record
1. From **SFDC** you will **Import to Outreach**
     - Select all records in **SFDC**
     - Click `Import to Outreach` button
     - **Outreach Everywhere** window will open - may ask to import records click "import" -> if errors see troubleshooting section
     - Select all records in **Outreach Everywhere**, if more than 50 you will need to click link to "apply to all" 
     - Click the `...` and select `Add tag` - first import you will need to paste requested tag from issue; all subsequent imports you can select the tag
     - Close window when done
1. Repeat above step for all records in both views 
1. Navigate to new tab with **Outreach** open
1. Click to `Prospects` and clear all default filters
1. In left side menu, navigate to `Tags` and select the appropriate tag for that list
1. Copy the **Outreach** URL and paste into the List Import issue.  
1. Repeat steps above for each list in the issue. 

### About Long-term Lead Data Storage

Included on the `event-list-upload` issue template is the `Lead Data: Active` scoped label. This label will be used as of July 2020 to track leads' personal data that we have stored in G Drive, likely from the aforementioned list imports. After a soon-to-be-determined amount of time, MktgOps will be required to find the lead data and remove it from G Drive. Once the data has been removed from G Drive, the scoped label will be changed to the `Lead Data: Inactive` label to signal that lead data now lives in Salesforce only. During the transition period, MktgOps will need to proactively add the `Lead Data: Active` label to list import issues where it does not appear.

### Trusted vs Non-Trusted Imports
In Marketo there is a an option to choose trusted or non-trusted sources. Non-trusted sources are for list uploads that we are not confident in the data points given to us. For example, if we are loading a list with inferred country data from IP, we do not want it to overwrite our current location data that is more accurate. Blocking updates allows for a field to be updated if blank, but will not overwrite a field that already has a value.

Here is the list of fields that are blocked during a non-trusted import. If you would like to add more fields, please file an issue with the mops team.
- Country
- City
- State
- Postal Code