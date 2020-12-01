---
layout: handbook-page-toc
title: Threat Management Planning
---

# On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How we do planning

To better ensure we are ready to start work on issues in each iteration, the planning process works
as part of a monthly cadence. Since [GitLab releases ship](/upcoming-releases/) on the 22nd of each
month, this schedule for the **current+1** release begins on the first week of the month when the
**current** release is being executed.

There's a [diagram](diagram.html) that (hopefully) helps understand the process.

### ONGOING: Planning Breakdown

Top priority issues from upcoming release milestones will go through **Planning Breakdown** with
Product Managers (PMs), Engineering Managers (EMs) & Engineers from the respective groups.
Weekly group-level synchronous meetings will facilitate this discussion.
The list of issues to be discussed will be provided by the PM at least 1 day prior to the meeting.
The expectation is that all attendees have reviewed the issues prior to the start of the meeting.
Attendees should add the carrot 🥕 emoji to signify that an issue has been reviewed in advance.

Questions to be answered:
1. Are requirements clear enough to understand intent of request?
2. Do we know the boundaries of work to be accomplished?
3. Is all research and solution validation complete?

If the answer is “No” to any of the above questions enumerate questions and assign back to PM.

If the answer is "Yes" to all of the above questions then team estimates **whether or not the issue
can be delivered in a single iteration** (ignoring any other work that may be in that same
iteration). If it's determined that the issue under discussion cannot be delivered within a single
iteration the team works with PM to break it down into multiple MVC Issues that can each be
delivered in an iteration, are independent "slices" of value that can be used by a customer (so no
mocked UIs or backend-only work that is inaccessible), and when all delivered will completely
fulfill the original issue's requirements.

* EM output: Once all of the above requirements have been satisfied the EM will move the issue into the
  `workflow::refinement` state and assign the issue to an engineer for refinement.

### Week 1: Refinement

*If release X.0 ships on April 22, then Week 1 for planning release X.1 begins on or before the week of March 2-6*

Engineers [refine](#refinement-steps-for-engineers)[^2] issues assigned to them in the **current+1** release.
They are encouraged to ask questions and are authorized to push back on PM if issues lack the information and/or designs
required for successful refinement and execution.

* Engineering output: Move issue into the `workflow::ready for dev` state and unassign themselves if they have completed refinement. Leave issue in `workflow::refinement` and assign the issue to their EM if for any reason refinement could not be completed.

[^2]: we assign issues for refinement to ensure we have focus on the highest-priority items, as
      determined by Product Management.  This is **not** an assignment to work on the issue.

### Week 2: Release Scope DRAFT Complete

*If release X.0 ships on April 22, then Week 2 for planning release X.1 is March 9-13*

EMs and PMs complete a first pass of **current+1** release.  Rough scope of the release is defined
based on the PMs **priorities** and EMs **capacity** estimations.

### Week 3: Release Scope FINAL & Kickoff!

*If release X.0 ships on April 22, then week 3 for planning release X.1 is March 16-20. **Execution of release X.1 begins on March 18**!*

Scope of the next release is finalized by EMs and PMs.

* EM output: `Deliverable` labels applied to issues we are committing to deliver.
* EM output: Move issues that we are unlikely to deliver[^1] to the next iteration.
* PM output: Issues with `Deliverable` labels in the `workflow::ready for dev` state have been
  confirmed to be in the correct priority order.

[^1]: we do not use `Stretch` labels; anything that isn't labelled as a `Deliverable` is
      a stretch goal by definition and should be kept in scope as such.

---

## Backlog Refinement

Backlog refinement is the most important step to ensure an issue is ready to move into development
and that the issue will match everyone's expectations when the work is delivered.

The goal of the refinement process is to:
*  Identify and resolve outstanding questions or discussions.
*  Raise any questions, concerns or alternative approaches.
*  Outline an implementation plan.
*  Ensure issue is ready to be worked on.
*  Assign a weight to the issue.

### Refinement steps for Engineers:

1.  Issues you need to refine will be assigned to you by your EM. Note the
    differences for [bugs](#bug-diagnosis) and [spikes](#refinement-for-spikes).
1.  Backend/Frontend labels:
    * If a backend engineer is required for the issue, ensure a `backend` label. Otherwise, remove
      any backend label, assign any relevant labels and you are done.
    * If a frontend engineer is required for the issue, ensure a `frontend` label. Otherwise,
      remove any frontend label, assign any relevant labels and you are done.
1.  Check the issue for completeness.
    *  Does it have the necessary designs?
    *  Is the functionality clearly articulated and is there a consensus or decision on how it
       should function?
    *  Are the technical details outlined?
    *  Has a consensus been reached or decision been made in areas of discussion?
    *  Are there dependencies? Call those out.
1. If the issue is not complete:
    *  Tag the relevant people that can help complete the issue and outline what is needed. Tag the
       appropriate EM and PM, so they know that the item can not be fully refined.
    * If you are unable to resolve blockers to your refinement within a reasonable amount of time
      (2-3 days dependign on size of initative) see [Failing Refinement](#failing-refinement).
1. Ensure the issue is fully understood.
    *  Update the issue description with the final description of what will be implemented.
    *  Update the issue description with an [implementation plan](#implementation-plan).
    *  Ensure the issue title is accurate for the work being done.
    *  Open up new issues for 'follow-up' work, or work that was forced out of scope.
1. Assign a [weight](#weights).
    * If the issue requires both frontend and backend work, it should be split and weighed independently.
1. Determine if [a feature flag is needed](https://docs.gitlab.com/ee/development/feature_flags/process.html#when-to-use-feature-flags).
    * If you think that we should use the feature flag for a given issue, add ~"feature flag" label and add in the description a section called **Feature Flag** with the proposed name.
1. Encourage Community Contributions.
    *  If the scope of the issue is well defined and there are no dependencies, consider adding [contribution Labels](/handbook/marketing/community-relations/code-contributor-program/#contribution-labels).
    * The `~"Good for 1st time contributors"` label is particularly helpful but note that you would
      be [volunteering to mentor new contributors](/handbook/marketing/community-relations/code-contributor-program/#issues-for-first-time-contributors).
1. Unassign the issue from yourself and request a review from another engineer.
1. If the reviewer agrees with the implementation plan and weight, they will move the issue to
   `~"workflow::ready for development"`.

Anyone should be able to read a refined issue's description and understand what is being
solved, how it is solving the problem, and the technical plan for implementing the issue.

In order for someone to understand the issue and its implementation, they should **not** have to
read through all the comments. The important bits should be captured in the description as the
[single source of truth](/handbook/communication/#issues).


#### Bug Diagnosis

Note the following differences when refining bugs:

1. As a guideline, spend no more than 1 hour per issue. Bugs that take too long to refine are
   indicative of a more complex issue.
1. Do not add weight. Our velocity represents the capacity to deliver new, bug-free features.
1. When you hit the time limit for refinement, it's ok to have uncertainty in the [Implementation
   Plan](#implementation-plan). It's sufficient just to direct where you expect the code change to be (high or low level).


#### Refinement for Spikes

1. Do not add weights[^3].
1. Time-box how much time to spend on the issue.
1. The deliverable is typically an answer or solution to be used in upcoming issues.

[^3]: a spike doesn't directly add value to users so it shouldn't contribute to our velocity. The
      information delivered by a spike is what will be useful to deliver direct value to users.


#### Refinement for Security Issues

The [Security Release Process for
Developers](https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/security/developer.md#security-releases-critical-non-critical-as-a-developer)
can be daunting for first-timers. As part of refinement, ask for a volunteer to act as a "Security
Issue Release Buddy".


### Failing Refinement:

An issue should fail refinement if it can not be worked on without additional information or
decisions to be made. To fail an issue:
1.  Leave a comment on the issue that it can not be worked on, and highlights what still needs to
    be done.
2.  Unassign yourself if you can not contribute further to issue at the current time.
3.  Assign the `workflow::blocked` label.


### Weights

Weights are used as a *rough* order of magnitude to help signal to the rest of the team how much
work is involved.  Weights should be considered an artifact of the refinement process, not the
purpose of the refinement process.

It is perfectly acceptable if items take longer than the initial weight. We do not want to inflate
weights, as [velocity is more important than predictability](/handbook/engineering/#velocity-over-predictability)
and weight inflation over-emphasizes predictability.

We do not add weights to bugs as this would be double-counting points. When our delivery contains
bugs, the velocity *should* go down so we have time to address any systemic quality problems.

#### Possible Values

We are using the Fibonacci sequence for issue weights. Definitions of each numeric value are associated with the [frontend-weight & backend-weight labels](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=-weight%3A%3A). Anything larger than 5 should be broken down whenever possible.


## Implementation Plan

A list of the steps and the parts of the code that will need to get updated to implement this
feature. The implementation plan should also call out any responsibilities for other team members
or teams. [Example](https://gitlab.com/gitlab-org/gitlab/issues/5656#execution).

The goal of the implementation plan is to spur critical analysis of the issue and have the engineer refining the issue
think through what parts of the application will get touched. The implementation plan will also
permit other engineers to review the issue and call out any areas of the application that might
have dependencies or been overlooked.

## Verification
The issue verification should be done by someone else other than the MR author[^4].

1. When an engineer has merged their work, they should move their issue into the verification status, indicated by the `~workflow:verification` label and wait until they receive notification that their work has been deployed on staging via the release issue email. 
1. After the engineer has received the notification and verified their work in staging, they leave a comment summarizing the testing that was completed, and unassign themselves from the issue.
1. At consistent intervals, engineers should check for issues with the `~workflow:verification` status and verify other engineer's work.
1. An issue can be closed once it has been verified in production.

[^4]: When the engineer who writes the code is the only one verifying it, it increases the chance of defects getting into production because when that engineer tests in a new environment, they are likely to try all the same attempts to break it as they did during writing the code, which does not bring any value. If a person who did not write the code verifies the resolution in a deployed environment, they will come in with a different perspective and is more likely to cover more test cases.

## FAQs

**Q:** Should discovery issues be refined?

**A:** Yes. Discovery issues should be refined but some of the steps above may not be relevant. Use
good judgement to apply the process above. The purpose of refining a discovery issue is to make
sure the scope of the discovery is clear, what the output will be and that the prerequisites for
the discovery are known and completed. Discovery issues can have a habit of dragging out or not
creating actionable steps, the refinement process should lock down what needs to be answered in the
discovery process.

**Q:** If an issue has both frontend and backend work how should I weigh it?

**A:** Issues that require both frontend and backend work should be broken into multiple implementation issues as
outlined in the [planning diagrams](diagram.html#plan).


**Q:** What's the meaning of the emojis in issues?

**A:** we use them to communicate certain steps in our process.
- 🥕 you have reviewed an issue in preparation for [Planning
  Breakdown](#ongoing-planning-breakdown).
- 🥒 request to add a specification using [Gherkin
  Keyworks](https://cucumber.io/docs/gherkin/reference/#keywords) (when life gives you a cucumber,
  you pickle it).

## Footnotes
