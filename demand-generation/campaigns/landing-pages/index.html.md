---
layout: handbook-page-toc
title: "Landing Page Creation"
description: "Overview of Marketo landing pages at GitLab. This page will be moved under Demand Generation."
twitter_image: '/images/tweets/handbook-marketing.png'
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Best Practices

## Landing Page Conversion Best Practices
`To be removed and linked to Brand & Digital best practices page when created`
1. *"Don't make them think." - Steven Krug*
1. Header should be 3-7 words max
1. The header, optional blurb, and image should directly tie to inbound context (e.g. ad they clicked)
1. Use plain, value-oriented and action-oriented language
1. Use "first date" content to put our best foot forward
  * Let's not tell them about how cool we are and how amazing our stamp collection is. Make it about them, and drive the desired action of a form fill.

## Landing Page URL Best Practices
* The H1/page title will be the slug of the URL
* The H1 should be concise and focus on keywords for the campaign

# Resources and related issues
* [Character Count Checker](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=868164112)
* [Documentation of Modular Marketo Landing Page](https://about.gitlab.com/handbook/marketing/brand-and-digital-design/marketo-page-template/)
* Related Brand & Digital Issues:
  * [Create a new Marketo landing page template phase 1](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/7259)
  * [Marketo Landing Page Phase 1 - KPIs & Validation](https://gitlab.com/gitlab-com/marketing/growth-marketing/brand-and-digital/brand-and-digital/-/issues/52)
  * [Marketo Landing page template design, phase 2](https://gitlab.com/gitlab-com/marketing/growth-marketing/brand-and-digital/brand-and-digital/-/issues/43/)
  * [Update Marketo forms (design + copy) to improve conversion on existing and new landing pages](https://gitlab.com/gitlab-com/marketing/growth-marketing/brand-and-digital/brand-and-digital/-/issues/66)

# Landing page creation options

We create landing pages in several locations. Marketo is the most efficient option, using tokens and automation pre-built into programs for more speedy and consistent exection. The events yml creates landing pages when specific code is included. Gated content pages are created using code and then added as listings in the /resources/ yml. Campaign pages are currently created on about.gitlab.com.

## Marketo landing pages (general)

*Note: this requires a Marketo license with access to make and approve landing pages.*

The following section point to more detailed processes for Marketo landing pages based on landing page type, plus general information for knowledge sharing on creation process.

> To build the most advanced and efficient landing page processes in Marketo, we utilize `My Tokens` in our Marketo program templates along with character limits based on conversion best practices to write copy.

#### Marketo landing page instructions, character limits, and workback timelines
_Curious how to estimate when a landing page due date should be set? We've tried to make it easy with a workback, so that you can also clearly see the **dependencies** for a landing page to be created (including landing page copy, which is a separate issue teamplate)._

* Gated content (in-house content, analyst content, and competitive content)
  * [Handbook page to reference process and details](https://about.gitlab.com/handbook/marketing/demand-generation/campaigns/content-in-campaigns/)
  * [Workback schedule calculator](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=1648326617)
  * [Character limit checker](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=905304679)
* Webcast registration page
  * [Handbook page to reference process and details](https://about.gitlab.com/handbook/marketing/virtual-events/webcasts/#step-3c-create-the-landing-page)
  * [Workback schedule calculator](https://docs.google.com/spreadsheets/d/1A4c2OodEAsOlN4Ek-rBiLlwkdF0AvX5YBiY4mhkZd-M/edit#gid=666473040)
  * [Character limit checker](https://docs.google.com/spreadsheets/d/1dKVIZGbbOLoR5BdCqXqCQ40qJlQNif9waTiHc8yWggQ/edit#gid=43971442)
* Event meeting request or general info pages
  * [Handbook page to reference for process and details](https://about.gitlab.com/handbook/marketing/events/#how-to-add-events-to-aboutgitlabcomevents) (YML)

#### General Marketo landing page creation instructions
1. In Marketo, you will have already cloned the correct template for your campaign type and followed the standard process for Marketo program creation and SFDC campaign creation via sync.
1. In your Marketo program, fill in the appropriate Marketo tokens (Marketo program > `My Tokens`) for the template you are creating
1. In the `Assets` folder, left-click `Landing Page` > `Edit Draft`
1. In most cases, the Maketo landing page copy will include the `My Tokens` referenced above, with then does not require any edits to the landing page.
1. Use the approved copy that meets the character limits to update the landing page. Please ensure your copy meets [conversion best practices](https://about.gitlab.com/handbook/marketing/landing-pages#landing-page-conversion-best-practices).
1. When the landing page is finished, click `Preview` to ensure all tokens are correctly applied and the page appears as intended (copy, design, etc). Click `Preview Actions` > `Approve and Close`.
  * Note: if you see tokens instead of the desired text, you may need to troubleshoot. Make sure your token code in the page exactly matches the Marketo program token name.
1. Update URL by clicking `Landing Page Actions` > `URL Tools` > `Edit URL setting`. The new URL should reflect our [landing page naming convention](https://about.gitlab.com/handbook/marketing/landing-pages#landing-page-naming-convention)
1. Edit any related emails, such as `confirmation` or `sales alert` and approve the edits
1. Review flow steps and activate related smart campaigns
1. Test your landing page using the [QA Review Steps](https://about.gitlab.com/handbook/marketing/landing-pages#landing-page-qa-review-steps)
1. Once tested and any necessary updates made, comment in the relevant issue to alert other approvers to review and approve
1. When the page is live, do final QA on live version to test all flows are working appropriately via Mareto

**about.gitlab landing page instructions being phased out**
* Event landing pages (events yml) - [See Events Handbook Page](https://about.gitlab.com/handbook/marketing/events/#how-to-add-events-to-aboutgitlabcomevents) (for now)
* Gated content landing pages - [See about.gitlab code Gated Content Handbook Page](/handbook/marketing/demand-generation/campaigns/content-in-campaigns/) (to be phased out)
* Webcast landing pages - [See about.gitlab code Webcast Handbook Page](https://about.gitlab.com/handbook/marketing/virtual-events/webcasts/#step-3c-create-the-landing-page) (to be phased out)

## Integrated campaign landing pages

Our integrated campaign landing pages are currently created on about.gitlab.

### Where to create integrated campaign landing pages

* **Use Case integrated campaigns:** These are created in the [`/why/` directory](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/source/why).
* **Localized integrated campaigns:** These are created in the subfolder for the language (starting at [`/source/` folder](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/source)). For example, if it is a localized use case campaign for France, it would use the subfolder `/fr/` followed by the French traslation for `/why/` (which is `/pourquoi/`) followed by the url structure.
  * Example: French CI Use Case Integrated Campaign is `https://about.gitlab.com/fr/pourquoi/integration-continue-pour-construire-et-tester-plus-rapidement/` whereas the English version is `https://about.gitlab.com/why/use-continuous-integration-to-build-and-test-faster/`.
* **Competitive integrated campaigns:** These are created in the [`/compare/` directory](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/source/compare)

### Steps to create a new campaign landing page

1. Determine the ideal URL name according to [URL best practices](https://about.gitlab.com/handbook/marketing/landing-pages#landing-page-url-best-practices) and confirm with Growth Marketing
1. Create a new directory in the appropriate directory as designated above, beginning a new MR
  * Name the MR `WIP: Add landing page for [Campaign Name]`
  * Assign to yourself
  * This MR should be linked from the landing page issue as part of the Integrated Campaign process
1. In the new MR, navigate to the new directory you created
1. Click `+` and select `New File`
1. Name the file `index.html.haml`
1. Add the code for the landing page (below)
1. Update the text variables based on the approved copy for the landing page
1. Update your commit message to `Add code for new landing page` and click `Commit changes` at the bottom of the page
1. Test your landing page using the [QA Review Steps](https://about.gitlab.com/handbook/marketing/landing-pages#landing-page-qa-review-steps)
1. Once tested and any necessary updates made, comment in the relevant issue to alert other approvers to review
1. When your MR is fully ready to be merged:
  * Make sure your manager is assigned (and has merge rights)
  * Remove `WIP:` at beginning of MR title
  * "Resolve" any unresolved threads, ensuring all questions/comments have been addressed
  * Comment into the MR to @-mention manager, with link directly to the campaign landing page in the review app for final review
1. Manager will review and either approve and merge, or notify of any necessary changes
1. When the page is live, do final QA on live version to test all flows are working appropriately via Mareto

#### QA process for about.gitlab campaign landing pages
* When the landing page pipeline has passed, click to the review app and navigate to your new landing page
* Review the grammer, spelling, and design elements
* Fill out the form (using a personal email address) and test that the resulting success message and flows take place:
  * If a webcast, check that the success message displays properly
  * If a Pathfactory experience, check that the link includes the correct code to (`&lb_email=<email-of-user>`) that will ensure Pathfactory recognizes the individual as a known lead, and track the activity back to the lead/contact record.
* Check that you recieve the confirmation email and run through all the flows by reviewing the `Add to Campaign` smart campaign in your Marketo program (note that if you are using your `@gitlab.com` email address, you will be removed from the flows to avoid inflating program totals for employee form fills)

#### Code for integrated campaign landing pages

The following landing page code is using the latest landing page design (for the CI and DevSecOps use case integrated campaigns). 

```
---
layout: value-driver
title: 
description: 
suppress_header: true
extra_css:
  - value-driver-6595-control.css
  - comparison-page.css
  - form-to-resource.css
  - just-commit-6595-control.css
destination_url: "&lb_email="
form_id: "1002"
form_type: "resources"
cta_title: ""
cta_date:
cta_subtitle:
link_text: ""
success_message: ""
---
%div#experiment6595.experiment-outer-wrapper
  %span.loading-experiment
  %div.experiment-container.experiment-control
    .wrapper.gitlab-ee-page
      .header-hero-banner.header-hero-banner--reduce-cycle{style: 'background-image:url(/images/just-commit/ci-use-case-web-header.png)'}
        .container
          .row
            .col-md-12
              %h1.jumbo-heading Main Header
              %h3 Subheader

      .sub-wrapper.main-content
        .container
          .row
            .col-md-7
              .just-commit-intro-text
                %p <strong>Short bold intro sentence.</strong> Intro continued.
            .col-md-5
              .just-commit-form-wrap
                = partial "includes/form-to-resource"

      .just-commit-highlight-row
        .container
          .row
            .col-md-5
              %h3 
              %ul.checkmark-list
                %li 
                %li 
                %li 

    .just-commit-logo-wrap
      = partial "includes/home/customer-logos-transparent"

    .wrapper-dark
      .just-commit-sales-wrap
        = partial "includes/contact-sales"

:css
  body {
    background: #ffffff;
  }

  .footer {
    margin-top: 0;
  
```

**Example:**
```
---
layout: value-driver
title: Continuous Integration to build and test faster at any scale
description: Simplify and automate to deliver better products faster - together
suppress_header: true
extra_css:
  - value-driver-6595-control.css
  - comparison-page.css
  - form-to-resource.css
  - just-commit-6595-control.css
destination_url: "https://learn.gitlab.com/c/the-benefits-of-sing?x=fDT7Bl&lb_email="
form_id: "1002"
form_type: "resources"
cta_title: "Free Instant Download:<br>Benefits of single application CI/CD eBook"
cta_date:
cta_subtitle:
link_text: "Thanks! Click here to view your content."
success_message: "You will also receive a copy of the eBook in your inbox shortly."
---
%div#experiment6595.experiment-outer-wrapper
  %span.loading-experiment
  %div.experiment-container.experiment-control
    .wrapper.gitlab-ee-page
      .header-hero-banner.header-hero-banner--reduce-cycle{style: 'background-image:url(/images/just-commit/ci-use-case-web-header.png)'}
        .container
          .row
            .col-md-12
              %h1.jumbo-heading Continuous Integration to build and test faster at any scale
              %h3 Read this eBook on how to simplify and automate to deliver better products <br> faster - <i> together </i>

      .sub-wrapper.main-content
        .container
          .row
            .col-md-7
              .just-commit-intro-text
                %p <strong>Wrangling multiple tools can be just as frustrating as manual processes.</strong> Complicated toolchains are difficult to maintain and create information silos for teams. In this eBook, learn how Continuous Integration, built into a complete DevOps platform, can increase efficiency, promote collaboration, and provide greater visibility across your entire software development lifecycle.
            .col-md-5
              .just-commit-form-wrap
                = partial "includes/form-to-resource"

      .just-commit-highlight-row
        .container
          .row
            .col-md-5
              %h3 What you will learn
              %ul.checkmark-list
                %li How optimized CI automates processes without the added maintenance of plugins
                %li How GitLab CI/CD compares to other CI tools
                %li The benefits of single application CI vs. traditional CI

    .just-commit-logo-wrap
      = partial "includes/home/customer-logos-transparent"

    .wrapper-dark
      .just-commit-sales-wrap
        = partial "includes/contact-sales"

:css
  body {
    background: #ffffff;
  }

  .footer {
    margin-top: 0;
  }
```

# Landing page QA review steps
* Go to the page you are going to test:
    * For Marketo landing pages, open an incognito window and go to the URL of the page you are testing
    * For landing pages in an MR, when the pipeline approves, go to the review app and navigate to the page you are testing
* Check for spelling and grammatical errors (note: these should ideally be caught during copy review prior to landing page creation)
* Check that [conversion best practices](https://about.gitlab.com/handbook/marketing/landing-pages#landing-page-conversion-best-practices) are met
* Fill out the form and ensure all flow steps in Marketo trigger appropriately (i.e. you receive confirmation email, interesting moment applied, program membership updated, alert sent if applicable, etc.) 
* Confirm correct location is arrived at post-form submit (i.e. correct form success message or a resulting thank you page)
