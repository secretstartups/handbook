---
layout: markdown_page
title: "Production Readiness Process"
---

The Production Readiness process defines requirements for a service, or a group of services, to be running in a production environment and receiving customer facing traffic.

## Starting a proposal

The Production Readiness process is authored by the DRI of the work that is being delivered.

The author [creates an issue](https://gitlab.com/gitlab-com/gl-infra/readiness/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=) using the [issue template] in the [readiness project].

Once the issue is created, the author creates a merge request in the [readiness project] based on the
structure defined in the project readme, and the content of the issue.

As a reference, see the [example merge request].

Once the proposal is ready for review, assign the team members who worked on the
task for initial review.

Once the initial review is completed, the merge request should be merged.
Next, the author and initial reviewers should
propose candidates for final review. In principle, further reviewers should have:

* At least two SRE's (consider the current on-call).
* An engineer from the Security department (consider AppSec and Compliance).
* An engineer from the Development department and/or Quality department.

When final reviewers have been selected, author creates a merge request for each group of
candidates conducting the final readiness review.

By creating a merge request, the questions and answers are raised at specific points in the
documentation. Information in issues can easily get lost given that the document
is point of discussion. See an [example of final review merge request].

Final review merge request can be created using the following guideliness:

* Branch name can be the original branch name of initial merge request adding doc followed by -{department}, eg:
if the original branch was named `registry-gke-readiness`, other branches can be named `registry-gke-readiness-security` or `registry-gke-readiness-infrastructure`.
* Author of the merge request should edit the section `## Readiness reviewers`, add the names of review candidates
and commit. By doing this, the merge request will show the diff and by using `Show all lines` option, the full document can be commented on.
* The final merge request's should be assigned to the author since they remain the DRI.
* All final merge request's should have a due date to avoid postponing the decisions or prolonging
discussions more than necessary.
* On the due date, the author will merge the changes and the production readiness review is completed.
The exception to this rule is when there are still some major concerns remaining, at which point the manager of author should be brought in to break the deadlock.

## Reviewing a proposal

As a reviewer of the Production Readiness proposal, your task is to think with the author
of the proposal on whether the information provided in the proposal is sufficient for
a service to run in production. The proposal author is still the DRI and they are
ultimately responsible for putting the service in production.

In general, consider how sections listed in the [issue template] are addressed.
It is important that you highlight any shortcomings that you observe. Not every
detail will need to be addressed, but every detail raised will be informing the
next steps.

When you get mentioned in a merge request, assign yourself the merge request
in question to indicate that you will participate in the review.

Use the `Show all lines` option in the merge request diff to review the proposal
line by line. Leave questions inline as you would with regular code review.
Once sufficiently happy with the changes addressing raised remarks, unassign yourself
from the issue to indicate that your part of review is completed.

Once all comments have been addressed or due date of the merge request has been reached,
changes will be merged and the author of the proposal will continue with enabling the service in
production.


[readiness project]: https://gitlab.com/gitlab-com/gl-infra/readiness
[example merge request]: https://gitlab.com/gitlab-com/gl-infra/readiness/merge_requests/1
[example of final review merge request]: https://gitlab.com/gitlab-com/gl-infra/readiness/merge_requests/3
[issue template]: https://gitlab.com/gitlab-com/gl-infra/readiness/blob/master/.gitlab/issue_templates/production_readiness.md
