---
layout: handbook-page-toc
title: Proof of Value (POV)
description: Proof of Value (POV)
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices/) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays/) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources/) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development/) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations/) - [**Processes**](/handbook/customer-success/solutions-architects/processes/)

## Proof of Value (POV)
{:.no_toc}

Solution Architects are instrumental in guiding prospects and customers to carry out a successful Proof of Value. POV's should focus on specific customer business outcomes that cannot be achieved through other technical and/or business interactions.

As a best practice, GitLab product evaluations should remain separate from GitLab high availability architecture and implementation evaluations. Often times a POV is conducted with a GitLab trial license either using GitLab.com or an installed instance. Due to cost and time intensity, a POV may not be the default course of action for most GitLab buyers.

### POV Guidelines

POV's are commonly entered into once an NDA is signed, budget for the project is in place, any competition has been identified and the success criteria has been documented.

The target duration for a POV is between 1 and 8 weeks depending on complexity and style of engagement. A GitLab Customer Success [collaborative project](https://gitlab.com/gitlab-com/account-management/templates/poc-plan) developed from the POV plan is the default method for POV management. The project template is only accessible by GitLab team members, but once a collaborative project is created, the customer will be granted access to that project. When utilizing a collaborative project, follow the instructions in README.md closely in order to properly configure the entire project. If a prospect has an internal process to follow or cannot use GitLab.com to manage the POV, a [Guided POV document](#pov-template-document) or a simplified [Lite POV document](#lite-pov-template-document) may be used.

GitLab Solutions Architects should consider a limit of 3 concurrent Guided or Paid POV's as a best practice in order to provide optimal customer service and to enable a target of achieving 24 hours or less response times to inquiries during any POV. If more than 3 concurrent Guided or Paid POV's are required, the SA should assess their ability to support the additional requirements and/or discuss viability with their manager as well as other SA's in their region.

### Tracking a POV in Salesforce

#### Salesforce Object

In order to track a POV correctly in Salesforce, the Strategic Account Leader should position the opportunity as Stage 3. The Solutions Architect will create the POV object within SFDC when the prospect or customer has indicated interest in moving forward with a guided or lite POV.

To track a POV, click the _Proof of Values_ tab from the top menu bar in Salesforce. Create a new POV using the _New_ button. Alternately, the Solutions Architect may select the relevant Opportunity, scroll down to the related list labeled _Proof of Values_ and click on the "New Proof of Value" button. This will automatically associate the POV with that Opportunity while all other fields need to be manually completed.

Complete the following fields at minimum:

- **POV Owner** - this is the Strategic Account Leader
- **Technical Account Manager** - this is the TAM who will be introduced during the POV
- **Solutions Architect** - this is the SA who owns execution of the POV
- **Proof of Value Name** - this commonly is named identical to the opportunity name
- **Account** - this is the company name
- **Opportunity** - this is the associated opportunity name (this opportunity should be in stage 3)
- **POV Start Date** - the date the POV is expected to begin
- **POV Close Date** - the date the POV is expected to End
- **POV Type** - this is style POV being executed

Once the POV begins, the Solutions Architect should change the **Status** field from _New_ to _In Progress_. When the POV is complete, the Solutions Architect should change the **Status** to _Closed_ and the **Result** should be identified as _Successful_ or _Unsuccessful_. Freeform notes should be added to support the reason for the successful or unsuccessful result.

### POV Best Practices

Solutions Architects are the owners of the POV, guiding prospects through a successful experience with GitLab. As such, Solutions Architects should be the primary contacts for questions and issues experienced by the prospect during the POV. If unexpected technical problems arise, the SA may encourage the prospect to engage GitLab Support via the Support portal. This should only be used for technical abnormalities, not for integration or implementation assistance.

Many prospects are tempted to include implementation of GitLab high availability as part of a POV. In this case, the implementation components should comprise a separate POV entirely, separating GitLab functionality evaluations from implementation, load and performance components.

Other best practices for POV’s:

- SA’s must be part of proposing or committing to POV’s
- POV’s should be a late-stage component that triggers the sale, not an early offering
- Ask WHY a POV is required vs Q&A or other considerations, since prospects are often using existing GitLab installations
- Feature/function POV’s should be run in basic environments, not HA, unless the HA environment is already established and proven
- Required capabilities should be a limited number, 5 or less ideally - these should be purchase triggers and differentiators
- Please work together(SA & SAL) to map required capabilities to decision criteria in the COM plan
- A POV does not implement a fully designed and configured ecosystem in a customer environment, it is a product evaluation
- Customer skills should be able to support the drive toward the success criteria - the SA should not be doing the actual work

Below is best practice guidance for conducting each type of POV. These processes share a similar goal of meeting identified business outcomes for the customer, but they vary based on engagement style, POV duration, location and intensity. The following applies to all POV's:

### POV Key Players

#### Customer Roles

- Executive contact - A leader with business level, budgetary buy in
- At least one pilot team to execute the POV
- Technical POV lead

#### GitLab Roles

- Strategic Account Leader (SAL) or Account Executive (AE) - Relationship manager, owner of licensing
- Solutions Architect (SA) - Primary technical contact, POV owner and project manager
- Technical Account Manager (TAM) - _Only for qualified accounts._ Introduced for customer visibility, occasional POV assistance
- Professional Services - rarely as needed in a pre-sales capacity
- Support Team - only if needed for technical errors, engaged via the customer per the [Internal Support page](/handbook/support/internal-support/#note-on-zendesk-and-supportgitlabcom)

## POV Kickoff Checklist

- SA: Ensure the customer architecture is prepared to support the POV (if self-hosted)
- SA: Ensure customer network has access to GitLab.com (if SaaS evaluation)
- SA: Customer Success project is created in GitLab as per the [TAM Handbook page](/handbook/customer-success/tam/#to-start-a-new-customer-engagement)
- SA: POV document is created if this is required by the customer, otherwise default to the Customer Success project
- SA: Ensure POV goals and business outcomes are clearly identified prior to kickoff
- SA: For the largest strategic opportunities, notify GitLab Support of POV dates, customer, and other relevant information using the applicable Slack channel related to Self-Managed or GitLab.com support
- SAL/AE: Opportunity updated in Salesforce, set to Stage 3-Technical Evaluation, with POV Information entered per the [handbook](/handbook/sales/field-operations/gtm-resources/)
- SAL/AE: Signed NDA by the legal team if required
- SAL/AE: Schedule Internal kick off meeting (detailed below)
- SAL/AE: Schedule kickoff meeting with customer
- TAM: Review collaborative project content prior to internal kickoff meeting

## POV Meeting Recordings

POV-related calls may be recorded with customer consent. Recordings may be stored in Chorus, in a folder on Google Drive (if recorded locally), or within the project repository (if small). Any recording links should be identified in the notes stored within the Documents directory of the project repository.

## POV Types

There are multiple options when executing a POV. The POV type chosen should reflect the wishes and best fit for the customer. POV types, in order of usage frequency, include:

- **Guided** - This is the most common POV for Enterprise customers, comprising the majority of all customer experiences, typically lasting between 14 and 45 days, though it may be extended in some circumstances up to 60 days.
- **Lite** - This type of POV is most commonly used for Commercial opportunities requiring minimal touch points throughout the POV. It is also commonly utilized when a customer has their own POV process which must be adhered to.
- **On-site** - This less common type is an intense, condensed POV typically executed on the client premises within a tight evaluation window (typically 1 week).
- **Paid** - Rarely, a prospect pays GitLab for a long duration evaluation of the software (typically exceeding 60 days).

Best practices specific to each type of POV follows.

### Guided POV

The Guided POV is the most commonly utilized type of POV for Enterprise accounts. These will commonly have a 30 to 60 day duration.

#### Guided POV Template Document

For a  guided POV, the SA must utilize parts or entire  [Guided POV document](https://docs.google.com/document/d/1N6gFggzxqueyywF8CxepfjCi-2AIed9PVyy8VcpfIJk/edit#heading=h.30j0zll)  which validates POV dates, success criteria and assumptions of both GitLab and the prospect. The 4 fields below are mandatory for strategic POVs:

- Desired future
- Desired business outcomes
- Required Capabilities (Success Criterias) aligned to decision criteria & value drivers in SFDC
- Metrics

These POV's are marked by regular touch points and consistent interaction over time without requiring full time dedication to the GitLab evaluation on behalf of the customer. It is common to have kickoff meetings, technical support calls, weekly retrospective calls and POV conclusion calls when running a Guided POV. These meetings may be represented by the following suggestions:

#### Internal Kickoff Meeting led by the Solutions Architect

GitLab Attendees: Strategic Account Leader, Solutions Architect

Agenda:

- Collaboratively review customer success project README to ensure everything is correct
- POV document review (only if a document is required for the POV)
- Discussion of strategy, whether GitLab Support or Professional Services need to be notified
- Strategic Account Leader to schedule external kickoff with customer

#### External Kickoff Meeting (Remote) led by the Solutions Architect

Attendees:

- GitLab: Strategic Account Leader, Solutions Architect
- Customer: Executive contact, Technical POV lead

Agenda:

- Screen share with the customer to discuss the below agenda items
- Collaboratively review customer success project README to ensure everything is correct
- Agree on due dates for POV completion, add to project POV milestone
- Review project POV issues - add new issues if necessary with agreed due dates
- Review POV document with customer (only when required)
- Establish cadence with customer, Strategic Account Leader to schedule during this call
- Create issues for each cadence call with customer under the POV milestone for call notes
- Provision licenses and establish if customer needs help getting GitLab set up and configured

#### Weekly Retrospective call led by the Solutions Architect

Attendees:

- GitLab: Solutions Architect, Strategic Account Leader
- Customer: Technical POV Lead

Agenda:

- What went well?
- What problems do we need to overcome?
- What do we need to change?
- Review success criteria - are we on track?

#### POV Conclusion Meeting led by the SAL or AE

Attendees:

- GitLab: Strategic Account Leader, Solutions Architect, Technical Account Manager
- Customer: Executive contact, Technical POV Lead

Agenda:

- Did we satisfy the required capabilities?
- Did we meet the value driver for the customer? Is this a technical win?
- Identify next steps
- Send out POV survey (where applicable)

### On-site or Hands-On POV

The On-site or Hands-On(virtual) POV is typically the shortest and most intense POV. It is critical that before this type of POV begins:

- All outcomes and objectives are agreed to and documented
- GitLab and customer team members are identified
- Calendar schedules are arranged preferably with meetings(like standup) every day
- System installations and/or user administration tasks are complete

The SA will typically join the client at their chosen location(or virtually) and work directly with the team there to quickly identify the value proposition of GitLab within their environment. The SA will commonly dedicate themselves to the client for a fixed few hours every day(or agreed upon cadence) of the week for this POV.

The objective of the daily(regularly cadenced) meetings will be:

- Checking on the POV status
- Identifying blockers & coming up with a plan to remove them swiftly(in an agreed timeline)
- Collaborating on value drivers
- Assisting in solving problems
- Enabling customer POV owners on required knowledge to obtain identified POV outcomes

### Paid POV

The Paid POV is less common than other types of POV's. These will commonly have duration greater than 60 days, and the customer will pay for usage of GitLab for the duration of the POV. Before this type of POV can begin, it requires a GitLab prorated licensing purchase to be completed. These POV's are marked by regular touch points and consistent interaction over time without requiring full time dedication to the GitLab evaluation on behalf of the customer. This type of POV will commonly have a larger ecosystem focus, where the value of GitLab is dependent on interactions with other tools and environments within the client's ecosystem. It is common to have kickoff meetings, technical support calls, cadenced retrospective calls and POV conclusion calls similar to those identified for a Guided POV.

### Lite POV

When a prospect has an internal POV process to follow, or when time is of the essence, a Lite POV is utilized.

#### Lite POV Template Document

For a Lite POV, the SA may utilize the [Lite POV document](https://docs.google.com/document/d/1PO3jXG3wiKsCbx5vb8dm4SmOe_PiTB47SadROIO8nCc/edit#) (only accessible to GitLab team-members), which validates POV dates, success criteria and assumptions of both GitLab and the prospect.

In the case of a Lite POV, the Solutions Architect is expected to be the sole GitLab contact. "Lite" is determined case-by-case by the size of the prospect as well as their ability to engage with GitLab.

#### Using the LITE POV Template

To use the Lite POV template, begin by making a copy of the master document for each POV.

Edit each area highlighted in yellow within the document to include pertinent information for any particular prospect. This information includes basic data like the prospect name and GitLab team-member details, as well as data to be collaboratively identified with the prospect, such as primary objective, required capabilities and the environment information. Delete any red-colored instructional text.

Finally, ensure both GitLab and the prospect have a copy of the document. Schedule weekly meetings for the duration of the POV via calendar invites prior to distributing the GitLab Enterprise Edition license for the POV.

## Commercial Sales POV Guide

Commercial Sales POV's are commonly executed as a variety of the Lite POV, though they may not utilize the [Lite POV document](https://docs.google.com/document/d/1PO3jXG3wiKsCbx5vb8dm4SmOe_PiTB47SadROIO8nCc/edit#). Typical customer interactions for Commercial POV's are identified below.

### Kick Off Meeting

- Duration: 30 Minutes
- Attendees: GitLab Account Executive, GitLab Solutions Architect, Prospective Customer
- Agenda:
    - Define success criteria (as a best practice, have no more than 5 required capabilities)
    - Confirm start and end date
    - Determine primary communication method
        - Customer to decide if they are interested in communicating on a collaborative GitLab project or email only
        - Collaborative, time-limited Slack channels are an option depending on SA capacity and opportunity IACV
        - Frequency options: 30 minute weekly call or email touchbase weekly with calls scheduled as needed
- SA role:
    - Acts as the primary point of contact throughout POV process
    - Tracks status updates regarding success criteria
    - Records any existing or new feature requests of interest to customer
    - Leads troubleshooting and escalation of blockers

### Commercial Sales - POV and Customer Success Plan Creation

- Create and track the POV in Salesforce according to [this process](/handbook/customer-success/solutions-architects/tools-and-resources/pov/#tracking-a-pov-in-salesforce)
- Create a new [customer project](https://gitlab.com/gitlab-com/account-management/commercial/pre-sales) in the Commercial/Pre-sales group. To use the template, select the 'Create from Template' tab, select the 'Group' templates, and then click 'Use template' for the 'New Customer Project - Commercial Sales' template.
- Edit README.md with information specific to POV under the Proof of Value section and fill in any additional relevant fields.
- Upon completion of POV, update Salesforce record with POV result as successful or unsuccessful and provide supportive reasons in the associated freeform fields
    - For a successful POV:
        - SA adds any other known information in README.md, then moves the project from the Pre-sales group to [Commercial](https://gitlab.com/gitlab-com/account-management/commercial)
        - TAM and AE determine TAM eligibility and engagement based on Account Tier and IACV.
        - TAM, SA and AE schedule meeting with new customer to establish a starting baseline, review the project data and establish intended collaborative usage moving forward.

## POV Template Document

As an alternative (or in addition) to using a collaborative GitLab project, a document is available which helps outline the details of a POV. The POV [template document](https://docs.google.com/document/d/1N6gFggzxqueyywF8CxepfjCi-2AIed9PVyy8VcpfIJk/edit?usp=sharing) (only accessible to GitLab team members) provides the framework for a successful POV by addressing the primary business value driver, the current situation, the desired objective, the required capabilities, metrics and environment information.

This document suggests and verifies specific success criteria for any POV, as well as outlining a mutual commitment between GitLab and the identified prospect parties. It also specifies the limited timeframe in which the POV will occur.

### Using the POV Template Document

To use the full POV template, begin by making a copy of the [template document](https://docs.google.com/document/d/1N6gFggzxqueyywF8CxepfjCi-2AIed9PVyy8VcpfIJk/edit?usp=sharing) (only accessible to GitLab team members) for each POV.

Edit each area highlighted in yellow within the document to include pertinent information for any particular prospect. This information includes basic data like the prospect name and GitLab team-member details, as well as data to be collaboratively identified with the prospect, such as primary objective, required capabilities and the environment information. Delete any red-colored instructional text.

Finally, ensure both GitLab and the prospect have a copy of the document. Schedule weekly meetings for the duration of the POV via calendar invites prior to distributing the GitLab Enterprise Edition license for the POV.

## POV Resources

Below is an evolving list of projects that have proven beneficial during POVs, which may be a great starting point to offer customers.

### End-to-End Proof Projects

These projects have a very simple set of code that provides the ability to demonstrate the `happy-path` for a POV.  While these are more in the Hello World category of projects, they tend to have simple mechanizations to exercise different parts of GitLab.  SAs have used these in the past as a way to assess the installation of self-managed environments.

- [Insecure Tanuki Tech Project](https://gitlab-core.us.gitlabdemo.cloud/demosys-users/skamani/insecure-tanuki) was developed internally to show the usage of Auto DevOps. It is predominantly focused on Secure features, but serves well to present all stages.

### Demonstrative of Specific Stages

These projects are demonstrative of specific stages.  They are generally built on existing code OSS bases which the customer may be familiar with, are easy to understand, and have good literature to refer to.

#### Secure Stage Projects

- [Nodejs Juice Shop](https://github.com/bkimminich/juice-shop) repository comes with a .gitlab-ci.yml file to get started with SAST and Dependency Scanning.  Incorporate others incrementally as needed.
- [OWASP WebGoat.NET](https://gitlab-core.us.gitlabdemo.cloud/tanuki-group/dot-net-webgoat) repository can be enabled with SAST, License Management and Secrets Scanning very quickly using the packaged templates.  This validates our positioning in .NET application development (both Framework and Core).
