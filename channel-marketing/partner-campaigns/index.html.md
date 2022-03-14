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
For a running list of partners and their CRM Ids, which is critical to the processes below, [click here](https://docs.google.com/spreadsheets/d/1VGWbbxyjclAopwO_e3JnYZtXysPQ1-UIUt8uBZRXLyE/edit?usp=sharing).

If you are working with an Open or Select partner who is not listed please add the partner to the Google Doc and include their partner ID which can be found in their Partner Account record within SFDC, in the 9th section called "Vartopia Deal Registration Access".  The field labeled Account ID (18) contains their ID. If you can't find the field, do a quick `commandF` for the word `Account ID (18)` and that will take you to the ID. If for some reason the ID is missing, reach out in the #channel-programs-ops slack room. 

### Scoring
Leads that are actively being worked by the partner will be excluded from scoring. Once they are no longer being worked by the partner, they will be scored again. More details on the [scoring page](/handbook/marketing/marketing-operations/marketo/#scoring-model). 

# Types of Partner Campaigns
Each campaign has it's own ROE for lead routing and email practices. Follow the [Mural](https://app.mural.co/t/gitlab2474/m/gitlab2474/1637023136930/1fd8a497f2500ef8d7f12920d71595d0c412fa91?sender=awaller1257) to find the type of event and the follow up that results from it. 


## Passing to Vartopia and Partner Visibility
In order for the Partner to be able to see and action the lead in Vartopia, the SFDC record must have the following fields updated. Vartopia calls SFDC every hour looking for updates to the SFDC record.
1. `Partner Account ID` not equal to `NULL` (set my Marketo)
1. `Prospect Share Status` = `Sending to Partner` (set by LeanData)
1. `Partner Prospect Status` = `Qualifying` (set by LeanData)

When assigned a lead in Vartopia, the admin will receive an email alert with information about the lead and SLAs attached to it.

Watch [this video](https://youtu.be/BmmiH_ctALk) for step by step instructions where partners can view, accept, reject, re-assign and convert leads to deal registration.

### Partner SLAs
(WIP - Future state) Partners have 5 business days to accept a lead once they are assigned the lead in Vartopia. After accepting, they then have 10 business days to revise the lead status before the lead is re-routed back to GitLab for follow up.

## Partner Only Campaigns - MDF funded
These campaigns are GitLab funded via MDF, but all leads are passed to the partner. We upload these lists into our systems to be able to track pipeline from resulting Deal Registrations in Vartopia. You can find Marketo and SFDC Campaign set up [here](/handbook/marketing/channel-marketing/partner-campaigns/#mdf-funded-campaigns).

When a lead/contact is associated to a campaign the following steps occur:

1. Marketo processes the lead, marks as `Marketing Suspended` and syncs to SFDC
1. LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`

## Joint GitLab and Partner Events
When GitLab and Partners participate in events together, they will share leads. The mural above has a visual workflow of these steps. [Go here](/handbook/marketing/channel-marketing/partner-campaigns/#joint-marketing-campaign-set-up) for Marketo/SFDC campaign set up.

When a lead/contact is associated to a campaign the following occurs:
1. Marketo processes the lead and syncs to SFDC
1. Lean Data Processes the following (waterfall):
    1. If partner sourced (new or existing,) LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`
    1. If lead/contact has a status of `Accepted`, `Qualifying` or `Qualified`, LeanData will assign to appropriate SDR
    1. If lead/contact DOES NOT have a status of `Accepted`, `Qualifying` or `Qualified`, LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner`


## Trials from Partners
Partners can host our self-managed trial form. They will have a specific UTM parameter that is captured upon form submit that allows us to pass that lead directly to the partner. Below explains the backend for the activity. Each page must have the UTM `utm_partnerid` in the URL populated, otherwise we cannot pass to the partner.  

You can find the UTM builder [here](/handbook/marketing/utm-strategy/#utm-builder). For a list of the partner IDs to add, [go here](e/handbook/marketing/channel-marketing/partner-campaigns/index.html.md?from_merge_request_iid=95987#partner-crm-ids).

1. Form is hosted on a GitLab or Partner landing page. Partners should always use the `FORM 2983: Partner Self-Hosted Enterprise Trial Form` Form. 
   - This form has a hidden field that captured `utm_partnerid`
1. Once submitted, Marketo then appends that value to the `CRM Partner ID (lookup)` (lead only) and `Vartopia Partner Account ID` fields
1. Marketo processes the lead and sends the trial activation key via email to the prospect
1. Marketo [suspends emails](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) being sent from GitLab to prospect
1. Marketo sends email alert to partner team and syncs lead to SFDC
1. LeanData updates the `Partner Prospect Status` to `Qualifying`, `Prospect Share Status` = `Sending to Partner` if `Partner Account` is not `NULL`. 
1. Salesforce.com sends alert email to Partner
1. Vartopia picks up lead and assigns to partner in Vartopia based on ID
1. Lead/Contact fields for Partner information are automatically populated
1. `Vartopia Lead Management: @cfarris`


# Setup in Marketo

## Trial Campaign Set Up
There is no marketo program or SFDC campaign setup necessary to track self-managed trials. Every partner trial campaign can utilize setup from `Partner - Trial - Self-managed` campaign, without creating a new Marketo or SFDC campaign. Follow [directions above](/handbook/marketing/channel-marketing/partner-campaigns/#trials-from-partners) to understand what form to use and what processes to follow.

## Joint Marketing Campaign Set Up
First, use the general set up is found [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up). The partner steps are nested in the typical Marketo program templates to clone. Once the campaign is cloned, follow the steps below in addition to the other setup steps found on the campaigns and programs page. 

All Marketo templates will have a token added to them that the campaign owner should update, {{my.partner name}}.
- Partner Name: Does not need to be official, it will be used on the form consent language and interesting moments, so needs to be customer facing. Example:  `By registering for this GitLab and {{my.partner name}} event....`

All Marketo templates will have a token added to them that the campaign owner should updates, {{my.partner crm id}}.
- All partner IDs can be [found here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids). 


### Online Events: (Lead capture via forms) BEFORE Launch
1. Update token on Marketo program {{my.Partner Name}}
1. Update token on Marketo program {{my.partner crm id}}
1. Update registration landing page to have `FORM 3146: Partners w/ consent+token` 
   - To update the page:
       - Edit the landing page draft
       - Double click on the form
       - Update form `FORM 3146: Partners w/ consent+token` and click `swap`
       - Approve and close landing page
   - Forms has a hidden field that captures `utm_partnerid` to associate to the partner and captures contact consent for the partner.
   - The partner MUST HAVE this utm on their link to the landing page otherwise they will not be routed leads
1. Update `01 Processing` smart campaign's smart list to reference `FORM 3146: Partners w/ consent+token` instead of the form that is in there by default.
1. (no setup needed) Marketo has a [smart campaign](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC25176B2ZN19) running that will listen for this form fill to `check` the `partner consent` field.
1. Make sure typical processing smart campaigns are on and configured
     - (no setup needed) If a `partnerid` was captured in the UTMs, then Marketo will [request a campaign](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC25176B2ZN19) to append that value to the `CRM Partner ID (lookup)` and `Vartopia Partner Account ID` fields
   - If no partner ID is captured, Marketo assumes it is GitLab sourced.
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that.
1. (no setup needed) LeanData picks up from there, and the lead is routed accordingly to either GitLab or the Partner in Vartopia.

The process above will work for an event with multiple partners driving to it. Make sure they have their utms correct when sending traffic to the registration page.

### Offline Events: (Lead capture via list uploads)
If a form isn't available to capture registration, follow these steps:

1. In List upload issue, add a column for CRM Partner ID and add the value. - All partner IDs can be [found here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids). If the partner did not source the lead (AKA GitLab did), then leave that column blank.
1. Mark in the list upload issue that this is a joint event and the partner will be following up with leads
1. (no setup needed) If a `partnerid` was captured on the list, then Marketo will [request a campaign](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC25176B2ZN19) to append that value to the `CRM Partner ID (lookup)` and `Vartopia Partner Account ID` fields. If no ID was captured, the list will route to GitLab SDRs.
1. (no setup needed) Interesting moments will dynamically change if there is a partner involved to reflect that.

The process above will work for an event with multiple partners driving to it. Make sure they have the partner ID properly appended to each person on the list.



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

For more information on Allocadia, go [here](/handbook/marketing/marketing-operations/campaigns-and-programs/#allocadia-information)

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
- NOTE: Leads should **NOT** be marked as `opt-in` unless they specifically opted in to **GitLab** emails.

### Step 6: Load List and Activate Smart Campaign
- Once list is loaded, loader should go to the `01 - Processing` campaign and `Run Once`
    - Campaign will assign leads to the partner you specified in step 3 in Vartopia



