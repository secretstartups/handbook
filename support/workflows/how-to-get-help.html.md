---
layout: handbook-page-toc
title: How to Get Help
category: Handling tickets
description: Workflow for Support Engineers on how to get help when working on a ticket. 
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Getting Help on a Ticket

When [working on tickets](https://about.gitlab.com/handbook/support/workflows/working-on-tickets.html), collaboration is critical, especially when troubleshooting complex issues, or technical areas of focus that fall outside of your experience level. Asking for help means having a [low level of shame](https://about.gitlab.com/handbook/values/#low-level-of-shame), and also shows that you are putting the customer first because you are working towards resolving their problem.

### How to Get Help Workflow

If you are stuck on a ticket, the following workflow seeks to help Support Engineers realize and utilize all of the resources available to progress a ticket to resolution. This workflow lists some common resources, you can lean on to get the help you need. 

**If you’re stuck on a ticket…..**

Identify what's causing you to get stuck. Some examples are:

* I don't have the right knowledge to progress this ticket.
* The customer's query is out of scope, but they expect us to resolve this.
* There is a deep technical issue which needs a development expert's consult.

Then consider these options to help unblock you. And remember that
[escalating to unblock](https://about.gitlab.com/handbook/values/#escalate-to-unblock)
is an operating principle of Results.

1. Ask in [your group's Slack channel](/handbook/support/support-global-groups/#slack) for help. You might get all the help you
   need in responses right there, or you might open up the group's Zoom room
   for an impromptu pairing session to work on the ticket. And remember:
   1. Be sure to provide a link to the ticket
   1. Be specific about the help you need
      - For example: "Kubernetes Runner help needed: user is running into X
        error, logs are saying Y, and we've tried Z. What else could it be?"
2. Ask for help in one of the broader
   [relevant Support Slack channels](https://about.gitlab.com/handbook/support/#slack).
   In addition to the Slack reminders above, also:
   - Check the [Skills by Subject](https://gitlab-com.gitlab.io/support/team/skills-by-subject.html)
     Support page to see who might have the skills to assist. Mention those
     people in the thread and in the ticket to let them know you think they
     can help.
3. Ask for help in the appropriate [DevOps Stages](https://about.gitlab.com/handbook/product/categories/#devops-stages) Slack channel,
   or reach out to the [Support Stable Counterpart](../support-stable-counterparts.html)
   for the appropriate product area. If you are unsure which product area it is,
   ask your group or a manager for guidance.
   - For example, if you need help with a runners issue, ask for development
     support in the runners Slack channel, or reach out to the Support stable
     counterpart(s) that are listed under the
     [runner group](https://about.gitlab.com/handbook/product/categories/#runner-group)
     section.
4. Attend crush or help sessions such as those noted below (see the [GitLab Support calendar](https://calendar.google.com/calendar/u/0?cid=Z2l0bGFiLmNvbV85YnMxNTllaHJjNXRxZ2x1cjg4ZGpiZDUxa0Bncm91cC5jYWxlbmRhci5nb29nbGUuY29t) for times):
    - AMER Senior SE Help Sessions
    - APAC/AMER or EMEA/AMER crush sessions
    - APAC or EMEA crush / collaboration sessions
    - Senior Support Office Hours (varying times)
5. Initiate a [Branch Out session](/handbook/support/support-global-groups/branch-out-sessions.html)
   - This is like a crush session, with the specific intention of helping 1 or 2
     groups with FRTs
6. If you're struggling to get help, reach out to your manager, the manager
   on-call, or any available manager. They will help you to determine next steps.
   Please know that there will always be somebody who can help, even if you're
   having a hard time finding them. Please do not let this deter you from
   asking for help any time you need it.

### How to Use GitLab.com to Formally Request Help from the GitLab Ops Development Team

Starting from `2022-06-13` the Support Team and the `Ops Section` of the Development Group are running a pilot project. See [this issue](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/4276) for details of the pilot. The aim is to provide a formal and accountable workflow process for Support Engineers to request assistance from the [Ops Section](https://about.gitlab.com/handbook/product/categories/ops/) for any technical issues which they are currently unable to progress. Please note that Slack may still be used for asking the Ops Development Group simple or brief questions, however issues are now the preferred approach if the question requires any research or collaboration involving this Development team.

The steps for submitting a help request are as follows:

1. Go to the [Section Ops Request for Help Repository](https://gitlab.com/gitlab-com/ops-sub-department/section-ops-request-for-help)
1. In the [ReadMe](https://gitlab.com/gitlab-com/ops-sub-department/section-ops-request-for-help/-/blob/main/README.md) (displayed on the project page):
   1. Read the [Support Engineer User Guidance](https://gitlab.com/gitlab-com/ops-sub-department/section-ops-request-for-help#support-engineer-user-guidance) section and follow the steps outlined.
   2. Read the [Development groups and their corresponding templates](https://gitlab.com/gitlab-com/ops-sub-department/section-ops-request-for-help#development-groups-with-their-corresponding-templates-and-labels) section and use the Handbook links provided if you are unsure as to which `Ops` Section Sub Group and corresponding template you should use.
1. Submit a new issue to the project using the template you've identified.
   - The issue will be automatically assigned to the relevant developers for triaging
1. If you encounter any problems, such as obtaining a timely response from development, then please make the Engineering Manager and [John Lyttle](https://gitlab.com/jlyttle) aware. You can identify the relevant Engineering Manager by checking the Development Group Handbook Page from the [list of Ops Section handbook links](https://gitlab.com/gitlab-com/section-ops-request-for-help#development-groups-with-their-corresponding-templates-and-labels).
1. Lastly, prior to closing the issue please review the information within to determine if any of it can be used to update the GitLab documentation, if any of the information is a candidate to be considered for updating the GitLab documentation then add the label `documentation::candidate` so that the issue can be identifiable for future use. If you have actually updated the GitLab documentation then please add a link to the MR to the issue and add the label `documentation::created`.


### Quick Links and Resources
- [Needs Collaboration view](https://gitlab.zendesk.com/agent/filters/360080204660) in ZenDesk.
- Create a Support [pairing session issue](https://gitlab.com/gitlab-com/support/support-pairing).
- [Support Workflows](https://about.gitlab.com/handbook/support/workflows/) to follow relevant troubleshooting workflow.
- [Support Documentation links](https://about.gitlab.com/handbook/support/#documentation) for quick references to helpful GitLab documentation.
- [Skills by Subject](https://gitlab-com.gitlab.io/support/team/skills-by-subject.html) to find a Support Engineer scoped to the skill set needed for help.
- [DevOps Stages](https://about.gitlab.com/handbook/product/categories/#devops-stages) to find the right development or product team to reach out to.
- [Emergency runbooks](https://gitlab.com/gitlab-com/support/emergency-runbook/-/tree/master/.gitlab/issue_templates) with troubleshooting tips, even if not an emergency.
- See which [manager is on-call](https://gitlab.pagerduty.com/escalation_policies#PGNLUZ1) if guidance is needed on something urgent.
