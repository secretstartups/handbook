---
layout: handbook-page-toc
title: Defend Planning
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

### Week 0 / ONGOING: Planning Breakdown

*If release X.0 ships on April 22, then planning for release X.1 starts by the week of Feb 24-28*

Top priority issues from upcoming release milestones will go through **Planning Breakdown** with
Product Managers (PMs), Engineering Managers (EMs) & Engineers from the respective groups at least
ONE week prior to Week 1.  Weekly group-level syncronous meetings will facilitate this discussion.
The list of issues to be discussed will be provided by the PM at least 1 day prior to the meeting.
The expectation is that all attendees have reviewed the issues prior to the start of the meeting.

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

* EM output: Once all of the above requirements have been satisfied the EM will add the
  `needs-refinement` label and assign the issue to an engineer for refinement.

### Week 1: Refinement

*If release X.0 ships on April 22, then Week 1 for planning release X.1 begins on or before the week of March 2-6*

Engineers [refine](#refinement-steps-for-engineers) issues assigned in the **current+1** release. They are encouraged
to ask questions and authorized to push back on PM if issues lack the information and/or designs
required for successful refinement and execution.

* EM Output: move issues into the `workflow::scheduling` state once they have ensured a [combined
  weight](#weight-labels) has been assigned.

#### *Why are we assigning issues for refinement?*

Issues are assigned to engineers to ensure we have focus on the highest-priority items, as
determined by Product Management.  This is **not** an assignment to work on the issue, though there
will be an effort made to make sure the engineer(s) who groom an issue will be the one(s) working
upon it.


### Week 2: Release Scope DRAFT Complete

*If release X.0 ships on April 22, then Week 2 for planning release X.1 is March 9-13*

EMs and PMs complete a first pass of **current+1** release.  Rough scope of the release is defined
based on the PMs **priorities** and EMs **capacity** estimations. 
* EM Output: Issues selected for execution in the **current+1** release are moved into
  `workflow::ready for dev` state.
* PM Output: All issues for **current+1** release in the `workflow::ready for dev` state have been
  confirmed to be in the correct priority order.


### Week 3: Release Scope FINAL & Kickoff!

*If release X.0 ships on April 22, then week 3 for planning release X.1 is March 16-20. **Execution of release X.1 begins on March 18**!*

Scope of the next release is finalized by EMs and PMs.

* EM output: `Deliverable` labels applied to issues we are committing to deliver.
* EM output: move issues that we are unlikely to deliver[^1] to the next iteration.
* PM output: accept scope and priority.
* EM output: assignment of issues to individuals to work in the next release.

[^1]: we do not use `Stretch` labels; anything that isn't labelled as a `Deliverable` is
a stretch goal by definition and should be kept in scope as such.

---

## Backlog Refinement

Backlog refinement is the most important step to ensure an issue is ready to move into development
and that the issue will match everyone's expectations when the work is delivered. 

The goal of the refinement process is to 
*  Identify and resolve outstanding questions or discussions.
*  Raise any questions, concerns or alternative approaches.
*  Outline an implementation plan.
*  Ensure issue is ready to be worked on.
*  Assign a weight to the issue.

### Refinement steps for Engineers:

1.  Issues you need to refine will be assigned to you by your EM. Note the
    [differences for bugs](#bug-refinement).
2.  Backend/Frontend labels:
    * If a backend engineer is required for the issue, ensure a `backend` label. Otherwise, remove
      any backend label, assign any relevant labels and you are done. 
    * If a frontend engineer is required for the issue, ensure a `frontend` label. Otherwise,
      remove any frontend label, assign any relevant labels and you are done. 
3.  Check the issue for completeness.
    *  Does it have the necessary designs?
    *  Is the functionality clearly articulated and is there a consensus or decision on how it
       should function?
    *  Are the technical details outlined? 
    *  Has a consensus been reached or decision been made in areas of discussion?
    *  Are there dependencies? Call those out. 
4. If the issue is not complete:
    *  Tag the relevant people that can help complete the issue and outline what is needed. Tag the
       appropriate EM and PM, so they know that the item can not be fully groomed.
    * If you are unable to resolve blockers to your refinement within a reasonable amount of time
      (2-3 days dependign on size of initative) see [Failing Refinement](#failing-refinement).
5. Ensure the issue is fully understood.
    *  Update the issue description with the final description of what will be implemented.
    *  Update the issue description with an [implementation plan](#implementation-plan). 
    *  Ensure the issue title is accurate for the work being done.
    *  Open up new issues for 'follow-up' work, or work that was forced out of scope. 
6. Assign a [weight](#weights). 
    * If the issue requires both frontend & backend work apply the respective frontend-weight or
      backend-weight label. 
7. Unassign the issue from yourself & reassign it to your EM.

When you are done refining, anyone should be able to read the issue description and should know
what the issue is solving, how it is solving the problem, and the technical plan for implementing
the issue. 

In order for someone to understand the issue and its implementation, they should **not** have to
read through all the comments. The important bits should be captured in the description as the
**single source of truth.** 


#### Bug Refinement

Note the following differences when refining bugs:

1. As a guideline, spend no more than 1 hour per issue. Bugs that take too long to refine are
   indicative of a more complex issue.
1. Do not add weight. Our velocity represents the capacity to deliver new, bug-free features.
1. When you hit the time limit for refinement, it's ok to have uncertainty in the [Implementation
   Plan](#implementation-plan). It's sufficient just to direct where you expect the code change to be (high or low level).


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

#### Weight Labels

Defend issues follow the [labels defined in the Contribution Guide](https://gitlab.com/gitlab-org/gitlab-foss/-/blob/master/doc/development/contributing/issue_workflow.md#labels),
specifically the `~frontend` and `~backend` Specialization labels.

When an issue has both Specialization labels, the weight can be broken down into
[`~backend-weight`](https://gitlab.com/gitlab-org/gitlab/-/labels?utf8=%E2%9C%93&subscribed=&search=backend-weight)
and
[`~frontend-weight`](https://gitlab.com/gitlab-org/gitlab/-/labels?utf8=%E2%9C%93&subscribed=&search=frontend-weight).
In these cases, the value of the issue's numeric `weight` field will be set by the EM to be the sum of these weights rounded-up to the nearest Fibonacci number.

## Implementation Plan

A list of the steps and the parts of the code that will need to get updated to implement this
feature. The implementation plan should also call out any responsibilities for other team members
or teams. [Example](https://gitlab.com/gitlab-org/gitlab/issues/5656#execution).

The goal of the implementation plan is to spur critical analysis of the issue and have the groomer
think through what parts of the application will get touched. The implementation plan will also
permit other engineers to review the issue and call out any areas of the application that might
have dependencies or been overlooked.

## FAQs

**Q:** Should discovery issues be groomed?

**A:** Yes. Discovery issues should be groomed but some of the steps above may not be relevant. Use
good judgement to apply the process above. The purpose of refining a discovery issue is to make
sure the scope of the discovery is clear, what the output will be and that the prerequisites for
the discovery are known and completed. Discovery issues can have a habit of dragging out or not
creating actionable steps, the refinement process should lock down what needs to be answered in the
discovery process.

**Q:** If an issue has both frontend and backend work how should I weight it?

**A:** Issues that require both frontend and backend work can be broken into [sub-issues as
outlined in this document](https://gitlab.com/gitlab-com/www-gitlab-com/issues/4588). If the size
and complexity of the issue does not warrant breaking it down into multiple sub-issues then apply
frontend and backend weights separately using their respective `frontend-weight` & `backend-weight`
[weight labels](#weight-labels). The EMs will use those individuals labels to populate the combined weight field.
