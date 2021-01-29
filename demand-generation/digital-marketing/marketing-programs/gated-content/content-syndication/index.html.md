---
layout: markdown_page
title: "Content Syndication"
---

## Overview
This page focuses on content syndicatio through external vendors as a tactic used within marketing campaigns, including account centric campaigns. When employing this tactic, we have promoted our content through a third-party vendor, but do not direct the end users back to our website. In these cases, we often have given them the resource to make available for download to their audience, and recieve the leads to be uploaded.

If you are not in Field Marketing, but you are interested in running a content syndication campaign, then please reach out to the Demand Generation team. 

### Process in GitLab to organize epic & issues

The project owner is responsible for following the steps below to create the epic and related issues in GitLab.

1. Project owner (FMM) creates the main tactic issue
1. Project owner (FMC) creates the epic to house all related issues (code below)
1. Project owner (FMC) creates the relevant issues required (shortcut links in epic code below)
1. Project owner (FMC) associates all the relevant issues to the newly created epic, as well as the original issue
1. Project owner (FMC) sets due dates for each issue, based on agreed upon SLAs between teams for each task, and confirms accurate ownership for each issue

*Note: if the date of the tactic changes, Project owner (FM) is responsible for changing the due dates of all related issues to match the new date, and alerting the team members involved.*

### Code for epic

```
<--- Name this epic using the following format, then delete this line: Content Syndication - [Vendor] - [3-letter Month] [Date], [Year] --->

## [Main Issue >>]()

## [Copy document >>]() - [template](https://docs.google.com/document/d/1j43mf7Lsq2AXoNwiygGAr_laiFzmokNCfMHi7KNLjuA/edit)

## :notepad_spiral: Key Details 
* **Project Owner (FMM):** 
* **Field Marketing Coordinator:** 
* **Type:** Content Syndication
* **Campaign Tag:**  
* **Persona (choose one):** `Practitioner, Manager, or Executive`
* **Use Case (choose primary):** `CI, VC&C, DevSecOps, Other` (FY21-22 focus on CI and VC&C)
* **Sales Segment (choose primary):** `Large, Mid-Market, or SMB`
* **Sales Region (choose one):** `AMER, EMEA, APAC`
* **Sales Territory (optional, if specific):** 
* **Goal:** `Please be specific on the metric this is meant to impact.`
* **Content Type:** [eBook, Report, Whitepaper]
* **Content Title:** [As appears on [this list](https://docs.google.com/spreadsheets/u/1/d/1NK_0Lr0gA0kstkzHwtWx8m4n-UwOWWpK3Dbn4SjLu8I/edit#gid=722919699)]
* **Budget:** 
* **Launch Date:**  [MM-DD-YYYY] (this is the date the content syndication begins through the vendor)
* [ ] [main salesforce program]()
* [ ] [main marketo campaign]()
* [ ] Campaign UTM - Project owner (FM) to fill in (Format: campaign tag - change to all lowercase, no spaces, hyphens, underscores, or special characters)

## User Experience
[Project owner (FMM) to provide a description of the user journey - from communication plan, to what the user experiences upon reciept, plus triggers on our end like confirmation email and how GitLab fulfils with the vendor, up until receipt by the user and answering whether or not we get confirmation that they received it... what is the anticipated journey after that?]

## Additional description and notes about the tactic
[Project owner (FMM) add whatever additional notes are relevant here]

## Issue creation
* [ ] Program Tracking
  - [If tactic owner is Campaigns Team](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-program-tracking)
  - [If tactic owner is Field Marketing Team](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=program-tracking) - FMC creates, assigns to FMC 
* [ ] [List clean and upload issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=event-clean-upload-list) - FMC creates, assigns to FMM and MOps
* [ ] [Write copy issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=write-copy) - FMC creates, assigns to FMM
* [ ] [Follow up email issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_email_followup) - FMC creates (issue will go through triage)
* [ ] [Add to nurture issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_add_nurture) - FMC creates (issue will go through triage)

/label ~"Field Marketing" ~mktg-status:wip ~"Content Syndication"
```
