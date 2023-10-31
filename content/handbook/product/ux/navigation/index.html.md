---
layout: handbook-page-toc
title: "GitLab Navigation"
description: "The group::foundations team owns the navigation structures of the GitLab product. Please review this information if you plan to propose changes to GitLab navigation."
---

#### On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The [`group::foundations` team](/handbook/product/categories/#foundations-group) owns the navigation structures of the GitLab product. Please review this information if you plan to propose changes to GitLab navigation.

> Note: a [Code Owners approval rule](https://docs.gitlab.com/ee/user/project/codeowners/) is in place to prevent unapproved changes to the navigation. If you have not followed this process, your Merge Request will be blocked.

## What is navigation

Navigation refers to elements that aid users in moving around GitLab, which includes their organization and wayfinding clues. The navigation experience directly impacts the usability and discoverability of our features.

Listed in [Pajamas](https://design.gitlab.com/patterns/navigation) are the elements that impact navigation.

## When to consider making a change to the navigation

New additions are very deliberate and are made to optimize user workflows. Proposals should include a business case or data that supports it as key/foundational functionality within GitLab.

We do not add new items in order to:

- Improve discoverability of new features. Instead, look for other opportunities to highlight the functionality throughout the product.
- Optimize for the potential future. We should be forward thinking without over optimizing. As features are developed and added, we can look into what changes may need to occur to support a growing feature.


## How to propose a change that impacts navigation

**Note: We are not considering any top-level navigation changes to the Project or Group sidebar until 6 months after our new navigation launches (2024-01-11).**

### Dates for navigation approvals:

| Date  | Reason |
| ----- | ------ |
| May 15 - June 30, 2023 | No navigation additions/changes due to Longitudinal Study |
| July 1 - Dec 30, 2023 | No top-level changes to Projects or Group Sidebar (except from Longitudinal study feedback) so users do not have a constantly changing experience during the navigation launch |
| Post June 30, 2023 | Second-level navigation and Settings proposals that are approved may merge |

### Process to open a navigation approval request

1. It is recommended to propose a navigation change 2 milestones ahead of when you want to release. This allows enough time for collaboration between the team requesting navigation changes and Product/UX counterparts in Foundations.
1. Before opening an issue, review the [elements and patterns for navigation in Pajamas](https://design.gitlab.com/patterns/navigation). It is worth checking the [direction page](https://about.gitlab.com/direction/manage/foundations/navigation_settings/) to see how your proposal aligns or conflicts with upcoming changes. 
1. Review the [list of navigation](/handbook/product/ux/navigation/#what-are-considered-navigation-changes) changes and what they are to make sure your change qualifies.
1. The most important requirements:
   1. Familiarize yourself with feature discovery in the [product handbook](/handbook/product/product-principles/#discoverability-without-being-annoying) as well as our [design system](https://design.gitlab.com/usability/feature-discovery). Provide comprehensive context including alternative options explored (such as Explore, common entry points for your persona, and settings pages), which option is best suited in a given scenario & why, current and future discovery path, as well as a visual representation of proposed changes.
   1. Successful engagements with the Foundation teams usually include active participation by the product manager and designer on the proposal issue. Conducting proactive designs, user research, and using customer insights to [validate](https://about.gitlab.com/handbook/product-development-flow/#validation-phase-4-solution-validation) the proposal will ensure results inform the proposal.  
1. If you are ready to propose a navigation change, use this [issue template](https://gitlab.com/gitlab-org/gitlab/-/issues\new?issuable_template=Navigation%20Proposals) to kick off a discussion with the `group::foundations` team.
1. The [Product Manager for Foundations](/handbook/product/categories/#foundations-group) is the [DRI](/handbook/people-group/directly-responsible-individuals/#what-is-a-directly-responsible-individual) for navigation changes. Designers on Foundations will assist the DRI in reviewing the proposal and provide input. The typical turnaround time from the Foundations team will be 1 milestone.
1. When you have approval and are ready to start implementation, then follow the [GitLab Docs on adding items to the navigation](https://docs.gitlab.com/ee/development/navigation_sidebar.html#adding-page-specific-vue-content).

### What are considered navigation changes

* First, second, and third navigation additions
* Renaming a navigation item
* Removing a navigation item
* Changing the sort order of navigation items
* Launching an [Experiment](https://docs.gitlab.com/ee/policy/experiment-beta-support.html#experiment) or [Beta](https://docs.gitlab.com/ee/policy/experiment-beta-support.html) feature

### Utilizing feature flags

[Feature flags](https://docs.gitlab.com/ee/operations/feature_flags.html) are a great way for teams to merge changes in smaller batches without negatively impacting the user experience.

When shipping navigation changes behind a feature flag, it is required to present a proposal that considers the future state with a clear, validated vision of the final outcome. We do not merge iterative navigation changes behind a feature flag without having an understanding of the end state.
