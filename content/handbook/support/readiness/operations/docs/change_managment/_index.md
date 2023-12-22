---
title: Change Management
description: Support Operations documentation page for change management
canonical_path: "/handbook/support/readiness/operations/docs/change_management"
---


## Process for v2 sync repos

For any item using a [v2 sync repo](sync_repos/#v2), the process for making
changes to it will depend on the nature of the change itself:

| Type of change | Method used |
|----------------|-------------|
| Significant modification of "backend" code | [For significant changes to backend code](#for-significant-changes-to-backend-code) |
| Typo fixes, comment changes, etc. of "backend" code | [For minor changes to backend code](#for-minor-changes-to-backend-code)
| Modification of existing "frontend" code | [For changes to existing frontend code](#for-changes-to-existing-frontend-code) |
| Creation of a new item | [For significant changes to backend code](#for-significant-changes-to-backend-code) |
| Deletion or inactivation of an existing item | [For significant changes to backend code](#for-significant-changes-to-backend-code) |

For sake of this documentation, please refer to the following definitions:

- "backend" code refers to the code that makes actual changes to the item in the
  system it is for
- "frontend" code refers to content such as webhook payload, comment text, etc.

#### For significant changes to backend code

These would include any changes involving modifying the "backend" code, creation
of new items, deletion or inactivation of existing items, etc. All of these
should start as a
[request for comments issue](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/new?issuable_template=Request%20for%20Comments)
within the
[support-team-meta project](https://gitlab.com/gitlab-com/support/support-team-meta)
and move from there.

#### For minor changes to backend code

These would include changing involving modifying the "backend" code that are
small or insignificant to the overall code and deployment itself. The key to
these is they do not have a real impact on the systems we manage.

As these do not have an impact, a merge request can just be made on the source
repository itself.

#### For changes to existing frontend code

These will be done via the corresponding Support Project (see
[Sync Repos](./sync_repos) for a list). As those are not managed by Support
Readiness, please see the corresponding Support team documentation.

#### Deployments

These are deployed using
[Scheduled pipelines](https://docs.gitlab.com/ee/ci/pipelines/schedules.html) on
the source repository itself. They are run once monthly and are completed
automated.

All communication and discussion for these should be occurring via the related
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta)
issue.

This is the case for all sync repos using v2 typing, with the exception of
Zendesk Macros (which are deployed instantly when any changes are made to
"frontend" or "backend" code).

#### Exceptions

At times, a deployment may need to be run *sooner* than the set monthly
deployment time. In these situations, a corresponding
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta)
issue should exist. For these exceptions, Support Director approval is required.

These can be done ad-hoc as needed or in advance (such as knowing something
needs to be deployed in the middle of the normal deployment cycle).

---

**NOTE** The below information may be out of date for recent changes. If
clarification is needed, please ask Support Readiness

## Standard change management

With the standard change mangement process, we use automations to handle our
deployments. This shifts the responsibilities you have when working a request
that would utilize our standard change management process.

Through the automation, all deployments are automatically done on the first of
the month. This means when you create a request, you should determine if the
workload required for the request can be done in a proper amount of time so that
it is completed on the next deployment date. You should consider the time needed
for development, testing, testing review, and the requester's indicated
preferences in making your decision.

Once you have decided on the decision, you will add the corresponding milestone
to the issue (and subsequent MR) to indicate the deployment it belongs to. You
should also ensure the deployment date the request will fall into is
communicated to the requester.

Once you are done working the request, you would simply merge the changes into
the corresponding repository. The automation will handle it from there on the
deployment date.

#### Cutoff date

The cutoff date for new requests to be added into the upcoming deployment is 5
business days before the next deployment date. Our business days are Monday
through Friday, so if the deployment day is on a Monday, this would mean the
previous Monday is the cutoff date.

Any request filed after the cutoff date will not be able to put into the
upcoming deployment without approvals from both a Support Director and Readiness
Director.

#### Exceptions

All exceptions to the standard change management process should be done by a
Support Readiness, Operations Manager. This member of leadership will analyze
the milestone and determine what impact the exception will cause. They will then
explain what the impact of the exception would be, pinging all of the Support
Directors. The Support Directors would discuss the exception and what impact it
will have and come back with a decision.

The Support Readiness, Operations Manager will then make the needed changes to
issues/merge requests in the current milestone to accomodate the exception.

#### Service level agreements information

The following process is *required* for all Zendesk SLA changes that impact any
customer facing ticket.

1. An issue should be created in
   [support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
   using the
   [Requested Change Template](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/new?issuable_template=Requested%20Change).
1. The support team discusses the desire to change, citing reason and potential
   impact.
1. The Support Ops Manager, @jcolyer, is pinged in the issue once the
   discussion is over and a decision has been reached, with approval from at
   least ONE Senior Support Manager.
1. The Support Ops Manager will make an issue in the
   [legal tracker](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues)
   requesting the change.
1. Once legal has approved, the Support Ops Manager will announce the plan to
   make the SLA change to the support team via both slack (#support_team-chat)
   and the SWIR. It should be scheduled for the next Saturday, during
   non-business hours.
   - If legal does not approve, the Support Ops Manager will update the
     original issue and close it out.
1. The Support Ops Manager will implement the change. Following the
   implementation, the Support Ops Manager will announce the change has been
   made via both slack (#support_team-chat) and the SWIR.
1. The Support Ops Manager will update relevant documentation with the change.
1. The Support Ops Manager will update the original issue and close it out.

#### Change Deployment Scripts

Our standard change deployments are done via scripts running on ops.gitlab.net
via pileine schedules. You can locate the source code
[here](https://gitlab.com/gitlab-com/support/support-ops/support-ops-tools/change-deployment).

## Immediate deployments

Some items we work on will warrant immediate deployments. In situations like
these, merging things into the master branch should result in a deployment.

For anything that does not follow this behavior, please see the
[special situations](#special-situations).

## Special situations

#### Support team page change management

All changes to the support team page would follow the nature of
[Immediate deployments](#immediate-deployments).

#### Zendesk agents change management

For any changes relating to Support team, the
[sync](/handbook/support/readiness/operations/docs/zendesk/agents#support-team)
will handle them, and thus the
[Standard change management](#standard-change-management) can be used.

For all other cases, you will have to manually make the changes in Zendesk
itself.

#### Zendesk emails change management

As we currently do not do syncs on Zendesk emails, you will have to make the
changes in Zendesk itself.

#### Zendesk group change management

As we currently do not do syncs on Zendesk groups, you will have to make the
changes in Zendesk itself.

#### Zendesk macros change management

Due the nearly non-existent impact macros have, these follow the nature of
[Immediate deployments](#immediate-deployments)

#### Zendesk organizations change management

For changes to the Support Team organization notes can follow
[Immediate deployments](#immediate-deployments).

Changes not controlled by the
[Zendesk-Salesforce Sync](/handbook/support/readiness/operations/docs/zendesk/zendesk_salesforce_sync)
are not synced and would need to be done manually in Zendesk itself.

#### Zendesk role change management

As we currently do not do syncs on Zendesk roles, you will have to make the
changes in Zendesk itself.

#### Zendesk schedules change management

As we currently do not do syncs on Zendesk schedules, you will have to make the
changes in Zendesk itself.

#### Zendesk settings change management

As we currently do not do syncs on Zendesk settings, you will have to make the
changes in Zendesk itself.

#### Zendesk theme change management

Due to the nature of Zendesk themes, simply committing changes to the master
branch will have no effect. As such, changes to the theme must be done via
[Zendesk Guide](/handbook/support/readiness/operations/docs/zendesk/guide).

#### Zendesk webhook change management

As we currently do not do syncs on Zendesk webhoooks, you will have to make the
changes in Zendesk itself.
