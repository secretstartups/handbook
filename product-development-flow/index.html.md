---
layout: handbook-page-toc
title: Product Development Flow
---

<!--ATTENTION: We're currently actively iterating on the Product Development Flow during 13.5 and 13.6 via a working group https://about.gitlab.com/company/team/structure/working-groups/product-development-flow/. If you'd like to make changes to this page during this interim period, we ask you collaborate with the working group by surfacing ideas in the working groups Slack channel (or WG synchronous meeting). In cases where content needs urgent clarification, MRs should be assigned to the [Product Operations DRI](https://about.gitlab.com/company/team/#fseifoddini) for review/merge, to assure proper alignment with work in progress. This ask is temporary as we want everyone to contribute. We appreciate your patience during this interim iteration period.-->

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview & philosophy

GitLab's product mission is to consistently create products and experiences that users love and
value. To deliver on this mission, it's important to have a clearly defined and repeatable flow for
turning an idea into something that offers customer value. Note that it's also important to allow
open source contributions at any point in the process from the wider GitLab community - these will
not necessarily follow this process.

This page is an evolving description of how we expect our cross-functional development teams to work, but at the same time reflects the current process being used. All issues are expected to follow this workflow, though are not required to have passed every step on the way.

The goal is to have this page be the single source of truth, but it will take time to eliminate duplication elsewhere in the handbook; in the meantime, where there are conflicts this page takes precedence. 

Because this page needs to be concise and consistent, please ensure to follow the prescribed [change process](#editing-this-page).

## Workflow Summary

| Stage (Label) | Track | Responsible | Completion Criteria | Who Transitions Out |
| ----- | --------- | ------------------- | --------------- | ------------------ |
| `workflow::validation backlog` | N/A | Product | Item has enough information to enter problem validation. | Product |
| `workflow::problem validation` | [Validation](#validation-track) | Product, UX Research | Item is validated and defined enough to propose a solution | Product |
| `workflow::design`  | [Validation](#validation-track) | Product Design | Design work is complete enough for issue to be validated or implemented. Product and Engineering confirm the proposed solution is viable and feasible. | Product Design |
| `workflow::solution validation`  | [Validation](#validation-track) | Product, Product Design | Product Manager works with Product Designer to validate the solution with users. | Product |
| `workflow::needs issue review` | [Review](#review-track-optional)(Optional) | Product (Original PM) | Issue needs review by a Peer PM to help issue become more iterative, clearer, and better aligned with GitLab strategy | Product (Reviewer PM)
| `workflow::issue reviewed` | [Review](#review-track-optional)(Optional) | Product (Reviewer PM) | Issue has been reviewed and is ready to move to Build | Product (Original PM) |
| `workflow::planning breakdown`  | [Build](#build-track) | Product, Product Design, Engineering | Issue has backend and/or frontend labels and estimated weight attached | Engineering |
| `workflow::scheduling`  | [Build](#build-track) | Engineering | Issue has a numerical milestone label | Product/Engineering |
| `workflow::ready for development` | [Build](#build-track) | Engineering | An engineer has started to work on the issue | Engineering |
| `workflow::in dev` | [Build](#build-track) | Engineering | Initial engineering work is complete and review process has started | Engineering |
| `workflow::in review` | [Build](#build-track) | Engineering | MR(s) are merged | Engineering |
| `workflow::verification` | [Build](#build-track) | Engineering | Work is demonstrable on production | Engineering |
| `workflow::blocked` | N/A | Product/Engineering | Work is no longer blocked | Engineering |

### Issue descriptions as the SSOT

Issue descriptions should always be maintained as the single source of truth. It's not [efficient](/handbook/values/#efficiency) for contributors to need to read through every comment in an issue to understand the current state.
* When transitioning an issue out to a new workflow stage, the department named in the "Who Transitions Out" column is responsible for updating the issue description.

## Validation track  

For new ideas where the customer problem and solution is not well understood, Product Managers (PMs) and the User Experience Department (UXers) should work together to validate new opportunities before moving to the Build track. The **Validation** track is an independent track from the always moving **Build** track. PMs and UXers should work together to get 1-2 months ahead, so that the Build track always has well-validated product opportunities ready to start. Milestone work should be prioritized with the understanding that some milestones may include more validation efforts than others. Validation cycles may not be necessary for things like bug fixes, well understood iterative improvements, minor design fixes, etc.

### Validation Goals & Outcomes

**When:** When our confidence about the proposed problem or solution isn't high. For example, if we aren't reasonably sure that the problem is important to a significant number of users, and/or that the solution is easy to understand and use.

**Who:** Product Manager, Product Designer, UX Research, Engineering Manager

**What:**

✅ **Understand** the user problem we are trying to solve

✅ **Identify** business goals & key metrics to determine success

✅ **Generate** hypotheses and research/experiment/user-test

✅ **Define** MVC and potential future iterations

✅ **Minimize** risks to value, usability, feasibility, and business viability with qualitative and quantitative analysis

**Outcome:** We have confidence that a proposed solution will positively impact one or more [Product KPIs](/handbook/business-ops/data-team/kpi-index/#product-kpis). There may be reason for exceptions, so the team would need to be clear in that case and be able to justify that it is still important without mapping back to our KPIs.

If we don't have confidence in the MVC or what success looks like, we should continue validation cycles before we move to the build track.

### Opportunity Canvas

One of the primary artifacts of the validation track is the Opportunity Canvas. The Opportunity Canvas introduces a lean product management philosophy to the validation track by quickly iterating on level of confidence, hypotheses, and lessons learned as the document evolves.  At completion, it serves as a concise set of knowledge which can be transferred to the relevant issues and epics to aid in understanding user pain, business value, and the constraints to a particular problem statement. Just as valuable as a completed Opportunity Canvas is an incomplete one. The tool is also useful for quickly invalidating ideas. A quickly invalidated problem is often **more valuable** than a slowly validated one.

Please note that an opportunity canvas is not required for product functionality or problems that already have well-defined [jobs to be done (JTBD)](/handbook/engineering/ux/ux-resources/#jobs-to-be-done-jtbd). For situations where we already have a strong understanding of the problem and its solution, it is appropriate to skip the opportunity canvas and proceed directly to solution validation. It might be worth using the opportunity canvas template for existing features in the product to test assumptions and current thinking, although not required. 

**References**:
* [Opportunity Canvas Template](https://docs.google.com/document/d/1pTEMcwH10xWilQEnVc65oC6PdC3VMjn2XoARfNTaHkc/edit#)
* [Completed Opportunity Canvas Reviews](https://drive.google.com/drive/u/0/folders/19ryr0HFXpkchh65MQ2JQv3f9dYBCC01q)
* [Opportunity Canvas YouTube Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqqGtUIbnmAaE5kNymwifZ1)
* [Example Opportunity Canvas - Fine Grained Access Control (GoogleDoc)](https://docs.google.com/document/d/1c_FPLZ8W7Gjl0tvZSybEKWvcCzJ3AgxlQNFvwm92IHo/edit#heading=h.4mt5fmtn0ax4)
* [Example Opportunity Canvas - Error Tracking (Mural)](https://app.mural.co/t/gitlab2474/m/gitlab2474/1568925801645/71e7e6352180a1492a19a3d3ed6f96d48fefd597)

#### Opportunity Canvas Lite 

Opportunity Canvases are a great assessment for ill-defined or poorly understood problems our customers are experiencing that may result in net new features. As noted previously, opportunity canvases may be helpful for existing features, which is where the [`Product-Opportunity-Opportunity-Canvas-Lite`](https://gitlab.com/gitlab-com/Product/-/blob/master/.gitlab/issue_templates/Product-Opportunity-Canvas-Lite.md) issue template delivers. This template offers a lightweight approach to quickly identify the customer problem, business case, and feature plan in a convenient issue. The steps to use the template are outlined in the [Instructions](https://gitlab.com/gitlab-com/Product/-/blob/master/.gitlab/issue_templates/Product-Opportunity-Canvas-Lite.md#instructions) section and for clarity one would create this issue template for an existing feature they are interested in expanding. For example, this template would be great to use if you are evaluating the opportunity to add a third or fourth iteration to an MVC. This issue should leverage already available resources and be used to collate details to then surface to leadership for review. Once you fill out the template, you will assign to the parties identifed in the issue and you can always post in the `#product` channel for visibility. 

### Validation phase 1: Validation backlog

Label: `workflow::validation backlog`

Every PM should maintain a backlog of potential validation opportunities. Validation opportunities may come from customers, internal stakeholders, product usage insights, support tickets, win/loss data, or other [sensing mechanisms](/handbook/product/product-processes/#sensing-mechanisms). Validation opportunities should be captured as an issue and described in customer problem language, and should avoid jumping ahead to feature/solution language. 

Sometimes it can be tricky to identify a good issue for problem validation. The following situations often are good criteria:

- Initiating work on a new [product category](/handbook/product/categories/)
- Defining the next [maturity state](/direction/maturity/) for a product category (for example, when researching how to go from `Complete` to `Lovable`)
- The envisioned feature is large or introduces a major change to the user experience (for example, reorganizing the sidebar navigation)
- Understanding if a Job to be Done [(JTBD)](https://hbr.org/2016/09/know-your-customers-jobs-to-be-done) is the purpose for which customers buy or use the product 
- Targeting a new user or buyer persona

When validating potential features, it's important to gather feedback from [internal customers](handbook/product/product-processes/#internal-customer-dris), in addition to the broader community. Capturing internal customer feedback early allows their requirements to be considered from the beginning,  accelerating key [Dogfooding](handbook/product/product-processes/#dogfood-everything) outcomes. Driving internal usage of features has repeatedly [shown](https://about.gitlab.com/blog/2020/04/16/geo-is-available-on-staging-for-gitlab-com/) to accelerate broader adoption, deliver [better results for customers](handbook/values/#customer-results), and is required for [viable maturity](https://about.gitlab.com/direction/maturity/). PMs are strongly encouraged to open [Dogfooding issues](handbook/product/product-processes/#dogfooding-process) during the validation phase to capture the feedback of internal customers to help inform initial and/or future iterations of a feature.

Some items will skip the problem validation phase. In these cases, the problem is well understood and has been validated in other ways. When skipping problem validation, ensure the issue description is clear with the rationale and sensing mechanisms used to skip the problem validation phase.

To queue an item in your validation backlog:

1. Create a new issue describing the problem using the "Problem Validation" issue template in the [GitLab project](https://gitlab.com/gitlab-org/gitlab/issues), applying relevant stage and group labels. If you are doing research related to an open issue/epic, consider notifying participants there of the research issue so they can participate.
1. Once each section of the issue template has been filled out (or validated, in the case of pre-existing issues), apply the [RICE formula](https://www.productplan.com/glossary/rice-scoring-model/) as a prioritization mechanic and record this in the description.
1. Apply the `workflow::validation backlog` label

### Validation phase 2: Problem validation

Label: `workflow::problem validation`

Good product development starts with a well understood and clearly articulated customer problem. Once we have this, then generating solutions, developing the product experience, and launching to the market is much more effective. The danger in not starting with the problem is that you might miss out on solutions that come from deeply understanding the customer problem. A poorly defined problem statement can also cause the design and development phases to be inefficient.

Product Managers and Product Designers should refine the validation backlog together. You should pull items from your validation backlog in the problem validation process on a regular cadence to ensure you always have validated problems for your groups to start working on.

To run the problem validation process:

1. PM creates an issue using the [Problem Validation template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/Problem Validation.md).

1. PM applies the `~"workflow::problem validation"` label to the associated issue; this automatically removes the `~"workflow::validation backlog"` label.

1. PM fills out an [opportunity canvas](#opportunity-canvas) to the best of their ability. Ensure the problem and persona is well articulated and add the opportunity canvas to the issue's [Designs](https://docs.gitlab.com/ee/user/project/issues/design_management.html#the-design-management-page). It can be helpful to discuss your problem statement Jobs to be Done (JTBD) and user experience as a Product Manager and Product Designer partnership. Note that you should include content for the solution and go-to-market sections, possibly with low confidence; this section may be likely to change, but thinking it through will help clarify your thoughts. PMs are encouraged to reach out to UX Researchers for help.

1. PM opens a `Problem validation research` issue using the available template in the [UX Research](https://gitlab.com/gitlab-org/ux-research/) project. Once completed, please assign the issue to the relevant UX Researcher.

1. [Product Manager, Product Designer, and UX Researcher](/handbook/engineering/ux/ux-research/#ux-research-at-gitlab) meet to discuss the appropriate research methodology, timescales, and user recruitment needs. 

1. The next steps in the process depend on the research methodology chosen. Regardless of the methodology chosen, PM and UX Researcher execute the research study together. If available, the Product Designer can help. It is beneficial to also invite Engineers to shadow the research study. This can help the team broadly understand existing user behaviors.
	- [Follow the process for user interviews](
/handbook/engineering/ux/ux-research-training/problem-validation-single-stage-group/#for-user-interviews)
	- [Follow the process for surveys](https://about.gitlab.com/handbook/engineering/ux/ux-research-training/problem-validation-single-stage-group/#for-surveys)

1. PM finalizes the opportunity canvas with the synthesized feedback and reviews it with the Product Designer.

1. PM schedules a review of the opportunity canvas with Scott Williamson, Christie Lenneville, and the Product Director for your section. Weekly time blocks will be held. You can contact Kristie 'KT' Thomas to get your review added to one of the weekly time blocks.

1. Once approved:
   1. If the result of the canvas is to move forward and solve the problem, move to design and solution validation phase below to begin solutioning the validated problem.
   1. If the result of the canvas is to _NOT_ move forward solving the problem, write that in the canvas and the original issue and close it. Making an active decision to not do something is just as valuable, and sometimes moreso, than deciding to move forward on the wrong thing.
   1. For the reference of other GitLab employees, set the privacy of the opportunity canvas document to "Anyone at GitLab can find and view" and place it in the [Opportunity Canvas Reviews](https://drive.google.com/drive/folders/19ryr0HFXpkchh65MQ2JQv3f9dYBCC01q) folder on Google Drive. 

### Validation phase 3: Design

Labels: `workflow::design`

1. Product Designer or Product Manager applies the `workflow::design` label to an existing issue or creates a new issue, if needed. 
1. Product Designer leads the team in ideating about potential solutions and engages the PM and Engineers to determine whether the proposed solution meets business goals and is technically feasible. 
1. Product Designer, Product Manager and Engineering Team evaluate potential customer impact of proposed solution.
1. Once the PM, Engineers, and Product Designer choose a direction, then the issue moves into the Solution Validation phase.

### Validation phase 4: Solution Validation

Labels: `workflow::solution validation`

When there are one or more potential solutions that meet business needs and are technically feasible, then it's time to validate that the solution(s) meet our users' needs. As always, you should continually move issues from the backlog into problem and solution validation to ensure that there are validated problems to deliver.

To run the solution validation process:

1. Product Designer works with the PM to determine whether solution validation is needed. Solution validation is appropriate when we don't have high confidence that the proposed solution will meet users expectations.
    
    *Note: Solution validation is only needed after designs or solutions have been proposed. If you lack confidence in a specific direction or if there is a high risk in moving forward without user validation, then continue with these steps. If you are uncertain whether to move forward, reach out to your Product Design Manager.*

1. Product Designer creates a new issue using the `Solution validation` template in the [GitLab UX Research project](https://gitlab.com/gitlab-org/ux-research). The issue will automatically apply the `~"workflow::solution validation"` label. Link the associated Opportunity Canvas and design-related issues. Assign the new issue to yourself, the PM, and the Product Design Manager.

1. PM and Product Designer review the goals and research questions to determine the best [research method](/handbook/engineering/ux/ux-research/#solution-validation) to use.  It's critical to determine this early, because the method dictates what kinds of design assets to use, and it influences criteria for the screening survey.

1. PM and Product Designer discuss user recruitment needs and clarify the research study's goals, research questions, and hypotheses. Once a draft is complete, the Product Design Manager reviews and provides feedback.

1. Product Designer begins crafting a screening survey in Qualtrics. 

    *Note: It's important to complete the screening survey in a timely manner, so that user recruitment can quickly begin. In most cases, user recruitment should begin before the test plan is complete.  Learn more about the [screening process](/handbook/engineering/ux/ux-research-coordination/#how-many-studies-can-a-coordinator-support-per-milestone) to understand what happens once the request is made.*

1. Product Designer creates a `recruitment request` issue in the [GitLab UX Research project](https://gitlab.com/gitlab-org/ux-research) using the available issue template. Assign it to the relevant Research Coordinator.

1. The Research Coordinator will perform a sense check to make sure your screener will catch the people you’ve identified as your target participants. If there are multiple rounds of review, the Coordinator will pause activities until uncertainty about your screening criteria is resolved.

1. Product Designer drafts the test plan in collaboration with the PM. When a first draft of the test plan is complete, the Product Design Manager and UX Researcher review and provide feedback.

1. Product Designer prepares the design assets needed for the study. This will likely be a clickthrough wireframe or prototype (low or high-fidelity screenshots, or an interactive UI prototype). 

    *Note: Design reviews should happen prior to preparing for testing. Make sure solutions are viable and include feedback from PM and Engineering.*

1. Product Designer forwards research study session invites to the UX Research calendar `(gitlab.com_kieqv96j35mpt8bdkcbriu2qbg@group.calendar.google.com)` and any other interested parties (Product Designer, PMs, Engineers, etc).

1. Product Designer leads (moderates) the usability sessions. PM should observe research study sessions and take note of insights and pain points. It is beneficial to also invite Engineers to shadow the research study. This can help the team broadly understand existing user behaviors. *Recommendation: Run a pilot session with an internal participant to test for technical issues, comprehension, and to make adjustments before your sessions with participants.

1. After the research study sessions conclude, the Product Designer updates the `recruitment request` issue in the [GitLab UX Research project](https://gitlab.com/gitlab-org/ux-research). The Research Coordinator will reimburse participants for their time (payment occurs on Tuesdays and Thursdays).

1. PM and Product Designer work collaboratively to synthesize the data and identify trends in Dovetail, resulting in insights.

1. Product Design Manager reviews insights and provides feedback, if needed.

1. Product Designer updates the solution validation issue with links to the insights in Dovetail.

1. PM updates the opportunity canvas with the insights.

1. PM articulates success metrics for each opportunity and ensures a plan for product instrumentation and dashboarding are in place.

At this point, we should have a clear direction on how to move forward. If the solution is validated, then the issue is ready to enter the build track. If the solution was not validated, revisit and make appropriate adjustments.

## Review track (optional*)

The (iteration) Review track is an **optional step** in the flow that brings peer PMs in to help
you hone your skills at _iteration_, _clarity_, and _strategy_. Keeping issues small and iterative
is core to how GitLab maintains [velocity](/handbook/engineering/#the-importance-of-velocity),
writing a "small" issue is often (counterintuitively) more difficult than writing a bigger one, and
understanding the _entire strategy_ of how GitLab operates is a herculean task. Having a helping
hand with these tasks is important to professional development, and it ensures that our entire
Product organization continues to improve.

You should consider requesting a review when:

1. You're having specific challenges defining the problem, identifying the affected personas, or breaking down the solution to small chunks of work.
1. There are potential design or technical dependencies across Sections, Stages, or Groups.
1. This issue takes the product in a novel direction or adds functionality unlike anything else in the product

_*Note: **If you are a new GitLab team member**, you should request reviews of the first 3 issues you create. It will help familiarize you with what we're looking for in an iteration, get more comfortable with our process, and meet your fellow team members. Once you've gone through a few reviews, this track can be considered optional._

If you would like a peer to reivew one of your issues (or epics):

1. Add the `issue::needs review` label to your issue
1. Post a link to the issue in the [**#issue-reviews**](https://gitlab.slack.com/archives/CSX3RHE4C) channel in Slack
   1. _Note: if there is a time crunch and you need a review quickly, be sure to mention when it needs to be done by._
1. The issue gets picked up by a Reviewer PM, who adds a ✅ reaction on the Slack message.
1. Reviewer PM reads through the issue and leaves feedback on these criteria:
   1. **Iteration:** Has the solution been broken down as much as possible? Is it small enough to be completed in one milestone rather than spanning multiple milestones? Have implementation risks been considered and minimized?
   1. **Clarity:** Is the problem well versed and the personas identified? Could someone outside the group or category understand the issue? Is the  value being delivered to the users articulated?
   1. **Strategy:** How will it work in GitLab as whole? Does it tie back to category strategy or stage direction?
1. Things for the reviewer to **not** do:
   1. Don't just _enforce the template_. Instead, give contextual feedback with the appropriate template as a reference point.
   1. Don't treat this as another task to check off, but instead, take this opportunity to engage in conversation and improve our organizations ability to iterate.
   1. Don't assume that the other PM will do exactly what you say. You're providing recommendations, not edicts.
1. When complete, the Reviewer PM adds the `issue::reviewed` label and lets the original PM know that the review is complete.

You can view all the work in happening in this track [on this board](https://gitlab.com/groups/gitlab-org/-/boards/1569699).

## Build track  

The build track is where we plan, develop, and deliver value to our users by building [MVCs](/handbook/product/product-principles/#the-minimal-viable-change-mvc), fixing defects, patching security vulnerabilities, enhancing user experience, and improving performance. DRIs across engineering disciplines involving [Design, Backend, Frontend and Quality](/handbook/product/product-processes/#pm-em-ux-and-set-quad-dris) work closely together to implement MVCs while in close collaboration with the Product Manager. Decisions are made quickly if challenges arise. We make sure to instrument [usage](https://about.gitlab.com/handbook/product/performance-indicators/#instrument-tracking) and track [product performance](handbook/product/product-processes/#product-metrics), so once MVCs are delivered to the hands of customers, feedback is captured quickly for learnings to refine the next iteration.

### Build Goals & Outcomes

**When:** As we build MVCs according to our [product development timeline](/handbook/engineering/workflow/#product-development-timeline)

**Who:** Product Manager, Product Designer, Engineers, Software Engineers in Test

**What:**

✅ **Release** to a subset or full set of customers as appropriate

✅ **Assess** UX, functional, technical performance, and customer impact

✅ **Collect** data to measure MVC against success metrics to inform the next iteration

✅ **Iterate** until success metrics are achieved and the product experience is optimal

**Outcome:** Deliver performant MVCs that improve one or more of our [Product KPIs](/handbook/business-ops/data-team/kpi-index/#product-kpis) and/or [Engineering KPIs](/handbook/business-ops/data-team/kpi-index/#engineering-kpis). If it fails to do so,  honor our Efficiency value (that includes a low level of shame), abandon it, and restart the validation cycle to identify the right solution.

### Build phase 1: Plan

Label: `workflow::planning breakdown`

The build track starts with Product Manager (PM), User Experience (UX), Software Engineer in Test (SET), and Engineering Managers (EM) breaking down the opportunities into well-defined issues.

For user-facing deliverables, Product Designers work with Engineering to validate technical feasibility during the `workflow::design` phase, but it's equally important to validate feasibility for work that users don't see in the UI, such as APIs and other technical features. Communicate these solutions using artifacts such as API docs, workflow diagrams, etc. Involve your Engineering Managers in creating and reviewing these artifacts to gain a shared understanding of the solution and receive input on feasibility.

1. PM applies the `workflow::planning breakdown` label.
1. PM, UX, and EM do a final review of the designs to ensure everyone understands the solution.
1. PM, UX, and EM start breaking down the implementation into smaller issues; it is recommended that story mapping is used.
    - Story mapping is a recommended technique to do this in a rapid and collaborative fashion. The resulting issues should be written by PMs in user-story-style language whenever possible: "As a (who), I want (what), so I can (why/value)." Issues should not only be about feature details, but should also establish functional, performance, documentation, and security acceptance criteria. PM, UX, SET, and EM should evaluate customer impact of changes. In some cases, you need to update existing issues - if you were doing problem validation on an issue that already had a problem to solve/proposal in the issue (i.e., an older or customer-created issue), and you've come up with a new problem statement that isn't very close to the original, you should strongly consider opening a new issue for the new problem. Changing the problem statement in an issue almost always causes the discussion to become confused and may lose track of the original (potentially still valid for some users) problem statement.
1. Using the output of story mapping, PM creates separate epics and issues for implementation. Use the [feature proposal template](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/.gitlab/issue_templates/Feature%20proposal.md) as a guide for writing both epics and features. For issues requiring documentation changes/additions, add the `documentation` label and complete other relevant [PM documentation responsibilities](https://docs.gitlab.com/ee/development/documentation/workflow.html#product-managers). For issues requiring new or updated UI text, add the `UI text` label.
1. At this point, the original validation issue can be closed as further work labeling and activity will happen on the implementation issues.
1. PM should break the issue down into the smallest possible iteration definition that adds customer value. Check out [iteration strategies](#iteration-strategies) for help.
1. If sizing for it is large, or won't fit into a milestone, then PM + EM should collaborate to break it down further.
1. If PM + EM can't figure out an iteration definition that will fit within the sprint/milestone, then it is ok to push it to the next milestone to give the team more time to find an iteration definition that will fit.
1. SET owns the completion of the `Availability and Testing` section in the Feature Proposal to complete the definition of done. As we grow to reach our [desired ratio](/handbook/engineering/quality/#staffing-planning), we will only have the quad approach in groups where we have an assigned SET in place.
   1. SET will review issues marked with `workflow:ready for development` around the 16th of each milestone and apply the `quad-planning::ready` label. If necessary, SET will coordinate with PM/EM to discuss specific issues as needed.  
   1. SET is the DRI for the `Availability and Testing` section, ensuring that the strategy accounts for all test levels and facilitating discussions and feedback with the group.
   1. SET determines if the feature change needs to run `package-and-qa` regression job, this is made clear in the above section.
   1. If the SET has recommendations (e.g. running regression job, writing additional tests, etc.), the SET applies the `quad-planning::complete-action` label to the issue.  If no additional action needs to be taken, the SET applies the `quad-planning::complete-no-action` label to the issue.
   1. The SET unassigns themselves from the issue.
1. EM works with assignees to create a `Build Plan` that outlines the number of MRs and responsibilities for assigned team members. EM and PM provide a focus on [iteration](/handbook/product/#iteration) when reviewing these plans.
1. EM applies `workflow::scheduling` to allow for a buffered priority queue.
1. PM assigns them to a specific milestone/release. Follow the product development timeline when scheduling implementation issues into milestones. Note that engineering will apply the `workflow::ready for development` and `deliverable` labels during the next phase, in alignment with the PM.

### Build phase 2: Develop & Test

Labels: `workflow::ready for development`, `workflow::in dev` (along with `workflow::ready for review` as queue state while waiting for maintainer), `workflow::in review`, `workflow::blocked`, `workflow::verification` (sub-states for verification are `workflow::canary` and `workflow::staging`)

The develop and test phase is where we build the features and test them before launch:

1. Engineering teams move items into `workflow::ready for development` and apply the deliverable as they commit to them, in alignment with the PM.
1. PM works with engineering to ensure product instrumentation and dashboarding requirements are clear for implementation.
1. When the milestone arrives, engineering teams execute on the scheduled work. Acceptance criteria as set forth in the issues must be met before a feature is deemed complete.
1. Engineering team member(s) executing on the issue evaluates customer impact, confirming existing data against defined solution.
    - An example would be the introduction of new limits and their impact on existing customer data and workflows.
1. In parallel with development, the PM creates release post content, collaborating with Product Marketing Manager (PMM) on messaging and positioning
1. Work deemed out of scope or incomplete by engineering is taken back into the plan phase for refinement and rescheduling for completion. The label `workflow::planning breakdown` should be reapplied.
1. During the launch phase, the delivery team updates the validation labels as it flows through the validation process in staging and canary.
1. Engineering/quality performs testing to ensure the feature is working as it flows through the environments
1. PM should also conduct feature-level acceptance testing to ensure that the intended user value was, in fact, delivered.
1. Documentation should be complete and available before proceeding to the launch phase.

### Build phase 3: Launch

Labels: `workflow::production`

1. Once the feature is deployed to production, the delivery team sets the workflow label to `workflow::production`. At this point the feature is launched.
1. Engineering/quality/PM should validate again that the feature works for all users.
1. The release post item needs to be merged following the instructions in the [template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md), which will then cause it to appear on the [gitlab.com releases page](/releases/gitlab-com/).

If the feature is part of the [Dogfooding process](/handbook/product/product-processes/#dogfooding-process):

1. At this point, you should label the issue as `Dogfooding::Promote Feature`
1. You should present it in the weekly Product Call to get everyone on board
1. You could consider announcing it on the Company Call or in `#whats-happening-at-gitlab`
1. Your Section Lead should also be actively promoting the feature to other sections

### Build phase 4: Improve

Label: TBD

After launch, the Product Manager and Product Designer should pay close attention to product usage data. This starts by ensuring your [AMAU](https://about.gitlab.com/handbook/product/performance-indicators/#action-monthly-active-users-amau) is instrumented and reporting as you expect. From there consider how the feature has impacted [GMAU](https://about.gitlab.com/handbook/product/performance-indicators/#group-monthly-active-users-gmau) and [SMAU](https://about.gitlab.com/handbook/product/performance-indicators/#stage-monthly-active-users-smau). At this point you should also solicit customer feedback to guide follow-on iterative improvements, until success metrics are achieved/exceeded and a decision can be made that the product experience is sufficient. To create a combined and ongoing quantitative and qualitative feedback loop, the following activities are recommended:

| Outcomes|Activities|
|---|---|
| Understand Qualitative Feedback | - Continue [Dogfooding process](/handbook/product/product-processes/#dogfooding-process)<br>- Review user feedback in issues<br>- Follow up with TAMs and SALs to gather feedback from interested customers<br>- Setup follow-up calls with customers to gather more specific feedback<br>- Consider running a Category Maturity Scorecard evaluation <br>- Consider running a survey for usability |
| Measure Quantitative Impact     | - Update any applicable dashboards in Sisense, if necessary work with the data team for more complex reporting <br>- Review AMAU, GMAU, and SMAU dashboards to understand if the new feature or improvement has impacted core metrics<br>- Consider running a Category Maturity Scorecard evaluation                                                |
| Take Action on Learnings        | - Open new issues or revise existing issues for follow-on iterations and improvements<br>- Ensure you've captured feedback in issues or as updates to your direction pages<br>- If applicable, update your category maturity score and timeline<br>- Share learnings with your group and stage <br>- Consider sharing learnings with the broader team  <br>- Coordinate with your PMM to understand if there are any relevant GTM motions you should consider updating|

## Iteration Strategies
Here are several strategies for breaking features down into tiny changes that can be developed and released iteratively. This process will also help you critically evaluate if every facet of the design is actually necessary. 

### Workflow steps
As part of design and discovery, you likely created a minimal user journey that contains sequential steps a user is going to take to “use” the feature you are building. Each of these should be separated. You can further by asking yourself these questions:
* Can/is it desirable to perform this action via the UI or can we use a non-UI approach as a start (for example, CLI or API)? This is a great starting point before adding UI components that achieve the same thing.
* Will there be different UI paths to perform the same task? Identify which are the most useful and which are the easiest to implement. Weight both factors when determining which to start with, and build from there.

### User operations 
View, Create, Update, Remove and Delete are actions users take while interacting with software. These actions naturally provide lines along which you can split functionality into smaller features. By doing this, you prioritize the most important actions first. For example, users will likely need to be able to visually consume information before they can create, update, remove, or delete.

### Functional criteria
Often, the criteria by which a new feature needs to be built is implicit. It can help to approach this from a test-driven development mindset, meaning you write the tests and the outcomes you need from the software before building the software. Writing these tests can uncover the different criteria you need the development team to meet when building the new feature. Once you’ve outlined these tests, you may be able to use them to continue to break down the feature into smaller parts for each test. Here are a few examples:
* What is the default behavior when there is no data (empty/null state).
* Are there automatic actions or events that occur as part of your feature? Write them down, and identify those that can be done manually by the user before adding automation.
* Will users of different roles have unique experiences? Can you prioritize and build one of these experiences first? (for example: guest, user, developer, maintainer)
* Do users want to be able to customize their view of information? Define all of the customizations you want to offer, and build them one at a time (for example, toggle on/off, filter, sort, search).

### Exception & error cases
Software often fails and can fail in different ways depending upon how it is architected. It is always best to provide the user with as much information as possible as to why something did not behave as expected. Creating and building different states to handle all possible errors and exceptions can easily be broken down into individual issues. Start by creating a generic error state to display when anything goes wrong, and then add on to handle different cases one by one. Remember to always make error messages [useful](https://design.gitlab.com/content/error-messages), and add additional error messages as you identify new error states.

### Customer Impact

When creating net new features research efforts are intended to provide GitLab with the best opportunity to deliver customer value while considering business needs, performance expectations, timelines, and other considerations. When delivering new features that interact with exisiting customer data and workflows, care must be taken to evaluate impact throughout the product development process.

### Breaking down the UI
Breaking down a design into pieces that can be released iteratively is going to depend on what you are building. Here are a few helpful questions to guide that process:
* What components already exist that you can reuse to go faster?
* What constitutes “extra styling”? Is there a way to display the information you need to display plainly and then add details later?
* Do you have lots of interactions in the design that make the UX lovable? Can you pull those out into separate issues and add them iteratively? (e.g. hover states, drag & drop, toggles, options to show/hide info, collapse/expand, etc)

### Refactors
Continuously improving the software we write is important. If we don't proactively work through [technical debt](/handbook/engineering/workflow/#technical-debt) and [ux debt](/handbook/engineering/workflow/#ux-debt) as we progress, we will end up spending more time and moving slower in the long run. However, it is important to strike the right balance between technical and ux debt and iteratively developing features. Here are some questions to consider:
* What is the impact if we do not refactor this code right now?
* Can we refactor some of it? Is a full re-write necessary?
* Why do we need to use that new technology? (You may need to ask WHY multiple times to get to the root of the problem)

### Considerations
Consider the following to improve iteration:
* Successfully iterating should mean you're delivering value in the most efficient way possible. Sometimes, this can mean fixing an underlying technical issue prior to delivering a customer facing feature.
* Wherever possible, consider reuse of components that already exist in the product. A great example of this was our approach to creating our Jira importer, which reused the Jira service integration. Reuse also aligns well with our efficiency value.
* Avoid technical dependencies across teams, if possible. This will increase the coordination cost of shipping and lead to a slow down in iteration. Break down silos if you notice them and consider implementing whatever you need yourself.
* Consider a quick POC that can be enabled for small portion of our user base, especially on GitLab.com. An example of this was search, where it was originally enabled just for a few groups to start, then slowly rolled out.
* Great collaboration leads to great iteration. Amazing MVCs are rarely created simply by product managers, they often arise out of collaboration and discussion between product, engineering, design, quality, etc.

## Editing this page

All substantive merge requests to this page require cross-functional alignment prior to merging. To make updates such as grammatical 
fixes and typos, you can create an MR and tag in the [Product Operations DRI](https://about.gitlab.com/company/team/#fseifoddini)
for reference. There is no need to wait for feedback on these types of updates. 

For updates that affect the overall phases by modifying core definitions, workflow labels or other cross-functionally utilized processes, 
you can create an issue or MR and assign it to the [Product Operations DRI](https://about.gitlab.com/company/team/#fseifoddini) for collaboration and iteration. 
The Product Operations DRI will make sure alignment happens with the following stakeholders:

1. [EVP of Product](https://about.gitlab.com/company/team/#sfwgitlab)
1. [VP of Product Management](https://about.gitlab.com/company/team/#adawar)
1. [VP of UX](https://about.gitlab.com/company/team/#clenneville)
1. [VP of Development](https://about.gitlab.com/company/team/#clefelhocz1)
1. [Director of Quality Engineering](https://about.gitlab.com/company/team/#meks)
1. [Product Leadership Team](https://about.gitlab.com/handbook/product/product-leadership/#product-leadership-team-structure)
