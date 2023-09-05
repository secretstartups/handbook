---
layout: handbook-page-toc
title: "Channel and Alliance Marketing"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

# Channel Marketing Campaigns
This section is to walkthrough the technical setup of different partner campaign types from Marketo>SFDC>Vartopia, including Marketo and SFDC campaign set up for Joint Gitlab and Partner Events, Partner Trials and MDF funded campaigns. The sections below describe them in detail.

## Email Management
When a lead is passed to a partner, they will be suspended from GitLab marketing unless they opt-in specifically to GitLab marketing after being passed, or the partner returns the lead to GitLab. Read more on the [email management page](/handbook/marketing/marketing-operations/email-management/#partners-and-email-communication). 

Keep in mind, they will still be eligible for `operational` email sends - which includes most follow up emails. If you want to exclude them, you will need to add a parameter to the smart list of that send campaign to say `Prospect Share Status` not equal to `Pending, Sending to Partner, Accepted`.

## Scoring
Leads that are actively being worked by the partner will be excluded from scoring. Once they are no longer being worked by the partner, they will be scored again. More details on the [scoring page](/handbook/marketing/marketing-operations/marketo/#scoring-model). 

## Passing to Vartopia and Partner Visibility
In order for the Partner to be able to see and action the lead in Vartopia, the SFDC fields must be populated: `Vartopia Partner Account`, `Prospect Share Status` and `Partner Prospect Status`. Learn more about [Vartopia](/handbook/marketing/marketing-operations/vartopia/). 

### Partner Recall

We intend to launch the first phase of the recall process for partner leads in the “Prospects” module in the GitLab Partner Portal on **April 18, 2023**. The recall process is built to be able to pull back leads that are not being actioned. [See the full overview.](/handbook/marketing/marketing-operations/vartopia/#partner-recall)

## Types of Partner Campaigns
Each campaign has it's own ROE for lead routing and email practices. See the [flow chart](https://www.figma.com/file/vOe7ohMpZfYCGEG3siIpbU/Partner-%2B-GitLab-Campaign-Workflows_2023-08-28_19-18-38?type=whiteboard&t=QvcXdK9p5nlkFL2I-1) to find the type of event and the follow up that results from it.

### Issue first - Partner Pilot
In an attempt to extend our GitLab [CREDIT](/handbook/values/#credit) values to our partner ecosystem, the EMEA teams have decided to run a pilot with partners where the partner will be invited to collaborate in GitLab issues for joint event execution. More info can be found in the [Partner Pilot Issue.](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/7263)

### Partner Only Campaigns - MDF funded
These campaigns are GitLab funded via MDF, but all leads are passed to the partner. We upload these lists into our systems to be able to track pipeline from resulting Deal Registrations in Vartopia. You can find Marketo and SFDC Campaign set up [here](/handbook/marketing/channel-marketing/partner-campaigns/#mdf-funded-campaigns).

When a lead/contact is associated to a campaign the following steps occur:

1. Marketo processes the lead, marks as `Marketing Suspended` and syncs to SFDC.
1. Traction updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`.

DRI for the operalization of this process: Channel Marketing

### Joint GitLab and Partner Events
When GitLab and Partners participate in events together, they will share leads. The [flowchart](https://www.figma.com/file/vOe7ohMpZfYCGEG3siIpbU/Partner-%2B-GitLab-Campaign-Workflows_2023-08-28_19-18-38?type=whiteboard&t=QvcXdK9p5nlkFL2I-1) has a visual workflow of these steps. [Go here](/handbook/marketing/channel-marketing/partner-campaigns/#joint-marketing-campaign-set-up) for Marketo/SFDC campaign set up.

**NOTE:** Phone numbers are required in order for the lead to be passed to Vartopia. If a phone number has not been supplied via the list, Marketo will appended a phone number automatically of `555-555-5555`. 

When a lead/contact is associated to a campaign the following occurs:

1. Traction reviews the campaign field for `Is a Channel Partner Involved?` = `Yes`.
1. Traction verifies the campaign member is not actively worked by GitLab, thus `Person Status` is not `Accepted`, `Qualifying` nor `Qualified`, or `Actively Being Sequenced` = `False`.
1. If all the above is true, Traction updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`, then Traction assigns to `Partner Queue`.

### Trials from Partners

#### Self-Managed Free Trial

Partners can host our self-managed trial form. They will have a specific UTM parameter that is captured upon form submit that allows us to pass that lead directly to the partner. Below explains the backend for the activity. Each page must have the UTM `utm_partnerid` in the URL populated, otherwise we cannot pass to the partner.  

You can find the UTM builder [here](/handbook/marketing/utm-strategy/#utm-builder). For a list of the partner IDs to add, [go here](https://gitlab.my.salesforce.com/00O4M000004aSq6).

1. Form is hosted on a GitLab or Partner landing page. Partners should always use the `FORM 2983: Partner Self-Hosted Enterprise Trial Form`. 
   - This form has a hidden field that captured `utm_partnerid`
1. Once submitted, Marketo then appends that value `Vartopia Partner Account` fields.
1. Marketo processes the lead and sends the trial activation key via email to the prospect.
1. Marketo [suspends emails](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) being sent from GitLab to prospect
1. Marketo sends email alert to partner team and syncs lead to SFDC.
1. Traction updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner` if `Partner Account` is not `NULL`. 
1. Lead/Contact owner is updated to the assigned `Partner Queue`.
1. Salesforce.com sends alert email to `Partner Prospect Admin`.
1. Vartopia picks up lead and assigns to partner in Vartopia based on ID.
1. Lead/Contact fields for Partner information are automatically populated.

**Returning Trial Requesters**

GitLab allows only one self-managed trial license key per user. In the case, when a lead returns and attempts to fill out the self-managed trial form from Partners, they will be prompt with a rejection email. 

As partner leads are [suspended](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) from receiving marketing communications, the `Marketing Suspended` status is temporarily switch to `False` to send the email to the recipient. 

#### SaaS Free Trial

Partners can use the SaaS free trial submission via GitLab.com. They will have a specific UTM parameter that is captured upon form submit that allows us to pass that lead directly to the partner. Below explains the backend for the activity. 

Each page must have the UTMs in the URL :
- `glm_source` and `glm_content` to pass to the partner
- `utm_source` to track online touchpoints 

**NOTE:** `glm source` and `utm_source` should always be equal to `partner` and `glm_content` will be equal to the `CRM Partner ID` associated with the partner account.

1. Form is hosted on GitLab.com. 
1. Once submitted, Marketo then appends that value `Vartopia Partner Account` fields.
1. The lead will receive a confirmation instruction email and log into the GitLab environment with login and password they created upon sign up.
1. Marketo [suspends emails](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) being sent from GitLab to prospect
1. Marketo sends email alert to partner team and syncs lead to SFDC.
1. Traction updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner` if `Partner Account` is not `NULL`. 
1. Lead/Contact owner is updated to the assigned `Partner Queue`.
1. Salesforce.com sends alert email to `Partner Prospect Admin`.
1. Vartopia picks up lead and assigns to partner in Vartopia based on ID.
1. Lead/Contact fields for Partner information are automatically populated.

## Setup in Marketo

### Trial Campaign Set Up

#### Self-Managed Free Trial
There is no marketo program or SFDC campaign setup necessary to track self-managed trials. Every partner trial campaign can utilize setup from `Partner - Trial - Self-managed` campaign, without creating a new Marketo or SFDC campaign. Follow [directions above](/handbook/marketing/channel-marketing/partner-campaigns/#trials-from-partners) to understand what form to use and what processes to follow.

#### SaaS Free Trial
There is no marketo program or SFDC campaign setup necessary to track SaaS trials. Every partner trial campaign can utilize setup from `Partner - Trial - SaaS` campaign, without creating a new Marketo or SFDC campaign. Follow [directions above](/handbook/marketing/channel-marketing/partner-campaigns/#trials-from-partners) to understand what form to use and what processes to follow.

### Joint Marketing Campaign Set Up

**NOTE**: For Vartopia sync, the campaign field, `Is Channel Partner Involved?` = `Yes`.

First, use the general set up, found in [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up). The partner steps are nested in the typical Marketo program templates to clone. Once the campaign is cloned, follow the steps below in addition to the other setup steps found on the campaigns and programs page. 

All Marketo templates will have 2 tokens added to them that the campaign owner should update, {{My.Partner Name}} and {{My.CRM Partner ID}}
- Partner Name: Does not need to be official, it will be used on the form consent language and interesting moments, so needs to be customer facing. Example:  `By registering for this GitLab and {{My.Partner Name}} event....`
- Partner ID: All partner IDs can be [found here](/handbook/marketing/channel-marketing/partner-campaigns/#crm-partner-id). 

**Online Events: (Lead capture via forms) BEFORE Launch**

1. Update token on Marketo program {{My.Partner Name}}
1. Update token on Marketo program {{My.CRM Partner ID}}
1. Update registration landing page to have `FORM 3146: Partners w/ consent+token` 
   - To update the page:
       - Edit the landing page draft
       - Double click on the form
       - Update form `FORM 3146: Partners w/ consent+token` and click `swap`
       - Approve and close landing page
   - Forms has a hidden field that captures `utm_partnerid` to associate to the partner and captures contact consent for the partner.
   - The partner MUST HAVE this utm on their link to the landing page otherwise they will not be routed leads
1. Processing Campaign for partner campaings is separate from the typical one. Do not activate both.
    1. Processing smart campaign's smart list must reference `FORM 3146: Partners w/ consent+token` or another partner form (translations)
1. Set up asset expiration as [described here](/handbook/marketing/marketing-operations/campaigns-and-programs/#asset-expiration-use-cases), if needed.
 1. (no setup needed) Marketo will process.
    1. If there is a `CRM Partner ID`
        1. Set `Vartopia Partner Account`
        1. Set `Partner Consent` = `True` 
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that. 
1. (no setup needed) Traction picks up from there, and the lead is routed accordingly to either GitLab or the Partner in Vartopia.

The process above will work for an event with multiple partners driving to it. Make sure they have their utms correct when sending traffic to the registration page. You still need to fill out the token, but only one value will be accepted. Please decide ahead of time who the `default` partner is that will receive the leads they did not source.

**Offline Events: (Lead capture via list uploads, not)**

If a form isn't available to capture registration, follow these steps:

1. In list upload issue, add a column for `CRM Partner ID` and add the value. - All partner IDs can be [found here](/handbook/marketing/channel-marketing/partner-campaigns/#crm-partner-id). If the partner did not source the lead (AKA GitLab did), then leave that column blank.
1. Mark in the list upload issue that this is a joint event and the partner will be following up with leads
1. (no setup needed) Turned on by person who loads the list into Marketo.
    1. If there is a `CRM Partner ID`
        1. Set `Vartopia Partner Account`
        1. Set `Partner Consent` = `True` 
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that.

The process above will work for an event with multiple partners driving to it. Make sure they have the partner ID properly appended to each person on the list. You still need to fill out the token, but only one value will be accepted. Please decide ahead of time who the `default` partner is that will receive the leads they did not source.

#### Partner Sponsored Event

GitLab allows Channel Partners to sponsor our owned events. The leads acquired by the Channel Partner will be shared regardless of their `Lead Status` and `BDR Prospecting Status` and will not be applicable to the recall process despite `Lead Source` = `Owned Event` and not `Partner Qualified Lead`.

`Lead Acquisition Source` needs to be manually updated to `Partner Sponsored Event` in the Marketo program flow. To do so, the steps below much be followed.

 1. Should there be any Partner sponsors, the Partner Marketing team will submit a GitLab MktgOps issue and tag @stran5 and specify which campaign/program and Channel Partners are the sponsors.
 2. Marketing Ops team will need to update the program flow.

 2a. Update the smart campaign flow according to the lead creation method:
 - For online lead creation via form submission, update `01b - Registration` 
 - For offline lead creation via list import, update `02b - Manual Upload Processing` 

 2b. Update the data change value from: 

 > If `Vartopia Partner Account` is not empty, `Lead Acquisition Source` change value to `Owned Event`

 to

 > If `Vartopia Partner Account` is empty, leave blank (Do Nothing).

 2c. Add Choice: If `Vartopia Partner Account` is equal to `Account ID of the Partner Sponsor (s)`, `Lead Acquisition Source` change value to `Partner Sponsored Event`


### MDF funded Campaigns
These campaigns follow their own processes not found on the campaigns-and-programs page. 

#### Step 1: Clone Marketo program (TBC)
- Clone [Marketo Template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG11842A1)
- Update the name to match the naming convention YYYYMMMDD__MDF Partner Name_Event Name

#### Step 2: Sync Program to SFDC
- At the program main screen in Marketo, where it says Salesforce Sync with "not set", click on "not set"
- Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
- Update description with the link to the SFDC MDF request and Coupa ID and Allocadia ID (if you have it)
- Click "Save"


#### Step 3: Update Tokens in Marketo
- Update `{{my.CRM Partner ID}}` with the [15-digit CRM ID](/handbook/marketing/channel-marketing/partner-campaigns/#crm-partner-id) of the partner that will be following up with these leads.
- Update `{{my.Partner Name}}` with the name of the partner who will be following up.

#### Step 4: Update SFDC Campaign
If you included the Allocadia ID, follow these steps. Otherwise, you'll need to update additional fields below.
- `Budgeted Cost` in SFDC pulls from your plan number, not your forecast number from Allocadia. If you do not have a plan cost in Allocadia then `Budgeted Cost` in SFDC will remain blank. If this is the case, you will want to add in your `Budgeted Cost` manually into your SFDC campaign.
- Once Allocadia has updated the SFDC campaign, you will need to double check `Campaign Type` and make sure it still says `Partner - MDF`. If it does not, please update the field.


#### Step 4b: Update without Allocadia
If you did not include the Allocadia ID in the description, you'll need to update the steps below:
- Update `Campaign Type Details` to reflect the [type of MDF campaign](/handbook/marketing/channel-marketing/) it is.  
- Change the `Campaign Owner` to your name
- Update `Start Date` to the date of launch
- Update `End Date` to when the campaign concludes
- Update `Budgeted Cost` - If cost is $0 list 1 in the Budgeted Cost field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by 0 you will always get 0 as the pipe2spend calculation.
- Update `Region` and `Sub-region` if you have the data available
- Update `Budget Holder`
- Update `Is this an in person event?`
- Update `Will there be MDF Funding?`
- Update `Is a Channel Partner Involved?`
- Update `Channel Partner Name`
- Click Save
- Add the Marketo program link and SFDC campaign link to the epic.


#### Step 5: Update List Upload Request Issue
- Update the List upload request issue to have these leads imported in. This should already have been created and linked to the epic.
    - [Create issue (if not already done)](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=mdf-list-upload))
    - Please follow the [list import criteria and guidelines](/handbook/marketing/marketing-operations/list-import/#import-methods-and-their-sla)
- **NOTE:** Leads should **NOT** be marked as `opt-in` unless they specifically opted in to **GitLab** emails. 
- **NOTE:** Phone numbers are required in order for the lead to be passed to Vartopia. Please make sure that field is populated.

### Step 6: Load List and Activate Smart Campaign
- Once list is loaded, loader should go to the `01 - Processing` campaign and `Run Once`
    - Campaign will assign leads to the partner you specified in step 3 in Vartopia

# Alliance Marketing Campaigns

This section is to walk through the technical setup of webcasts hosted by GitLab and/or Alliance Partner. Unlike Channel leads, Alliance leads follow the regular [lead and contact statuses](/handbook/marketing/marketing-operations/#lead-and-contact-statuses) and [scoring model](/handbook/marketing/marketing-operations/#lead-scoring-lead-lifecycle-and-mql-criteria).

## Webcast Setup

All Marketo templates will have 2 tokens added to them that the campaign owner should update,`{{My.Partner Name}}` and `{{My.CRM Partner ID}}`.

The `CRM Partner ID` can be retrieved by identifying the `Account ID (18)` of the Alliance Partner - refer to this [list](https://gitlab.my.salesforce.com/00O8X000008mxIb).

First, use the general set up found in [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up). The partner steps are nested in the typical Marketo program templates to clone. Once the campaign is cloned, follow the steps below in addition to the other setup steps found on the campaigns and programs page.

### On24 Webcast Hosted by GitLab (Lead capture via forms) 

GitLab can drive webcasts with Alliance Partners using [On24](https://about.gitlab.com/handbook/marketing/virtual-events/webcasts/#on24-webcast-setup). To incorporate the steps required for partners, follow these additional steps.

#### Step 1: Setup in Marketo

 1. Update  `{{my.CRM Partner ID}}`  with the [Account (18)](https://gitlab.my.salesforce.com/00O8X000008mxIb) of the partner.
 2. Update  `{{my.Partner Name}}`  with the name of the partner. 
 3. The registration landing page must have the following:
    -   `FORM 3299: Alliances` with a hidden field that captures  `utm_partnerid`.
    -   The **URL must include the utm parameter with the CRM Partner ID** to the landing page to lead to be associated with the Alliance partner.
 4. Activate `01a Registration Flow (single timeslot)` 
 5.  Activate `00 Interesting Moments` and interesting moments will dynamically change if there is a partner involved to reflect that.
 6. (no setup needed) Marketo will process. 
	 1. If there is a  `CRM Partner ID`
	    1.  Set  `CRM Partner ID (Look up)`
	    2.  Set  `Partner Type` = `Alliance Partner` (by Salesforce) 

#### Step 2: Update SFDC Campaign

 -   Update  `Campaign Type Details` 
-   Change the  `Campaign Owner`  to your name
-   Update  `Start Date`  to the date of launch
-   Update  `End Date`  to when the campaign concludes
-   Update  `Budgeted Cost`  - If cost is $0 list 1 in the Budgeted Cost field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by 0 you will always get 0 as the pipe2spend calculation.
-   Update  `Region`  and  `Sub-region`  if you have the data available
-   Update  `Budget Holder`
-   Update  `Is an Alliance Partner Involved?`
-   Update  `Alliance Partner Name`
-   Click Save

### Webcast Hosted by Alliance Partner (Lead capture via list uploads)

**NOTE:** Upon list import, ensure the Google sheet column for `CRM Partner ID` is populated, this will help associate the partner lead with the Alliance partner.  

If a form isn't available to capture registration, follow these additional steps:

#### Step 1: Update Tokens in Marketo 

-   Update  `{{my.CRM Partner ID}}`  with the [Account (18)](https://gitlab.my.salesforce.com/00O8X000008mxIb) of the partner.
-   Update  `{{my.Partner Name}}`  with the name of the partner.
- (No setup required)  Interesting moments will dynamically change if there is a partner involved to reflect that.

#### Step 2: Update SFDC Campaign

 -   Update  `Campaign Type Details` 
-   Change the  `Campaign Owner`  to your name
-   Update  `Start Date`  to the date of launch
-   Update  `End Date`  to when the campaign concludes
-   Update  `Budgeted Cost`  - If cost is $0 list 1 in the Budgeted Cost field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by 0 you will always get 0 as the pipe2spend calculation.
-   Update  `Region`  and  `Sub-region`  if you have the data available
-   Update  `Budget Holder`
-   Update  `Is an Alliance Partner Involved?`
-   Update  `Alliance Partner Name`
-   Click Save

#### Step 3: Update `CRM Partner ID` Column in Google Sheet

 - In the list upload, include the `CRM Partner ID` value in the [spreadsheet](https://docs.google.com/spreadsheets/d/1dzFqwjoBat8sna0uZu9RSVTsPvAZnJ4Xx4GkZllAUD0/edit#gid=257616838) column. If the lead is not associated with an Alliance partner, leave the column blank.


#### Step 4: Update List Upload Request Issue

-   Please follow the  [list import criteria and guidelines](https://about.gitlab.com/handbook/marketing/marketing-operations/list-import/#import-methods-and-their-sla)


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

This field is the Salesforce `Account ID (18)` associated with the partner account. 

For a running list of Channel Partners and their CRM IDs, which is critical to the channel partner lead flow, click [here](https://gitlab.my.salesforce.com/00O4M000004aSq6), while the `CRM Partner ID` for Alliance Partners can be found [here](https://gitlab.my.salesforce.com/00O8X000008mxIb).

If you are working with an Open or Select partner who is not listed in the linked SFDC report, their partner ID which can be found in their Partner Account record within SFDC, in the 9th section called `Vartopia Deal Registration Access`. If you can't find the field, do a quick `commandF` for the word `Account ID (18)` and that will take you to the ID or you can retrieve the 18 character ID from the Salesforce URL. If for some reason the ID is missing, reach out in the [#channel-programs-ops](https://gitlab.slack.com/archives/CTM4T5BPF) slack room.

### CRM Partner ID (Look up)

The lookup field retrieves the name of the partner account associated with the `Account ID (18)`.

### Lead Acquisition Source

This field records the source type of the partner lead. The biggest driver for this field is to isolate the source type that applies to the recall process including `Owned Event` and `Trial - Enterprise`.

The reason why [`Initial Source`](https://about.gitlab.com/handbook/marketing/marketing-operations/#initial-source) isn’t used for this use case is because the field value must equal to `Channel Qualified Lead` to be attributed to and sourced by Channel Partner.

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
