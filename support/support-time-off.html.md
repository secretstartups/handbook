---
layout: handbook-page-toc
title: Support Team Member Time Off
description: Guidelines for how time off applies to Support team members and what actions need to be taken.
---

## Support Team Member Time Off

The Support Team follows [GitLab's paid time off policy](/handbook/paid-time-off).
We balance that with the need to deliver support to our customers every day.
This page is intended to provide all Support Team Members with an understanding
of what we need to do to achieve that balance, making it possible for all to
take time off as needed and desired, while we as a team continue to deliver
amazing support and service to our customers.

There is a special point that needs to be emphasized, and that is that time off
for any team member only serves its purpose *if that person truly takes the time
off*. Nobody should feel pressure or the need to check Slack, email, or anything
else associated with work during their time off. **Especially when you are taking
time to be on holiday or to be with family or friends, please, in the timeless
words of the snow queen, Elsa, "let it go."**


### One-time setup actions

1. Be sure you have access to the
[**Support - Time Off**](https://calendar.google.com/calendar/embed?src=gitlab.com_as6a088eo3mrvbo57n5kddmgdg%40group.calendar.google.com)
team calendar.
   1. You should have been granted access during Support Onboarding. If you don't have it, verify whether you are part of the Support Google Group (supportteam@); if you are not, ask to be added (as per the role based entitlements) via the #support_operations Slack channel (cc @jcolyer).

1. Set up the Google Calendar integration with PTO by Roots, so that you do not need to populate your personal and "Support - Time Off" calendars manually.
   1. In Slack, click the `+` sign next to 'Apps' at the bottom of the left sidebar
   1. Search for 'PTO by Roots' and click 'View'
   1. Under 'Home', click on 'Your Events' to show a dropdown
   1. Click on 'Calendar Sync' under the Settings break
   1. Click on 'Connect your Calendar' and complete the actions to sync your calendar to PTO by Roots
      - You will see a 'Success! Your calendar has been connected.' message and
        your calendar listed under 'Your synced calendar' in PTO by Roots on Slack
      - ***NOTE: this also serves to block your availability in Calendly, and ensures your OOO is included in the [regional capacity calendars](https://gitlab.com/gitlab-com/support/toolbox/support-calendar)***
   1. After your personal calendar is linked, click 'Add calendar' under
   'Additional calendars to include?'. The 'Support - Time Off' calendar ID is
   `gitlab.com_as6a088eo3mrvbo57n5kddmgdg@group.calendar.google.com`

1. Verify the following calendars are shared with you. These are shared with the Support Team Google Group:
   1. [Support OOO - AMER](https://calendar.google.com/calendar/u/0/embed?src=c_rt0g4ptj1nut4045lcgsm21chg@group.calendar.google.com)
   1. [Support OOO - APAC](https://calendar.google.com/calendar/embed?src=c_408bhp8a8j579lqr99j552u21s%40group.calendar.google.com)
   1. [Support OOO - EMEA](https://calendar.google.com/calendar/u/0/embed?src=c_ev56c9rgjd9l1sn291i368jn78@group.calendar.google.com)

## Choosing and recording time off

Please take time off whenever you need it.

A little thoughtfulness on everybody's part will go a long way toward making it
possible for everyone to take their desired days off. As you look to plan your
time off, please:

- ensure you know the [company wide paid time off guidelines](/handbook/paid-time-off/#a-gitlab-team-members-guide-to-time-off)
- consider a different time off schedule if your [regional capacity calendar](https://gitlab.com/gitlab-com/support/toolbox/support-calendar) shows that on any of the days you would be absent the regional team
  would be short by 20% or more of its people
- schedule your time off as far in advance as you can, especially for days that
  may be popular, are [holidays](#how-support-handles-holidays), or that are particularly important to you
- don't lock yourself into nonrefundable travel itineraries before you've taken
  steps such as the above to be sure you can get the planned days off
- if possible, plan your time off to avoid disruptions to the various rotations
  such as on-call
  
## Preparing for time off

When you are approaching a planned absence from work, it is your responsibility
to take reasonable actions to prepare the team and your customers for your
absence. By making these preparations, you will also be making it easier for
yourself to disconnect from work and make your time off effective.

If you're taking off **less than half a day,** you do not need to make entries in PTO by Roots or the Support Time Off Calendar, but please consider updating your Slack status. Also consider blocking the interval on your personal Google Calendar, so no one tries to book a pairing/meeting with you during that time.

If you're taking off **a half day or more,** enter the time off in PTO by Roots.

Follow the guidance below to prepare yourself, your customers, and your colleagues.

### Coverage for roles

If you are assigned to any PagerDuty shifts (such as on-call) during the time off, arrange for coverage:

1. Find a volunteer to cover for you; get help from your manager if necessary.
1. [Create the appropriate override in PagerDuty](https://support.pagerduty.com/docs/editing-schedules#create-and-delete-overrides).

### Coverage for assigned tickets

Tidy your queue before going on PTO. As guidelines cannot cover every case, this section is meant to provide guidance for you to think critically about what is required for each ticket you're assigned to:

1. Is a customer waiting on you? Check with the customer.
   As per the [working with tickets workflow](/handbook/support/workflows/working-on-tickets.html#keep-in-mind),
   aim to update a customer daily. If your PTO will prevent a timely update, ask the customer whether they
   would prefer to pause the ticket till your return or have someone else step
   in to work with them. If they want to pause, put the ticket on-hold.
   Otherwise, find a new assignee.
1. For all tickets that won't be on hold, use the `OOO Ticket Handover` macro, and update the macro as outlined below.
- For `Ticket Summary`, include:
   - A concise statement of the problem or request
   - A brief explanation of what's been done so far - what's been tried, what
     progress has been made
   - The current status - what remains to be done
- For `Potential next steps`:
   - The plan - expected next steps and the reasons behind them
- For `Extra Details`:
   - Any links to issues or documents that might be helpful and are relevant to the issue

### If your absence is three or more business days

1. Notify the team of your upcoming absence by adding an item in the regional team-meeting agenda the week before your absence.
1. Change your workflow in advance of your absence:
  1. A week in advance: Start thinking about whether you may need to hand off tickets, and pair with others to get them up to speed.
  1. Two to three days in advance: stop taking new tickets.
   1. Work to resolve and close as many of your assigned tickets as possible
   1. Contribute more to first-responses and other people's tickets - internal comments, pairing
      sessions - to make up for not taking new tickets of your own
1. Hand over your assigned tickets by following the [OOO handover workflow](/handbook/support/workflows/ooo-handover.html)
1. Update your [GitLab status](https://docs.gitlab.com/ee/user/profile/index.html#set-your-current-status) to ensure you're not auto-assigned to GDPR requests:

   - The status text should contain one of the following strings: 'OOO', 'PTO', 'Parental Leave', or 'Friends and Family'
   - And the emoji should be one of the following: `:palm_tree:`, `:beach:`, `:beach_umbrella:`, `:beach_with_umbrella:`, `:ferris_wheel:`, `:thermometer:`, `:face_with_thermometer:`, `:red_circle:`, `:bulb:`, `:sun_with_face:`.

## How Support Handles Family and Friends Days

During [Family and Friends Days](/company/family-and-friends-day/#upcoming-family-and-friends-days) GitLab Support continues
to operate as normal. During the month of a Family and Friends Days, choose a day off to spend as you please. 
Please follow the same guidelines as you would in [Choosing and Recording Time Off](#choosing-and-recording-time-off).

## How Support Handles Holidays

During Holidays, GitLab Support continues to operate as normal. Always book holidays as required by your locality. For
non-statutory holidays, please follow the same guidelines as you would in [Choosing and Recording Time Off](#choosing-and-recording-time-off).

### Holiday time off ticket management

Guidance around ticket handling over global holiday time off is slightly different, because of the potentially increased impact on the Support team.

The following peak holidays have the greatest potential to affect coverage:
- Australia Day (26-January)
- Republic Day (26-January)
- Anzac Day (25-April)
- International Workers Day (1-May)
- Memorial Day (last Monday in May)
- Independence Day (1-July to 4-July)
- US Thanksgiving Day (4th Thursday of November)
- Immaculate Conception Day (8-Dec)
- Christmas Day, St Stephens Day, Boxing Day, New Years Day and Day After New Years (Period between 24-Dec to 2-Jan)
- Holidays that vary in dates each year that are celebrated in multiple countries:
   - Easter Sunday (late March to early April)
   - Easter Monday (late March to early April)
   - Whit Monday (May or June)
   - Ascension Day (May)
   - Labour Day (first Monday in September)
   
### If you are planning to take time off during peak holidays
1. Please do your best to resolve any assigned tickets you have in your queue.
1. Communicate with your customers to let them know you’ll be away, and when they can expect you to return. 
    - Many of our customers may likely be on the same holiday schedule and will be fine with resuming work on a ticket when you both return.
    - Otherwise, add any tickets that will require continued work during the holiday to the `Needs Collaboration` view instead of the `Handover Needed` view, *unless you plan to be out for an extended period of time* (i.e. more than 3 days). 
    - If you do not get a response from the customer before your holiday time off, add the ticket to `Needs Collaboration`.
    - This keeps the ticket in your assignment, but gives the wider team visibility into any tickets that may need attention while you’re away. 
1. If you anticipate that no action will be necessary over the holiday on any tickets, they do not need to be added to the `Needs Collaboration` view. 

### If you are working on a holiday
1. Continue to prioritize FRT first, and then management of your own tickets.
1. Please pay **extra** attention to the `Needs Collaboration` view. Help progress any tickets while the original assignee is away.
1. Copy (cc) yourself on the ticket to provide continued help throughout the day.
1. Summarize any progress or next steps for the original assignee so that they know where to pick things up from on their return.
1. Continue to help as you can with the `Handover Needed` view.


## General Tips

In addition to the company-wide tips in
[Communicating Your Time Off](/handbook/paid-time-off/#communicating-your-time-off),
take a look at these tips to increase your ability to disconnect from work,
truly make the most of your time off, and make it easier to return to work:

1. Unsubscribe from any MRs that will likely resolve while you're away, and then
   you won't have to deal with all the emails from them when you return.
1. Set up some email filters to move emails into buckets that you can address
   one-at-a-time when you return.
1. Disconnect yourself from Slack and Gmail in any of these ways:
   *NOTE: PTO by Roots is supposed to turn off Slack notifications on your phone and
   set DND mode. But just in case, you may want to do one of these:*
   1. log out from Slack and Gmail on your phone, or
   1. remove Slack and Gmail from your phone, or
   1. pause the Slack and Gmail apps on your phone
   1. manually configure Slack and Gmail to send no notifications on your phone

## Re-connect after time off

Please consider adding an item in the Support Week in Review after you get back to let the rest of the
team know what you've been up to!
