---
layout: markdown_page
title: "Virtual Hands-On Workshops"
---

## Virtual Workshop

This section focuses on best practices, timelines and logistical set up for a Field Marketing-run Virtual Workshop.

## Ownership of workshop tasks 

* Project Management in GitLab (epic, issue, timeline creation): FMM/FMC/Workshop requestor 
* Zoom license calendar schedule: Campaign Manager
* Landing page and email copy (templated with limited customization, if any): FMM/FMC/Workshop requestor 
* Marketo program, SFDC program, landing page, email creation: Campaign Manager
* Zoom setup and integration: Campaign Manager
* Host dry run and run day-of event Zoom meeting: FMM/Workshop requestor 
* Day of event moderator: SAL / ISR 

**Definitions throughout this page:**    
* Host = Person running the webcast from the technical side (start the webcast, push polls, push notifications to attendees through chat).  
* Moderator/MC = The on-screen MC of the webcast (welcomes attendees, introduces presenters, reads questions from audience to the presenter to answer)
* Presenter/Lead SA = DRI from the SA team
* Presenter 2 =  Opening SA presenter
* Presenter 3 = (optional): Second SA Presenter if not lead SA
* Q&A Coordinator = SA responsibile for coordinating Q&A
* Q&A Support = SA responsible to help answer questions
* Q&A Support 2 = SA support for more advanced classes
* Q&A Support 3 = SA support for more advanced classes
* FMM 2 = Timekeeper, and Q&A transcribing from Zoom to Slack and back to Zoom

## Securing a virtual workshop date on webcast calendar

* Workshop requester will submit a [zoom date request issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-zoom-license-date)
* Marketing Campaigns will triage the date against the zoom webcast license calendar to make sure there is no overlapping virtual event that has been pre-scheduled
* If the suggested date is feasible, does not over-saturate the calendar, AND the speaker(s) have been secured, the Campaign Manager will reserve on the calendar and close out the date request issue. At a minimum, there needs to be an MC and a lead SA assigned in order for the Campaign Manager to be able to secure a date. 

## Workshop Epic Code

```
> Naming convention: [Workshop Title] - [3-letter Month] [Date], [Year]
> Start Date = date epic opened, Due Date = workshop date

## [Main Issue >>]()  

## [Landing Page >>]() - `to be added when live`  

#### :key: Key Details
* **FMM:**   
* **FMC:**  
* **Lead SA:** 
* **Official Workshop Name:** 
* **Official Workshop Date:** 
* **Campaign Tag:**  
* **Sales Segment:** `Large, Mid-Market, or SMB`
* **Sales Region:** `AMER, EMEA, APAC`
* **Sales Territory (if specific):** 
* **Budget:**  
* **Goal:** `Please be specific on the KPI this is meant to impact. For example, drive MQLs against named account list, increase velocity of MQLs > SAOs, increase velocity of early stage opps to close.`
* [ ] [Landing Page Copy]() - `Created by FMC when creating epic` ([clone the template here](https://docs.google.com/document/d/1j43mf7Lsq2AXoNwiygGAr_laiFzmokNCfMHi7KNLjuA/edit))
* [ ] [Dry Run & Day of Agenda]() - `Created by FMC when creating epic` ([clone the template here](https://docs.google.com/document/d/1DzNkJnwlVOB1vw4yvgXtIxtddfw_x4u7WC9xAqSVEHM/edit?ts=5f6162ea#))
* [ ] [Salesforce Campaign]()
* [ ] [Marketo Program]()

## :books: Issue creation

<details>
<summary>Expand below for checkboxes of issues to be created, use the [workshop SLA workback schedule](https://docs.google.com/spreadsheets/d/1YXriQ1clvYyBn-TDbbCVvNP6NEbrAF-0w6tIHKhDeZM/edit?usp=sharing) to calculate the due dates.</summary>


**FMM Creates:**  

* [ ] [Zoom license request submitted](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-zoom-license-date) - Note that this should be done and confirmed prior to the epic being opened. Do not open epic if this issue has not been created and the date for the workshop has not been confirmed on the webcast calendar by Campaign Manager - FMM creates, request will be carried through triage process
* [ ] [Optional: New design assets issue created for the design team for Demand Base Display Ads](https://gitlab.com/gitlab-com/marketing/growth-marketing/growth/-/issues/new?issuable_template=request-design-general) - FMM creates, assigns to FMM and design team
* [ ] [Optional: Paid Ads issue created for Digital Marketing](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/-/issues/new?issuable_template=paid-digital-request) - FMM creates, assigns to FMM & DMP team 
* [ ] [Optional: Organic Social Issue](https://gitlab.com/gitlab-com/marketing/corporate_marketing/corporate-marketing/issues/new?issuable_template=social-general-request) - FMM creates, assigns to FMM & social team
* [ ] [Optional: Pathfactory Upload Issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-pathfactory-upload) - Only required for new workshops or updates to existing workshop tracks - FMM creates, assigns to FMM, issue will be triaged
* [ ] [Optional: Pathfactory Track Issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-pathfactory-track) - Only required for new workshops or updates to existing workshop tracks - FMM creates, assigns to FMM, issue will be triaged


**FMC Creates:**    

* [ ] [Dry run scheduling issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-webcast-dryrun-sched) - FMC creates, assigns to FMM & issue triaged through Campaigns
* [ ] [Host dry run issue created](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=webcast-host-dryrun) - FMC creates, assigns to FMM
* [ ] [Prepare for webcast issue created](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=webcast-prep) - FMC creates, assigns to FMM
* [ ] [Program Tracking](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-program-tracking) - FMC creates, issue triaged through Campaigns
* [ ] [Write copy issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=write-copy) - FMC creates, assigns to FMM
* [ ] [Marketo Landing Page & Automation Issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-mkto-landing-page) - FMC creates, final copy must be complete, issue will go through triage
* [ ] [Email invitation issue created](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-email-invitation) - FMC creates one for each invitation requested, assigns to FMM, FMC. When final copy provided, issue will go through Campaigns triage with 5 Business Day SLA from final copy submitted.
* [ ] [Follow up email issue created](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-email-followup) - FMC creates, assigns to FMM. When final copy provided, issue will go through Campaigns triage with 5 Business Day SLA from final copy submitted.
* [ ] [Add to nurture issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-add-nurture) - FMC creates (issue will go through triage)
* [ ] [List clean and upload](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/new?issuable_template=event-clean-upload-list) - FMC creates, assigns to FMM & MOps
</details>

/label ~"Webcast - GitLab Hosted" ~"Webcast" ~"mktg-status::wip" ~"Field Marketing"

```

## Workshop Set-up

### Logistical Set up 
Instructions for workshop Zoom / Marketo / SFDC set-up can be found on the [webcasts handbook](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/webcast/#logistical-set-up) page.

There are only minor modifications to those instructions.

#### Zoom confirmation email
After creating the workshop in Zoom, click `Email Settings` then select `Edit` next to "Confirmation Email to Registrants  Send upon registration". In the first open text field, add the following: "To help us understand the audience better and tailor the workshop content, please complete the pre-event survey: [enter survey link for workshop type here]"

* [DevOps Automation pre-event survey](https://forms.gle/iC2N2Ltji6DXdyjg8)
* [Project / Program Management pre-event survey](https://forms.gle/CAb3ZR1WeURxrbXU7)
* [Security pre-event survey](https://forms.gle/D7aAXvo6mPss4HyK8) 
* [Advanced CI/CD Pre-Event Survey](https://docs.google.com/forms/d/17GuLh9s8DQid9KX1XZ264PCRStIvycg9BW6I6vwZtsE/edit)

As normal, Zoom should be configured to send the confirmation and day/hour prior emails.

#### LIVE webcast registration and tracking

##### Set up the webcast in Marketo/SFDC, and integrate to Zoom

This includes the program, SFDC, Zoom, landing pages, and emails as they are templatized to operate from the Marketo My Tokens level.

1. Create the workshop program in Marketo by cloning the appropriate Marketo program for the type of workshop:
    * [DevOps Automation Workshop program template](https://app-ab13.marketo.com/#ME6532A1).
    * [Security Workshop program template](https://app-ab13.marketo.com/#ME6521A1).
    * [Project/Program Management Workshop program template](https://app-ab13.marketo.com/#ME6536A1).
    * [Advanced CI/CD Workshop program template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/ME6807A1).
    * Complete the rest of the steps as outlined on the [webcast handbook](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/webcast/#step-2-set-up-the-webcast-in-marketosfdc-and-integrate-to-zoom) page. Note there are more tokens to complete for the workshop and details for each are contained in the token value area.
1. Create the Marketo landing page - [follow these instructions](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/webcast/#step-3-create-the-landing-page)

##### Test your set up

1. Submit a test lead using your gitlab email on the LIVE landing page to make sure the registration is tracked appropriately in the Marketo program and you get a confirmation email from zoom.

#### Workshop invitations

1. Once the tokens are updated in Marketo, the invitation and sales-nominated emails should be ready.
2. Approve copy and send samples to the FMM for review and approval.
3. Once approved, activate the sales-nominated invite to send each weekday until the day of the workshop.
3. Go to the Lists folder and edit the `Target List` smart list and input the targets provided by FMM (typically in the copy doc).
4. Once you get approval on the sample email copy, schedule the email programs.

#### Workshop registration caps and closing registration

The GitLab demo environment can support 200 users at one time. Currently, the Virtual Workshops have approximately a 40-50% attendance rate, which means registration must be capped at 350 registrations, max. 

In order to cap registration, we remove the registration form on the Landing Page in Marketo. To do this:

1) Turn off the form variable on the landing page by toggling the "Temp Hide From" variable to "Hidden"
2) Add sold out language by toggling "Hero 2 Visibility" to Visible


#### Pre-event demo environment demo code
1. Populate the {{my.democode}} token with the code provided by the FMM in the copy document.
2. Provide the sample email to the workshop owner for final review.
3. 3-4 days prior to the workshop, send the `Week prior - Demo code for registrants (operational)` to all registrants. Note that this email is operational as it provides a demo code necessary for the workshop.
   - Note that this started as a week prior email, but we are currently testing a few days prior (in the same week, after the weekend) to see if there are fewer login issues on this schedule.

#### Post LIVE workshop
   * Follow the instructions on the [webcast handbook](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/webcast/#post-live-webcast) page. 
 
##### On-Demand for Workshops

We do not offer the webcast recording on demand.  However, we do provide a link to the slides via Pathfactory in the attendee follow-up email. This will be auto-populated in the follow-up email through the Marketo tokens.

## Field Marketing Process: How to Execute a Virtual Workshop 

### Pre-Event Set Up 

1. Review the current workshops and identify if what is offered meets your criteria or if a new workshop needs to be created to meet your objectives.   
**Current Workshops available include:**      
   - [**DevOps Automation Workshop:**](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1337) This is a basic 101 introduction to GitLab designed to encourage customers to try us out and move sales from considering to buying.    
   - [**Program and Portfolio Management Workshop:**](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1334) This workshop is designed to assist project and portfolio teams to gain first hand knowledge into the teams and projects aligned with ongoing business initiatives when using GitLab. 
   - [**Security Workshop:**](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1336) This workshop is intended to be a hands-on event for existing and new users of GitLab. Its focus is Security / Shifting Left.
   - [**Advanced CI/CD:**](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1335) This workshop is a deep-dive workshop on Advanced GitLab CI/CD to enable you to take your automation game to the next level and provide thought leadership within your organization. CI Experience Required. 
1. Identify if a workshop is currently planned that might support your needs. [Click here](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/#gitlab-virtual-events-calendar) to view calendar of scheduled events.
1. Work with Customer Success team (SAs) to identify the lead instructors/presenters. You must have your lead instructor identified at this time and work together to select a date.  
1. Once a date has been confirmed, Lead SA must coordinate with the Demo Systems Engineer (Jeff Martin) to obtain the demo environment redemption code and discuss SLAs to ensure demo meets code requirements.
1. If the audience is account centric, if you are not doing paid social media, or need your own workshop due to your account goals, consider [Self-Service without Promotion](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/self-service-ve-with-without-promotion/#logistical-set-up). Sales can run on their own, or with field marketing. If not, then it would qualify as a Webcast. [Click here for virtual events decision tree for more information.](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/#gitlab-virtual-events-decision-tree)   
1. Work with the Sales Team to identify who your Moderator (MC) will be; recommend this be one of your SALs. Moderator will set the tone for the workshop as well as introduce presenters throughout the event and announce poll questions/answers.
1. Create a [webcast date request issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-zoom-license-date).
   - The date reservation request must be submitted no less than 32 business days prior to event date for existing copy and content and 45 days prior to the event date for new copy and content.  
   - For workshops, the moderator and lead SA must be secured in order to reserve the date.
   - The Campaign Manager team will follow the process outlined on the [webcast page](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/virtual-workshops/#securing-a-virtual-workshop-date-on-webcast-calendar) to assign the date.  
1. Once you have obtained a Webcast date, create a Field Marketing issue for a virtual workshop utilizing the [Virtual Workshop Template](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=Virtual_Workshop_Template).
1. FMM will ping FMC to create epic and sub-issues (linked in [epic code](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/virtual-workshops/#workshop-epic-code)).
1. Once the FMC has created the sub-issues they are responsible for (broken out in the epic code), they will then ping the FMM to create any of the optional sub-issues they may require (also broken out in the epic code).
1. FMC and FMM will assign the due dates for their appropriate sub-issues according to the [workback schedule](https://docs.google.com/spreadsheets/d/1YXriQ1clvYyBn-TDbbCVvNP6NEbrAF-0w6tIHKhDeZM/edit#gid=1983708280)
1. Once the Campaign Manager creates the landing page, they will ping the FMM to review. Once the landing page is live, the FMM will ping the FMC to add the workshop to the GitLab Events Page utilizing this [step by step guide](/handbook/marketing/events/#how-to-add-events-to-aboutgitlabcomevents). FMC also to make sure the landing page is linked in the epic. 
1. FMM to create the [Template for Certification of Completion](https://drive.google.com/drive/u/0/folders/1D9ReKCU7dhbHbkLotKgh4D7dZZ9m2IHS)   
1. Note about Optional Issues:
   - [Account Based Marketing Request for Demand Base Display Ads](https://gitlab.com/gitlab-com/marketing/account-based-marketing/-/issues/new#) - If you select this option (template linked in Workshop epic code), you will need to work with Sales Teams to decide who your target audience is before completing the request to ABM Team. Ads need to be created by design and handed to Demandbase for launch of the campaign. Note the time to launch estimate specified in this issue does not include the SLA for design.    
   - For workshop design requests, you have the option of opening a [Marketing Design Request](https://gitlab.com/gitlab-com/marketing/growth-marketing/growth/-/issues/new?issuable_template=request-design-general) or utilizing [Canva](https://www.canva.com/design/DAD-xgXwnrk/8irvi2Qv08B1riRCt7EEoQ/view?utm_content=DAD-xgXwnrk&utm_campaign=designshare&utm_medium=link&utm_source=sharebutton&mode=preview) in a self-serve capacity (see below for Canva instructions and templates).    
1. Review Marketing Copy Doc - Update copy for landing page, emails, update the times, dates, redemption code in the 1-week reminder emails. Note that changes to the landing page or email copy will require the 45 day SLA noted above for new copy/content.
   - If new content: Work with Presenters/Instructors to create presentation slides, labs, demos, as well as copy for landing page and emails. 
   - If existing content: Work with Presenters/Instructors to update presentation slides. 
1. FMM DRI to work together on developing the script for MC within the Dry Run document utilizing the [Dry Run Template](https://docs.google.com/document/d/1DzNkJnwlVOB1vw4yvgXtIxtddfw_x4u7WC9xAqSVEHM/edit?ts=5f2414fd). 
   - FMM also needs to compile Presenter’s Bio’s to include in the script for MC to announce as a brief introduction during the workshop before they begin their portion. 
   - For more details, please review the [Workshop Dry Run and Q&A Section](/handbook/marketing/revenue-marketing/digital-marketing-programs/marketing-programs/virtual-events/virtual-workshops/#workshop-dry-run-and-qa) below.
1. FMM to fill out [Dry Run Template](https://docs.google.com/document/d/1DzNkJnwlVOB1vw4yvgXtIxtddfw_x4u7WC9xAqSVEHM/edit?ts=5f2414fd) with roles/responsibilities/quick links and more. 
1. FMM will need to create the [Intro and Transition Slidedeck](https://docs.google.com/presentation/d/19BD2fZ2fN1AcvWo-Xf9bEL8AR8R6sYxY1s2aA6gfEF4/edit) and Lead SA to create remaining Workshop slides and udpate content in the Workshop Google drive [here](https://drive.google.com/drive/folders/1qAymFTiXFEk-lRSNreIhaZ6Z62fdo_y2). 
1. Pre-Event and Post- Event Surveys
   - Update/Create Pre-event survey questions and google form. [Click here for an Example](https://docs.google.com/forms/d/e/1FAIpQLSfCSyq1cZj6H4ucKEnSDuDKulXkz_WXo0r7PJ4pO721Tuz0QQ/viewform)  
   - Update/Create Post event survey questions and google form.  [Click here for an Example](https://docs.google.com/forms/d/e/1FAIpQLScI7ZTGup36lPyj3U-DpaLeev6yHcqahkUOFZ8Z9SrYBLkSIA/viewform)  
1. Create/Review polling questions for the event in the [Prepare for webcast issue](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=webcast-prep) the FMC has opened. Reference the parent epic for suggestions/previous polling questions/when to launch and more. Once you have your polling questions finalized, ping the Campaign Manager in the issue to let them know.
1. Sales Nomination Information:  The Sales Nomination process is critical to the success of the workshop as a sales tool to nudge accounts across the finish line or create conversation points. Video instructions on how to Sales Nominate can be found [here](https://drive.google.com/drive/folders/1QNB3DXXWtnmMBvzeHPkT7cRmigJdIWq5).  Best practices can be identified in the epic but the FMM will need assign due dates in the invite issue according to the [workback schedule](https://docs.google.com/spreadsheets/d/1YXriQ1clvYyBn-TDbbCVvNP6NEbrAF-0w6tIHKhDeZM/edit#gid=1983708280) to request the email is ready at least two weeks prior to the marketing email invites. 
1. Once a date is set with the Lead SA and FMM, continue to work with the Customer Success/SA teams to confirm who will lead each session, confirm 2-3 additional SAs for Q&A and provide the complete team in the [Dry run issue](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/new?issuable_template=request-webcast-dryrun-sched), tagging the appropriate Campaign Manager. 
   - Please note for the Advanced CI/CD workshop you really need three (3) dedicated Q&A SAs to support the level and number of questions in addition to the presenters and two (2) FMMs are needed and must support transferring Q&A from the zoom webcast to the slack QA channel and back to the answers.
1. Create Event Slack Channel for the team to discuss details, logistics, etc.
1. FMM Create Q&A Slack Channel for the event (example channel: [#2020-virtual-workshop-qa](https://gitlab.slack.com/archives/C017TMC32EQ)) to triage questions/responses from the event.
1. If you have budget and would like to host a virtual raffle, please follow the following process: Select the items (recommend 3 prizes total) you’d like to give away. Include the items in the [Transition Slide Deck](https://docs.google.com/presentation/d/19BD2fZ2fN1AcvWo-Xf9bEL8AR8R6sYxY1s2aA6gfEF4/edit#slide=id.g7dd1ed64d9_0_5929) to have the MC announce at the beginning of the event and at the end. For those who attend the entire event will be eligible for the raffle. You will need to provide the attendees with a code word at the end of the event via the Chat feature in Zoom Webcast during the beginning of the Closing / Final Q&A portion of the event along with the URL to the post-event survey. In addition to adding a question at the end of the Post-Event Survey (click [here](https://docs.google.com/forms/d/e/1FAIpQLSc16eOijHQqrwBvx0Uk2SZRJeIjjCR6Xt2EICUZJm6UsEbh6Q/viewform) for example of post-event survey) that allows the attendees to enter the code word.

#### Canva
* Use [GitLab's Virtual Events Promotional Templates on Canva](https://www.canva.com/design/DAD-xgXwnrk/8irvi2Qv08B1riRCt7EEoQ/view?utm_content=DAD-xgXwnrk&utm_campaign=designshare&utm_medium=link&utm_source=sharebutton&mode=preview).
* Follow the directions on the first slide of the template.
* Once your image is made, click the "share" button, followed by the "download" button, and you've made your promotional image!

If you are uncertain about formatting and/or layout due to varying copy changes based on different workshops, please drop a note in the Slack channel `#marketing-design`.

#### Workshop Dry Run and Q&A
* Q&A for the Virtual Workshops is handled via the Q&A feature of Zoom, due to the volume of questions received. We will tell attendees multiple times throughout the event to direct questions to Q&A.
* We do not use chat for attendees to communicate on this event. However, the Host will push webcast specific details via chat
* What we found works best is to have a person who coordinates the questions and answers. This person will copy questions from Q&A into the Slack channel determined during the dry run and any available SA will answer it in a thread. The Q&A coordinator should be someone from the SA team who can identify questions that are best to answer live, best to answer offline, and best to answer in writing.
* A coordinator makes it so we avoid answering over each other. We also have some canned responses that can be copied and pasted in. 
* The Q&A coordinator should be determined on the dry run and recorded in the dry run document. 

#### Details on how the Slack question management works
* Coordinator will copy all questions into Slack. 
* If a question looks good to answer live, mark it as “Answer Live” in Slack (so no one else starts work on it), then in the Q&A window.
* Only the Q&A Coordinator should enter answers into the Q&A box in Zoom. SAs will answer in the thread and indicate the answer is ready to give to attendees using the emoji system noted in the channel.
* If a question is marked to answer live, do not touch it until AFTER it is read and fully answered.
* Q&A support will respond in threaded comments while using the following emojis:
   - Working: :thumbsup: 
   - Answered and ready to be posted into Zoom: :heavy_check_mark:  
   - Answer has been posted in Zoom: :white_check_mark: 
   - Need Help Answering: :sos: 
   - Answer Live: :microphone: 
* Questions may be held in queue until the coordinator wants them answered. For example, a question may come up during the basics presentation that makes more sense to answer during the CI/CD session. The question will sit unanswered in the queue until then.
* Be comfortable with questions not being answered right away. It is up to the coordinator to determine when to answer and who will answer.
* Follow-up with attendees who we say we’ll follow-up with. The person responsible for follow-up will be determined during the dry run.
* Questions asked by attendees are not visible to other attendees until the answer is written. Answer live questions are visible.
* You may also dismiss questions by hovering over them and hitting “Dismiss”

### During Event 

FMM DRIs during the event are not only responsible for day of event coordination (virtually) but are also designated time keepers and hosts of the event.  

For more information about hosting a virtual hands-on workshop, please watch [**this training video**](https://www.youtube.com/watch?v=f7L04-tQpJo&feature=youtu.be).

#### Day of Event Coordination 
- Field Marketing is the Host of the Workshop and runs pre-event check, ensuring all speakers are able to properly display slides and are heard.  This time is also to address any last minute questions from the team executing the event.
- Field Marketing helps support by placing questions in the designated slack channel for Question Coordinator (Lead SA) to assign SA’s to answer the question. The slack channel allows other SAs to jump in if they have some free time in their day and it allows an easier point of discussion.  Once a question is answered, the Question Coordinator (Lead SA) will place the answer in the Q&A section of the Zoom webcast queue.  
- FMMs will at times need to update the Introductions & Transitions Slide Deck with the accurate time of the break. This can be updated in advance but the presentations before the `Break` slide in the deck can run long or short due so advise for the FMM to update in real-time. 
- FMMs will need to list the following in the Chat feature of the Zoom Webcast live during the beginning of the Closing / Q&A section of the event once the MC announces the raffle prizes: 
   - Shortened URL of the Post-Event Survey
   - Code word to list in the Post-Event Survey for the attendees to be eligible to win one of the raffle prizes
   - Add promotion of upcoming workshop dates


#### Time Keepers 

FMMs will need to keep a close eye on the time. Notify the team and the next presenter when there time is nearing an end in the event’s slack channel (not the Q&A slack channel for the event) 

#### Workshop communication to attendees during event
* Each presenter will present from their own computer and share their screen.
* The moderator will show the agenda slide with demo instructions during the intro and welcome.
* When we go live, the host (person running the technical side of the webcast) will push the demo instructions to chat throughout the first two presentations. The exact copy is available in the dry run agenda because the specific demo code must be entered.
* Throughout the presentation, the host will also push a Q&A reminder to chat: "If you have any questions or technical issues, please use the Q&A function to submit your question."
* At the end of the session, the host will push the post-event survey through chat. The copy is available in the dry run agenda as the specific post-event survey link must be provided.

## Post-Event 

- Close out reporting
- Raffle award closing
- Close issue

### Closing out Workshops

Now that the event is over, it is important to consolidate all of the information points and upload them into Salesforce to streamline our sales follow up. The FMM DRI is responsible for consolidating the data from each of the attendees into the lead sheet. Consolidate data and include it in the Notes column to complete list clean and upload. This requires obtaining:
- The attendee list with contact information (Request exported report from Campaign Manager; until API Integration is solved) 
- The Post Event Survey results
- The data from Zoom Q&A queue (Request exported report from Campaign Manager)
- Workshop recordings should be posted to the [shared drive](https://drive.google.com/drive/folders/1dDyuT92zZOodi9mytf6--rq7kseX7EeE).



### How to consolidate the data:

1. **Attendee Report:** Download a copy from SFDC once the list is updated by the Campaign Manager.  The email address will be the key to consolidating the data. Load into the field marketing event template
1. **Post Event Survey:** Create a new worksheet in the Event template and put the Post event survey responses in a new worksheet
   - Consolidate the data points with Concatenate formulas. The formulas need to capture the question and the individual responses. For example: `=CONCATENATE($C$1&": "&C2&" | "&$D$1&": "&D2&" | "&$E$1&": "&E2&" | "&$F$1&": "&F2)` This will capture a summary for each question
   - Note: Sometimes google sheets can only build two or three questions before it stops working so you often need to build a few of these to capture all of the data points. If this happens build a final summary to put all of this together.
   - When this is complete, copy and paste values of  the final answer, into an empty column agencent to the email address. 
   - Now to Transfer Consolidated Post event Survey into Attendee list
     - To do this you are matching email addresses, and adding the values of the concatenated formulas from the Q&A sheet and entering it into the attendee sheet 
     - Move the values of the final concatenate formula from the last column to a column next to email addresses
     - In the attendee worksheet, use this vlookup  by going to the cell in the attendee sheet you want to populate and place this formula: `=VLOOKUP(C2,'Q&A'!E:F,2,False)` NOTE: you may need to adjust - Column E is email address, Column F is the consolidated data (in the Q&A sheet). The number 2 is the cell you want to upload into the attendee spreadsheet, and put False. 
     - Copy the value of the answer into the next column and mark as Q&A Value
1. **Q&A Report:** Obtain a report from the Campaign Manager
   - During the event customers asked questions in the chat room, obtain the report of the Q&A from the Campaign Manager.  This will provide email, full name, question and answer.
   - Add this report as a new worksheet to the event spreadsheet
   - Begin building consolidating the questions/answers for each line using a Concatenate formula
   - Check if a customer asked multiple questions and consolidate all of their Q&A into one line
   - When you have all of the data for each attendee you are ready to bring it over to the attendee workshop
   - In the attendee workshop use the same vlookup function as you did with the Survey data.  Build in a column and bring the Q&A into the attendee report
1. **Consolidate:** Consolidate all of the information into the notes column and submit a clean list upload issue noting that the attendees already exist in the system this is just to add data points. 

### Raffle Awards Closing Process 

1. At the completion of the event, take the number of attendees and add them to a random number generator to select your winner(s).  You can choose how many times you would like to randomize, but usually 3 or 4 times will do it.  Select the number of winners based on your prizes from the top of the list.
1. Once the winner(s) have been selected, send an email ([click here for template](https://docs.google.com/document/d/1EHGBy9VXEfp6cDDla56a31nChkR4BIv8rmhaii_SRNE/edit)) to the winner(s) to notify them that they’ve won and collect an address to ship the prize to. Option to CC the SAL who is tied to the account to allow them visibility / allow for possible follow up meeting. 
1. Once you have the responses from the winner(s), ship the prizes, delete the email with the address and if possible do not save the shipping address in your Amazon/Best Buy account or delete immediately after delivery.  

### Event Close Process
Normal FM close process: Send follow-up email, gather recap information from the team and close the issue.

## Proposing new workshops

If you have a new workshop idea/topic, you can build out a Parent Epic for that workshop utilizing the epic code below.

```

# Collections

## Workshop Theme

### Workshop Description

## Agenda

* **Agenda Draft Approved by**
* [ ] Instructor Approval 
* [ ] Customer Success Approval   
* [ ] Agenda updates are approved to add to Event Landing Page
* [ ] Create Transition Slides 

**Example Agenda**
| Time | Agenda Topic | Presenter Role | Name |
| ------ | ------ | ------ | ---- |
| 09:00-09:10 | Welcome | Moderator / MC |  | 
| 09:10-09:20 | Introduction to Gitlab | SAL/ASM |   | 
| 09:20-09:40 | Using GitLab as a PM tool | SA | |
| 09:40-09:50 | Lab for Project Management | SA |  |
| 09:50-10:00 | Q/A | Q/A | SAs |
| 10:00-10:10 | Break | Break |Break |
| 10:10-10:30 | Gitlab Basics for Developers | SA |  |
| 10:30-10:40 | Lab for Gitlab Basics | SAs | | 
| 10:40-10:50 | Q/A | Q/A | SAs | 
| 10:50-11:20 | Digging deeper in to CI/CD | SA |  | 
| 11:20-11:30 | Lab Digging deeper in to CI/CD | SA |    | 
| 11:30-12:00 | Questions and Answers and closing | Moderator/ MC |  | 

### Moderator/MC 
- [ ] 

Responsibilities - Face of the event / set the tone of the event. Introduction of each presenter/section and chime in during presentations to give time checks 

## Coordinators/Time Keepers

1. 
2. 
3. 
4. 
5. 

Responsibilities - Keep time & collect questions via Q&A queue (and chat) and paste into internal google doc to have TA's help field questions

### TAs/Panelists

1. 
2. 
3. 
4. 
5. 
6. 
 
Responsibilities - Help field questions / assist with technical difficulties 

## Location for Slide decks and project references 

GDrive Folder: 

Base Lab Project (example below):

| Agenda Item | Slide Deck | Labs | Project Link (If any) | Status |
| ------ | ------ | ------ | ------ | ------ |
| Technology Review | [Deck](https://docs.google.com/presentation/d/1XZmOqN6S2XCVrMi1UR5SYSfTdAaCLSk6u_506--5oDY/edit#slide=id.g7dd1ed64d9_0_5929)  | | |
| Introduction to GitLab |  [Deck](https://docs.google.com/presentation/d/1ElGXe8eUwBpeZzQENYeRTHLj7TL8jdx2o44_YjuAfu4/) |  | | |
| Using GitLab as a PM tool | [Deck](https://docs.google.com/presentation/d/1wYRdM7dIdLT0OESJDUnlpw9hqIXXtOvzE7ha3YCdq9Y/edit?usp=sharing) | [Lab](https://docs.google.com/presentation/d/1rpK-TfxzK8BvvIUWqTzYTXMDbB7M1SP9NoBs-jZkZ90/edit?usp=sharing) |[Project](https://gitlab.com/gitlab-com/customer-success/workshops/virtual-devops-workshop) | |
| Gitlab Basics for Developers | [Deck](https://docs.google.com/presentation/d/1K1By7nvz9O0DqRFzd6QiNKWSB_14yv1gugBTYAVD8Xo/edit?usp=sharing) |[Lab](https://docs.google.com/presentation/d/1rpK-TfxzK8BvvIUWqTzYTXMDbB7M1SP9NoBs-jZkZ90/edit?usp=sharing) | [Project](https://gitlab.com/gitlab-com/customer-success/workshops/virtual-devops-workshop) | |
| Digging deeper in to CI/CD | [Deck](https://docs.google.com/presentation/d/1ZI4jw0UsT-X6IkorhM5TMBDIZOXNYTk_DM9apXrtZdU/edit?usp=sharing) | [Lab](https://docs.google.com/presentation/d/1rpK-TfxzK8BvvIUWqTzYTXMDbB7M1SP9NoBs-jZkZ90/edit?usp=sharing) |[Project](https://gitlab.com/gitlab-com/customer-success/workshops/virtual-devops-workshop) | |


## Additional Information

* **Raffle Prizes/Giveaways** 
* **Certifications** 
* **Pre Event Survey** 
* **Polling Questions**  
* **Script / Walk through Doc** 
* **Google Form/Post Event Survey** 

```

