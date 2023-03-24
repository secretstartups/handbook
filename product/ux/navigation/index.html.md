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

> Note: a [Code Owners approval rule](https://docs.gitlab.com/ee/user/project/code_owners.html) is in place to prevent unapproved changes to the navigation. If you have not followed this process, your Merge Request will be blocked.

## What is navigation

Navigation refers to elements that aid users in moving around GitLab, which includes their organization and wayfinding clues. The navigation experience directly impacts the usability and discoverability of our features. 

Listed in [Pajamas](https://design.gitlab.com/patterns/navigation) are the elements that impact navigation.

## When to consider making a change to the navigation

New additions are very deliberate and are made to optimize user workflows. Proposals should include a business case or data that supports it as key/foundational functionality within GitLab.

We do not add new items in order to:

- Improve discoverability of new features. Instead, look for other opportunities to highlight the functionality throughout the product.
- Optimize for the potential future. We should be forward thinking without over optimizing. As features are developed and added, we can look into what changes may need to occur to support a growing feature.


## How to propose a change that impacts navigation

**Note: We are not considering any top-level navigation changes to the Project or Group sidebar until 6 months after our new navigation launches.**

1. Before opening an issue, review the [elements and patterns for navigation in Pajamas](https://design.gitlab.com/patterns/navigation). It is worth checking the [direction page](/direction/manage/foundations/navigation_settings/) to see how your proposal aligns or conflicts with upcoming changes. 
1. If you are ready to propose a navigation change, use this [issue template](https://gitlab.com/gitlab-org/gitlab/-/issues\new?issuable_template=Navigation%20Proposals) to kick off a discussion with the `group::foundations` team. 
1. The [Product Manager for Foundations](/handbook/product/categories/#foundations-group) must approve any proposal as the [DRI](/handbook/people-group/directly-responsible-individuals/#what-is-a-directly-responsible-individual). They will consult with UX counterparts to consider the impact on the user experience based on user research and business needs. UX and Product Management leadership may also be engaged for feedback when necessary.
1. When you have approval and are ready to start implementation, then follow the [GitLab Docs on adding items to the navigation](https://docs.gitlab.com/ee/development/navigation_sidebar.html#adding-page-specific-vue-content).

### Utilizing feature flags

[Feature flags](https://docs.gitlab.com/ee/operations/feature_flags.html) are a great way for teams to merge changes in smaller batches without negatively impacting the user experience.

When shipping navigation changes behind a feature flag, it is required to present a proposal that considers the future state with a clear, validated vision of the final outcome. We do not merge iterative navigation changes behind a feature flag without having an understanding of the end state.
