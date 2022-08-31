---
layout: handbook-page-toc
title: Protect Management Planning
---

# On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How we do planning

Our milestone planning is handled asynchronously as much as possible. Planning discussions are fluid and ongoing, in general they do not follow a predefined monthly schedule.

This [diagram](diagram.html) was created to (hopefully) help understand the process.

### Planning Breakdown

Top priority features from upcoming release milestones go through **Planning Breakdown** with
Product Managers (PMs), Product Designers (UX), Engineering Managers (EMs) & Engineers from the respective groups.
Weekly group-level synchronous meetings facilitate this discussion.
The list of issues to be discussed is provided by the PM at least 1 day prior to the meeting.
The expectation is that all attendees have reviewed the issues prior to the start of the meeting.
Attendees should add the carrot 🥕 emoji to signify that an issue has been reviewed in advance.

Questions to be answered:
1. Are requirements clear enough to understand intent of request?
2. Do we know the boundaries of work to be accomplished?

If the answer is “No” to either of these questions, discussion continues with the PM to improve the team's understanding of the request. If necessary, the discussion will continue asyncronously in the Epic or Issue and is brought back to a future weekly meeting. 

If the answer is "Yes" to these questions the team estimates **whether or not the issue
can be delivered in a single iteration** (ignoring any other work that may be in that same
iteration). If it's determined that the issue under discussion cannot be delivered within a single
iteration, the team works with the PM to break it into multiple MVC Issues that can each be
delivered in an iteration, are independent "slices" of value that can be used by a customer (so no
mocked UIs or backend-only work that is inaccessible), and when all delivered will completely
fulfill the original issue's requirements.

* EM output: Once all of the above requirements have been satisfied the EMs assign a frontend and backend engineer as respective [DRI](#epic-engineering-dri)s to create Implementation Issues under the MVC epic(s). The Design issue created by UX is also closed at this point by the EM. 

* Engineering output: Frontend and backend DRIs [create implementation issue](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Implementation)s following the [Implementation template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/.gitlab/issue_templates/Implementation.md) available for the Gitlab-org project issues. Once they are done, they unassign themself and move issues to the `workflow::refinement` state. 

### Refinement

Issues in the `workflow::refinement` state are either assigned by EMs to individuals engineers for refinement, or are assigned randomly by the triage bot based on the [assign-refinement policy](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/policies/groups/gitlab-org/container-security/assign-refinement.yml). Note that [Epics are slightly different](#epic-engineering-dri).

Engineers assigned to refine issues are encouraged to ask questions and push back on PM if issues lack the information and/or designs required for successful refinement and execution.

We assign issues for refinement to ensure we have focus on the highest-priority items, as determined by Product Management.  This is **not** an assignment to work on the issue.

* Engineering output: Move issue into the `workflow::ready for dev` state and unassign themselves if they have completed refinement. Leave issue in `workflow::refinement` and assign the issue to their EM if for any reason refinement could not be completed. Confirm the issue has the appropriate [work type classification](https://about.gitlab.com/handbook/engineering/metrics/#work-type-classification). 

### Release Scope final & kickoff!
By the week prior to the completion of the current milestone, the scope of the next release is finalized by EMs and PMs.

* EM output: `Deliverable` labels are applied to issues we are committing to deliver. It's up to the EM's discretion what issues receive this label which is used in the calculation of our [Say Do Ratio](/handbook/engineering/development/performance-indicators/#say-do-ratios). Factors include: confidence that the issue will be completed in the milestone, completion of issues rolled over from the previous milestones, commitments with other groups or stakeholders.
* EM output: Move issues that we are unlikely to deliver to the next iteration.
* PM output: Issues with `Deliverable` labels in the `workflow::ready for dev` state have been confirmed to be in the correct priority order.

---

## Refinement Guidelines

Backlog refinement is the most important step to ensure an issue is ready to move into development
and that the issue will match everyone's expectations when the work is delivered.

The goal of the refinement process is to ensure an issue is ready to be worked on by doing this:
* Identify and resolve outstanding questions or discussions.
* Identify missing dependencies (e.g. `backend` API).
* Raise any questions, concerns or alternative approaches.
* Outline an implementation plan.
* Assign a weight to the issue.

### Refinement steps for Engineers:

1. Issues you need to refine will be assigned to you by your EM. Note the
   differences for [bugs](#bug-diagnosis) and [spikes](#refinement-for-spikes).
1. Backend/Frontend labels:
   * If a backend engineer is required for the issue, ensure a `backend` label. Otherwise, remove
     any backend label, assign any relevant labels and you are done.
   * If a frontend engineer is required for the issue, ensure a `frontend` label. Otherwise,
     remove any frontend label, assign any relevant labels and you are done.
1. Check the issue for completeness.
   * Does it have the necessary designs?
   * Is the functionality clearly articulated and is there a consensus or decision on how it
     should function?
   * Are the technical details outlined?
   * Has a consensus been reached or decision been made in areas of discussion?
   * Are there dependencies? Call those out.
1. If the issue is not complete:
   * Tag the relevant people that can help complete the issue and outline what is needed. Tag the
     appropriate EM and PM, so they know that the item can not be fully refined.
   * If you are unable to resolve blockers to your refinement within a reasonable amount of time
     (2-3 days dependign on size of initative) see [Failing Refinement](#failing-refinement).
1. Ensure the issue is fully understood.
   * Update the issue description with the final description of what will be implemented.
   * Update the issue description with an [implementation plan](#implementation-plan).
   * Ensure the issue title is accurate for the work being done.
   * Open up new issues for 'follow-up' work, or work that was forced out of scope.
1. Assign a [weight](#weights).
   * If the issue requires both frontend and backend work, it should be split and weighed independently.
1. Determine if [a feature flag is needed](https://docs.gitlab.com/ee/development/feature_flags/process.html#when-to-use-feature-flags).
   * If you think that we should use the feature flag for a given issue, add ~"feature flag" label
     and add in the description a section called **Feature Flag** with the proposed name.
1. Encourage Community Contributions.
   * If the scope of the issue is well defined and there are no dependencies, consider adding
     [contribution Labels](/handbook/marketing/community-relations/code-contributor-program/#contribution-labels).
   * The `~"good for new contributors"` label is particularly helpful but note that you would
     be [volunteering to mentor new contributors](/handbook/marketing/community-relations/code-contributor-program/#issues-for-new-contributors).
1. Refinement Review.
   * If the weight you've assigned to the issue is 1, move the issue directly to `~"workflow::ready for development"`.
   * If the weight of the issue is greater than 1, unassign the issue from yourself and request a review from another engineer.
   * When the reviewer agrees with the implementation plan and weight, they will unassign themself
     and move the issue to `~"workflow::ready for development"`.

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
weights, as [velocity is more important than predictability](/handbook/engineering/development/principles/#velocity-over-predictability)
and weight inflation over-emphasizes predictability.

We do not add weights to bugs as this would be double-counting points. When our delivery contains
bugs, the velocity *should* go down so we have time to address any systemic quality problems.

#### Possible Values

We are using the Fibonacci sequence for issue weights. Definitions of each numeric value are associated with the [frontend-weight & backend-weight labels](https://gitlab.com/groups/gitlab-org/-/labels?utf8=%E2%9C%93&subscribed=&search=-weight%3A%3A). Anything larger than 5 should be broken down whenever possible.


## Implementation Plan

A list of the steps and the parts of the code that will need to get updated to implement this
feature. The implementation plan should also call out any responsibilities for other team members
or teams. [Example](https://gitlab.com/gitlab-org/gitlab/-/issues/326975#implementation-plan).

The goal of the implementation plan is to spur critical analysis of the issue and have the engineer refining the issue
think through what parts of the application will get touched. The implementation plan will also
permit other engineers to review the issue and call out any areas of the application that might
have dependencies or been overlooked.

## Verification
The issue verification should be done by someone else other than the MR author[^4].

1. All implementation issues should have verification steps in the description. Our [implementation issue template](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Implementation) conveniently provides this section.
1. When an engineer has merged their work, they should move their issue into the verification status, indicated by the `~workflow:verification` label and wait until they receive notification that their work has been deployed on staging via the release issue email. 
1. After the engineer has received the notification and verified their work in staging, they leave a comment summarizing the testing that was completed, and unassign themselves from the issue.
1. Unassigned issues in the `~workflow:verification` state are are assigned randomly by the triage bot based on the [verification policy](https://gitlab.com/gitlab-org/quality/triage-ops/-/blob/master/policies/groups/gitlab-org/container-security/verification.yml).
1. An issue can be closed once it has been verified in production.

[^4]: When the engineer who writes the code is the only one verifying it, it increases the chance of defects getting into production because when that engineer tests in a new environment, they are likely to try all the same attempts to break it as they did during writing the code, which does not bring any value. If a person who did not write the code verifies the resolution in a deployed environment, they will come in with a different perspective and is more likely to cover more test cases.

## Planning for PTO

When a team-member takes some time off, it is important that their work is still being followed up on if needed. We want to make sure that any MR that lands in staging and production environments while we are out gets proper attention and is verified by a counterpart. Therefore, when getting close to our time-off period, we should do the following:

* Any MR that can be put on hold until we're back from PTO should be put in the `Draft` status. This ensures that the MR won't be merged accidentally without a clear DRI to follow up on it.
* Other non-draft MRs and freshly merged MRs, which need to be verified on staging, should be assigned to another engineer. The additional DRI will be responsible to verify the changes if they land in staging while we're out. When doing this, we must ensure that enough context has been provided in the MR's description and/or the related issue (setup, testing, potential impact, design decisions, etc.).

Keep in mind that, while we strongly recommend following this process when taking some time off, it might not be relevant all the time. For example, if our time-off period is going to be short and/or our active MRs are minor enough, it might make sense to ignore these recommendations and follow up when we're back.

In any case, it's always a good idea to give the company-wide PTO policy another read before going on leave: [A GitLab team members Guide to Time Off](/handbook/paid-time-off/#a-gitlab-team-members-guide-to-time-off).

## Epic Engineering DRI

As an Epic is ready to move to the refinement stage, the EMs assigns someone as the DRI for each required tech stack. This may happen sooner, during planning breakdown.

As the DRI for an Epic, the engineer is **not** responsible for executing all the work but they are responsible for:

1. Suggesting the implementation issue breakdown and requesting feedback.
1. Writing the agreed implementation issues.
1. Identifying when further research is required and writing the spike issue(s).
1. Making technical decisions.
1. Providing status updates when requested.
1. Identifying and communicating blockers.

The DRI may choose to refine and work on the issues they created but they're not expected to
deliver the whole Epic on their own.

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
  Breakdown](#planning-breakdown).
- 🥒 request to add a specification using [Gherkin
  Keyworks](https://cucumber.io/docs/gherkin/reference/#keywords) (when life gives you a cucumber,
  you pickle it).

## Footnotes
