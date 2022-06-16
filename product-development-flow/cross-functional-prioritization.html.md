---
layout: handbook-page-toc
title: Cross-Functional Prioritization
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Objective

To support GitLab's long-term product health and stability, teams are asked to plan their milestones with an appropriate mix of `type::feature`, `type::maintenance`, and `type:bug` work. Ratios may differ between teams as well as with the same team over time. Factors that influence what ratio is appropriate for a given team include the age of the team, the area of the product they are working in, and the evolving needs of GitLab the business and GitLab the product. If your team does not have enough historical data to know its ratios or you are unsure what an appropriate ratio might be, use a guideline of 60% feature, 30% maintenance, and 10% bugs. 

For more details on these three work types, please see the section on [work type classification](/handbook/engineering/metrics/#work-type-classification).

## Prioritization for feature, maintenance, and bugs

Our backlog should be prioritized on an ongoing basis. Prioritization will be done via quad planning (collaboration between product, development, quality, UX) with a DRI to be responsible for the decisions based on each work type:

1. Product Manager prioritizes `type::feature` issues
1. Engineering Manager prioritizes `type::maintenance` issues
1. [Quality](https://about.gitlab.com/handbook/engineering/quality/quality-engineering/#milestone-planning) prioritizes `type::bug` issues

The DRIs of these three core areas will work collaboratively to ensure the overall prioritization of the backlog is in alignment with [section direction](https://about.gitlab.com/direction/#devops-stages) or any other necessary product and business needs.

It is recommended that teams use a Cross-functional Prioritization Board like [this example](https://gitlab.com/groups/gitlab-org/-/boards/4309441?not[label_name][]=UX&label_name[]=group%3A%3Athreat%20insights) which provides columns for `type::feature`, `type::maintenance`, and `type::bug` issues. Issues may be reordered by drag and drop.

**Note:** Each team is encouraged to create their own board as the example board above belongs to the Threat Insights team. Please do not modify this board unless you are a member of the Threat Insights team.

Drag and drop reordering is also supported in the issues list by sorting by `Manual` ([example](https://gitlab.com/gitlab-org/gitlab/-/issues/?sort=relative_position&state=opened&label_name%5B%5D=group%3A%3Athreat%20insights&label_name%5B%5D=type%3A%3Amaintenance&first_page_size=100)). You may find this view to be more effective when focusing on a specific type, or when working against large backlog. When you adjust the order of issues in the _Manual_ list view, it's automatically reflected in the board view, so the order is consistent between both views.

Notes: 

1. It may be useful to filter out certain issue types like `UX` that aren't relevant to implementation issues.
1. Toggle off "show labels" in the board for a cleaner view.


## Planning for the milestone

The Product Manager is responsible for planning each milestone. Product Managers are also responsible for ensuring that their team's target ratios are maintained over time.

1. Using the prioritized backlogs and guidance from their EM, QEM, and UX counterparts, the Product Manager fills the next milestone with a balanced set of issues using the appropriate work type ratios for their team. 
   1. If you are unsure where to start, target a ratio of 60% features, 30% maintenance, and 10% bugs.
   1. Your team may have ratios other than 60/30/10. For instance, teams working on net-new product functionality may have a much higher feature work %. 
1. Sequencing of work within the milestone should reflect that we [plan ambitiously](https://about.gitlab.com/handbook/product/product-principles/#how-this-impacts-planning). This means not every issue will be delivered. Be aware that this can skew your ratios over time if subsequent milestones are not properly re-balanced.

It is recommended to use the your team's same [Cross-functional Prioritization board](/handbook/product-development-flow/cross-functional-prioritization.html#prioritization-for-feature-maintenance-and-bugs) for milestone planning.

Add the `milestone` ([example](https://gitlab.com/groups/gitlab-org/-/boards/4309441?label_name[]=group%3A%3Athreat%20insights&milestone_title=15.1)) to review the milestone plan. The board will show the number of issues and cumulative issue weights for `type::feature`, `type::maintenance`, and `type::bug` issues.



