---
layout: handbook-page-toc
title: "Globalization using Smartling"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Globalization using Smartling

The Digital Experience Team is currently working with Smartling to handle localization across the marketing site. We aim to translate the marketing site into three languages: German, Japanese, and French. The majority of this work happens through the Smartling tool, using their GDN. 

## Capturing Domains

While the entire about.gitlab.com website will be translated, we are running tests on a review app used as a staging site. In order for Smartling to parse different pages of the marketing site, they should be visited using Smartling's Capture tool. Updated strings can be translated once they have been merged to production and the page has been visited. 

When capturing a page for the first time, it will show up on the `Pages` tab in Smartling. You can click into each URL to view the domain it was captured on, and the number of new strings that were captured. Note that sometimes the title and thumbnail image of these URLs are incorrect, and viewing the available strings should be the source of truth. 

We can also view which strings have already been captured by searching for them in the `Strings` tab in Smartling. There, it should show which page this string was originally captured on. From either the Pages or Strings tab, we can request translations. 


## Requesting Translations in Smartling

Once the URLs are available in Smartling's Pages tab, we can request an initial Machine Learning translation. Afterwards, Smartling allows for those translated strings to be reviewed by a person, but that comes at an additional cost. For the initial release, we're relying on the Machine Learning translations. To request translations:

1. Login to Smarting
1. Select `Projects` ->  `about.gitlab.com GDN project`
1. Go to `Pages` tab
1. Use the search bar on the left panel to search for your page, and select the page checkbox
1. Select the `Actions` dropdown -> `Request translation`
  - This opens a job modal. Fill in the following:
  - Job Name: `DE - page title - FY##Q# - DEX`
  - Reference Number: Link to the related issue
  - Due date: The date you need the translation by
  - Description: `Translation for X page in Y language. Issue: <link>`
  - Target Languages: Select the language for translation
  - Click `Confirm`
1. Authorize the translation with the following workflow:
  - `Smartling - Machine Translation + Editing` 
1. To find existing jobs, go to the `Jobs` tab, select the `about.gitlab.com GDN project`, and use the filters to search for your Job
1. Click on the job, and click `View Strings` in the left sidebar. 
1. Select the `Actions` dropdown -> `Submit to next step`
1. Click `Authorize` to publish the translation

### Translating specific strings

Since strings are logged in Smartling based on which url they first appear on, they may not be captured as we translate entire pages. If one or two strings on a page appear to not be translated, we can target them specifically by going to Smartling -> `Strings` tab, and searching for the specific string, and running a translation job on that string. 

## Automated Translation Jobs

As page content changes, we can set up Smartling to run a Machine Learning translation job by going to the `Jobs` tab, and setting up the project and type of translation we'd like. It will use the default translation workflow, which should be the `Machine Translation and Editing` job we typically use. 

## Routing

We are using the subfolder strategy for routing. For example, we would view the `/pricing/` page in German by visiting `about.gitlab.com/de-de/pricing/`. We currently hit the Smartling GDN through our Fastly CDN. 


