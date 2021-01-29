---
layout: markdown_page
title: "Paid Surveys"
---

## Overview
This page focuses on paid surveys through external vendors as a tactic used within marketing campaigns, including account centric campaigns.

### Process in GitLab to organize epic & issues

The project owner is responsible for following the steps below to create the epic and related issues in GitLab.

1. Project owner (FMM) creates the main tactic issue
1. Project owner (FMC) creates the epic to house all related issues (code below)
1. Project owner (FMC) creates the relevant issues required (shortcut links in epic code below)
1. Project owner (FMC) associates all the relevant issues to the newly created epic, as well as the original issue
1. Project owner (FMC) sets due dates for each issue, based on agreed upon SLAs between teams for each task, and confirms accurate ownership for each issue

*Note: if the date of a survey changes, Project owner (FM) is responsible for changing the due dates of all related issues to match the new date, and alerting the team members involved.*

### Code for epic

```
<!-- Name this epic using the following format, then delete this line: Paid Survey - [Vendor] - [3-letter Month] [Date], [Year] --->

## [Main Issue >>]()

## [Copy for landing page and emails >>]() - [template](https://docs.google.com/document/d/1j43mf7Lsq2AXoNwiygGAr_laiFzmokNCfMHi7KNLjuA/edit)

## :notepad_spiral: Key Details 
* **Project Owner (FMM):** 
* **FMC/FMS:** 
* **Type:** Paid Survey
* **Sales Segment (choose primary):** `Large, Mid-Market, or SMB`
* **Sales Region (choose one):** `AMER, EMEA, APAC`
* **Sales Territory (optional, if specific):** 
* **Goal:** `Please be specific on the metric this is meant to impact.`
* **Campaign Tag:**  
* **Budget:** 
* **Launch Date:**  [MM-DD-YYYY] (this is the date the survey begins through the vendor)
* [ ] [main salesforce program]()
* [ ] [main marketo campaign]()
* [ ] Campaign UTM - FM to fill in (Format: campaign tag - change to all lowercase, no spaces, hyphens, underscores, or special characters)

## User Experience
[What is the anticipated user experience? FMM to provide a description of the journey as if they were the end user - from communications received (both from GitLab and/or from vendor), to what the user provides in survey, what happens after they submit, what do they receive from us after we upload the leads, and beyond... what is the end-to-end journey for the user?]

## Additional description and notes about the tactic
[FMM add whatever additional notes are relevant here]

## Issue creation

* [ ] Program Tracking
  - [If tactic owner is Campaigns Team](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-program-tracking)
  - [If tactic owner is Field Marketing Team](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=program-tracking) - FMC creates, assigns to FMC
* [ ] [Write copy issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=write-copy) - FMC creates, assigns to FMM
* [ ] [Sales Nominated Issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_sales_nominated) - FMC creates, assigns to the FMM (issue will be triaged)
* [ ] [Email Invitation Issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_email_invite) - FMC creates one for each invitation requested, assigns to FMM (issue will be triaged)
* [ ] [Follow Up Email issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_email_followup) - FMC creates, assigns to FMM (issue will be triaged)
* [ ] [Add to Nurture](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_add_nurture) - FMC creates, assigns to FMM (issue will be triaged)
* [ ] [List Clean and Upload](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=event-clean-upload-list) - FMC creates, assigns to FMM and MOps
* [ ] [Organic social issue created](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/-/issues/new?issuable_template=social-event-request#) (*optional*) - Auto-assignments listed in template

**If we receive final PDF of Survey Results:**
* [ ] [Pathfactory Upload Issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-pathfactory-upload) - FMM creates, issue will go through triage
* [ ] [Pathfactory Track Issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-pathfactory-track) - FMM creates, issue will go through triage

**Optional: create the optional issues only we have rights to survey results and there is a multi-channel plan for how the survey will be promoted*

/label ~"Field Marketing" ~"mktg-status::wip" ~"Paid Survey"
```


### SimplyDirect <> Marketo Integration
SimplyDirect and Marketo are integrated, so that SimplyDirect can send leads to Marketo immediately without a list upload. You must follow [these directions](https://about.gitlab.com/handbook/marketing/marketing-operations/#marketo-program-and-salesforce-campaign-set-up) exactly, each time you set up a new survey program, or else the integration will not work. 
