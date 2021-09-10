---
layout: handbook-page-toc
title: Working with US Federal tickets
category: Handling tickets
description: "Support Engineering workflow detailing how to work on US Federal Tickets"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

 - TOC
{:toc .hidden-md .hidden-lg}
# Working on US Federal Tickets

US Federal Support generally follows the [working on tickets](https://about.gitlab.com/handbook/support/workflows/working-on-tickets.html#what-is-the-working-on-tickets-workflow) flow for global with a few exceptions.

US Federal Support has a number of engineers with [verified US Citizenship](#access-limited-to-us-citizens) that have between a 50-100% focus on addressing new and existing cases in the US Federal Support Portal. When a Support Engineer is working an on-call shift for the US Federal Zendesk Instance, that Engineer should monitor the instance during that shift. Those without a 50% or higher focus on US Federal but do have access to the instance are still encouraged to participate through pairing sessions, joining customer calls, and assisting with gaps in knowledge where possible.

After 7 days of a case being in the `pending` state an automation will run that puts the case back into an `open` state. This allows for the agent to either follow up with the user on the requested actions or move the case to a `solved` state if they believe the issue in the case is resolved.

There are events where customers will request to re-assign a Zendesk case to a co-worker. We handle this using the `Change` option at the top of the ticket by the respondents email.
The context for this flow is because [CCs are disabled](https://about.gitlab.com/support/#ccs-are-disabled).

## Access limited to US Citizens

Only our US Citizen Support Engineers have access to the [US Federal Zendesk Instance](/handbook/support/support-ops/documentation/zendesk_instances.html#zendesk-us-federal). If you are a US Citizen and would like to get access and contribute you can open an [Access Request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) for either a [light agent](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) or [full agent](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_us_federal_users.html#support-us-federal-staff)(limited to Support/Security Team members).

## Communication Guidelines

Issues relating to tickets received in the US Federal Zendesk Instance may be discussed outside of the US Federal instance with a few key caveats.  Identifying information that includes system names, organization names, customer names, specific infrastructure details (IP address, Hostnames, etc) and logfiles should be limited to internal tickets. Specifics about the technical problem's nature are fine to discuss in chat, issues, and elsewhere publicly but discretion should be used when communicating log snippets, screenshots, and other data to ensure no identifying information is disclosed. When in doubt, ask a manager or the customer's TAM if the information is acceptable to be communicated to non-US citizens. 

For any assistance with log review or confidential information within a ticket it is recommended to directly reach out to other engineers with access to the federal instance within Zendesk using an internal comment to avoid accidental disclosure.

Federal tickets can be linked publicly, such as in an issue or merge request as the link itself does not reveal any information, just avoid naming the link with any identifiable information. For
    example: `[US Federal Internal Ticket](<ticket_link>)`.

When pairing over video chat, be sure you only pair with engineers that have access to the US Federal instance and avoid screensharing content from the US Federal Support Instance, logs, or other information that is required to be kept confidential.

### How to reference customer information securely in chat?

You may leverage links to records in controlled access systems such as Salesforce or Zendesk in order to securely provide information. 

Examples: 
- "This user https://gitlab-federal-support.zendesk.com/users/398443026291/ is struggling with Geo setup..."
- "The person who submitted the case that got bounced back is a member of this organization: https://gitlab.my.salesforce.com/0014M00001hHHKF?srPos=1&srKp=003"

The use of an acronym to discuss an organization is **not permitted** in either #support_us-federal-chat or #feed_zd-federal channels to prevent disclosure of sensitive information.


## Getting help with a ticket

Getting help with a US Federal ticket can be tricky since some information must be kept confidential. However, there are many times when a non-US Federal engineer may be the subject matter expert needed to help efficiently resolve a US Federal Support case. It is encouraged to ask questions in `#support_self-managed` and other non-private slack channels provided the [Communication Guidelines](#communication-guidelines) are followed. You may also consider cross-posting the request for help back to the private `#support_us-federal-chat` channel to maximize the pool of engineers who may be able to assist. It should be kept in mind that although the `#support_us-federal-chat` slack channel is a private channel the communication guidelines still apply as workspace admins and other users invited to the channel may not have been vetted for US Citizenship.

If you need a manager's help with a ticket, please keep in mind that only US Citizens have access to our US Federal Instance, which means that some of our managers cannot help you with tickets. If you are a US Citizen working in US Federal and your manager isn't, please feel free to reach out to a different manager if you are unable to address an issue without sharing confidential information.

## Checking for access

When discussing cases or issues with others in GitLab it may be difficult to ensure they meet the [access requirements](#access-limited-to-us-citizens) to be allowed to receive confidential or sensitive information via chat, screenshare, or call. The single source of truth is whether or not that person has a US Federal Zendesk account, this can be either full or light agent access. The individuals with access have been confirmed by people-ops to be allowed access to this information. The support-ops team has built a handy tool for team members to check whether a person has access to US Federal Zendesk. The tool can be accessed by GitLab team members via [this link](https://gitlab-com.gitlab.io/support/support-ops/zendesk-us-federal/) please note that it updates weekly on Sundays at 00:00 UTC. If you need verification for someone who was added more recently you can always ask a US Federal Support Manager or Support-Ops Manager to validate. If you are not able to find a person's name in this tool the user should be considered ineligible to access the instance and you should refer to the [Communication Guidelines](#communication-guidelines) for steps on how to proceed.
