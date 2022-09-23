---
layout: handbook-page-toc
title: 'Pagerduty Training'
category: Miscellaneous
description: 'Training documentation concerning Pagerduty'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* Pagerduty user management
* Pagerduty escalation policy management
* Pagerduty schedule management

## Pagerduty user management

<!-- VIDEO TO BE CREATED AND WILL GO HERE -->

### Creating a user in Pagerduty

The steps to create an user in Pagerduty are:

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `Users` to go to the
   [users page](https://gitlab.pagerduty.com/users-new)
1. Click the blue `+ Add Users` button at the top-right of the page
1. Input the first and last name of the user in the first box
1. Input the email address of the user in the second box
1. Select the appropriate role
   * `Limited User` for Support Engineers, Support Managers, and Support Directors
   * `Admin` for Support Readiness
1. Click the blue `Add` button on the right-hand side

## Editing a user in Pagerduty

**NOTE** The user in question should be doing this for everything they are able.
We should only do this for things requiring admin capabilities, such as `Role`.

The steps to edit an user in Pagerduty are:

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `Users` to go to the
   [users page](https://gitlab.pagerduty.com/users-new)
1. Search for the user (email works best). Once you locate them, click on their
   name.
1. Go the appropriate tab for the changes you need to make
   * `Contact Information` for editing name, title, timezone, phone number,
     email address
   * `Notification rules` for various notification rules
   * `User settings` for login email, password, role, and schedule color
1. Click the edit box on the right-hand side of the item being modified
1. Make the changes and click the blue `Save` button

## Removing a user in Pagerduty

**NOTE**: User must not be present in _any_ schedule or escalation policy to be
deleted.

The steps to remove an user from Pagerduty are:

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `Users` to go to the
   [users page](https://gitlab.pagerduty.com/users-new)
1. Search for the user (email works best). Once you locate them, click on their
   name.
1. Click the red `Delete User` button on the right-hand side

## Pagerduty escalation policy management

<!-- VIDEO TO BE CREATED AND WILL GO HERE -->

### Creating an escalation policy

The steps to create an escalation policy in Pagerduty are:

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `Escalation Policies` to go to the
   [escalation policies page page](https://gitlab.pagerduty.com/escalation_policies)
1. Click the blue `New Escalation Policy` button on the top-right of the page
1. Enter a name for your escalation policy
1. For the description, enter something sensible that makes it clear what it is
   for. Ensure you add the issue link that caused the creation.
1. Set `Send On-Call Handoff Notifications:` to `when in use by a service`
1. For the first escalation rule:
   1. Set the `Notify the following users or schedules` to use the schedule or
      persons for the first level of escalation (if the schedule does not exist
      yet, use `Support Ops Bot` as a placeholder).
   1. Set the
      `escalates after xx min. (must be at least 1 minute for a single target.)`
      value to what is appropriate for the request.
1. Click the blue plugs button (or the blue `Add a new Escalation Rule` to add
   a second escalation rule
   1. Set the `Notify the following users or schedules` to use the schedule or
      persons for the first level of escalation (if the schedule does not exist
      yet, use `Support Ops Bot` as a placeholder).
   1. Set the
      `escalates after xx min. (must be at least 1 minute for a single target.)`
      value to what is appropriate for the request.
1. Repeat step 8 to add more escalation rules is needed
1. Click the checkbox next to
   `If no one acknowledges, repeat this policy xx times` and set it to 5
1. Click the blue `Save` button on the bottom-right of the page
1. Update [our Pagerduty documentation page](../documentation/pagerduty.html)

### Editing an escalation policy

The steps to edit an escalation policy in Pagerduty are:

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `Escalation Policies` to go to the
   [escalation policies page page](https://gitlab.pagerduty.com/escalation_policies)
1. Use the search on the right-hand side of the page to search for the
   escalation policy you wish to edit
1. Click the blue text of the escalation policy once located
1. Click the `Edit Escalation Policy` button on the top-right of the page
1. Make the needed modifications
1. Click the blue `Save` button at the bottom-left of the page
1. Update [our Pagerduty documentation page](../documentation/pagerduty.html)

### Deleting an escalation policy

**NOTE** No schedule or user can be using the escalation policy for it to be
deleted. You might need to edit it first to remove rules and persons first.

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `Escalation Policies` to go to the
   [escalation policies page page](https://gitlab.pagerduty.com/escalation_policies)
1. Use the search on the right-hand side of the page to search for the
   escalation policy you wish to edit
1. Click the blue text of the escalation policy once located
1. Click the `Edit Escalation Policy` button on the top-right of the page
1. Click the red `Delete` button on the bottom-right of the page
1. Update [our Pagerduty documentation page](../documentation/pagerduty.html)

## Pagerduty schedule management

<!-- VIDEO TO BE CREATED AND WILL GO HERE -->

### Creating a schedule

NOTE This does not add the schedule to an escalation policy. Until that is done,
he scehdule is classified as "unused".

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `On-Call Schedules` to go to the
   [schedules page](https://gitlab.pagerduty.com/schedules-new)
1. Click the blue `New Schedule` button at the top-right of the page
1. Enter a name for your schedule
1. For the description, enter something sensible that makes it clear what it is
   for. Ensure you add the issue link that caused the creation.
1. Set the timezone to something appropriate
   * For schedules used only by AMER, the timezone should be
     `Pacific Time (US & Canada)`
   * For schedules used only by APAC, the timezone should be `Brisbane`
   * For schedules used only be EMEA, the timezone should be `Amsterdam`
   * For schedules used by multiple regions, the timezone should be either `UTC`
     (preferred) or `Pacific Time (US & Canada)`
1. Configure your first layer
   1. Add the users to the layer (the order you add them is very specific, as it
      will determine the oncall order)
   1. Set the rotation type to `Weekly`
   1. Set the `Handoff time` to the first day of the rotation (set the time to
      the start time for the rotation of that specific day)
   1. If the layer is does not have persons oncall for every day of the week:
      1. Click the checkbox next to `Restrict on-call shifts to specific times`,
         which should cause a pop-up to appear
      1. Click the radio item next to
         `Restrict on-call duty to specific times-of-the-week`
      1. Set the items here to align with the specifications of the request
         * To add more, click the `+` icon to the far right of each line
         * To remove one, click the blue `X` icon to the far right of each line
      1. Click the blue `Apply` button
   1. Set the `Start time for this layer` to the date for when the schedule
      should go live (set the time to the start time for the rotation of that
      specific day)
1. Click `Add Another Layer` if multiple layers are required
1. Repeat step 7 for the new layer(s)
1. Review the rendered schedule to ensure it aligns with the specifications for
   the request
1. Click the blue `Save Schedule` button
1. Update [our Pagerduty documentation page](../documentation/pagerduty.html)
1. Update
   [the static_data.yaml file](https://gitlab.com/gitlab-com/support/team/-/blob/master/data/static_data.yaml)

### Modifying a schedule

**NOTE** These should never be scheduled for the same day, as they often impact
others. Review [our workflows](../workflows/pagerduty.html) on managing
pagerduty for more information.

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `On-Call Schedules` to go to the
   [schedules page](https://gitlab.pagerduty.com/schedules-new)
1. Search for the name of the schedule using the search-bar
1. Click on the blue name of the schedule you wish to edit
1. Click the `Edit this Schedule` button on the top-right of the page
1. Make the needed changes to the layer(s) of the schedule
1. Review the rendered schedule to ensure it aligns with the specifications for
   the request
1. Click the blue `Save Schedule` button at the bottom-left of the page
1. Update [our Pagerduty documentation page](../documentation/pagerduty.html)
1. Update
   [the static_data.yaml file](https://gitlab.com/gitlab-com/support/team/-/blob/master/data/static_data.yaml)

### Deleting a schedule

**NOTE** You cannot delete a schedule while it is still present on an escalation
policy. You need to remove it first.

1. Login to [pagerduty](https://gitlab.pagerduty.com/)
1. Hover over `People` and click `On-Call Schedules` to go to the
   [schedules page](https://gitlab.pagerduty.com/schedules-new)
1. Search for the name of the schedule using the search-bar
1. Click on the blue name of the schedule you wish to delete
1. Click the red `Delete this Schedule`
1. Update [our Pagerduty documentation page](../documentation/pagerduty.html)
1. Update
   [the static_data.yaml file](https://gitlab.com/gitlab-com/support/team/-/blob/master/data/static_data.yaml)

## Useful links

* [GitLab Pagerduty](https://gitlab.pagerduty.com/)
* [Pagerduty Users page](https://gitlab.pagerduty.com/users)
* [Pagerduty Escalation Policies page](https://gitlab.pagerduty.com/escalation_policies)
* [Pagerduty Schedules page](https://gitlab.pagerduty.com/schedules)
* [Our Pagerduty workflows](../workflows/pagerduty.html)
