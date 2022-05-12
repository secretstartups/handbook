---
layout: handbook-page-toc
title: "Reviewing merge requests"
description: "Merge requests are an important process where we peer review incoming changes to ensure code and content meets our standards and does not break any existing functionality."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

**This page is related to `about.gitlab.com` and the [GitLab handbook](/handbook/).**

Merge requests are an important process where we peer review incoming changes to ensure code and content meets our standards and does not break any existing functionality.

In our continuous integration environment, people with merge permissions are the final check before content is released. Please use this privilege responsibly and ensure that merge requests align with our [GitLab values](/handbook/values/).

## How to review

* First review the description and discussions in the MR and any related issues.
* Identify the URLs and locations that will need to be tested.
* Review any documentation regarding testing procedures related to those locations. For example...
    * [Cookiebot](https://gitlab.com/groups/gitlab-com/-/epics/681#where-to-regression-test-cookiebot).
    * [Marketo](https://gitlab.com/groups/gitlab-com/marketing/growth-marketing/-/epics/64#where-to-regression-test-marketo).
* Look at the specific code changes in the MR to see how the site could be impacted by those changes.
* Check to see if any of the updated items are shared by other locations.
* Validate expected functionality per the documentation below.
* Ask codeowners or people who have previously updated that code or documentation for an additional reviews.
    * This information is usually found in the git history or sometimes in a codeowners file.
    * They are familiar with the item.
    * They might have different plans for how the item should be used.
    * They might know the history regarding why decisions were made when implementing that item originally.
    * They can assist you when assessing potential impacts.
    * They might know related codepaths, legalities, edge cases, or other things that you are unaware of.
* In addition to stakeholder and codeowner reviews, try to ask for a review from someone who represents an end-user.
    * Example: an SDR (sales) is familiar with how buyers use our website in general when looking for information.

## Always review

1. Do the changes impact what they are supposed to impact as expected?
1. Do the changes impact something they are NOT supposed to impact?
1. Do all of the links go to an expected destination?
1. Check all relevant browsers.
    * Relevant browsers are those which a significant percentage of our end-users utilize.
        * Chrome (Blink), Firefox (Gecko), and Safari (Webkit).
1. Check relevant device resolutions.
    * If this is an email, social, or ad campaign then mobile is the most important viewport.
1. Are any resources are appropriately sized and compressed?
1. Are our [guidelines](#guidelines) being followed?
1. Have appropriate stakeholders approved the change?
    * If this is a legal document, has legal signed off on it? If this is a partner program, has the liason approved it? Etc...

## Guidelines

* [GitLab Engineering's style guidelines](https://docs.gitlab.com/ee/development/contributing/style_guides.html).
    * The about website doesn't enforce the same code standards as GitLab engineering's product development style guides however it's recommended to follow these guidelines when possible.
    * [CSS guidelines](https://docs.gitlab.com/ee/development/fe_guide/style/scss.html).
    * [Javascript guidelines](https://docs.gitlab.com/ee/development/fe_guide/style/javascript.html).
    * [Ruby guidelines](https://docs.gitlab.com/ee/development/contributing/style_guides.html#ruby-rails-rspec)
* [Diversity, Inclusion, and Belonging checklist](https://about.gitlab.com/handbook/marketing/inbound-marketing/content/editorial-team/#diversity-inclusion-and-belonging)
* [Marketing writing style guide](/handbook/marketing/inbound-marketing/content/editorial-team/#blog-style-guide).
* [Marketing naming conventions](/handbook/marketing/digital-experience/website/#naming-conventions).
* [Marketing tone of voice](https://design.gitlab.com/brand/overview/#tone-of-voice)
* [Brand Guidelines](/handbook/marketing/corporate-marketing/brand-activation/brand-standards/).

## Review if relevant

### Accessibility

1. Does this follow best practices for accessibilty?
    * TODO: documentation link

### Code

1. Is the code well written?
    * Note that "well written" is relatively subjective but there are industry best practices such as [DRY code](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself), efficient code, and secure code.
1. Does this code expose or implement any PII or other security related items?
1. Are any variables, constants, code parameters, and other items named appropriately?
1. Is the code organized logically?
1. Is code commented where appropriate?
1. Are functions appropriately sized? Are they small or monolithic?
1. Will or should this code impact any automated tests? If so, do they work as expected?
1. Are there any new javascript console errors or warnings introduced?
1. Please disable any console logs before merging.
1. Check for problems with [unused variables and side effects in Webpack](https://gitlab.com/gitlab-com/www-gitlab-com/blob/195b86f68f9689d6e567e0dee7d75ca678df720e/doc/webpack.md#L182).

### Conversion

1. Does this follow best practices for conversion?
    * TODO: documentation link

### Copy

1. Are there any typos in the copy?
1. Are any dates correct? (examples: 'Tuesday the 31' but the 31 is a Wednesday, or the year is wrong, 41 is not a valid day of the month but 14 is...)
1. Are our [guidelines](#guidelines) being followed?

### Design

1. Does this follow our Brand [guidelines](#guidelines)?
1. Do submitted images support our company values of [diversity, inclusion, and belonging](/handbook/values/#diversity-inclusion)?
1. Are submitted images and other resources appropriately sized and compressed?
1. Are images sufficiently clear and not blurry?

### Experiments

1. Are the A/B tests behaving as expected?
    * On the control experience?
    * On the test experience?
    * Are the necessary analytics being gathered to measure impact of the test?

### SEO and analytics

1. Does this follow best practices for SEO?
    * TODO: handbook documentation link
1. Has SEO analysis been done? Are the required elements present?
1. Will this change impact metrics in a meaningful way?
    * Are the required analytics being gathered as expected?
    * Are the teams impacted by these metrics aware of the upcoming changes?

### Social media

1. TODO: documentation link.
1. Are the elements necessary for social media present?
    * Opengraph image?
    * Appropriate title and description?

### UX

1. Does this follow best practices for UX?
    * TODO: documentation link

## Website specific reviews

### The about website

1. Do pages and flows related to core business aspects behave as expected?
    * /pricing/
    * /free-trial/
    * /sales/
    * /support/

### Handbook

1. Is the table of contents generating as expected?
1. Are the section links generating as expected on heading elements?
1. Does the benefits (salary) calculator work?
1. Are data driven (YML) items being inserted into related handbook pages as expected?
1. Do Mermaid graphs work as expected?
1. Are Sisense (Periscope) charts working as expected?
1. Does embedded third party code such as youtube videos or calendars work as expected?

### Blog

1. Does the blog homepage generate as expected?
1. Do the blog posts generate as expected?
1. Are the rss feeds generated as expected?
1. Do the newsletter subscription forms work as expected?

### Release notes

1. Does the releases page generate as expected?
1. Do the release posts generate as expected?
1. Are the rss feeds generated as expected?

## Regression review

### General regressions

1. Does the cookiebot (GDPR, CCPA, etc) behave as expected?
    * Please review from a relevant geolocation via VPN and ensure related code behaves appropriately.
1. Are forms behaving as expected?
    * Before submitting the form?
    * While submitting the form?
    * After submitting the form?
1. Does search work as expected...
    * In the site header navigation?
    * In the handbook search box?
    * On the blog?

### Javascript libraries

We use javascript extensively throughout the website. Before updating a library, please ensure it doesn't break key locations as outlined in the rest of the regression test section. Additionally, please check the following javascript-related areas:

* Analytics, tracking, and other marketing libraries.
* Contact, subscription, and lead generation forms.
* Site search.
* Cookiebot.
* Header navigation dropdowns and mobile menu.
* The sidebar in the handbook.
* Mermaid charts in the handbook.
* [GitLab Engineering's style guidelines](https://docs.gitlab.com/ee/development/contributing/style_guides.html).
    * The about website doesn't enforce the same code standards as GitLab engineering's product development style guides however it's recommended to follow these guidelines when possible.
    * [CSS guidelines](https://docs.gitlab.com/ee/development/fe_guide/style/scss.html).
    * [Javascript guidelines](https://docs.gitlab.com/ee/development/fe_guide/style/javascript.html).
    * [Ruby guidelines](https://docs.gitlab.com/ee/development/contributing/style_guides.html#ruby-rails-rspec)
* [GitLab Engineering's code review handbook](/handbook/engineering/workflow/code-review/).
* [Marketing writing style guide](/handbook/marketing/inbound-marketing/content/editorial-team/#blog-style-guide).
* [Marketing naming conventions](/handbook/marketing/digital-experience/website/#naming-conventions).
* [Marketing tone of voice](https://design.gitlab.com/brand/overview/#tone-of-voice)
* [Brand Guidelines](/handbook/marketing/corporate-marketing/brand-activation/brand-guidelines).

### Gotchas within the GitLab interface

When reviewing and approving an MR in GitLab, there are some things to be aware of.

#### Review buttons

* There are two buttons at the top of the MR, one for "view latest app" and one for "review". The "review" button does not apply to the about.gitlab www-gitlab-com repository. Please use the "view latest app" button.
* The way the "view latest app" isn't entirely intuitive. There might have been multiple files modified but it will only open one URL.
* That URL might not be the right one. For example the URL might be an include file, but the server doesn't serve those. For example, `/includes/install/index.html`.
* You might have to modify the end of the URL to preview the content you want to see. For example, `/install/` instead of the example above.

#### Resolving a conflict

* Any conversations must be marked as "resolved" before a merge can happen. [How to resolve conversations](https://docs.gitlab.com/ee/user/discussions/#resolvable-comments-and-threads).

#### Draft states

* Any merge request marked as "draft" or "WIP" (work in progress) must be taken out of that state before a merge can happen. Please check with the originator to see if the request is ready to be merged. [How to resolve a draft merge request](https://docs.gitlab.com/ee/user/project/merge_requests/drafts.html).

#### Relative vs absolute URLs

* Review apps have their own ephemeral domain and URL structure. If a you are on a review app but click on a link that is an absolute path (ie about.gitlab.com), you might be taken away from the review app. Try to be aware of your URL location at all times.
    * Example review-app URL: `https://patch-198261122213268859646.about.gitlab-review.app/install/`

#### Dependencies

Sometimes a MR will be marked as "depends on" another merge request. This MR cannot be merged until the dependency is merged first. [Documentation about merge request dependencies](https://docs.gitlab.com/ee/user/project/merge_requests/merge_request_dependencies.html).

