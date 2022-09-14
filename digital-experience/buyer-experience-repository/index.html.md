---
layout: handbook-page-toc
title: Buyer Experience Repository
description: >-
  Learn more about the Buyer Experience repository.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

### Technical Architecture

1. **[Nuxt.js](https://nuxtjs.org/):** A vue.js static site generator
2. **[Slippers Design System](https://gitlab.com/gitlab-com/marketing/digital-experience/slippers-ui):** SSoT for the marketing site's desisng system
3. **Focus Resources:** Devoted to two repositories
    - Digital Experience focused resources on the [Buyer Experience](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience) and [Slippers repositories](https://gitlab.com/gitlab-com/marketing/digital-experience/slippers-ui). 

### Scope
1. Move 80 marketing webpage to the Buyer Experience repository.
    1. Pricing
    1. Homepage
    1. Free Trial
    1. Sales
    1. Demo
    1. Install
    1. Features (Landing and single)
    1. Topics (Landing and single)
    1. Solutions (Landing and single)
    1. Enterprise
    1. SMB
    1. Partners (Landing and single)
    1. Comparison Pages

See the [Marketing Site Information Architecture Refresh epic](https://gitlab.com/groups/gitlab-com/marketing/digital-experience/-/epics/82) for single source of truth of pages being migrated to this repository. 

### Requesting Help when the Information Architecture Refresh Impacts your Work

Other keywords that may help folks find this section when searching the handbook:

- Missing content on the marketing website
- My changes in the website get overwritten
- Can't find my files anymore
- Files were moved
- Information architecture migrated my content

In order to meet the goals of the information architecture refresh and serve the business, the Digital Experience team will need to move existing content, and in some cases, remove existing content.

We will do our best to find a solution that meets the business goals of the migration, and keeps your existing processes intact. We apologize in advance for any inconveniences incurred by this work. We will be doing our best to communicate with stakeholders in advance, but due to the scope of the migration, we may miss appropriate channels from time to time.

If we have moved or removed your content and it's causing problems for you, your team, customers, or other stakeholders, here are steps you can take to escalate these issues to us:

1. First, check the [Buyer Experience repository](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience) and see if you can find corresponding YAML files for your content. The Web IDE editing experience will be the same as it was in the `www-gitlab-com` repository.
1. If you are unable to find or edit your content, or have additional concerns, please start by opening an issue in the [Buyer Experience issues board](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues?sort=updated_desc&state=opened).
1. For urgent requests, you can find our team in the `#digital-experience-team` Slack channel. 

# Content Editing Experience 

### Where Content Exists

All content is stored in the [/content](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content) directory and can be accessed via the [Nuxt content module](https://content.nuxtjs.org/)

### How to Edit Content

1. Edit content directly in the browser using [GitLab Web Editor](https://docs.gitlab.com/ee/user/project/repository/web_editor.html).
1. Alternatively, set up a local development environment and use the [Nuxt content editing tools](https://content.nuxtjs.org/) on your machine. Then commit your changes and make a merge request in GitLab.

### How to Add a New Webpage

1. Check if the new page is part of our [Site Architecture Plan](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/336). These are the only pages that will exist in the Buyer Experience repository. For all other pages, please head over to the [www-gitlab-com repository instructions](/handbook/marketing/digital-experience/website/#creating-new-pages) and add your page to the old static site. 
1. If your page is part of an existing neighbourhood (i.e. `/solutions/`, `/partners/`, `/topics/`) the components will already be built for you. If it is a completely new page, please request support from the Digital Experience Team via this [issue template](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/new#). 
1. Add the content of your page into the [/content](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/content) folder in a `.yml` file. Please follow existing indentation and convention.
1. Create an MR, and tag both an Engineer and a Designer on the [Digital Experience Team](https://about.gitlab.com/handbook/marketing/digital-experience/#team) as a `Reviewer`. Only the Digital Experience Team will be able to merge. 

### Will there be a content management system?

[Probably not](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/issues/550#note_877305907). As we reduce the size and scope of the marketing site, we will be raising the bar for the quality of our page design. Content management systems present significant challenges in quality control. 

In order to keep the Buyer Experience looking as good as possible, we have decided not to allow for markdown or rich text editing experiences. Instead, all data will continue to be rendered with the aforementioned Nuxt Content Module. Most data should live in YAML files as structured blocks of strings. There may be call for some numerical data from time to time. We will not allow or support markdown or other rich text strings, with the notable exception that some text elements may need inline links, which we can store as single `p` tags with anchors in them, and render with Vue.js `v-html` attributes. 

By making this decision, we will be simplifying and streamlining our architecture, and making changes to the website more predictable and manageable. The cost is that some content editors may need to wait longer for engineers to implement their changes. Fortunately, in 2022, we only saw about 2-3 requests per month that required this kind of work across the Buyer Experience repository and www-gitlab-com repository. 

If, in any particular quarter, we spend more than two weeks doing content updates implemented by engineering, we should revisit the need for a content management system.

# Developer Experience 

### Where Developer Documentation Exists

The [README.md](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience) at the repository root and our [/docs](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/tree/main/docs) directory. 

### How It Works with www-gitlab-com

See [/docs/deployments.md](https://gitlab.com/gitlab-com/marketing/digital-experience/buyer-experience/-/blob/main/docs/deployments.md).  



