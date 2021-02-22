---
layout: handbook-page-toc
title: "OneTrust"
description: "OneTrust is privacy, security, and data governance software that marketing uses as our privacy and compliance solution on our websites."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Uses

OneTrust is privacy, security, and data governance software that marketing uses as our privacy and compliance solution on our websites. The marketing operations team works closely with our legal team and is primarily responsible for our privacy and compliance on our websites including cookie preferences. 

## Support

1. Technical assistance: Slack [#mktgops](https://gitlab.slack.com/archives/mktgops)
1. [Support Portal](https://support.onetrust.com/hc/en-us) (requires seperate account/login)
1. `support@onetrust.com`

## Training

### Cookie Compliance module

1. [Scanning a Website, Categorizing & Maintaining Cookies Implementation Webinar](https://my.onetrust.com/articles/en_US/Knowledge/Scanning-a-Website-Categorizing-Maintaining-Cookies-Webinar?r=56&ui-knowledge-components-aura-actions.KnowledgeArticleVersionCreateDraftFromOnlineAction.createDraftFromOnlineArticle=1)
1. [Configuring Cookie Compliance Banner, Preference Center & Geolocation Rules Implementation Webinar](https://my.onetrust.com/articles/en_US/Knowledge/Configuring-Cookie-Compliance-Banner-Preference-Center-Geolocation-Rules-Implementation-Webinar?r=56&ui-knowledge-components-aura-actions.KnowledgeArticleVersionCreateDraftFromOnlineAction.createDraftFromOnlineArticle=1)
1. [Script Integration - Publishing the Cookie Banner Script Implementation Webinar](https://my.onetrust.com/articles/en_US/Knowledge/Script-integration-Publishing-the-Cookie-Banner-Script-Implementation-Webinar?r=56&ui-knowledge-components-aura-actions.KnowledgeArticleVersionCreateDraftFromOnlineAction.createDraftFromOnlineArticle=1)
1. [Cookie Blocking - Blocking Cookies via Tag Managers and HTML Implementation Webinar](https://my.onetrust.com/articles/en_US/Knowledge/Cookie-Blocking-Blocking-cookies-via-Tag-Managers-and-HTML?r=56&ui-knowledge-components-aura-actions.KnowledgeArticleVersionCreateDraftFromOnlineAction.createDraftFromOnlineArticle=1)

## Implementation

[See the epic](https://gitlab.com/groups/gitlab-com/-/epics/1265) for more information.

## Cookie Compliance 

### Scanning a Website

The scanner simulates a user from Ireland (where OneTrust servers are located).

1. Navigate to the cookie compliance module via the "home screen" after login and clicking on the cookie compliance tile or by clicking the "launchpad" icon in the top left corner next to the home icon.
1. Click the `Add Website` button.
1. Best practice: Add the root domain to scan without `www`. If you scanned a domain with `www` it will not capture domains with prefixes. 
1. Choose the `GitLab` organization to assign the domain scan to.
1. Under `More Details`, you have additional options to use in the scan including limiting the scan to a number of pages (default is 1,000), limiting to a specific path within the site, clearing previous scan history, scanning pages with query parameters, targeting pages to scan within the site, or including sitemaps URIs. 

#### Website scan menu

In the list of websites that have been scanned, you can hover over any domain and click the 3-dot icon on the right-hand side. Clicking this icon provides additional options for that particular website scan including:

1. Re-scan: re-scans the website and provides additional options for the re-scan.
1. Re-process
1. Reassign: reassign to a different organization
1. Login: This option gives you the ability to scan behind a login or webform; if clicked, you'll be redirected to the website details to provide additional information; you can gather the web form HTML attributes by using the `Inspect` feature in Google Chrome
1. Schedule: schedule a future scan (default: every 3 months for every quarter of the year); option to notify a user once completed
1. Stop: stop a pending scan
1. Delete: delete a scan
1. Export scan results
1. Get help

### Configuring a Website Scan

#### More scan details

1. Limit scan to 1000 pages: If you want to limit the scan to a number of pages. Note that as you increase the amount of pages to scan, the longer the scan will take to complete.
1. Limit to this path within site: OneTrust considers `about.gitlab.com/fr` and `about.gitlab.com` 2 separate domains with this option enabled.
1. Clear previous scan history: Does not delete previous data; scanner treats the domain as if its the first time scanning; (use case: significant cookie or design change on the website)
1. Scan pages with query parameters: scan URLs with query parameters (ex: about.gitlab.com?utm_source=marketo); Input field example: `name=first,name=last`. Separate multiple parameters with commas. The scan will search through the domain with those noted parameters. Ensure the domain you enter includes `?` at the end of the URL.
1. Target pages to scan: Input exact URL site with full `https://` ; use case: certain pages that might not be accessible to users or you want to scan this specific web page. For multiple pages, add a line break.
1. Sitemap URIs: Input sitemap URL with `https://` with `.xml`. 

### Scheduling Cookie Scans

1. From the website scan menu, highlight the domain you wish to create scan schedule for.
1. Click the 3-dot menu.
1. Select `Schedule`. 
1. The default is set to every 3 months for every quarter of the year; You can also select a specific date.
1. Optional: enter an email address to notify a user once a scheduled scan is completed.

### Viewing Scan Results

When a scan is completed, you can view the results by clicking into the scan from the `Websites` menu. You'll be taken to a scan dashboard that visualizes the results of the scan which includes information about:

1. Tracking technology
1. Cookies with category
1. Tags
1. Forms
1. Pages
1. Local storage

On the `Show` dropdown, you can view a summary of all scans for that particular domain and view previous individual scans with a date/time stamp.

From the main scan results page, you can also select these 6 categories to dive further into those specific results.

#### Cookie scan results

View categories of cookies including the name of the specific cookie. This information comes from and is compared to OneTrust's cookie database (cookiepedia.co.uk). You can export these results by clicking `Export` in this view. After clicking `Export` you can choose the specific scan to export results from. When the export is ready for download, a notification will appear within the OneTrust tenant as the bell icon in the top-most menu. 

### Exporting Scan Results

From the bell icon, you can download the results (`.xlsx`).

### Categorizing Cookies

1. Navigate to `Categorizations` in the left-hand menu of the cookie compliance module. 
1. Click `Categories`.
1. Clicking the arrow on a respective category will expand the description of this cookie category. This description is what users will see. 
1. Click the pencil icon to edit the cooke category description. **Important:** You must confer with the GitLab legal team before updating these descriptions as they must strictly align with our policies regarding cookie use. 

These cookie categories are standard and the defaults provided by OneTrust: 

1. Strictly necessary cookies: the website needs these cookies in order to function properly (example: identify items placed into a shopping cart)
1. Performance cookies: get information about how site visitors are using the website (example: Google analytics)
1. Functional cookies: provide additional enhancement of the experience of site visitors (example: language selector for localization)
1. Targeting cookies: cookies that attempt to gather more information about a user in order to personalize marketing (example: remarketing)
1. Social media cookies: social media services added to the site that enable users to share content with their friends and networks easily

You also have the ability to create a new cookie cateogory.

Cookies in the `Unknown` category need to be categorized manually with help from developers, third-party vendors, or through a Google search.

### Adding, Editing, and Removing Cookies

1. Navigate to the `Cookies` tab under the `Categorizations` menu.
1. View the list of cookies that have been identified and categorized, including the domain where it was identified, the lifespan of the cookie, the hostname, and the description.
1. Click into each cookie individually to view more information about that cookie. 
1. In the `Edit Cookie` overlay, you can select a different category for the cookie, add a description for the cookie, update the lifespan of the cookie, note whether it's a first-party or third-party cookie, and select the domains to manually assign the cookie to. Changing the lifespan of the cookie is for auditing purposes and does not change the functionality on the website.
1. Manually add a cookie to a particular domain if you don't wish to run the domain through a scan in order to pick it up. Click `Add Cookie` to manually add a cookie and input all the information regarding that cookie from step 4. **Note:** Host is not necessarily the domain where the cookie is but where the cookie is hosted. This will not add the cookie to the domain you input, but rather an exisiting cookie on the domain that is not part of the audit.
1. You also have the option to bulk categorize cookies by selecting multiple cookies from the list. Select all cookies or specific cookies from the list, then click the double-arrow icon to bulk edit the categories of those cookies.
1. Use the search bar to search for specific cookies by the cookie name or the host name. 
1. Use the filter icon to filter down to specific types of cookies by their category, domain, lifespan, or hostname (example: only view functional cookies). 
