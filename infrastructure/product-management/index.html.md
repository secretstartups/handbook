---
layout: handbook-page-toc
title: "Infrastructure Product Management"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Responsibilities

The responsibilities of the Infrastructure Product Manager are [documented here](https://about.gitlab.com/job-families/product/product-manager/#infrastructure).

## Engagement Model
The Infra PM can help triage and prirotize *inbound* requests to Infrastructure from internal teams and GitLab.com customers.

Examples:
- [Dogfooding Requests](https://about.gitlab.com/handbook/product/product-processes/#dogfood-everything)
- [GitLab.com customer requests](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/10768)
- [Security and Compliance Requests](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/10982)

The Infra PM can also help drive *outbound* requests on behalf of Infrastructure to internal teams and GitLab.com customers. 

Examples:
- [Kubernetes Migration Blockers](https://gitlab.com/groups/gitlab-org/-/boards/1836252?label_name[]=kubernetes-migration-blocker)
- [Outreach to GitLab.com customers](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/37444)
- [Driving cost efficiences across stages](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/issues/8422)

To request assistance from the Infrastructure Product Manager, add the `infrapm` label to an issue. For customer requests related to the availability, reliability, performance, security, and scalability of GitLab.com, use the [GitLab.com feature request template](https://gitlab.com/gitlab-com/gl-infra/infrastructure/-/blob/gitlab-com-feature-request-template/.gitlab/issue_templates/request-gitlab-com) so that we can gather the necessary opportunity size data for prioritization purposes.

For general requests, use the [Infrastructure PM Slack Channel](https://gitlab.slack.com/archives/infra-product).

## Workflow
Once the  `infrapm` label has been added to an issue the Infra PM will move it to the `workflow::problem validation` phase for validation, scoping, and prioritization. After completing these steps, if the Infra PM determines the effort is worth pursuing, they will then follow the established [Infrastructure team](https://about.gitlab.com/handbook/engineering/infrastructure/#teams) workflows by adding the appropriate team label and moving the issue to the `workflow-infra::Triage` phase for engineering review.

## Prioritization Framework
To prioritize initiatives, the Infra PM uses the framework [documented in the Product handbook](https://about.gitlab.com/handbook/product/product-processes/#prioritization).

## Issue Board
Infrastructure Product Manager Tasks are tracked on the [Infra PM Issue Board](https://gitlab.com/groups/gitlab-com/-/boards/1502173?scope=all&utf8=%E2%9C%93&label_name[]=infrapm)