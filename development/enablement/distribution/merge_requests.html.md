---
layout: handbook-page-toc
title: "Distribution Team Merge Request Handling"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

Merge Requests are the responsibility of all Distribution Engineers. For the most part, we follow the [engineering process for code review](https://about.gitlab.com/handbook/engineering/workflow/code-review/).

## Reviewers

By default, every Distribution Engineer team who is not a Maintainer on a project should consider themselves a Reviewer. You are encouraged to spend some of your time looking at unassigned Merge Requests in any of our [projects](https://about.gitlab.com/handbook/engineering/development/enablement/distribution/#projects).

Reviewers are responsible for working with contributors to ensure that changes meet our standards, before approving and passing them on to a Maintainer for final review and merge. When you encounter a situation as Reviewer where you are unsure whether something meets our standards, ping a Maintainer directly within the Merge Request with the question.

Additionally, in the spirit of "everyone can contribute", anyone who is interested is encouraged to be a Reviewer. There should be no barrier preventing anyone from reviewing available merge requests. We encourage any interested party to participate.

Anyone who plans on actively participating in the Reviewer process is encouraged to update their entry on the team page.

## Maintainers

Project Maintainers are encouraged to ensure that Reviewers, and in particular Reviewers who have designated themselves [Trainee Maintainers](https://about.gitlab.com/handbook/engineering/workflow/code-review/#trainee-maintainer), look at a Merge Request before they spend time on it. There are times when it makes sense for a Maintainer to not wait for a reviewer, so judgment should be used here. For example, we do need to keep the [First-response SLO](https://about.gitlab.com/handbook/engineering/workflow/code-review/#first-response-slo) in mind. If an MR is in danger of missing that deadline, a Maintainer should not hesitate to respond.

## Assigning Merge Requests

To help achieve all of this, we should urge contributors to **not** assign merge requests to an individual, unless there is a specific reason someone should look at a merge request. Rather, the merge request should have the "Workflow::ready for review" label applied, and a Reviewer will assign it to themselves when they are beginning to look into it. When looking for a merge request to work on, consider the [First-response SLO](https://about.gitlab.com/handbook/engineering/workflow/code-review/#first-response-slo). Anything in danger of breaching that deadline should be looked at first.

If a merge request is assigned directly to you as a Maintainer, you are encouraged to assign it to an available Reviewer. If a merge request is assigned directly to you as a Reviewer, use your judgment. If you will not be able to work on it soon, try and find another Reviewer to take a look.

## Workflow

1. Author opens a merge request in a project.
1. When ready for review, the Author applies the "Workflow::ready for review" label.
1. When they are able to work on the merge request, a Reviewer assigns it to themselves, and adds the "Workflow::in review" label.
1. The Reviewer works with the Author to get it to a state where they approve it. At this stage, it is expected that the Author and the Reviewer will assign the merge request back and forth as appropriate.
1. Once approved, the Reviewer chooses and assigns the merge request to a Maintainer for final review/merge. If the Maintainer has any comments, then they work with the Author to clarify.

**NOTE**: If you are working on a merge request that requires a response quicker than the [First-response SLO](https://about.gitlab.com/handbook/engineering/workflow/code-review/#first-response-slo), please `@` mention the `gitlab-org/distribution` group in order to alert the Distribution team.

## References

[Distribution team projects](https://about.gitlab.com/handbook/engineering/development/enablement/distribution/#projects) - The full list of projects the Distribution team maintains
[Engineering Projects](https://about.gitlab.com/handbook/engineering/projects/) - The full list of supported GitLab projects. Clicking on the project name will bring you to the list of Maintainers and Reviewers for each project.
