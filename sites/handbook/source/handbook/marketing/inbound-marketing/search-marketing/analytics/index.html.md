---
layout: handbook-page-toc
title: "Marketing web analytics"
description: "Our marketing team uses analtyics tools to understand how people discover and use our marketing website."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Marketing web analytics
{:.no_toc}

Our marketing team uses analtyics tools to understand how people discover and use our marketing website. The Inbound Marketing team manages the analytics implementation for our public websites, including about.gitlab.com and docs.gitlab.com. Our tools include Google Tag Manager, Google Analytics, and Google dataStudio. 

We use this page to document and share our process.

### Website analytics dashboards

We use Google dataStudio to create an easy to share and repeatable process for sharing analytics data for about.gitlab.com. dataStudio allows us to combine data from Google Analytics, Google Ads, and a variety of other sources to create reports with key data for any GitLab team.

When we connect data from Google Sheets everyone on the DMP team needs to able to access and edit data as needed. To accomplish this we add all Google Sheets used in dataStudio to the Shared Drive in the [dataStudio sub-folder](https://drive.google.com/drive/folders/1pO0fVLM-K0KrLNu8MWvzI-i96QXFdgeR). Be sure you only share your Google Sheets in the shared drive because dataStudio does not currently support sharing data sources from shared drives.

### Self-serve Website analytics dashboards
* Google Analytics traffic: If you would like to check the traffic, referrals, or clicks off of a page hosted on the marketing site (about, docs, etc) just enter your page URL or URLs into the `Page` field in this dataStudio report [Page-level Google Analytics data](https://datastudio.google.com/u/0/reporting/11pNZyzJ1JEudO4jRWaX989etLLcR6wUn/page/KNqS).
* Google Search results keywords: If you would like to check the keywords from a specific about.gitlab.com page in Google search, just enter your page URL into the `Landing Page` field in this dataStudio report [Google Search Console keyword lookup](https://datastudio.google.com/open/1No1sSsCH2EHkqPyLl-AEEQ1be3_p_kpj).
* Google Search results pages: If you would like a list of URLs surfacing for a specific keyword surfacing for about.gitlab.com in Google search (about, docs, etc) just enter your keyword into the `Query` field in this dataStudio report [Google Search Console landing page lookup](https://datastudio.google.com/open/10Qa9AgGt11xJWaycUDfvFq1Nn714sJQq).

#### Active dataStudio dashboards

- [Marketing metrics dashboard](https://datastudio.google.com/reporting/1mvDffnzlIWsr-2S_cvkpRx0X25hiM_TI/page/1M) — Used to generate data for our monthly marketing metrics deck. A few elements update manually, ping the Digital Marketing team in #digitalmarketing if you need updated numbers.
- [Content marketing dashboard](https://datastudio.google.com/reporting/1NIxCW309H19eLqc4rz0S8WqcmqPMK4Qb/page/FCsh) — Blog content reports, primarily used by the content team to track OKR progress.
- [Just Commit dashboard](https://datastudio.google.com/reporting/1dbt-3WI6KzySYrnolIUfCufvvtba20f9/page/kWdQ) — Tracks progress of Just Commit integrated campaign.
- [Job pages dashboard](https://datastudio.google.com/reporting/1w6TwUeGjkQpPZz4jvp9Hye8vdGP6MYel/page/JcPY) — Provides context around job page interactions.
- [Security releases dashboard](https://datastudio.google.com/reporting/1bP748BOhYmgWRcfeoRiSCOHz7q4NUMkV/page/l7vj) — Website analytics data for security release blog posts.
- [about.gitlab.com CrUX dashboard](https://datastudio.google.com/reporting/1f-akzELoGzJRdBFPgMTzgHPrSOshUgki/page/cJUR) — *Public* See [Chrome User Experience Report](https://developers.google.com/web/tools/chrome-user-experience-report/) for definition of report dimensions. This dashboard shows CrUX data for about.gitlab.com, assembled with PageSpeed Insights and Public Google BigQuery.  

### GitLab Google Tag Manager system

We use Google Tag Manager(GTM) to simplify activity tracking on about.gitlab.com with Google Analytics. This documents the system the Digital Marketing Programs team uses with our Google Tag Manager container.

#### Naming convention

We use semantic names for tags, triggers, and variables to make it simpler to determine what these components are supposed to do. Use an em dash (shift+option-_) to divide the components of each GTM component name.

Tags start with the platform, followed by the tag’s purpose, and are finally contextualized to about.gitlab.com. Any tags related to timed events need the timeframe indicated in a note attached to the tag in GTM to make it clear when to remove a tag.

###### Tag naming examples

- Google Analytics Event — Free Trial CTA click  
- Google Ads —  conversion tracker  
- Facebook — base pixel
- Drift — snippet v 0.3.1

Triggers start with a description of the action triggering a tag, followed by contextualization for about.gitlab.com.

###### Trigger naming examples

- Link click — Learn more 100M carousel  
- CTA click — cta-btn  
- Custom event — mktoformSubmit free trial  

Variables start with the tag or trigger they reference, followed by contextual data about their purpose.

###### Variable naming examples

- Google Analytics — GitLab Universal Analytics ID  
- dataLayer — postType custom dimension  

If you are making changes to the GTM container and have questions about what to name one of these components the Digital Marketing Programs team can help.

#### dataLayer values

Today we’re using the dataLayer sparingly on about.gitlab.com, with our primary use focused on [differentiating blog content with `postType`](/handbook/marketing/blog/#post-type). We’ll expand how we use the dataLayer to create content groupings for improved customer journey insights and document those updates here.

#### Event tags

We need consistent tags across Google Analytics events and have introduced the following structure to our event tags. Our goal is to cover important visitor events with the smallest number of tags in Google Tag Manager. Reducing the number of tags and the overall complexity of our Google Tag Manager container helps us spot and fix coverage issues faster.

#### Event structure

Some tools fire events with out of the box nomenclature that we can't alter. Drift and Demandbase populate default Event Categories you can explore to discover Event Action and Event Labels.

GitLab controlled Event Categories include navigation, CTA, forms, and YouTube events. Details for each of these categories can also be extended with Custom Dimensions in Google Analytics. Our current custom dimensions include `Click URL`, `Click text`, `Click class`, and `referrer`. `Referrer` shows you the previous page for any event, whether it's an internal page or external resource.

**Navigation** events capture how visitors interact with navigation across about.gitlab.com. If you select the `navigation` category you can explore different parts of our global navigation and more specific interactions like clicks from docs to about.

| Event Category | Event Action           | Event Label |
|----------------|------------------------|-------------|
| navigation     | main navigation header | Click URL   |
|                | footer link category   |             |
|                | docs to about          |             |
|                | search interactions    |             |
|                | click                  |             |

**CTA** events capture how visitors interact with call to action buttons across about.gitlab.com. We use `cta-btn` for each CTA button across about.gitlab.com to trigger these events. Select `CTA` to explore these events.

| Event Category | Event Action  | Event Label |
|----------------|---------------|-------------|
| CTA            | button        | Page        |
|                | video         |             |
|                | inline link   |             |
|                | click         |             |
|                | watch         |             |
|                | select plan   |             |
|                | challenge box |             |

**Forms** capture when visitors submit a form on about.gitlab.com. The key factor to check here is the Event Label where you can see the total number of events by offer type for your selected time frame.

| Event Category | Event Action | Event Label      |
|----------------|--------------|------------------|
| forms          | submit       | saas-trial-click |
|                |              | resources        |
|                |              | webcasts         |
|                |              | trial            |
|                |              | demo             |
|                |              | mktoLead         |
|                |              | PathFactory      |
|                |              | sales            |
|                |              | services         |
|                |              | events           |

The **YouTube** Event Category is a newer event type on about.gitlab.com. As we use ramp up using YouTube to embed videos across our website we wanted to see which videos resonate with visitors and how much of a video visitors watch.

| Event Category | Event Action    | Event Label             |
|----------------|-----------------|-------------------------|
| YouTube        | Start playing   | Video title + video URL |
|                | Reached 50%     |                         |
|                | Reached the end |                         |

#### Event structure January 2019 - June 2020

Starting in January 2019 we used an updated event structure designed to maximize our understanding of interactions across about.gitlab.com with the limitations of Google Analytics. We transitioned off of this system early in June 2020, so if you look at events before then you might encounter this event structure.

![GitLab Google Tag Manager event structure January 2019 — June 2020](/images/handbook/marketing/GTM-event-structure.png)

These three components help us organize and identify specific event data. **Event Categories** help us group specific customer journey steps, **Event Actions** describe visitor interactions with about.gitlab.com, and **Event Labels** provide contextual details for reporting our performance.

**Example Event Label**  
{{Page URL}} | {{Referrer}} | {{Click text}} | {{Click URL}} | {{Click Class}}

Google Analytics limits event label fields to around 2000 characters, and we'll update the handbook if we start to see truncated event labels.

### Google Tag Manager inventory

We're using Simo Ahava's Googl Sheets Add-On to sync notes for our tags and create a [GitLab Google Tag Manager inventory](https://docs.google.com/spreadsheets/d/1oT5AQQ0nH4-7iS-QY-UJP4vbFxv2GCGy9XiKpj8ebuU/edit#gid=1443259273) This simplifies scanning and searching over the Google Tag Manager web app.

### Changes of note
Whenever we make major changes to tags through Google Tag Manager we document them in [changes of note](/handbook/marketing/revenue-marketing/digital-marketing-programs/digital-marketing-management/changes-of-note/). Examples of changes we document are adding or removing tags, changing tag sequencing, or changing when a tag is fired.

### Using marketing trend data

Search term volume is hard to estimate. Different tools use different methodolgies and models for reporting this data. AdWords provides data from Google, but the ranges are broad and terms can be combined into a single phrase. Google Trend data normalizes search trends from 1 to 100 based on the terms you're exploring, which doesn't give us any idea of how many people are using a particular phrase.

For our keyword research we rely on Moz Keyword Explorer data because it provides a narrower volume with full phrase integrity. When we report keyword volume, this is the tool we use for this data.

### Google Analytics Crash Course

#### Dimensions vs Metrics

Dimensions are the different attributes of your data. For example, the landing page is a dimension that is the first page a person views when they come to the site.

Metrics are the numbers that are being measured, such as number of page views or number of sessions.

Each dimension and metric has a scope, so it’s important to understand the three different scopes:

1. User-level
1. Session-level
1. Page-level

Due to the scoping, not every dimension can be combined with every metric. In most cases, the dimensions and the metrics should match the scope.

#### Understanding Reporting

###### Setting a date range

You can use the calendar in the top right to set the active date range. You can also select the `compare to` box to compare metrics from different time periods. This will allow you to see month over month or year over year growth for the desired metrics.

###### Annotations

Annotations are used to mark a point in time in Google Analytics. They can be used to mark an important event such as a change to the setup of Google Analytics, or an event that heavily impacted traffic positively or negatively.

To create an annotation, double-click on a date. The double-click will bring up the annotation field where you can enter details, and select `private` or `public`. Public annotations can be seen by anyone that has access to that view within Google Analytics, and private annotations can only be seen by you.

###### Data Tables

Most reports have a data table below the graph. The data tables contain a dimension and associated metrics.

The `Primary Dimension` of the data tables can be changed by selecting a different primary dimension from above the table.

A secondary dimension can also be added by clicking on the `Secondary Dimension` button above the table and selecting the secondary dimension you’d like to add to the table.

#### Audience Reports

The audience reports are used to understand characteristics of your users such as location, and browser used, and user behavior over multiple visits such as average session time.

#### Acquisition Reports

The acquisition reports help you know how people find the website. These reports will help you to analyze the benefits of the different digital marketing efforts that you are involved in.

###### Channels Report

The `All Traffic > Channels` report breaks down all the different channels that are sending traffic to the site. You can click on any of the channels to drill down  and get more granular data about that specific channel. For example, if you click on the `Referral` channel, you will see which sites are referring traffic to your site.

#### Behaviors Reports

The behaviors section is about how users use the website. This includes what pages of the site people are looking at as well as how they flow through the site.

###### All Pages Report

The `All Pages` report shows the number of times a given page was viewed within the selected period of time. You can change the primary dimension to `Page Title` if it is easier to tell what the page is by looking at the title rather than the URL.

`Avg. Time on Page` and `Bounce Rate` can be used to find underperforming content or content that is very engaging to users and can be used in future marketing efforts.

###### Landing Pages and Exit Pages

The `Landing Pages` and `Exit Pages` reports are scoped at the session and tell us how many people are beginning a session at a certain page (landing page) and how many people are ending a session at a certain page (exit page).

These reports can be valuable to see what content is bringing people to the site and what content is causing people to leave the site.

###### Events

Events can be set up to track actions that people take on the website, such as clicking links or selecting drop downs. These events can be set up in Google Tag Manager and for the most part won’t require any additional code to be placed on the website.