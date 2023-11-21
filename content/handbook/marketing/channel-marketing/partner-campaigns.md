---

title: "Channel and Alliance Marketing"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />









# Channel Marketing Campaigns

This handbook page is to walk through the technical and operational setup of different partner campaign types from Marketo → SFDC → Vartopia, including Marketo and SFDC campaign set up for MDF, Joint Gitlab and Partner, Trials and Partner Managed Campaigns.

The general steps required for creating a partner campaign include:
1. Clone and update Marketo program template and tokens.
2. Sync Marketo program to Salesforce - if necessary update campaign info.
3. Import the partner lead list.

## Email Management

When a lead is passed to a partner, they will be suspended from GitLab marketing unless they opt-in specifically to GitLab marketing after being passed, or the partner returns the lead to GitLab. Read more on the [email management page](/handbook/marketing/marketing-operations/email-management/#partners-and-email-communication).

Keep in mind, they will still be eligible for `operational` email sends - which includes most follow up emails. If you want to exclude them, you will need to add a parameter to the smart list of that send campaign to say `Prospect Share Status` not equal to `Pending, Sending to Partner, Accepted`.

Note that the smart list, [SSOT - ALL EMAILABLE](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52996261A1) already excludes partner leads.

## Scoring

Leads that are actively being worked by the partner will be excluded from scoring. Once they are no longer being worked by the partner, they will be scored again. More details on the [scoring page](/handbook/marketing/marketing-operations/marketo/#scoring-model).

## Passing to Vartopia and Partner Visibility

Leads generated from partner campaigns are shared to Partner in Vartopia where they can accept, reject and action by Partners. There are specific fields that are required to allow leads to sync, to list a few: `Vartopia Partner Account`, `Prospect Share Status` and `Partner Prospect Status`. Learn more, see the [Vartopia](/handbook/marketing/marketing-operations/vartopia/) handbook page.

Note that Channel Partners refer to Vartopia as `Prospects` in the Partner Portal, as they can only access Vartopia through SSO via the portal.

## CRM IDs for Channel and Alliance Partners

For a running list of Channel Partners and their CRM IDs, which is critical to the channel partner lead flow, click [here](https://gitlab.my.salesforce.com/00O4M000004aSq6), while the `CRM Partner ID` for Alliance Partners can be found [here](https://gitlab.my.salesforce.com/00O8X000008mxIb).

### Partner Recall

The recall process is built to be able to pull back partner leads that are not being actioned in Vartopia. Not all partner leads are subject to recall, only Joint GitLab and Partner campaign leads can be recalled. [See the full overview.](/handbook/marketing/marketing-operations/vartopia/#partner-recall)

## Types of Partner Campaigns

Partners have many different type of campaigns that fit into specific categories. Each campaign has it's own ROE for lead routing and email practices. See the campaign [flow chart](https://www.figma.com/file/vOe7ohMpZfYCGEG3siIpbU/Partner-%2B-GitLab-Campaign-Workflows_2023-08-28_19-18-38?type=whiteboard&t=QvcXdK9p5nlkFL2I-1) to understand how leads are distributed.

- [MDF Campaigns](/handbook/marketing/channel-marketing/partner-campaigns/#mdf-campaigns)
- [Joint Campaigns](/handbook/marketing/channel-marketing/partner-campaigns/#joint-gitlab-and-partner-campaigns)
     - Events
     - Webinar
     - [Partner Sponsored Events](/handbook/marketing/channel-marketing/partner-campaigns/#partner-sponsored-events)
- [Trial Campaigns](/handbook/marketing/channel-marketing/partner-campaigns/#trials-from-partners)
     - SaaS Free Trial
     - Self-Managed Free Trial
- [Partner Managed Campaigns](/handbook/marketing/channel-marketing/partner-campaigns/#partner-managed-campaigns)
     - Impartner Program
     - Partner Campaign

### Issue first - Partner Pilot

In an attempt to extend our GitLab [CREDIT](/handbook/values/#credit) values to our partner ecosystem, the EMEA teams have decided to run a pilot with partners where the partner will be invited to collaborate in GitLab issues for joint event execution. More info can be found in the [Partner Pilot Issue.](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/7263)

### MDF Campaigns

[MDF campaigns](https://about.gitlab.com/handbook/resellers/Channel-Program-Guide/MDF/) involve financial support or funds provided by GitLab to the Channel Partners to manage a lead generation campaign. These campaigns follow their own processes not found on the campaigns-and-programs page.

🖇️ Quick Links: [Lead Routing](/handbook/marketing/marketing-operations/traction-lead-complete/#mdf-campaign)

Before starting this steps, note you'll need to have already set up the [Allocadia](/handbook/marketing/strategy-performance/allocadia/#channel-marketing-set-up) subcategory and line item.

**Step 1: Setup Marketo Program**
1. Clone Marketo Template and update program name: [YYYYMMDD__MDF_000_Partner_Name_Region_Event_Name](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG11842A1).
1. Select the Program Name on the Summary page, this will unlock a description, where you will update description with the links to the SFDC MDF request, Coupa ID and Allocadia ID (if you have it), then `Save`.
1. Update the Marketo tokens: `{{my.Partner Name}}` with Partner Name and `{{my.CRM Partner ID}}` with [Account ID (18)](/handbook/marketing/channel-marketing/partner-campaigns/#crm-ids-for-channel-and-alliance-partners).

**Step 2: Sync Marketo Program to SFDC**
1. In the Marketo Program Summary page, in `Salesforce Campaign Sync`, click on `Not Set`.
1. `Salesforce Campaign Sync` will pop up, with a `Campaign` dropdown, select `Create New`, then `Save`. This will automatically populate the campaign tag, so you do not need to edit anything.

**Step 3: Update SFDC Campaign**

1. Under `Vartopia Partner Information`, select the `Partner Account` and check `Sync to Vartopia` for the campaign to sync to Vartopia.
1. `Budgeted Cost` in SFDC pulls from your plan number, not your forecast number from Allocadia. If you do not have a plan cost in Allocadia then `Budgeted Cost` in SFDC will remain blank. If this is the case, you will want to add in your `Budgeted Cost` manually into your SFDC campaign.
2. Once Allocadia has updated the SFDC campaign, you will need to double check `Campaign Type` and make sure it still says `Partner - MDF`. If it does not, please update the field.

**Step 4: Update List Upload Request Issue**

The list import issue will be automatically be created via [Allocadia - GitLab issue integration](/handbook/marketing/strategy-performance/allocadia/#how-to-create-a-channel-marketing-epicissues-from-allocadia).

Skip to step 2 of the list import [instructions](/handbook/marketing/channel-marketing/partner-campaigns/#list-import-for-partner-leads) for partner leads.

### Joint GitLab and Partner Campaigns

When GitLab and Partners participate in campaigns together including events, webinars and more.

🖇️ Quick Links: [Lead Routing](/handbook/marketing/marketing-operations/traction-lead-complete/#joint-partner-campaign)

**NOTE**: For Vartopia sync, the campaign field, `Is Channel Partner Involved?` = `Yes`.

First, use the general set up, found in [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up). The partner steps are nested in the typical Marketo program templates to clone. Once the campaign is cloned, follow the steps below in addition to the other setup steps found on the campaigns and programs page.

All Marketo templates will have 2 tokens added to them that the campaign owner should update, {{My.Partner Name}} and {{My.CRM Partner ID}}.

- Partner Name: Does not need to be official, it will be used on the form consent language and interesting moments, so needs to be customer facing. Example:  `By registering for this GitLab and {{My.Partner Name}} event....`
- Partner ID: All partner IDs can be [found here](/handbook/marketing/channel-marketing/partner-campaigns/#crm-ids-for-channel-and-alliance-partners).

**Online Campaign - Lead Capture via Form/Landing Page**

These instructions must be completed prior to launch.

1. Update the Marketo tokens: `{{my.Partner Name}}` with Partner Name and `{{my.CRM Partner ID}}` with [Account ID (18)](/handbook/marketing/channel-marketing/partner-campaigns/#crm-ids-for-channel-and-alliance-partners).
1. Update `Registration Landing Page` to use `FORM 3146: Partner + GitLab Joint Event with Token`
   - To update the page:
       - Right click `Registration Landing Page`, edit draft.
       - Under Elements, find Custom Form and double click on the form.
       - Update Edit Form Settings, select: `FORM 3146: Partner + GitLab Joint Event with Token` and click `Swap`.
       - Top right, `Landing page Action` select for the dropdown menu, then click `Approve and Close`.
1. Processing `Registration` Smart Campaign
    1. Processing smart campaign's Smart list must reference the landing page used in Program.
    2. Schedule, `Activate` smart campaign.
1. Set up asset expiration as [described here](/handbook/marketing/marketing-operations/campaigns-and-programs/#asset-expiration-use-cases), if needed.
1. (no setup needed) Marketo will process.
    1. If there is a `CRM Partner ID`,
        1. Set `Vartopia Partner Account`
        1. Set `Partner Consent` = `True`.
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that.
1. (no setup needed) [Traction](/handbook/marketing/marketing-operations/traction-lead-complete/#joint-partner-campaign) picks up from there, and the lead is routed accordingly to either GitLab or the Partner in Vartopia.

The process above will work for an event with **multiple partners** driving to it. Make sure they have their [UTM Paramter URL](/handbook/marketing/channel-marketing/partner-campaigns/#utm-parameter-url) correct when sending traffic to the registration page. You still need to fill out the token, but only one value will be accepted. Please decide ahead of time who the `default` partner is that will receive the leads they did not source.

**Offline Campaign - Lead Capture via List Upload**

If a form/landing page isn't available to capture registrations, see [List Import for Partner Leads](/handbook/marketing/channel-marketing/partner-campaigns/#list-import-for-partner-leads).

The process above will work for an event with multiple partners driving to it. Make sure they have the partner ID properly appended to each person on the list. You still need to fill out the token, but only one value will be accepted. Please decide ahead of time who the `default` partner is that will receive the leads they did not source.

#### Partner Sponsored Events

GitLab allows Channel Partners to sponsor our owned events. The leads acquired by the Channel Partner will be shared regardless of their `Lead Status` and `BDR Prospecting Status` and will not be applicable to the recall process despite `Lead Source` = `Owned Event` and not `Partner Qualified Lead`.

`Lead Acquisition Source` needs to be manually updated to `Partner Sponsored Event` in the Marketo program flow. To do so, the steps below must be followed.

**Step 1**: Should there be any Partner sponsors, the Partner Marketing team specify to Marketing Operations team which campaign/program and Channel Partners are the sponsors.

**Step 2**: Marketing Ops team will need to update the program flow.

**Step 2a**: Update the smart campaign flow according to the lead creation method:
 - For online lead creation via form submission, update `01b - Registration`
 - For offline lead creation via list import, update `02b - Manual Upload Processing`

**Step 2b**: Update the data change value from:

 > If `Vartopia Partner Account` is not empty, `Lead Acquisition Source` change value to `Owned Event`

 to

 > If `Vartopia Partner Account` is empty, leave blank (Do Nothing).

**Step 2c**: Add Choice: If `Vartopia Partner Account` is equal to `Account ID of the Partner Sponsor (s)`, `Lead Acquisition Source` change value to `Partner Sponsored Event`

### Trials from Partners

#### Self-Managed Free Trial

Partners can host our self-managed trial form. They will have a specific UTM parameter that is captured upon form submit that allows us to pass that lead directly to the partner. Each page must have the UTM `utm_partnerid` in the URL populated, otherwise we cannot pass to the partner. See the [UTM Paramter URL](/handbook/marketing/channel-marketing/partner-campaigns/#utm-parameter-url) section for more on how to set up the URL for partners.

🖇️ Quick Links:
- [Lead Routing](/handbook/marketing/marketing-operations/traction-lead-complete/#free-trial-campaign)
- [Self-Managed Free Trial Page](https://page.gitlab.com/sm-free-trial-partner.html)
- [Salesforce Campaign](https://gitlab.my.salesforce.com/7014M000001dqjG?srPos=1&srKp=701)

Every partner trial campaign can utilize setup from `Partner - Trial - Self-managed` campaign, without creating a new Marketo or SFDC campaign.

**Returning Trial Requesters**

GitLab allows only one self-managed trial license key per user. In the case, when a lead returns and attempts to fill out the self-managed trial form from Partners, they will be prompt with a rejection email.

As partner leads are [suspended](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) from receiving marketing communications, the `Marketing Suspended` status is temporarily switch to `False` to send the email to the recipient.

#### SaaS Free Trial

Partners can use the SaaS free trial submission via GitLab.com. They will have a specific UTM parameter that is captured upon form submit that allows us to pass that lead directly to the partner. Below explains the backend for the activity.

🖇️ Quick Links:
- [Lead Routing](/handbook/marketing/marketing-operations/traction-lead-complete/#free-trial-campaign)
- [SaaS Free Trial Page](https://gitlab.com/-/trial_registrations/new)
- [Salesforce Campaign](https://gitlab.my.salesforce.com/7018X000001OHIF?srPos=0&srKp=701)

Each page must have the UTMs in the URL :
- `glm_source` and `glm_content` to pass to the partner
- `utm_source` to track online touchpoints

Example
> https://gitlab.com/-/trial_registrations/new?glm_source=partner&utm_source=partner&glm_content=0014M00001pg2zmQAA

**NOTE:** `glm source` and `utm_source` should always be equal to `partner` and `glm_content` will be equal to the `CRM Partner ID` associated with the partner account.

There is no marketo program or SFDC campaign setup necessary to track SaaS trials. Every partner trial campaign can utilize setup from `Partner - Trial - SaaS` campaign, without creating a new Marketo or SFDC campaign.

### Partner Managed Campaigns

Partner managed campaigns are marketing activities organized and leads generated are owned by partners.

#### Partner Campaigns

Note that this type of campaign are not generated by MDF.

**Step 1: Setup in Marketo**

1. Clone the Marketo program template: [YYYYMMDD__Partner_Name_Event_Name_Region](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG16629A1)
2. Update the Marketo tokens: `{{my.Partner Name}}` with Partner Name and `{{my.CRM Partner ID}}` with [Account ID (18)](/handbook/marketing/channel-marketing/partner-campaigns/#crm-ids-for-channel-and-alliance-partners).

**Step 2: Sync to Salesforce Campaign**
1. In the Marketo Program Summary page, in `Salesforce Campaign Sync`, click on `Not Set`.
1. `Salesforce Campaign Sync` will pop up, with a `Campaign` dropdown, select `Create New`, then `Save`. This will automatically populate the campaign tag, so you do not need to edit anything.

**Step 3: Update Salesforce Campaign**

1. Update  `Campaign Type Details`
1. Change the  `Campaign Owner`  to your name
1. Update  `Start Date`  to the date of launch
1. Update  `End Date`  to when the campaign concludes
1. Update  `Budgeted Cost`  - If cost is $0 list 1 in the Budgeted Cost field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by 0 you will always get 0 as the pipe2spend calculation.
1. Update  `Region`  and  `Sub-region`  if you have the data available
1. Update  `Is a Channel Partner Involved?` = `Yes`
1. Update  `Channel Partner Name`
1. Click `Save`.

**Step 4: List Import**

Follow the steps in [List Import for Partner Leads](/handbook/marketing/channel-marketing/partner-campaigns/#list-import-for-partner-leads).

# Alliance Marketing Campaigns

This section is to walk through the technical setup of webcasts hosted by GitLab and/or Alliance Partner. Unlike Channel leads, Alliance leads follow the regular [lead and contact statuses](/handbook/marketing/marketing-operations/#lead-and-contact-statuses) and [scoring model](/handbook/marketing/marketing-operations/#lead-scoring-lead-lifecycle-and-mql-criteria).

## Webcast Setup

All Marketo templates will have 2 tokens added to them that the campaign owner should update,`{{My.Partner Name}}` and `{{My.CRM Partner ID}}`.

The `CRM Partner ID` can be retrieved by identifying the `Account ID (18)` of the Alliance Partner - refer to this [list](https://gitlab.my.salesforce.com/00O8X000008mxIb).

First, use the general set up found in [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up). The partner steps are nested in the typical Marketo program templates to clone. Once the campaign is cloned, follow the steps below in addition to the other setup steps found on the campaigns and programs page.

### On24 Webcast Hosted by GitLab - Lead Capture via Form

GitLab can drive webcasts with Alliance Partners using [On24](/handbook/marketing/virtual-events/webcasts/#on24-webcast-setup). To incorporate the steps required for partners, follow these additional steps.

**Step 1: Setup in Marketo**

 1. Update the Marketo tokens: `{{my.Partner Name}}` with Partner Name and `{{my.CRM Partner ID}}` with [Account ID (18)](/handbook/marketing/channel-marketing/partner-campaigns/#crm-ids-for-channel-and-alliance-partners).
 3. The registration landing page must have the following:
    - `FORM 3299: Alliances` with a hidden field that captures  `utm_partnerid`.
    - The **URL must include the utm parameter with the CRM Partner ID** to the landing page to lead to be associated with the Alliance partner.
 4. Activate `01a Registration Flow (single timeslot)`
 5. Activate `00 Interesting Moments` and interesting moments will dynamically change if there is a partner involved to reflect that.
 6. (no setup needed) Marketo will process.
  1. If there is a  `CRM Partner ID`
     1. Set  `CRM Partner ID (Look up)`
     2. Set  `Partner Type` = `Alliance Partner` (by Salesforce)

**Step 2: Update SFDC Campaign**

1. Update  `Campaign Type Details`
1. Change the  `Campaign Owner`  to your name
1. Update  `Start Date`  to the date of launch
1. Update  `End Date`  to when the campaign concludes
1. Update  `Budgeted Cost`  - If cost is $0 list 1 in the Budgeted Cost field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by 0 you will always get 0 as the pipe2spend calculation.
1. Update  `Region`  and  `Sub-region` if you have the data available
1. Update  `Budget Holder`
1. Update  `Is an Alliance Partner Involved?`
1. Update  `Alliance Partner Name`
1. Click `Save`.

### Webcast Hosted by Alliance Partner - Lead Capture via List Upload

**NOTE:** Upon list import, ensure the Google sheet column for `CRM Partner ID` is populated, this will help associate the partner lead with the Alliance partner.  

If a form isn't available to capture registration, follow these additional steps:

**Step 1: Update Tokens in Marketo**

- Update the Marketo tokens: `{{my.Partner Name}}` with Partner Name and `{{my.CRM Partner ID}}` with [Account ID (18)](/handbook/marketing/channel-marketing/partner-campaigns/#crm-ids-for-channel-and-alliance-partners).

**Step 2: Update SFDC Campaign**

1. Update  `Campaign Type Details`
1. Change the  `Campaign Owner`  to your name
1. Update  `Start Date`  to the date of launch
1. Update  `End Date`  to when the campaign concludes
1. Update  `Budgeted Cost`  - If cost is $0 list 1 in the Budgeted Cost field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by 0 you will always get 0 as the pipe2spend calculation.
1. Update  `Region`  and  `Sub-region` if you have the data available
1. Update  `Budget Holder`
1. Update  `Is an Alliance Partner Involved?`
1. Update  `Alliance Partner Name`
1. Click `Save`.

**Step 3: Update `CRM Partner ID` Column in Google Sheet**

 - In the list upload, include the `CRM Partner ID` value in the [spreadsheet](https://docs.google.com/spreadsheets/d/1dzFqwjoBat8sna0uZu9RSVTsPvAZnJ4Xx4GkZllAUD0/edit#gid=257616838) column. If the lead is not associated with an Alliance partner, leave the column blank.

**Step 4: Update List Upload Request Issue**

- Please follow the [list import criteria and guidelines](/handbook/marketing/marketing-operations/list-import/#import-methods-and-their-sla).

# List Import for Partner Leads

1. Create a list import issue using the issue template found in the Marketing Operations project titled [general-list-import-request](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/blob/master/.gitlab/issue_templates/general-list-import-request.md).
1. For the list import spreadsheet (found in the list import issue), be sure to follow the general [instructions](/handbook/marketing/marketing-operations/list-import/#import-methods-and-their-sla).
   1. For specific instructions related to Partner, here what you need to know:
        1. Ensure the `CRM Partner ID` column is populated with the Account 18 (ID)
        1. Lead should not be marked as `Opt-In`, unless they specifically opted in to **GitLab** emails.
        1. Phone number is mandatory for Vartopia sync, make sure that field is populated.
1. Once spreadsheet is completed, proceed with [self service list import](/handbook/marketing/marketing-operations/automated-list-import/) instructions.
1. (no setup needed) Marketo will process.
    1. If there is a `CRM Partner ID`
        1. Set `Vartopia Partner Account` - if CRM Partner ID is asociated to a Channel Partner.
        1. Set `Partner Consent` = `True`
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that.

# UTM Parameter URL

The UTM parameter URL plays a huge part on partner lead routing and reporting. We utilize `utm_partnerid` in the UTM parameter URL to capture the Account ID (18) of the Partner Account, which populates into the `CRM Partner ID`. This process is embedded as a hidden field in all our partner-related Marketo forms. Each page must have the `utm_partnerid` in the URL, otherwise we cannot pass to the partner.

You can use the [UTM link builder](/handbook/marketing/utm-strategy/#utm-builder) to create your URLs.

Note that, the `Account ID (18)` is case sensitive when populating `utm_partnerid` into the URL. This means it has to be an **exact match** when you input the ID in the URL, otherwise partners will not receive their leads.

For a running list of Channel Partners and their CRM IDs, which is critical to the channel partner lead flow, click [here](https://gitlab.my.salesforce.com/00O4M000004aSq6), while the `CRM Partner ID` for Alliance Partners can be found [here](https://gitlab.my.salesforce.com/00O8X000008mxIb).

If you are working with an Open or Select partner who is not listed in the linked SFDC report, their partner ID which can be found in their Partner Account record within SFDC, in the 9th section called `Vartopia Deal Registration Access`. If you can't find the field, do a quick `commandF` for the word `Account ID (18)` and that will take you to the ID or you can retrieve the 18 character ID from the Salesforce URL. If for some reason the ID is missing, reach out in the [#channel-programs-ops](https://gitlab.slack.com/archives/CTM4T5BPF) slack room.

# Field Glossary

Below are the glossary of fields used for Channel and Alliance partner campaigns and workflows.

|                                                                                                 | Channel Partner | Channel Partner | Distributor | Distributor | Alliance Partner | Alliance Partner |
| ----------------------------------------------------------------------------------------------- | --------------- | --------------- | ----------- | ----------- | ---------------- | ---------------- |
|                                                                                                 | Leads           | Records         | Leads       | Records     | Leads            | Records          |
| [Alliance Record](https://gitlab.my.salesforce.com/00N4M00000IW0Al?setupid=LeadFields)          |                 |                 |             |             |                  | X                |
| [Channel Record](https://gitlab.my.salesforce.com/00N8X00000HNJde?setupid=LeadFields)           |                 | X               |             | X           |                  |                  |
| [CRM Partner ID](https://gitlab.my.salesforce.com/00N4M00000IbfCn?setupid=LeadFields)           | X               |                 | X           |             | X                |                  |
| [CRM Partner ID (Look Up)](https://gitlab.my.salesforce.com/00N4M00000IjeO1?setupid=LeadFields) | X               |                 | X           |             | X                |                  |
| [Lead Acquisition Source](https://gitlab.my.salesforce.com/00N8X00000FnjX0?setupid=LeadFields)  | X               |                 |             |             |                  |                  |
| [Partner Consent](https://gitlab.my.salesforce.com/00N4M00000IbfCo?setupid=LeadFields)          | X               |                 | X           |             |                  |                  |
| [Partner Managed](https://gitlab.my.salesforce.com/00N8X00000FoY1r?setupid=LeadFields)          | X               |                 |             |             |                  |                  |
| [Partner Manager](https://gitlab.my.salesforce.com/00N8X00000HNDnd?setupid=LeadFields)          | X               |                 |             |             |                  |                  |
| [Partner Type](https://gitlab.my.salesforce.com/00N8X00000HNKlG?setupid=LeadFields)             | X               |                 | X           |             | X                |                  |
| Subscribe - Partner                                                                             | X               |                 | X           |             | X                |                  |
| [Vartopia Partner Account](https://gitlab.my.salesforce.com/00N8X00000FnjVo?setupid=LeadFields) | X               |                 |             |             |                  |


Go to the [Vartopia page](/handbook/marketing/marketing-operations/vartopia/) to review fields that are relevant to Vartopia.

### Alliance Record

This field shows when a record belongs to an Alliance Partner meaning they are an employee of said Alliance Partner. When this field is checked = `true`, the record will be suppressed from general marketing communications.

### Channel Record

This field shows when a record belongs to a Channel Partner meaning they are an employee of said Channel Partner. When this field is checked = `true`, the record will be suppressed from general marketing communications.

### CRM Partner ID

This field is populated with the Salesforce `Account ID (18)` of Partner Account.

### CRM Partner ID (Look up)

The lookup field retrieves the name of the partner account associated with the `Account ID (18)`.

### Lead Acquisition Source

This field records the source type of the partner lead. The biggest driver for this field is to isolate the source type that applies to the recall process including `Owned Event` and `Trial - Enterprise`.

The reason why [`Initial Source`](/handbook/marketing/marketing-operations/#initial-source) isn’t used for this use case is because the field value must equal to `Partner Qualified Lead` to be attributed to and sourced by Partner.

### Partner Consent

This field indicates when a lead has granted consent to allow their information to be shared with a Partner. This only applies to Channel Partners because Alliance Partners are not enrolled in the lead-sharing module.

### Partner Type

This field specifies when a partner lead is associated with a Channel or Alliance Partner account.

### Partner Managed

This field marks when a lead is managed by a Channel Partner via Vartopia. `Vartopia Partner Account` must be populated and their `Prospect Share Status` and `Partner Prospect Status` must have a status that suggests they are being worked on by a Channel Partner.

- Partner Prospect Status = `Qualifying`, `Qualified` or `Converted to DR`, or
- Prospect Share Status = `Sending to Partner`, `Pending` or `Accepted`.

### Partner Manager

This field reflects the `Account Owner`, Channel Account Manager or Partner Account Manager associated to the partner account.

### Subscribe - Partner

This field records when a lead has opted-in to GitLab marketing communications. Subscribe - Partner resides only in Marketo and mainly to Alliance Partner leads.

Channel Partner leads are immediately marked as marketing suspended and this field does not apply to them until they come back (recalled) to GitLab.
