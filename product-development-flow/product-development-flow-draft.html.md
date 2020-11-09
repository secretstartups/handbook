---
layout: handbook-page-toc
title: Product Development Flow
---

{::options parse_block_html="true" /}

<div class="panel panel-gitlab-orange">

**Product Development Flow Draft**
{: .panel-heading}

<div class="panel-body">

This is the draft version of the Product Development Flow. All changes to this document will be merged into `product-development-flow/index.html.md`[Handbook link](https://about.gitlab.com/handbook/product-development-flow/) by the 17th of each month* and announced (including a list of changes) via a release post if larger changes are included. Please see the [Product Development Timeline](https://about.gitlab.com/handbook/engineering/workflow/#product-development-timeline)

</div>
</div>

|              |             |              |              |
|--------------|-------------|--------------|--------------| 
| Version      | Change   | Milestone |Release Date
| 1.0 | Introduce new structure and core content | 13.5 | 2020-10-22 |
| 1.1 | Introduce visuals and optimize supporting resources | 13.6 | 2020-11-22 |

*Version 1.0 will stay on draft page for dogfooding. Version 1.1 will be the first push to `product-development-flow/index.html.md`


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

This page is an evolving description of how we expect our cross-functional development teams to work and reflects the current process being used. All required steps in this development flow are denoted as follows:

<kbd class="required">Required 🔎</kbd>

> Required aspect of the product development workflow. 

Feature development is expected to pass through all required phases, while the rest of the development flow should be considered a set of best practices and tools to aid with completing these phases. 

The goal is to have this page be the single source of truth, but it will take time to eliminate duplication elsewhere in the handbook; in the meantime, where there are conflicts this page takes precedence. 

Because this page needs to be concise and consistent, please ensure to follow the prescribed [change process](#editing-this-page).

## But Wait, Isn't This Waterfall? 

No. Although the phases below appear to be independent and linear, they're not. They are presented as such on the page for simplicity and ease of navigation. It is common to iterate through the Validation phases multiple times before moving to Build. Once in the Build phases, it may be necessary to go back to Validation phases as roadblocks or technical challenges arise. 

## Workflow Summary
<kbd class="required">Required 🔎</kbd>

> Workflow labels must be applied for each phase that is used to enable tracking and collaboration across teams. 

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
| `workflow::In dev` | [Build](#build-track) | Engineering | Initial engineering work is complete and review process has started | Engineering |
| `workflow::In review` | [Build](#build-track) | Engineering | MR(s) are merged | Engineering |
| `workflow::verification` | [Build](#build-track) | Engineering | Work is demonstrable on production | Engineering |
| `workflow::blocked` | N/A | Product/Engineering | Work is no longer blocked | Engineering |

### Issue descriptions as the SSOT
<kbd class="required">Required 🔎</kbd>

> Issue descriptions shall always be maintained as the single source of truth. 
 

It's not [efficient](/handbook/values/#efficiency) for contributors to need to read through every comment in an issue to understand the current state.

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

### Validation phase 1: Validation backlog

<kbd class="required">Required 🔎</kbd> Label: `workflow::validation backlog`

#### Key Participants

| Role           | Function                                       |
|----------------|------------------------------------------------|
| DRI:           | - Product Manager                              |
| Collaborators: | - Product Designer <br> - Engineering Manager  |
| Informed:      | - Customers <br> - Internal stakeholders - TBD |

#### Description

The health of a world class product begins with a well maintained backlog. Product Managers are responsible for refining a groups backlog to ensure validation opportunities are scoped and prioritized in line with category direction and stage or section level strategy. The backlog is also the SSoT for stakeholders to understand and engage with your group. An issue or Epic's position in the backlog, along with the description, discussion and metadata on those issues are key pieces of data necessary to keep stakeholders up to date. 

#### Outcomes and Activities

| Outcomes|Activities|DRI|
|---|---|---|
| Up to date issues and epics | - review issue discussions and update relevant info in the description <br> - keep related metadata (labels, etc) up to date <br> - actively respond to stakeholder comments <br> - transfer discussion notes, and external information to the issue (as links or discussion/description details) | Product Manager |
| Prioritized backlog | - regular review of issue prioritization (issue board ordering, milestone assignment) <br> - align prioritized backlog to category direction and category maturity state | Product Manager |

#### Required Outcomes

<kbd class="required">Required 🔎</kbd>

**Up to date issues and epics** - At GitLab, issues are the single source of truth for any change to the product. Issues are created in response to a [sensing mechanism](/handbook/product/product-processes/#sensing-mechanisms). Consider using the _Problem Validation_ issue template for new features. If an issue already exists, keep its description and metadata up to date based on inputs both in the issue (comment threads) and external to the issue (including synchronous discussions and research output).

**Prioritized backlog** - The issue and epic backlog is the primary signal stakeholders use to know what's "up next" for a group. The backlog is also the queue for a group to work from, as features progress through the Product Development Flow phases. This queue is kept up to date with milestones and rank ordering on issue boards. Consider using the [RICE formula](https://www.productplan.com/glossary/rice-scoring-model/) to help make prioritization tradeoffs.  

### Validation phase 2: Problem validation

<kbd class="required">Required 🔎</kbd> Label: `workflow::problem validation`

#### Key Participants

| Role |Function|
|---|---|
| DRI: | - Product Manager |
| Collaborators: | - Product Designer <br>- UX Researcher |
| Informed: | - Engineering Team <br>- Stakeholders - TBD <br>- Leadership - TBD |


#### Description

In order to ensure the right solutions are delivered, the team must start their work with a validated problem. This can take many forms and be achieved through Product Manager, Product Designer, and UX Researcher collaboration. 

If the problem is small and well-understood, it may be possible to quickly move through this phase by documenting the known data about the user problem.  

If the problem is nuanced, then it will likely take longer to validate with users properly. This phase's primary outcome is a clear understanding of the problem, along with a simple and clear way to communicate the problem to various stakeholders. 

#### Outcomes and Activities

| Outcomes|Activities|DRI|
|---|---|---|
| Thorough understanding of the problem  | - Create new issue using the [Problem Validation Template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/Problem%20Validation.md)<br>- Complete an [Opportunity Canvas](/handbook/product/opportunity-canvas/)<br>- Open a [Problem Validation Research](https://gitlab.com/gitlab-org/ux-research/) issue and work with UX Researcher to execute the research study<br>- Schedule a review of the opportunity canvas for feedback<br>| Product Manager |
| Communicate the problem clearly and effectively | - Ensure your issue is up to date with the latest understanding of the problem. <br> - Understand and document (in the issue) the goals that people want to accomplish using the [Jobs to be Done (JTBD)](/handbook/engineering/ux/jobs-to-be-done/) framework. <br> - Leverage your opportunity canvas to communicate the problem to your stable counterparts and group stakeholders. Consider scheduling a review to gather feedback and communicate the findings to Product and UX leadership. | Product Manager |

#### Required Outcomes

<kbd class="required">Required 🔎</kbd>

**Update issue/epic description** - a well understood and clearly articulated customer problem is added to the issue, and will lead to successful and efficient design and development phases.

### Validation phase 3: Design

<kbd class="required">Required 🔎</kbd> Labels: `workflow::design`

#### Key Participants

| Role |Function|
|---|---|
| DRI | - Product Designer |
| Collaborators |  - Product Manager <br> - Engineering team <br> - UX Researcher <br> - Quality Engineering <br> - Tech Writer|
| Informed | TBD |

#### Description

After understanding and validating the problem, we can begin/continue to ideate potential solutions through a [diverge/converge](http://web.stanford.edu/~rldavis/educ236/readings/doet/text/ch06_excerpt.html) process. 

The Product Designer leads the team (Product Manager, Engineering, UX Researcher, Quality Engineering, and Tech Writers, as needed, depending on the item) in ideating potential solutions and exploring different approaches (diverge) before converging on a single solution. Product Managers and Engineers evaluate solutions by determining if they meet customer and business goals, and are technically feasible. The team is encouraged to engage with stakeholders to determine potential flaws, missed use cases, and if the solution has the intended customer impact. After the team converges on the proposed solution or identifies a small set of options to validate, the issue moves into the Solution Validation phase.  

To start the Design phase, the Product Designer or Product Manager applies the `workflow::design` label to an existing issue or, if needed, creates a new issue with this label.

#### Outcomes and Activities

| Outcomes|Activities|DRI|
|---|---|---|
| Proposed solution(s) identified and documented | - Diverge: explore multiple different approaches as a team.<br> - Converge: identify a small set of options to validate. <br> - Update issue/epic description with proposed solution. <br> - Validate approach with help from stakeholders. <br> - Map user flow and experience. <br> - Draw inspiration from competitive and adjacent offerings. | Product Designer | 
| Shared understanding in the team of the proposed solution | - Review the proposed solution as a team. <br> - Review with leadership. <br> - [Think Big](/handbook/engineering/ux/thinkbig/) session.| Product Designer | 
| Confidence in the technical feasibility | - Discuss the technical implications with Engineering to ensure that what is being proposed is possible within the desired timeframe. | Product Designer |  
| Issues updated | - Make sure that issues and epics are up-to-date so we can continue our work efficiently and asynchronously | Product Manager | 


#### Required Outcomes 
<kbd class="required">Required 🔎</kbd>

- **Proposed solution(s) identified and documented** - Through various activities the Product Designer works with the Product Manager and Engineering team to explore solutions and identifies the approach(es) that strike the best balance of user experience, customer value, business value, and development cost. <br> 
- **Shared understanding in the team of the proposed solution** - The Product Designer leads the broader team through a review of the proposed solution(s) to ensure that everyone has a chance to contribute, ask questions, raise concerns, and suggest alternatives. <br> 
- **Updated issues/epic descriptions** - The Product Manager and Product Designer make sure that issues and epics are up-to-date with designs and specifics on the implementation so we can continue our work efficiently and asynchronously. <br>
- **Confidence in the technical feasibility** - It is important that Engineering understands the technical feasibility of the solution(s) in order to avoid rework or significant changes when we start the build phase. 

### Validation phase 4: Solution Validation

<kbd class="required">Required 🔎</kbd> Label: <code>workflow::solution validation</code>

#### Key Participants

| Role          | Function                     |
| ---           | ---                          |
| DRI           | - Product Designer             |
| Collaborators | - Product Manager <br>- Engineering |
| Informed      |  - Technical Writing <br>- Quality |

#### Description

After identifying one more potential solutions that meet business needs and are technically feasible, the Product Manager and Product Designer must ensure that we have confidence that the proposed solution will meet the user's needs and expectations. This confidence can be obtained from work performed during the design phase and supplemented with additional research (including user interviews, usability testing, or solution validation). If necessary, this phase will launch a Solution Validation issue within the [GitLab UX Research project](https://gitlab.com/gitlab-org/ux-research) which will walk the team through research to validate their proposed solution(s).

To start the Solution Validation phase, the Product Designer or Product Manager applies the `workflow::solution validation` label to an existing issue.

#### Outcomes and Activities

| 🔎Outcomes | Activities | DRI |
| ---| --- | --- |
| High confidence in the proposed solution | - Interview customers. <br> - Interview the issue originator. <br> - Perform usability testing. <br> - Perform the [Solution Validation Process](/handbook/engineering/ux/ux-research/#solution-validation-1). | Product Designer |
| Solution validation documentation | - Document solution validation findings as [insights in Dovetail](/handbook/engineering/ux/ux-research-training/documenting-research-findings/). <br> - Update the opportunity canvas with the insights. <br> - Update issue or epic description to contain the findings.| Product Designer |

#### Required Outcomes
<kbd class="required">Required 🔎</kbd>

**High confidence in the proposed solution** - activities have been performed which demonstrate the jobs to be done outlined within the problem statement can be fulfilled by the proposed solution.

**Solution validation documentation** - The documentation regarding the validation of the proposed solution has been collected in the appropriate places, and included at an appropriate level within the issue / epic description to maintain a single source of truth.


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

<kbd class="required">Required 🔎</kbd>

> TBD
 

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

Labels: `workflow::ready for development`, `workflow::In dev` (along with `workflow::ready for review` as queue state while waiting for maintainer), `workflow::In review`, `workflow::blocked`, `workflow::verification` (sub-states for verification are `workflow::canary` and `workflow::staging`)

<kbd class="required">Required 🔎</kbd>

> TBD 

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

<kbd class="required">Required 🔎</kbd>

> TBD 

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

<kbd class="required">Required 🔎</kbd>

> TBD 

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
