---
layout: handbook-page-toc
title: 'Zendesk Provisioning/Deprovisioning'
category: Zendesk
description: 'Training documentation concerning Zendesk Provisioning/Deprovisioning'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* How to provision an agent in Zendesk
* How to deprovision an agent in Zendesk

## How to provision an agent in Zendesk

**Note**: We do not do provisioning of light agents for Zendesk Global. Please see 
[Provisioning and Deprovisioning Agents](../workflows/provisioning_deprovisioning.html)
for more details.

All requests to provison should be done via
[Access Request issues](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues).
These should align with the
[baseline entitlements](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/tree/master/.gitlab/issue_templates/role_baseline_access_request_tasks/)
of the team member. In cases where the request for provisioning falls outside
of the baseline entitlements, please reach out to a Support Ops Manager before
proceeding.

To begin, you should go into Zendesk and locate the user (if one already
exists). From there, locate the `Manage in Admin Center` link (towards the
top-left of the page) and click on it. This will open the admin dashboard,
where you can modify the user's role. After doing so, click on the blue `Save`
button.

If the user does not exist, you will need to manually create one first. To do
this, hover over the `+ Add` area at the top-left and click `Add user`. From
here, a pop-up box will allow you to enter the user's email and name. For User
type, click the bubble next to `Staff member`. This will show a dropdown to
select the user's role. After doing all this, click the black `Add` button to
create the user.

From here, you will need to edit the user's groups. Select the correct ones
based off the access request issue (make sure to change the default group for
the user).

After doing all this in Zendesk, you then need to go to the corresponding
application in Zendesk (see [Useful links](#useful-links) down below).

On this page, you want to first search for the user (using the email address)
to see if the application is already assigned.

* If you see their name show up in the search, the application is already
  assigned and you are good to move on to the next step.
* If no results, then you need to assign the application to the user. Click the
  blue `Assign` button and then select `Assign to People`. From there, search
  for the user in question by email address. Once located, click the blue
  `Assign` link next to the user. As the settings are managed via Zendesk, you
  only need to click the blue `Save and Go Back` button to complete the
  assignment.

With all that done, update the access request issue to indicate the
provisioning has been completed.

## How to deprovision an agent in Zendesk

All deprovisions should be done either via an
[Access Request issues](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues)
or via an
[Offboarding issue](https://gitlab.com/gitlab-com/team-member-epics/employment/-/issues/).

To deprovision a user, you must do the following steps:

1. Locate the user in Zendesk
1. Unassign all non-closed tickets from the user
   * If you are unsure who to assign them to, assign them to the user's
     manager.
1. Suspend the user
   * Click the down arrow to the right of `+ New Ticket` in the top-center of
     the page and then click `Suspend access`.
1. Downgrade the user to an end-user
   * Click the dropdown by `User type` at the top-left of the page and select
     `End user`.

Once that is done, you are free to indicate the deprovisioning is completed in
the issue.

## Useful links

* [Zendesk Global Applicaiton in Okta](https://gitlab-admin.okta.com/admin/app/zendesk/instance/0oa7db6n2mJ6XP0oL356/#tab-assignments)
* [Zendesk US Federal Application in Okta](https://gitlab-admin.okta.com/admin/app/zendesk/instance/0oa17cyes3JepgPZg357/#tab-assignments)
* [Zendesk Provisioning and Deprovisioning workflow](../workflows/provisioning_deprovisioning.html)
