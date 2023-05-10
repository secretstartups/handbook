---
title: Change Management
description: Support Operations documentation page for change management
canonical_path: "/handbook/support/readiness/operations/docs/change_management"
---

This page is a work in progress. Check back soon for updates.

## Standard change management

TBD

#### Service level agreements information

The following process is _required_ for all Zendesk SLA changes that impact any
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
