---
layout: handbook-page-toc
title: "Channel Marketing"
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Purpose
This page is to walkthrough the tehcnical setup of different partner campaign types from Marketo>SFDC>Vartopia, including Marketo and SFDC campaign set up for Joint Gitlab and Partner Events, Partner Trials and MDF funded campaigns. The sections below describe them in detail.

## Email Management
When a lead is passed to a partner, they will be suspended from GitLab marketing unless they opt-in specifically to GitLab marketing after being passed, or the partner returns the lead to GitLab. Read more on the [email management page](/handbook/marketing/marketing-operations/email-management/#partners-and-email-communication). 

Keep in mind, they will still be eligible for `operational` email sends - which includes most follow up emails. If you want to exclude them, you will need to add a parameter to the smart list of that send campaign to say `Prospect Share Status` not equal to `Pending, Sending to Partner, Accepted`

## Partner CRM Ids
For a running list of partners and their CRM Ids, which is critical to the processes below, [click here](https://gitlab.my.salesforce.com/00O4M000004aSq6).

If you are working with an Open or Select partner who is not listed in the linked SFDC report, their partner ID which can be found in their Partner Account record within SFDC, in the 9th section called "Vartopia Deal Registration Access".  The field labeled Account ID (18) contains their ID. If you can't find the field, do a quick `commandF` for the word `Account ID (18)` and that will take you to the ID. If for some reason the ID is missing, reach out in the #channel-programs-ops slack room. 

### Scoring
Leads that are actively being worked by the partner will be excluded from scoring. Once they are no longer being worked by the partner, they will be scored again. More details on the [scoring page](/handbook/marketing/marketing-operations/marketo/#scoring-model). 

## Partner Accounts
The account in SFDC must be set to `Vartopia Partner Account: Vartopia Access = Yes` in order to be passed leads. If that field is marked false, a SFDC error will occur when `Partner Account ID` tries to be set. If this error occurs, the lead will not sync from marketo to sfdc, or if they are already existing in SFDC, that field will not be populated.
## Passing to Vartopia and Partner Visibility
In order for the Partner to be able to see and action the lead in Vartopia, the SFDC record must have the following fields updated. Vartopia calls SFDC every hour looking for updates to the SFDC record.
1. `Partner Account ID` not equal to `NULL` (set by Marketo)
1. `Prospect Share Status` = `Sending to Partner` (set by LeanData)
1. `Partner Prospect Status` = `Qualifying` (set by LeanData)


Once synced sucessfully between systems, the `Vartopia Transaction Id` in SFDC will update from Vartopia. If this ID is missing, the lead did not sync correctly. Make sure that the fields above are correctly populated, and if they are not, reach out to Vartopia support.

When assigned a lead in Vartopia, the admin will receive an email alert with information about the lead and SLAs attached to it. The `Vartopia Prospect Id` (ex. L-555555) is a unique lead number identified populated by SFDC that shows in Vartopia and SFDC. We can use this as a non-PII identifier in both systems.

Watch [this video](https://youtu.be/BmmiH_ctALk) for step by step instructions where partners can view, accept, reject, re-assign and convert leads to deal registration.

### SFDC Partner Prospect Admin 
This SFDC field in the partner account MUST be filled in or else the records will be passed to no one. 

### Prospect Share Status definitions 
When a prospect is ready to be shared with a partner there are 2 fields related to 
the sharing process. 

The `Prospect Share Status` governs the sharing of the lead and the receipt of the 
lead by the partner. The prospect share status has statuses that are set by both the
manufacturer and the partner


1. **Sending to Partner**: This is the initial status set when sharing a lead to a 
partner. This status is set by GitLab.
1. **Pending**: This is an automated status, set when the lead is synced to the 
partner facing system. As part of the sync flow, the system sets the status to 
pending in both the partner facing system and SFDC. It is visible to both the 
reseller and the MFG.
   a. Meaning in SFDC: Pending indicates to the MFG that the lead has been 
successfully shared.
   b. Meaning in partner facing system: Pending indicates to the reseller 
they have a new lead shared from the MFG that they now need to 
accept or reject.
1. **Accepted**:    Indicates the reseller has accepted the lead and intends to work 
the opportunity. This status is automatically updated in SFDC
1. **Rejected**:    indicates the reseller has refused the lead. This status is 
automatically updated in SFDC
a. *Note: rejecting a prospect immediately removes the prospect from 
the resellers’ system. They no longer have any visibility to the 
prospect. The sync ID is cleared from the prospect record in SFDC, and 
the record is ready to be assigned to a new reseller. The prospect will 
be in Rejected and Qualifying Status. A new partner can be selected, 
and the Share Status set back to “Sending to Partner” to reshare the 
prospect. 
1. **Recall**: Indicates the prospect is being recalled by the MFG. This is set by the 
MGF in SFDC. When the system syncs this will remove the prospect from the 
resellers view. It will also clear out the assignment fields and sync ID making 
the prospect ready to be shared with a different reseller. 
a. *Note: There is no alert or notification to a reseller when a prospect is 
recalled.

### Partner Prospect Status Definitions 

The `Partner Prospect Status` is updated by the partner and identifies the status of 
the lead as the partner works it though the sales process.

1. **Qualifying**:    Indicates the reseller is working on the lead.
a. *Note: This status is initially set by the MFG when sharing the prospect.
It is visible to both the MFG and the reseller. The prospect remains in 
qualifying until updated by the reseller.
1. **Qualified**:    Indicates the reseller has engaged the prospect and determined 
there is a valid opportunity. The status is automatically updated in SFDC.
1. **Disqualified**:    Indicates the reseller has determined the prospect is not a valid 
opportunity. The status is automatically updated in SFDC
1. **Converted to DR**:    Indicates the reseller has converted the prospect to a deal 

### Partner SLAs
(WIP - Future state) Partners have 5 business days to accept a lead once they are assigned the lead in Vartopia. After accepting, they then have 10 business days to revise the lead status before the lead is re-routed back to GitLab for follow up.


# Types of Partner Campaigns
Each campaign has it's own ROE for lead routing and email practices. Follow the [Mural](https://app.mural.co/t/gitlab2474/m/gitlab2474/1637023136930/1fd8a497f2500ef8d7f12920d71595d0c412fa91?sender=awaller1257) to find the type of event and the follow up that results from it.

## Partner Only Campaigns - MDF funded
These campaigns are GitLab funded via MDF, but all leads are passed to the partner. We upload these lists into our systems to be able to track pipeline from resulting Deal Registrations in Vartopia. You can find Marketo and SFDC Campaign set up [here](/handbook/marketing/channel-marketing/partner-campaigns/#mdf-funded-campaigns).

When a lead/contact is associated to a campaign the following steps occur:

1. Marketo processes the lead, marks as `Marketing Suspended` and syncs to SFDC
1. LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`

## Joint GitLab and Partner Events
When GitLab and Partners participate in events together, they will share leads. The mural above has a visual workflow of these steps. [Go here](/handbook/marketing/channel-marketing/partner-campaigns/#joint-marketing-campaign-set-up) for Marketo/SFDC campaign set up.

**NOTE:** Phone numbers are required in order for the lead to be passed to Vartopia. If a phone number has not been supplied via the list, Marketo will appended a phone number automatically of `555-555-5555`. 

When a lead/contact is associated to a campaign the following occurs:
1. Marketo processes the lead based on who sources it. Once finished processing, the lead is synced to SFDC.
  * We are utilizng the `Dietary Restriction` field until we have a new field with a better name.
        * GitLab sourced leads will be marked as `Vegan`
        * Partner sourced leads will be marked as `Nut Allergy`
1. Lean Data Processes the following (waterfall):
    1. If partner sourced (new or existing) and marked as `Nut Allergy`, LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`
    1. If lead/contact is marked as `Vegan` and has a status of `Accepted`, `Qualifying` or `Qualified`, LeanData will assign to appropriate SDR
    1. If lead/contact is marked as `Vegan` and DOES NOT have a status of `Accepted`, `Qualifying` or `Qualified`, LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`


## Trials from Partners
Partners can host our self-managed trial form. They will have a specific UTM parameter that is captured upon form submit that allows us to pass that lead directly to the partner. Below explains the backend for the activity. Each page must have the UTM `utm_partnerid` in the URL populated, otherwise we cannot pass to the partner.  

You can find the UTM builder [here](/handbook/marketing/utm-strategy/#utm-builder). For a list of the partner IDs to add, [go here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids).

1. Form is hosted on a GitLab or Partner landing page. Partners should always use the `FORM 2983: Partner Self-Hosted Enterprise Trial Form` Form. 
   - This form has a hidden field that captured `utm_partnerid`
1. Once submitted, Marketo then appends that value `Vartopia Partner Account ID` fields
1. Marketo processes the lead and sends the trial activation key via email to the prospect
1. Marketo [suspends emails](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) being sent from GitLab to prospect
1. Marketo sends email alert to partner team and syncs lead to SFDC
1. LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner` if `Partner Account` is not `NULL`. 
1. Lead/Contact owner is updated to the assigned CAM to the partner account
1. Salesforce.com sends alert email to Partner
1. Vartopia picks up lead and assigns to partner in Vartopia based on ID
1. Lead/Contact fields for Partner information are automatically populated



# Setup in Marketo

## Trial Campaign Set Up
There is no marketo program or SFDC campaign setup necessary to track self-managed trials. Every partner trial campaign can utilize setup from `Partner - Trial - Self-managed` campaign, without creating a new Marketo or SFDC campaign. Follow [directions above](/handbook/marketing/channel-marketing/partner-campaigns/#trials-from-partners) to understand what form to use and what processes to follow.

## Joint Marketing Campaign Set Up
First, use the general set up is found [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up). The partner steps are nested in the typical Marketo program templates to clone. Once the campaign is cloned, follow the steps below in addition to the other setup steps found on the campaigns and programs page. 

All Marketo templates will have 2 tokens added to them that the campaign owner should update, {{my.partner name}} and {{my.partner crm id}}
- Partner Name: Does not need to be official, it will be used on the form consent language and interesting moments, so needs to be customer facing. Example:  `By registering for this GitLab and {{my.partner name}} event....`
- Partner ID: All partner IDs can be [found here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids). 


### Online Events: (Lead capture via forms) BEFORE Launch
1. Update token on Marketo program {{my.partner name}}
1. Update token on Marketo program {{my.partner crm id}}
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
 1.  (no setup needed) Marketo will process...
        1. If no `partner crm id` is captured via the form, will be marked as GitLab sourced (`Dietary Restriction` = `Vegan`)
        1. If there is a `partner crm id` 
        1. Sets `Vartopia Partner Account ID` fields
            - If `Dietary Restriction` = `Nut Allergy` (Partner Sourced), `Vartopia Partner Account ID` will be updated with the value in `Partner CRM ID` from the form
            - If `Dietary Restriction` = `Vegan` (GL Sourced), `Vartopia Partner Account ID` will be updated with the token value set at the program level
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that. (`Dietary Restriction` = `Nut Allergy`)
1. (no setup needed) LeanData picks up from there, and the lead is routed accordingly to either GitLab or the Partner in Vartopia.

The process above will work for an event with multiple partners driving to it. Make sure they have their utms correct when sending traffic to the registration page. You still need to fill out the token, but only one value will be accepted. Please decide ahead of time who the `default` partner is that will receive the leads they did not source.

### Offline Events: (Lead capture via list uploads, not)
**NOTE:** Phone numbers are required in order for the lead to be passed to Vartopia. Please make sure that field is populated.

If a form isn't available to capture registration, follow these steps:

1. In List upload issue, add a column for CRM Partner ID and add the value. - All partner IDs can be [found here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids). If the partner did not source the lead (AKA GitLab did), then leave that column blank.
1. Mark in the list upload issue that this is a joint event and the partner will be following up with leads
1. (no setup needed) Turned on by person who loads the list into Marketo.
    1. If a `CRM Partner ID` was captured on the list, then Marketo will set `Dietary Restriction` = `Nut Allergy` (Partner Sourced), `Vartopia Partner Account ID` will be updated with the value in `Partner CRM ID` from the form.
    1. If a `CRM Partner ID` was not captured on the list,  `Dietary Restriction` = `Vegan` (GL Sourced), `Vartopia Partner Account ID` will be updated with the token value set at the program level
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that.

The process above will work for an event with multiple partners driving to it. Make sure they have the partner ID properly appended to each person on the list. You still need to fill out the token, but only one value will be accepted. Please decide ahead of time who the `default` partner is that will receive the leads they did not source.



## MDF funded Campaigns
These campaigns follow their own processes not found on the campaigns-and-programs page. 

### Step 1: Clone Marketo program (TBC)
- Clone [Marketo Template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG9881D4)
- Update the name to match the naming convention YYYYMMMDD__MDF Partner Name_Event Name

### Step 2: Sync Program to SFDC
- At the program main screen in Marketo, where it says Salesforce Sync with "not set", click on "not set"
- Click "Create New." The program will automatically populate the campaign tag, so you do not need to edit anything.
- Update description with the link to the SFDC MDF request and Coupa ID and Allocadia ID (if you have it)
- Click "Save"


### Step 3: Update Tokens in Marketo
- Update `{{my.Partner CRM ID}}` with the [15-digit CRM ID](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids) of the partner that will be following up with these leads.
- Update `{{my.Partner Name}}` with the name of the partner who will be following up.

### Step 4: Update SFDC Campaign
If you included the Allocadia ID, follow these steps. Otherwise, you'll need to update additional fields below.
- Change the `Enable Bizible Touchpoints` to `Include only "Responded" Campaign Members`
- `Budgeted Cost` in SFDC pulls from your plan number, not your forecast number from Allocadia. If you do not have a plan cost in Allocadia then `Budgeted Cost` in SFDC will remain blank. If this is the case, you will want to add in your `Budgeted Cost` manually into your SFDC campaign.
- Once Allocadia has updated the SFDC campaign, you will need to double check `Campaign Type` and make sure it still says `Partner - MDF`. If it does not, please update the field.


#### Step 4b: Update without Allocadia
If you did not include the Allocadia ID in the description, you'll need to update the steps below:
- Update `Campaign Type Details` to reflect the [type of MDF campaign](/handbook/marketing/channel-marketing/) it is.  
- Change the `Campaign Owner` to your name
- Update `Large Bucket` based on [criteria](/handbook/marketing/marketing-operations/campaigns-and-programs/#campaign-large-buckets)
- Update `Start Date` to the date of launch
- Update `End Date` to when the campaign concludes
- Update `Budgeted Cost` - If cost is $0 list 1 in the Budgeted Cost field. - NOTE there needs to be at least a 1 value here for ROI calculations, otherwise, when you divide the pipeline by 0 you will always get 0 as the pipe2spend calculation.
- Update `Region` and `Sub-region` if you have the data available
- Update `Budget Holder`
- Update `Is this an in person event?`
- Update `Is a Channel Partner Involved?`
- Update `Channel Partner Name`
- Update `Is an Alliance Partner Involved?`
- Update `Alliance Partner Name`
- Click Save
- Add the Marketo program link and SFDC campaign link to the epic.


### Step 5: Update List Upload Request Issue
- Update the List upload request issue to have these leads imported in. This should already have been created and linked to the epic.
    - [Create issue (if not already done)](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=mdf-list-upload))
    - Please follow the [list import criteria and guidelines](/handbook/marketing/marketing-operations/list-import/#import-methods-and-their-sla)
- **NOTE:** Leads should **NOT** be marked as `opt-in` unless they specifically opted in to **GitLab** emails. 
- **NOTE:** Phone numbers are required in order for the lead to be passed to Vartopia. Please make sure that field is populated.

### Step 6: Load List and Activate Smart Campaign
- Once list is loaded, loader should go to the `01 - Processing` campaign and `Run Once`
    - Campaign will assign leads to the partner you specified in step 3 in Vartopia



