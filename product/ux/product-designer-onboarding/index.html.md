---
layout: handbook-page-toc
title: "Product Designer Onboarding"
description: "Awesome! You're about to become a GitLab Product Designer! Below you'll find everything you need to start designing."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Getting started designing for GitLab

Awesome! You're about to become a GitLab Product Designer!
Below you'll find everything you need to start designing.
If something is missing, add it (as goes with everything at GitLab)!

You will feel very slow in the beginning, which is perfectly normal. There is a lot of information being thrown at you all at once. Your goal for the first few weeks here at GitLab is simply to listen, absorb, and ask as many questions as possible. 

If you haven't already, please read the main section of the [UX Handbook](/handbook/product/ux/) and the [Product Designer](/handbook/product/ux/product-designer/) section. Reading the [Design project README](https://gitlab.com/gitlab-org/gitlab-design/blob/master/README.md) and its [contribution guidelines][gitlab-design-contrib] will also help fill in all the details of how we work.

## UX Buddy

You will be assigned a UX Buddy to help you find your way around. Your buddy will schedule a coffee chat with you during your second week. To get you up to speed so you can start contributing to the team efforts and improving GitLab as a product, you will be assigned to an onboarding issue that provides a few tips on how to navigate around the team resources as well as company resources.

Your UX Buddy will also be assigned to your first few milestones issues alongside you. While you should feel free to ask anyone for help at anytime, your buddy is a dedicated person you can rely on for help and guidance.

### UX buddy responsibilities

As a buddy, you will be responsible for creating an onboarding issue for the new joiner under the [GitLab Design][gitlab-design] project. You can use the `UX Onboarding` issue template for that. Part of your responsibility is also to guide the new desiger around the department, as well as facilitating a smooth ramp-up within the stage group whenever necessary. We created a [Google Docs with a template agenda](https://drive.google.com/drive/u/1/search?q=UX%20Buddy%20(template)) you can use to structure your 1:1s. You should feel free to structure those calls whenever you and the new joiner feel like it. Read more about [general buddy responsibilities](/handbook/people-group/general-onboarding/onboarding-buddies/) in our handbook.

## Design tools

Every Product Designer gets a license to [Figma](https://www.figma.com/). Other tools as needed can include,
but are not limited to: [Framer](https://framer.com/), [Origami by Facebook](http://origami.design/),
[Principle for Mac](http://principleformac.com/), and HTML/CSS/JS prototyping.

Your manager will be able to provide you with designer tool licenses. When in need of different tools, request those by filing an issue on our
[organization issue tracker](https://gitlab.com/gitlab-com/organization/issues).

As part of your day-to-day, you will be working in the [GitLab Design Repository][gitlab-design]. This is where we host design files and share them with developers for implementation. For details on how to work and contribute to this repo, read the [contribution guidelines][gitlab-design-contrib]. 

## GitLab features

As a Product Designer, it's important to have a holistic understanding of GitLab [features](/features/), even outside of your assigned stage group. Additionally, you should understand the product [direction](/direction/), particularly within your product stage group.

## GitLab versions and tiers

GitLab is built on an open core model. That means there are two versions of GitLab: Community Edition (CE) and Enterprise Edition (EE).

GitLab Community Edition is open source, with an MIT Expat license. GitLab Enterprise Edition is built on top of Community Edition: it uses the same core, but adds additional features and functionality on top of that. This is under a proprietary license.

It is a good idea to familiarize yourself with the differences between CE and EE. As a Product Designer here at GitLab, you will have access to all the features within EE. The [tiers within CE and EE are listed here](/handbook/marketing/strategic-marketing/tiers/). Review the [feature comparison](/pricing/self-managed/feature-comparison/) to understand the features available within each tier.

## GitLab design

Familiarize yourself with these design resources. As the UI and documentation mature we will continue to solidify these as the SSOT for all product design.

* The GitLab Figma UI Kit is used to build high-fidelity mockups and provide design specs to implement Pajamas. It lives in the [GitLab Design][gitlab-design] project and is made up of two files, the **pattern library** and the **instance sheet**. Learn how to use and update it in by reading the [Figma UI Kit documentation](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com/-/blob/main/doc/pajamas-ui-kit.md). 
    * You can also make use of the [GitLab Figma plugin](https://www.figma.com/community/plugin/860845891704482356/GitLab) to improve the efficiency of uploading Figma designs to GitLab issues.

* [GitLab UI](https://gitlab-org.gitlab.io/gitlab-ui/) is the repository that has the components built out in [Vue](https://vuejs.org/). ([View the project](https://gitlab.com/gitlab-org/gitlab-ui))

* [Pajamas](https://design.gitlab.com) is the design system where documentation, interactive examples and design specs are referenced. ([View the project](https://gitlab.com/gitlab-org/gitlab-services/design.gitlab.com))

## Create issues
As you begin to get settled in, you will most likely need to create or update an issue.

Workflow for creating an issue:

* Visit the issues list from the [GitLab.org group](https://gitlab.com/groups/gitlab-org/-/issues).

* Search to make sure the issue doesn't already exist.

* Navigate to the project you want to add the issue to, click **New Issue**.

* In general, most issues start in the [CE project](https://gitlab.com/gitlab-org/gitlab-ce). If it involves an EE only feature, it should go in the [EE project](https://gitlab.com/gitlab-org/gitlab-ee). If in doubt, go ahead and place it in CE to start, it can always be moved at a later time.

* Choose a template from the **Choose a template** dropdown and take a look at the **typical kinds of issues created** below.

* Fill in all the relevant sections.

* `@mention` someone in the issue to attract attention to it. Choose an expert [here](/company/team/) or feel free to ask in the #ux channel on Slack who it should be reviewed by. Do not worry that you are poking someone to review a job when you don't even know them and they might be much more senior than you, if it's not appropriate for them, they will know the right person to pass it along to and do that.

Typical kinds of issues created:

* Bug

    * Use the bug template.
    
    * Make sure it looks like a bug - otherwise ping one of the developers to confirm.

    * Reproduce the bug.

    * `@mention` the Product Manager (PM) responsible for that area of the product.

* Proposed feature request

    * Use the feature request template.

    * Focus on describing the problem as well as a solution.

    * Ask a PM for an opinion, involve frontend and backend engineers as well.

## Relevant links

- [Product Designer Handbook](/handbook/product/ux/product-designer/)
- [UX Department Handbook](/handbook/product/ux/)
- [GitLab Research Project](https://gitlab.com/gitlab-org/ux-research)
- [Engineering Handbook](/handbook/engineering/)
- [Engineering Workflow Handbook](/handbook/engineering/workflow/)
- [Product Handbook](/handbook/product/)

[gitlab-design]: https://gitlab.com/gitlab-org/gitlab-design
[gitlab-design-contrib]: https://gitlab.com/gitlab-org/gitlab-design/blob/master/CONTRIBUTING.md
