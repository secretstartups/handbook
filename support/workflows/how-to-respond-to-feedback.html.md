---
layout: handbook-page-toc
title: Satisfaction (SSAT) review and responding (for Managers)
category: Handling tickets
subcategory: Writing responses and handling feedback
description: Discusses the Support Team's Support Satisfaction review process, and actions which Managers take to respond to customer feedback
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

To understand the factors contributing to [Support Satisfaction](/handbook/support/performance-indicators/#support-satisfaction-ssat),
we review feedback received for support tickets. Issues are automatically
created in the [Feedback issue tracker](https://gitlab.com/gitlab-com/support/feedback/-/issues)
(internal only) for all Support Satisfaction feedback received.

**NOTE:** The following categories of tickets do **not** receive surveys:

* Spam tickets (ones marked as spam and suspended)
* Free user tickets (ones containing the tag `free_customer`)
* Embargo tickets (ones containing the tag `com_embargo`)
* Tickets with the organization `GitLab` or `DigitalOcean Support`

## Who is responsible for reviewing Support Satisfaction feedback

The **SSAT Reviewing Manager** on duty when a feedback issue is created is
responsible for reviewing the issue and responding as needed. Feedback issues
[are assigned](/handbook/support/support-ops/responsibilities.html#support-satisfaction-survey-ssat)
to the SSAT Reviewing Manager automatically. The manager receives email
notification from GitLab and a To-Do item.

The [Support Week in Review document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit) identifies the current **SSAT Reviewing Manager**, with a link to the rotation in [PagerDuty](https://gitlab.pagerduty.com/schedules#P9UIIDY).

**Please note:** Starting 2021-04-26 we are trialing an additional feedback form that allows our customers to provide comments not only when the ticket is marked as solved, but throughout the life of the ticket. The feedback will create issues in the customer feedback project with a subject format of **Positive/Negative/Neutral feedback for ticket nnnnnn** and will get automatically assigned to the **SSAT reviewing manager**. 

If the feedback is negative, there is also an option to request manager contact (within 48hrs Mon-Fri). If this option is chosen, additionally to the feedback project issue opened for the feedback, a slack notification will show up in the `#support_escalations` channel. The **SSAT reviewing manager** should follow the [If there is action to be taken](https://gitlab.com/-/ide/project/gitlab-com/www-gitlab-com/edit/master/-/sites/handbook/source/handbook/support/workflows/how-to-respond-to-feedback.html.md#if-there-is-action-to-be-taken) and [If the customer should be contacted](https://gitlab.com/-/ide/project/gitlab-com/www-gitlab-com/edit/master/-/sites/handbook/source/handbook/support/workflows/how-to-respond-to-feedback.html.md#if-the-customer-should-be-contacted) guidance when handling these requests.

An issue requiring contact can also be identified by an 'SSAT::Contact' label and a field within the issue that specifies manager contact was requested. 

This above note will be removed when the trial concludes (date not yet determined).

### What does success look like?

At the end of your rotation:

1. You should have performed the triage work described in the handling
["Good"](#handling-good-reviews) and ["Bad"](#handling-bad-reviews) sections
for each feedback issue assigned to you.
1. You should have initiated any customer or GitLab group contact.
1. You should have closed all feedback issues assigned to you that have
no outstanding dependencies on other groups or on the customer.

### How fast do I need to respond?

Currently there is no SLA for responding to Feedback Issues, but if you follow
the process defined on this page, you should send an initial response to each
issue within 7 days of its creation.

## Handling "Good" Reviews

For each feedback issue labeled "satisfaction::good":
1. read through the feedback and check for anything actionable - sometimes customers provide really good actionable feedback in positive reviews
1. consider sharing the feedback in the Support Week in Review document (see below)
1. if no further action is needed, `/close` the Feedback Issue.

**Note:** Support Engineers can see the Feedback comments on their tickets, and get notified by Zendesk when a Feedback comment is added. You do not need to notify them or their managers.

**Note:** After 7 days of inactivity, the GitLab Support Bot closes "satisfaction::good" issues.

### Sharing positive feedback in Support Week in Review (SWIR)

**Due Date**: the cut off for content for the SWIR is close of business on your Thursday. Plan to add any ticket feedback before this time. Anything you want to add after this time needs to be added to the content for the following week, to ensure it is included in the audio recording. 

When selecting feedback to share, you don't need to share every piece of positive feedback. Consider the following when choosing what to share:

1. Comments that stand out to you - the ones that you dwell on and smile as you read them
1. The customer has taken the time to name the individual(s) they appreciated
1. The customer has described why they were satisfied or how our support improved their day (we get some great stories!)
1. If there are general sentiments or themes, feel free to congratulate the whole team. For example, if we were praised for our overall approach to support, speed, clarity, etc. 
1. Is the feedback definitely positive?  Sometimes comments in positive feedback can be neutral or even negative. For example "I would have liked a quicker response", or "I was satisfied" are valuable to us, but they don't really encourage the team when shared in the SWIR. 

#### Formatting feedback in SWIR document

When adding the comment to the [document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit), add it in the `Kudos From SSAT` section.
Include the ticket number with a link to the ticket, the comment from the customer, and where applicable @ mention the person (or people) who primarily worked the ticket. 


## Handling "Bad" Reviews

For feedback issues labeled "satisfaction::bad", determine the following:

1. Why the feedback was given
1. If further [action needs to be taken](#if-there-is-action-to-be-taken)
1. If the customer should be contacted to discuss the feedback given
1. If the feedback should be discussed with a TAM

You should document your finding and any follow-up actions taken in the issue.
You may use the following template to add a comment to the feedback issue (NOT the
ticket!):

```
* **Summary of ticket/feedback:**
* **Action to be taken:**
* **Contact customer to discuss feedback? (Y/N)**
* **Make the TAM aware of this feedback? (Y/N)**
```

If no action needs to be taken, and the customer does not need to be contacted to discuss the ticket, `/close` the Feedback Issue.


### Understanding the customer's reason

Many customers do not provide a reason for the "bad" review they submit. Even if a
reason is provided, it may not be clear why the customer was dissatisfied. The
reviewing manager should carefully review the ticket and seek to understand why
a bad review was given. If necessary, [contact the customer](#if-the-customer-should-be-contacted)
to learn more.

Once the reason behind the "bad" review is understood, apply the `feedback`
[scoped label](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels)
that best describes the situation:

| Label | Description |
| ----- | ----------- |
| `~feedback::customer-resolved` | The customer resolved the ticket |
| `~feedback::docs-new-issue` | Encountered Documentation problem; new Issue and/or MR filed |
| `~feedback::docs-not-helpful` | Documentation unhelpful to customer and/or Support Engineer |
| `~feedback::known-issue` | Known issue with Issue already created |
| `~feedback::product-new-issue` | Encountered Product problem; new Issue and/or MR filed |
| `~feedback::missing-info-from-customer` | Customer did not supply enough information for investigation |
| `~feedback::missing-info-by-engineer` | Support Engineer did not provide adequate information to customer |
| `~feedback::outside-support` | Problem internal to GitLab but not directly by Support |
| `~feedback::process-confusing-customer` | Customer found support process confusing or unclear |
| `~feedback::process-engineer-not-followed` | Support Engineer did not follow documented support process |
| `~feedback::process-does-not-exist` | Problem does not have an existing Support process |
| `~feedback::process-sfdc` | Problem caused by Zendesk-Salesforce integration (includes delays due to needs-org, incorrect contact info/matching in SFDC, unable to validate subscription) |
| `~feedback::soft-skills` | Support Engineer responses unhelpful or customer expectations mishandled |
| `~feedback::technical-skills-engineer` | Support Engineer lacks skills or permissions to troubleshoot or resolve problem |
| `~feedback::technical-skills-customer` | Customer lacks skills or permissions to troubleshoot or resolve problem |

**Note:** For the full list of feedback labels and their descriptions, visit the [labels page in the support-feedback project](https://gitlab.com/gitlab-com/support/feedback/-/labels?utf8=%E2%9C%93&subscribed=&search=feedback%3A%3A).

This is important to help Support understand and respond to Support Satisfaction
trends.


### If there is action to be taken

Determine the course of action and tag appropriate people. Note that [indirect feedback](https://about.gitlab.com/handbook/support/internal-support/#regarding-gitlab-support-plans-and-namespaces) received from a customer/prospect will typically have the next action chosen for us.

Examples of possible actions:

- Contact the customer (see [below](#if-the-customer-should-be-contacted))
- Create a new Issue to discuss the feedback in `support-team-meta` (cross-link the Feedback Issue as related)
- Tag the manager of the person or people who participated in the ticket to discuss in a 1:1
- Tag a product group for awareness (some negative feedback is product related)

If further discussion is warranted, leave the Feedback Issue open. Otherwise, `/close` it.


### If the customer should be contacted

If you feel like the customer should be contacted:

1. Determine the best way to reach out. Some options are:
   1. Sending the customer an email from your GitLab email address. This should
      be the appropriate option in the majority of cases.
   1. Responding directly on the Zendesk ticket. This is appropriate if you
      determine that the ticket was not adequately resolved and work should be
      continued.
      * If reopening a ticket, make sure that you assign and brief a support
        engineer (typically the existing assignee) on the next actions to be
        taken.
      * Note that reopening a closed or solved ticket affects
        measurements of reopen rate and time to resolution.
1. When reaching out to the customer, make sure you do the following:
   1. introduce yourself, describing who you are and your role at GitLab
   1. note the specifics of the situation, including ticket ID - you can include a link using the format `https://support.gitlab.com/hc/requests/<ticket number>`
   1. restate and validate the customer's comments
   1. offer any apologies or clarifications required, including links to relevant documentation
   1. offer your Calendly link to schedule a video call
1. Update the Feedback Issue as follows:
   1. Add the text of your email as a comment in the Feedback Issue.
   1. Apply the label `~ssat-manager-contacted-customer`.
   1. `/close` the Feedback Issue; followup continues via email.
   1. After closing the Issue, if there are any additional actions that arise from your interaction with the customer, go back and note them in the Feedback Issue.
