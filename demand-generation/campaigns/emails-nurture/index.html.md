---
layout: handbook-page-toc
title: Emails & Nurture Programs
description: An overview of emails and nurture programs at GitLab.
twitter_image: '/images/tweets/handbook-marketing.png'
twitter_site: "@gitlab"
twitter_creator: "@gitlab"
---
## On this page 
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview
{: #overview .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

This page focuses on emails and nurture programs, owned and managed by Marketing Campaigns. The Campaigns Team is heavily focused on building a key element to driving top-funnel demand generation: an "always on", logic-based and persona-driven nurture engine.

**When our ideal state top-funnel demand gen nurture engine is in place, we will be able to provide the *right offer* to the *right person* at the *right time* - based on their placement in the buyer journey (lead funnel) and their areas of interest, and in some cases, their location.**

**Key foundational elements to achieve this:**
* A strategically segmented Marketo database
    - this is an ongoing effort led by MOps in collaboration with Campaigns
    - *please see [note below regarding segmentation and email requests](https://about.gitlab.com/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/emails-nurture/#ad-hoc-one-time-emails---requesting-an-email)*
    - [see the overall database segmentation epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1331)
    - [see this epic for more campaign-based tactical segmentations](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1467)
* A persona-based prescriptive buyer journey
    - this is an ongoing effort led by Campaigns in collaboration with Content Mktg, Product Mktg, Technical Mktg
    - [see the epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1530)
* Logic-based Marketo nurture programs by segment
    - this is an ongoing effort led by Campaigns, and specifically spearheded by our Email Marketing Campaign Manager @nbsmith.
    - [see this epic for holding location of projects to be prioritized](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1040)

### Quick Links
{: #quick-links}
<!-- DO NOT CHANGE THIS ANCHOR -->

To be added

## GitLab Email Calendar
{: #calendar .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

The calendar below documents the emails to be sent via Marketo and Mailchimp for:
1. nurture emails
1. virtual events (invitations, reminders, and follow ups)
1. in-person events (invitations, reminders, and follow ups)
1. ad hoc emails (security, etc.)
1. milestones for nurture campaigns (i.e. when started, changed, etc. linking to more details)

*Note: emails in the future may be pushed out if timelines are not met for email testing, receiving lists from event organizers late, etc. The calendar will be updated if the email is pushed out.*

<figure>
  <iframe src="https://calendar.google.com/calendar/b/1/embed?showPrint=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=gitlab.com_bpjvmm7ertrrhmms3r7ojjrku0%40group.calendar.google.com&amp;color=%23B1365F&amp;ctz=America%2FLos_Angeles" style="border-width:0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
</figure>


### Holiday coverage for severity::1 security vulnerabilities email communication
{: #holiday-coverage}
<!-- DO NOT CHANGE THIS ANCHOR -->

In the event of an severity::1 (critical) security vulnerability email communication is needed during the holidays, please create an issue using the *[incident_communications](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new#incident_communications)* template and ping in [#marketing_programs](https://gitlab.slack.com/archives/CCWUCP4MS) tagging @marketing-programs and #mktgops. Follow  addititonal directions [here](https://about.gitlab.com/handbook/marketing/marketing-operations/#pagerduty-and-emergency-comms). 

## Email Nurture Programs
{: #nurture-programs .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Intelligent Email Nurture
{: #intelligent-email-nurture}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### Quick Links
{: #intellient-email-nurture-quick-links}
<!-- DO NOT CHANGE THIS ANCHOR -->
* [WIP Intelligent Marketo Email Nurture Epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1836)
* [MURAL (WIP) of Intelligent Marketo Email Nurture](https://app.mural.co/t/gitlab2474/m/gitlab2474/1626128789338/8f1cc1f4ff18f63a308032dffdfcc73958541101?sender=jgragnola2053)
* [Marketo Program](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/MF8561A1)
* [Notes Doc](https://docs.google.com/document/d/19kB9ntQ8aMPVFdiLJH7jqbN4jI9ax-BsujMtnVhKTOA/edit#)

#### Documentation of Past Nurture Setup
{: #documentation-past}
<!-- DO NOT CHANGE THIS ANCHOR -->
* [MURAL of experienece prior to intelligent nurture](https://app.mural.co/t/gitlab2474/m/gitlab2474/1625087469029/970807f67b4072c5d9f4cb22d813de3288a2e70a?sender=jgragnola2053)
* [CTA & UTM documentation experienece prior to intelligent nurturee](https://docs.google.com/spreadsheets/d/1QRilUEUGSUlMwwsMa_G11HRmxSskHFgDeWV0STOtLh4/edit#gid=0)

#### Creating an Email Send Program for Intelligent Nurture
**The following process is for Verticurl for the inital switch over, and will be updated once the initial recreation of emails is completed.** If you have quesitons, please ask `@jgragnola` in [this issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1541).

1. [Clone this template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG8466A1) and name with the 
    - Clone into `A Campaign Folder`
    - Name the program `Type-ShortContentName` (i.e. `ebook-scaledci`)
    - Folder is `Master Email Programs (Intelligent Nurture)`
    - Description link to [this issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1541)
1. Edit Email in the program
    - DO NOT UPDATE EMAIL CODE or you will break the email from the template.
    - Copy is indicated in [this issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1541) with the link to the original in Marketo. 
    - If the email in the original in Marketo is missing something (i.e. a CTA button because the template is different), please comment in the issue with a link to BOTH 1. the original Marketo email link 2. the new Marketo email program
1. Add the link to the new email in [this spreadsheet](https://docs.google.com/spreadsheets/d/1QRilUEUGSUlMwwsMa_G11HRmxSskHFgDeWV0STOtLh4/edit#gid=2096477155) in the column named `Link to New Marketo Program`
1. Check the box in [this issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/1541) for the email that was created, AND link to the new Marketo program


#### Reading for those unfamiliar with Marketo
{: #marketo-nurutre-reading}
<!-- DO NOT CHANGE THIS ANCHOR -->
* [Adding a Program to an Engagement Program Stream](https://experienceleague.adobe.com/docs/marketo/using/product-docs/email-marketing/drip-nurturing/creating-an-engagement-program/adding-a-program-to-an-engagement-program-stream.html?lang=en) - we will be employing this advanced setup
* [Add People to an Engagement Program](https://experienceleague.adobe.com/docs/marketo/using/product-docs/email-marketing/drip-nurturing/creating-an-engagement-program/add-people-to-an-engagement-program.html?lang=en) - Amy will be managing this in a single automation engine ("air traffic control") to ensure no mailable lead is left behind.
* [Understanding Engagement Programs](https://experienceleague.adobe.com/docs/marketo/using/product-docs/email-marketing/drip-nurturing/creating-an-engagement-program/understanding-engagement-programs.html?lang=en)

<!--
### Visualization of active nurture streams
{: #active-nurtures-visualization}

To be updated and documented upon revamp of nurture engine and database nurutring FY22 Q2.
- [Epic for Marketo database audience stretegy for lifecycle marketing engine](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2022)
- [Epic for overall nurture strategy - no lead left behind](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1836)
--->



#### Trial nurture
{: #nurture-trial}
<!-- DO NOT CHANGE THIS ANCHOR -->

* **Goal:** Educate trialers about key features to use during 30 day period.
* **Delivery System:** Marketo (and Outreach sequences by SDRs)
* **Trial Key Email:** the self-managed trial sign-up triggers a unique trial key email confirmation before launching the 30 day email series.

<iframe src='https://app.mural.co/embed/40f86b14-b313-48f8-a015-a00dcccfa3b8'
        width='100%'
        height='480px'
        style='min-width: 640px; min-height: 480px; background-color: #f4f4f4; border: 1px solid #efefef'
        sandbox='allow-same-origin allow-scripts allow-modals allow-popups allow-popups-to-escape-sandbox'>
</iframe>

##### Setup for Trial Nurture
[Marketo Program]()

UTMs

###

### Active Nurture Programs (Prior to Intelligent Nurture)
{: #active-nurture-programs}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### GTM motion nurtures
{: #gtm-motion-nurtures}
<!-- DO NOT CHANGE THIS ANCHOR -->

The following are active GTM motion nurture programs, which each contain content streams for awareness, consideration, and decision/purchase stages. They send bi-weekly with the date of deployment included in each bullet. The Prespriptive Buyers Journey Nurtures have separate tracks for Practitioners and for Managers. They are designed so that they send the the right content at the right time to the right persona (aligning with to stage of the buyers journey).

- [CI Use Case Prespriptive Buyers Journey Nurture](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/809) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP7537B2), sends on Wednesdays)
    - [French CI Use Case Nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/752) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP5239A1), sends on Thursdays)
    - [German CI Use Case Nurture]() - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP5299A1), sends on Thursdays)
    - [Spanish CI Use Case Nurture]() - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP4863A1), sends on Tuesdays)
    - [Portuguese CI Use Case Nurture]() - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP5038A1), sends on Thursdays)
- [DevSecOps Use Case Nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/901) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP4864A1), sends on Tuesdays)
- [GitOps Use Case Nurture](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues/2769) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP5545A1), sends on Thursdays)
- [Version Control & Collaboration Use Case Nurture](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues/2435) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP5465A1), sends on Thursdays)
- [AWS Partner Nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/624) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP4204A1), sends on Wednesdays)
- [Jenkins Take Out Prescriptive Buyers Journey Nurture - ](https://gitlab.com/groups/gitlab-com/-/epics/1036) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP6880A1), sends on Thursdays)
    - The messaging for this track is centered around why GitLab built-in CI/CD solution is a better alternative than Jenkins plug-in solution.
- [Public Sector Digital Transformation Nurture](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1659) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP6828A1), sends on Tuesdays)
- [SMB Mixed Use Case Nurture](https://gitlab.com/groups/gitlab-com/marketing/demand-generation/-/epics/2) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP7116A1), sends on ?)

Note: Nurtures were moved from every-other-week to be weekly on 2021-01-16 to accelerate INQ > MQL conversion. [Issue for Reference >](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/670)

<details>
<summary>See inactive nurture programs here</summary>

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://www.lucidchart.com/documents/embeddedchart/7889a7fb-e1f0-4c67-92ae-7becd009625f" id="XA5ojeoO~Tej"></iframe></div>

</details>

### How nurture programs are set up in Marketo
{: #nurture-program-setup}
<!-- DO NOT CHANGE THIS ANCHOR -->

**Note: Salesforce campaigns should NEVER be created for emails or nurture programs. This is because the utms within the emails are captured on the Bizible touchpoints to tell us about this channel driving engagement.**

### Nurture entry (system logic and manual flow)
{: #nurture-entry}
<!-- DO NOT CHANGE THIS ANCHOR -->

**Note: in our future state nurture system, leads would be nurtured appropriately through logic based on:**
* Stage in the buyer lifecycle
* Indicated GTM Motion(s) of interest (either through inbound source, self-selected, or segmentation)

These future state nurture programs will be aligned to GTM Motions, with three streams to clearly designate the stage of the [buyer journey](/handbook/marketing/inbound-marketing/content/#content-stage--buyers-journey-definitions) (Awareness, Consideration, and Purchase/Decision) and therefore deliver content relevant to their stage of the buyer journey.

#### Add to nurture within Marketo programs
{: #add-to-nurture-in-program}
<!-- DO NOT CHANGE THIS ANCHOR -->

These smart campaigns are in Marketo program templates in order to add leads to nurture programs. This is the interim of building an automated Nurture Logic Engine, which will enable a more scaled and efficient approach.

**Review the smartlist and run:**
* Smart List (filter):
    - Member of Program: (current program, success status) - `NOTE: These are pre-built in the templates, no need to edit!`
    - Subscription Filters (fitlers here are dependent on program type, and subject to change, so not adding all details)
    - Not in a trial
    - Not on an open opportunity
* Flow
    - Add to nurture:
       - Select the program indicated in the issue description (should include one of the [active nurture program options](/handbook/marketing/demand-generation/campaigns/emails-nurture/#gtm-motion-nurtures))
       - Select the stream indicated in the issue description (should be awareness, consideration, OR decision/purchase)
* Schedule
    - Select `Run Once` > Choose `Run Now` > Click `Run`

#### Requesting to add leads to a nurture program
{: #add-to-nurture-request}
<!-- DO NOT CHANGE THIS ANCHOR -->

While the future automated nurture system is in progress, to request to add a segment of leads to a nurture, please create an add-to-nurture issue request:
   - If Field Marketing is DRI: [request-add-to-nurture](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=request_add_nurture)
   - If any other team is DRI: [request-add-to-nurture](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-add-nurture)

These issue templates are also built into the epic codes throughout the handbook accordingly. As the overarching automated nurture logic is created, AND epic codes consistently indicate the required details for the logic, we will discontinue use of these issue templates.

#### In Product Email Campaigns
{: #in-product-emails .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
To see all the emails,  [click here](https://gitlab.com/groups/gitlab-org/growth/-/epics/62#note_494532868)

**These are also known as:**
- User onboarding emails
- Free user nurture
- User nurture
- User emails
- Any sort of combination of the above

**We launched these for:**  
- Free SaaS users - Beginning of Feb, 2021
- Free Self-managed users - Launching mid-late may, 2021

**Iterations:**  
We changed send time from 9am UTC every day (5am on the US east coast, 2am pacific) to 4PM UTC. This Change went live April 29, 2021. We could use April 30th forward for a comparison.

**Who’s part of this project?**  
- Michael Karampalas (Create path)
- Sam Awezek (Trial and add Team paths)
- Jensen Stava (Verify path)
- Nout Boctor-Smith - email marketing DRI, mailgun analytics, & assist technical setup
- Growth engineers - technical setup
- Valerie Silverthorne - copywriter

**So what’s the deal?**  
Basically, we have a series of emails that deploy to net new namespaces. The goal is to get free users to use features of the product. There are 4 tracks - adopt Create, adopt Verify, invite Team, try a Trial. Each track has 3 emails that try to nudge users to take action. If a user takes the action referenced in the email, they will not get the next email in the series.

**Keep in mind that:**  
- only 50% namespaces get enrolled (control vs experiment)
- sub-groups are excluded
- the tracking of this data only started a few weeks ago (April 2021)
- we only send emails if they have not fulfilled the previous action. For invite it would be if they have started a trial

**Sisense data**  

- [Dashboard](https://app.periscopedata.com/app/gitlab/820093/WIP:-Onboarding-Emails)
- Control = not getting the email, candidate = getting the emails


**From email and reply-to email**  
`team @ gitlab.com` -  which is a group inbox. Amy is also a member of this group inbox.

**Mailgun**  
These emails are sent “from the product” meaning the growth engineers build the emails in the product and use Mailgun as the SMTP. All of these emails are tagged “marketing” in Mailgun so when you view analytics, it’s an aggregate look for all of these emails. There is also a Mailgun unsubscribe link. All of this data lives in Mailgun. 

**HTML files**  
All of the HTML email files are in [Litmus](https://litmus.com/folders/14964).

**For more in-depth information about how these emails are implemented, please view the [project epic](https://gitlab.com/groups/gitlab-org/growth/-/epics/62) and all associated project issues.**

## Newsletter
{: #newsletter .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### Process for bi-weekly newsletter
{: #newsletter-process}
<!-- DO NOT CHANGE THIS ANCHOR -->

Open an issue using the [Newsletter Request Template](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-email-newsletter), including the newsletter send date in the issue title.

**[Epic of Past and Upcoming Newsletters](https://gitlab.com/groups/gitlab-com/marketing/-/epics/179)**

#### Creating the newsletter in Marketo
{: #newsletter-marketo-creating}
<!-- DO NOT CHANGE THIS ANCHOR -->

A day or two before the issue due date, create the newsletter draft. It's easiest to clone the last newsletter in Marketo:

1. Go to Marketing Activities > Master Setup > Outreach > Newsletter & Security Release
1. Select the newsletter program template `YYYYMMDD_Newsletter Template`, right click and select `Clone`.
1. Clone to `A Campaign Folder`.
1. In the `Name` field enter the name following the newsletter template naming format `YYYYMMDD_Newsletter Name`.
1. In the `Folder` field select `Newsletter & Security Release`. You do not need to enter a description.
1. When it is finished cloning, you will need to drag and drop the new newsletter item into the appropriate subfolder (`Bi-weekly Newsletters`, `Monthly Newsletters` or `Quarterly Newsletters`).
1. Click the + symbol to the left of your new newsletter item and select `Newsletter`.
1. In the menu bar that appears along the top of your screen, select `Edit draft`.

#### Editing the newsletter in Marketo
{: #newsletter-marketo-editing}
<!-- DO NOT CHANGE THIS ANCHOR -->

1. Make sure you update the subject line.
1. Add your newsletter items by editing the existing boxes (double click to go into them). It's best to select the `HTML` button on the menu bar and edit the HTML so you don't inadvertently lose formatting.
1. Don't forget to update the dates in the UTM parameters of your links (including the banner at the top and all default items such as the "We're hiring" button).

#### Sending newsletter test/samples from Marketo
{: #newsletter-marketo-testing}
<!-- DO NOT CHANGE THIS ANCHOR -->

1. When you're ready, select `Email actions` from the menu at the top, then `Send sample` to preview.
1. Enter your email in the `Person` field, then in `Send to` you can add any other emails you'd like to send a preview too. We recommend sending a sample to the newsletter requestor (or rebecca@ from the content team for marketing newsletters) for final approval.
1. When you are satisfied with the newsletter, select `Approve and close` from the `Email actions` menu.

#### Sending the newsletter
{: #newsletter-marketo-sending}
<!-- DO NOT CHANGE THIS ANCHOR -->

1. When the edit view has closed, click on the main newsletter item in the left-hand column.
1. In the `Schedule` box, enter the send date and select `Recipient time zone` if the option is available.
1. Make sure `Head start` is checked too.
1. In the `Approval` box, click on `Approve program`.
1. Return to the newsletter issue and leave a comment telling requestor  to double check all has been set up correctly. Close the issue when this is confirmed.

## Ad-hoc (one-time) emails
{: #one-time-emails .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### Important note regarding audience segmentation efforts and efficiency
{: #note-audience-segmentation}
<!-- DO NOT CHANGE THIS ANCHOR -->

Until our foundational Marketo database segmentations (noted in the overview at the top of this handbook page) are rolled out, there are challenges in targeting audiences efficiencly. If you would like to propose an MVC email, please remember that the tactical execution may be beyond bandwidth constraints.

### Steps to set up and edit emails
{: #setting-up-emails}
<!-- DO NOT CHANGE THIS ANCHOR -->

For one-time emails (i.e. a blast to promote a program for which we do not receive leads):
1. DEPENDENCY: target list issue must be complete before email can be sent (15 business day SLA to create target list)
2. Clone [this Marketo email send template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/EBP7320A1)
    - Clone to: `A campaign folder`
    - Folder: `Ad-hoc (one time) emails`
    - Name: follow format of `YYYYMMDD_NameOfEmail` where YYYYMMDD is date of send (i.e. 20210603_DORAsurvey)
    - Description: Link to GitLab email issue
3. Update email in the send program
4. Update utm_campaign in Marketo **My Tokens** for email send

**How-to videos:**
* [Video on how to create an email](https://www.youtube.com/watch?v=pfl71Hh5e2E)
* [Video on how to edit an email](https://www.youtube.com/watch?v=RUvykCohLqI)

### (Interim) target list creation
{: #target-lists}
<!-- DO NOT CHANGE THIS ANCHOR -->
Target list issue templates are an interim solution while foundational work is being complete for overall [Marketo database audience stretegy for lifecycle marketing engine](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2022) (DRI: Nout Boctor-Smith).

* **Lifecycle Stage (Lead Status):** Raw, Inquiry, Nurture, MQL, Accepted, Qualifying, Qualified
* **Sales Segment:** add filter for `sales segment` Marketo segment
* **Region:** add filter for `region` Marketo segment
* **Sub-Region:** add filter for `sub-region` Marketo segment
* **Sales Territory (if specific):** ??
* **Key Persona:** ??
* **Activity filters:** ??
* **Inclusions:** ??
* **Exclusions:** ??

**What to do with DemandBase Lists:** In the Marketo smartlist, add filter for either `Account ID (18) ` or `Email Address` (depending on what is provided in the DemandBase target list export that the requester has submited) and paste the list of Account IDs or Email Address from the DemandBase target list export.

#### Email Request Issue Template
{: #email-request-issue}
<!-- DO NOT CHANGE THIS ANCHOR -->

**PLEASE READ IMPORTANT NOTE IN SECTION ABOVE PRIOR TO SUBMITTING**

To request an email send, please [open an issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-email) for consideration of your MVC email idea, and provide as much detail as possible (especially around the audience), and please respect if the determination is that "the juice isn't worth the squeeze" and that we may want to delay the launch until some foundational audience segmentations are established. Please review the `Email Review Protocol` section below for more detail.

**SLA:** There is a standard 5 Business Day SLA in place for new email requests. All details in the "Submitter Checklist" of the issue must be complete in order to be triaged to the appropriate Campaign Manager.

**Urgent security emails are exempt from this SLA.*

All links in email sends, going to about.gitlab.com will need to be appended with utm parameters, following the nomenclature outlined in this [document](https://docs.google.com/spreadsheets/d/12jm8q13e3-JNDbJ5-DBJbSAGprLamrilWIBka875gDI/edit#gid=0). This is the way we track and give attribution to emails.

#### Need-to-know details for the email request
{: #email-request-details}
<!-- DO NOT CHANGE THIS ANCHOR -->

Below are the information from the issue template that will need to be filled out before the Campaign Manager will create the email in the appropriate system:

- **Sender Name**: Typically we use GitLab Team for most outgoing communications; for Security Alerts we use GitLab Security. Choosing a name that is consistent with the type and/or content of email being sent is important, if unsure make a note and we will make recommendation.
- **Sender Email Address**: What email address should be used?
- **Approvers**: All approvers must be listed on the email request. At least one individual who will receive the replies to the email must be listed an as approver. For example, if the email is coming from security@, someone who will receive replies to the email should be listed as one of the approvers. See approval table below.
- **Subject Line**: 50 character max is preferred (30-40 characters for mobile devices)
- **Email Body Copy**: Can be a text snippet within issue, clearly identified comment on issue or attach a Google Doc with copy. The copy must be approved before requesting the email.
- **Target Date to Send Email**: at a minimum a few days notice is preferred because we need to balancing the number of emails being sent to our database so they are not perceived (or marked) as spam; however, a simple email can be turned in a few hours if absolutely necessary
- **Recipient List**: Emails can be sent to one of the [existing segments](https://about.gitlab.com/handbook/marketing/marketing-operations/marketo#geographic-dma-list ) or a recipient list can be provided as a .csv file
    -  Audience should be appropriately segmented and tokens selected for personalization (if applicable)
    -  All subscribers are selected list are opted-in to receive your message
    -  If supplying a .csv file, the file must include the following fields:  Email address, First Name (or Full Name)
    -  If personalizing the email to reference a specific project or page, that field must be included in the .csv file and clearly marked using the same terminology used in the email copy. The email copy must clearly identify {{Project}}or {{Page}}where the applicable personalization should be inserted.

#### Types of email requests
{: #email-request-types}
<!-- DO NOT CHANGE THIS ANCHOR -->

- **Marketing Emails**: Marketing emails are designed to generate leads. The request process outlined is used for ad-hoc marketing emails (not events, webcasts, integrated campaigns, etc as these all have a separate established process). These emails are sent through Marketo using the marketing database or [existing segments](https://about.gitlab.com/handbook/marketing/marketing-operations/marketo/#geographic-dma-list).
- **Terms of Service or Privacy Policy Updates**: Terms of Service or Privacy Policy emails are sent to the user base and are not marketing-related. These emails are sent through MailChimp and may require additional approvals, based on the content or number of recipients.
- **Support emails**: Support emails are typically sent to a subset of impacted users and are not marketing-related. These emails are sent through MailChimp.
- **Security emails**: Security emails are sent either to the entire user base or a subset of users and are not marketing-related. They are often urgent, but in the case of the monthly security release, they are scheduled. The monthly security release email is sent through Marketo. Urgent notifications are typically sent through MailChimp.

#### Approvals and notifications for email requests
{: #email-request-approval}
<!-- DO NOT CHANGE THIS ANCHOR -->

Marketing related ad-hoc emails are sent at the discretion of the Campaigns team.

Terms of Service or Privacy Policy updates that impact all users must be announced on the company meeting, in the `#whats-happening-at-gitlab` and `#community-advocates` Slack channels, and approved according to the table below prior to submitting the Email Request.

Support and Security emails sent to a small subset of users should be announced in `#community-advocates` and `#support_escalations` Slack channels, and mentioned in `#whats-happening-at-gitlab` if relevant.

The approval table below applies to non-Marketing emails.

|  **Users to be contacted** | **Approval by** |
| --- | --- |
|  < 1,000 | reply-to owner |
|  1,001-4,999 | PR, reply-to owner, community advocate |
|  5,000-499,999 | PR, reply-to owner, community advocate, director+ in originating department |
|  500,000+ | PR, reply-to owner, community advocate, director+ in originating department, e-group member |

## Email marketing best practices
{: #best-practices .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Subject line best practices (and preview text)
{: #best-practices-subject-lines}
<!-- DO NOT CHANGE THIS ANCHOR -->

* Use subject lines to justify sending the email and connecting to a problem that the reader might have
* Ask yourself "why would I open this email"? - include the **value proposition**
* Keep it short and sweet - only include that is absolutely necessary
* Try 28 to 39 characters - studies suggest this is a "sweet spot" but that is always debatable and testable 
* Front-load - put information information **first**
* Be specific - emphasize what the reader "gets" out of reading this email
* Test when you can!
* Chad White, email marketing strategist and book author created the **CUE-DIVE method**:
   * ❏ Contextual - personalized, localized, segmented, relevant, anticipated
   * ❏ Urgent - topical, events, deadlines, newsjacking
   * ❏ Emotional - aspirations, happiness, anxiety, duty, fear
   * ❏ Detailed - answers the question “what is this email about?”
   * ❏ Intriguing - questions, curiosity, mysterious, humor, puns
   * ❏ Visual - very long or very short, unusual spelling, emojis, unusual punctuation
   * ❏ Earned - testimonials, reviews, endorsements, media coverage
* SUBJECT LINES AFFECT OTHER METRICS TOO! Subject lines affect click through rates & conversions! Poor subject lines can damage the performance of future email campaigns. Do not underestimate their importance!
* The preview text is the first sentence displayed in an email client alongside the subject line (before opening the email), don't ignore it! Some email clients show 90 characters, so there is some flexibility with length

### Email content best practices
{: #best-practices-content}
<!-- DO NOT CHANGE THIS ANCHOR -->

* Email copy should be shorter and more conversion-oriented
* Avoid walls of text when possible
* Use extremely clear wording and remove words that don't provide value
* Minimize CTAs (calls-to-action)
* Take advantage of content hierarchy
* Use humor when it makes sense
* Focus on value-first content and CTAs. Ask yourself: "what's in it for the subscriber?"
* Make sure that the size of your HTML file does not exceed 102kb, otherwise gmail will truncate your email and your email will be out of compliance.

### Design best practices
{: #best-practices-design}
<!-- DO NOT CHANGE THIS ANCHOR -->

*  Consider resposive design
*  Code all text in HTML
*  Minimize CTAs
*  Images should add to the goal of your email and not take away from it
*  An email is not a landing page
*  Consider accessibility

### A/B testing best practices
{: #best-practices-testing}
<!-- DO NOT CHANGE THIS ANCHOR -->

*  Each test group should include at least 1000 people
*  You need a bigger test group if you're testing for click-through rate versus testing for open rate
*  Have a goal and idea regarding what you want to improve and how your test is going to help with that
*  Test _one_ variable at a time
*  Due to our small sample sizes, we recommend a full 50/50 split versus a 10/10/80 or 20/20/60 split
*  Remember your subject line or "from name" (testing open rates) could have an impact on click-through rate and conversion rate
*  Let the Campaign Manager know at the beginning of the project if you're interested in running an A/B test and what your goals/hypothesis is
*  Keep track of the split test learnings so we can learn and innovate!

## Email Templates
{: #email-templates .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### Please see [this epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/759) for more details and to see how the email templates look.

**What are email templates?** An email template is a reusable HTML file that is used to build email campaigns (according to Litmus).

**Why are email templates important?** Using an email template allows you to produce campaigns faster, since the underlying code is already written. Instead of having to rewrite an entire email from scratch for every send, you can simply add copy, images, and links to an existing template before testing and sending it to your subscribers (according to Litmus).

**What email templates are available for us to use?** In Marketo (Design Studio > Email Templates), the following email templates are available:

| Template Name in MKTO | Use For | Image Specs | Notes |
| ------ | ------ | ------ | ------ |
| A - Event Invite v2.0  | Events or asset downloads | Background image - jpg 600px wide. Example here. |  Top button is not removable |
| B - Newsletter Dark Mode v1.0 | DevOps Download developer newsletter only | The only image we swap out is the background image of the release section - 600px wide. The top image (infinity loop) is 600px wide also. | For DevOps Download newsletter only |
| C - Event Invite 2 buttons and speakers v1.0 | Webcast invitations, events, ABM, anything really | Headline background image - 600px wide; Speaker images - 300px wide | **The text version will need to be updated manually due to limitations with marketo variables** |
| D - Letter format v1.0 | Any letter-like communication such as account update | N/A | N/A |
| E - Newsletter Remote v1.0  | Remote newsletter only | TBD | N/A |

- A - Event Invite v2.0 -- [COPY DOC TEMPLATE](https://docs.google.com/document/d/1j43mf7Lsq2AXoNwiygGAr_laiFzmokNCfMHi7KNLjuA/edit#heading=h.tl82wncgutxu)
- B - Newsletter Dark Mode v1.0 **(Only for use by the DevOps Download newsletter)**
- C - Event Invite 2 buttons and speakers v1.0 -- [COPY DOC TEMPLATE](https://docs.google.com/document/d/1lZDXHh7OcyLdCz2rt7YPyfK8_bfQz757EBI-2GiIdEI/edit#)
- D - Letter format v1.0    
- E - Newsletter Remote v1.0 **(Only for use by the All Remote team)**

**Template notes** 
- ABM Email Template - please use "Event Invite 2 buttons and speakers v1.0"
- Nurture emails - please use "Event Invite 2 buttons and speakers v1.0"
- Event invites or reminders - please use "Event Invite 2 buttons and speakers v1.0"
- Privacy policy updates, account updates, or text-heavy emails - please use "Letter format v1.0"

If you don't have Marketo access and would like to see what the email templates look like, [please view the project Epic and corresponding issues](https://gitlab.com/groups/gitlab-com/marketing/-/epics/759).

**NOTE:** It is very important that you format your copy to align with the design of the email template you're using. This will improve efficiency of building emails, and ensure copy is best fit to the layout.

**What if I want a custom email template?** You may submit a request for a custom layout, but please note that the critical priority currently is to efficiently launch emails and nurtures into market. In your [request](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new), please tag @nbsmith and clearly describe why the existing layout is not satisfactory, how often and broadly the requested template will be used, and quantifiable benefits we anticipate from the new layout. To reiterate: Upon implementation of the critical emails and nurtures, we plan to devote more time and energy to developing and testing new templates, however the launch of lifecycle emails takes precedence over these requests.


## Email review protocol
{: #review-protocol .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

All Campaign Managers and reviewers should adhere to the following protocol for every marketing email that is sent to ensure brand consistency and quality in our email program.

We use both Marketo and Mailchimp to send ad-hoc emails. Marketo is the primary system for all marketing emails and the regularly scheduled security updates. Mailchimp should be used for emails to gitlab.com users as these users are not in our marketing systems (unless they have signed up for content). *Examples of emails to be sent through Mailchimp: Critical security updates, support updates that impact a specific subset of users, suspicious account activity notifications.*

 - Once an email request is received using the process above, the Campaign Manager determines which system to send the email from. This is usually Mailchimp unless it is a marketing email to our database.
 - Log into Mailchimp and select "Audience."
 - Select "View Audiences" from the "Manage Audience" drop down on the right side of the screen.
 - Select "Create Audience" and name the audience using ISODate_CampaignName. Complete the Default From email address and name (usually info@, but can be security@ or support@ depending on the email). For "Remind people how they signed up to your audience" select "Entire Database" then click Save.
 - For instructions on adding contacts, review this [documentation](https://mailchimp.com/help/import-contacts-mailchimp/). You can also copy and paste the contacts if the list is small enough. You will be asked to map the fields on your import to the database fields prior to upload.
 - Select "Campaigns." Find a prior campaign that used the same type of email you want to use (plain text or regular). Security emails, privacy policy updates, and terms of service updates use plain text, support emails can use regular.
 - Select replicate, then select the audience you created above. If you do not have the list yet, you can select an existing audience and change it later during the review process.
 - Name the campaign using ISODate_CampaignName. Lay out the email as normal. For information about using Merge Tags, review this [documentation](https://mailchimp.com/help/getting-started-with-merge-tags/).
 - Send a test email to yourself first to confirm email is correct and the links work properly. Then, make any changes and send a test to the designated approvers.
 - Once fully approved, review the audience (and update if necessary), sender, subject line, email and schedule to send.

## Sales nominated flows in Marketo
{: #sales-nominated .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

In some cases, when invitations need to be more specific for an event, the Sales Nominated flows are used to allow sales to nominate who will receive the invite.

Note: if someone is nominated, but is unmailable (due to unsubscribe, invalid email, or hard bounce), they will not receive the invitation.

### Activating the sales nominated flow in Marketo
{: #sales-nominated-activation}
<!-- DO NOT CHANGE THIS ANCHOR -->

Sales Nominated automation smart lists are applied to Marketo program templates where sales nominated flows are relevant.

**Review the Email**:

Send sameple to the DRI for the program (i.e. workshop owner) who is responsible for testing and QAing the email. The email can be found under the `Assets` folder in the program. For some programs, the Marketo My Tokens are included in the Sales Nominated invite to make the email setup more efficient.

**Review the smartlist and schedule recurrence of email:**
* Smart List (filter):
    - Member of Program: (current program, registered status)
    - Not Was Sent Email: (one of previous emails for this event) in last 7 days
    - Subscription Filters (fitlers here are dependent on program type, and subject to change, so not adding all details)
* Flow
    - Send email: sales nominated email in the program
* Schedule
    - Choose `Schedule Recurrence`
    - Schedule: Daily
    - First Run: next relevant day to send (i.e. next business day available). Choose time of day relevant for timezone of event.
    - Repeat Every: Weekday (M-F)
    - End On: Day of the event

### Removing sales nominated scheduled deployment
{: #sales-nominated-remove-scheduled-deployment}
<!-- DO NOT CHANGE THIS ANCHOR -->

You can remove specific recurrences of scheduled sales nominated deployments. The FMC is responsible for this change for field marketing activities, and campaign managers are responsible for this change for demand generation activities.

* Navigate to the `Schedule` tab of the Sales Nominated smart campaign
* Scroll down and you will see the scheduled deployment dates with a small red `x` to the right
* Click the small `x` next to any of the dates that you would like to remove from the scheduled deployments
