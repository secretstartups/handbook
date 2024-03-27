---

title: "Reviewing merge requests"
description: "Merge requests are an important process where we peer review incoming changes to ensure code and content meets our standards and does not break any existing functionality."
---







This page is related to the [Buyer Experience repo](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience), [Slippers repo](https://gitlab.com/gitlab-com/marketing/digital-experience/slippers-ui), and [Navigation repo](https://gitlab.com/gitlab-com/marketing/digital-experience/navigation). 

For our repositories, be sure to apply one of the MR templates: For example, the `marketing-site-change.md` for the [Buyer Experience's templates](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/.gitlab/merge_request_templates)


## How to author good MRs 

**Summary**: Briefly explain what this MR is about. Be clear and accurate.
**Changes**: List major changes.
**Why**: Describe why these changes are necessary.
**Docs**: Link to related docs for more context.
**Visuals**: Add screenshots, videos, etc. to illustrate changes.
**Tests**: Describe your testing process and results.

Remember, make this MR easy for reviewers. Be brief, precise, and thorough. Your effort here saves time for others!

## How to give good reviews

* Review the description and discussions in the MR and any related issues.
* Identify what will need to be tested.
* Look at the specific code changes in the MR to see how the site could be impacted by those changes.
* Check to see if any of the updated items are shared by other locations.
* Validate expected functionality 

## As the reviewer, ask yourself these questions

1. Do the changes impact what they are supposed to impact as expected?
1. Do the changes impact something they are **not** supposed to impact?
1. Check relevant browsers.
    * Relevant browsers are those which a significant percentage of our end-users utilize.
1. Check relevant device resolutions.

## Links to Helpful Guidelines

* [GitLab Engineering's style guidelines](https://docs.gitlab.com/ee/development/contributing/style_guides.html).
    * The about website doesn't enforce the same code standards as GitLab engineering's product development style guides however it's recommended to follow these guidelines when possible.
    * [CSS guidelines](https://docs.gitlab.com/ee/development/fe_guide/style/scss.html).
    * [Javascript guidelines](https://docs.gitlab.com/ee/development/fe_guide/style/javascript.html).

## Add the appropriate labels for triage

In most cases, reviews will have the `dex-approval::2-standard` tag by default. This should be sufficient for _most_ changes. If you are working with a sensitive change, use the following approval process as a resource: [Approvel levels in the handbook](/handbook/marketing/digital-experience/marketing-site-approval-process/#approval-levels) 

##  Tag the appropriate people for review

Use your best judgement in asking reviews from others. Note that key pages will need higher authorization for reviews, and their process may move slower as a result. If you are unsure who to ask a request from, start here: [Tagging appropriate people for review in the handbook](/handbook/marketing/digital-experience/marketing-site-approval-process/#step-3-tag-the-appropriate-people-for-review)

