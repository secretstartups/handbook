---
layout: handbook-page-toc
title: "Figma provisioning and deprovisioning"
description: "Guidance on how to provision/deprovision Figma"
---

## Provisioners/Deprovisioners

Figma provisioners/deprovisioners are found in the [Tech Stack YAML file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml#L1780).

While multiple departments have team members with [Editor](https://help.figma.com/hc/en-us/articles/360039960434-Roles-in-Figma#editor) roles as paid seats, the UX department is responsible for provisioning and deprovisioning all seats.

### Figma seats spreadsheet

Due to how Figma manages seats for our current [Organization](https://help.figma.com/hc/en-us/articles/360039957374-Get-started-with-organizations) plan, any existing Editor is able to add a member as a paid Editor at any time. For this reason, we utilize a [spreadsheet](https://docs.google.com/spreadsheets/d/1WjjUd3izZYGD8MDgLrJ6rI7x4tCpECLZwm-GEuC5jLE/edit#gid=0) to track approved Figma seats.

All approved seats should be listed in the spreadsheet and include:

- Date added as Editor
- First and last name
- Department
- Approval status
- Access request issue link
- Any notes that may be helpful for other provisioners, such as the corresponding true-up invoice date

This spreadsheet is also used to assist in our [quarterly audits](#quarterly-audits). Once an Editor seat is [deprovisioned](#deprovisioning), the team member should be removed from the spreadsheet.

## Provisioning

### Access request issues

Every approved Figma seat must have a corresponding access request issue with budget approval. Provisioners will be pinged in the access request issue to grant access.

As a provisioner, ensure:

- The team member's manager has approved access. Note: This is not necessary for Product Designers within the UX department as they are approved by default.
- An Editor seat is actually needed for anyone outside of Product Design. A 'Viewer only' role is often enough for a team member outside of Product Design. They can still view and comment on design files to collaborate. [Learn more about roles in Figma](https://help.figma.com/hc/en-us/articles/360039960434).
- There is budget approval for all team members outside of the UX department. Product managers may be granted an Editor seat if their team does not have a designer. If there is no mention of budget in the issue, reach out to the team member's manager to understand the budget impact and whether there was budget consideration prior to opening the access request. If the request falls outside of these guidelines, ping the VP of UX for approval.
- Approved seats are added to the [Figma seats spreadsheet](https://docs.google.com/spreadsheets/d/1WjjUd3izZYGD8MDgLrJ6rI7x4tCpECLZwm-GEuC5jLE/edit#gid=0).

### Quarterly audits

Our billing cycle includes quarterly true-ups. Each quarter, admins receive an email informing them of the upcoming invoice. This gives them an opportunity to review added seats before approving the new invoice.

To audit seats:

1. If any member was added without a `@gitlab.com` email address, remove them from the organization.
1. Add new members since the last billing cycle to the [Figma seats spreadsheet](https://docs.google.com/spreadsheets/d/1WjjUd3izZYGD8MDgLrJ6rI7x4tCpECLZwm-GEuC5jLE/edit#gid=0).
1. If a team member has an access request issue, ensure all approvals have been granted. See the section on [access request issues](#access-request-issues) for more details.
1. If a team member does not have an access request issue or you are unsure if one exists, reach out to the team member on slack using this template:
    - > Hey [name] :wave: I am responsible for Figma billing/seats and I see you were added as an Editor recently. I am trying to track down your access request issue. Does this exist? If not, I will need to revoke Editor access until a seat is approved as part of the budget.
1. If a member is confirmed as not approved, remove them from the spreadsheet.

## Deprovisioning

Deprovisioners are included on offboarding issue templates.

- To deprovision, search for the team member's email address from the `Admin settings > Members` section. Use the ellipsis (⋯) menu to the right of the member's information and select 'Remove'.
- The team member is removed from the organization regardless of their account type/role.
- If a team member was an Editor, remember to remove them from the [Figma seats spreadsheet](https://docs.google.com/spreadsheets/d/1WjjUd3izZYGD8MDgLrJ6rI7x4tCpECLZwm-GEuC5jLE/edit#gid=0).
- When a member is removed:
  - Anyone with 'can edit' access to the member's files will be able to continue editing and can move the files.
  - Their draft files stay within the organization and admins can view and manage the files.

For more information, refer to Figma's [Remove people from an organization](https://help.figma.com/hc/en-us/articles/360040453453-Remove-people-from-an-organization) documentation.
