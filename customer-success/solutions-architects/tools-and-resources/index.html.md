---
layout: handbook-page-toc
title: Tools and Resources
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

[**SA Practices**](/handbook/customer-success/solutions-architects/sa-practices) - [**Sales Plays**](/handbook/customer-success/solutions-architects/sales-plays) - [**Tools and Resources**](/handbook/customer-success/solutions-architects/tools-and-resources) - [**Career Development**](/handbook/customer-success/solutions-architects/career-development) - [**Demonstration**](/handbook/customer-success/solutions-architects/demonstrations) - [**Processes**](/handbook/customer-success/solutions-architects/processes)

# Tools and Resources
{:.no_toc}

## Product Releases

- check [Product Release Updates](/handbook/marketing/strategic-marketing/release-updates/) for enablement on new features in recent releases
- [Upcoming Releases](https://about.gitlab.com/upcoming-releases/)
- [Previous Releases](https://gitlab.com/gitlab-org/gitlab/-/releases)
- [Releases Blog](https://about.gitlab.com/releases/categories/releases/)
- Compare Two Releases with the [What is New Since? Release Feature Overview Tool](https://gitlab-cs-tools.gitlab.io/what-is-new-since/?)

# Proof of Value (POV) Guidelines
{:.no_toc}

GitLab wants prospects to enjoy a successful Proof of Value (formerly known as Proof of Concept) with GitLab Enterprise Edition as needed. A POV is a collaboration between GitLab and the prospective customer for evaluating GitLab Enterprise Edition. As a best practice, GitLab product evaluations should remain separate from GitLab high availability architecture and implementation evaluations. Due to cost and time intensity, a POV should not be the default course of action for most GitLab buyers. POV's should focus on specific customer business outcomes that cannot be achieved through other technical and/or business interactions.

POV's are commonly entered into once an NDA is signed, budget for the project is in place, any competition has been identified and success criteria have been documented.

The target duration for a POV is between 1 and 8 weeks depending on complexity and style of engagement. A GitLab Customer Success [collaborative project](https://gitlab.com/gitlab-com/account-management/templates/poc-plan) developed from the POV plan is the default method for POV management. The project template is only accessible by GitLab team members, but once a collaborative project is created, the customer will be granted access to that project. When utilizing a collaborative project, follow the instructions in README.md closely in order to properly configure the entire project. If a prospect has an internal process to follow or cannot use GitLab.com to manage the POV, a [Guided POV document](#pov-template-document) or a simplified [Lite POV document](#lite-pov-template-document) may be used.

GitLab Solutions Architects should consider a limit of 3 concurrent Guided or Paid POV's as a best practice in order to provide optimal customer service and to enable a target of achieving 24 hour or less response times to inquiries during any POV. If more than 3 concurrent Guided or Paid POV's are required, the SA should assess their ability to support the additional requirements and/or discuss viability with their manager as well as other SA's in their region.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Tracking a POV in Salesforce

### Salesforce Object

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

## POV Best Practices

Solutions Architects are the owners of the POV, guiding prospects through a successful experience with GitLab. As such, Solutions Architects should be the primary contacts for questions and issues experienced by the prospect during the POV. If unexpected technical problems arise, the SA may encourage the prospect to engage GitLab Support via the Support portal or via the [trials@gitlab.zendesk.com](mailto:trials@gitlab.zendesk.com) email address. This should only be used for technical abnormalities, not for integration or implementation assistance.

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
- Support Team - only if needed for technical errors, engaged via [trials@gitlab.zendesk.com](mailto:trials@gitlab.zendesk.com) by the customer per the [Internal Support page](/handbook/support/internal-support/#note-on-zendesk-and-supportgitlabcom)

### POV Kickoff Checklist

- SA: Ensure the customer architecture is prepared to support the POV (if self-hosted)
- SA: Ensure customer network has access to GitLab.com (if SaaS evaluation)
- SA: Customer Success project is created in GitLab as per the [TAM Handbook page](/handbook/customer-success/tam/#to-start-a-new-customer-engagement)
- SA: POV document is created if this is required by the customer, otherwise default to the Customer Success project
- SA: Ensure POV goals and business outcomes are clearly identified prior to kickoff
- SA: For the largest strategic opportunities, notify GitLab Support of POV dates, customer, and other relevant information using the applicable Slack channel related to Self-Managed or GitLab.com support
- SAL/AE: Opportunity updated in Salesforce, set to Stage 3-Technical Evaluation, with POV Information entered per the [handbook](/handbook/business-ops/resources/#opportunity-stages)
- SAL/AE: Signed NDA by the legal team if required
- SAL/AE: Schedule Internal kick off meeting (detailed below)
- SAL/AE: Schedule kickoff meeting with customer
- TAM: Review collaborative project content prior to internal kickoff meeting

### POV Meeting Recordings

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

#### Internal Kickoff Meeting, led by the Solutions Architect

GitLab Attendees: Strategic Account Leader, Solutions Architect

Agenda:

- Collaboratively review customer success project README to ensure everything is correct
- POV document review (only if a document is required for the POV)
- Discussion of strategy, whether GitLab Support or Professional Services need to be notified
- Strategic Account Leader to schedule external kickoff with customer

#### External Kickoff Meeting (Remote), led by the Solutions Architect

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

#### Weekly Retrospective call, led by the Solutions Architect

Attendees:

- GitLab: Solutions Architect, Strategic Account Leader
- Customer: Technical POV Lead

Agenda:

- What went well?
- What problems do we need to overcome?
- What do we need to change?
- Review success criteria - are we on track?

#### POV Conclusion Meeting, led by the SAL or AE

Attendees:

- GitLab: Strategic Account Leader, Solutions Architect, Technical Account Manager
- Customer: Executive contact, Technical POV Lead

Agenda:

- Did we satisfy the required capabilities?
- Did we meet the value driver for the customer? Is this a technical win?
- Identify next steps
- Send out POV survey (where applicable)

### On-site POV

The On-site POV is typically the shortest and most intense POV. It is critical that before this type of POV begins:

- All outcomes and objectives are agreed to and documented
- GitLab and customer team members are identified
- Calendar schedules are arranged
- System installations and/or user administration tasks are complete

The SA will typically join the client at their chosen location and work directly with the team there to quickly identify the value proposition of GitLab within their environment. The SA will commonly dedicate themselves to the client for 3 to 4 days a week for this POV, collaborating on value drivers, assisting in solving problems, and enabling customer POV owners on required knowledge to obtain identified POV outcomes.

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

- Create and track the POV in Salesforce according to [this process](/handbook/sales/POV/#tracking-a-pov-in-salesforce)
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

- Create and track the POV in Salesforce according to [this process](/handbook/sales/POV/#tracking-a-pov-in-salesforce)
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

## Customer Facing Meeting Tools

Solutions Architects frequently interact with customers for demos, presentations or Q&A. These calls should enable the customer to clearly experience the value of GitLab without distraction or interruption. The below list of tools was compiled by the GitLab SA team as commonly used solutions. Note, this list does not represent a requirement to use any of these products or an endorsement for these products.

- [Muzzle](https://muzzleapp.com/) to mute all notifications prior to beginning a call
- [Tab Resize Chrome plugin](https://chrome.google.com/webstore/detail/tab-resize-split-screen-l/bkpenclhmiealbebdopglffmfdiilejc?hl=en-US) to break tabs into split-screen viewing
- [Screenbrush](http://screenbrush.imagestudiopro.com/) to draw on the screen
- [Toby](http://www.gettoby.com/) or [Tabs Outliner](https://chrome.google.com/webstore/detail/tabs-outliner/eggkanocgddhmamlbiijnphhppkpkmkl) to launch many preset tabs at once
- [Station](https://getstation.com/) to group pages by application in a smart dock
- [MouseBeam](https://geeky.gent/tag/mousebeam/) enables the mouse cursor to use multiple screens like a circle
- [Rectangle](https://rectangleapp.com/) to quickly move and resize windows in macOS using keyboard shortcuts or snap areas
- [Dark Reader](https://darkreader.org/) enables browser dark mode to better fit room lighting
- [Postman](https://www.getpostman.com/) for API interaction
- [Atom.io](https://atom.io/) lightweight IDE text editor
    - [git-plus](https://atom.io/packages/git-plus) Package for atom to make commits and other git actions without the terminal

Related macOS tips

- [Switch between full screen applications](https://www.intego.com/mac-security-blog/how-to-enter-and-exit-full-screen-mode-in-macos/) using the trackpad, Command keys or other options
- Use the [Zoom Accessibility Features](https://www.imore.com/how-use-zoom-mac) to zoom in on targeted screen locations
- [Work in multiple spaces on a single monitor](https://support.apple.com/en-gb/guide/mac-help/mh14112/mac) to keep multiple app windows or browser tabs open in fullscreen mode
    - Enables switching between windows or tabs with trackpad gestures, keeping display screen clean and uncluttered

## POV Resources

The [POV Guidelines document](https://about.gitlab.com/handbook/sales/POV/) describes how to kick off a POV.  The Solutions Architect (SA) is the key actor in the process.  A POV is part product evaluation, part trust building exercise. This is a key moment in the sales cycle to establish deep conversations with the customer, and become the trusted advisor.  This is done by bringing background and experience to the table.  In addition, it is very helpful to have some set exemplar projects that can be shared with customers to show different areas of the product.  List below is an evolving list of projects that have come in handy during POVs and may be a great starting point to offer customers.

### End-to-end Proof projects

These projects have a very simple set of code that provides the ability to demonstrate the `happy-path` for a POV.  While these are more in the Hello World category of projects, they tend to have simple mechanizations to exercise different parts of GitLab.  SAs have used these in the past as a way to assess the installation of self-managed environments.

- [Insecure Tanuki Tech Project](https://gitlab-core.us.gitlabdemo.cloud/demosys-users/skamani/insecure-tanuki) was developed internally to show the usage of Auto DevOps. It is predominantly focused on Secure features, but serves well to present all stages.

### Demonstrative of specific stages

These projects are demonstrative of specific stages.  They are generally built on existing code OSS bases which the customer may be familiar with, are easy to understand, and have good literature to refer to.

#### Secure Stage Projects

- [Nodejs Juice Shop](https://github.com/bkimminich/juice-shop) repository comes with a .gitlab-ci.yml file to get started with SAST and Dependency Scanning.  Incorporate others incrementally as needed.
- [OWASP WebGoat.NET](https://gitlab-core.us.gitlabdemo.cloud/tanuki-group/dot-net-webgoat) repository can be enabled with SAST, License Management and Secrets Scanning very quickly using the packaged templates.  This validates our positioning in .NET application development (both Framework and Core).

## Useful Customer Facing Presentations

No two presentations are the same and we often find ourselves mixing and matching content tailored to our Customer's journey.  From Agile to CI/CD to Kubernetes and beyond, below are several commonly used decks rich in content to pull from.

- [Official Customer Facing Presentations](https://about.gitlab.com/handbook/marketing/strategic-marketing/#customer-facing-presentations) - Here you will find the [Company Pitch Deck](https://docs.google.com/presentation/d/1dVPaGc-TnbUQ2IR7TV0w0ujCrCXymKP4vLf6_FDTgVg/) with the GitLab narrative, [Customer Value Deck](https://docs.google.com/presentation/d/1SHSmrEs0vE08iqse9ZhEfOQF1UWiAfpWodIE6_fFFLg/) with Value Drivers and Differentiators, and [Security Deck](https://docs.google.com/presentation/d/1WHTyUDOMuSVK9uK7hhSIQ_JbeUbo7k5AW3D6WwBReOg/edit?usp=sharing) with best practices on Shift-Left security.   _These should be the starting point of any tailored deck!_
- [All The Things](https://docs.google.com/presentation/d/1mGMyciRrobnOgazoc20_Q5HiBcP8ydp_JWjzgBj4tRI/) - Not a pitch deck.  Owned by a Solution Architect, this is a holistic, tactical guide to GitLab as a Product constantly updated with screenshots.
- [General Demo](https://docs.google.com/presentation/d/17SoRPxPCswT_FublXCsi3rm3TBnHAYI-/) - Product Walk-through from the lens of a Solution Architect covering Velocity, Visibility, and Security & Compliance.
- [Getting Started](https://docs.google.com/presentation/d/1LJTZ7SC4EWcXJx3ptiA23Cf1i33GJHTE) - Kicking off a POV? This is a fantastic deck to help Customers on their journey to setting up Users, Groups, Pipelines, Auto DevOps, and more!

## RFP Responses

### Best Practices for writing RFx responses

Responding to a Request for _____ (RFx) is part of the standard process within Public Sector. RFx is a general category that includes Request for Information, Request for Proposal, Request for Quote, etc. RFIs are generally less structured than RFPs. While RFQs rarely need technical write ups, occasionally technical input is required, especially if the RFx requests an `or alike` product.

### Evaluating RFIs and RFPs for response

Solutions Architects have a big role in responding to RFIs and RFPs where there are considerable number of technical asks.  There is a saying used commonly when responding: `Make sure you answer the mail`. This has two connotations:

1. Evaluate what is asked for and make a best attempt to address it, and
1. Answer the questions directly and provide context

But more importantly, be sure that there is a product fit. If what is asked for in the RFI/RFP is not directly met with GitLab, or seems too much like a different software entirely, then stop and talk to the Strategic Account Leader or Inside Sales Representative. Also identify the strategic impact if the requirements do not seem to match GitLab functionality. If GitLab fits only a piece of the RFx, collaborate with the Strategic Account Leader and/or Inside Sales Representative to understand who the other players in the response might be.

### Process of responding to RFx

Generally, RFx's have a fixed timeline. GitLab issues can assist in this process as everything needed to manage a task is available. The best place to create the issue is in the Account project, if one exists, or in a central project where such activites are created and tracked. Occasionally, they can be created in an arbitrary personal project space and shared with other team members is no other suitable place can be found. Build an outline in the issue. The outline should include the following things:

1. Any customer’s instructions regarding organization
1. A rational organization of information that will answer all of the questions and requirements
1. Easy to follow structure for the proposal document
1. Compliance with all requirements
1. Links to appropriate Account or Opportunity in Salesforce

Typically a SAL or ISR will be involved in the process and should be assigned to the issue along with the SA. Lay out the tasks and assign owners so that every team member's duties are clear. And finally assign the due date according to the agreed-to completion date - at least 24-36 hours in advance of the published due date for the submission to the customer. This provides a small buffer in case of last minute adjustments or approvals that may be needed.

### Responding to RFxs

After the issue is created, create a Google document and start filling in the details. A general [Public Sector template](https://docs.google.com/document/d/12uLyZ-lc9sswULq7XqpwOUtk_eiK2wgWhi-TIvT1mQs/template/preview) (only available to GitLab team members) is available as a starting point. Insert the link to the working document into the issue.

In the event that the RFx requires:

- Security Questionnaire, please follow the process described in the [Risk and Field Security Team](/handbook/engineering/security/security-assurance/field-security) handbook.
- A legal review, please follow the process described in [Collaborating with GitLab legal](/handbook/legal/#sales-guide-collaborating-with-gitlab-legal) handbook page.
- A professional services component, the [Selling Professional Services](/handbook/customer-success/professional-services-engineering/selling/) handbook page will be of help.

Each of these processes will likely require the creation of issues. Be sure to link these issues to the main response issue for tracking purposes.

`Recommendation:` The response documents should be placed in the appropriate Sales Account directory/folder in Google Drive. Please include the link to that document in the [**catalog document**](https://docs.google.com/document/d/1BW9WIYWkg_KG2kZu31IJofavgu4vt5Ac_jcJ3xAtKrg/edit?usp=sharing) for others to be able to find easily and reuse.

### Specifics about RFIs

RFIs are generally issued to shape procurement. In some situations, RFIs are just a step in the process as the customer may already have an advising team that may be following protocol. An RFI is generally non-binding unless otherwise specified. Responses to questions in an RFI don't have to be precise. They can have some idealistic statements to lay the groundwork and pivot points to educate the customer on what GitLab offers. It is good to follow the GitLab Value Framework response methodology, as there is no ability to have a dialog. The RFI is about positioning. Provide context around the following factors that can grab the attention of the readers:

- Positioning and value of the product
- Truth about capabilities
- Solution options and flexibility
- How risk is mitigated by the solution

Some RFIs have a length limit, but be sure to verify and be mindful if there is one. Start with a simple overview of what the product does. GitLab Marketing does a great job with text that is vetted. For example, utilize the write-ups for each of the [stages of the DevOps workflow](https://about.gitlab.com/stages-devops-lifecycle/). Do not reinvent the wheel, especially for an RFI. Keep it simple and succinct.

An RFI may ask open-ended questions. This is good for providing detailed solution responses. Keep the language simple and describe the solution GitLab offers. Instead of stating that GitLab does or does not do something, direct the reader to why GitLab doesn't do it, if it is on the roadmap, or how they would implement a workaround.

When responding to an RFI, it's critical to document how the product solves customer problems, but it's also important to include the company behind the product. GitLab's all-remote leadership, its company values, its culture, and its professional services offerings shape the entire customer relationship.

### Including Links to Documentation

In general, for Public Sector responses, adding links to documentation is not a good practice. Essentially, anything that makes a reader have to do extra work is not going to work well. There are also cases in which the reader may not be able to readily access the link provided.

For example, if the question asks for a Roadmap for the next product release, it is a good idea to include a link to our roadmap, but then also explain GitLab's release velocity and consistency so the customer understands the dynamic nature of the GitLab release process. Another instance when links are desirable is when relevant customer use cases may be referenced.

If, however, the customer asks for a descriptive concept like the architecture of GitLab, use that as a way to include as much detail as possible inline, a summary of why the architecture is what it is, including the benefits, and then a link for them to read more. Also, including images and screenshots is highly encouraged where possible.

The customer may ask for a description of the CI process or other complex process. In these cases, it is acceptable to copy as much of the documentation from our documentation as possible, including many details to differentiate GitLab from competitive products. Using CI as an example, include a description of how GitLab CI operates, a description of the yml file, a link to the yml file documentation, and add information regarding unique or differentiating functions that GitLab offers like Auto DevOps, Directed Acyclic Graphs, multi-project pipelines, etc.

### Tips and Tricks in Response Writing

- As much as possible use [active rather than passive voice](https://www.grammarly.com/blog/active-vs-passive-voice/)
- Eliminate pronouns: Example 1, "GitLab CI will do x" rather than "Our CI will do x". Example 2, "The GitLab team will x" rather than "We will x".
- Organization of the response is as important as the content
- Create a strong introduction and summary leveraging existing Marketing information which presents the breadth of the entire GitLab solution
- If specific requirements are expected to be answered by the response, add notations to the requirement number being met within the text of the response: Example, "GitLab's SAST scanner will analyze your source code for known vulnerabilities (Req 1.a.1)"
- Use customer terminology wherever possible
- Include relevant customer use cases whenever possible

## Hands-on Workshops

Hands-on GitLab workshops are interactive events which enable GitLab prospects and customers to learn more about GitLab, then apply that knowledge hands-on within a provided GitLab environment. Workshops include topics such as DevOps Automation, Portfolio and Project Management, Security and Advanced CI/CD. Workshops are ideally limited to 200 or fewer attendees in order to provide stable working environments as well as to be able to field Q&A from attendees in a timely manner. Workshops may be executed as marketing events or run independently for specific customers.

Due to resource intensity and time requirements, workshops are typically limited to a minimum of 50 attendees. Workshops average 3 hours in length, requiring a minimum of 3 GitLab employees to execute successfully. These are not "training events" but rather informational events geared toward new users or users interested in expanding their use of GitLab into new functionality such as CI, PPM or security.

### Creating a Workshop Instance

To create an instance of a workshop navigate to the [Workshop Classes](https://gitlab.com/gitlab-com/customer-success/workshops/classes) Group in GitLab.

1. Click the 'New Project' button
1. Select 'Create from template'
1. Select 'Group' then select the required workshop template
1. Enter a project name that follows the following naming convention:
[Date of workshop]-[Workshop Name]-[Client Name(if applicable)]
i.e. "20210112-Advanced CI CD-GitLab"
1. Click the 'Create project' button

### How to Use the Workshop Template

The template consists of several main parts:

#### The Project Repository

The project Repo contains all the materials required to run a workshop.

#### The Readme File

The Readme file within the project repository describes the workshop requirements and delivery information.

#### Tracking Issues

There are 7 issues created to help set up, track and deliver the workshop

Task 1 is the core issue. It is recommended that to use this to consolidate and coordinate with the team. Point team members to this issue to get the information on the particular instance of the workshop. Set timelines and set the dates for all the issues as it relates to the targeted delivery date.

#### Tracking Milestone

Milestones are used to see progress on workshop set up. They can also be used as part of the group roll up to see across multiple workshop executions.

#### Tracking Boards

The following boards have been created to help manage the workshop. Feel free to create new boards as needed:

- Tracking - This board uses the flow of scoped labels - Waiting to Start, In Progress, Under Review
- Assistance Needed: This board follows blocking issues affecting workshop setup and delivery

#### Labels

The following labels are available at the project level - feel free to add new labels as needed, but please do not remove these labels:

- Assistance Needed: a label to flag when help is needed from the team and/or management to resolve an issue
- Content Creation - a label to indicate content is being created or updated
- Waiting to Start - a label indicating no work completion to date
- In Progress
- Under Review
