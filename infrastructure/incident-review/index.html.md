---
layout: handbook-page-toc
title: "Incident Review"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Incident Review

> The primary goals of writing an Incident Review are to ensure that the incident is documented, that all contributing root cause(s) are well understood, and, especially, that effective preventive actions are put in place to reduce the likelihood and/or impact of recurrence.[^1]

Not every incident requires a review. But, if an incident matches any of the following criteria, an incident review must be completed:

1. Incident was declared an S1/S2
1. A service disruption occurred
1. Data loss of any kind
1. A resolution time longer than 30 minutes
1. A monitoring failure

## Incident Review Process

Incident reviews (of S1/S2 incidents) have two steps:


#### Authoring the Incident Review

The first step in the Incident Review process is the synchronous review of the incident by representatives of the teams involved in the resolution of the incident. This step is conducted as close to the incident date as possible and does not require a complete Incident Review write up. The outcome of this first step should be a published Incident Review, per defined [timelines](#incident-review-timeline).


#### Review of Root Cause and Corrective Actions

Incident reviews second step is engaging with the customer, through the point of contact such as a TAM. This should always involve sharing the findings from the first step in an async form. In case of a customer requiring a sync to discuss the finding, the Infrastructure management will organise the discussion with important stakeholders of this process, per defined [timelines](#incident-review-timeline) 

1. IMOC for the Incident updates the TAM team on expected AIR timelines.
1. IMOC provides TAM published review. IMOC can also include a recording of the review, if the recording does not contain sensitive information.
1. TAM communicates to IMOC whether their customer(s) would like a synchronous review and the TAM schedules a review with the customer.
1. TAM facilitates Customer access to the review and the Customer can add a set of questions prior to the meeting and all participants can collaborate on any changes or additions to corrective actions.

#### Incident Review Timeline
_Incident resolution = date incident was resolved_

1. Incident resolution: Incident Review issue is created and [IMOC and EOC are assigned](#incident-review-issue-creation-and-ownership).
1. Incident resolution + 2 days: IMOC sets expectations with TAM on delivery date of Incident Review.
1. Incident resolution + 7 days: Incident Review is authored and ready for review by additional stakeholders.

#### Incident Review Issue Creation and Ownership 

Incident Reviews are conducted in [production](https://gitlab.com/gitlab-com/gl-infra/production/issues) issues&mdash;except in the case of extenuating circumstances when Infrastructure or Engineering management determines a synchronous video call should be held. The issues should have the `~IncidentReview` label attached.

1. Every incident must be assigned a DRI. The DRI is the Engineer on Call (EOC).
1. The incident review should be assigned to the DRI, immediately when it is created.
1. The output of an incident review should include one or more issues labeled `~Corrective Action`.  Linking already existing issues for corrective action is appropriate if the incident was similar to a prior event and corrective actions overlap.
1. The DRI is responsible for selecting and assigning corrective actions that should be prioritized and resolved within a specific timeframe.
1. All issues labeled `~Corrective Action` must have an assigned priority label, it is the responsibility of the DRI to ensure that the priorities are set.
1. For high priority `~Corrective Action` issues, a due date should be set on the issue to ensure that expectation are set for resolving them.
1. After discussion on the Incident Review issue has ended and all `~Corrective Action` issues have been linked, the issue can be closed.

The infrastructure team keeps track of [Corrective
Actions](https://gitlab.com/groups/gitlab-com/gl-infra/-/boards/1181205?&label_name[]=corrective%20action)
on a dedicated board. The prioritization and assignment of issues is collectively handled by the Reliability Engineering managers.

---

[^1]: Google SRE Chapter 15 - Postmortem Culture: Learning from Failure
