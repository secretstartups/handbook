---
layout: markdown_page
title: On-Call
---

- [Production On-Call Log](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues?label_name%5B%5D=oncall&scope=all&state=all&utf8=%E2%9C%93)

# On this page

{:.no_toc}

- TOC
{:toc}

----

## Reporting Issues on GitLab.com

If you're observing issues on GitLab.com&mdash;or on a team that works with
customers or users who are observing issues&mdash;a member of the chatops project
can use the command `/chatops run oncall prod` in the #production Slack channel or in a direct message (DM) with the ChatOps app.
If you're not a member of the chatops project, you can ask [request access](https://docs.gitlab.com/ee/development/chatops_on_gitlabcom.html#requesting-access).

The GitLab ChatOps bot will return the names of the
Engineer On Call (EOC) and the Incident Manager On Call (IMOC). Please @ mention
the engineer in Slack and reference the GitLab issue that contains details of
the issue, if one exists.

Please keep in mind that [communication through Slack](/handbook/communication/#slack) is asynchronous, so you aren't guaranteed an immediate response.

### PagerDuty

If you need an immediate response from the engineer on-call (EOC) type `/incident
declare` in the `#incident-management` Slack channel.

We use [PagerDuty](http://gitlab.pagerduty.com/) to set the on-call
schedules, and to route notifications to the appropriate individual(s). There
are escalation policies in place for Production issues (i.e. GitLab.com
downtime), Security concerns, and Customer emergencies.

#### Expectations for On-Call

- If you are on call, then you are expected to be available and ready to respond to PagerDuty pings as soon as possible, but certainly within any response times set by our [Service Level Agreements](/support/#priority-support) in the case of Customer Emergencies. This may require bringing a laptop and reliable internet connection with you if you have plans outside of your work space while being on call, as an example.
- We take on-call seriously. There are escalation policies in place so that if a first responder does not respond fast enough another team member or members is/are alerted. Such policies are essentially expected to never be triggered, but they cover extreme and unforeseeable circumstances.
- Triage the [infrastructure issue tracker](https://gitlab.com/gitlab-com/gl-infra/infrastructure/), applying appropriate labels and reaching out others when needed, so the rest of the team can focus on the WoW.
- Act as an umbrella to avoid team randomization.
- Provide support to the release managers in the release process.
- Automate as much as possible to get rid of toil, create new alerts and tools to enhance the on-call experience.
- As noted in the [main handbook](/handbook/paid-time-off), after being on-call take time off. Being available for issues and outages will wear you off even if you had no pages, and resting is critical for proper functioning. Just let your team know.
- More detailed descriptions can be found [here](https://gitlab.com/gitlab-com/runbooks/-/blob/master/docs/uncategorized/lead-away.md).

#### Swapping On-Call Duty

To swap on-call duty with a fellow on-call hero:

- To swap an on-call shift or temporarily replace someone input this as an override on the main schedule in PagerDuty.
This is done by clicking on the relevant block of time in PagerDuty, selecting "override" and
filling in the name of the person you swapped with. Also see [this article](https://support.pagerduty.com/hc/en-us/articles/202830170-Creating-and-Deleting-Overrides) for reference.

#### Changing the rotation of the current schedule 

- When [adding new team member](/handbook/on-call/#adding-and-removing-people-from-the-roster) it's inevitable that the rotation schedule will shift. The manager adding a new team member will add the individual towards the end of the current rotation to avoid changing the current schedule, however as there might be a need to add an individual to the top of the rotation a change in the current rotation might be unavoidable. When adding a new team member to the rotation, the manager will raise the topic on the weekly call to make sure everyone has ample time to make changes. 

## Customer Emergency On-Call Rotation

- We do 7 days of 8-hour shifts in a follow-the-sun style, based on your location.
- After 10 minutes, if the alert has not been acknowledged, support management is alerted. After a further 5 minutes, _everyone_ on the customer on-call rotation is alerted.
- Unless advised otherwise by the technical account manager or your manager, [assume good intent](/handbook/support/on-call/#assume-good-intent)
  to give every emergency ticket from customers with priority support [the emergency SLA](../../support/#priority-support).
- After 45 minutes, if the customer has not responded to our initial contact with them, let them know that the emergency ticket will be closed and that you are opening a normal priority ticket on their behalf. Also let them know that they are welcome to open a new emergency ticket if necessary.
- You can view the [schedule](https://gitlab.pagerduty.com/schedules#PIQ317K) and the [escalation policy](https://gitlab.pagerduty.com/escalation_policies#PKV6GCH) on PagerDuty. You can also opt to [subscribe to your on-call schedule](https://support.pagerduty.com/docs/schedules-in-apps#section-export-only-your-on-call-shifts), which is updated daily.
- After each shift, _if_ there was an alert / incident, the on call person will send a hand off email to the next on call explaining what happened and what's ongoing, pointing at the right issues with the progress.
- If you need to reach the current on-call engineer and they're not accessible on Slack (e.g. it's a weekend, or the end of a shift), you can [manually trigger a PagerDuty incident](https://support.pagerduty.com/docs/incidents#section-manually-trigger-an-incident) to get their attention, selecting **Customer Support** as the Impacted Service and assigning it to the relevant Support Engineer.
- See the [GitLab Support On-Call Guide](/handbook/support/on-call/) for a more
  comprehensive guide to handling customer emergencies.

## Reliability Engineering Team On-Call Rotation

The Infrastructure department's Reliability Engineering teams provide 24x7 on-call coverage for the production environment. For details, please see [incident-management](/handbook/engineering/infrastructure/team/reliability/incident-management/).

### Site Reliability Engineers (SREs)

- We do 7 days of 8-hour shifts in a follow-the-sun style, based on your location.
- After 15 minutes, if the alert has not been acknowledged, the Incident Manager On-call (IMOC) will be notified.
- You can view the [primary schedule](https://gitlab.pagerduty.com/schedules#P05EL5A) as well as the [escalation policy](https://gitlab.pagerduty.com/escalation_policies#P7IG7DS) on PagerDuty.
- For each shift we need at least an extra SRE available, to support and collaborate in case of complex incidents, mainly for severities 1 and 2.
- After each shift, the on-call person will drive the [oncall handover](/handbook/engineering/infrastructure/on-call-handover/).
- The main expectation when being on-call is to triage the page, and to determine the urgency and severity of the incident. We aim to resolve incidents using well documented [runbooks](https://ops.gitlab.net/gitlab-com/runbooks/).
- If you need the IMOC or there's any doubt about their availability then you should immediately add them as responders on the PagerDuty incident.
- When on-call, a secondary focus is managing the [SRE On-call](https://gitlab.com/groups/gitlab-com/-/boards/962703?&label_name[]=SRE%3AOn-call) board. The board is prioritized to track on-going incidents first, and then to include issues focused on improving on-call rotations.

#### Database Support

For database-related issues we have support from [OnGres](https://ongres.com), a consultancy that specializes in Postgresql databases. Only a responding EOC or IMOC should ever page OnGres.

- For production issues, the SLA of OnGres first response, is categorized as follows:
  - _Severity 1 and 2_ - Critical issues. The system is down or not responding. SLA: 15 minutes.
  - _Severity 3_ - Non-critical issues. Significant system degradation or limited capabilities that impact on the production system but it still works on a degraded mode. SLA: 1 hour.
  - _Severity 4_ - Low impact issues. Any system malfunctioning that does not impede normal production operation but may limit non-significantly the performance or capabilities of the system. SLA: 4 hours.

- Alerts are not triggered via automation. All escalations to OnGres are initiated by an incident responder using the "Request OnGres Support" PagerDuty Response Play (see "Response Plays for IMOC or OnGres" in the image above).
- Our Staff DBRE is alerted whenever OnGres support is requested. They are available to provide expert-level database knowledge to the SRE who escalated the issue, if OnGres is unable to repair the database to normal operations.
- Over time, most scenarios that required consulting OnGres should be addressed in a runbook that the SRE on-call can execute confidently, alone. Or, preferably, by evolving our tools to handle issues with automation.

### Managers

- We do 4 days of 12-hour shifts during weekdays, and a ~72-hour shift over the weekend.
- Managers are responsible for coordinating communications across all parties actively working on the resolution of an ongoing incident, including both infrastructure and support engineers.
- Status updates for ongoing incidents–both internally to the company and external to customers–are the responsibility of the manager on-call.

### How to page current production on-call

From Slack you can page by using the `/pd trigger` slash command. This will trigger high urgency notification rules and it will escalate as needed.

## Security Team On-Call Rotation

### Security Operations (SecOps)

- SecOps on-call rotation is 7 days of 24-hour shifts.
- After 15 minutes, if the alert has not been acknowledged, the Security Manager on-call is alerted.
- You can view the [Security Operations schedule](https://gitlab.pagerduty.com/schedules#PYZC2CG) on PagerDuty.
- When on-call, prioritize work that will make the on-call better (that includes building projects, systems, adding metrics, removing noisy alerts). Much like the Production team, we strive to have nothing to do when being on-call, and to have meaningful alerts and pages. The only way of achieving this is by investing time in trying to automate ourselves out of a job.
- The main expectation when on-call is triaging the urgency of a page - if the security of GitLab is at risk, do your best to understand the issue and coordinate an adequate response. If you don't know what to do, engage the Security manager on-call to help you out.

More information is available in the [Security Operations On-Call Guide](https://about.gitlab.com/handbook/engineering/security/secops-oncall.html) and the [Security Incident Response Guide](/handbook/engineering/security/sec-incident-response.html).

### Security Managers

- Security Manager on-call rotation is 7 days of 12-hour shifts.
- Alerts are sent to the Security Manager on-call if the SecOps on-call page isn't answered within 15 minutes.
- You can view the [Security Manager schedule](https://gitlab.pagerduty.com/schedules#PJL6CVA) on PagerDuty.
- The Security Manager on-call is responsible to engage alternative/backup SecOps Engineers in the event the primary is unavailable.
- In the event of a high-impact security incident to GitLab, the Security Manager on-call will be engaged to assist with cross-team/department coordination.

## Development Team On-Call Rotation

- This on-call process is designed for GitLab.com operational issues that are escalated by the Infrastructure team.
- Development team currently does NOT use PagerDuty for scheduling and paging. On-call schedule is maintained in this [schedule sheet](https://docs.google.com/spreadsheets/d/10uI2GzqSvITdxC5djBo3RN34p8zFfxNASVnFlSh8faU/edit#gid=0).
- Issues are escalated in the Slack channel [#dev-escalation](https://gitlab.slack.com/messages/CLKLMSUR4) by the Infrastructure team.
- First response SLO is 15 minutes. If no response within the first 5 minutes, the infrastructure team will call the engineer's phone number on the schedule sheet.
- Development engineers do 4-hour shifts.
- Engineering managers do monthly shifts as scheduling coordinators.
- Check out [process description and on-call workflow](/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html) when escalating GitLab.com operational issue(s).
- Check out more detail for [general information](/handbook/engineering/development/processes/Infra-Dev-Escalation/) of the escalation process.

## Quality Team On-Call Rotation

- Quality department's on-call do not include work outside GitLab's normal business hours. The process is defined on our [pipeline on-call rotation](handbook/engineering/quality/guidelines/#quality-department-pipeline-oncall-rotation) page.
- The rotation is on a weekly basis separated out into 2 timezones APAC/EMEA and AMER and each timezone has a primary and secondary on-call DRI.
- The primary DRI is responsible for reporting and resolving triage activities while the secondary DRI is involved to prepare for taking over as primary in the following week.
- This on-call rotation is to ensure accurate and stable test pipeline results that directly affects our continuous release process.
- The list of pipelines which are monitored are defined on our [pipeline](handbook/engineering/quality/guidelines/debugging-qa-test-failures/#scheduled-qa-test-pipelines) page. 
- The schedule and roster is defined on our [schedule](handbook/engineering/quality/guidelines/#schedule) page.

## Adding and removing people from the roster

In principle, it is straightforward to add or remove people from the on-call schedules, through the same "schedule editing" links provided above for setting overrides. However, **do not** change the timezone setting (located in the upper left corner of the image below) unless you absolutely most certainly intend to. As indicated in the image below, when editing a schedule (adding, removing, changing time blocks, etc.), make sure you keep the timezone setting in the upper left corner constant. If you change the timezone setting, PagerDuty will _not_ move the time 'blocks' for on-call duty, but instead it will assume that you meant to keep the selected time blocks (e.g. "11am to 7pm") in the _new_ timezone. As a result, your new schedule may become disjointed from the old ones (old = the schedule as set _before_ the "change on this date" selection), and gaps may appear in the schedule.

![changing pagerduty](/handbook/on-call/changing_pagerduty.png)
