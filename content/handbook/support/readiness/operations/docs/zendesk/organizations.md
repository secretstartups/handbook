---
title: Organizations
description: Support Operations documentation page for Zendesk organizations
canonical_path: "/handbook/support/readiness/operations/docs/zendesk/organizations"
---

## What are Zendesk organizations?

Organizations are simply a collection of users in Zendesk (much like groups). We
use them to also store metadata (synced from Salesforce), which is used to
determine such things as SLA, ARR, etc.

## How are organizations created and maintained?

Organizations in Zendesk are created automatically through our sync script.

> Please do not manually create organizations except in approved situation. This
> can break the ZD<>SFDC integration and cause users to receive incorrect SLAs.
> If you notice an organization needs to be created, please notify support-ops
> to rectify this.

For more information on this, please see
[Zendesk-Salesforce Sync](/handbook/support/readiness/operations/docs/zendesk/zendesk_salesforce_sync)

## Editing Organizations

As a lot relies on organizations being setup properly, this feature requires
admin level abilities currently. If an organization needs to be edited, an issue
should be filed using the
[Zendesk Global Organization](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations/-/issues/new)
or
[Zendesk US Federal Other](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal-project/-/issues/new?issuable_template=Other)
issue template.

## Organization Notes for Zendesk Global

There are two forms of organization notes we utilize:

- Support Operations organization notes
- Support Team organization notes

Support Operations organizations notes are managed via Zendesk in the `Notes`
and `Details` fields on the organization itself.

Support Team organization notes are managed via the
[organizations project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations).

Aside from Support Operations, all support managers have `Maintainer` access to
the organization project, enabling them the ability to approve and merge MRs in
this repo.

When an organization has a ticket created, a trigger calls to a webhook to
run a pipeline using the
[ticket processor](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/ticket-processor)
(on ops.gitlab.net). This then combines the Support Operations and Support Team
organization notes into internal comments on the ticket itself.

## Organization Notes for Zendesk US Federal

We manage all internal notes on Zendesk itself due to data privacy concerns. As
such, we separate them as such:

- `Notes` are for Support Team organization notes
- `Details` are for Support Operations organization notes

When an organization has a ticket created, a trigger runs to parse both of these
into internal comments on the ticket itself.

## Organizations with outdated information

If you notice an organization in Zendesk contains outdated information or the
information doesn't match what Salesforce is displaying, this would indicate the
sync integration has hit an issue. Luckily, we have the GitLab built sync script
that runs every hour to rectify such issues.

In your due diligence, you would want to create an issue via the
[Zendesk Organization Repo](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations/-/issues/new)
so support-ops can double check to ensure there is nothing blocking the sync.

## Organization fields

#### Current Zendesk Global org fields

| Name                                                                                                                     | ID            | Type      | Field Key                 |
|--------------------------------------------------------------------------------------------------------------------------|:-------------:|-----------|---------------------------|
| [Account Owner](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000133994)                  | 360000133994  | Text      | account_owner             |
| [Account Type](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000082159)                   | 360000082159  | Drop-down | account_type              |
| [AM Project ID](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000092299)                  | 360000092299  | Text      | am_project_id             |
| [ARR](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/1424327)                                 | 1424327       | Decimal   | aar                       |
| [Contact Management Project ID](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/7385051495324) | 7385051495324 | Numeric   | cmp_id                    |
| [Customer Success Manager](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000134054)       | 360000134054  | Text      | technical_account_manager |
| [Dedicated SGG](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/5739023764636)                 | 5739023764636 | Drop-down | dedicated_sgg             |
| [Escalated State](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/7765454787740)               | 7765454787740 | Checkbox  | org_in_escalated_state    |
| [Expiration date](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360001527120)                | 360001527120  | Text      | expiration_date           |
| [GitLab Plan](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/1288848)                         | 1288848       | Drop-down | support_level             |
| [Health Score](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/1900000011334)                  | 1900000011334 | Drop-down | health_score              |
| [Manual Support Upgrade](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000209840)         | 360000209840  | Checkbox  | manual_support_upgrade    |
| [Number of Seats](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000171880)                | 360000171880  | Decimal   | seats_decimal             |
| [Region](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000329019)                         | 360000329019  | Drop-down | org_region                |
| [Restricted Account](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/5661401607452)            | 5661401607452 | Checkbox  | restricted_account        |
| [Sales Segmentation](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000080280)             | 360000080280  | Text      | sales_segmentation        |
| [Salesforce ID](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/1288008)                       | 1288008       | Text      | salesforce_id             |
| [SFDC Short ID](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/1900000011354)                 | 1900000011354 | Text      | sfdc_short_id             |

#### Current Zendesk US Federal org fields

| Name                                                                                                                               | ID            | Type      | Field Key                 |
|------------------------------------------------------------------------------------------------------------------------------------|:-------------:|-----------|---------------------------|
| [Account Owner](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360000704052)            | 360000704052  | Text      | account_owner             |
| [Account Type](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360001094611)             | 360001094611  | Drop-down | account_type              |
| [AM Project ID](https://gitlab.zendesk.com/admin/people/configuration/organization_fields/360000092299)                            | 360000092299  | Text      | am_project_id             |
| [ARR](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360001433772)                      | 360001433772  | Numeric   | arr                       |
| [Customer Success Manager](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360000704072) | 360000704072  | Text      | technical_account_manager |
| [Expiration date](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360002828652)          | 360002828652  | Text      | expiration_date           |
| [Health Score](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360002828632)             | 360002828632  | Drop-down | health_score              |
| [Market Segment](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360000712231)           | 360000712231  | Drop-down | market_segment            |
| [Number of Seats](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360000704032)          | 360000704032  | Numeric   | number_of_seats           |
| [Salesforce ID](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360000712211)            | 360000712211  | Text      | salesforce_id             |
| [SFDC Short ID](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360002828612)            | 360002828612  | Text      | sfdc_short_id             |
| [Solutions Architect](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360001525791)      | 360001525791  | Text      | solutions_architect       |
| [Support level](https://gitlab-federal-support.zendesk.com/admin/people/configuration/organization_fields/360000703992)            | 360000703992  | Drop-down | support_level             |

#### Creating organization fields in Zendesk

To create an organization field in Zendesk, you first need to go to the Admin
Center ([Zendesk Global](https://gitlab.zendesk.com/admin/) /
[Zendesk US Federal](https://gitlab-federal-support.zendesk.com/admin/)). From
there, you need to go to the Organization fields page (People > Configuration >
Organization fields).

After doing so, you will then click the `Add field` button on the top-right side
of the page. This will then load up the new organization field page.

From here, you will:

1. select the type of field
1. enter the display name for the field
1. enter the field key for the field
   - **Note** This cannot be edited once the field is created
1. enter a description for the field
1. enter the field specific values

After doing this, you will then click the blue `Save` button at the bottom-right
of the page.

#### Editing organization fields in Zendesk

To edit an organization field in Zendesk, you first need to go to the Admin
Center ([Zendesk Global](https://gitlab.zendesk.com/admin/) /
[Zendesk US Federal](https://gitlab-federal-support.zendesk.com/admin/)). From
there, you need to go to the Organization fields page (People > Configuration >
Organization fields).

After doing so, locate the field in question and click on the Display name for
it. This will bring up the organization field editor page.

From here, make the needed changes and then click the blue `Save` button at the
bottom-right of the page.

#### Deactivating organization fields in Zendesk

There are actually two ways to deactivate a organization field in the Zendesk
UI. The quicker way is to go to the organizaton fields page, locate the
organization field in question, and click the three vertical dots on the
right-hand side. This will bring up a sub-menu, which contains the option to
`Deactivate`. Click that option and the organization field will be deactivated.

The alternative way to deactivate an organization field in the Zendesk UI is
from within the organization field editor page. At the top right, click the
Actions button to show a submenu with the `Deactivate` option.

## Organization Permissions

By default, organizations are setup so that the users within it can only see and
comment on their own tickets. This security measure often doesn't work for some
organizations though.

Because of that, we have the ability to setup Shared Organizations, a term
meaning the users in an organization have heightened permissions and can do see
and/or comment on tickets that are not theirs.

#### Shared Organization management

A shared organization is one in which the end-users in said organization have
heightened permissions in regards to tickets created in the organization. The
options available to this are:

- All users can view all tickets but not add comments
- All users can view all tickets and add comments to all tickets
- Specific users can view all tickets but not add comments

To enable this for an organization, a **new** ticket must be filed to Support
Operations using the correct form fields that specific the desire to have a
shared organization setup. This is required as there is a security risk involved
in using a shared organization and the organization itself must accept this
security risk before we can proceed.

Once the ticket comes in, review the fields used on the ticket to determine the
exact setup desired.

##### All users can view all tickets but not add comments

To set this up, go to the organization's page in Zendesk. From there, locate the
`Users` field towards the top-left of the page. Click the drop-down next to it
and select `Can view all org tickets`. Click off the box to save the changes.

Ensure the new drop-down that appears says `...but not add comments` before
concluding the work.

##### All users can view all tickets and add comments to all tickets

To set this up, go to the organization's page in Zendesk. From there, locate the
`Users` field towards the top-left of the page. Click the drop-down next to it
and select `Can view all org tickets`. Click off the box to save the changes.

You will then click the new drop-down that appears and select the option
`...and add comments`. Click off the box to save the changes.

##### Specific users can view all tickets but not add comments

To set this up, you need to locate each user in question in Zendesk first. Once
on the user page, locate the field `Access` towards the top-left of the page.
Click the drop-down next to it and select `Can view tickets from user's org`.
Click off the box to save the changes.

##### Removing a shared organization setup

To remove a shared organization setup, follow the above guides, but instead
ensure the drop-downs use the default options:

- Organizatin: `Can view own tickets only`
- User: `Can view and edit own tickets only`

## User association

There are specific processes and policies around this, so please see
[User Association](/handbook/support/readiness/operations/docs/zendesk/user_association)

#### User Association via Domain Matching

While Zendesk does have the functionality to do domain matching, we have
determined that the security risks inherent in this feature outweigh the
benefits that would be received from its use.

Because of this decsion, as of August 2020, Support Ops will not longer apply
a domain on a Zendesk organization. Any organization that had this applied
prior to this date will have it as a legacy feature.

Because this decision was based on security risks, exceptions will not be made.

## Special situations

Please see our
[Gratis Support requests documentation](/handbook/support/readiness/operations/docs/policies/gratis_support)
for more info.

## Change management

As the organization changes are unique in deployment, please see
[Zendesk organizations change management](/handbook/support/readiness/operations/docs/change_management#zendesk-organizations-change-management)
for more information.

#### Labels to use

For all issues and MRs involving organization fields, the label
`Support-Ops-Category::Orgs and Users` should be used.

#### Change criticality

Due to wildly varying nature and impact adding/editing/deleting Zendesk
organizations can impose, all issues/MRs related to Zendesk organizations need
to have the their criticality
[manually determined](/handbook/support/readiness/operations/docs/change_criticalities#determining-criticality)
