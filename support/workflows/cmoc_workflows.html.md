---
layout: markdown_page
title: How to Perform CMOC Duties
category: On-call
description: "Describes the role and responsibilities for CMOC rotation in Support Engineering"
---

- TOC
{:toc}

----

## Introduction

As the [Communications Manager on Call (CMOC)](/handbook/engineering/infrastructure/incident-management/#roles-and-responsibilities) it's your job to be the voice of GitLab during an incident to our users, customers, and stakeholders. To do this you must communicate with them through our status page, [Status.io](https://status.io).

The CMOC rotation is one of the rotations that make up [GitLab Support On-call](/handbook/support/on-call).

The basics of how to create, update, and close incidents in Status.io are covered by their [Incident Overview](https://kb.status.io/incidents/incident-overview/) documentation. However, this document covers how we specifically use Status.io to perform those tasks.

You may also be asked to [contact a user](internal_requests.html#contact-request) on behalf of Infrastructure or Security, which may or may not be related to an Incident.

## Things To Know

Before getting into the actual process of managing an incident, the following sections should be noted.

### How Are Incidents Declared?

Infrastructure uses [Woodhouse](https://gitlab.com/gitlab-com/gl-infra/woodhouse) to [declare incidents through Slack](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#reporting-an-incident). Doing so will:

1. Automatically page the EOC, IMOC, and CMOC.
1. Create an issue for the incident in the [gl-infra/production](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/) issue tracker.
1. Provide a link to the Zoom call for the incident.
1. Create a dedicated Slack channel for the incident.

This information will all be posted to Slack in the #incident-management channel by Woodhouse and it'll look similar to the following example.

![Incident declared by Woodhouse](/images/support/cmoc_incident_declared.png){: .shadow}

GitLab team members are encouraged to use this method of reporting incidents if they suspect GitLab.com is about to face one.

### Status.io Updates

The following should be noted specifically regarding making updates to Status.io.

#### Frequency of Updates

Status.io should be updated whenever we have new information about an active incident that our stakeholders should be aware of. Outside of that, it should be updated at a consistent rate depending on the severity of the incident as outlined in the table below.

Once you join the incident Zoom call, take note of any updates that have been made to Status.io and the time they were made at. Set a timer to remind yourself and stick to the time intervals below unless you make a note of how long it will be until the next status update. For example, if you're in "monitoring" it may be appropriate to specify an hour before the next update.

| Incident Status | severity::1 Update Frequency | severity::2 Update Frequency | severity::3/severity::4 Update Frequency |
|--|--|
|Investigating| 10m | 15m | 15m |
| Identified | 10m | 30m | 30m |
| Monitoring | 30m | 60m | 60m |
| Resolved | No further updates required |

#### What If I Don't Know What to Say?

- Provide a generic update based on the best information you have:

- _We're seeing elevated error rates on GitLab.com, investigation is underway in: link_
- _Some users are reporting connection issues to GitLab.com, we're working on it in: link_
- Craft a draft of what you think is correct. Whenever possible use ["I intend to..." language](https://www.youtube.com/watch?v=7KnPjakwqeI) when communicating with the IMOC and EOCs:

  - _@IMOC - I'm going to post: "We've isolated the network problem to the APAC region and are working with Cloudflare support to get it resolved_.
  - _"In my next update I'm going to move the status to monitoring"_
- Bias to action - you can post another update if there was an error in your last update.

- If there are no material updates to report, say something so that people know we care and are working on it. Below are a few example messages:
   1. _"No material updates to report. We're discussing if we should restore from backup or let the replica catch up first but we have not made a decision."_
   1. _"No material updates to report. We tried starting the Gitaly servers but we're still missing connectivity."_
   1. _"No material updates to report. We are doing a handover to a new CMOC since the current CMOC has been at it for three hours straight."_
   1. _"No material updates to report. We would like to thank Google for the #hugops tweet we received. LINK"_

- If you really don't know, it really is okay to ask!

### EOC vs. IMOC

In later sections of this workflow it's called out that at times you should be asking the IMOC of the incident for permission to move an incident between certain states (updating, monitoring, resolving). On the rare occasion that an incident does not have an IMOC, you may ask the EOC instead.

### Finding Related Tickets

In some circumstances, the IMOC may ask you to find the number of tickets that an incident may have raised in order to evaluate the impact of the incident.

Because the default views will only show unassigned tickets in your region, start with using this [Zendesk Search](https://gitlab.zendesk.com/agent/search/1?type=ticket&q=created%3E4hours%20order_by%3Acreated_at%20sort%3Adesc%20group%3Anone%20group%3A%22support%22%20-form%3Abilling%20-form%3Asecurity) to find all recent tickets.

Alternatively, you can paste the following search string into the Zendesk search bar (useful if you are using Zendesk Quicktab extension): `created>4hours order_by:created_at sort:desc group:none group:"support" -form:billing -form:security`

This shows new tickets created in the previous 4 hours - change the range if the incident began earlier than that.

### Tagging Tickets

If there is any customer contact regarding an incident regardless of severity, you should create an incident tag in Zendesk as soon as possible. You can check for customer tickets by using the tips above, by scanning the FRT & Free ticket queue and validating the tickets, or by asking the wider Support team. You can create a tag on a ticket directly by finding the `tags` field and using the format `com_incident_####`. Replace #### with the production incident number of the issue. Once you've added the tag, submit the ticket with an appropriate `Incident First Response` macro and the tag will become available to use on other tickets.

Tagging tickets can be done throughout the incident process but the CMOC should check the queue for accurate tagging during the incident resolution stage. The tagging of tickets is useful for gauging support impact, ease of finding related tickets for active incident troubleshooting, and ease of finding related tickets for historical reference.

For details on tagging and tracking incidents, please see [Tracking Incidents](tracking_incidents.html) workflow.

### Reviewing Past Incidents

Keep in mind that you can always [review past incidents](https://status.gitlab.com/pages/history/5b36dc6502d06804c08349f7) if you need examples or inspiration for how to fill in the details for a current incident.

### Contacting a User

Whether related to an ongoing incident or not, infra or security may ask you to reach out to one or more users if they detect unusual usage. Please follow the [internal requests workflow](internal_requests.html#contact-request) to log the request.

## Setting Up Incidents

As the CMOC you'll guide the incident through the following three stages.

1. Stage 1: **Incident Creation** - During this stage we're creating the actual incident in Status.io, linking up with Reliability via the incident Zoom call, and notifying the GitLab Social team, if necessary.
1. Stage 2: **Incident Updates** - During this stage we're following along with the work being performed by the EOC and any assisting engineers to resolve the incident and making updates to Status.io along the way while adhering to the [Frequency of Updates](#frequency-of-updates) schedule.
1. Stage 3: **Incident Resolution** - During this stage we're focused on setting the incident to **Monitoring** in Status.io for a period of time to ensure that the issue does not recur before we close it out, eventually setting the incident to **Resolved**, and adding a link to the post-mortem issue in Status.io.

The following sections outline how to perform each of the steps within these stages.

### Stage 1: **Incident Creation**

The following steps should be taken immediately after receiving a PagerDuty page for an incident.

1. Acknowledge the PagerDuty page.
1. Join the incident Zoom call, provided by [Woodhouse](#how-are-incidents-declared).
1. Create the incident in Status.io.
1. Notify internal stakeholders, if necessary.
1. Add `~Incident-Comms::Status-Page` label to the GitLab Incident Issue
1. Resolve the PagerDuty page.

#### PagerDuty Status

{:.no_toc}

- **Triggered** - "An incident exists that requires the attention of a CMOC"
- **Acknowledged** - "I have seen the page and am on my way to the incident room"
- **Resolved** - "A tracking issue has been created, the status page has been updated and I am actively engaged in the incident management process"

**NB:** "Resolved" in PagerDuty does not mean the underlying issue has been resolved.

#### 1. Join The Incident Zoom Call

Before you create an incident in Status.io you should join the Zoom call that will be used by all GitLab team members involved in the incident. A link to the call is provided in the incident declaration by Woodhouse in the #incident-management channel.

Your role as CMOC while in this room is to follow along while the incident is worked and make updates to Status.io either when asked or when it's necessary. Oftentimes chatter in this room will be lively, especially in the early stages of an incident while the source of the issue is being discovered. Use your best judgment on when it's appropriate to speak up to avoid vocalizing at inopportune times. You can always ping anyone on the call through Slack if you need to ask a non-urgent question about the situation.

#### 2. Create the Incident

After logging in to Status.io you should be met with the dashboard that displays various statistics about our current status. A new incident can be created by clicking `New Incident` along the top bar.

![New incident](/images/support/cmoc_new_incident.png){: .shadow}

This takes you to the new incident screen where you'll be asked to fill in the details of the incident. The following is an example of what a new incident would look like if we're experiencing an issue with a delay in job processing on GitLab.com.

![Incident details](/images/support/cmoc_incident_details.png){: .shadow}

Change the following values:

`Title` - Titles should be brief and concise. The incident title should answer the question: **In simple terms, what is the issue?**

`Current State` - In nearly all cases an incident should be created in the `Investigating` state. If it's been communicated to you that we're aware of what is causing the current incident this could be set to `Identified` from the beginning.

`Details` - In keeping with our value of [transparency](/handbook/values/#transparency), we should go above and beyond for our audience and give them as much information as possible about the incident on its creation. This field should **always** include a link to the incident issue from the [production issue tracker](https://gitlab.com/gitlab-com/gl-infra/production/issues) so that our audience can follow along.

`Incident Status` - When creating a new incident this will never be `Operational`. The status of an incident depends entirely on its scope and how much of the platform it's impacting.

`Broadcast` - Always check each box in this section.

`Message Subject` - Always leave this at its default value.

`Affected Infrastructure` - This should almost always be unchecked so that the value of the `Incident Status` field is only applied to the specific aspects of the platform that are affected by the incident. In the example above we're only experiencing an issue with job processing so only `CI/CD` is selected.

#### 3. Notify Stakeholders

Once the severity of the incident has been set and it is on our status page, the CMOC should notify internal stakeholders using the Incident Notifier application in Slack. Internal stakeholders should be notified any time there is a public post on the status page, regardless of severity.

This application prompts you to fill out a form and then posts its contents automatically to a direct message to the submitter along with the `#community-relations` and `#customer-success` channels, notifying them of the incident. To engage it:

1. Click the lightning bolt in the message composition box within `support_gitlab-com` and select `Incident Notifier`.

   ![Incident Notifier Application](/images/support/cmoc_incident_notifier.png){: .
shadow}

1. Fill in all of the details.
1. Click `Submit`
1. Copy the contents of the form that are direct messaged to you by Slackbot and paste them in a message to the `#e-group` channel.
1. Start a thread off of your initial message and provide updates to the incident after you make them to the status page.

> **Note**: You are not required to post updates to the Incident Notifier posts made to Slack channels other than `#e-group`.

This process should be followed when all of the following are true:

- CMOC escalation to an incident has occurred
- Public notification is occurring or the IMOC has determined the incident requires e-group notification.

#### 4. Label the GitLab Incident Issue to reflect customer communications status

It is important that we are able to differentiate incidents which included outbound Status page and related notificatons from those incidents which were deemed less impactful to our customers. This can be useful both in filtering for active incidents which include outbound notification as well as for after-incident reporting.

Whenever a GitLab service incident includes the use of a Status Page incident this should be identified on the GitLab Incident Issue. See this, and other uses of this scoped label in the [Incident Management section of the handbook](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#labeling).

1. Add the `~Incident-Comms::Status-Page` scoped label to the GitLab Incident Issue

### Stage 2: **Incident Updates**

When updating incidents, there are 2 actions to take:

1. Update the incident.
1. Update the E-Group slack thread if the update is material in nature.

#### 1. Update the incident

To update an active incident, click the incidents icon from the dashboard.

![Active incident dashboard icon](/images/support/cmoc_update_incident_dashboard.png){: .shadow}

Then click on the edit button next to the incident.

![Incident edit button](/images/support/cmoc_update_incident.png){: .shadow}

Change the following values:

1. `Current State` - Change this depending on the current state of the incident and whether or not we've identified the cause (Identified) or implemented a fix (Monitoring).
1. `Details` - Be as descriptive as possible about the update and include a link to the production issue.
1. `Broadcast` - Check all boxes.
1. `Current Status` - If the incident has improved or worsened update this value. If neither, leave it as it was from when the incident was created.
1. `Set Status Level` - Uncheck this and keep only the affected component selected unless the incident has increased in scope and now affects other components of our infrastructure. **IMPORTANT** These must be checked individually as in the screenshot below.

A ready to be published update should look similar to the following.

![Incident update](/images/support/cmoc_post_incident_update.png){: .shadow}

Make sure to [verify](https://wordcounter.net/character-count) the update length before publishing it. If it exceeds 280 characters, the update won't be published on twitter with no failure notification from `status.io`.

After publishing the update, visit the live [GitLab Status Page](https://status.gitlab.com) to verify the update went through and looks clear.

#### 2. Update the E-Group

1. When the update would help keep the e-group informed of progress, copy/paste the update in to the `#e-group` slack thread that was created in Stage 1.

It is not always necessary to perform this step.  The goal is to equip the e-group with information that allows them to know approximately where we are in the process of resolving the incident. For example, "no material update" type messages do NOT need to be shared on the e-group incident thread.

### Stage 3: **Incident Resolution**

When it comes time to close an incident out as resolved, the following flow will generally be used.

1. Switch to a monitoring state for a time.
1. Resolve the incident.
1. Notify the E-Group that the incident is resolved.
1. Add a link to the production issue to the post-mortem section of the incident.

As noted in the specific sections below, some of these steps are situational and may not be used for every incident.

#### 1. Begin Monitoring (Situational)

Once the component affected by the incident has returned to operating normally we will often switch the incident over to a monitoring period to ensure that the problem does not recur. The monitoring period typically lasts for 30 minutes by default, but it can vary and a different amount of time may be requested by the IMOC. **It may also be requested that the monitoring period be skipped entirely.**

If a monitoring period will be used simply edit the incident, and configure the update similar to the following.

![Switch to monitoring](/images/support/cmoc_monitoring_stage.png){: .shadow}

Take special note of the changes made to the following fields at this stage.

1. `Current State` - Change to `Monitoring`.
1. `Details` - Along with any information specific to the incident be sure to mention that all systems have returned to normal operation, that we're monitoring in order to ensure the issue doesn't recur, and provide an estimate for how long we'll be monitoring before we resolve the incident. For example:

   > *While all systems are online and fully operational, out of an abundance of caution we'll leave affected components marked as degraded as we monitor. If there are no recurrences in the next 30 minutes, we'll resolve this incident and mark all components as fully operational.*

1. `Incident Status` - At this point, the affected component should be back to normal operation. However, to be clear that we're still in the incident management process we will **not** flip this back to `Operational` until we leave the monitoring state.

#### 2. Resolve Incident

Once we're confident that systems have returned to normal operation, **the IMOC has given the all-clear**, and we've completed a monitoring period (if we chose to) of the incident we should mark it as resolved.

Once these conditions are met, make an update to the incident and change the following fields.

1. `Current State` - Change to `Resolved`.
1. `Details` - State that the issue has been resolved and that systems have returned to operating normally. Be sure to also include a link to incident issue even if you've already done so in previous updates so that any users who missed them know where to go for more info.
1. `Incident Status` - Change to `Operational`. **IMPORTANT**: Make sure the "Apply status level to all affected infrastructure" box is checked.
1. Double check the [status page](https://status.gitlab.com) to make sure everything looks good.

Before resolving the incident your draft should look similar to the following:

![Resolve incident](/images/support/cmoc_resolve_incident.png){: .shadow}

#### 3. Notify E-Group of Resolution

After the incident has been resolved on the status page, edit the Slack message you sent to `#e-group` and provide a final update that the incident has been resolved. If you're resolving an incident that was created by another CMOC, post this message in a thread instead and react to the post with the `:white_check_mark:` emoji.

#### Add Post-Mortem

A review will be conducted by production engineering for every incident that matches a [certain criteria](/handbook/engineering/infrastructure/incident-management/#incident-review). Status.io allows us to add a link to a post-mortem after an incident has been resolved which will then be viewable on our status page for that specific incident.

Do the following to add a post-mortem to a resolved incident:

1. From the dashboard click the `Incidents` button.

   ![Active incident dashboard icon](/images/support/cmoc_update_incident_dashboard.png){: .shadow}

1. Scroll down and click on the title of the incident.

   ![Incident history list](/images/support/cmoc_post_mortem_incident_list.png){: .shadow}

1. Click `Add Post-Mortem` and supply the link to the issue being used for the incident review, this is usually the same issue that was opened for the incident.

   ![Add post-mortem link](/images/support/cmoc_add_post_mortem.png){: .shadow}

## Setting Up Maintenance Events

Infrastructure will at times plan scheduled maintenance events for GitLab.com, some of which will directly impact users. New maintenance events are announced as issues created in the [gl-infra/production](https://gitlab.com/gitlab-com/gl-infra/production/-/issues) issue tracker using the [external_communication.md](https://gitlab.com/gitlab-com/gl-infra/production/-/blob/master/.gitlab/issue_templates/external_communication.md) issue template accompanied by the [**Scheduled Maintenance**](https://gitlab.com/gitlab-com/gl-infra/production/-/labels?utf8=%E2%9C%93&subscribed=&search=scheduled+maintenance) label.

In the event that a maintenance will affect users, infrastructure can request that the maintenance be visible on our status page, and if required, that the CMOC actively provide status updates during the maintenance window. In these cases infrastructure will apply the [**CMOC Required**](https://gitlab.com/gitlab-com/gl-infra/production/-/labels?utf8=%E2%9C%93&subscribed=&search=cmoc+required) label to the issue, causing a notification to be sent to the `#support_gitlab-com` channel that mentions the on-call CMOC. Once this notification is received the CMOC uses the details within the issue to create the maintenance in Status.io.

To create a new maintenance event, click `New Maintenance` from the Status.io dashboard.

![New Maintenance](/images/support/cmoc_new_maintenance.png){: .shadow}

The contents of the maintenance should be filled out according to the details provided in the maintenance issue. Once complete, it might look something like the following.

![Maintenance Details](/images/support/cmoc_maintenance_details.png){: .shadow}

### Rescheduling a Maintenance Event

In case you are required to reschedule a maintenance window, Go to *status.io* > *Maintenances* tab
![Maintenance Tab](/images/support/cmoc_select_maintenance.png){: .shadow}

Select the maintenance you need to reschedule.
![Maintenance selected](/images/support/cmoc_get_in_maintenance.png){: .shadow}

Update the new schedule time by hitting on the *Reschedule Maintenance* button **Make sure you have the correct timezone details when updating** Then hit save.

### Sending Updates About Maintenance Events

To send an update about a maintenance event, such as a reminder, go to the *Maintenances* tab in Status.io and select the one that needs an update. On the maintenance's information page, make note of whether automatic email reminders are set to go out. If yes, make sure not to send email broadcasts for your update in order to avoid sending duplicate reminders to subscribers. Once ready to update, select the *Post Update Without Starting* button.

![Post Update Without Starting](/images/support/cmoc_post_without_rescheduling.png){: .shadow}

Enter the update details provided by the Infrastructure team and have them confirm the appropriate broadcast channels before proceeding to send the update. If "Send Reminders" was enabled in the maintenance information page, be sure not to check "Notify email subscribers" in the broadcast settings.

![Broadcast Maintenance Update](/images/support/cmoc_broadcast_maintenance_update.png){: .shadow}

Once the GitLab Status Twitter account has posted about the maintenance schedule, send a link of the tweet to the `#social_media_action` Slack channel to let the social team know that you'd like amplification on our GitLab brand twitter account. This should only be used once during a selected scheduled maintenance timeline, preferably mid-week prior to the scheduled maintenance.

## Handover Procedure

At the end of each on-call shift its necessary to inform the next CMOC of any relevant activity that occurred during it or is still ongoing. To perform a handover create an issue in the [CMOC Handover](https://gitlab.com/gitlab-com/support/dotcom/cmoc-handover/issues) issue tracker using the [Handover](https://gitlab.com/gitlab-com/support/dotcom/cmoc-handover/issues/new?issuable_template=Handover) issue template. Create the handover issue even if nothing happened during your shift, signaling that everything is fine is also useful information. It's critical to remember that since we [work out in the open](https://about.gitlab.com/blog/2015/08/03/almost-everything-we-do-is-now-open/) by default, the CMOC Handover issue tracker is open to the public. **A handover issue should be made confidential if it must contain any sensitive information.**

If handover occurs during an active incident where the quick summary you'd provide in the handover issue is insufficient to properly prepare the incoming CMOC of the situation, you are encouraged to start up a quick Zoom call in the [#support_gitlab-com](https://gitlab.slack.com/archives/C4XFU81LG) Slack channel with the incoming CMOC.
Slash commands such as the following can be used to expedite getting the meeting setup.

```plain
/zoom meeting CMOC Handover Briefing
```

In case there are any uncertainties around the status of an incident, please contact the IMOC for clarification.

## CMOC Shadow PagerDuty Schedule

The [CMOC Shadow Schedule](https://gitlab.pagerduty.com/schedules#PQBZCSY) can to be used by people who wish to shadow the CMOC as a learning process before acting as CMOC. A soon-to-be-CMOC can adjust the schedule to match their working hours by clicking _Edit this schedule_ > _Add Another Layer_; add your username, and the days/hours that you wish to shadow.

## CMOC Training Videos

It is recommended to watch this video on how to perform CMOC duties effectively: [CMOC training video](https://drive.google.com/drive/u/0/folders/1JArmPtHxfx6YMIWA4Dz1StqGEU2XllRy)
