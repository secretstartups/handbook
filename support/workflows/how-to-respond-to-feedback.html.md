---
layout: handbook-page-toc
title: How to Respond to Feedback (for Managers)
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to respond to a ticket feedback
As a part of the course of iterating towards better support, managers will rotate through the duty of
reviewing feedback provided by customers.

### Process
Each week in the Support Week in Review the **SSAT Reviewing Manager** will be noted, with the rotation listed
in [PagerDuty](https://gitlab.pagerduty.com/schedules#P9UIIDY). During the week the reviewing manager is doing their rotation they will
review all feedback in the [Feedback Tracker](https://gitlab.com/gitlab-com/support/feedback/) (internal only).

#### "Good" Reviews
For reviews with a "good" rating - go through each and read through the comments. If a specific person
is called out, note the comment and ticket number in the Support Week in Review in the **Kudos** section.

If there are general sentiments or themes, feel free to congratulate the whole team.

We have the GitLab Support Bot set to clean up old "satisfaction::good" issues by closing them when they've had no activity in the week. 
However, if you're reviewing and no action needs to be taken and the customer does not need to be contacted to discuss the ticket, you may `/close` it yourself.

#### "Bad" Reviews
For reviews with a "bad" rating - go through the comment history on the ticket in question and leave a comment
that details:

```
* **Summary of ticket/feedback:** 
* **Action to be taken:** 
* **Contact customer to discuss feedback? (Y/N)** 
```

After filling that out, apply one of the `feedback` project labels that best describe the situation:

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

If no action needs to be taken and the customer does not need to be contacted to discuss the ticket, you may `/close` it.

##### If there is action to be taken
Determine the course of action and tag in appropriate people.

Examples of possible actions:
 - Create an issue to discuss the feedback in `support-team-meta` (please cross-link as related)
 - Tag the manager of the person or people who participated in the ticket to discuss in a 1:1
 - Tag in a product group for awareness (some negative feedback is product related)

If further discussion is warranted, please leave the issue open and assign it to yourself. Otherwise, you may `/close` it.

##### If the customer is to be contacted
If you feel like the customer should be contacted, you can send them an email from your email address.

Make sure you:
 - note the specifics of the situation
 - offer any apologies or clarifications required
 - if appropriate, offer your Calendly link to schedule a video call

Please put the text of your email in a comment in the issue. Once you've done so, you may `/close` the issue.
If there's any additional actions that arise from your interaction with the customer, please do go back and note them in the issue.

### What does success look like?
At the end of your rotation there should be no open issues that don't have you as an assignee.

### How fast do I need to respond?
At writing (Sep 2019) we don't have a response SLA - but if this process is followed, no issue should go more than 7 days without a response.
