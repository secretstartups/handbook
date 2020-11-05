---
layout: handbook-page-toc
title: Customer calls
category: Handling tickets
description: "Workflow for conducting customer calls in Support Engineering"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Customer calls

### Scheduled calls

#### Customer scheduled calls

##### Providing the call link

When you know a ticket is ready for a call, use the `General::Invite customer call` macro in Zendesk. (Please modify the `PERSONAL_CALENDLY_LINK` to your own personal Calendly link)

A few point to consider when sending a customer the invite to call link.

* Always use [single-use Calendly link](/handbook/support/workflows/calendly.html#generating-a-single-use-calendly-link) to invite customers to a call so that we can avoid ghost-calls.
* Ensure the [event title](https://calendly.com/event_types) [includes the word `Support`](/handbook/support/workflows/calendly.html#support-calls-in-the-team-calendar) (case insensitive), this is necessary for the event to appear in the `GitLab Support` Calendar.
* If you know your availability is limited, or you need additional backup, check with another engineer to see if they might also be available to take the call.
* If you're not comfortable enough to take the call, **you should shadow any call that does take place** to upskill.

#### Pre-call email

Please consider sending a pre-call email. This helps set expectations to the call regarding goals, duration, and
the people required to be on the call for effective troubleshooting. You can use the `General::Pre customer call` macro in Zendesk
for that, please modify it as you see fit.

##### Tips to keep calls within the scheduled time:

* Set expectations (again) at the start of the call:
   1. Call duration will be 1 hour
   1. At 45 minutes - call wrap up will happen (below)
   1. Will need access to applicable systems
* When 15 mins left: 
   1. Start to wind down the call
* Stop the call and determine where we are (solved, not solved more info needed)
   1. Solvable in the next few minutes
   1. Need to research/schedule additional call
* Review
   1. Summary of what was learned
   1. Next steps for GitLab Support Engineer
   1. Next steps for user
   1. Next call recommendations (timing/goals/expectations)
* Note: If customer doesn't join the call and you've waited for over 10 minutes, end the call, update the ticket and resend calendly link.

##### Notes on intake, upgrade and installation support calls

For Premium Support customers, and customers who have purchased Implementation Support, we offer intake and installation support. Premium Support customers also receive live upgrade assistance. The different levels of service that are offered are described on the [support page](/support), and Implementation Support is described in more detail in the [statement of support](/support/statement-of-support.html).

Call/screen sharing sessions involve guiding a customer through the GitLab upgrade process or taking control of the customer's server to perform the upgrade.
You should make sure that the customer has finished creating a backup **before** you start the call, as they can take a lot of time to complete and you don't want to do them while in the call.

**Important information to collect**

1. Type of installation: Source/Omnibus
1. Current GitLab version
1. Version you're upgrading to (it isn't always the latest)
1. Use of GitLab CI (need to upgrade to 8.0 first, then 8.+)

We collect this information in Zendesk and link it to the organization.

##### Call summary

Following your scheduled or unscheduled call you should complete a summary of the call in Zendesk using the
macro `General::Post Customer Call`.  This will provide a record of events for
anyone who works on the ticket, including the customer.  It will also provide
valuable information for support engineers in the future who search Zendesk
looking for similar issues and their resolutions.

### Unscheduled calls

While working with customers you should always be prepared to host a quick call
with them. It's easier to get all the information you might need on a short (5 -
20 minutes) call than in a long series of back-and-forth emails. If anything
similar to the following situations is true, suggest a Zoom call:

*  the initial problem statement is very unclear
*  you aren't getting what you need from the customer after one or two email
   requests
*  you aren't making good progress toward resolution
*  you sense the customer is getting frustrated or upset

If you feel too inexperienced to handle a call, ask someone more experienced to
lead it while you shadow. After shadowing, it is still your responsibility
to handle the ticket as long as it is assigned to you.

If the problem is urgent you can simply send the customer a Zoom link and jump on immediately. For less urgent
calls, you may send the customer a Calendly link so that they can schedule a convenient time in their time zone.
The link you send may be a link to your personal calendar or to the Team Calendly event, depending on the circumstances,
but in every case you should send a
[single-use Calendly link](/handbook/support/workflows/calendly.html#generating-a-single-use-calendly-link),
to ensure proper processes are followed for scheduling calls.

#### WebEx

For some customers, only Cisco systems are allowed and in those cases, WebEx will be the best tool for calls. To start a call/session, use the `GitLab Support` WebEx account. Go to our [WebEx Portal](https://gitlabmeetings.webex.com), click on the login button on the top right and use the credentials found in the Support Vault on 1Password.

![WebEx Login](/images/support/web-ex-login.png)

Once logged in, click the `Enter Room` button to start the WebEx meeting and send the following link to the customer and ask them to join the call.

```
https://gitlabmeetings.webex.com/meet/gitlabsupport
```

![WebEx Room](/images/support/web-ex-room.png)

> Note: Make sure you lock the meeting so that you (as the presenter) have to allow people in. Otherwise others may attempt to use the room.

WebEx allows you to see the customer's desktop and to control it on request. It also gives the customer the possibility to join via phone and us the possibility to use our computer audio connection.