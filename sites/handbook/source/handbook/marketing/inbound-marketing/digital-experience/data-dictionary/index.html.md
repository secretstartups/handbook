---
layout: handbook-page-toc
title: "Data Dictionary"
description: "TThe purpose of this page is to align the data attributes to be used on all website links"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Digital definitions
{:.no_toc}

The purpose of this page is to align the data attributes to be used on all links to `*.gitlab.com` on about.gitlab.com, in order to send event data to Google Analytics. 

## Data Attribute Usage

Each link on the website should have the two following data attributes: 

- `data-ga-name`
- `data-ga-location`

An example of this usage for a free trial button might be as follows: 

### HTML
```
<a href="/free-trial/" data-ga-name="free trial" data-ga-location="hero">Get free trial</a>
```

### HAML

```
%a{href: '/free-trial', :"data-ga-name" => "free trial", :"data-ga-location" => "hero"}
```

Or preferrably:

```
= link_to "Get free trial", "/free-trial", :"data-ga-name" => "free trial", :"data-ga-location" => "hero"
```

### What is the Name attribute?

The name should be, in english, what the button says or points to. 

An example for a page with a series of "learn more" links that lead to different customer pages might have a name like `goldman sachs link`. Please note that we prefer lower case letters. 

### What is the Location attribute?




