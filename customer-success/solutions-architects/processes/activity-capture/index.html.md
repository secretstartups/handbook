---
layout: handbook-page-toc
title: Solutions Architecture Activity Capture
description: >-
  Solutions Architects record all customer and prospect activity to promote
  transparency and collaboration
---
[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations) - [**Processes**](/handbook/customer-success/solutions-architects/processes)

# Activity Capture
{:.no_toc}

Solutions Architects record all customer and prospect activity to promote **transparency** and **collaboration**. By consistently capturing our prospect or customer-facing activity, we can perform analysis for further reporting to establish **efficient** decision making for GitLab's business.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Why Record Customer Activities?

1. **Transparency** Reporting on SA activity regularly provides an easy way for other team members to see summaries of all SA activity, allowing for questioning our actions and increasing our accountability. Transparency also promotes valuable collaboration through increased visibility of our prospect and customer interactions.
1. **Collaboration** Timely feedback can be provided by reading through customer/prospect activity summaries. Team members may have experienced similar customer situations and can offer an alternate perspective or guidance as an asynchronous comment. It's also easier to perform pattern matching across our plays by reviewing current activity. Finally, it's an excellent vehicle for team members to thank those who have helped them with their work and receive recognition for work well done.
1. **Efficiency** When team members have questions on how a specific account activity went, they can read activity updates instead of seeking out the account team members. Leadership can also make essential decisions on how to run our business through analysis of our prospect or customer-facing activity, ultimately driving desired business **results**.

## Recording Activity with Troops.ai

SA prospect/customer activity is recorded into `Task` objects within Salesforce based on the `Log a Call` action on an `Opportunity`. However, [Troops.ai](https://www.troops.ai/) is leveraged to simplify the capture of required and optional fields via Slack to alleviate the SA from navigating through Salesforce.

### Troops Setup

- Setup your Troops.ai account and connect it to Slack, Salesforce, and your google calendar.
    - [Troops Setup Video](https://vimeo.com/401363212)

### Logging an Activity

- There are multiple ways to log your activity with Troops ([Log an Activity Video](https://www.youtube.com/watch?v=zRxUJSjujUk&feature=youtu.be))
    - After meetings with a prospect/customers, you will be prompted in the Slack Troops application to `Log a Call` for the activity (easiest method)
    - On-demand, type `/troops-action` in Slack and click on the `Log Activity` button
    - On-demand, type `/troops <name of account>` and choose the appropriate opportunity. Click `Log Activity` (NOT the `Log a Call` button)
- There is a minimal set of fields that are required to be populated, _regardless if Troops.ai marks them as optional_.
    - **Related To** - Search for and set this to the Salesforce `Opportunity` associated with the activity.
    - **Name**  - Please search for and populate the `Name` field with a prospect/customer contact existing in Salesforce that was part of the activity.   <i>`Name` is currently a single select field. Choose any contact that was part of the meeting, if possible. In the future, we may have the ability to select multiple contacts.</i>
    - **Subject**  - High-level description of the activity. Usually, the subject of the calendar event for this activity is appropriate.
    - **[SA] Activity Type** - Choose the type(s) of activity for this customer/prospect interaction. (ie. Demo, POV Related, Presentation/Pitch)
    - **Persona Levels** (Optional if unknown) - Select the customer/prospect participants' levels in this activity. Current options include: `Individual Contributor, Manager/Director, Exectuive`
    - **Persona Functions** (Optional if unknown) - Select the customer/prospect functions represented during the activity (ie. Development, Security, DevOps)
    - **Description** - Enter a summary of the interaction. Two to three sentences are usually sufficient, but more detail is ok. Try to capture the meeting's intent, how it went (the outcome or customer/prospect sentiment), and any prospect/customer perceived next steps. It is highly encouraged that you provide a link to more detailed notes of your meeting. You can use [Google Docs Bookmarks](https://support.google.com/docs/answer/45893) to do so.

#### Example Activity Description

```
We provided a SCM and CI/CD demo for the head of application development, Homer Simpson, that was well-received.  His team is responsible for building a suite of catalog services and API for their partner merchants.  They are using Spring Boot to develop microservices and struggling with deployment consistency and complexity.  As a next step, we are scheduling a review of their current path to production.
More detailed notes are here: <link to detailed notes>
```

### Collaborating on an Update

When anyone logs an activity, Troops.ai will provide the update in a team Slack channel. It is highly encouraged that all members of the SA organization, as well as any GitLab team member, take time to review the updates to understand our business better, but also to exercise our value of **collaboration**. When reviewing updates, look for opportunities to provide a team member with some **efficiency** by sharing related work or knowledge you have that could assist with an opportunity. Also, it's a great way to understand what your team members do so that you can leverage their experience in the future. Words of encouragement and congratulations are also encouraged.

#### Team Activity Slack Channels

All troops activity updates channels are of the format `#troops-activities-<region or segment name>`:

- `#troops-activities-apj-cs`
- `#troops-activities-channels-and-alliances-sa`
- `#troops-activities-commercial-sa`
- `#troops-activities-east-sa`
- `#troops-activities-emea-sa`
- `#troops-activities-pubsec-sa`
- `#troops-activities-west-sa`

_Tip:_ You can create a dedicated slack section for all of your Troops related channels. This will allow you easy access to updates for cross-team collaboration.

### SA Specific Opportunity Fields

To assist with the analysis of SA guided technical evaluations by our prospects and customer, the SA team maintains four opportunity fields in Salesforce. These four fields can also be updated through Troops.ai or within the opportunity in Salesforce:

- **Primary SA** - The primary SA assigned to and working on the opportunity.
- **SA Validated Tech Evaluation Start Date** - The date the SA started engaging with a prospect or customer on a technical evaluation.
- **SA Validated Tech Evaluation End Date** - The date the SA stopped engaging with a prospect or customer and the technical evaluation is deemed closed as a technical win, loss, or a stalled evaluation.
- **SA Validated Tech Evaluation Close Status** - The close status of the technical evaluation:
There are two ways to update these fields in Troops.ai:
While all of these fields can be updated and changed anytime as an opportunity evolves, the end date and close status should not be populated as a forecast.
    - On the Troops `You just had a meeting` notification - select the opportunity by searching in the `Search Salesforce` box. Click the `Update Opportunity` button.
    - By searching for the opportunity first using `/troops <opportunity name>` in Slack and clicking on the `Update Opportunity` button.
    - **Win** - The technical evaluation has ended, and the prospect or customer agrees the GitLab solution meets their requirements.
    - **Loss** - The technical evaluation has completed, but the prospect or customer is choosing an alternative solution or not changing their current process due to deficiencies with the evaluated GitLab solution.
    - **Stalled** - The technical evaluation has not completed, but the customer or prospect is not actively evaluating any solution. As a guideline, this usually means the SA is not working with the prospect or customer on evaluation-related activities for at least two weeks.

### Proof of Value (POV) Updates

Proof of Values are [tracked in salesforce](/handbook/sales/POV/#tracking-a-pov-in-salesforce) but can be added or updated through Troops by:

- Clicking on the `Add a Proof of Value` button
    - on the Troops `You just had a meeting` notification in slack
    - after searching for and selecting an opportunity or account first using `/troops <search>` in Slack
    - after using `/troops-action`
- Clicking on the `Update a Proof of Value` button
    - after searching for and selecting a POV first using `/troops <name of POV>` in Slack

### Updating Activity Summaries

You can update activity that was previously logged in Salesforce or through troops.ai by clicking the `Update Activity` button on the update notification posted by troops.ai to your team activity channel.

### Creating a Contact

If a contact you'd like to associate your activity updates with does not yet exist on the account in Salesforce, you can create the contact through troops.ai:

- Use `/troops-actions` in Slack and click the `Create Contact` button. The contact will now appear in the `Name` field when logging an activity through troops.ai. ([Create a Contact Video](https://www.youtube.com/watch?v=OzNH927Y7wM&feature=youtu.be))

### Reports & Dashboards

- [Work in Progress - Solutions Architecture Sisense Dashboard](https://app.periscopedata.com/app/gitlab/758116/WIP:-Solutions-Architecture)
- [SA Activity - Salesforce Report](https://gitlab.my.salesforce.com/00O4M000004aR83)
- [Current FQ Technical Evaluations - Salesforce Report](https://gitlab.my.salesforce.com/00O4M000004aRyn)
- [Proof of Values - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z61000000BSYo)
- [SA - APJ - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000slKr)
- [SA - Commercial - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000sl6L)
- [SA - EMEA - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000slKm)
- [SA - US East - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000skz5)
- [SA - US West - Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000slKc)
- [Solutions Architect Salesforce Dashboard](https://gitlab.my.salesforce.com/01Z4M000000sky2)

### Training Resources

- Troops.ai all-hands recordings
    - [SA All-Hands Call for Troops.ai kickoff (EMEA Friendly)](https://youtu.be/OMD-cjaTYuE)
    - [SA All-Hands Call for Troops.ai kickoff (APJ Friendly)](https://youtu.be/7R0qy8t5d10)
- [Log an Activity](https://www.youtube.com/watch?v=zRxUJSjujUk&feature=youtu.be)
- [Create a Contact](https://www.youtube.com/watch?v=OzNH927Y7wM&feature=youtu.be)
- [Updating Tech Eval Dates and Status](https://www.youtube.com/watch?v=ifRYJhHzyzo&feature=youtu.be)

### Feedback and Questions Process

- In order to provide feedback on our activity capture process, tools, or reports, please create an issue in the Customer Success, [Solutions Architecture Activity Capture project](https://gitlab.com/gitlab-com/customer-success/solutions-architecture-activity-capture/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=) using the `Feedback` template.
- `#troops-users` slack channel - Discuss and ask questions related to Troops.ai and SA activity capture
- `#troops-gitlab` slack channel - Discuss and ask questions related to Troops.ai with the Troops account team covering GitLab

## Recording Email Activity with Salesforce

Email communication with customers can be recorded in Salesforce within the account's activity history. There are two options to track this activity:

1. BCC your "email to Salesforce address". Instructions to obtain this address are found on this [page](/handbook/customer-success/using-salesforce-within-customer-success/#tracking-emails-within-salesforce).
2. Or, download the [Salesforce Chrome plugin](/handbook/sales/prospect-engagement-best-practices) to easily log customer-related emails.

## Frequently Asked Questions

- Question: Should I also be adding calls to Salesforce using the Salesforce specific Google calendar plugin as we've done in the past or should we only be using the Troops.ai integration.
- Answer: It is not required to automatically log your calls via the Salesforce-Google calendar plugin and we aren't currently planning to analyze that information.