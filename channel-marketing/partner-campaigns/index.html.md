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

## Partner CRM Ids
For a running list of partners and their CRM Ids, which is critical to the processes below, [click here](https://docs.google.com/spreadsheets/d/1VGWbbxyjclAopwO_e3JnYZtXysPQ1-UIUt8uBZRXLyE/edit?usp=sharing).

# Types of Partner Campaigns
Each campaign has it's own ROE for lead routing and email practices. Follow the [Mural](https://app.mural.co/embed/b89f9208-e9f6-4df1-9c92-a886a5af0642) to find the type of event and the follow up that results from it. 

<div style="width: 600px;" class="embed-thumb">
<div style="position: relative; height: 0;overflow: hidden; height: 400px; max-width: 800px; min-width: 320px; border-width: 1px; border-style: solid; border-color: #d8d8d8;">
<a href="https://app.mural.co/t/gitlab2474/m/gitlab2474/1637023136930/1fd8a497f2500ef8d7f12920d71595d0c412fa91?sender=awaller1257" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="ENTER THE MURAL" width="233" height="50"> </a> 
</div>
</div>
</div>

## Joint GitLab and Partner Events
When GitLab and Partners participate in events together, they will share leads. 

Lead statuses that are considered `GitLab actively working` are leads/contacts in `Accepted`, `Qualifying` and `Qualified` statues. Being marked as such does not mean they will not be passed to the partner - follow the mural above for those rules. 


## Trials from Partners
Partners can host our self-managed trial form. They will have a specific UTM parameter that is captured upon form submit that allows us to pass that lead directly to the partner. Below explains the backend for the activity. Each page must have the UTM `utm_partnerid` in the URL populated, otherwise we cannot pass to the partner.  

You can find the UTM builder [here](/handbook/marketing/utm-strategy/#utm-builder). For a list of the partner IDs to add, [go here](e/handbook/marketing/channel-marketing/partner-campaigns/index.html.md?from_merge_request_iid=95987#partner-crm-ids).

1. Form is hosted on a GitLab or Partner landing page. Partners should always use the `FORM 2983: Partner Self-Hosted Enterprise Trial Form` Form. 
   - This form has a hidden field that captured `utm_partnerid`
1. Once submitted, Marketo then appends that value to the `CRM Partner ID (lookup)` and `Vartopia Partner Account ID` fields
1. Marketo processes the lead and sends the trial activation key via email to the prospect
1. Marketo [suspends emails](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) being sent from GitLab to prospect
1. Marketo sends email alert to partner team and syncs lead to SFDC (Salesforce.com)
1. !!!`Lean Data: PLEASE ENTER DESCRIPTION OF WORK HERE @bpeterson` LeanData picks up the lead and assigns to the CAM
1. !!!!Vartopia picks up lead and assigns to partner
1. !!!Lead/Contact fields for Partner information are automatically populated by LeanData??
1. `Vartopia Lead Management: @cfarris`


## Partner Only Campaigns - MDF funded
Some campaigns are run only by partners, without GitLab involvement. Process TBD.


# Setup in Marketo
Placeholder - will create directions for this utilizing our documentation on the [campaigns and programs](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up) page. 

## Trial Campaign Set Up
There is no marketo program or SFDC campaign setup necessary to track self-managed trials. Every partner trial campaign can utilize setup from `Partner - Trial - Self-managed` campaign, without making any changes. Follow [directions above](/handbook/marketing/channel-marketing/partner-campaigns/#trials-from-partners) to understand what form to use and what processes to follow.

## Joint Marketing Campaign Set Up
WIP - Follow directions on [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up)

## MDF Funded Campaign Set up
TBD



