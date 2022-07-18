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

This page focuses on emails and nurture programs, owned and managed by Lifecycle Marketing, Marketing Campaigns, and Marketing Operations. The Campaigns Team is heavily focused on driving leads from Unknown > Inquiry > SAO, leveraging an "always on", logic-based and persona-driven nurture engine.

*The [Intelligent Email Nurture](/handbook/marketing/lifecycle-marketing/emails-nurture/#intelligent-email-nurture) (launched 2021-12-17) aims at progressing leads from INQ > SAO, and leverages segment/region data to provide the *right offer* to the *right person* at the *right time* - based on their segment, region, and placement in the buyer journey (lead funnel), with persona-focus as a second iteration.*

**Related Handbook: [Email Management](/handbook/marketing/marketing-operations/email-management/)**

**Key foundational elements to achieve this:**
* A strategically segmented Marketo database
    - this is an ongoing effort led by MOps in collaboration with Campaigns
    - *please see [note below regarding segmentation and email requests](https://about.gitlab.com/handbook/marketing/lifecycle-marketing/emails-nurture/#one-time-emails)*
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

* [FY21 Email Marketing Database Snapshot](https://docs.google.com/presentation/d/1PGeNl3grnb1G3XFIFsck4tf-vJVL3ny0yi39Q1MhpW4/edit#slide=id.gbd5795ae24_0_18)
* [Request for FY22 to-date email audit](https://gitlab.com/gitlab-com/marketing/lifecycle-marketing/-/issues/1736)


## GitLab Email Calendar
{: #calendar .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

The calendar below documents the emails to be sent via Marketo for:
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
* [Overview Deck](https://docs.google.com/presentation/d/1N_VM8xHGiQ95PXt09xyuQAa9px0VGEGyJd0KtGdXjzg/edit#slide=id.g106e2c5ac6b_0_0)
* [Intelligent Marketo Email Nurture Epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1836)
* [MURAL (WIP) of Intelligent Marketo Email Nurture](https://app.mural.co/t/gitlab2474/m/gitlab2474/1626128789338/8f1cc1f4ff18f63a308032dffdfcc73958541101?sender=jgragnola2053)
* [Marketo Program](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/MF8561A1)
* [Notes Doc](https://docs.google.com/document/d/19kB9ntQ8aMPVFdiLJH7jqbN4jI9ax-BsujMtnVhKTOA/edit#)
* [MURAL of experienece prior to intelligent nurture](https://app.mural.co/t/gitlab2474/m/gitlab2474/1625087469029/970807f67b4072c5d9f4cb22d813de3288a2e70a?sender=jgragnola2053)
* [CTA & UTM documentation experienece prior to intelligent nurture](https://docs.google.com/spreadsheets/d/1QRilUEUGSUlMwwsMa_G11HRmxSskHFgDeWV0STOtLh4/edit#gid=0)

#### Creating a nurture email program for the Intelligent Nurture
{: #create-nurture-email}
<!-- DO NOT CHANGE THIS ANCHOR -->
**The following process is the technical process for creating a new email send program that is then activated in the appropriate streams/channels of the Intelligent Nurture. The project management process is integrated into the epic/issue creation for our core tactics that would be dropped into the nurture (new content, webcasts, workshops, analyst reports).

1. In Marketo, [Clone this template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/PG8466A1)
    - Clone into `A Campaign Folder`
    - Name the program with the following format: `Type-ShortContentName` (i.e. `ebook-scaledci` or `webcast-simlifycicd` or `wrkshp-security`)
    - Choose the folder: `Master Email Programs (Intelligent Nurture)`
1. Edit the email in the program
    - DO NOT UPDATE THE EMAIL CODE or you will break the email from the template.
    - Copy is indicated in the issue and should align to the email template.
    - If the email copy is missing an element (i.e. the CTA button is missing, or the subheader is not supplied), please comment in the issue to remind the copywriter of the template to follow.
1. Add the link to the new email in [this spreadsheet](https://docs.google.com/spreadsheets/d/1QRilUEUGSUlMwwsMa_G11HRmxSskHFgDeWV0STOtLh4/edit#gid=2096477155) in the column named: `Link to New Marketo Program`
    - If the content/webcast/offer is not listed, create a new row and fill out accordingly, making sure to note the UTM parameters (which are critical to proper reporting) and the Pathfactory URL.

#### Adding a nurture email program to Intelligent Nurture programs/streams
{: #add-nurture-email}
<!-- DO NOT CHANGE THIS ANCHOR -->

After you have created the Email Program (see above: [Creating a nurture email program for the Intelligent Nurture](/handbook/marketing/lifecycle-marketing/emails-nurture/#create-nurture-email)) and tested your email (including checking UTM parameters), your email is ready to be activated in the Intelligent Nurture.

Work with the Campaigns Team to indicate the appropriate streams for the offer to be included (this is based on segment/region/funnel stage).

1. Navigate to the appropiate nurture program (i.e. AMER Enterprise)
1. In the appropriate stream (i.e. MQL > SAO), click the plus icon at the top.
1. Inn the `Type` section, select `Program`
1. In the `Program Name` section, begin to type in the name of the corresponding email program (i.e. ebook-10stepsciso) and select the program you created for this offer
1. In the `Smart Campaign` section, select `01 Send Controller`
1. Now, click the gear icon for your program in the stream and either:
   - `Activate` if it is not an upcoming event
   - `Edit Availability` if it is an upcoming event and set the "End Date" for the date of the event. This will automatically stop the email from sending when the event has taken place.


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

### Marketo Email Journey
{: #email-journey}
<!-- DO NOT CHANGE THIS ANCHOR -->
What happens to Marketo when a contact is a member of a program equal to True.
Marketo within the engagement programs will try to send the number 1 email of the stream. If the contact does not comply with the requirements, Marketo will try to send the mail number 2 and so on until only 2 things happen: 1 – that the mail is sent or 2 – that no mail is sent from the stream and the contact becomes exhausted.
In the image below there is an explicit way on how Marketo “plays” with the send controller of 2 different emails on the same day.
![Marketo-Journey](/uploads/668ae822065318dc3ebc6c8910a70a77/Screen_Shot_2022-04-28_at_8.56.57_AM.png)
The ONLY way for a contact to advance from one stream to another is when it generates enough interaction and its scoring increases enough to move it from RAW to INQ from INQ to MQL or from MQL to SAO.
 
Also the only way for a contact who already has exhausted status to change status is to continue adding new content in the streams.
 
Which would lead us to the next solution. Once the contacts fall into exhausted status they should be moved to a list of "Non-Responders" and then moved to a specific Nurture to increase interaction with the company.


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
{: #setup-trial-nurture}
<!-- DO NOT CHANGE THIS ANCHOR -->

[Marketo Program]()

UTMs

###

### Active Nurture Programs (Prior to Intelligent Nurture)
{: #active-nurture-programs}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### GTM motion nurtures
{: #gtm-motion-nurtures}
<!-- DO NOT CHANGE THIS ANCHOR -->

The following are active GTM motion nurture programs, which each contain content streams for awareness, consideration, and decision/purchase stages. They send bi-weekly with the date of deployment included in each bullet. The Prespriptive Buyers Journey Nurtures have separate tracks for Practitioners and for Managers. They are designed so that they send the right content at the right time to the right persona (aligning with to stage of the buyers journey).

- [CI Use Case Prespriptive Buyers Journey Nurture](https://gitlab.com/gitlab-com/marketing/lifecycle-marketing/-/issues/809) - ([link to Marketo](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/NP7537B2), sends on Wednesdays)
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

Note: Nurtures were moved from every-other-week to be weekly on 2021-01-16 to accelerate INQ > MQL conversion. [Issue for Reference >](https://gitlab.com/gitlab-com/marketing/lifecycle-marketing/-/issues/670)

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

With Intelligent Email Nurture launched, all net-new leads will be automatically added to their appropriate nurture program. We are still migrating existing leads into the programs, so in the meantime, for programs that were set up before 2021-12-15, there still be an `add to nurture` smart campaign. That should be updated as follows:

**Update the smartlist and run:** Remove all other smartlist steps except the two noted below
* Smart List (filter): (Must meet both criteria (ALL/AND))
    - Member of Program: (current program, success status) - `NOTE: These are pre-built in the templates, no need to edit!`
    - Subscription Filters: `Member of smartlist` IN `Nurture Emailable - DO NOT EDIT`
* Flow
    - Request Campaign - `*Air Traffic Control Automation.00 - Movement - Existing Leads Processor`
* Schedule
    - Select `Run Once` > Choose `Run Now` > Click `Run`

Once activated, the leads will flow through the appropriate processing campaigns to put them in the right nurture. If they are already in an existing nurture program, they will not be added. That means you do not need to filter out new vs existing leads when updating the smart campaign above.

#### Requesting to add leads to a nurture program
{: #add-to-nurture-request}
<!-- DO NOT CHANGE THIS ANCHOR -->

There is no need to request addition of leads to a nurture, since all leads will be in their appropriate nurture at all times.

#### In Product Email Campaigns
{: #in-product-emails .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
To see all the emails,  [click here](https://gitlab.com/groups/gitlab-org/growth/-/epics/62#note_494532868)

To see slide deck, [click here](https://docs.google.com/presentation/d/1QSlbq-ZlMijqaSBA1l29WIn06Z8OAYAgX9_g9CQu3B4/edit#slide=id.g540caf0310_0_0)

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
- Luis Diego Dambrosio (replaced Nout Boctor-Smith) - email marketing DRI, mailgun analytics, & assist technical setup
- Michael Karampalas (Create path)
- Sam Awezek (Trial and add Team paths)
- Jensen Stava (Verify path)
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

#### Process for monthly newsletter
{: #newsletter-process}
<!-- DO NOT CHANGE THIS ANCHOR -->

Open an issue using the [Newsletter Request Template](https://gitlab.com/gitlab-com/marketing/lifecycle-marketing/-/issues/new?issuable_template=request-email-newsletter), including the newsletter send date in the issue title.

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

### Active lists 
{: #Active-Lists}
<!-- DO NOT CHANGE THIS ANCHOR -->
To assist in building email target lists, MktgOps has developed a series of Marketo smart lists that can be used to determine how active a lead is based on specific time increments. Call on these smart lists to get the most up to date active user list for your email sends. The smart lists are located in the Database section of Marketo. They are:

* [01 Active List 30 days](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52980708A1)
* [02 Active List 60 days](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52980709A1)
* [03 Active List 90 days](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52980710A1)
* [04 Active List 6 months days](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52979300A1)
* [05 Active List 12 months](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52980711A1)
* [06 Active List 18 months](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SL52980712A1)

#### Email Request Issue Template
{: #email-request-issue}
<!-- DO NOT CHANGE THIS ANCHOR -->

**PLEASE READ IMPORTANT NOTE IN SECTION ABOVE PRIOR TO SUBMITTING**

To request an email send, please [open an issue](https://gitlab.com/gitlab-com/marketing/lifecycle-marketing/-/issues/new?issuable_template=request-email) for consideration of your MVC email idea, and provide as much detail as possible (especially around the audience), and please respect if the determination is that "the juice isn't worth the squeeze" and that we may want to delay the launch until some foundational audience segmentations are established. Please review the `Email Review Protocol` section below for more detail.

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

Go to [this page](/handbook/marketing/marketing-operations/email-management/#types-of-email) to read more about email management and the different types of emails.

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

### Email KPI's that matters
{: #email-kpis-that-matters}
<!-- DO NOT CHANGE THIS ANCHOR -->

To view current benchmarks in Marketo, go to the [Email Insights Tab](https://ab-ee-api.marketo.com/).

**Delivery Rate:**

Our delivery rate should be in the high 90s.  Anything below this number needs to be addressed. A low delivery rate could be indicative of two things: poor list quality or the wrong email service provider.

How is the delivery rate calculated? Number of emails delivered divided by number of emails sent.

Example: 950/1000 = 95% Delivery Rate.

**Open Rate:**

Our email open rate is directly tied to our subject line and possibly our subheader. What is considered a good open rate will vary by industry, but on average, a healthy open rate may be anywhere between 15%-25%.

If our open rate is low, consider testing different subject lines or preheaders to see what style works best with our customers.
How is the open rate calculated? Number of emails opened divided by the number of emails delivered.

Example: 200/1000 = 20% Open Rate

**Click Through Open Rate:**

There are several factors which could go into a low click-through-to-open rate, such as our email design, our content, our call to action — really any element in the body of our email.
 
It is a little more challenging to isolate what may be causing a low click-through-to-open rate, which is why we need to set up some A/B test splits to determine the cause.
 
How to calculate the Click Through Open Rate: Unique Clicks divided by number of emails open.

Example: 50/200 = 25%

**Opt-Out Rate:**

Generally a good (low) unsubscribe (or opt-out rate) is below 0.2%. But anything above 1% is a problem. Determining why customers are opting out can be a challenge, so be proactive. Set up a brief survey for people who do opt out asking why.

How is the Opt-out rate calculated? Total Opt-outs divided by the number of emails delivered.

Example: 5/950 = 0.5% Unsubscribe Rate.


## Intelligent Nurture Reporting Process 
{: #intelligent-nurture-metrics}
<!-- DO NOT CHANGE THIS ANCHOR -->
Intelligent Nurture Reporting Process

All Nurtures within intelligent nurture have their link directly to their specific report.

Which are formed as follows:

**ENTERPRISE NURTURE:**

[AMER](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3025A1LA1)

[APAC](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3026A1LA1)

[EMEA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3014A1LA1)

[LATAM](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3027A1LA1)

[NO-REGION](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3028A1LA1)

**MID-MARKET NURTURE:**

[AMER](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3030A1LA1)

[APAC](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3031A1LA1)

[EMEA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3032A1LA1)

[LATAM](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3033A1LA1)

[NO-REGION](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3034A1LA1)

**PUBSEC NURTURE:**

[PubSec](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3035A1LA1)

**SMB NURTURE:**

[AMER](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3036A1LA1)

[APAC](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3037A1LA1)

[EMEA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3038A1LA1)

[NO-REGION](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3039A1LA1)

**NO-SEGMENT NURTURE:**

[AMER](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3040A1LA1)

[APAC](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3041A1LA1)

[EMEA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3042A1LA1)

[LATAM](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3043A1LA1)

**ALL-REMOTE NURTURE**

[All Remote](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3044A1LA1)

LOCALIZED NURTURE:

[LOC-FRENCH](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3045A1LA1)

[LOC-GERMAN](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3046A1LA1)

[LOC-JAPAN](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3047A1LA1)

[LOC-KOREA](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3048A1LA1)

[LOC-PORTUGUESE](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3049A1LA1)

[LOC-SPANISH](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/AR3050A1LA1)

To be able to extract a complete report of email metrics, you just must click on the link corresponding to the Nurture where your email is.

Also, in case of not having access to Marketo to download the report you can go to the following folder where the reports of each nurture are uploaded on a monthly basis. [Intelligent Nurture KPI](https://drive.google.com/drive/folders/1bpopmeEE9DDA0g50pw6Pr_PO_FPsS9-d?usp=sharing)

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

**What if I want a custom email template?** You may submit a request for a custom layout, but please note that the critical priority currently is to efficiently launch emails and nurtures into market. In your [request](https://gitlab.com/gitlab-com/marketing/lifecycle-marketing/-/issues/new), please tag @nbsmith and clearly describe why the existing layout is not satisfactory, how often and broadly the requested template will be used, and quantifiable benefits we anticipate from the new layout. To reiterate: Upon implementation of the critical emails and nurtures, we plan to devote more time and energy to developing and testing new templates, however the launch of lifecycle emails takes precedence over these requests.


## Email review protocol
{: #review-protocol .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

All Campaign Managers and reviewers should adhere to the following protocol for every marketing email that is sent to ensure brand consistency and quality in our email program.

We use both Marketo and MailJet to send ad-hoc emails. Marketo is the primary system for all marketing emails and the regularly scheduled security updates. MailJet should be used for emails to gitlab.com users as these users are not in our marketing systems (unless they have signed up for content). *Examples of emails to be sent through MailJet: Critical security updates, support updates that impact a specific subset of users, suspicious account activity notifications.*

To send via MailJet, fill out an issue and follow protocol found [here](/handbook/marketing/emergency-response/#customer-comms-email).

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

To cancel a send, follow [these directions](/handbook/marketing/marketing-operations/campaigns-and-programs/#canceling-an-email-send).

## Adding “add to calendar” links in our emails without using 3rd party tools
{: #email-add-to-calendar}
<!-- DO NOT CHANGE THIS ANCHOR -->
Example:

[Add to google calendar](https://gitlab.com/) | [Add to other calendar](https://gitlab.com/)

**Note:** gmail inboxes a majority of our sends, according to litmus analytics pixel data. Outlook makes up 3-15% of our recipients. This is exactly what Limus did:

It’s virtually impossible to support all the calendar applications available. To help us understand what calendar tools to focus on, we took a look at our Email Analytics data. The most popular email clients our subscribers use are Apple Mail, Gmail, and Outlook. Using this data, we focused our efforts on creating a “add to calendar” button that would be compatible with iCalendar, Google’s calendar, and Outlook’s calendar.
[Learn More Here](https://litmus.com/blog/how-to-create-an-add-to-calendar-link-for-your-emails)

### Steps to manually creating “add to calendar” links in our emails
{: #steps-email-add-to-calendar}
<!-- DO NOT CHANGE THIS ANCHOR -->
* Create google calendar link for your events
    - Use this tool to generate your event information: [http://kalinka.tardate.com/](http://kalinka.tardate.com/)
    - You would have to copy and paste the information for the event from marketo to the tool above, this takes about 2 minutes
        - Location should be formatted as follows to show up as an address in the google calendar invite<br>
          **747 Howard St, San Francisco, CA 94103, USA**
        - Make sure time zone is correct

    - Create link [Example Here](http://www.google.com/calendar/event?action=TEMPLATE&dates=20200406T150000Z%2F20200409T030000Z&text=Google%20Next%202020&location=747%20Howard%20St%2C%20San%20Francisco%2C%20CA%2094103%2C%20USA&details=https%3A%2F%2Fcloud.withgoogle.com%2Fnext%2Fsf%2F) and paste into correct template in Marketo as follows:
    `<a href=“http://www.google.com/calendar/event?action=TEMPLATE&dates=20200206T035000Z%2F20200206T065000Z&text=Nouts%20test%20event&location=5107%20Oakbrook%20Drive%2C%20Durham%2C%20NC&details=nout's%20test%20event%20”>Add to Google calendar</a>`

* Create ICS file for all other calendars (mostly Outlook and Apple)
    - Marketo can create an ICS file 
    - Add “Calendar File” Token to local tokens section
    - Paste all necessary information (same as above)
    - Add token to the email as follows: <br>
      `<a href=“link goes here”>Add to other calendar</a>`


### Additional option for "add to calendar": APIs
{: #add-event-api}
<!-- DO NOT CHANGE THIS ANCHOR -->
* Use AddEvent API (available for $19/month billed annually for up to 50 events/month).<br>
  [https://www.addevent.com/plans-and-pricing ](https://www.addevent.com/plans-and-pricing)
* Use Eventable in Marketo (not sure about price)<br>
  [https://www.eventable.com/info/add-to-calendar-marketo/](https://www.eventable.com/info/add-to-calendar-marketo/)      
