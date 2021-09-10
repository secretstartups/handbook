---
layout: markdown_page
title: "Evolution Workflow"
---

As engineers at GitLab, we lead the **evolution** of software, constantly working to find the right balance between proactive work, reactive work, preventive work, and innovation. We strive to determine what work is important and what work is not, leveraging knowledge from those that know the most about GitLab, and empowering people to work on things that make everyone more productive. Experimenting and innovating are core to how we work, and **we focus on collaboration, results and iteration** to achieve our goals.

With growth, however, comes complexity. An organic approach to our work sometimes requires help to ensure we are most effective. Help may be in the form of validating our technical approaches, ensuring organizational alignment across teams and departments, and driving priorities to key decision makers. **Technical Engineering Leaders take on the task of helping engineers through these challenges**. The **Architecture Evolution Workflow** is intended to provide influence amplification to drive the solution of complex problems both technically and organizationally.

## Workflow: TL;DR

**As an engineer, you and your manager determine whether to invoke the Architecture Evolution Workflow**. When in doubt, **do not hesitate to reach out to an Architecture Evolution Coach** for input.

Most (if not all) work begins with an issue or epic (which we will generally refer to as a **domain issue** in this document) in a project as part of you regular workflow. These are everyday issues and epics created in their relevant projects. Engineers and managers use a domain issue to scope problems and possibly outline solutions. If the domain issue uncovers significant complexity (in terms of the problem domain itself or the organizational involvement required to solve it), engineers and managers may decide to invoke the Architecture Evolution Workflow to enlist help from technical Engineering Leaders and other relevant experts.

1. Determine with your manager whether to invoke the workflow.
1. Open an **architecture issue** in [architecture/tasks](https://gitlab.com/gitlab-org/architecture/tasks) project, which tracks progress of the workflow itself.
   1. Add a sensible title, and a brief summary and a link to the domain issue in the description.
   1. Proposal DRIs: assign the architecture issue to yourself, your manager, and an Architecture Evolution Coach (AEC); as we make progress and identify a management Engineering Leader, this individual will replace your manager as a DRI.
1. Open an **architecture blueprint [merge request](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/)**
   1. The merge request should briefly describe the proposal in the [architecture blueprints directory](https://gitlab.com/gitlab-org/gitlab/-/tree/master/doc/architecture/blueprints)
   1. Add a sensible title and a link to the architecture issue in the description.
   1. Collaborate with AEC to find appropriate Domain Experts and Functional Experts (Security, QA and Infrastructure) that should be involved and @-mentioned in the blueprint merge request
   1. Collaborate with AEC to find relevant Product Management DRI if applicable and @-mention them in the blueprint merge request
   1. Post on [`#architecture` channel on Slack](https://gitlab.slack.com/archives/CJ4DB7517)
1. The AEC will help with scoping, roadmap placement, and organizational amplification by:
   1. Evaluating and updating roadmaps as necessary
   1. Engaging with the appropriate management Engineering Leader who will ultimately make priority and staffing decisions
   1. Engage Product Management if no PM DRI was initially identified
   1. Engaging with the Technical Writing team.
1. The **result** of an architecture issue an **Architecture Blueprint**. This result:
   1. Entails a MR against the `doc/architecture/blueprints` directory in GitLab project and its corresponding discussion
   1. Outlines the scope of the problem, its solution, and the expected needs to solve the problem long-term
   1. When ready, the MR is assigned to the Engineering Leader that will make the appropriate decisions for merging

### Getting things done

At this point, problem scope (domain and organizational) is known and documented, as are stakeholders. The Architecture Evolution Workflow is complete. From this point on, we're focused on execution: the management Engineering Leader will assign new DRIs, who will take full control of the work and drive towards results. The AEC will continue to be engaged as you deem necessary to help in any way possible.

1. Three (3) [Directly Responsible Individuals (DRIs)](/handbook/people-group/directly-responsible-individuals/) are assigned and collaborate together to get the work done.
1. A [Working Group](/company/team/structure/working-groups/) may be created if DRIs determine it is useful and/or necessary.
1. DRIs propagate the architecture blueprint across sub-departments and ensure that work gets scheduled.
1. Teams schedule their work based on their interpretation of the strategy described in the document.
1. DRIs described in the blueprint are the decision makers for the approach taken.
1. After the initial iterations, work can be concluded or expanded (in which case, the blueprint is updated).

## Workflow: The Detailed View

### Proposing changes

Anyone can propose a change they believe we should work on, which can happen on a **domain issue** or epic. When these changes turn out to be too intricate for a single individual contributor to handle (complex backstage improvements, architectural changes, productivity or efficiency improvements), or they span multiple teams, it may be necessary to invoke the Architecture Evolution Workflow, as the change may not be something directly actionable. The issue author may loop an Architecture Evolution Coach, and through the workflow, we ensure that we engage the right DRIs, domain experts, stakeholders, and decision makers.

Collaboration ensures that only proposals that are achievable get described in a blueprint merge request. This fosters knowledge sharing and avoids the cost of iterating on the product architecture improperly.

### Outcomes

The primary outcome of the workflow is a **blueprint** published on `docs.gitlab.com`.

### Amplifying your influence

![influence](/handbook/engineering/architecture/workflow/influence.png)

For any given proposal, the following people should be involved:

* An Architecture Evolution Coach (e.g., a Distinguished Engineer), who is filtering, shepherding, disseminating proposals across the organization
* A Management Engineering Leader (e.g., a Director of Engineering), who is a decision-maker for a given proposal in terms of staffing and deliverables
* One or more Domain Experts (e.g., Senior Backend Engineers), who lend their expertise on a given domain to solve a problem

During the process of working on the proposal, the author collaborates with an Architecture Evolution Coach and, optionally, one or more Domain Experts to create a blueprint of the change. The blueprint merge request will be then either approved or rejected by the appropriate management Engineering Leader.

In order to choose the right stakeholders, the author and their manager will first need to understand what is the scope of their proposal, what departments and teams will need to help to get the work done and how important it is for the organization.

The first step is to find a management Engineering Leader that will be responsible for approving the proposal and adding the blueprint to the architecture roadmap. The management Engineering Leader needs to be someone who works on an [appropriate level in the organization](https://comp-calculator.gitlab.net/org_chart) to carry on the vision described in the proposal. For example, changes that involve only one team can be approved by an Engineering Manager; when multiple teams within a one section are involved, a Director of Engineering. Changes that span more than one department might require approval from the Executive VP.

Domain Experts are people with deep skills on the topic at hand, and they can work anywhere in the organization (it can even be the author themself). Functional Experts get involved to ensure we have input and functional domain expertise available (from, for instance, Infrastructure, Security or QA).

All these people are here to amplify the influence of the author of the proposal in an environment that fosters creativity and knowledge sharing.

Once the blueprint of the proposal gets approved, DRIs will be assigned to carry on the vision and coordinate work required to get it done.

### Roles

There are three role types associated with the Architecture Evolution Workflow and the generation of a blueprint:

1. DRIs (Directory Responsible Individuals)
2. DEEs (Domain Expert Engineers)
3. FEEs (Functional Expert Engineers)

#### DRIs

##### The Author

As the original author of a proposal, you are the primary DRI.

##### The Architecture Evolution Coach

Architecture Evolution Coaching is an expertise assigned to team members, visible on their profiles on [the team page](/company/team/). All Engineering Fellows and Distinguished Engineers are Architecture Evolution Coaches by default.

The purpose of involving a coach in the process of creating a blueprint is to allow people that know most about GitLab to share their knowledge and perspective on introducing complex architectural changes, help navigate organizational, ensure the proposal is aligned with our roadmap, and help management Engineering Leaders prioritize the work.

##### The Engineering Management Leader

The AEC will help you identify the right management Engineering Leader to evaluate the proposal. Managers are key decision-makers, and, ultimately, will determine how to include your proposal in the stream of work that is always in-flight. This entails prioritizing and staffing to execute the work at the appropriate time.

#### Domain Experts

[Domain Experts](https://docs.gitlab.com/ee/development/code_review.html#domain-experts) are engineers with a deep understanding of one or more particular areas. Domain Experts:

1. Help to ensure conceptual integrity of the features and changes their groups / stages / sections are working on
1. Help to collaborate with EMs and PMs and other Engineers to ensure the quality of work done in their area of interest
1. Help to help to plan and draft necessary architectural and conceptual changes that will become a leverage in their area of interest

A Domain Expert is an engineer, usually an individual contributor, who knows most about specific aspects of the codebase and a domain in the area of proposed changes, but might still lack the deep understanding of the process behind introducing complex architectural changes, hence the collaboration between a Domain Expert and an Architecture Evolution Coach might be very useful.

Sometimes there is an Architecture Evolution Coach available who is also a Domain Expert in a particular area. In that case there is no need to involve another person.

#### Functional Experts

Functional Experts are engineers with deep knowledge across specific functional areas, which include Security, QA, and Infrastructure. You should always involve these functional experts during the generation of blueprint so that we generate awareness early in the cycle and so that they can provide appropriate input into the blueprint.

##### Security

The Security Expert is an engineer, usually an Individual Contributor, who is part of the [Security Engineering and Research](/handbook/engineering/security/#secure-the-product---the-product-security-sub-department) sub-department, and can evaluate the impact of the blueprint on our security posture and perimeter. It is important to assess and identify risk as early as possible, as workarounds to security design issues can lead to a lot of expensive changes. The Security Expert evaluates edge-cases and prevents later corrective actions. They can also specify some boundaries (example: list of allowed protocols) without modifying the design of the blueprint itself.

@-mention `@gitlab-com/gl-security/appsec` so that a specific Security Functional Expert DRI is assigned to the blueprint.

##### Quality Assurance

The QA expert is...

@-mention `@gl-quality/managers ` so that a specific QA Functional Expert DRI is assigned to the blueprint.

##### Infrastructure

The Infrastructure Expert is an engineer from Infrastructure's Reliability sub-department and can evaluate the impact of the blueprint on our reliability and availability posture. It is important to identify reliability aspects associated with the blueprint early, as workarounds to address availability, scalability and performance issues can be expensive, and directly affects GitLab.com's availability.

@-mention `@gitlab-com/gl-infra/managers` so that a specific Infrastructure Functional Expert DRI is assigned to the blueprint.

### Blueprint merge request

A blueprint merge request is a description of [Why, How and What](https://en.wikipedia.org/wiki/Start_With_Why) of the change that has been proposed in the issue.

* Why - what is the motive and purpose, what is the problem are we trying to solve
* How - how are we going to achieve that (1-year forecast)
* What - what is the outcome, how can we measure it

Blueprints are mostly written by engineers, but their content should not be deeply technical. The audience are Product Team Members, management Engineering Leaders and the wider community. A blueprint should describe a clear vision that is easy to understand: use simple diagrams, and avoid technical jargon overload. Technical details will be fleshed out in subsequent epics and issues associated with a blueprint once we enter the execution phase.

A blueprint merge request gets created and made visible as a result of collaboration between an Architecture Evolution Coach, a Domain Expert and a person who had an idea. The author and coaches also need to be mentioned in the blueprint.

It describes the goal of the change and usually a 1-year forecast of how to make it happen.

Blueprints are created in [`doc/architecture/blueprints`](https://gitlab.com/gitlab-org/gitlab/-/tree/master/doc/architecture/blueprints) directory in GitLab Rails project. Eventually these are going to be published on [GitLab Architecture Docs](https://docs.gitlab.com/architecture/blueprints) too.

### Describing iterations

Blueprints address complex cases, and they take a long-term view of the problem. Blueprints need to forecast iterations over a 3 to 6 month horizon. The result of this collaboration could be a description of three first iterations that can be done in a one milestone each. These iterations need to be [two-way-door](/handbook/values/#make-two-way-door-decisions) solutions with a measurable impact. Blueprints that cannot identify at least two well-defined, high-level iterations should not be approved.

Once the iterations are described, the blueprint needs to be approved by a management Engineering Leader.

### Getting the blueprint approved

The blueprint merge request needs to be approved by the management Engineering Leader who has been chosen as the final decision maker. Once the blueprint is ready, the author assigns it to an management Engineering Leader for approval. The choice of leader depends on the extent of proposed changes, the area that the changes apply to, and the estimated cost of the change. The [Organization structure chart](/company/team/structure/) can be may be useful in determining the right DRIs.

The Engineering Leader can either approve and merge the merge request or reject the change.

### Finding DRIs to deliver on the blueprint

Once the blueprint is approved, the management Engineering Leader who approved the proposal collaborates with people involved to find DRIs who will be responsible for delivery of results and decisions makes from now on.

The blueprint needs three people that will become DRIs:

1. An Engineering Leader (for example - Director of Engineering)
1. A Product Lead (for example - Senior Product Manager)
1. A Domain Expert (for example - Senior Backend Engineer)

The Engineering Leader who approved the proposal can become an Engineer Leader DRI, but they can also delegate this to someone else. It is important to choose people taking their area of interest and responsibility into account and the "How" description that depends on where the proposed change needs to happen, who knows the most about particular area of the product, service, and codebase.

Then DRIs will propagate the blueprint downstream, to respective teams that will need to be involved, and these teams will schedule the work based on their interpretation of 1-year forecast and proposed iterations that will happen in the next 3 months. If a Working Groups gets formed the list of DRIs can be extended according to the process of how Working Groups organize efforts around the work.

### Getting things done

DRIs can decide to form a [Working Group](/company/team/structure/working-groups/) to structure the efforts related to the architecture change. Key considerations in deciding to form a Working Group are the size, complexity, and organizational impact of the change.

The concept of a Working Groups can be an extension of the Architecture Evolution Workflow, but if it is not applicable in a particular case, a different process can be followed, like the suggested one that is described below.

1. A bi-weekly call should be scheduled to coordinate the work with all people involved,
1. Teams assigned will allocate resources for the work that needs to be done,
1. Domain Experts working on the teams will prepare their interpretations the blueprint and first iterations,
1. The work will be split into smaller issues and people interested in taking ownership of these issues will be assigned,
1. Product Lead DRI will coordinate the work with Product Managers in respective Teams,
1. A management Engineering Leader DRI will coordinate the work with Engineering Managers responsible for respective teams,
1. Domain Experts and individual engineers will be invited to the bi-weekly sync meeting.

### What happens next

After the iterations described in the blueprint are done, the work can be extended to the next three iterations and the blueprint needs to be updated.

Alternatively the work can be concluded and the blueprint needs to be updated with results / outcomes.
