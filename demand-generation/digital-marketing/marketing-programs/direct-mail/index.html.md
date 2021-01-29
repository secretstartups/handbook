---
layout: markdown_page
title: "Direct Mail"
---

## Overview
This page focuses on direct mail as a tactic used within marketing campaigns, including account centric campaigns.

If you are not in Field Marketing, but you are interested in running a content syndication campaign, then please reach out to the  Demand Generation team on slack. 

### Process in GitLab to organize a direct mail

The project owner is responsible for following the steps below to create the epic and related issues in GitLab.

1. Project owner (FMM) creates the main tactic issue
1. Project owner (FMC) creates the epic to house all related issues (code below)
1. Project owner (FMC) creates the relevant issues required (shortcut links in epic code below)
1. Project owner (FMC) associates all the relevant issues to the newly created epic, as well as the original issue
1. Project owner (FMC) sets due dates for each issue, based on agreed upon SLAs between teams for each task, and confirms accurate ownership for each issue

*Note: if the date of a direct mail changes, project owner (FM) is responsible for changing the due dates of all related issues to match the new date, and alerting the team members involved.*

### Code for direct mail epic

```
<--- Name this epic using the following format, then delete this line: Direct Mail - [Vendor] - [3-letter Month] [Date], [Year] --->

## [Main Issue >>]()

## [Copy for landing page and emails >>]() - [template](https://docs.google.com/document/d/1j43mf7Lsq2AXoNwiygGAr_laiFzmokNCfMHi7KNLjuA/edit)

## :notepad_spiral: Key Details 
* **Project Owner (FMM):** 
* **FMC/FMS:** 
* **Type:** Direct Mail
* **Campaign Tag:**  
* **Sales Segment (choose primary):** `Large, Mid-Market, or SMB`
* **Sales Region (choose one):** `AMER, EMEA, APAC`
* **Sales Territory (optional, if specific):** 
* **Goal:** `Please be specific on the metric this is meant to impact.`
* **Budget:** 
* **Launch Date:**  [MM-DD-YYYY] (this is the date of the first email, everything is in place to execute on this date)
* [ ] [main salesforce program]()
* [ ] [main marketo campaign]()
* [ ] Campaign UTM - FM to fill in (Format: campaign tag - change to all lowercase, no spaces, hyphens, underscores, or special characters)

## User Experience
[Tactic Owner to provide a description of the user journey - from communication plan, to what the user experiences upon reciept, plus triggers on our end like confirmation email and how GitLab fulfils with the vendor, up until receipt by the user and answering whether or not we get confirmation that they received it... what is the anticipated journey after that?]

## Additional description and notes about the tactic
[FMM add whatever additional notes are relevant here]

## Issue creation

* [ ] [Program Tracking - FM](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=program-tracking) - FMC creates, assigns to FMC
* [ ] [Write copy issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=write-copy) - FMC creates, assigns to FMM
* [ ] [Sales Nominated Issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_sales_nominated) - FMC creates, assigns to the FMM (issue will be triaged)
* [ ] [Email Invitation Issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_email_invite) - FMC creates one for each invitation requested, assigns to FMM (issue will be triaged)
* [ ] [Follow Up Email issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_email_followup) - FMC creates, assigns to FMM (issue will be triaged)
* [ ] [Add to Nurture](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_add_nurture) - FMC creates, assigns to FMM (issue will be triaged)
* [ ] [List Clean and Upload](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=event-clean-upload-list) - FMC creates, assigns to FMM and MOps 

/label ~"Field Marketing" ~"Direct Mail" ~"mktg-status::wip"
```
