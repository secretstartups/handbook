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


## Prioritization for feature, maintenance, and bugs

Our backlog should be prioritized on an ongoing basis. Prioritization will be done via quad planning (collaboration between product, development, quality, UX) with a DRI to be responsible for the decisions based on each work type:

1. Product Manager prioritizes `type::feature` issues
1. Engineering Manager prioritizes `type::maintenance` issues
1. [Quality](https://about.gitlab.com/handbook/engineering/quality/quality-engineering/#milestone-planning) prioritizes `type::bug` issues

The DRIs of these three core areas will work collaboratively to ensure the overall prioritization of the backlog is in alignment with [section direction](https://about.gitlab.com/direction/#devops-stages) or any other necessary product and business needs.

Notes:

1. You may find it helpful to set up a board that has columns for `type::feature`, `type::maintenance`, and `type::bug` labels ([example](https://gitlab.com/groups/gitlab-org/-/boards/4309441?not[label_name][]=UX&label_name[]=group%3A%3Athreat%20insights)). You can then arrange the items by drag and drop.
1. It may be useful to filter out certain issue types like `UX` that aren't relevant to implementation issues.
1. Toggle off "show labels" for a cleaner view.


## Planning for the milestone

The Product Manager is responsible for planning each milestone. Product Managers are also responsible for ensuring that their team's target ratios are maintained over time.

1. Using the prioritized backlogs and guidance from their EM, QEM, and UX counterparts, the Product Manager fills the next milestone with a balanced set of issues using the appropriate work type ratios for their team. 
   1. If you are unsure where to start, target a ratio of 60% features, 30% maintenance, and 10% bugs.
   1. Your team may have ratios other than 60/30/10. For instance, teams working on net-new product functionality may have a much higher feature work %. 
1. Sequencing of work within the milestone should reflect that we [plan ambitiously](https://about.gitlab.com/handbook/product/product-principles/#how-this-impacts-planning). This means not every issue will be delivered. Be aware that this can skew your ratios over time if subsequent milestones are not properly re-balanced.

Notes:
1. You may find it helpful to use the same board above to conduct milestone planning. 




