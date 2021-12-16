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
This page is to walkthrough the tehcnical setup of different partner campaign types from Marketo>SFDC>Vartopia.

For a running list of partners and their CRM Ids, which is critical to the processes below, [click here](https://docs.google.com/spreadsheets/d/1VGWbbxyjclAopwO_e3JnYZtXysPQ1-UIUt8uBZRXLyE/edit?usp=sharing).

## Email Management
When a lead is passed to a partner, they will be suspended from GitLab marketing unless they opt-in specifically to GitLab marketing after being passed, or the partner returns the lead to GitLab. This in currently WIP. Go to the [email management page](/handbook/marketing/marketing-operations/email-management/#overview) for more email policies. 

# Types of Partner Campaigns

## Joint GitLab and Partner Events
When GitLab and Partners participate in events together, they will share leads. The mural below shows the current rules of engagement

<iframe src='https://app.mural.co/embed/b89f9208-e9f6-4df1-9c92-a886a5af0642'
        width='100%'
        height='480px'
        style='min-width: 640px; min-height: 480px; background-color: #f4f4f4; border: 1px solid #efefef'
        sandbox='allow-same-origin allow-scripts allow-modals allow-popups allow-popups-to-escape-sandbox'>
</iframe>

Lead statuses that are considered `GitLab actively working` are below. Being marked as such does not mean they will not be passed to the partner - follow the mural above for those rules. This will be iterated on in the short future.

|Status|
|-----|
|Accepted|
|Qualifying|
|Qualified|


## Trials from Partners
Partners can host our self-managed trial form. They will have a specific URL that is captured that allows us to pass that lead directly to the partner. This explains the backend for the activity.

1. Form is hosted on a GitLab or Partner landing page. Partners should always use the `FORM 2983: Partner Self-Hosted Enterprise Trial Form` Form. 
   - This form has a hidden field that captured `utm_partnerid`
1. Once submitted, Marketo then appends that value to the `CRM Partner ID (lookup)` and `Vartopia Partner Account ID` fields
1. Marketo processes the lead and sends the trial activation key via email to the prospect
1. Marketo [suspends emails](/handbook/marketing/channel-marketing/partner-campaigns/#email-management) being sent from GitLab to prospect
1. Marketo sends email alert to partner team and syncs lead to SFDC (Salesforce.com)
1. !!!`Lean Data: PLEASE ENTER DESCRIPTION OF WORK HERE @bpeterson` LeanData picks up the lead and assigns to the CAM
1. !!!!Vartopia picks up lead and assigns to partner
1. !!!Lead/Contact fields for Partner information are automatically populated by LeanData??
1. `Sales Systems: (SFDC):PLEASE ENTER DESCRIPTION OF WORK HERE @sheelaviswanathan`
1. `Vartopia Lead Management: @cfarris`


## Partner Only Campaigns - MDF funded
Some campaigns are run only by partners, without GitLab involvement. Process TBD.


# Placeholder for Setup in Marketo
Placeholder - will create directions for this utilizing our documentation on the [campaigns and programs](https://about.gitlab.com/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up) page.



