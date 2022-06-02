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

For a quick overview of UTMs, take a look a look at [this Youtube video](https://youtu.be/GrUGZBaUtVo)

Everyone can contribute - See something you'd like to discuss or iterate on? Start an MR and post it in [#mktg-strat-perf](hhttps://gitlab.slack.com/archives/C01HTAYQBM5) slack channel.

## UTMs and Sisense dashboards
{: #utms-sisense .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->
UTM parameters are specific text strings appended to the URLs, used to facilitate performance tracking in Sisense dashboards through Bizible Touchpoints.

[Bizible Touchpoints](https://about.gitlab.com/handbook/marketing/marketing-operations/bizible/#bizible-touchpoints) are series of interactions a prospect has with the online or offline marketing efforts. They capture a multitude of information about the interaction, including utm parameters, date/time of the interaction, and type of interaction (web visit, form submission, campaign response, etc.).

Bizible Touchpoint is created, based on the `utm_campaign`, `utm_source`, `utm_medium` and mapped to Sisense dashboard view through a defined logic.

Here is Bizible's breakdown of how [Touchpoints are generated and mapped](https://docs.marketo.com/display/BIZ/Touchpoint+Generation+and+Mapping):    

| Type of Interaction                  | Generation Method            | Mapping Method                                                                                                       |
|--------------------------------------|------------------------------|----------------------------------------------------------------------------------------------------------------------|
| Online, on your site(s)              | Bizible JavaScript           | Through the Online Channels page in Bizible, by referencing UTM values, landing page, and referring page information |
| Offline; Online, not on your site(s) | CRM Campaign membership sync | Through the Offline Channels page in Bizible, by referencing Campaign Type                                           |
| Sales activity                       | CRM Activity sync            | Through the Online Channels page in Bizible, by referencing the Campaign Name assigned on the Activities page        |


## UTM link builder process
{: #utm-builder .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

**[UTM builder googlesheet with formulas](https://docs.google.com/spreadsheets/d/12jm8q13e3-JNDbJ5-DBJbSAGprLamrilWIBka875gDI/edit#gid=1052439774)** should be used to setup a tracking URL for your campaign. [Here is a video overview](https://youtu.be/WRSIZ84027g) of the spreadsheet. The process involves the following steps:
1. Open the [Tracking URL Builder](https://docs.google.com/spreadsheets/d/12jm8q13e3-JNDbJ5-DBJbSAGprLamrilWIBka875gDI/edit#gid=1052439774)
2. Add in your page URL in the first column
3. Fill in each attribute of your UTM parameter, including `utm_source`, `utm_medium`, `utm_campaign`, `utm_content`, `utm_budget`. If some of these UTM parameters are irrelevant to your campaign, keep them blank or remove from the final URL.
4. Destination URL will be generated automatically in column N, ready for you to use in your campaign. If you need to shorten your URL, use a tool like [bit.ly](https://bitly.com/). 
5. Measure success in Sisense. You can track your UTM parameters in your Sisense dashboard under "Integrated Campaign Breakdown" or "Attribution Data" sections. 

## UTM Values
{: #utm-values .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

Below are some rules (per [PMG advice](https://gitlab.com/gitlab-com/marketing/digital-advertising/-/issues/498#note_571907936)):
* Make all values lowercase, all the time - every time.
   - Why: Some platforms are case sensitive and others are not, and it's frankly just an easy thing to mess up when using builders, tools, etc. Some tools will automatically make something lowercase and then it messes something up because it's not the way you were expecting, or vice versa. Is an easy variable to eliminate.
* No spaces. So, if more than one word, using a hyphen.
   - Why: Spaces can be filled in with other characters when pulling from raw url and is just an easy/messy thing to avoid.
* Alphanumeric characters only.
* Keep your URLs clean, descriptive, non-redundant and easy to read.

#### utm_medium
{: #utm-medium}
<!-- DO NOT CHANGE ANCHOR -->

**Campaign Medium** The medium is the overarching channel bucket like `paidsearch`, `social`, or `sponsorship`. It answers the question of "how did they come to us?". `utm_source` will further categorize the overarching channel. 

You can choose a campaign medium from a provided picklist of values in the URL Builder spreadsheet. If you need a new campaign medium, please check with the Digital Marketing Programs team as new mediums will not automatically be attributed correctly.

#### utm_source
{: #utm-source}
<!-- DO NOT CHANGE ANCHOR -->

**Campaign Source** The source-based URL parameter can tell you which website is sending the traffic. The source is a further "slicing" of overall channels. It answers the question of "how did they come to us?" but with more granular details than utm_medium. Examples include `demandbase`, `twitter`, or `marketo`.

Values for `utm_source` are available as an open picklist in the UTM builder googlesheet. Please be consistent when adding new values to the [list](https://docs.google.com/spreadsheets/d/12jm8q13e3-JNDbJ5-DBJbSAGprLamrilWIBka875gDI/edit#gid=3), keeping the best practice of no characters and all lower case.

#### utm_campaign
{: #utm-campaign}
<!-- DO NOT CHANGE ANCHOR -->

These are the UTMs (**utm_campaign**) to align to the anchor campaigns (both GTM and sub-campaigns within GTMs). They must be followed as below in order to display in the Demand Gen Dashboard.

Using proper `utm_campaign` values below will minimize number of manual updates required for the DG Dashboard.

* singleappci = CI Campaign
* devsecopsusecase = DevSecOps Campaign
* iacgitops = GitOps Campaign
* devopsgtm = DevOps Platform Campaign
* vccusecase = VC&C Campaigns (retired)
* competegh = OctoCat Competitive
* cdusecase = CD Campaign
* autosd = Automated Software Delivery Solutions Campaign

RULE: all utm_campaign must start with one of the overarching campaigns (devopsgtm, singleappci, iacgitops, etc.)

#### utm_content
{: #utm-content}
<!-- DO NOT CHANGE ANCHOR -->

**Campaign Content** (`utm_content`) indicates the content offered by the URL. This is being done currently in publisher utms, and will be instrumented in nurture emails through the [intelligent nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1836) project.

See values in [this googlesheet](https://docs.google.com/spreadsheets/d/1QRilUEUGSUlMwwsMa_G11HRmxSskHFgDeWV0STOtLh4/edit#gid=232997146) in column `utm_content=`. These are continually changed as new content is developed, and therefore new `utm_content` values are added.

#### utm_term 
{: #utm-term}
<!-- DO NOT CHANGE ANCHOR -->

**Campaign Term** (`utm_term`) mainly used for tracking ROI on paid keywords in PPC (Pay Per ClicK) campaigns but can also be used to track any keyword or any additional campaign info.

#### utm_budget
{: #utm-budget}
<!-- DO NOT CHANGE ANCHOR -->

**Campaign Budget** (`utm_budget`) indicates which budget is used for the campaign promotion. 

Values (available as picklist in the UTM builder googlesheet):
* fmm	= Field Marketing
* dmp	= Digital Marketing
* corp = Corporate Marketing
* abm	= Account Based Marketing
* ptnr = Partner Marketing
* chnl = Channel Marketing

#### utm_allptnr
{: #utm-allptnr}
<!-- DO NOT CHANGE ANCHOR -->

**Alliance Partner** (`utm_allptnr`) indicates which partner is part of the campaign. 

Values (available as picklist in the UTM builder googlesheet):
* aws = AWS
* gcp = Google Cloud
* azure = Microsoft Azure
* do = DigitalOcean
* oraclecloud = Oracle Cloud	
* render = Render	
* amazee = amazee.io	
* vmware = VMware Tanzu	
* redhat = RedHat OpenShift
* ibm = IBM

#### utm_chnlptnr
{: #utm-chnlptnr .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

**Channel Partner** (`utm_chnlptnr`) indicates which partner is part of the campaign. 

Values available as an open picklist in the UTM builder googlesheet.

#### utm_partnerid
This is used for events where we are passing the lead to that specific partner. For a running list of partner Ids, [go here](/handbook/marketing/channel-marketing/partner-campaigns/#partner-crm-ids).

## UTMs in Practice
{: #utms-in-practice .gitlab-purple}
<!-- DO NOT CHANGE ANCHOR -->

UTM parameters provide three key benefits: 
* They help track the value of marketing initiatives and measure ROI. 
* They provide precise data about conversion and traffic sources. 
* They allow you to test individual posts head-to-head in classic A/B testing style.

Here’s a UTM example link with parameters in place:
`https://page.gitlab.com/dora-report-roundtable.html?utm_medium=social&utm_source=facebook&utm_campaign=devopsgtm&utm_content=fy22q3amerlargeawareness&utm_term=na&utm_budget=dmp&utm_allptnr=aws`

The UTM parameters are everything that comes after the question mark:
* utm_medium=social
* utm_source=facebook
* utm_campaign=devopsgtm
* utm_content=fy22q3amerlargeawareness
* utm_term=na 
* utm_budget=dmp
* utm_allptnr=aws

More examples and different scenarios are covered in [FAQ doc](https://docs.google.com/document/d/1VaAwSg39sNY4dfth4bTuBDN5UT8UiKijWt6RdzVV4dY/edit?usp=sharing).

### UTM structure for nurture emails
{: #utms-nurture-emails}
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

### UTM structure for paid digital
{: #utms-paid-digital}
<!-- DO NOT CHANGE ANCHOR -->

Our Digital Agency - PMG are using different UTM structure than our standard process. Their UTM parameters include more information:

* UTM Campaign = `campaigncode_geo_targeting_adunit_br/nb_matchtype`
   - campaigncode must start with one of the overarching campaigns (devopsgtm, singleappci, iacgitops, etc.)
* UTM Content = `content_team_budget_language` 

In order to retain historical campaign tracking data we will keep existing UTM structure and will append the new UTMs to the end of the string. Here’s an example with the new parameters in place:
`https://page.gitlab.com/achieve-devsecops-cicd-ebook.html?utm_medium=cpc&utm_source=google&utm_campaign=devsecopsusecase_amer_pr_rsa_nb_exact&utm_content=achievedevsecopsebook_digital_x-pr_english_&utm_term=devsecops&utm_budget=dmp&utm_allptnr=aws`

* utm_medium=cpc 
* utm_source=google 
* utm_campaign=devsecopsusecase_amer_pr_rsa_nb_exact 
* utm_content=achievedevsecopsebook_digital_x-pr_english_
* utm_term=devsecops 
* utm_budget=dmp
* utm_allptnr=aws

### UTM structure for account based marketing
{: #utms-account-based-marketing}
<!-- DO NOT CHANGE ANCHOR -->
 
#### UTM structure for Demandbase
{: #utms-abm-demandbase}
<!-- DO NOT CHANGE ANCHOR -->
* UTM Medium = `banner`
* UTM Source = `demandbase`
* UTM campaign = `campaign short hand` (the campaign that the content aligns to)
  - Limited options; keep consistent with other channels.
  - [See utm_content](/handbook/marketing/utm-strategy/#utm-content) for accepted options.
  - For ad variations, use shorthand addition (i.e. `-accl1` `-accel2`) to the end of the content option
  - Example in practice: `utm_content=acceldigtransformation` would add the following for 4 ad variations with different ad copy:
     - `utm_content=acceldigtransformation-accel2`
     - `utm_content=acceldigtransformation-accel1`
     - `utm_content=acceldigtransformation-live2`
     - `utm_content=acceldigtransformation-live1`

#### UTM structure for LinkedIn (ABM)
{: #utms-abm-linkedin}
<!-- DO NOT CHANGE ANCHOR -->
* UTM Medium = `paidsocial`
* UTM Source = `linkedin`
* UTM campaign = `campaign short hand` (the campaign that the content aligns to)
  - Limited options; keep consistent with other channels.
  - [See utm_content](/handbook/marketing/utm-strategy/#utm-content) for accepted options.
  - For ad variations, use shorthand addition (i.e. `-accl1` `-accel2`) to the end of the content option
  - Example in practice: `utm_content=acceldigtransformation` would add the following for 4 ad variations with different ad copy:
     - `utm_content=acceldigtransformation-accel2`
     - `utm_content=acceldigtransformation-accel1`
     - `utm_content=acceldigtransformation-live2`
     - `utm_content=acceldigtransformation-live1`

### UTM structure for partner campaigns
{: #utms-structure-for-partner-campaigns}
* [Most TBD](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1986)
* UTM PartnerID = the crm ID of the partner you wish to pass the lead to

## Marketo > Bizible integration
{: #marketo-bizible .gitlab-purple}

Marketo is our marketing automation platform used for email marketing, lead management, and program management.
Through Bizible’s integration with Marketo, we create touchpoints for attribution tracking from Marketo’s Program Memberships. This capability allows to track program memberships from email or engagement programs that are otherwise not seen by Bizible’s javascript and should be measured within the attribution journey.

<!-- DO NOT CHANGE ANCHOR -->


