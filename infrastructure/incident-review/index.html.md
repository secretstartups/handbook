---
layout: handbook-page-toc
title: "Incident Review"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

> The primary goals of writing an Incident Review are to ensure that the incident is documented, that all contributing root cause(s) are well understood, and, especially, that effective preventive actions are put in place to reduce the likelihood and/or impact of recurrence.[^1]

## Incident Review Issue Creation and Ownership

Incident reviews are conducted as close to the incident date as possible.
Every Incident Review Issue must be assigned a DRI. The DRI will usually be the assignee of the associated incident but it may be someone else like the service owner.
Creating [corrective actions](/handbook/engineering/infrastructure/incident-management/#corrective-actions) and [infradev](/handbook/engineering/workflow/#infradev) issues is one of the goals of the review process. The DRI is responsible for ensuring that associated issues are created for them and linked to the original incident.

## Incident Review Process

_Both async and synchronous reviews can be requested by anyone by following the steps below. If you are uncertain about how to proceed, request help from the assignees of the incident issue._

A review may either be synchronous by adding it to the agenda of the weekly incident review meeting, or done asynchronously with an Incident Review issue.
As a general guideline, it is recommended to follow the incident review process for any of the following events:

1. Data loss of any kind
1. A high severity issue that has a resolution time longer than 30 minutes
1. A high severity monitoring failure

A review can be optionally conducted for incidents which do not meet the above criteria but keep in mind that synchronous meetings are demanding of our time and we do our best to [embrace asynchronous communication](/company/culture/all-remote/asynchronous/).

For all reviews, it is *not* necessary to complete all sections. For the sake of expediency, you can complete areas of the review which highlight what you, as the review author, want to bring to the attention of the larger organization and which drive the generation of corrective actions related to the incident.

### Process for Asynchronous Reviews

1. In the incident issue, open a new Incident Review by clicking on the link in the section for "References and helpful link" in the incident summary.
2. Inform participants in the incident Slack channel that a review issue has been created, for example:

```
@here An incident review issue was created for this incident with USER assigned as the DRI.
If you have any review feedback please put in on ISSUE_LINK.
```
3. Assign the issue to the DRI. It is expected that the review will be completed **within seven working-days of the incident**.

### Process for Synchronous Reviews

1. Add the `~review-requested` label to the original Incident Issue to schedule a synchronous review. Following this, you should add the incident to the [Incident Review agenda document](https://docs.google.com/document/d/1jrX-Z2NJrNjBBcywY7emQKwaKRqVAlDRdGG0Krk76ys/edit) and note the DRI. If you are unsure who the DRI should be, reach out to the assignees of the associated incident. **It is important that the person requesting the review also add an explanation about why the review is being requested. This will help guide the DRI and set expectations.**
1. The DRI is responsible for ensuring that stakeholders outside of Infrastructure are aware of the review.
1. **Optional**: Open up a new Incident Review issue by clicking on the link in the section for "References and helpful link" in the incident summary and assign it to the DRI to help guide the process and to document the results publicly.
1. After discussion on the Incident Review issue has ended and all issues have been linked to the incident, the `Incident::Review-Completed` label can be added to the incident.

Incident review sessions are open on the GitLab Team Meetings calendar with the title `Incident Review Recurring Sessions` and occur at the following two times:

1. Tuesdays at 13:30 - 14:20 UTC
1. Tuesdays at 22:00 - 22:50 UTC

## Customer Engagement

Incident reviews may require customer engagement through a point of contact such as a Technical Account Manager (TAM).
In case of a customer requiring a sync to discuss a finding that comes out of review, the TAM can engage with the Infrastructure management to organize the discussion with important stakeholders.

---

[^1]: Google SRE Chapter 15 - Postmortem Culture: Learning from Failure
