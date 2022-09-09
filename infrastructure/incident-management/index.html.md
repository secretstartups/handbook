---
layout: handbook-page-toc
title: Incident Management
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

If you're a GitLab team member and are looking to alert Reliability Engineering about an availability issue with GitLab.com, please find quick instructions to report an incident here: [Reporting an Incident](#reporting-an-incident).
{: .alert .alert-danger}

If you're a GitLab team member looking for who is currently the Engineer On Call (EOC), please see the [Who is the Current EOC?](#who-is-the-current-eoc) section.
{: .alert .alert-info}

If you're a GitLab team member looking for the status of a recent incident, please see the incident [board](https://gitlab.com/gitlab-com/gl-infra/production/-/boards/1717012?&label_name%5B%5D=incident). For detailed information about incident status changes, please see the [Incident Workflow](#incident-workflow) section.
{: .alert .alert-info}

## Incident Management

Incidents are **anomalous conditions** that result in—or may lead
to—service degradation or outages. These events require human
intervention to avert disruptions or restore service to operational status.
Incidents are _always_ given immediate attention.

The goal of incident management is to organize chaos into swift incident
resolution. To that end, incident management provides:

1. well-defined [roles and responsibilities](#roles-and-responsibilities) and [workflow](#incident-workflow) for members of the incident team,
1. control points to manage the flow information and the resolution path,
1. an incident review where lessons and techniques are extracted and shared

When an [incident starts](#reporting-an-incident), the incident automation sends a message
in the [`#incident-management`](https://gitlab.slack.com/archives/CB7P5CJS1) channel
containing a link to a per-incident Slack channel for text based communication, the
incident issue for permanent records, and the Situation Room Zoom link for incident team members to join for synchronous verbal
and screen-sharing communication.

### Scheduled Maintenance

Scheduled maintenance that is a `C1` should be treated as an undeclared incident.

30-minutes before the maintenance window starts, the Engineering Manager who is responsible for the change should notify the SRE on-call, the Release Managers and the CMOC to inform them that the maintenance is about to begin.

Coordination and communication should take place in the Situation Room Zoom so that it is quick and easy to include other engineers
if there is a problem with the maintenance.

If a related incident occurs during the maintenance procedure, the EM should act as the Incident Manager for the duration of
the incident.

If a separate unrelated incident occurs during the maintenance procedure, the engineers involved in the scheduled maintenance should
vacate the Situation Room Zoom in favour of the active incident.

## Ownership

By default, the EOC is the owner of the incident.  The incident owner can delegate ownership to another engineer or escalate ownership to the IM at any time.  There is only ever **one** owner of an incident and only the owner of the incident can declare an incident resolved. At anytime the incident owner can engage the next role in the hierarchy for support. The incident issue should be assigned to the current owner.

## Roles and Responsibilities

Clear delineation of responsibilities is important during an incident.
Quick resolution requires focus and a clear hierarchy for delegation of
tasks. Preventing overlaps and ensuring a proper order of operations is vital
to mitigation.

To make your role clear edit your zoom name to start with your role when you join the Zoom meeting.  For Example "IM - John Doe"
To edit your name during a zoom call, click on the three dots by your name in your video tile and choose the "rename" option.
Edits made during a zoom call only last for the length of the call, so it should automatically revert to your profile name/title with the next call.

| **Role** | **Description** | **Who?** |
| ---- | ----------- | ---- |
| `EOC` - **Engineer On Call** | The EOC is the usually the first person alerted - expectations for the role are in the [Handbook for oncall](/handbook/on-call/#expectations-for-on-call). The checklist for the EOC is in our [runbooks](https://gitlab.com/gitlab-com/runbooks/blob/master/on-call/checklists/eoc.md). If another party has declared an incident, once the EOC is engaged the EOC owns the incident. The EOC can escalate a page in PagerDuty to engage the Incident Manager and CMOC. | The Reliability Team **Engineer On Call** is generally an SRE and can declare an incident. They are part of the "SRE 8 Hour" on call shift in PagerDuty. |
| `DRI` - **Directly Responsible Individual** | The DRI is the owner of the incident and is responsible for the coordination of the incident response and will drive the incident to resolution. The DRI should always be the person assigned to the issue. | By default, the `IM` is the DRI for Sev1 and Sev2 externally facing incidents, the EOC is the DRI for all other incidents. The DRI can and should transfer ownership in cases where it makes sense to do so. |
| `IM` - **Incident Manager** [Information about IM onboarding](https://about.gitlab.com/handbook/engineering/infrastructure/incident-manager-onboarding/#) | The Incident Manager is engaged when incident resolution requires coordination from multiple parties. The Incident Manager is the tactical leader of the incident response team—not a person performing technical work. The IM checklist is in our [runbooks](https://gitlab.com/gitlab-com/runbooks/-/blob/master/incidents/general_incidents.md#imoc-checklist). The Incident Manager assembles the incident team by engaging individuals with the skills and information required to resolve the incident. | The Incident Manager On Call rotation is in [PagerDuty](https://gitlab.pagerduty.com/schedules#?query=incident%20manager) |
| `CMOC` - Incident **Communications Manager On Call** | The CMOC disseminates information internally to stakeholders and externally to customers across multiple media (e.g. GitLab issues, status.gitlab.com, etc.). | The **Communications Manager** is generally member of the support team at GitLab. Notifications to the `Incident Management - CMOC` service in PagerDuty will go to the rotations setup for CMOC. |


These definitions imply several on-call rotations for the different roles. Note that not all incidents include engagement from Incident Managers or Communication Managers.

### Incident Responsibilities

#### Incident Status Updates - EOC/Incident Manager

1. During an active incident, the EOC is initially responsible for posting regular status updates in the `Current Status` section of the incident issue description. These updates should summarize the current customer impact of the incident and actions we are taking to mitigate the incident. These updates should occur at regular intervals based on the severity of the incident.
These status updates are used to:
    1. Help construct a detailed incident timeline to be used in Root Cause Analysis.
    1. Ensure CMOC has up to date and accurate information to communicate to customers and other stakeholders.
    1. Ensure others in the company can track the state of the incident and the impact it is having on customers.
1. Once an Incident Manager has been engaged in the incident these responsibilities shift to the Incident Manager.

#### Incident Timeline Updates - EOC/Incident Manager

1. During an active incident, the EOC is initially responsible for ensuring that actions and events relevant to the issue and its resolution are captured in the timeline. These timeline updates should be captured in the `Timeline` section of the incident issue description, but can be captured in a comment thread, if rapid capture of events is needed. If capturing these events in comments on the incident issue, utilize the same format as the `Timeline` section of the incident issue.
1. Once an Incident Manager has been engaged in the incident these responsibilities shift to the Incident Manager. With the Incident Manager taking the initiative to capture these to preserve space for the EOC to work on mitigation. The EOC should therefore update the Incident Manager in the incident call with items relevant to the timeline.

##### Incident Mitigation Methods - EOC/Incident Manager

1. If wider user impact has been established during an S1 or S2 incident, as EOC you have the authority - without requiring further permission - to [Block Users](https://docs.gitlab.com/ee/user/admin_area/moderate_users.html#block-a-user) as needed in order to mitigate the incident. Make sure to follow [Support guidelines regarding `Admin Notes`](../../../support/workflows/admin_note.html#adding-the-note), leaving a note that contains a link to the incident, and any further notes explaining why the user is being blocked.
    1. If users are blocked, then further follow-up will be required. This can either take place during the incident, or after it has been mitigated, depending on time-constraints.
        1. If the activity on the account is considered [abusive](../../security/security-operations/trustandsafety/#what-is-abuse), report the user to [Trust and Safety](../../security/security-operations/trustandsafety/#-contact-us) so that the account can be permanently blocked and cleaned-up. Depending on the nature of the event, the EOC may also consider reaching out to the SIRT team.
        1. If not, [open a related confidential incident issue and assign it to CMOC](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/new?issuable_template=confidential_incident_data) to reach out to the user, explaining why we had to block their account temporarily.
        1. If the EOC is unable to determine whether the user's traffic was malicious or not, please engage the [SIRT](../../security/security-operations/sirt/) team to carry out an investigation.

#### Engineer on Call (EOC) Responsibilities

1. **As EOC, your highest priority for the duration of your shift is the stability of GitLab.com.**
1. The SSOT for who is the current EOC is the [GitLab Production](https://gitlab.pagerduty.com/service-directory/PATDFCE) service definition in PagerDuty.
1. Alerts that are routed to Pagerduty require acknowledgment within 15 minutes, otherwise they will be escalated to the oncall Incident Manager.
    1. Alert-manager alerts in [`#alerts`](https://gitlab.slack.com/archives/alerts) and [`#alerts-general`](https://gitlab.slack.com/archives/alerts-general) are an important source of information about the health of the environment and should be monitored during working hours.
    1. If the Pagerduty alert noise is too high, your task as an EOC is clearing out that noise by either fixing the system or changing the alert.
    1. If you are changing the alert, it is your responsibility to explain the reasons behind it and inform the next EOC that the change occurred.
    1. Each event (may be multiple related pages) should result in an issue in the `production` tracker. See [production queue usage](/handbook/engineering/infrastructure/production/#implementation) for more details.
1. If sources outside of our alerting are reporting a problem, and you have not received any alerts, it is still your responsibility to investigate. [Declare a low severity incident](#reporting-an-incident) and investigate from there.
    1. Low severity ([S3/S4](/handbook/engineering/infrastructure/production/#severity)) incidents (and issues) are cheap, and will allow others a means to communicate their experience if they are also experiencing the issue.
    1. **"No alerts" is not the same as "no problem"**
1. GitLab.com is a complex system. It is ok to not fully understand the underlying issue or its causes. However, if this is the case, as EOC you should page the Incident Manager to find a team member with the appropriate expertise.
    1. Requesting assistance does not mean relinquishing EOC responsibility. The EOC is still responsible for the incident.
    1. The [GitLab Organizational Chart](https://comp-calculator.gitlab.net/org_chart) and the [GitLab Team Page](/company/team/), which lists areas of expertise for team members, are important tools for finding the right people.
1. As soon as an [S1/S2](/handbook/engineering/infrastructure/production/#severity) [incident is declared](#declaring-an-incident), join the `The Situation Room Permanent Zoom`. The Zoom link is in the `#incident-management` topic.
    1. GitLab works in an asynchronous manner, but incidents require a synchronous response. Our collective goal is high availability of 99.95% and beyond, which means that the timescales over which communication needs to occur during an incident is measured in seconds and minutes, not hours.
1. It is important that the "Summary" section of incident issues is updated **early and often** during an incident. This supports our async ability to independently discover the context of an incident and helps all stakeholders (including users) understand the general idea of what is going on.
1. Keep in mind that a GitLab.com incident is not an "infrastructure problem". It is a company-wide issue, and as EOC, you are leading the response on behalf of the company.
    1. If you need information or assistance, engage with Engineering teams. If you do not get the response you require within a reasonable period, escalate through the Incident Manager.
    1. As EOC, require that those who may be able to assist to join the Zoom call and ask them to post their findings in the incident issue or active incident Google doc. Debugging information in Slack will be lost and this should be strongly discouraged.
1. By acknowledging an incident in Pagerduty, the EOC is implying that they are working on it. To further reinforce this acknowledgement, post a note in Slack that you are joining the `The Situation Room Permanent Zoom` as soon as possible.
    1. If the EOC believes the alert is incorrect, comment on the thread in `#production`. If the alert is flappy, create an issue and post a link in the thread. This issue might end up being a part of RCA or end up requiring a change in the alert rule.
1. _Be inquisitive_. _Be vigilant_. If you notice that something doesn't seem right, investigate further.
1. The EOC should not consider immediate work on an incident completed until the top description section in the Incident Issue (above the "Incident Review" section) is filled out with useful information to describe all the key aspects of the Incident.
1. After the incident is resolved, the EOC should review the comments and ensure that the [corrective actions](#corrective-actions) are added to the issue description, regardless of the incident severity. If it has a `~review-requested` label, the EOC should start on performing an [incident review](/handbook/engineering/infrastructure/incident-review/), in some cases this may be be a synchronous review meeting or an async review depending on what is requested by those involved with the incident.

#### When to Engage an Incident Manager

If any of the following are true, it would be best to engage an Incident Manager:

1. There is a S1/P1 report or security incident.
1. An entire path or part of functionality of the GitLab.com application must be blocked.
1. Any unauthorized access to a GitLab.com production system

#### What happens when there are simultaneous incidents?

Occassionally we encounter multiple incidents at the same time. Sometimes a single Incident Manager can cover multiple incidents. This isn't always possible, especially if there are two simultaneous high-severity incidents with significant activity.

When there are multiple incidenets and you decide that additional incident manager help is required, take these actions:
1. Post a slack message in #imoc_general as well as #incident-management asking for additional Incident Manager help.
1. If your ask is not addressed via slack, escalate to  [Infastructure Leadership](https://gitlab.pagerduty.com/service-directory/PJKOEIS) in Pagerduty.  

If a second incident zoom is desired, choose which incident will move to the new zoom and create a new meeting in zoom.  Be sure to edit the channel topic of the incident slack channel to indicate the correct zoom link. 

### Incident Manager Responsibilities

1. When the Incident Manager is engaged on an incident, they are responsible for keeping the `Current Status` section of the incident issue regularly updated.
1. The SSOT for who is the current Incident Manager is the [GitLab Production - IMOC](https://gitlab.pagerduty.com/service-directory/PE8A5MX) service definition in PagerDuty.
1. The Incident Manager should engage when requested by the EOC. The IM will not be requested for every incident, typically only S1/S2 incidents. [Incident Manager incident Checklist in runbooks](https://gitlab.com/gitlab-com/runbooks/-/blob/master/incidents/general_incidents.md#imoc-checklist)
1. When possible, the Incident Manager should [monitor](https://gitlab.slack.com/archives/CB7P5CJS1) ongoing [incidents](https://gitlab.com/gitlab-com/gl-infra/production/-/issues?scope=all&utf8=%E2%9C%93&state=opened) and engage with the incident if it escalates to a user-impacting incident. In most cases this will happen via the EOC escalating to the Incident Manager.
1. The Incident Manager should support the EOC by contacting team members from other teams as well as escalating within management when required.
    1. If the Incident Manager is unable to obtain a response through Slack channels, they should escalate to a manager or director to obtain assistance.
    1. They assemble a 'bench' during an incident, arranging appropriate reviewers and maintainers ahead of time to stand-by to reduce review coordination time of critical MRs.
1. They evaluate information provided by team members, provide direction as necessary or when requested, and coordinate to ensure all Team Members necessary to restore service are engaged.
1. If applicable, coordinate the incident response with [business contingency activities](/handbook/business-ops/gitlab-business-continuity-plan/).
1. In the event of an incident which has been triaged and confirmed as a clear Severity 1 impact, notify Infrastructure leadership via PagerDuty [Infrastructure Leadership Escalation](https://gitlab.pagerduty.com/escalation_policies#PO2KR8R) This notification should occur 24/7.
1. The IM should not consider immediate work on an incident completed until the top description section in the Incident Issue (above the "Incident Review" section) is filled out with useful information to describe all the key aspects of the Incident.
1. After the incident is resolved, the Incident Manager is responsible for conducting the [post-incident review](/handbook/engineering/infrastructure/incident-review/).
    1. If an incident is either an S1 or S2 and has been communicated on the status page (including security) then the Incident Manager should add the incident to the [Gitlab.com standup agenda (internal only)](https://docs.google.com/document/d/1vww0BfRzHtrGhMppTEw5Q27KSzD1e72dmJ3XoppxC-A/edit#).
    1. If the meeting is not active (no planned agenda or active calendar event) then the Incident Manager should call for activation of the meeting for the following business day by noting the need in slack #vp-development and #vp-infrastructure.
1. For high severity bugs that affect customers, the Incident Manager is responsible for making sure Incident Reviews are coordinated with other departments in Engineering and go through the complete Incident Review process.
1. When engaged in an active incident near the end of an Incident Manager shift, the current Incident Manager owns the decision as to whether to continue in their role or to transition the active incident to the incoming Incident Manager. In most cases, this transition should be the expected default behavior.
1. During a shift where no Incident Manager engaged incidents have occurred, no transition ("handover") is required.
1. Note that our internal tooling automatically mentions the user of the IM on shift during the creation of all incident issues. This does not mean IMs are expected to engage with those issues. Only when an Incident Manager has been paged or an issue has been handed off to them is there an expecation of engagement with an incident issue.

To engage the Incident Manager: either run `/pd trigger` in Slack, then select the "GitLab
Production - IMOC" service, or create an incident in [the Pagerduty page for the service](https://gitlab.pagerduty.com/service-directory/PE8A5MX).

#### IM Severity 1 Checklist

During a Severity 1 Incident there is a lot going on. Here is a checklist of the most important things to keep track of:

1. Ensure the description is updated to include the Overall summary and incident duration.
1. Notify Infrastructure leadership via PagerDuty [Infrastructure Leadership Escalation](https://gitlab.pagerduty.com/escalation_policies#PO2KR8R) This notification should occur 24/7. The Infrastructure Leader responding to this escalation should carry out the responsibilities listed under [Infrastructure Leadership Escalation](/handbook/engineering/infrastructure/incident-management/#infrastructure-leadership-escalation).
1. Ensure that the root cause is clearly articulated and the appropriate `RootCause::` label is used OR that a clear path of investigation to determine root cause is continuing.
1. Review that the mitigation steps were reasonable, effective, and don't leave us in a state vulnerable for other problems.
1. Review that the necessary external communications have been completed (Engage CMOC for this).
1. Add a summary & link to the [Reliability Standup agenda](https://docs.google.com/document/d/1vww0BfRzHtrGhMppTEw5Q27KSzD1e72dmJ3XoppxC-A/edit#) (internal only)
1. Ensure that any Sev1/P1 Corrective Actions have clear ownership and engagement.
1. Ensure that any ongoing effort or oversight by future IM and EOC shifts is supported with handoff notes and sync handoff (if needed).

#### Infrastructure Leadership Escalation

During a verified Severity 1 Incident the IM will page for Infrastructure Leadership.  This is not a substitute or replacement for the active Incident Manager. The Infrastructure Leadership responsibilities include:
1. Overall evaluation of the incident and further validation of Severity.
1. Assistance with further support from other teams, including those outside of Engineering (as appropriate)
1. Posting a notice to e-group slack channel. This notice does not have to be expedited, but should occur once there is a solid understanding of user impact as well as the overall situation and current response activities.  The e-group notice should be in this format
```     
:s1: **Incident on GitLab.com**
**— Summary —**
(include high level summary)
**— Customer Impact —**
(describe the impact to users including which service/access methods and what percentage of users)
**— Current Response —**
(bullet list of actions)
**— Production Issue —**
 Main incident: (link to the incident)
 Slack Channel: (link to incident slack channel) 
```
1. After posting the notice, continue to engage with the incident as needed and also post updates to a thread of the e-group notification when there are material/significant updates.

### Communications Manager on Call (CMOC) Responsibilities

For serious incidents that require coordinated communications across multiple channels, the Incident Manager will rely on the CMOC for the duration of the incident.

The GitLab support team staffs an oncall rotation and via the `Incident Management - CMOC` service in PagerDuty. They have a section in [the support handbook](/handbook/support/workflows/cmoc_workflows.html) for getting new CMOC people up to speed.

During an incident, the CMOC will:

1. Be the voice of GitLab during an incident by updating our end-users and internal parties through updates to our [status page](https://status.gitlab.com/) hosted by Status.io.
    - Tip: use `/incident post-statuspage` on Slack to create an incident on Status.io. Any updates to the incident will have to be done manually by following [these instructions](/handbook/support/workflows/cmoc_workflows.html#stage-2-updating-incidents).
1. Update the status page at regular intervals in accordance with [the severity of the incident](/handbook/support/workflows/cmoc_workflows.html#frequency-of-updates).
1. Notify GitLab stakeholders (customer success and community team) of current incident and reference where to find further information. Provide additional update when the incident is mitigated.

#### How to engage the CMOC?

If, during an incident, EOC or Incident Manager decide to engage CMOC, they should do that
by paging the on-call person:

- Using the `/pd trigger` command in Slack, then select the "Incident Management - CMOC" service from the modal.
or
- Directly from PagerDuty in the [Incident Management - CMOC Rotation](https://gitlab.pagerduty.com/escalation_policies#PNH1Z1L)
schedule in PagerDuty. That can be done by navigating to [Incidents page in PagerDuty](https://gitlab.pagerduty.com/incidents),
and then creating the new incident while picking **Incident Management - CMOC** as
**Impacted Service**.

### Incidents requiring direct customer interaction

If, during an S1 or S2 incident, it is determined that it would be beneficial to have a synchronous conversation with one or more customers a new Zoom meeting should be utilized for that conversation. Typically there are two situations which would lead to this action:
1. An incident which is uniquely impacting a single, or small number, of customers where their insight into how they are using GitLab.com would be valuable to finding a solution.
1. A large-scale incident, such as a multi-hour full downtime or regional DR event, when it is desired to have synchronous conversation with key customers, typically to provide another form of update or to answer further questions.

Due to the overhead involved and the risk of detracting from impact mitigation efforts, this communication option should be used sparingly and only when a very clear and distinct need is present.

Implementing a direct customer interaction call for an incident is to be initiated by the current Incident Manager by taking these steps:
1. Identify a second Incident Manager who will be dedicated to the customer call. If not already available in the incident, announce the need in #imoc_general with a message like `/here A second incident manager is required for a customer interaction call for XXX`.
1. Page the [Infrastructure Leadership pagerduty rotation](https://gitlab.pagerduty.com/schedules#PBSMJH2) for additional assistance and awareness.
1. Identify a Technical Account Manager who will act as the primary TAM and also be dedicated to the customer call. If this role is not clear, also refer to Infrastructure Leadership for assistance.
1. Request that both of these additional roles join the main incident to come up to speed on the incident history and current status. If necessary to preserve focus on mitigation, this information sharing may be done in another Zoom meeting (which could then also be used for the customer conversation)

After learning of the history and current state of the incident the Engineering Communications Lead will initiate and manage the customer interaction through these actions:
1. Start a new Zoom meeting - unless one is already in progress - invite the primary TAM.
1. The Engineering Communications Lead and TAM should appropriately set their Zoom name to indicate `GitLab`, as well as their Role, `TAM` `Engineering Communications Lead`
1. Through the TAM, invite any customers who are required for the discussion.
1. The Engineering Communications Lead and the Incident Manager need to prioritize async updates that will allow for the correct information to flow between conversations. Consider using the incident slack channel for this but agree before the customer call starts.
1. Both the Engineering Communications Lead and TAM should remain in the Zoom with the customers for the full time required for the incident. To avoid loss of context, neither should "jump" back and forth from the internal incident Zoom and the customer interaction Zoom.

In some scenarios it may be necessary for most all participants of an incident (including the EOC, other developers, etc.) to work directly with a customer. In this case, the customer interaction Zoom shall be used, NOT the main GitLab Incident Zoom. This will allow for the conversation (as well as text chat) while still supporting the ability for primary responders to quickly resume internal communications in the main Incident Zoom. Since the main incident Zoom may be used for multiple incidents it will also prevent the risk of confidential data leakage and prevent the inefficiency of having to frequently announce that there are customers in the main incident zoom each time the call membership changes.

## Corrective Actions

Corrective Actions (CAs) are work items that we create as a result of an incident. Only issues arising out of an incident should receive the label "corrective action". They are designed to prevent or reduce the likelihood and/or impact of an incident recurrence and as such are part of the Incidence Management cycle.

Corrective Actions should be related to the incident issue to help with downstream analysis, and it can be helpful to refer to the incident in the description of the issue.

Corrective Actions issues in the Infrastructure project should be created using the Corrective Action issue template to ensure consistency in format and labeling.

### Best practices and examples, when creating a Corrective Action issue:

- Use [SMART](https://en.wikipedia.org/wiki/SMART_criteria) criteria: Specific, Measurable, Achievable, Relevant and Time-bounded.
- Link to the incident they arose from.
- Assign a Severity label designating the highest severity of related incidents.
- Assign a priority label indicating the urgency of the work.
- Assign the label for the associated affected service if applicable.
- Provide enough context so that any engineer in the CA issue's project could pick up the issue and know how to move forward with it.
- Avoid creating CAs that:
    - Are too generic (most typical mistake, as opposed to Specific)
    - Only fix incident symptoms.
    - Introduce more human error.
    - will not help to keep the incident from happening again.
- Examples: (taken from several best-practices Postmortem pages)

| Badly worded | Better |
| ------------ | ------ |
| Fix the issue that caused the outage | (Specific) Handle invalid postal code in user address form input safely |
| Investigate monitoring for this scenario | (Actionable) Add alerting for all cases where this service returns >1% errors |
| Make sure engineer checks that database schema can be parsed before updating | (Bounded) Add automated presubmit check for schema changes |

## Runbooks

[Runbooks](https://gitlab.com/gitlab-com/runbooks) are available for
engineers on call. The project README contains links to checklists for each
of the above roles.

**In the event of a GitLab.com outage**, a mirror of the runbooks repository is available on at https://ops.gitlab.net/gitlab-com/runbooks.

## Who is the Current EOC?

The chatops bot will give you this information if you DM it with `/chatops run oncall prod`.

### When to Contact the Current EOC

The current EOC can be contacted via the `@sre-oncall` handle in Slack, but please only use this handle in the following scenarios.

1. You need assistance in halting the deployment pipeline. note: this can also be accomplished by [Reporting an Incident](/handbook/engineering/infrastructure/incident-management/#reporting-an-incident) and labeling it with `~blocks deployemnts`.
1. You are conducting a production change via our [Change Management](/handbook/engineering/infrastructure/change-management/) process and as a required step need to seek the approval of the EOC.
1. For all other concerns please see the [Getting Assistance](/handbook/engineering/infrastructure/team/reliability/#getting-assistance) section.

The EOC will respond as soon as they can to the usage of the `@sre-oncall` handle in Slack, but depending on circumstances, may not be immediately available. If it is an emergency and you need an immediate response, please see the [Reporting an Incident](/handbook/engineering/infrastructure/incident-management/#reporting-an-incident) section.

## Reporting an Incident

If you are a GitLab team member and would like to report a possible incident related to GitLab.com and have the EOC paged in to respond, choose one of the reporting methods below. Regardless of the method chose, please stay online until the EOC has had a chance to come online and engage with you regarding the incident. Thanks for your help!

### Report an Incident via Slack

Type `/incident declare` in the [`#production`](https://gitlab.slack.com/archives/C101F3796) channel in GitLab's Slack and follow the prompts. This will open an incident issue. If you suspect the issue is an emergency, tick the "Page the engineer on-call" box - not the incident manager or communications manager boxes. You do not need to decide if the problem is an incident, and should err on the side of paging the engineer on-call if you are not sure. We have triage steps below to make sure we respond appropriately. Reporting high severity bugs via this process is the preferred path so that we can make sure we engage the appropriate engineering teams as needed.

![Incident Declaration Slack window](incident-declare-slack.png)
_Incident Declaration Slack window_

| Field | Description |
| ----- | ----------- |
| Title | Give the incident as descriptive as title as you can. Please prepend the title with a date in the format YYYY-MM-DD |
| Severity | If unsure about the severity to choose, but you are seeing a large amount of customer impact, please select S1. More details here: [Incident Severity](#incident-severity). |
| Tasks: page the on-call engineer | If you'd like to page the on-call engineer, please check this box. If in doubt, err on the side of paging if there is significant disruption to the site. |
| Tasks: page on-call managers | You can page the incident and/or communications managers on-call. |

![Incident Declaration Results](incident-declare-results.png)

_Incident Declaration Results_

As well as opening a GitLab incident issue, a dedicated incident Slack channel will be opened. The "woodhouse" bot will post links to all of these resources in the main `#incident-management` channel. Please note that unless you're an SRE, you won't be able to post in `#incident-management` directly. Please join the dedicated Slack channel, created and linked as a result of the incident declaration, to discuss the incident with the on-call engineer.

### Report an Incident via Email

Email [gitlab-production-eoc@gitlab.pagerduty.com](mailto:gitlab-production-eoc@gitlab.pagerduty.com). This will immediately page the Engineer On Call.

## Definition of Outage vs Degraded vs Disruption and when to Communicate

This is a first revision of the definition of Service Disruption (Outage), Partial Service Disruption, and Degraded Performance per the terms on Status.io.
Data is based on the graphs from the [Key Service Metrics Dashboard](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1)

Outage and Degraded Performance incidents occur when:

1. `Degraded` as any sustained 5 minute time period where a service is below its documented Apdex SLO or above its documented error ratio SLO.
1. `Outage` (Status = Disruption) as a 5 minute sustained error rate above the Outage line on the error ratio graph

![degraded and outage](/images/handbook/engineering/infrastructure/incident-management/SLI-degraded-outage.png)

In both cases of Degraded or Outage, once an event has elapsed the 5 minutes, the Engineer on Call and the Incident Manager should engage the CMOC to help with external communications.  All incidents with a total duration of more than 5 minutes should be publicly communicated as quickly as possible (including "blip" incidents), and within 1 hour of the incident occurring.

SLOs are documented in the [runbooks/rules](https://gitlab.com/gitlab-com/runbooks/blob/master/rules/service_apdex_slo.yml)

To check if we are Degraded or Disrupted for GitLab.com, we look at these graphs:

1. Web Service
    - [Error Ratio](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=8&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=web&var-stage=main&var-sigma=2)
    - [Apdex](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=web&var-stage=main&var-sigma=2&fullscreen&panelId=7)
1. API Service
    - [Error Ratio](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=8&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=api&var-stage=main&var-sigma=2)
    - [Apdex](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=7&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=api&var-stage=main&var-sigma=2)
1. Git service(public facing git interactions)
    - [Error Ratio](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=8&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=git&var-stage=main&var-sigma=2)
    - [Apdex](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=7&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=git&var-stage=main&var-sigma=2)
1. GitLab Pages service
    - [Error Ratio](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=8&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=pages&var-stage=main&var-sigma=2)
    - [Apdex](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=7&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=pages&var-stage=main&var-sigma=2)
1. Registry service
    - [Error Ratio](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=8&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=registry&var-stage=main&var-sigma=2)
    - [Apdex](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=7&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=registry&var-stage=main&var-sigma=2)
1. Sidekiq
    - [Error Ratio](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=sidekiq&var-stage=main&var-sigma=2&fullscreen&panelId=8)
    - [Apdex](https://dashboards.gitlab.net/d/general-service/service-platform-metrics?orgId=1&fullscreen&panelId=7&var-PROMETHEUS_DS=Global&var-environment=gprd&var-type=sidekiq&var-stage=main&var-sigma=2)

A Partial Service Disruption is when only part of the GitLab.com services or infrastructure is experiencing an incident. Examples of partial service disruptions are instances where GitLab.com is operating normally except there are:

1. delayed CI/CD pending jobs
1. delayed repository mirroring
1. high severity bugs affecting a particular feature like Merge Requests
1. Abuse or degradation on 1 gitaly node affecting a subset of git repos. This would be visible on the Gitaly service metrics

### High Severity Bugs

In the case of high severity bugs, we prefer that an incident issue is still created via [Reporting an Incident](/handbook/engineering/infrastructure/incident-management/#reporting-an-incident). This will give us an incident issue on which to track the events and response.

In the case of a high severity bug that is in an ongoing, or upcoming deployment please follow the steps to [Block a Deployment](https://about.gitlab.com/handbook/engineering/releases/#deployment-blockers).

## Security Incidents

If an incident may be security related, engage the Security Engineer on-call by using `/security` in Slack. More detail can be found in [Engaging the Security Engineer On-Call](/handbook/engineering/security/security-operations/sirt/engaging-security-on-call.html).

## Communication

Information is an asset to everyone impacted by an incident. Properly managing the flow of information is critical to minimizing surprise and setting expectations. We aim to keep interested stakeholders apprised of developments in a timely fashion so they can plan appropriately.

This flow is determined by:

1. the type of information,
1. its intended audience,
1. and timing sensitivity.

Furthermore, avoiding information overload is necessary to keep every stakeholder’s focus.

To that end, we will have:


1. a dedicated Zoom call for all incidents. A link to the Zoom call can be found in the topic for the [`#incident-management`](https://gitlab.slack.com/archives/incident-management) room in Slack.
1. a Google Doc as needed for multiple user input based on the [shared template](https://docs.google.com/document/d/1NMZllwnK70-WLUn_9IiiyMWeXs-JKPEiq-lordxJAig/edit#)
1. a dedicated [`#incident-management`](https://gitlab.slack.com/archives/incident-management) channel for internal updates
1. regular updates to status.gitlab.com via status.io that disseminates to various media (e.g. Twitter)
1. a dedicated repo for issues related to [Production](https://gitlab.com/gitlab-com/production) separate from the queue that holds Infrastructure's workload: namely, issues for incidents and changes.

### Status

We manage incident [communication](#communication) using status.io, which updates [status.gitlab.com](https://status.gitlab.com). Incidents in status.io have **state** and **status** and are updated by the incident owner.

To create an incident on status.io, you can use `/incident post-statuspage` on Slack.

#### Status during Security Incidents

In some cases, we may choose not to post to status.io, the following are examples where we may skip a post/tweet. In some cases, this helps protect the security of self managed instances until we have released the security update.

- If a partial block of a URL is possible, for example to exclude problematic strings in a path.
- If there is no usage of the URL in the last week based on searches in our logs for GitLab.com.

#### States and Statuses

Definitions and rules for transitioning state and status are as follows.

| **State** | **Definition** |
| ----- | ---------- |
| Investigating | The incident has just been discovered and there is not yet a clear understanding of the impact or cause. If an incident remains in this state for longer than 30 minutes after the EOC has engaged, the incident should be escalated to the Incident Manager On Call. |
| Identified | The cause of the incident is believed to have been identified and **a step to mitigate has been planned and agreed upon**. |
| Monitoring | The step has been executed and metrics are being watched to ensure that we're operating at a baseline. If there is a clear understanding of the specific mitigation leading to resolution and high confidence in the fact that the impact will not recur it is preferable to skip this state. |
| Resolved | The incident is closed and status is again Operational. |

Status can be set independent of state. The only time these must align is when an issues is

| **Status** | **Definition** |
| ------ | ---------- |
| Operational | The default status before an incident is opened and after an incident has been resolved. All systems are operating normally. |
| Degraded Performance | Users are impacted intermittently, but the impact is not observed in metrics, nor reported, to be widespread or systemic. |
| Partial Service Disruption | Users are impacted at a rate that violates our SLO. The Incident Manager On Call must be engaged and monitoring to resolution is required to last longer than 30 minutes. |
| Service Disruption | This is an outage. The Incident Manager On Call must be engaged. |
| Security Issue | A security vulnerability has been declared public and the security team has requested that it be published on the status page. |

## Severities

### Incident Severity

Incident severity should be assigned at the beginning of an incident to ensure proper response across the organization.  Incident severity should be determined based on the information that is available **at the time**.  Severities can and should be adjusted as more information becomes available.

Incident Managers and Engineers On-Call can use the following table as a guide for assigning incident severity.

| Severity | Description     | Example Incidents     |
| ------------- | ------------- | -------------|
| `~severity::1` |  &emsp;  - GitLab.com is unavailable or severely degraded for the typical GitLab user<br>&emsp;  - Any data loss directly impacting customers<br>&emsp;  - The [guaranteed self-managed release date](/handbook/engineering/releases/#timelines) is put in jeopardy<br>&emsp;  - It is a [high impact security incident](https://about.gitlab.com/handbook/engineering/security/security-operations/sirt/severity-matrix.html#functional-impact-rating-examples)<br><br>[Incident Managers](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#incident-manager-responsibilities) should be paged for all `~severity::1` incidents| Past `severity::1` [Issues](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/?sort=updated_desc&state=closed&label_name%5B%5D=severity%3A%3A1&first_page_size=100)|
| `~severity::2` |   &emsp;  - GitLab.com is unavailable or degraded for a small subset of users <br>&emsp;- Gitlab.com is degraded but a reasonable workaround is available<br>&emsp;- Any [moderate impact security incident](https://about.gitlab.com/handbook/engineering/security/security-operations/sirt/severity-matrix.html#functional-impact-rating-examples)<br><br>[Incident Managers](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/#incident-manager-responsibilities) should be paged for all `~severity::2` incidents| Past `severity::2` [Incidents](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/?sort=updated_desc&state=closed&label_name%5B%5D=severity%3A%3A2&first_page_size=100)|
| `~severity::3` |   &emsp;  - Broad impact on GitLab.com and minor inconvenience to typical user's workflow <br>&emsp;- A workaround is not needed<br>&emsp;- Any [low impact security incident](https://about.gitlab.com/handbook/engineering/security/security-operations/sirt/severity-matrix.html#functional-impact-rating-examples)<br><br>Incident Managers should **NOT** be paged for `~severity::3` incidents| Past `severity::3` [Incidents](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/?sort=updated_desc&state=closed&label_name%5B%5D=severity%3A%3A3&first_page_size=100)|
| `~severity::4` |   &emsp;  - Minimal impact on GitLab.com typical user's workflow<br><br>Incident Managers should **NOT** be paged for `~severity::4` incidents| Past `severity::4` [Incidents](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/?sort=updated_desc&state=closed&label_name%5B%5D=severity%3A%3A4&first_page_size=100)|

### Alert Severities

1. Alerts severities do not necessarily determine incident severities. A single incident can trigger a number of alerts at various severities, but the determination of the incident's severity is driven by the above definitions.
1. Over time, we aim to automate the determination of an incident's severity through service-level monitoring that can aggregate individual alerts against specific SLOs.

## Incident Workflow

### Summary

In order to effectively track specific metrics and have a single pane of glass for incidents and their reviews, specific labels are used. The below [workflow diagram](#workflow-diagram) describes the path an incident takes from `open` to `closed`. All `S1` incidents require a review, other incidents can also be reviewed as [described here](/handbook/engineering/infrastructure/incident-review/#review-criteria).

GitLab uses the [Incident Management](https://about.gitlab.com/handbook/engineering/infrastructure/incident-management/) feature of the GitLab application. Incidents are [reported](/handbook/engineering/infrastructure/incident-management/#reporting-an-incident) and closed when they are resolved. A resolved incident means the degradation has ended and will not likely re-occur.

If there is additional follow-up work that requires more time after an incident is resolved and closed (like a detailed root cause analysis or a corrective action) a new issue may need to be created and linked to the incident issue.
It is important to add as much information as possible as soon as an incident is resolved while the information is fresh, this includes a high level summary and a timeline where applicable.

### Assignees

The EOC and the Incident Manager On Call, at the time of the incident, are the default assignees for an incident issue. They are the assignees for the entire workflow of the incident issue.

### Labeling

The following labels are used to track the incident lifecycle from active incident to completed incident review. [Label Source](https://gitlab.com/gitlab-com/gl-infra/production/-/labels?utf8=%E2%9C%93&subscribed=&search=Incident%3A%3A)

#### Workflow Labeling

In order to help with attribution, we also label each incident with a scoped label for the Infrastructure Service (Service::) and Group (group::) scoped labels among others.

| **Label** | **Workflow State** |
| ----- | -------------- |
| `~Incident::Active` | Indicates that the incident labeled is active and ongoing. Initial severity is assigned when it is opened. |
| `~Incident::Mitigated` | Indicates that the incident has been mitigated. A mitigated issue means that the impact is significantly reduced and immediate post-incident activity is ongoing (monitoring, messaging, etc.). The mitigated state should not be used for silenced alerts, or alerts that may reoccur. In both cases you should mark the incident as resolved and close it.|
| `~Incident::Resolved` | Indicates that SRE engagement with the incident has ended and the condition that triggered the alert has been resolved. Incident severity is re-assessed and determined if the initial severity is still correct and if it is not, it is changed to the correct severity. Once an incident is resolved, the issue will be closed. |
| `~Incident::Review-Completed` | Indicates that an incident review has been completed, this should be added to an incident after the review is completed if it has the `~review-requested` label. |

#### Root Cause Labeling

Labeling incidents with similar causes helps develop insight into overall trends and when combined with Service attribution, improved understanding of Service behavior. Indicating a single root cause is desirable and in cases where there appear to be multiple root causes, indicate the root cause which precipitated the incident.

The EOC, as DRI of the incident, is responsible for determining root cause.

The current Root Cause labels are listed below. In order to support trend awareness these labels are meant to be high-level, not too numerous, and as consistent as possible over time.

| Root Cause | Description |
| ---------- | ----------- |
| `~RootCause::Config-Change` | configuration change, other than a feature flag being toggled |
| `~RootCause::Database-Failover` | database failover event |
| `~RootCause::DB-Migration` | resulting from a database migration or a post-deploy migration |
| `~RootCause::ExternalAgentMaliciousBehavior` | ostensibly malicious behavior by an external agent |
| `~RootCause::External-Dependency` | resulting from the failure of a dependency external to GitLab, including various service providers. Use of other causes (such as `~RootCause::SPoF` or `~RootCause::Saturation`) should be strongly considered for most incidents. |
| `~RootCause::FalseAlarm` | an incident was created by a page that isn't actionable and should result into adjusting the alert or [deleting it](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/deleting-alerts.md) |
| `~RootCause::Feature-Flag` | a feature flag toggled in some way (off or on or a new percentage or target was chosen for the feature flag) |
| `~RootCause::Flaky-Test` | an incident, usually a deployment pipeline failure found to have been caused by a flaky QA test |
| `~RootCause::GCP-Networking` | GCP networking event |
| `~RootCause::Indeterminate` | when an incident has been investigated, but the root cause continues to be unknown and an agreement has been formed to not pursue any further investigation. |
| `~RootCause::Known-Software-Issue` | known/existing technical debt in the product that has yet to be addressed |
| `~RootCause::Malicious-Traffic` | deliberate malicious activity targeted at GitLab or customers of GitLab (e.g. DDoS) |
| `~RootCause::Naive-Traffic` | elevated external traffic exhibiting anti-pattern behavior for interface usage |
| `~RootCause::Release-Compatibility` | forward- or backwards-compatibility issues between subsequent releases of the software running concurrently, and sharing state, in a single environment (e.g. Canary and Main stage releases). They can be caused by incompatible database DDL changes, canary browser clients accessing non-canary APIs, or by incompatibilities between Redis values read by different versions of the application. |
| `~RootCause::Saturation` | failure resulting from a service or component which failed to scale in response to increasing demand (whether or not it was expected) |
| `~RootCause::Security` | an incident where the [SIRT team](/handbook/engineering/security/#sirt---security-incident-response-team-former-security-operations) was engaged, generally via a request originating from the SIRT team or in a situation where Reliability has paged SIRT to assist in the mitigation of an incident not caused by `~RootCause::Malicious-Traffic` |
| `~RootCause::Software-Change` | feature or other code change |
| `~RootCause::SPoF` | the failure of a service or component which is an architectural SPoF (Single Point of Failure) |

#### Customer Communications Labeling

We want to be able to report on a scope of incidents which have met a level of impact which necessitated customer communications. An underlying assumption is that any material impact will always be communicated in some form. Incidents are to be labeled indicating communications even if the impact is later determined to be lesser, or when the communication is done by mistake.

Note: This does not include Contact Requests where the communication is due to identifying a cause.

The CMOC is responsible for ensuring this label is set for all incidents involving use of the Status Page or where other direct notification to a set of customers is completed (such as via Zendesk).

| Customer Communications | Description |
| ----------------------- | ----------- |
| `~Incident-Comms::Status-Page` | Incident communication included use of the public [GitLab Status Page](https://status.gitlab.com/) |
| `~Incident-Comms::Private` | Incident communication was limited to fewer customers or otherwise was only directly communicated to impacted customers (not via the GitLab Status Page) |
| `~Contact Request` | Applied to issues where it is requested that Support contact a user or customer |
| `~Contact Request::Awaiting Contact` |  Support has yet to contact the user(s) in question in this issue. |
| `~Contact Request::Contacted` | Support has contacted the user(s) in question and is awaiting confirmation from Production. |
| `~CMOC Required` | Marks issues that require a CMOC involvement. |

#### "Needs" labeling

The following labels are added and removed by [triage-ops](https://gitlab.com/gitlab-com/gl-infra/triage-ops/) automation depending on whether the corresponding label has been been added.

| Needs Label | Description |
| ----------- | ----------- |
| `~NeedsRootCause` | Will be added/removed automatically based on there being a `~RootCause::*` label |
| `~NeedsService` | Will be added/removed automatically based on there being a `~Service::*` label |
| `~NeedsCorrectiveActions` | Will be added/removed automatically based on there being at least one link on the `Corrective Actions` section of the Issue description |

#### Required Labeling

These labels are always required on incident issues.

| **Label** | **Purpose** |
| ----- | ------- |
| `~incident` | Label used for metrics tracking and immediate identification of incident issues. |
| `~Service::*` | Scoped label for service attribution. Used in metrics and error budgeting. |
| `~Severity::*` | Scoped label for severity assignment. Details on severity selection can be found in the [availability severities](/handbook/engineering/quality/issue-triage/#availability) section. |
| `~RootCause::*` | Scoped label indicating root cause of the incident. |

#### Optional Labeling

In certain cases, additional labels will be added as a mechanism to add metadata to an incident issue for the purposes of metrics and tracking.

| **Label** | **Purpose** |
| ----- | ------- |
| `~self-managed` | Indicates that an incident is **exclusively** an incident for self-managed GitLab. [Example self-managed incident issue](https://gitlab.com/gitlab-com/gl-infra/production/-/issues/2651) |
| `~incident-type::automated traffic` | The incident occurred due to activity from security scanners, crawlers, or other automated traffic |
| `~backstage` | Indicates that the incident is internally facing, rather than having a direct impact on customers. Examples include issues with monitoring, backups, failing tests, self-managed release or general deploy pipeline problems. |
| `~group::*` | Any development group(s) related to this incident |
| `~review-requested` | Indicates that that the incident would benefit from undergoing additional review. All S1 incidents are required to have a review. Additionally, anyone including the EOC can request an incident review on any severity issue. Although the review will help to derive [corrective actions](#corrective-actions), it is expected that corrective actions are filled whether or not a review is requested. If an incident does not have any corrective actions, this is probably a good reason to request a review for additional discussion. |
| `~Incident-Comms::*` | Scoped label indicating the level of communications. |
| `~blocks deployments` | Indicates that if the incident is active, it will be a blocker for deployments. This is automatically applied to `~severity::1` and `~severity::2` incidents. The EOC or Release Manager can remove this label if it is safe to deploy while the incident is active. A comment must accompany the removal stating the safety or reasoning that enables deployments to continue. This label may also be applied to lower severity incidents if needed. |
| `~blocks feature-flags` | Indicates that while the incident is active, it will be a blocker for changes to feature flags. This is automatically applied to `~severity::1` and `~severity::2` incidents. The EOC or Release Manager can remove this label if there is no risk in making feature flag changes while the incident is active. A comment must accompany the removal stating the safety or reasoning that enables feature flag changes to continue. This label may also be applied to lower severity incidents if needed. |
| `~Delivery impact::*` | Indicates [the level of impact this incident is having on GitLab deployment and releases](/handbook/engineering/releases/#delivery-impact-labels) |

#### Duplicates

When an incident is created that is a duplicate of an existing incident it is up to the EOC to mark it as a duplicate.
In the case where we mark an incident as a duplicate, we should issue the following slash command and remove **all** labels on the incident issue:

```
/duplicate <incident issue>
```

### Related Issues

There are [related issue links] on the incident template that should be used to create related issues from an incident.

- Corrective action: Creates a new corrective action in the reliability tracker.
- Investigation followup: Investigation follow-ups for any root cause investigation, analysis or tracking an alert silence that will be done after the incident is resolved
- Confidential / Support contact: For transparency, we prefer to keep incident issues public. If there is confidential information associated with an issue use this template to create a new issue using the confidential template. Use this template to create requests to the support team engage customers (aka Contact Request).
- QA investigation: To engage the QA team for a failing test, or missing coverage for an issue that was found in any environment.
- Infradev: For engaging development for any incident related improvement.

### Workflow Diagram

``` mermaid
  graph TD
    A(Incident is declared) --> |initial severity assigned - EOC and IM are assigned| B(Incident::Active)
    A -.-> |all labels removed if duplicate| F(closed)
    B --> |"Temporary mitigation is in place (see workflow labeling above)"| C(Incident::Mitigated)
    B --> D
    C --> D(Incident::Resolved)
    D --> |severity is re-assessed| D

    D -.-> |for review-requested incidents| E(Incident::Review-Completed)
```
- As soon as an incident transitions to `Incident::Resolved` the incident issue will be closed
- All `Severity::1` incidents will automatically be labeled with `review-requested`

### Alert Silences

If an [alert silence](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/monitoring/alerts_manual.md#silencing) is created for an active incident, the incident should be resolved with the `~"alertmanager-silence"` label and the appropriate root cause label if it is known.
There should also be a linked ~infradev issue for the long term solution or an investigation issue created using the [related issue links] on the incident template.

### Incident Board

The board which tracks all GitLab.com incidents from active to reviewed is located [here](https://gitlab.com/gitlab-com/gl-infra/production/-/boards/1717012?&label_name%5B%5D=incident).

## Near Misses

A near miss, "near hit", or "close call" is an unplanned event that has the potential to cause, but does not actually result in an incident.

### Background

In the United States, the Aviation Safety Reporting System has been collecting reports
of close calls since 1976. Due to near miss observations and other technological improvements,
the rate of fatal accidents has dropped about 65 percent.
[source](https://en.wikipedia.org/wiki/Near_miss_(safety))

As [John Allspaw states](https://qz.com/504661/why-etsy-engineers-send-company-wide-emails-confessing-mistakes-they-made/):

> Near misses are like a vaccine. They help the company better defend against
> more serious errors in the future, without harming anyone or anything in the process.

### Handling Near Misses

When a near miss occurs, we should treat it in a similar manner to a normal incident.

1. Open an [incident](/handbook/engineering/infrastructure/incident-management/#reporting-an-incident) issue, if one is not already opened. Label it with the severity label appropriate to the incident it would have caused, had the incident actually occurred. Label the incident issue with the `~Near Miss` label.
1. [corrective actions](/handbook/engineering/infrastructure/incident-management/#corrective-actions) should be treated in the same way as those for an actual incident.
1. Ownership of the incident review should be assigned to the team-member who noticed the near-miss, or, when appropriate, the team-member with the most knowledge of how the near-miss came about.

[related issue links]: https://gitlab.com/gitlab-com/gl-infra/production/-/blob/5343440ac4ef41fa5a27053a6938480d229bee3e/.gitlab/issue_templates/incident.md#create-related-issues

