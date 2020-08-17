---
layout: handbook-page-toc
title: "Cookiebot"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### What is Cookiebot?

Cookiebot is a cookie and online tracking consent solution we use to ensure compliance with GDPR, CCPA, and related cookie laws.

### How does Cookiebot work?

Before you consent to any cookies, Cookiebot blocks all JavaScript on our site in order to prevent cookies from being set. This works by intercepting the and preventing the document ready event. Once cookie consent has been granted by the end user, Cookiebot then restarts the JavaScripts.

Note that any JavaScript on `about.gitlab.com` requiring the use of document ready may have problems reinitializing after cookie consent has been granted and will not work before that timeframe.

If you are having difficulty programming around Cookiebot or notice issues with the consent pop-up on `about.gitlab.com`, please open an issue in marketing operations, assign `@sdaily`, cc `brandon_lyon`, and apply the Cookiebot label.

**Does Cookiebot work on review apps?**

Because of how our review app infrastructure is setup, and because Cookiebot will not work on wildcard subdomain URLs, we cannot get cookiebot to work on review apps. This means that pages in a review app which require the use of: third party iFrames, cookies, or advanced JavaScript may not work on review apps.

**Can we improve Cookiebot?**

We have plans to [improve our Cookiebot implementation](https://gitlab.com/groups/gitlab-com/-/epics/681) but implementation will take time.

## Access

Cookiebot is a SaaS solution with one login and is administrated by marketing operations. The credentials are owned and stored in the marketing operations vault in 1Pass. Access is only provided to the brand and digital design, website team in order to make improvements or fixes to the Cookiebot script on the website. 