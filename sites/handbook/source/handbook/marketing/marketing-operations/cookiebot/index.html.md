---
layout: handbook-page-toc
title: "Cookiebot"
description: "Cookiebot (owned by Cybot) is a cookie and online tracking consent solution we use to ensure compliance with GDPR, CCPA, and related cookie laws."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### About Cookiebot

Cookiebot (owned by [Cybot](https://www.cybot.com/)) is a cookie and online tracking consent solution we use to ensure compliance with GDPR, CCPA, and related cookie laws.

### How it works

Before you consent to any cookies, Cookiebot blocks all JavaScript on our site in order to prevent cookies from being set. This works by intercepting the and preventing the document ready event. Once cookie consent has been granted by the end user, Cookiebot then restarts the JavaScripts.

Note that any JavaScript on `about.gitlab.com` requiring the use of document ready may have problems reinitializing after cookie consent has been granted and will not work before that timeframe.

[Cookiebot installation overview](https://drive.google.com/file/d/1IZgPRoJ1aFabwd6rFcyogJz-D1QqVKgJ/view?usp=sharing)

#### What data is collected and logged

After a website user submits their consent, the following data is collected and logged:

- The user's IP number in anonymized form (by removing the last 16 bit of IPv4 addresses and by removing the last 96 bit of IPv6 addresses)
- The date and time of the consent
- User agent of the user's browser
- The URL from which the consent was submitted
- An anonymous, random and encrypted key value
- The user's consent state, serving as proof of consent
- The key and consent state are also saved in the user's browser in the first party cookie 'CookieConsent' so that the website can automatically read and respect the user's consent on all subsequent page requests and future user sessions for up to 12 months

The key is used for proof of consent and an option to verify that the consent state stored in the user's browser is unaltered compared to the original consent submitted to Cybot. 

https://support.cookiebot.com/hc/en-us/articles/360003782654-Introduction-Logging-and-demonstration-of-user-consents

### How to access and download the consent log

1. [Log in to Cookiebot](https://manage.cookiebot.com ).
1. Choose `User consents` in the top menu.
1. In the top bar, select the domain name from the drop-down menu and the time period for which you want to download the consent log.
1. In the upper right corner of the top bar, click `Download log`. The log will download in a CSV file format, which you can open using e.g. Excel, Google sheets.

### Getting help

If you are having difficulty programming around Cookiebot or notice issues with the consent pop-up on `about.gitlab.com`, please open an issue in marketing operations, assign `@sdaily`, cc `brandon_lyon`, and apply the Cookiebot label.

## Access

Cookiebot is a SaaS solution with one login and is administrated by marketing operations. The credentials are owned and stored in the marketing operations vault in 1Pass. Access is only provided to the brand and digital design, website team in order to make improvements or fixes to the Cookiebot script on the website. 

## Support

- [Help center](https://support.cookiebot.com/hc/en-us#hc)
- [Contact Cookiebot support](https://support.cookiebot.com/hc/en-us/requests/new)
- [Community](https://support.cookiebot.com/hc/en-us/community/topics)

## FAQ

**Why isn't this form working?**

https://about.gitlab.com/handbook/marketing/growth-marketing/brand-and-digital-design/#why-isnt-this-form-working

**Why can't I see something in the review apps?**

https://about.gitlab.com/handbook/marketing/growth-marketing/brand-and-digital-design/#why-cant-i-see-something-in-the-review-apps

**Why is there a drop in traffic after using Cookiebot?**

https://support.cookiebot.com/hc/en-us/articles/360005476414-Why-is-there-a-drop-in-traffic-after-using-Cookiebot-

**Does the use of Cookiebot and the cookie consent banner affect the Google Analytics bounce rate?**

https://support.cookiebot.com/hc/en-us/articles/360004223253-Does-the-use-of-Cookiebot-and-the-cookie-consent-banner-affect-the-Google-Analytics-bounce-rate-

**Does Cookiebot work on review apps?**

Because of how our review app infrastructure is setup, and because Cookiebot will not work on wildcard subdomain URLs, we cannot get cookiebot to work on review apps. This means that pages in a review app which require the use of: third party iFrames, cookies, or advanced JavaScript may not work on review apps.

**Can we improve Cookiebot?**

We have plans to [improve our Cookiebot implementation](https://gitlab.com/groups/gitlab-com/-/epics/681) but implementation will take time.