---
layout: handbook-page-toc
title: Working With GitLab Support
description: How GitLab team members can work with and best ways to contact Support.
---

## Overview

The purpose of this page is to direct GitLab team members outside of Support on what GitLab Support does, how to get in contact with us, and where to direct common requests that require our involvement. **Are you a customer looking for technical support? If so, please visit the [Support Page](/support/) instead.**

- TOC
{:toc .hidden-md .hidden-lg}

## GitLab Support's Purpose

GitLab Support provides technical support for GitLab.com and Self-Managed GitLab customers. We do **not** provide support for GitLab team members who are experiencing IT (1Password, Slack, Mac, etc.) issues. If you require assistance with issues of that nature, please contact [Team Member Enablement](/handbook/business-ops/team-member-enablement/self-help-troubleshooting/).

## Should I Contact GitLab Support?

For general questions regarding GitLab ("Can GitLab do x?", "How do I do y with GitLab?") please ask in [#questions](https://gitlab.slack.com/messages/questions), or if you think you've encountered a bug or something isn't behaving right while using GitLab try asking in [#is-this-known](https://gitlab.slack.com/archives/CETG54GQ0). Doing so ensures that [everyone can contribute](https://about.gitlab.com/company/mission/#mission) to an answer.

GitLab Support's [Slack channels](#support-team-slack-channels) are specifically for the various GitLab Support **teams**, not for questions about GitLab the product. If you're working with a customer that requires technical support, please advise them to [contact GitLab Support](#requesting-support-for-customers).

### Support Team Meta Project

If you'd like to ask a longer term or larger scope question, propose an idea to GitLab Support, discuss something with us, or suggest an improvement or change to any of our workflows, please visit the [issue tracker](https://gitlab.com/gitlab-com/support/support-team-meta/issues) of the **[Support Team Meta](https://gitlab.com/gitlab-com/support/support-team-meta)** project and create an issue there. Please keep in mind that it is open to the community and as such **should not contain any sensitive information**, so links to Zendesk or other references are encouraged.


## Support Tickets & Customer Information

### Requesting Support for Customers

If your customer contacts you requiring technical support, the following options are available to you:

1. (Recommended) In most cases, please direct them to [open a ticket through the Support Portal](https://gitlab.zendesk.com). It is Support's primary function to provide technical support for our customers, and as paid users, they are entitled to access to us. This option is recommended as the customer is best positioned to describe their own issue and needs. Ensure that the customer understands that it will almost always be the fastest path to response to reach out to Support directly.

1. To request adjustments to licenses, subscriptions, renewals, trials, trial extensions, temp licenses, etc., you can [open an Internal Request](#internal-requests) on behalf of the customer (more details [below](#internal-requests)).
    - **Note:** If the customer already has a license/subscription, and is getting errors while applying it, it's best for the customer to open a Support ticket directly with us.
    - **Note:** To submit the form you must have a [Zendesk Light Agent account](#requesting-a-zendesk-light-agent-account), which all GitLab team members can request. The account also enables team members to see customer tickets in Zendesk, and leave notes for the Support team.

1. In sensitive cases where asking a customer to open a ticket would aggravate a situation, you can open a Support ticket on behalf of the customer. 
   - **Note:** You cannot be logged into Zendesk if you choose this option, because Zendesk automatically closes any tickets submitted with `gitlab.com` email addresses. Instead, use a private/incognito window in your browser to submit the ticket. When submitting the ticket, in the "Your email address" field, enter your customer's email address. If you should be CC'd on the ticket, please request it in the ticket body.

### Requesting support for GitLab.com users that have account or login issues

GitLab.com users that have account or login issues should [open a new ticket](https://support.gitlab.com/hc/en-us/requests/new).
They should select "GitLab.com (SaaS) User Accounts and Login Issues" as the reason for the request.

### If a customer cannot login to GitLab Support Zendesk / customer portal

Customers having difficulty logging into the Zendesk customer portal should first [try our documented troubleshooting steps](https://about.gitlab.com/support/#having-trouble-with-the-support-portal). These steps almost always resolve the difficulty.

If those tips do not resolve the problem, you can open an [Internal Request > Other](#internal-requests) on their behalf.


### Requesting to see Customer Information

According to our [privacy policies](/privacy/), Support does not provide any information regarding customers, groups, projects, etc, to you that are not available publicly. This includes situations where a customer is requesting information about their own projects, groups, etc. If they are unable to authenticate, we cannot assume they are who they say they are. If they are locked out, please have them submit a support ticket.

### Requesting a ZenDesk 'Light Agent' account

A Zendesk Light Agent account is required to view Support Tickets and can be obtained without manager approval.

To request a 'Light Agent' Zendesk account, please send an email to `gitlablightagent.2lba7m@zapiermail.com`. **You must send your request from your GitLab Google / Gmail account. No other addresses will work.** The Subject and Body fields of the email can be empty.

You'll receive an automated reply with the result of your request. Once set up, it takes between 2-24 hours for your account to be assigned to Zendesk in Okta. Once Zendesk is assigned, you should be able to [log in](https://gitlab.zendesk.com/agent). If your account is not assigned within 24h, please reach out to `#support-operations` in Slack. In most cases, people who don't receive access within 24 hours already had an end-user account, which prevents the automation from working as expected.

Note that you cannot send public replies to customers with a Light Agent account. If you need to do this, please submit a [new Access Request issue for a paid full agent account](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) and tag your manager for budget approval. If needed, you can [read more information](https://www.zendesk.com/company/collaboration-add-on-additional-features/) on Light Agent accounts from Zendesk.

## Common Requests

### Regarding GitLab Support, Plans, and Namespaces

| Request    | What To Do                                                   |
| ---------- | ------------------------------------------------------------ |
| Upgrade Assistance | **Global organizations:** [Review the offering](https://about.gitlab.com/support/scheduling-upgrade-assistance/), then open a new ticket in the global support portal <br> **Public Sector organizations:** [Open a ticket](https://about.gitlab.com/support/scheduling-upgrade-assistance/#us-federal-support) in the U.S. Federal support portal |
| Who is on-call for Customer Emergencies? | Run `/chatops run oncall support` in a direct message to `GitLab Chatops` and review the results. This will **not** page the on-call engineer. |
| Who is on-call for GitLab.com CMOC? | Run `/chatops run oncall cmoc` in a direct message to `GitLab Chatops` and review the results. This will **not** page the on-call engineer. |
| Excessive reCaptcha on GitLab.com | While it's happening, post in [#support_gitlab-com](https://gitlab.slack.com/messages/C4XFU81LG/) and link to the issue/MR in question to be added to the allowlist. |
| Report complaints about support that you received from a client or prospect | [Open an issue](https://gitlab.com/gitlab-com/support/feedback/-/issues/new?issuable_template=Indirect%20Feedback) using the `Indirect Feedback` template. |
| See if an inactive GitLab.com Namespace can be claimed | [Open an issue](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/new?issuable_template=Name%20Squatting%20Request) using the `Name Squatting Request` template.

### Contacting users about GitLab incidents or changes

You can request Support to contact GitLab.com users on your behalf. Here are some cases when you can request us to contact users:

- you believe the planned production changes to GitLab will have a high impact on users and/or create numerous inbound tickets
- you need to inform customers of an urgent Security related issue
- you've blocked a user on GitLab.com
- you need to interview a specific account because they are exhibiting atypical usage patterns or behaviors
- there are important project/group affecting changes
- there are GitLab.com account problems

| Request    | What To Do                                                   | Where to ask questions |
| ---------- | ------------------------------------------------------------ | ---------------------- |
| Contact a user during an incident | [Open a confidential infra issue, assign it to the current CMOC](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/new?issuable_template=confidential_incident_data), use `confidential_incident_data` template | #support_gitlab-com |
| Contact a single user | [Open an issue](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=Contact%20Request) using the `Contact Request` template | #support_gitlab-com |
| Prepare Support for changes (with or without contacting select users) | [Open a Support Readiness issue](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/new?issuable_template=Support%20Readiness) | #spt_managers |
| I need to reach out to many users | Review [the tools and users table](/handbook/support/workflows/sending_notices.html#tools-and-approvals) for a guide on how to most effectively send communications. | #spt_managers |

**Please note**: This is not for marketing or sales related contact. This channel is only for communication with users regarding important items that might affect their usage of GitLab SaaS.


### Internal Requests

All internal requests regarding licensing, subscriptions, trials, and grace period extensions should be filed using the [GitLab Support Internal Request form](https://gitlab-com.gitlab.io/support/internal-requests-form/).

A list of common scenarios and the appropriate option are detailed in the following table.

> - **NOTE**: Support cannot start a new trial. If one is needed, *have the user initiate a normal trial first*.
> - **NOTE**: Support requires a single license or subscription request per ticket. If a provided license does not work, or you require a further extension, then please submit a new ticket. All internal L&R tickets must have a 1 to 1 relationship with the generated license or subscription, for audit/reporting reasons.

| Option     | Example Use Case                                             |
| ---------- | ------------------------------------------------------------ |
| **SaaS Subscription Related** | |
| Extend an (almost) expired subscription | Use this when the customer has a subscription with us and their grace period is (almost) expired. Please note we cannot extend the actual subscription. This instead makes a trial for the namespace and uses that for the extension. |
| Investigate incorrect subscription info | Use this when the customer has a subscription with us and something is incorrect in their subscription information. This includes problems with: true-ups, subscription mismatches, can't apply subscription to group/namespace, and current seat usage counts. |
| Reset max seats for QSR | This entry would be used after approval to waive the overage has been granted and approved via SFDC chatter. Once that is done, you would file the form to request support reset the max seats |
| SaaS NFR license request | Ensure the group on GitLab.com has started a trial, then use this option to request a SaaS NFR subscription generation. |
| Billing Entity Change | Use this as part of the process of a billing entity change. |
| **SaaS Trial Related** | |
| Extend a SaaS trial | Use this when the customer's namespace is on a trial that is active/expired. Please note we cannot create the trial for the customer. If they do not have one currently, you will be directed to have them create one. |
| Change an existing SaaS trial plan | Use this when you want to make changes to the plan of a currently active trial, including adding CI minutes or activation of trial runners and overriding the requirement for credit card validation on sales assisted trial namespace. The number of users for GitLab.com trials are not restricted. Please note we cannot create the trial for the customer. If they do not have one currently, you will be directed to have them create one.  |
| **Self-Managed License Related (for paid customers only)** | |
| Extend an (almost) expired subscription | Use this when the customer has a license and their grace period is (almost) expired. Please note we cannot extend the actual license. This instead makes a trial license for the customer and uses that for the extension. |
| Customer did not receive the license | Use this when the customer has not received a paid license from us when they should have. Please note we can resend a license to the contact in the license only.|
| Customer needs the license resent to a new person | Use this to request sending a license to a different user. Please note we cannot send licenses to anyone other than the account owner. To send it to someone else, please ask the customer to file a ticket so we can go through the contact change process. An exemption can be made for a temporary license. |
| Multi-year license needs to be generated | Use this to request the next year's license for a multi-year subscription to be created. **Make sure to check with the customer if they exceeded their seat usage before opening this request.** Support cannot waive true-ups or change anything in SFDC. We cannot create a license until you have checked and amended their subscription as needed.
| Self-managed NFR license request | Use this for Self-Managed NFR license generation |
| Cloud Licensing exemption | Use this for SCL exemptions |
| **Self-Managed Trial Related** | |
| Problems starting a new Self-managed trial | Use this when the customer has no recent trial or subscription, and is not able to request the trial themselves online. |
| Modify an existing Self-managed trial | Use this when you want to make changes to the number of users and/or the plan of a currently active trial |
| Extend an existing Self-managed trial | Use this when the customer is on a trial that is (almost) expired. |
| **Other** | |
| Order Management | Use this for Order Management requests. Please note if the license information you are requesting does not match the Salesforce opportunity, we will likely not be able to generate the license as Support cannot waive seats or Trueups. Ensure you include a summary of the action requested in the context field. |
| Hacker One Reporter License | Use this to request a license be generated for a Hacker One reporter. |
| Wider Community License | Use this to request a community license be generated. Please note for any license lasting longer more than 90 days, manager approval is required. Without an approving manager's email being provided, the ticket will be closed out |
| Other (nothing else fits the request) | Use this when nothing else fits. Please note if this is used when an option **does** exist, the request will be closed and you will need to re-submit your request using the correct option. |

Grace period extensions are treated similarly to trial extensions for both Self-managed and GitLab.com SaaS. To request these, file a request using the [GitLab Support Internal Request form](https://gitlab-com.gitlab.io/support/internal-requests-form/) with the correct option as highlighted in the table above.

Please consider the following:

1. To extend a trial, a previous trial needs to exist for the customer. If no trial was created at any point, a trial should be created by the customer the day after the plan expires.
1. We can provide grace period extensions as long as the current plan is not ongoing. In other words, if the plan expires on the 15th, we can increase the grace period starting the next day (16th). Please plan accordingly.

### US Federal Internal Requests

**Public Sector organizations:** For confidential license issues, GitLab team members can [open a case with US Federal Support](https://federal-support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360001803151).

**Note:** This form is not publicly listed and is for internal GitLab team member use only.

### Request for a license as a GitLab Team Member

[Open an Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=GitLab_Team_Member_License_request) using the `GitLab_Team_Member_License_request` template


### GitLab.com Billable Members List

As Product has implemented the minimal viable versions of [#27074](https://gitlab.com/gitlab-org/gitlab/-/issues/27074) and [#35454](https://gitlab.com/gitlab-org/gitlab/-/issues/35454), Support is beginning to deprecate this process. You can also see [epic 4547](https://gitlab.com/groups/gitlab-org/-/epics/4547) for improvements that product is working on and their progress.

#### Self-serve options for GitLab team members

Here are some options to get basic seat count information:

1. *Plan* and *Seats Currently in Use*:
    - [chatops](https://docs.gitlab.com/ee/development/chatops_on_gitlabcom.html#chatops-on-gitlabcom) (requires dev.gitlab.org account) with the command: `/chatops run namespace find group-path`
2. Info from 1 plus Subscription (or trial) *End Date*
    - [Sisense dashboard](https://app.periscopedata.com/app/gitlab/576469/Namespace-Overview) (changing the namespace ID filter)
3. Info from 2 plus *Seats in Subscription*, *Max Seats Used*, and *Start Date*
    - [Customers portal admin](https://customers.gitlab.com/admin/customer) (requires access via Okta)

If none of the above self-serve options work, file a request using the [GitLab Support Internal Request form](https://gitlab-com.gitlab.io/support/internal-requests-form/)
with the `Other` option providing the Group URL and any additional context.

> **Note:** Support will only provide you with a screenshot of the billing page's subscription info. This includes:

- Plan, and if it is a trial
- Seats in subscription, currently in use, max used, owed
- Subscription Start and End dates

##### Self-serve options for customers

> **Note:** The public facing version of this information is on the [Licensing and subscription FAQ page](https://about.gitlab.com/pricing/licensing-faq/#how-can-i-get-a-list-of-billable-users-for-my-plan).

Customers can get their subscription information and a list of users using a seat on their group's **Billing** page (under the group **Settings**) or by using the [Billable members API endpoint](https://docs.gitlab.com/ee/api/members.html#list-all-billable-members-of-a-group)

---

### I Want to Escalate a Ticket

To keep the term "_escalation_" [MECEFU](/handbook/communication/#mecefu-terms), Support uses the term "**support ticket attention request**" (STAR) to make sure
[account escalations](/handbook/customer-success/csm/escalations/) are distinct. "Escalation" can also be confused with "emergency" or "incident."

Please open a **support ticket attention request**, during [GitLab Global Support Hours](https://about.gitlab.com/support/#definitions-of-gitlab-global-support-hours) only, if
any of these are true:
 - progress in the ticket has stalled and the ticket needs more support engineering effort
 - the priority of the ticket has changed (Low -> High) 
 - the ticket requires immediate intervention to address a high level of customer dissatisfaction
 - Support Management oversight is required in order to bring structure and focus to the situation

[More about support ticket attention requests](/handbook/support/internal-support/support-ticket-attention-requests.html)

Please open an **[account escalation](/handbook/customer-success/csm/escalations/)** if: 
 - There is account level risk because of a single ticket or an aggregation of several issues.
 - Visibility and attention from multiple departments is required to restore customer confidence and resolve the issue.

[More about account escalations](/handbook/customer-success/csm/escalations)

Please open an **emergency ticket** if:
 - a customer is facing a situation that meets our [Definitions of Support Impact](https://about.gitlab.com/support/definitions/#Definitions%20of%20Support%20Impact) for "Emergency"

[More about how Support Engineers handle emergency tickets](/handbook/support/workflows/customer_emergencies_workflows.html)

Please declare a **GitLab.com incident** if:
 - you've noticed a common pattern of reported problems between SaaS customers
 - you've experienced and verified a [loss of functionality over a period lasting more than 5 minutes](/handbook/engineering/infrastructure/incident-management/#definition-of-outage-vs-degraded-vs-disruption-and-when-to-communicate)
 - you suspect a [high severity bug](/handbook/engineering/infrastructure/incident-management/#high-severity-bugs) has been deployed to GitLab.com

[More about GitLab.com incidents](/handbook/engineering/infrastructure/incident-management/)

Please declare a **security incident** if:
 - you have information about a critical issues that may affect the confidentiality, integrity, or availability of GitLab services or data

[More about Security incidents](/handbook/engineering/security/security-operations/sirt/engaging-security-on-call.html#incident-severity)

---

### I want to make a change to a setting in the GitLab.com Admin interface

The Infrastructure team is the admin of GitLab.com, and any changes to product tuneables go through the [change request workflow](/handbook/engineering/infrastructure/change-management/#change-request-workflows).

## Other

### Trials and Prospect Support

For information relating to priority prospects, please see
[Priority Prospects](../priority_prospects).

### My customer is having trouble applying their GitLab.com subscription

The customer has more than likely run into an issue during the purchase process, or is unaware how to apply their subscription to their group. The following documentation outlines how to subscribe to GitLab.com, link their GitLab.com account to [CustomersDot](https://customers.gitlab.com), and apply that subscription to their group.

- [Obtain a GitLab Subscription](https://docs.gitlab.com/ee/subscriptions/#obtain-a-gitlab-subscription)
- [Manage Your GitLab Account](https://docs.gitlab.com/ee/subscriptions/#manage-your-gitlab-account)

### Users in an account I own would like more visibility into their organization's support tickets

In some cases, certain organizations want all members of their organization to be able to see all of the support tickets that have been logged.
In other cases, a particular user from the account would like to be able to see and respond to all tickets from their organization.
If you'd like to enable this, please:

1. Ask the customer to submit a Support ticket using the [Support Ops form](https://support.gitlab.com/hc/en-us/requests/new?ticket_form_id=360001801419) and select `Shared organization requests` in the `Problem type` field.
1. Once the ticket is created, Support Ops will review and work on the ticket.

**Note:** If a customer submits a shared organization request using a different Support form, simply change the form to `Support Ops` and select `Shared organization requests` in the `Problem type` field. Support Ops will then review the ticket and ask any followup questions if necessary.

### My customer needs a report of all the users within their group(s) structure

To view the group's number of billable members, a member of the group with `Owner` permissions may visit the **Settings -> Billing** section of it to see a breakdown. The number of billable members is the amount listed under `Seats currently in use` and this is the amount that will come up whenever they link their group to a paid subscription. Billable members [consist of every user](https://about.gitlab.com/pricing/licensing-faq/#who-gets-counted-in-the-subscription) who is added to a group, subgroup, or project within a paid namespace with the only exception being Guest users within a namespace on certain subscription levels.

We have a [billable members API endpoint](https://docs.gitlab.com/ee/api/members.html#list-all-billable-members-of-a-group) that will produce a list of all the billable members for the group. This must be run with your own PAT.

All the billable members are also currently displayed on the group billing page in an unsorted list. This is a first iteration; if interested, you can view the [epic](https://gitlab.com/groups/gitlab-org/-/epics/4547) to see the planned work. If you have any feedback on the billable members list or want to request functionality or UI changes that are not planned in the epic, please feel free to leave a comment on the epic.

### I want to add important information about the organization/user

Zendesk has the ability to store Organization and User notes. Using Zendesk
triggers, we put these into each ticket submitted by that organization or
user. If there is important information you wish to have included in tickets
for an organization or user, please [create an issue under the
organizations project](https://gitlab.com/gitlab-com/support/support-ops/zendesk-global/organizations/-/issues/new).
template. Please be sure to indicate whether the information is only valid
for a specific period of time so that we may include that fact in the notes.

Examples of some notes you might want added:

- You want to put the SA's name on there for use in the tickets.
- A customer prefers specific titles be used when addressing them.
- An organization has multiple subscriptions.

### Support team Slack channels

**IMPORTANT:** For questions about specific customer situations, we need a support ticket (from the customer) or an [internal request](#internal-requests) (from a GitLab team member). **We cannot act on any customer-specific requests made through Slack.** If you want to request that we place additional attention on an **existing** ticket or internal request, please use the [Support Ticket Attention Request Form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/support_escalation/) ([handbook entry](https://about.gitlab.com/handbook/support/internal-support/support-escalations.html)).


The following channels are where GitLab Support teams can be found on Slack.

- [#support_gitlab-com](https://gitlab.slack.com/messages/C4XFU81LG/) - This channel is for engineers working on GitLab.com tickets. Notifications for CMOC-involved incidents are shared in this channel.
- [#support_self-managed](https://gitlab.slack.com/messages/support_self-managed/) - This channel is for engineers working on Self-managed tickets. Notifications for Customer Emergencies are shared in this channel.
- [#support_licensing-subscription](https://gitlab.slack.com/messages/support_licensing-subscription/) - This channel is for engineers working on license and subscription issues.
- [#support_ticket-attention-requests](https://gitlab.slack.com/messages/CBVAE1L48/) - This channel is for Support Ticket Attention Requests. **NOTE:** Always use the [STAR form](/handbook/support/internal-support/support-ticket-attention-requests.html) to request assistance in this channel.

