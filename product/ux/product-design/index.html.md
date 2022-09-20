---
layout: handbook-page-toc
title: "Product Design"
description: "We support the business of GitLab by becoming experts in our stage group, educating ourselves about the entire product, and staying engaged with user and business goals"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}

## Product Design at GitLab

We support the business of GitLab by becoming experts in our stage group, educating ourselves about the entire product, and staying engaged with user and business goals. We partner closely with our stable counterparts in Product Management and Development. 

## Team Structure

Each Product Designer is assigned to an area of our product, called Stage Groups. They learn everything they can about users and their workflows to design solutions for real customer problems.

Information about product categories and links to team members and direction pages can be found [here](/handbook/product/categories/).

Some UX teams have documented detailed information about their ways of working and stage groups, and these can be found here: 
* [Ops](/direction/ops/) (`@gitlab-com/gitlab-ux/ops-ux`)
    * [CI/CD](/handbook/product/ux/stage-group-ux-strategy/ci-cd/) (`@gitlab-com/gitlab-ux/cicd-ux`)
        * [Verify UX](/handbook/product/ux/stage-group-ux-strategy/verify/)
        * [Package UX](/handbook/product/ux/stage-group-ux-strategy/package/)
        * [Release UX](/handbook/product/ux/stage-group-ux-strategy/release/)
    * Configure and Monitor (`@gitlab-com/gitlab-ux/configure-monitor-ux`)
        * [Configure](/direction/configure/)
        * [Monitor](/direction/monitor/)
* [Enablement](/handbook/product/ux/stage-group-ux-strategy/enablement/) (`@gitlab-com/gitlab-ux/enablement-ux`)
* [Sec](/direction/security/)
    * [Secure and Govern](/engineering/ux/stage-group-ux-strategy/sec/) (`@gitlab-com/gitlab-ux/secure-govern-ux`)
* Growth UX
    * [How we approach experiments](/handbook/product/ux/ux-resources/experimentation/) 

## Product Design Workflow

Product Designers follow the guidance outlined in the [Product Development flow](/handbook/product-development-flow/) while working on stage group work with our stable counterparts. 

For specific details:
* [Planning and managing capacity](/handbook/product/ux/product-designer/#planning-and-managing-capacity)
* [Prioritization](/handbook/product/ux/product-designer/#priority-for-UX-issues)
* [Working on Issues](/handbook/product/ux/product-designer/#working-on-issues) 
* [Design Process](/handbook/product/ux/product-designer/#product-design-process)
* [Partnering with UX Resesarch](/handbook/product/ux/product-designer/#product-design-process)
* [Partnering with Technical Writers](/handbook/product/ux/product-designer/#partnering-with-technical-writers)
* [Contributing to Pajamas](https://design.gitlab.com/get-started/contribute)
* [Product Design Manager Workflows](/handbook/product/ux/product-design/product-design-manager.html)

Product Designer Tools
* [UX Scorecard](/handbook/product/ux/ux-scorecards/)
* [Category Maturity Scorecard](/handbook/product/ux/category-maturity-scorecards/)
* [UX Issue Triage](/handbook/engineering/quality/issue-triage/#ux)
* [Heuristics](/handbook/product/ux/heuristics/)
* [Competitor Evaluation](https://gitlab.com/gitlab-org/competitor-evaluations) (GitLab Team Member access only)
* [UX Cloud Sandbox](/handbook/product/ux/ux-research-training/ux-cloud-sandbox/)

Are you a new GitLab Product Designer? If so, welcome! Make sure you see the [Product Designer Workflow](/handbook/product/ux/product-designer/) handbook page that will help you get started.

## Learn about UX and see our work

* [YouTube Playlist for UX Showcases](https://www.youtube.com/playlist?list=PL05JrBw4t0Kq89nFXtkVviaIfYQPptwJz) 
* [UX Learning and Development page](/handbook/product/ux/learning-and-development)

## Design Principles

Our [design principles](https://design.gitlab.com/get-started/principles) can be found with the Pajamas Design System. 

## Beautifying our UI

In Q4 FY22 and Q1 FY23, we ran an experiment called "Macro UX," in which we paired a Product Designer and an Engineer to make self-directed improvements to a product workflow (Kubernetes Agent). The idea was to empower the pair to make changes they identified themselves and resolved directly with MRs, rather than following our existing [Product Development Flow](https://about.gitlab.com/handbook/product-development-flow/). 

The result of the experiment was that the pair was able to resolve low-hanging usability problems, but they ran into challenges when attempting to address larger, more complex problems. However, they did find value in the ability to identify usability problems through heuristic reviews and then quickly partner to fix them. (See the [retro issue](https://gitlab.com/gitlab-org/gitlab/-/issues/351288) for details).

In the *Beautifying our UI* initiative, we'd like to take the best parts of the Macro UX experiment and apply them to making usability improvements in our product.

### Next steps

Going forward, every milestone, we will ask Product Designers and Engineers to volunteer to partner in making self-directed usability improvements. It is an opportunity to fix the things that have been bugging you or that you've heard from users without worrying about prioritization. 

* **Self-Directed:** There are no restrictions on where in the product the pair can make improvements. The goal is to empower the pair to focus on usability improvements that they personally want to see fixed in a product that they use themselves almost every day. 
* **No restrictions on product area:** The pair is not required to work within product areas owned by their own stage groups.
* **No restrictions on pairings:** The Product Designer and Engineer pair do not need to be from the same stage group. This is a voluntary initiative.
* **Work in MRs, not issues:** Both the Product Designer and the Engineer should work directly in MRs to make changes. For the Product Designer, these MRs will likely be focused on less complex usability issues that the pair identifies, such as documentation, minor UI polish, or UI text changes. To make it easier for others to understand the change, make sure that you add screenshots and explain what was changed and why (unless it's an obvious bug fix) in the MR description.
* **Length of rotation:** The length of the pairing will be 1-3 milestones, depending on what the pairing believes is appropriate for them. This means that multiple groups could be working on Beautifying our UI in parallel.
* **Prioritization:** The Product Designer and Engineer will inform their direct managers and discuss prioritization and capacity planning prior of their involvement in the initiative, so that they can make time for it during milestone planning. They'll make sure their stage group team is also aware of their involvement.
* **Documentation:** UI changes can impact the documentation to varying extents. The Product Designer or Engineer will follow the [Definition of Done](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#definition-of-done), with any docs changes required documented in the `/doc` directory by the Product Designer or Engineer. Assign the [relevant Technical Writer](/handbook/product/ux/technical-writing/#assignments) as Reviewer.   

### Volunteers

| Milestone | Product Designer | Engineer    |
| ----------        | -----------------| ----------- |
| [15.0 (2022-04-18)](https://gitlab.com/gitlab-org/gitlab/-/issues/356703) | Annabel Gray | Phil Hughes |
| [15.1 (2022-05-18)](https://gitlab.com/gitlab-org/gitlab/-/issues/361641) | Sascha Eggenberger | Robert Hunt |
| [15.2 (2022-06-18)](https://gitlab.com/gitlab-org/gitlab/-/issues/362122) | Emily Bauman     | Jannik Lehmann |
| 15.3 (2022-07-18) | Matthew Nearents | Tom Quirk |
| 15.4 (2022-08-18) | Nadia Sotnikova | Alex Kalderimis |
| 15.5 (2022-09-18) | Katie Macoy | Anna Vovchenko |
| 15.6 (2022-10-18) | Matej Latin | Deepika Guliani |

### How do I volunteer?

If you are a Product Designer or Engineer who wants to volunteer, please create an MR to update the table above by adding your name, and assign it to your manager to review/merge. If you have any questions, please feel free to reach out to the VP of User Experience or the Director of Product Design.

### I signed up. Great! What's next?

Create an issue, assign it to both Product Designer and Engineer and add it to this [epic](https://gitlab.com/groups/gitlab-org/-/epics/7781). Tag the appropriate Product Design Manager and Engineering Manager for awareness. As you progress through the milestone, make sure to link all merge requests to your issue. This will help other stakeholders quickly understand the reason behind the sudden influx of MRs.

You should also keep track of any needed documentation updates. Work with the relevant technical writers to ensure documentation is kept as up-to-date as possible.

Every MR should follow the [approval guidelines](https://docs.gitlab.com/ee/development/code_review.html#approval-guidelines). If you created an MR, please use the Reviewer Roulette to assign another designer to conduct a UX MR review.

### How will we measure success?

The team will track total number of MRs merged with the `Beautifying our UI` label. 

### Risks

* We don't know how much time will be required during the experiment for these pairings to be successful, so we can't predict the impact to participants' regular milestone work, OKRs, and so on.
* The experiment will focus on fixing friction points identified during heuristic reviews, which means that we won't conduct user research. There is a possibility that we will inadvertently introduce new friction points.
