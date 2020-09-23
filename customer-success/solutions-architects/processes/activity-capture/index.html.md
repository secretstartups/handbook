---
layout: handbook-page-toc
title: "Solutions Architecture Activity Capture"
---
[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations) - [**Processes**](/handbook/customer-success/solutions-architects/processes)

# Activity Capture
{:.no_toc}


Solutions Architects record all customer and prospect activity to promote **transparency** and **collaboration**.  By consistently capturing our prospect or customer-facing activity, we can perform analysis for further reporting to establish **efficient** decision making for GitLab's business.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Why Record Customer Activities?

1. **Transparency** Reporting on SA activity regularly provides an easy way for other team members to see summaries of all SA activity, allowing for questioning our actions and increasing our accountability. Transparency also promotes valuable collaboration through increased visibility of our prospect and customer interactions.
1. **Collaboration** Timely feedback can be provided by reading through customer/prospect activity summaries.  Team members may have experienced similar customer situations and can offer an alternate perspective or guidance as an asynchronous comment.  It's also easier to perform pattern matching across our plays by reviewing current activity.  Finally, it's an excellent vehicle for team members to thank those who have helped them with their work and receive recognition for work well done.
1. **Efficiency** When team members have questions on how a specific account activity went, they can read activity updates instead of seeking out the account team members.  Leadership can also make essential decisions on how to run our business through analysis of our prospect or customer-facing activity, ultimately driving desired business **results**.

## Recording Activity with Troops.ai

SA prospect/customer activity is recorded into `Task` objects within Salesforce based on the `Log a Call` action on an `Opportunity`.  However, [Troops.ai](https://www.troops.ai/) is leveraged to simplify the capture of required and optional fields via Slack to alleviate the SA from navigating through Salesforce.

### Troops Setup
* Setup your Troops.ai account and connect it to Slack, Salesforce, and your google calendar.
    * [Troops Setup Video](https://vimeo.com/401363212)

### Logging an Activity
* There are multiple ways to log your activity with Troops ([Log an Activity Video](https://www.youtube.com/watch?v=zRxUJSjujUk&feature=youtu.be))
    * After meetings with a prospect/customers you will be prompted in the Slack Troops application to `Log a Call` for the activity (easiest method)
    * On-demand, type `/troops-action` in Slack and click on the `Log Activity` button
    * On-demand, type `/troops <name of account>` and choose the appropriate opportunity.  Click `Log Activity` (NOT the `Log a Call` button)
* There is a minimial set of fields that are required to be populated, *regardless if Troops.ai marks them as required*.
    * **Related To** - Search for and set this to the Salesforce `Opportunity` associated with the activity.  
    * **Name** (Optional) - If a prospect / customer contact exists in Salesforce and was part of the activity, please search for and populate `Name`.  *`Name` is currently a single select field.  Choose any contact that was part of the meeting, if possible.  In the future, we may have the ability to select multiple contacts.*
    * **Subject** - High-level description of the activity.  Usually, the subject of the calendar event for this activity is appropriate.
    * **[SA] Activity Type** - Choose the type(s) of activity for this customer/prospsect interaction.  (ie. Demo, POV Related, Presentation/Pitch)
    * **Persona Levels** (Optional if unknown) - Select the customer/prospsect participants' levels in this activity.  Current options include:  `Individual Contributor, Manager/Director, Exectuive`
    * **Persona Functions** (Optional if unknown) - Select the customer/prospsect functions represented during the activity (ie.  Development, Security, DevOps)
    * **Description** - Enter a summary of the interaction.  Two to three sentences are usually sufficient, but more detail is ok.  Try to capture the meeting's intent, how it went (the outcome or customer/prospect sentiment), and any prospect/customer perceived next steps.  It is highly encouraged that you provide a link to more detailed notes of your meeting.  You can use [Google Docs Bookmarks](https://support.google.com/docs/answer/45893) to do so.


#### Example Activity Description

	We provided a SCM and CI/CD demo for the head of application development, Homer Simpson, that was well-received.  His team is responsible for building a suite of catalog services and API for their partner merchants.  They are using Spring Boot to develop microservices and struggling with deployment consistency and complexity.  As a next step, we are scheduling a review of their current path to production.  
    More detailed notes are here: <link to detailed notes>

### Collaborating on an Update

When anyone logs an activity, Troops.ai will provide the update in a team Slack channel.  It is highly encouraged that all members of the SA organization, as well as any GitLab team member, take time to review the updates to understand our business better, but also to exercise our value of **collaboration**.  When reviewing updates, look for opportunities to provide a team member with some **efficiency** by sharing related work or knowledge you have that could assist with an opportunity.  Also, it's a great way to understand what your team members do so that you can leverage their experience in the future. Words of encouragement and congratulations are also encouraged.

#### Team Activity Slack Channels

All troops activity updates channels are of the format `#troops-activities-<region or segment name>`:

* `#troops-activities-apj-cs`
* `#troops-activities-commercial-sa`
* `#troops-activities-east-sa`
* `#troops-activities-emea-sa`
* `#troops-activities-pubsec-sa`
* `#troops-activities-west-sa`

### SA Specific Opportunity Fields

To assist with the analysis of SA guided technical evaluations by our prospects and customer, the SA team maintains four opportunity fields in Salesforce.  These four fields can also be updated through Troops.ai or within the opportunity in Salesforce:

* **Primary SA** - The primary SA assigned to and working on the opportunity.
* **SA Validated Tech Evaluation Start Date** - The date the SA started engaging with a prospect or customer on a technical evaluation.
* **SA Validated Tech Evaluation End Date** - The date the SA stopped engaging with a prospect or customer and the technical evaluation is deemed closed as a technical win, loss, or a stalled evaluation.
* **SA Validated Tech Evaluation Close Status** - The close status of the technical evaluation:
  * **Win** - The technical evaluation has ended, and the prospect or customer agrees the GitLab solution meets their requirements.
  * **Loss** - The technical evaluation has completed, but the prospect or customer is choosing an alternative solution or not changing their current process due to deficiencies with the evaluated GitLab solution.
  * **Stalled** - The technical evaluation has not completed, but the customer or prospect is not actively evaluating any solution.  As a guideline, this usually means the SA is not working with the prospect or customer on evaluation related activities for at least two weeks.

  There are two ways to update these fields in Troops.ai:

   * On the Troops `You just had a meeting` notification - select the opportunity by searching in the `Search Salesforce` box.  Click the `Update Opportunity` button.
   * By searching for the opportunity first using `/troops <opportunity name>` in Slack and clicking on the `Update Opportunity` button.

  While all of these fields can be updated and changed anytime as an opportunity evolves, the end date and close status should not be populated as a forecast.

### Proof of Value (POV) Updates

Proof of Values are [tracked in salesforce](/handbook/sales/POV/#tracking-a-pov-in-salesforce) but can be added or updated through Troops by:

* Clicking on the `Add a Proof of Value` button 
    *  on the Troops `You just had a meeting` notification in slack
    *  after searching for and selecting an opportunity or account first using `/troops <search>` in Slack
    *  after using `/troops-action`
* Clicking on the `Update a Proof of Value` button
    * after searching for and selecting an POV first using `/troops <name of POV>` in Slack

### Updating Activity Summaries

You can update activity that was previously logged in Salesforce or through troops.ai by clicking the `Update Activity` button on the update notification posted by troops.ai to your team activity channel.

### Creating a Contact

If a contact you'd like to associate your activity updates with does not yet exist on the account in Salesforce, you can create the contact through troops.ai:

* Use `/troops-actions` in Slack and click the `Create Contact` button.  The contact will now appear in the `Name` field when logging an activity through troops.ai. ([Create a Contact Video](https://www.youtube.com/watch?v=OzNH927Y7wM&feature=youtu.be))

### Reports

Coming Soon

### Training Resources

* Troops.ai all-hands recording - coming soon 
* [Log an Activity](https://www.youtube.com/watch?v=zRxUJSjujUk&feature=youtu.be)
* [Create a Contact](https://www.youtube.com/watch?v=OzNH927Y7wM&feature=youtu.be)
* [Updating Tech Eval Dates and Status](https://www.youtube.com/watch?v=ifRYJhHzyzo&feature=youtu.be)

### Feedback Process

Coming Soon

### Frequently Asked Questions

Coming Soon
