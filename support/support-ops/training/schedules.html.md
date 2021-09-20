---
layout: handbook-page-toc
title: 'Zendesk Schedules Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Schedules'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* A broad overview of what a Zendesk schedule is.
* Managing Zendesk schedules via the UI.
* GitLab Support Ops schedule standards.
* Holidays
* GitLab Support Ops change management process for Zendesk schedules.

## What are schedules

Schedules in Zendesk are like schedules in most other things: windows of time.
We use these to determine business hours and various regional working hours.

Within Zendesk, these have the ability to use a specific timezone and allow for
the setting of holidays.

## Managing schedules via Zendesk

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/dp4_ts_ZX_c" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

To manage schedules in Zendesk, you'll first go to the admin panel (the gear
icon on the left-hand side). From there, scroll to the bottom and select
`Schedules` under the `Settings` section. From here, you can add, edit, and
delete schedules.

### Creating a schedule

To create a schedule, click the white `Add schedule` button on the top
right-hand side. From here, you need to enter a name for the schedule. After
doing so, you can then select the timezone for this schedule to use. With that
done, select the hours for this new schedule to cover. Once you have it all
set up in the way we need, click the blue `Save` button in the bottom-right of
the screen.

### Editing a schedule

To edit a schedule, click the name of the schedule you wish to edit. From here,
you will see a screen very similar to the creation screen. Make your changes
and then click the blue `Save` button in the bottom-right of the screen.

### Deleting a schedule

To delete a schedule, hover over the schedule in question and click the three
vertical dots on the right-hand side of the schedule. Click the Delete option
and then click the red `Delete` button on the popup that appears.

## Schedule standards

To ensure all schedules we utilize are both consistent in nature and
transparent in their actions, we strive to meet some standards on all
schedules we work with.

### Naming standards

The name of the schedule should be very explicit. Try to aim to make the name of
the schedule reveal what it is to be used for.

### Timezone standards

The timezone used for schedules should be reflective of those using it. For
example, if this schedule is for those in the EMEA region, you should use a
timezone within the EMEA region. We have some preferred regions to use that you
should aim to select when appropriate. There might be situations where none of
these are correct, at which point it is best to use your best judgment.

| Timezone name | Use | Uses Daylight Savings |
|---------------|-----|:---------------------:|
| (GMT-07:00) Pacific Time (US & Canada) | For use in the AMER region or for global use | Yes |
| (GMT+02:00) Amsterdam | For use in the EMEA region | Yes |
| (GMT+10:00) Brisbane | For use in the APAC region | No |
| (GMT+00:00) UTC | For global use when DST needs to be taken into effect (avoid use if possible) | No |

## Holidays

Holidays are important settings on schedules, as when a ticket is using a
schedule and has a SLA timer, the SLA timer does not run on the holiday itself.
Here at GitLab, we have 3 holidays we put into schedules:

* Easter (this is a "movable feast" holiday, so it changes each year)
* Christmas Day (December 25th)
* New Years Day (January 1st)

No other holidays may be used without approval from both Legal and a Support
Operations Manager.

## Change management

Schedules by themselves are not "critical" when changed or modified. It is when
tickets with SLA timers are using them they become critical. Changes should not
be made to these lightly in our current setup. To ensure each runs smoothly, we
do our changes in set stages.

### Request stage

All Zendesk schedule changed should start with a request issue. This issue
should stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request itself should detail what schedule hours to use and for what
schedule (or specify this is for a new schedule). It should also detail _why_
this change needs to be made. We aim to not have extra, unused schedules in
Zendesk, so if there is no plan to use the schedule, we should not act on the
request.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Settings"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

Once the request is in good standing, you may assign it to yourself (if it is
not already) and add the tag "SupportOps::Doing" to indicate you have started
working on this.

### Testing stage

This is the easiest stage, as you merely make the changes to the schedule(s) in
the Zendesk sandbox. This should take less than a day or so, as these changes
do not require much effort.

Once this is done, update the original request issue with the following:

* A screenshot of the schedule changes in the Zendesk sandbox
* However much time it took you to implement the changes in the sandbox
  * This can be down using the `/spend X minutes`, where `X` is the number of
    minutes you spent.

Once the changes have been thoroughly tested (and are successful), make sure to
add the time you spent doing the testing to the original request.

At that juncture, update the issue with a comment to state the changes were
done in the sandbox. You should give the requester an opportunity to review the
results. Ask the requester to confirm the changes are correct.
reviewed the results.

### Pre-implementation announcement stage

Once an implementation date has been determined, you need to announce this
upcoming change. To do this, go to the Slack channel
`#support_ops-accouncements` and click the lightning bolt on the text box (this
is the shortcuts icon). From there, select `Support Ops Announcement`. This
will cause a form to pop-up. Fill out the form to generate a message in the
`#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

### Implementation stage

For this change, you simply make the changes in the production Zendesk instance.
As you have already done this in the sandbox, you should know what all to do
without any complication.

### Post-implementation announcement stage

Once an implementation has been completed, you need to announce the change. To
do this, go to the Slack channel `#support_ops-accouncements` and click the
lightning bolt on the text box (this is the shortcuts icon). From there, select
`Support Ops Announcement`. This will cause a form to pop-up. Fill out the form
to generate a message in the `#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

## Useful links

* [Zendesk Global Schedule documentation](../documentation/zendesk_global_schedules.html)
* [Zendesk US Federal Schedule documentation](../documentation/zendesk_us_federal_schedules.html)
