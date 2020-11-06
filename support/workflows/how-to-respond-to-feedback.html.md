---
layout: handbook-page-toc
title: How to Respond to Feedback (for Managers)
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

To understand the factors contributing to [Support Satisfaction](/handbook/support/performance-indicators/#support-satisfaction-ssat),
we review feedback received for support tickets. Issues are automatically
created in the [Feedback issue tracker](https://gitlab.com/gitlab-com/support/feedback/-/issues)
(internal only) for all Support Satisfaction feedback received.

## Who is responsible for reviewing Support Satisfaction feedback

The **SSAT Reviewing Manager** on duty when a feedback issue is created is
responsible for reviewing the issue and responding as needed. Feedback issues
[are assigned](/handbook/support/support-ops/responsibilities.html#support-satisfaction-survey-ssat)
to the SSAT Reviewing Manager automatically. The manager receives email
notification from GitLab and a To-Do item.

The [Support Week in Review document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit) identifies the current **SSAT Reviewing Manager**, with a link to the rotation in [PagerDuty](https://gitlab.pagerduty.com/schedules#P9UIIDY).

### What does success look like?

At the end of your rotation:

1. You should have performed the triage work described above in "Good" and "Bad" sections for each feedback issue assigned to you.
1. Any user contact or GitLab group contact has been initiated, and is either complete or in-process.
1. All feedback issues assigned to you should be closed, or only have outstanding dependencies on other groups (or on the user).

### How fast do I need to respond?

Currently there is no SLA for responding to Feedback Issues - but if the above process is followed, no issue should wait more than 7 days without an initial response.

## Handling "Good" Reviews

For feedback issues labeled "satisfaction::good", go through each and read through the comments.

1. If a specific person is mentioned, add the comment and ticket number to the [Support Week in Review document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit) in the **Kudos** section for the week.
1. If there are general sentiments or themes, feel free to congratulate the whole team. For example, if we were praised for our overall approach to support, speed, clarity, etc.
1. If no further action is needed, `/close` the Feedback Issue.

**Note:** Support Engineers can see the Feedback comments on their tickets, and get notified by ZenDesk when a Feedback comment is added. You do not need to notify them or their managers.

**Note:** After 7 days of inactivity, the GitLab Support Bot closes "satisfaction::good" issues.

## Handling "Bad" Reviews

For feedback issues labeled "satisfaction::bad", determine the following:

1. Why the feedback was given
1. If further [action needs to be taken](#if-there-is-action-to-be-taken)
1. If the user should be contacted to discuss the feedback given

You should document your finding and any follow-up actions taken in the issue.
You may use the follow template to add a comment to the feedback issue (NOT the
ticket!):

```
* **Summary of ticket/feedback:**
* **Action to be taken:**
* **Contact user to discuss feedback? (Y/N)**
```

If no action needs to be taken, and the user does not need to be contacted to discuss the ticket, `/close` the Feedback Issue.


### Understanding the why

Many users do not provide a reason for the "bad" review they submit. Even if a
reason is provided, it may not be clear why the user was dissatisfied. The
reviewing manager should carefully review the ticket and seek to understand why
a bad review was given. If necessary, [contact the user](#if-the-user-should-be-contacted)
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

- Contact the user (see [below](#if-the-user-should-be-contacted))
- Create a new Issue to discuss the feedback in `support-team-meta` (cross-link the Feedback Issue as related)
- Tag the manager of the person or people who participated in the ticket to discuss in a 1:1
- Tag a product group for awareness (some negative feedback is product related)

If further discussion is warranted, leave the Feedback Issue open. Otherwise, `/close` it.


### If the user should be contacted

If you feel like the user should be contacted:

1. Determine the best way to reach out:
   1. Consider responding directly on the Zendesk ticket if the option is
      available and it makes sense in context of the ticket.
   1. Consider sending the user an email from your GitLab email address if you'd
      prefer to have a more private conversation.
1. When reaching out to the user, make sure you do the following:
   1. introduce yourself, describing who you are and your role at GitLab
   1. note the specifics of the situation, including ticket ID
   1. restate and validate the customer's comments
   1. offer any apologies or clarifications required, including links to relevant documentation
   1. offer your Calendly link to schedule a video call
1. Update the Feedback Issue as follows:
   1. Add the text of your email as a comment in the Feedback Issue.
   1. Apply the label `~ssat-manager-contacted-customer`.
   1. `/close` the Feedback Issue; followup continues via email.
   1. After closing the Issue, if there are any additional actions that arise from your interaction with the user, go back and note them in the Feedback Issue.
