---
layout: handbook-page-toc
title: Fulfillment UX Team
description: "The Fulfillment UX team supports the Fulfillment section to provide customers a great experience with buying, upgrading and renewing GitLab."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview



## UX team members

- [Jacki Bauer](/company/team/#jackib) ([Jacki's ReadMe](https://gitlab.com/jackib/jacki-bauer/blob/master/README.md)) - Product Design Manager
- [Emily Sybrant](/company/team/#esybrant) - Product Designer, Purchase
- [Matthew Nearants](/company/team/#mnearents) - Senior Product Designer, Utilization
- [Philip Joyce](/company/team/#philipjoyce) - Senior Product Designer, Provision


## How We Work

We follow the [Product Designer workflows](/handbook/product/ux/product-designer/) and [UX Researcher workflows](/handbook/product/ux/ux-research/) described in the [Product Design section](/handbook/product/ux/) of the handbook. As Growth designers, we relentlessly measure the impact of our design changes following the [experimentation workflow](/handbook/engineering/development/growth/experimentation/). In addition:

- we have issue boards so we can see what everyone is up to.
- we **label** our issues with UX, devops::fulfillment, section::fulfillment and group::.
- we use the [workflow labels](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=workflow%3A%3A).
- we use **milestones** to aid in planning and prioritizing.
- we use [UX issue weights](https://about.gitlab.com/handbook/product/ux/product-designer/#ux-issue-weights).
- we create separate issues for UX work and name them with the prefix [UX]. This allows the Product Designer to add an issue weight specific to UX. The [UX] issue should be the design SSOT for both designs and design feedback. 


#### Getting Work Ready for Design

We use the Product Development Flow to help move issues through the product lifecycle. For the design phase to being, the following are important:
- [ ] Problem is well understood and has been validated
- [ ] JTBD is well understood and has been validated
- [ ] PM has communicated the opportunity canvas to stable counterparts and group stakeholders, including the Product Designer and Product Design Manager

[Link to issue template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issue%5Bmilestone_id%5D=#)

The template can also be copied into the main issue that is the SSOT.

#### Prioritizing Work 

| Type                         | % of Milestone | Description                                                                                     |
|------------------------------|----------------|-------------------------------------------------------------------------------------------------|
| Deliverable                  | 65%            | business priorities, includes design and solution validation                                    |
| Proactive UX and Measurement | 25%            | research and ideation for future improvements, CM Scorecards, competitive evaluation fixes      |
| UX Department Priorities     | 5%             | Pajamas, UX OKRs, professional development                                                      |
| Other                        | 5%             | designer picks, attending company wide meetings, administrative tasks, professional development |


#### Collaboration 

There is a lot of overlap between Fulfillment groups, so we work very closely. To keep things simple and clear, we follow [GitLab internal communication](/handbook/communication/internal-communications) guidelines. In addition the following tips will make it easier to collaborate with Product Designers who span multiple groups:

We collaborate with each other on issues across different Fulfillment Groups. On our monthly planning issues, each designer should indicate high priority or time consuming issues from other groups. A link to the other planning issue is fine too, just so it's easy for the Product Design Manager and Product Managers to navigate to this information.

#### Visual Reviews of MRs

The engineering team applies the `UX` label to any MR that introduces a visual, interaction or flow change. These MRs can be related to new issues, bugs, followups, or any type of MR. If the engineer isn't sure whether the MR needs UX, they should consult the designer who worked on the related issue, and/or the designer assigned to that stage group, or the Product Design Manager.

Live reviews are desired for any MR with the `UX` label. When the MR is in `workflow::In review`, the engineer assigns the MR to the designer for a  review using the [reviewer functionality](https://docs.gitlab.com/ee/development/code_review.html#getting-your-merge-request-reviewed-approved-and-merged) in the sidebar. This can happen in parallel with the maintainer review. Designers should prioritize these reviews to complete them as quickly as possible.

There are times when it isn't possible or practical for a Product Designer to complete their review via their local environment. At these times, the Product Designer can review screenshots and videos in the MR description or coordinate a demo with the Engineer. Another option for more complicated changes is keeping the change behind a feature flag and reviewing the change on staging after the MR has been merged. This is up to each Product Designer's discretion.
