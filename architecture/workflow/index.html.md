---
layout: markdown_page
title: "Architecture Evolution at GitLab"
---

## GitLab Architecture

Software professionals have come up with a lot of great metaphors about what
software actually is. Some people believe that software is like a castle that
needs constant maintenance, others think about software as a garden that needs
care and careful cultivation.

At GitLab we believe that software might be more complex than that, and that
software is more [similar to
life](https://en.wikipedia.org/wiki/Entropy_and_life) itself.

Because of that it needs to adapt and evolve, usually through iteration.

### Evolutionary Architecture

As software products grow, become more complex, and get more widely used,
things that were working well on a small scale, might not be sufficient on a
much bigger scale.

1. We allow engineers to lead the evolution of the software.
1. We have a process that helps us make architectural changes a success.
1. We have a way to determine what work is important and what is not.
1. We constantly work on finding a balance between reactive work, preventive work, and innovation.
1. We know how to leverage knowledge of people that know most about GitLab.
1. We empower people to work on things that prevent a variety of problems from happening.
1. We empower people to work on things that are a leverage and make everyone else more productive.
1. We allow people to experiment and innovate while being efficient and using their time wisely.
1. We have a process that makes it possible to allocate resources and hold people accountable.
1. We have a process that ensures we can get things done.

### GitLab Architecture Evolution Workflow

TL;DR:

1. Anyone can open an issue with a change proposal and label it with `~"Architecture decision"`,
1. The author collaborates with their manager to understand better the scope of the change,
1. Based on the scope of the proposal, the author and their manager collaborate together to find an
   Engineering Leader who will be a decision maker that will either approve or reject the proposal,
1. The author and their manager find an Architecture Evolution Coach on the [team page](/company/team/),
   someone who works on the level close to the Engineering Leader who is going to be the decision maker,
1. Optionally the author and their manager collaborate to find a Domain Expert if help from one would be useful,
1. The author collaborates with the architecture evolution coach and a domain expert to create a
   blueprint merge request adding files to `doc/architecture/blueprints` directory in GitLab project,
1. In the RFC-like style they get more people involved into the discussion to collect more feedback,
1. The blueprint describes long-term vision and a few first iterations in simple words,
1. When the blueprint merge request is clear enough, the author assigns an Engineering Leader to review it,
1. The blueprint gets approved once the merge request is merged by the Engineering Leader,
1. The author adds a link to the blueprint located on docs.gitlab.com to an active
   [architecture roadmap document](/handbook/engineering/architecture/#architecture-roadmap),
1. 3 [Directly Responsible Individuals
   (DRIs)](/handbook/people-group/directly-responsible-individuals/) get assigned and collaborate together to get the work done,
1. A [Working Group](/company/team/structure/working-groups/) can be formed if needed, but is not required,
1. DRIs propagate the blueprint across sub-departments and ensure that work gets scheduled,
1. Teams schedule their work based on their interpretation of the strategy described in the document,
1. DRIs described in the blueprint are the decision makers for the approach taken,
1. After the initial iterations, work can be concluded or expanded, the blueprint gets updated.

### Finding people that will amplify your influence

![influence](/handbook/engineering/architecture/workflow/influence.png)

The author of a proposal and their Engineering Manager collaborate together to
find people that will be amplifiers of their influence:

* An Engineering Leader (for example - a Director of Engineering)
* An Architecture Evolution Coach (for example - a Distinguished Engineer)
* A Domain Expert (for example - a Senior Backend Engineer)

During the process of working on the proposal, the author will collaborate with
an Architecture Evolution Coach and, optionally, a Domain Expert to create a
blueprint of the change. The blueprint merge request will be then either approved or
rejected by an Engineering Leader.

In order to choose the right people, the author and their manager first need to
understand what is the scope of their proposal, what departments and teams will
need to help to get the work done and how important it is for the organization.

The first step is to find an Engineering Leader that will be responsible for
approving the proposal and adding the blueprint to the architecture roadmap.
The Engineering Leader needs to be someone who works on [an appropriate level
in the organization](/company/team/org-chart/) to carry on the vision described
in the proposal. For example, changes that involve only one team can be
approved by an Engineering Manager, multiple teams within a one section - a
Director of Engineering, but changes that span more than one department might
require approval from a Executive VP or CEO.

Understanding who is the decision maker will make it easier to find an
Architecture Evolution Coach because the best Architecture Evolution Coach will
be someone who works on the level that is closest to the level of the
Engineering Leader who is the decision maker (see the diagram above).

Domain Expert is someone who knows most about the topic and this person can
work on any level in the organization, it even can be the author themself.

Once the blueprint of the proposal gets approved, DRIs will be assigned to
carry on the vision and coordinate work required to get it done.

All these people are here to amplify the influence of the author of the
proposal in an environment that fosters creativity and knowledge sharing.

### Role of an Architecture Evolution Coach

Architecture Evolution Coach is an expertise assigned to team members, visible
on their profiles on [the team page](/company/team/).

All Engineering Fellows and Distinguished Engineers are Architecture Evolution
Coaches by default.

The purpose of involving a coach in the process of creating a blueprint is to
allow people that know most about GitLab to share their knowledge and
perspective on introducing complex architectural changes. This makes it easier
to avoid the cost of working on the wrong thing, iterating improperly and
fosters knowledge sharing.

### Role of a Domain Expert

[Domain Expert Engineer](
https://docs.gitlab.com/ee/development/code_review.html#domain-experts) is an
engineering role at GitLab held by team members that are engineers with a deep
experience in a particular area.

1. Domain Experts help to ensure conceptual integrity of the features and
   changes their groups / stages / sections are working on,
1. Domain Experts help to collaborate with EMs and PMs and other Engineers to
   ensure the quality of work done in their area of interest,
1. Domain Experts help to help to plan and draft necessary architectural and
   conceptual changes that will become a leverage in their area of interest.

A Domain Expert is an engineer, usually an Individual Contributor, who knows
most about a codebase and a domain in the area of proposed changes, but might
still lack the deep understanding of the process behind introducing complex
architectural changes, hence the collaboration between a Domain Expert and an
Architecture Evolution Coach might be very useful.

Sometimes there is an Architecture Evolution Coach available who is also a
Domain Expert in a particular area. In that case there is no need to involve
another person.

### Proposing changes

Anyone can open an issue about a change they believe we should work on.

It can be a complex backstage improvement, an architectural change, a
productivity improvement, or an efficiency improvement. It can be anything else
that is too complex for a single individual contributor to handle.

Although we usually prefer [starting with a merge
requests](/handbook/communication/#everything-starts-with-a-merge-request), in
case of complex changes like that, a merge request might not be something that
is actionable, so we usually start with an issue.

The issue should be labeled with ~"Architecture decision" label, can be made
visible in the
[#architecture-decision](https://gitlab.slack.com/archives/CJ4DB7517) Slack
channel as per [cross-functional
collaboration](/handbook/engineering/development/#cross-functional-collaboration).

Then author of the issue loops an Architecture Evolution Coach and a Domain
Expert then collaborate together to create a blueprint merge request with the
proposal.

Collaboration between the coaches and a person who had an idea ensures that
only proposals that that are achievable get described in a blueprint merge
request. This makes it also easier to avoid the cost of iterating on the
product architecture improperly and fosters knowledge sharing.

### Blueprint merge request

A blueprint merge request is a description of [Why, How and
What](https://en.wikipedia.org/wiki/Start_With_Why) of the change that has been
proposed in the issue.

* Why - what is the motive and purpose, what is the problem are we trying to solve
* How - how are we going to achieve that (1-year forecast)
* What - what is the outcome, how can we measure it

A blueprint merge request gets created and made visible as a result of
collaboration between an Architecture Evolution Coach, a Domain Expert and a
person who had an idea. The author and coaches also need to be mentioned in the
blueprint.

It describes the goal of the change and usually a 1-year forecast of how to
make it happen.

Blueprints are supposed to be created in
[`doc/architecture/blueprints`](https://gitlab.com/gitlab-org/gitlab/-/tree/master/doc)
directory in GitLab Rails project. Eventually these are going to be published
on [GitLab Architecture Docs](https://docs.gitlab.com/architecture/blueprints)
too.


### Describing iterations

At this point there is a blueprint merge request present that only describes a
long-term forecast. It is not precise enough to reason about how to get it
done, how to iterate wisely to get the most of this work.

Those who have been involved in the discussion in the blueprint collaborate
together to extend it with 6 or 3-month landscape. More Domain Experts get
involved if necessary. The result of this collaboration could be a description
of three first iterations that can be done in a one milestone each.  These
iterations need to be
[two-way-door](/handbook/values/#make-two-way-door-decisions) solutions with a
measurable impact.

If it is not possible to find at least two iterations, the blueprint should not
be approved.

Once the iterations are described the blueprint needs to be approved by an
Engineering Leader.

### Getting the blueprint approved

The blueprint merge request needs to be approved by the Engineering Leader who
has been chosen as a final decision maker. Once the blueprint is ready, the
author assigns it to an Engineering Leader for approval.

The choice of the leader depends on the extent of proposed changes, the area
that the changes are supposed to be applied to and perceived cost of this
architectural change.

[Organization structure chart](/company/team/structure/) can be useful to
determine who the Engineering Leader could be.

Engineering Leader can either approve and merge the merge request or reject the
change.

Once the merge request is merged, the author is expected to add a link to the
blueprint to the current [Architecture
Roadmap](/handbook/engineering/architecture/#architecture-roadmap) page in the
Handbook.

### Finding DRIs

Once the blueprint is approved, the Engineering Leader who approved the proposal
collaborates with people involved to find Directly Responsible Individuals who
will be decision makers from now on and will be responsible for the progress.

The blueprint needs three people that will become DRIs:

1. An Engineering Leader (for example - Director of Engineering)
1. A Product Lead (for example - Senior Product Manager)
1. A Domain Expert (for example - Senior Backend Engineer)

The Engineering Leader who approved the proposal can become an Engineer Leader
DRI, but they can also delegate this to someone else. It is important to choose
people taking their area of interest and responsibility into account and the
"How" description that depends on where the proposed change needs to happen,
who knows the most about particular area of the product, service, and codebase.

Then DRIs will propagate the blueprint downstream, to respective teams that
will need to be involved, and these teams will schedule the work based on their
interpretation of 1-year forecast and proposed iterations that will happen in
the next 3 months. If a Working Groups gets formed the list of DRIs can be
extended according to the process of how Working Groups organize efforts around
the work.

### Getting things done

DRIs can decide to form a [Working
Group](/company/team/structure/working-groups/) to better structure the efforts
related to the architecture change. Key considerations in deciding to form a Working Group are
the size, complexity, and organizational impact of the change.

The concept of a Working Groups can be an extension of the Architecture
Evolution Workflow, but if it is not applicable in a particular case, a
different process can be followed, like the suggested one that is described
below.

1. A bi-weekly call should be scheduled to coordinate the work with all people
   involved,
1. Teams assigned will allocate resources for the work that needs to be done,
1. Domain Experts working on the teams will prepare their interpretations of
   3-months iterations,
1. The work will be split into smaller issues and people interested in taking
   ownership of these issues will be assigned,
1. Product Lead DRI will coordinate the work with Product Managers in
   respective Teams,
1. An Engineering Lead DRI will coordinate the work with Engineering Managers
   responsible for respective teams,
1. Domain Experts and individual engineers will be invited to the bi-weekly
   sync meeting.

### What happens next

After the iterations described in the blueprint are done, the work can be
extended to the next three iterations and the blueprint needs to be updated.

Alternatively the work can be concluded and the blueprint needs to be updated
with results / outcomes.
