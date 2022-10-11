---
layout: handbook-page-toc
title: Localization
description: Handbook page for localization processes.
---

## Introduction

This page contains guidelines for localization at GitLab. This page is currently maintained by the Marketing Operations team.

## Overview

GitLab is a global company that does business around the world. In order to best serve our global customers, we localize some of our content and campaigns into native languages.

## Current State

Our current localization capablities are limited due to resources and bandwidth. Currently, we are focused on translating content that aligns to our Tier 1 and some Tier 2 countries. The Integrated Marketing team typically drives which translations are required, based on current campaigns and regional need. We use [Smartling](/handbook/marketing/marketing-operations/smartling/) for translation, and to date, most translations have focused on eBooks, landing pages, emails, digital marketing advertisements, and partner marketing materials.

**Field Marketing use of Smartling**

For information on how Field Marketing uses translations, please head to [that page](/handbook/marketing/field-marketing/#fmm-localization-process).

### Internal Reviews

To ensure translated content makes contextual and technical sense, we have internal native language speakers review the content. At the moment, our internal reviewers are volunteers. We completely appreciate that this task is on top of your day job and will continue to respect that. Both translation and reviews are conducted in Smartling, and detailed instructions for internal review can be found on the [Smartling page](/handbook/marketing/marketing-operations/smartling/smartling-reviewers/).

### Priority Countries

Annually we prioritize countries that we believe offer the most opportunity for GitLab. A listing of those countries and our expected level of investment are tracked in an internal document called: [Globalization Tracker](https://docs.google.com/spreadsheets/d/14GOJvADjS7R-zonQvx3ejiCgJGsCks3U0IbjwiFChRQ/edit#gid=427771731). 

### Tools & Capabilities

| Vendor | Capabilities | How to Access |
| ------ | ------------ | ------ | 
| [Smartling](/handbook/marketing/marketing-operations/smartling) | Localization platform | [Instructions for access](/handbook/marketing/marketing-operations/smartling/#access-to-smartling) 

### Translating content for campaigns

Localized campaigns currently follow the [integrated campaign process](/handbook/marketing/campaigns/#campaign-planning). The Integrated Marketing team is responsible for content localization for integrated campaigns. 

### Language preference segmentation

In order to offer content and events in preferred languages where available, we have a `Language Preference` Segmentation created in Marketo. Only Marketing Ops can edit these segments. Available languages for this segmentation can be found on the [Marketo page](https://about.gitlab.com/handbook/marketing/marketing-operations/marketo/#segmentations). A person will be added to a `Language Preference` segment if they complete a form on our website or respond to a campaign that was offered in one of the available languages.

### Translated URL structure

All translated pages live in a sub-folder dedicated to a specific language. These sub-folders use [ISO 639-1 codes] (https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes). For example, German pages live in the `/de/` sub-folder.

### hreflang tagging

Search engines use the `hreflang` tag to determine a canonical version for translated pages. We'll use `hreflang` on our translated pages.

`hreflang` tags start with declaration `<link rel="alternate"`, adds URL `href={{url}}`, and ends with `hreflang={{language ISO}}`

Example of a hreflang tag for a URL translated to German.

`<link rel="alternate" href="https://about.gitlab.com/de/warum/nutze-continuous-integration-fuer-schnelleres-bauen-und-testen/" hreflang="de" />`

The canonical version of our site will the United States English version on `about.gitlab.com`. We need to add all versions of a page under the page title and link to each one with the appropriate language noted. [Google provides this example](https://developers.google.com/search/docs/advanced/crawling/localized-versions?visit_id=637504000817145606-3833240924&rd=1):

```
<head>
 <title>Widgets, Inc</title>
  <link rel="alternate" hreflang="en-gb"
       href="http://en-gb.example.com/page.html" />
  <link rel="alternate" hreflang="en-us"
       href="http://en-us.example.com/page.html" />
  <link rel="alternate" hreflang="en"
       href="http://en.example.com/page.html" />
  <link rel="alternate" hreflang="de"
       href="http://de.example.com/page.html" />
 <link rel="alternate" hreflang="x-default"
       href="http://www.example.com/" />
</head>
```

It's important to note we need to declare the default page from our repository as the canonical version to avoid penalities across Google properties.

Aleyda Solis maintains a great [tool to build `hreflang` tags](https://www.aleydasolis.com/english/international-seo-tools/hreflang-tags-generator/) we can use for reference as well.

### List of Localized Websites

| Language | Localized Landing Page | Status |
| ------ | ------------ | ------ |
| French | https://about.gitlab.com/fr-fr/ | Live |
| Japanese | https://about.gitlab.com/ja-jp/ | Live |
| German | https://about.gitlab.com/de-de/ | Live |
