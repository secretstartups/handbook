---
layout: markdown_page
title: How to be a Support Manager On-call
category: On-call
description: "Describes the role and responsibilities for the Support Managers rotation in Support Engineering"
---

- TOC
{:toc}

----


## Introduction

The Support Manager On-call helps coordinate respones to urgent and important situations that arise within the scope of delivering a quality
experience to GitLab customers.

The Support Manager On-call is one of the rotations that make up [GitLab Support On-call](/handbook/support/on-call/).

## Expectations for Support Manager On-call

As part of [GitLab Support on-call](/handbook/support/on-call/), Support Managers serve in a rotation. The support manager on-call is responsible generally for:

1. Ensuring customer emergencies are [handled promptly and accurately](#handling-customer-emergencies-and-incidents), [according to SLAs](https://about.gitlab.com/support/)
1. [Handling customer-related escalations](#mechanics-of-handling-escalations) during business hours according to the [support escalation definitions of urgency](/handbook/support/internal-support/support-escalations.html#definition-of-urgency)
1. Acting as a [notification point for security incidents](#act-as-a-notification-point-for-security-incidents)
1. Analyzing and dispatching [Live Upgrade Assistance Requests](#analyze-and-dispatch-live-upgrade-assistance-requests) initiated during the shift

## Handling customer emergencies and incidents

The [Support Engineer on-call](/handbook/support/on-call/) is the first responder for customer emergencies. Managers support this work as follows:

- Act as the next-tier escalation point for emergency pages that get missed (you will be notified automatically by PagerDuty).
- Be aware of ongoing emergencies, and assist or lead our response as appropriate.
- During an emergency: find additional staff for subject-matter expertise; replace the on-call engineer if needed; lead any Zoom call(s) as needed; hand off the emergency to the next on-call manager.
- Find additional staff when there are [multiple emergencies](/handbook/support/on-call/#handling-multiple-simultaneous-emergencies).

## Handling customer-related escalations during business hours

[Support Escalations](/handbook/support/internal-support/support-escalations.html) are handled by the Support Manager on-call. 

Your responsibilities are as follows:

1. Triage and investigate tickets and internal-requests that are announced in `#support_escalations`.
1. Establish ownership and assignment for escalated tickets.

You can use [Support Team Skills by Subject](https://gitlab-com.gitlab.io/support/team/skills-by-subject.html) to find appropriate engineers to assign.

**NOTE:** GitLab team members may attempt to draw attention to tickets in regular support Slack channels (`#support_self-managed`, `#support_gitlab-com`, `#spt_managers`). Any such attempt constitutes an escalation. Redirect the team member by responding to their post with **only the `:escalate:` emoji**, which will send an automated and anonymous reply describing the correct process.

**NOTE:** There are two other distinct situations, not discussed on this page:

1. [Escalated Customers](/handbook/customer-success/tam/escalations/)
1. [Emergencies that become Escalations](/handbook/support/workflows/emergency-to-escalation-process.html)

### Mechanics of handling escalations

Some steps of escalation management are handled by bots and auto-responders. The text `**BOT**` is used below to show these steps.

1. When someone declares an escalation using the [support escalation form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/support_escalation/):
   1. **BOT**: Creates a new Issue in the [support escalation issue tracker](https://gitlab.com/gitlab-com/support/escalations/-/issues).
   1. **BOT**: Slack announcement is posted to `#support_escalations`, with an `@mention` of the current on-call Support Manager's name.
   1. In many cases **BOT** adds an internal note to the Zendesk ticket and escalation issue, documenting the escalation.
1. Add the `:eyes:` emoji to acknowledge you are looking at the escalation.
1. In the Zendesk ticket, **if** there is no automated note, add an internal note by copy-pasting the text from the Slack announcement.
1. Assess the ticket, and the business case behind the escalation (triage).
   - Questions to the escalation initiator can be put in Slack (synchronous) or in the escalation Issue (asynchronous).
1. If you need input or help from engineers, initiate a new thread in `#support_gitlab-com`, `#support_self-managed` or `#support_licensing-subscription`. Then return to the thread in `#support_escalations` and comment that all **technical** ticket-related discussion is happening in the ticket (or in the new thread). This helps ensure all technical discussion stays in one channel/thread.
1. [Resolve the escalation thread](#resolving-an-escalation).

### Rejecting an escalation request

There are times when an escalation request does not meet the threshold for escalation. In such situations, return to the thread in `#support_escalations` and notify the escalation initiator.
    
### Resolving an escalation

An escalation is considered resolved when the correct next-step is identified and underway; it does not require the Zendesk ticket to be Solved or Closed.

When an escalation is resolved:

1. Apply a `:green-check-mark:` emoji to the escalation notification in `#support_escalations`. 
1. Update the associated escalation Issue with an appropriate comment, and Close it.

## Act as a notification point for security incidents

When GitLab experiences a [security incident](/handbook/engineering/security/security-operations/sirt/security-incident-communication-plan.html#extended-team-roles-responsibilities-and-points-of-contact), the Support Manager on-call is responsible for triaging and responding to customer communications stemming from the security incident. This may include involving the [CMOC](/handbook/support/workflows/cmoc_workflows.html).

## Analyze and dispatch Live Upgrade Assistance Requests

Analyzing [live upgrade assistance requests](https://about.gitlab.com/support/scheduling-live-upgrade-assistance.html) means that you must ensure the request conforms to the requirements documented in [Scheduling Live Upgrade Assistance](/handbook/support/workflows/live-upgrade-assistance.html).

To dispatch a request:

1. Review the issue to make sure that the required information has been provided, 
including the appropriate region's label. If you notice missing information, tag 
the requester and ask for it to be provided.
1. If the Live Upgrade Assistance request is scheduled inside your region's
working hours, follow steps 2 and 3 of the [Global Support 
Process](/handbook/support/workflows/live-upgrade-assistance.html#global-support-process),
keeping in mind that you are the DRI. In brief, the process states that you need to:
   * Assign the support manager and support engineer who will be on-call on the requested upgrade date.
   * Find a support engineer to perform the pre-scheduling tasks.
   * Find a support engineer to perform the day-of-upgrade tasks (may be the same engineer as above).

**NOTE**: If the Live Upgrade Assistance request is scheduled outside of your region's
working hours, assign the Request to all the managers of the appropriate region.
It is their task to complete steps 2 and 3 described above.

## Reassigning or swapping your on-call shift

If you will be unable to handle on-call for a few hours on a weekday due to being engaged in a customer call or otherwise, arrange for another manager to handle on-call responsibilities temporarily:

1. Ask a specific manager to cover; if that doesn't work,
1. Post a request in `#spt_managers` for any manager to volunteer to cover.

To swap your on-call duty with someone, follow the steps listed under [Swapping on-call duty](/handbook/support/on-call/#swapping-on-call-duty).

## Manually triggering a PagerDuty notification

At times, you may receive an escalation where the customer is reporting a situation that qualifies for emergency support under our [definitions of support impact](https://about.gitlab.com/support/#definitions-of-support-impact). In such cases you may elect to trigger an emergency directly, rather than asking the customer to open a new emergency ticket.

You can trigger a PagerDuty notification by using the [`Support::Managers::Trigger manual emergency`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360074073259) macro in Zendesk.

Alternatively, you can manually trigger a PagerDuty notification through PagerDuty itself. 

Login to [gitlab.pagerduty.com](https://gitlab.pagerduty.com) and select **+ New Incident** from the upper right corner. Then fill out the form as follows:

- **Impacted Service**: Customer Support
- **Assign to**: Customer Emergency Rotation
- **Title**: Add the Zendesk ticket number here

No other fields need to be filled out, therefore you may then click **Create Incident**

![Manually triggering an emergency](/images/support/manually-trigger-emergency.png){: .shadow}
