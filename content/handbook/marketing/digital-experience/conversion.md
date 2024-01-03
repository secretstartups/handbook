---

title: "Conversion Group"
---






  

# Conversion Group

The Conversion group within Digital Experience is responsible for creating features on our marketing site that contribute to increasing conversion rates of free trial signups and plan purchases.

Some of these pages include, but are not limited to:

- Homepage
- Pricing
- Why Premium / Ultimate pricing child pages
- Free trial (paid search) sign up landing page
- ROI calculators
- Why GitLab
- Platform

This documentation is meant to help a developer get onboarded to some of the complex components that are critical to some of these pages.

## ROI Calculators

We have two Return on Investment (ROI) calculators in Buyer Experience: **cost savings** and **time savings**.

Both calculators can be found on the [/calculator/roi](https://about.gitlab.com/calculator/roi/) landing page while the **cost savings** calculator is being used on the Why [Premium](https://about.gitlab.com/pricing/premium/) / [Ultimate](https://about.gitlab.com/pricing/ultimate/) pricing pages.

Both calculators share some functionality which has been placed in a [mixin](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/mixins/roi-calculators.mixin.ts) file. Most of the props live here, as well as the functionality for setting/getting the calculator step in a url parameter.

The [roiCalculate.js](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/lib/roiCalculate.js) lib file contains important constants and formulas used in the calculator.

The **Cost Savings** calculator utilizes [Jest tests](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/test/calculate.test.js) which will cause our [pipelines](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/.gitlab-ci.yml#L160) to fail if any new features break our formulas.

At this time, the **Time Savings** calculator does not have any tests.

## Guest Users Calculator

This calculator can be found on [/pricing/premium/](https://about.gitlab.com/pricing/premium/) and [/pricing/ultimate/](https://about.gitlab.com/pricing/ultimate/) pages, it's the same calculator for both pages.

The component file is [guest-calculator.vue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/components/pricing/plans/guest-calculator.vue) and it utilizes a common input component named [input.vue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/components/calculator/input.vue) which is also used by other calculators.

The content for the calculator is separated into two different files, each one for a price category, the file for the ultimate page is [ultimate.yaml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/pricing/ultimate.yml) and the file for the premium page is [premium.yaml](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/content/pricing/premium.yml).

Plans' prices can be found as properties inside the [guest-calculator.vue](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/components/pricing/plans/guest-calculator.vue) file. We decided to keep this data separated from the others since it may be updated frequently.

This calculator does not have tests.

## Free Trial - Paid Search Hero Variations

In addition to our original Free Trial landing page, we also have a variation of the sign-up page dedicated to traffic from paid search results: [/free-trial/devsecops](https://about.gitlab.com/free-trial/devsecops/)

There is an aspect of personalization to this page in that, depending on the `variant` url parameter value, the hero content will change.

An important note is that content changes like this can cause a 'flash', in that the original content renders for a split second before the correct content appears. To hide this we have added in a fade-up AOS animation.
