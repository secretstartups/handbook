---
layout: handbook-page-toc
title: "Slippers Design System Documentation"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Slippers Design System

Slippers is following [Semantic Versioning](https://semver.org/) and is currently in 0.x.y and is **not considered stable**. 

## Resources
* [Slippers Design System repository](https://gitlab.com/gitlab-com/marketing/digital-experience/slippers-ui)
* [Slippers Design System webpage](https://gitlab-com.gitlab.io/marketing/digital-experience/slippers-ui/)
* [Architecture discussion video Jan 2020](https://www.youtube.com/watch?v=-JUtVOAaQcE&list=PL05JrBw4t0KrakNGW0ruM5UL7DDlrMBba&index=7)
* [Digital definitions](/handbook/marketing/inbound-marketing/digital-experience/digital-definitions/)
* [GitLab Blog: Why design systems benefit everyone](https://about.gitlab.com/blog/2021/03/05/starting-from-the-start-slippers-design-system/)


## Why slippers

Slippers is the Marketing Website Design System used on about.gitlab.com. It's called Slippers because it pairs nicely with the [Pajamas design system](https://design.gitlab.com/). Slippers is currently maintained by the [Digital Experience team](/handbook/marketing/inbound-marketing/digital-experience/) in [Inbound Marketing](/handbook/marketing/inbound-marketing/) at GitLab.

## Why not Pajamas

- Pajamas code is written using different technology than the marketing website and handbook. For the sake of [building things that don't scale](https://about.gitlab.com/handbook/values/#do-things-that-dont-scale), we choose something that aligns better with our existing tech stack. That said, we want to align with Pajamas whenever possible.
- Product has a much longer-lasting design cycle than marketing. Marketing frequently performs design tests and pivots. End-users of a product expect stability. Marketers need the flexibility to try new things.
- Best practices for a marketing website differ from those used when building a product. 
  - Certain occasions might call for a toast in a software product compared to a modal popup on a marketing website. 

## Goals (Q3 2021)

* Make it easier to update the about.gitlab website.
* Clarify what's possible, what's permissible, and what's advisable.
* Improve the UX, UI, IA, and other design aspects of the about website.
* Document design decisions, use cases, and best practices in a central and contextually relevant location.
* Improve single-source-of-truth (SSOT) for the website.
* Codify design tokens.
* Strengthen weak points in our tech stack and reduce tech debt.
* Make more of the code modular and reuseable (less spaghetti).
* Modernize code using paradigms such as BEM and Atomic design.
* Clarify ownership of systems and contents.

## Our vision (Q3 2021)

We want to have a design system that is visible to the world and searchable from a URL similar to Pajamas. We would love to have a living design system where the code used in the website is built using the same components that the design system is built from, where updating one updates the other.

## Our plan (Q3 2021)

The process so far involves small incremental changes. Before we have a place to store the design system components we might apply raw HTML and CSS straight from Figma to existing pages while we explore and build out those systems, tools, designs, and code.

* Do UX research.
* Start a new a new design language built with Figma files.
* Establish a new CSS starting point.
* Rebuild pilot pages such as the homepage and enterprise page using that design language with alpha (non-final) exploratory code.
* Build a repository where we can iterate on design system tools such as Storybook with an independent codebase.
* Apply the new design language to that repository. Add researched and vetted components to that codebase.
* Apply the new CSS code into our new CMS using block components.
* Apply our new design language to a utility framework such as Tailwind CSS on our design system repository.
* Keep iterating until we reach a point where our new CSS system is integrated with Tailwind and Storybook, implementing a rough draft of a functional design system.
* Rebuild and iterate our pilot pages with final components and code as they become available.

## Implementation Details (as of Q1 2021)
* Inventory of existing front-end code: [Issue](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/284)
* Create a [base2020.scss](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/source/stylesheets/2020base.scss) file as a working solution to use in new pages
* Create page YAML front matter properties [disable_handbook_styles](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/source/layouts/default.haml#L10) and [disable_default_styles](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/source/includes/layout/head.html.haml#L157)
* Create a [new repository to hold Slippers code](https://gitlab.com/gitlab-com/marketing/inbound-marketing/slippers-ui)
* Recreate UI components [using Storybook as a dedicated development environment](https://gitlab-com.gitlab.io/marketing/inbound-marketing/slippers-ui/)
* Publish [package through npm](https://www.npmjs.com/package/slippers-ui)
* Include `slippers-ui` in [package.json for about-gitlab](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/package.json)
* Support usage on same pages with `base2020.scss`, [roll out Slippers to the blog](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/slippers-blog-template.md)
* [Support Slippers within Middleman templating and usage as a client side library](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/slippers.md)


## Pages using Slippers

#### Pages using Slippers CSS

These are pages that are using Slippers CSS in the `frontmatter`, or using `2020base.css`:
- [Homepage](https://about.gitlab.com/)
- [Pricing](https://about.gitlab.com/pricing/)
- [Free Trial](https://about.gitlab.com/free-trial/)
- [Install page](https://about.gitlab.com/install/)
- [Enterprise](https://about.gitlab.com/enterprise/)
- [SMB](https://about.gitlab.com/small-business/)
- [Campuses](https://about.gitlab.com/solutions/education/campus/)
- [Partners landing](https://about.gitlab.com/partners/)
- [Partner pages](https://about.gitlab.com/partners/technology-partners/aws/)
- [Localized landing pages](https://about.gitlab.com/fr-fr/)
- [Topic pages](https://about.gitlab.com/topics/version-control/)
- [Continuous Integration](https://about.gitlab.com/stages-devops-lifecycle/continuous-integration/)
- [Out of the office report](https://about.gitlab.com/out-of-the-office/)
- [Remote work report](https://about.gitlab.com/remote-work-report/)

#### Pages using Slippers components

These are pages that have been built in our [Storybook](https://gitlab-com.gitlab.io/marketing/inbound-marketing/slippers-ui) instance, and ported over to `about.gitlab.com`:
- [Blog pages](https://about.gitlab.com/blog/2018/10/05/how-i-transitioned-from-frontend-to-ux/)
- [DevSecOps Survey](https://about.gitlab.com/developer-survey/)
- [DevOps Download](https://about.gitlab.com/devops-download/)
- Event Template (coming soon!)
- Site Navigation and Footer (coming soon!)

## Opportunities for Growth
TODO
