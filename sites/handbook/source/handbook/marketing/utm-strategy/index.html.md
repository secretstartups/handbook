---
layout: handbook-page-toc
title: UTM Strategy
description: Everything you need to know about our UTM strategy, which enables insights through the connected/resulting Sisense dashboards.
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview
{: #overview .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->
The purpose of this handbook page is to outline how our UTM strategy drives insightful dashboards in Sisense. You may learn how to use the UTM builder, and why it is critical that we use this consistent process across all marketing channels for consistent and useful reporting.

Everyone can contribute - See something you'd like to discuss or iterate on? Start an MR and post it in [#campaign-reporting](https://gitlab.slack.com/archives/CSBDEH2DQ) slack channel.

## UTMs and Sisense dashboards
{: #utms-sisense .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

Add notes here

## UTM link builder process
{: #utm-builder .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

**[UTM builder googlesheet with formulas](https://docs.google.com/spreadsheets/d/12jm8q13e3-JNDbJ5-DBJbSAGprLamrilWIBka875gDI/edit#gid=1052439774)**

### UTM Values
{: #utm-values .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

Below are some rules (per [PMG advice](https://gitlab.com/gitlab-com/marketing/digital-advertising/-/issues/498#note_571907936)):
* Make all values lowercase, all the time - every time.
   - Why: Some platforms are case sensitive and others are not, and it's frankly just an easy thing to mess up when using builders, tools, etc. Some tools will automatically make something lowercase and then it messes something up because it's not the way you were expecting, or vice versa. Is an easy variable to eliminate.
* No spaces. So, if more than one word, using a hyphen.
   - Why: Spaces can be filled in with other characters when pulling from raw url and is just an easy/messy thing to avoid.


#### utm_medium
{: #utm-medium .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->



#### utm_source
{: #utm-source .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

Values:
* 
* 
* 
* 

#### utm_campaign
{: #utm-campaign .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

These are the UTMs (**utm_campaign**) to align to the anchor campaigns (both GTM and sub-campaigns within GTMs). They must be followed as below in order to display in the Demand Gen Dashboard.

Using proper `utm_campaign` values below will minimize number of manual updates required for the DG Dashboard.

* singleappci = CI/CD Campaign
* devsecopsusecase = DevSecOps Campaign
* iacgitops = GitOps Campaign
* devopsgtm = DevOps Platform Campaign
* vccusecase = VC&C Campaigns (retired)



#### utm_content
{: #utm-content .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

`utm_content` indicates the content offered by the URL. This is being done currently in publisher utms, and will be instrumented in nurture emails through the [intelligent nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1836) project.

See values in [this googlesheet](https://docs.google.com/spreadsheets/d/1QRilUEUGSUlMwwsMa_G11HRmxSskHFgDeWV0STOtLh4/edit#gid=232997146) in column `utm_content=`. These are continually changed as new content is developed, and therefore new `utm_content` values are added.

## UTMs in Practice
{: #utms-in-practice .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

### UTM structure for nurture emails
{: #utms-nurture-emails .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

* UTM Medium = `email` (never changes)
* UTM Source = `marketo` (never changes)
* UTM campaign = `campaign short hand` (the campaign that the content aligns to)
   - Limited options; keep consistent with other channels.
   - [See utm_campaign](/handbook/marketing/utm-strategy/#utm-campaign) for accepted options.
   - Using proper utm_campaign will minimize number of manual updates required for DG Dashboard.
* UTM content = `shorthand of content` (i.e. ``)
   - Limited options; keep consistent with other channels.
   - [See utm_content](/handbook/marketing/utm-strategy/#utm-content) for accepted options.
   - Do not use `nurture` for utm_content.
* UTM GTM = `overarching GTM`

[Documenting issue of discussion on UTM structure for nurture emails](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1513)

## Marketo > Bizible integration
{: #marketo-bizible .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

Add notes here
