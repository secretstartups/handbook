---
layout: handbook-page-toc
title: "Localization"
description: "Handbook page for localization processes."
---

## Introduction

This page contains guidelines for localization at GitLab. This page is maintained by the Global Content team. 

## Overview 

GitLab is a global company that does business around the world. In order to best serve our global customers, we localize our content and campaigns into native languages. 

## Current State

Our current localization capablities are limited due to resources and bandwidth. Currently, we are focused on translating content that aligns to our P0 countries. Additionally, we are enabling our field marketing teams to get lighweight translations that don't require internal development or design resources. 

### Priority Countries

#### P0: Countries that provide the most opportunity for GitLab

1. US
1. Canada
1. Germany
1. France
1. Japan

#### P1: Tier 2 Countries that provide the most opportunity for GItLab

1. Netherlands
1. Switzerland
1. Nordics
1. South Korea
1. Singapore

Our current localization capablities are limited due to resources and bandwidth. Currently, we are focused on translating content that aligns to our integrated campaign strategy. Additionally, we are enabling our field marketing teams to get lighweight translations that don't require internal development or design resources. 

### Tools & Capabilities

| Vendor | Capabilities | Access |
| ------ | ------ | ------ |
| Rev | English language transcriptions, foriegn language subtitles| Open an access request issue |
| [Rush Translate](marketing/marketing-operations/rushtranslate/) | Text-based document translation | Contact Senior Manager, Global Content |

### Translating content for campaigns 

Localized campaigns currently follow the the [integrated campaign process](/handbook/marketing/campaigns/#campaign-planning). The Content Marketing team is responsible for content localization for integrated campaigns. Content marketers are responsible for campaigns that fall within their subject area domain: 

| Use Case | DRI |
| ------ | ------ |
| VCC | Suri Patel |
| CI | Suri Patel |
| DevSecOps | Vanessa Wegner |
| Simplify DevOps | Vanessa Wegner |
| GitOps | Chrissie Buchanan |
| CD | Chrissie Buchanan |
| Agile | Suri Patel |
| Cloud Native | Chrissie Buchanan |

### Translated URL structure

All translated pages live in a sub-folder dedicated to a specific language. These sub-folders use [ISO 639-1 codes] (https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes). For example, German pages live in the `/de/` sub-folder.

### hreflang tagging
Search engines use the `hreflang` tag to determine a canonical version for translated pages. 

`hreflang` tags start with declaration `<link rel="alternate"`, adds URL `href={{url}}`, and ends with `hreflang={{language ISO}}`

Example of a hreflang tag for a URL translated to German.

`<link rel="alternate" href="https://about.gitlab.com/de/warum/nutze-continuous-integration-fuer-schnelleres-bauen-und-testen/" hreflang="de" />`

We set the hreflang when needed in the frontmatter for a page with the language specific ISO Code, in German for example `frontmatter: de`.

