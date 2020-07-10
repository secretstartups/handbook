---
layout: handbook-page-toc
title: How to Respond to Feedback (for Managers)
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to respond to customer feedback
To understand the factors contributing to [Support Satisfaction](https://about.gitlab.com/handbook/support/performance-indicators/#support-satisfaction-ssat), Support Managers review feedback received for support tickets.

The [Support Week in Review document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit) identifies the current **SSAT Reviewing Manager**, with a link to the rotation in [PagerDuty](https://gitlab.pagerduty.com/schedules#P9UIIDY). During the rotation, the reviewing manager reviews all customer feedback and responds as needed.

### Required tools
1. Customer Feedback Issues [are created and assigned](https://about.gitlab.com/handbook/support/support-ops/responsibilities.html#support-satisfaction-survey-ssat) to the SSAT Reviewing Manager automatically. The Manager receives email notification from GitLab and a To-Do item.
1. All Customer Feedback Issues are shown in the [Customer Feedback Tracker](https://gitlab.com/gitlab-com/support/feedback/) (internal only).

### How to handle "Good" Reviews
For reviews with a "satisfaction::good" rating - go through each and read through the comments.

* If a specific person is mentioned, add the comment and ticket number to the [Support Week in Review document](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit) in the **Kudos** section for the week.
* If there are general sentiments or themes, feel free to congratulate the whole team.
* Remember that engineers can see the Feedback comments on their tickets, and get notified by ZenDesk when a Feedback comment is added -- so you do not need to notify them or their managers.

The GitLab Support Bot cleans up old "satisfaction::good" issues by closing them when they've had no activity in 7 days. However, if you're reviewing, no action needs to be taken, and the customer does not need to be contacted to discuss the ticket, you may `/close` it yourself.

### How to handle "Bad" Reviews
For reviews with a "satisfaction::bad" rating, follow this process.

1. Open the associated ticket and review its history. Add a comment to the Customer Feedback Issue (NOT the ticket!) that details:

```
* **Summary of ticket/feedback:** 
* **Action to be taken:** 
* **Contact customer to discuss feedback? (Y/N)** 
```

2. Apply one of the `feedback` project labels that best describe the situation:

   * feedback::process
     - Support process not followed/does not exist
   * feedback::tech-skills
     - Technical skills lacking to resolve/work around problem
   * feedback::soft-skills
     - Wording of responses and/or mishandling of the customer 
   * feedback::docs-issue
     - Documentation not helpful or missing
   * feedback::product-issue
     - Bug and/or feature not working as expected
   * feedback::known-issue
     - Known issue with Issue already created  
   * feedback::lacking-info
     - Not enough information supplied to progress investigation in ticket

This may not be an exhaustive list - for a full list and their descriptions, visit the [labels page in the support-feedback project](https://gitlab.com/gitlab-com/support/feedback/-/labels?utf8=%E2%9C%93&subscribed=&search=feedback%3A%3A).

3. Determine whether additional action needs to be taken (see section below). If no action needs to be taken, and the customer does not need to be contacted to discuss the ticket, you may `/close` it.

### If there is action to be taken
Determine the course of action and tag in appropriate people.

Examples of possible actions:
 - Contact the customer (see below)
 - Create an issue to discuss the feedback in `support-team-meta` (please cross-link as related)
 - Tag the manager of the person or people who participated in the ticket to discuss in a 1:1
 - Tag in a product group for awareness (some negative feedback is product related)

If further discussion is warranted, leave the issue open. Otherwise, you may `/close` it.

### If the customer should be contacted
If you feel like the customer should be contacted:

1. Send them an email from your GitLab email address. Make sure you do the following:
 - introduce yourself, describing who you are and your role at GitLab
 - note the specifics of the situation, including ticket ID
 - restate and validate the customer's comments
 - offer any apologies or clarifications required, including links to relevant documentation
 - if appropriate, offer your Calendly link to schedule a video call

2. Add the text of your email as a comment in the Customer Feedback Issue. Once you've done so, you may `/close` the issue; followup with the customer can continue via email.

3. If there are any additional actions that arise from your interaction with the customer, please go back and note them in the Customer Feedback Issue.

### What does success look like?
At the end of your rotation:
1. You should have performed the triage work described above in "Good" and "Bad" sections for each Customer Feedback Issue assigned to you.
1. Any customer contact has been initiated, and is either complete or in-process.
1. All Customer Feedback Issues assigned to you should be closed, or only have outstanding dependencies on other groups (or on the customer).

### How fast do I need to respond?
Currently there is no SLA for responding to Customer Feedback Issues - but if the above process is followed, no issue should wait more than 7 days without an initial response.
