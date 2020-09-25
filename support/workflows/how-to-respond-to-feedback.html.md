---
layout: handbook-page-toc
title: How to Respond to Feedback (for Managers)
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to respond to Support Satisfaction feedback
To understand the factors contributing to [Support Satisfaction](/handbook/support/performance-indicators/#support-satisfaction-ssat), Support Managers review feedback received for support tickets.

The [Support Week in Review document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit) identifies the current **SSAT Reviewing Manager**, with a link to the rotation in [PagerDuty](https://gitlab.pagerduty.com/schedules#P9UIIDY). During the rotation, the reviewing manager reviews all feedback Issues and responds as needed.

### Required tools
1. Feedback Issues [are created and assigned](/handbook/support/support-ops/responsibilities.html#support-satisfaction-survey-ssat) to the SSAT Reviewing Manager automatically. The Manager receives email notification from GitLab and a To-Do item.
1. All Feedback Issues are shown in the [Feedback Tracker](https://gitlab.com/gitlab-com/support/feedback/-/issues) (internal only).

### How to handle "Good" Reviews
Feedback Issues with label "satisfaction::good" - go through each and read through the comments.

1. If a specific person is mentioned, add the comment and ticket number to the [Support Week in Review document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit) in the **Kudos** section for the week.
1. If there are general sentiments or themes, feel free to congratulate the whole team. For example, if we were praised for our overall approach to support, speed, clarity, etc.
1. If no further action is needed, `close` the Feedback Issue.

**Note:** Support Engineers can see the Feedback comments on their tickets, and get notified by ZenDesk when a Feedback comment is added. You do not need to notify them or their managers.

**Note:** After 7 days of inactivity, the GitLab Support Bot closes "satisfaction::good" issues. 

### How to handle "Bad" Reviews
For reviews with a "satisfaction::bad" rating, follow this process.

1. Open the associated ticket and review its history. Add a comment to the Feedback Issue (NOT the ticket!) that details:

```
* **Summary of ticket/feedback:** 
* **Action to be taken:** 
* **Contact user to discuss feedback? (Y/N)** 
```

2. Apply the `feedback` [scoped label](https://docs.gitlab.com/ee/user/project/labels.html#scoped-labels) that best describes the situation:

| Label | Description |
| ----- | ----------- |
| `~feedback::customer-resolved` | The customer resolved the ticket |
| `~feedback::docs-issue` | Documentation not helpful or missing |
| `~feedback::known-issue` | Known issue with Issue already created |
| `~feedback::lacking-info` | Not enough information supplied to progress investigation in ticket |
| `~feedback::outside-support` | Problem internal to GitLab but not directly by Support |
| `~feedback::process` | Support process not followed/does not exist |
| `~feedback::product-issue` | Bug and/or feature not working as expected |
| `~feedback::soft-skills` | Wording of responses and/or mishandling of the user/account |
| `~feedback::tech-skills` | Technical skills lacking to resolve/work around problem |

**Note:** For the full list of feedback labels and their descriptions, visit the [labels page in the support-feedback project](https://gitlab.com/gitlab-com/support/feedback/-/labels?utf8=%E2%9C%93&subscribed=&search=feedback%3A%3A).

3. Determine whether additional [action needs to be taken](#if-there-is-action-to-be-taken). If no action needs to be taken, and the user does not need to be contacted to discuss the ticket, `/close` the Feedback Issue.

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

1. Send the user an email from your GitLab email address. Make sure you do the following:
   1. introduce yourself, describing who you are and your role at GitLab
   1. note the specifics of the situation, including ticket ID
   1. restate and validate the customer's comments
   1. offer any apologies or clarifications required, including links to relevant documentation
   1. offer your Calendly link to schedule a video call

2. Update the Feedback Issue as follows:
   1. Add the text of your email as a comment in the Feedback Issue.
   1. Apply the label `~ssat-manager-contacted-customer`.
   1. `/close` the Feedback Issue; followup continues via email.

3. After closing the Issue, if there are any additional actions that arise from your interaction with the user, go back and note them in the Feedback Issue.

### What does success look like?
At the end of your rotation:
1. You should have performed the triage work described above in "Good" and "Bad" sections for each Feedback Issue assigned to you.
1. Any user contact or GitLab group contact has been initiated, and is either complete or in-process.
1. All Feedback Issues assigned to you should be closed, or only have outstanding dependencies on other groups (or on the user).

### How fast do I need to respond?
Currently there is no SLA for responding to Feedback Issues - but if the above process is followed, no issue should wait more than 7 days without an initial response.
