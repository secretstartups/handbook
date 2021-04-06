---
layout: markdown_page
title: How to be a Support Manager On-call
category: On-call
description: "Describes the role and responsibilities for the Support Managers rotation in Support Engineering"
---

- TOC
{:toc}

----


## Expectations for Support Manager On-call

Support Managers also have an on-call rotation. The support manager on-call is responsible for the below:

### Customer emergency pages and other incidents

- Act as an escalation point for missed customer emergency pages.
- Find staff to help with [multiple emergencies](/handbook/support/on-call/#handling-multiple-simultaneous-emergencies).
- Act as a notification point for [security incidents](/handbook/engineering/security/security-operations/sirt/security-incident-communication-plan.html#extended-team-roles-responsibilities-and-points-of-contact).

### Escalations, requests and questions in #support_escalations _(business days only)_

- Triage and investigate tickets that are escalated in `#support_escalations` to understand the scope of the request.
     - After initial triage of a new escalation in `#support_escalations`, if the determined action to take needs input and help from engineers, initiate a new thread in `#support_gitlab-com`, `#support_self-managed` or `#support_licensing-subscription`. Loop in relevant engineers (support and/or dev) or groups there and let the person who raised the escalation in `#support_escalations` know that all technical ticket-related discussion will happen in the new thread. This helps avoid engineers being looped into multiple threads and channels, and helps keep the technical discussion in one place.
- Provide ownership and assignment for tickets that are escalated in `#support_escalations`; [Support Team Skills by Subject](https://gitlab-com.gitlab.io/support/team/skills-by-subject.html) can be used to find an appropriate engineer to work the ticket.
- Inform those who have posted an escalation request in `#support_self-managed` or `#support_dot-com` to post their escalation request instead in `#support_escalations`. Do this by responding to their request with only the :escalate: emoji, which will send an automated and anonymous reply describing the correct process.
- In the Zendesk ticket add an internal note informing that the ticket has been escalated and include a link to the `#support_escalations` discussion and the issue created in the [support escalation issue tracker](https://gitlab.com/gitlab-com/support/escalations/-/issues).
- Coordinate [live upgrade assistance](https://about.gitlab.com/support/scheduling-live-upgrade-assistance.html) requests.

If you will be unable to handle on-call for a few hours on a weekday due to being engaged in a customer call or otherwise, arrange for another manager to handle on-call responsibilities temporarily by:

    1. asking a specific manager to cover, and then if necessary,
    1. posting a request in `#spt_managers` for any manager to volunteer to cover if the specific request goes unanswered.

To swap your on-call duty with someone, follow the steps listed under [Swapping on-call duty](/handbook/support/on-call/#swapping-on-call-duty).


### Resolving issues as the support manager on-call
We currently consider :green_check_mark: in slack on the original slack request as a signal that the escalation has been resolved.

### Manually triggering a PagerDuty notification

At times, you may receive an escalation where the customer is reporting a situation that qualifies for emergency support under
our [definitions of support impact](https://about.gitlab.com/support/#definitions-of-support-impact). In such cases you may
elect to trigger an emergency directly, rather than directing the customer to open a new ticket.

To manually trigger a PagerDuty notification, login to [gitlab.pagerduty.com](https://gitlab.pagerduty.com) and select
**+ New Incident** from the upper right corner. Then fill out the form that follows:

- **Impacted Service**: Customer Support
- **Assign to**: Customer Emergency Rotation
- **Title**: Put the ticket number here

No other fields need to be filled out and you may then **Create Incident**

![Manually triggering an emergency](/images/support/manually-trigger-emergency.png){: .shadow}
