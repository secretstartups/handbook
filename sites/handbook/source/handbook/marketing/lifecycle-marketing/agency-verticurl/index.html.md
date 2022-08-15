---
layout: handbook-page-toc
title: Verticurl Agency
description: 'Verticurl agency projects, processes, and notes'
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Verticurl Agency Overview
{: #overview .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
The Verticurl team will be working with GitLab to execute email marketing setup and other tasks in Marketo. Review and approval is expected of issue requesters, and the project managment pass of issues will take place between GitLab and Verticurl. `@dambrold` will be overall liason for requests coming from Campaigns, Partner, and Corporate, while the regional Field Marketing leaders will be responsible for passing issues on behalf of Field Marketing. `@priya_sridhar` will be responsible for assignment to team members within Verticurl.

### Process documentation shortcuts for Verticurl
{: #shortcuts .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

- [Sales Nominated Invitations](/handbook/marketing/lifecycle-marketing/emails-nurture/#sales-nominated)
- [Marketo Program + Salesforce Campaigns](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up)
- [Workshop Landing Page and Marketo Setup](/handbook/marketing/field-marketing/field-marketing-owned-virtual-events/#virtual-workshop-logistical-set-up)

### Team Members
{: #team}
<!-- DO NOT CHANGE THIS ANCHOR -->
[View all team members with GitLab handles and email addresses here](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=1269662266)

| Name | Company/Role | GitLab Handle | Email Address |
| ---- | ------------ | ------------- | ------------- |
| Manoj Kumar | Verticurl, Client Success Manager | @ManoSiv | `manojkumar.sivalingam@verticurl.com` |
| Priya | Verticurl, Campaigns Team Consultant | @priya_sridhar | `mohanapriya.thangavel@verticurl.com` |
| Viswanath R | Verticurl, Project Management | @? | `Viswanath.R@verticurl.com` |
| Deepak Devadas | Verticurl, FMM/ABM resource | @deepak.k.verticurl | `deepak.devadas@verticurl.com` |
| Sowkarthick Ramakrishnan | Verticurl, FMM/ABM resource | @SowKarthick  | `sowkarthick.ramakrishnan@verticurl.com` |
| Alexia Emmanoulopoulou | Verticurl, EMEA FMC resource | @ae5202 | `alexia.emmanoulopoulou@verticurl.com` |

## Project Management - Campaigns team
{: #project-management-campaigns-team}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Shortcut list views
{: #list-views}
<!-- DO NOT CHANGE THIS ANCHOR -->

- [All Verticurl Issues](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Verticurl)
- [Verticurl Issues in Triage](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Verticurl&label_name%5B%5D=mktg-status%3A%3Atriage)
- [Verticurl Issues in WIP](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Verticurl&label_name%5B%5D=mktg-status%3A%3Awip)
- [Verticurl Issues in Review](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Verticurl&label_name%5B%5D=mktg-status%3A%3Areview)
- [Verticurl Issues in Blocked](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=Verticurl&label_name%5B%5D=mktg-status%3A%3Ablocked)

### Triage Steps
{: #triage}
<!-- DO NOT CHANGE THIS ANCHOR -->

1. **GitLab**: Issues are submitted with final copy and all details included, with status ~mktg-status::triage.
    - At the time of moving to triage, all details must be provided and final (including copy reviewed by relevant stakeholders, and all hyperlinks double-checked and confirmed).
1. **GitLab**: when details in issue description are confirmed and final, issue owner will move to **~mktg-status::wip** and assign to `@priya_sridhar`, `@SowKarthick` and `@deepak.k.verticurl`.
1. **Verticurl**: `@priya_sridhar` will assign issue to a Verticurl DRI (Directly Responsible Individual) within Verticurl's internal project management system.
    - SLA: 24 hours (from day assigned to `@priya_sridhar` to be assigned to Verticurl team DRI)
1. **Verticurl**: Verticurl DRI adds email to the Google Calendar AND [Marketing Calendar](https://docs.google.com/spreadsheets/d/1c2V3Aj1l_UT5hEb54nczzinGUxtxswZBhZV8r9eErqM/edit#gid=1705692818) for the anticipated send date.
    - The requested send date is the due date of the issue. If the requested send date is less than 5 Business Days from the date it is passed to Priya, the date of the issue may be scheduled 5 business days out to abide by SLAs. This is at the discretion of Verticurl based on other work in progress and upcoming.
1. **Verticurl**: Verticurl DRI completes the setup in Marketo, then sends a test email to the "Reviewers/Approvers" listed in the issue
    - SLA: 24 hours (from day assigned to Verticurl team DRI to provide )
    - [Tables to reference with email addresses of potential reviewers](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=1269662266)
1. **Verticurl**: Verticurl DRI comments into the issue tagging the reviewers/approvers and documenting that the test email was sent to their inbox.
1. **Verticurl**: Verticurl DRI moves status to **~mktg-status::review**
1. **Verticurl**: Verticurl DRI posts a screenshot of the email in the issue description
    - This chrome extension is recommended by `@nbsmith` for screenshots: [GoFullPage](https://chrome.google.com/webstore/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl?hl=en)
1. **GitLab**: Issue requester must review and approve email (or provide corrections) via comment in the issue
    - SLA: 24 hours *from when the test email is sent and comment added to issue). Feedback and approval in a timeley manner is critical on the GitLab side.
1. **Verticurl**: Verticurl DRI makes any necessary corrections. If no corrections needed and approval provided by reviewer, Verticurl DRI sets the email to send (time for send to be determined in issue description/comments).
1. **Verticurl**: Verticurl checks that email was sent, confirms in comments (tagging issue requester) and closes out the issue.

### Responsibilities of email requesters
{: #requester-responsibilities}

<!-- DO NOT CHANGE THIS ANCHOR -->

- Issue (email) requesters are responsible for submitting **all details**, including **final approved copy**, reviewed by all stakeholders, PRIOR to passing the issue to Verticurl.
- Issue (email) requesters are responsible for **timely feedback and answers** to Verticurl.
- Issue (email) requesters are responsible for **FINAL QA** (including spelling, grammar, readability, and checking that all links direct to the proper URLs and contain proper tracking parameters)

### Review Process
{: #review-process}

<!-- DO NOT CHANGE THIS ANCHOR -->
Unless otherwise stated, only **ONE** of the people listed as "Reviewer/Approver" in the issue need to approve in order for the email to be set to send by Verticurl.

As stated in "responsibilities of email requesters" section above, the reviewer is responsible for final QA of all copy, grammar, readability, LINKS, tracking, and formatting.

## Project Management - Field Marketing Team
{: #project-management-field-marketing-team}

<!-- DO NOT CHANGE THIS ANCHOR -->
In an effort to avoid manually adding the issues we are working on with Verticurl, Field Marketing will be utilizing labels and boards to manage the work we are working on with Verticurl. Similar to how our campaigns team colleagues are working, all commentary back and forth between GitLab and Verticurl should be done via comments directly within the GitLab issues.

### Shortcut list views
{: #list-views-fmm}

<!-- DO NOT CHANGE THIS ANCHOR -->

- [APAC](https://gitlab.com/gitlab-com/marketing/field-marketing/-/boards/2153431?label_name%5B%5D=APAC)
- [AMER](https://gitlab.com/gitlab-com/marketing/field-marketing/-/boards/2153421?&label_name%5B%5D=AMER)
- [EMEA](https://gitlab.com/gitlab-com/marketing/field-marketing/-/boards/2153426?&label_name%5B%5D=EMEA)

### Labels Field Marketing uses
{: #labels-field-marketing-uses}

<!-- DO NOT CHANGE THIS ANCHOR -->

- **FMM-Verticurl::blocked** - label the regional FMM Manager adds when the issue does not have enough information for Verticurl to work on the issue or the asks are not complete. FMM is to address then re-add the FMM-Verticurl::triage label to flow back through the process.
- **FMM-Verticurl::triage** - label FMM adds when they are ready for the regional FMM Manager to review issue
- **FMM-Verticurl::wip** -label the regional FMM Manager adds when the issue is 100% cleaned up and they are ready to send the work to Verticurl to complete
- **FMM-Verticurl::review** - label Verticurl adds when they are ready for us to review the work they have completed
- **FMM-Verticurl::scheduled** - label Verticurl adds when email sends have been scheduled

### SLA with Verticurl

Please note we have a 5 business day SLA with Verticurl, so please plan ahead accordingly. 

### Triage Steps
{: #triage-steps-fmm}

<!-- DO NOT CHANGE THIS ANCHOR -->

1. **GitLab**: Issues are submitted with final copy and all details included, with status `FMM-Verticurl::triage`.
    - At the time of moving to triage, all details must be provided and final (including copy reviewed by relevant stakeholders, and all hyperlinks double-checked and confirmed).
1. **GitLab**: Triage Manager (Regional Manager, FMM) for relevant team will review the incoming issues for completed details. When details are confirmed and final, Triage Manager will move to `mktg-status::wip` and assign to `FMM Verticurl Resource - @priya_sridhar`, `FMM Verticurl Resource - @SowKarthick`, and `FMM Verticurl Resource - @deepak.k.verticurl`.
    - If Triage Manager finds that all details are not included in the issue, then Triage Manager will add the label `FMM-Verticurl::blocked` and will also comment to the requesting team member what is missing. Once the team member addresses the missing pieces, they then add the `FMM-Verticurl::triage` label again to start the review process over.
1. **Verticurl**: `FMM Verticurl Resource - @priya_sridhar` will assign issue to a Verticurl [DRI](/handbook/people-group/directly-responsible-individuals/) within Verticurl's internal project management system. 
1. **Verticurl**: Verticurl DRI adds email to the Google Calendar for the anticipated send date.
    - The requested send date is the due date of the issue. If the requested send date is less than 5 Business Days from the date it is passed to Verticurl, the date of the issue will be scheduled 5 business days out to abide by SLAs.
1. **Verticurl**: Verticurl DRI completes the setup in Marketo, then sends a test email to the "Reviewers/Approvers" listed in the issue
    - SLA: 24 hours (from day assigned to Verticurl team DRI to provide)
    - [Tables to reference with email addresses of potential reviewers](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=1269662266)
1. **Verticurl**: Verticurl DRI comments into the issue tagging the reviewers/approvers and documenting that the test email was sent to their inbox.
1. **Verticurl**: Verticurl DRI moves status to `FMM-Verticurl::review`
1. **Verticurl**: Verticurl DRI posts a screenshot of the email in the issue description
    - This chrome extension is recommended by `@nbsmith` for screenshots: [GoFullPage](https://chrome.google.com/webstore/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl?hl=en)
1. **GitLab**: Issue requester must review and approve email (or provide corrections) via comment in the issue
    - SLA: 24 hours from when the test email is sent and comment added to issue). Feedback and approval in a timeley manner is critical on the GitLab side.
1. **Verticurl**: Verticurl DRI makes any necessary corrections. If no corrections needed and approval provided by reviewer, Verticurl DRI sets the email to send (time for send to be determined in issue comments) and adds the `FMM-Verticurl::scheduled` label.
1. **Verticurl**: Verticurl checks that email was sent, confirms in comments (tagging issue requester).
1. **GitLab**: Once email is confirmed sent by Verticurl in step above, FMC closes issue.
1. **GitLab** Post event reporting. To Request a full Marketo Recap reporting from Verticurl please  request in the Follow Up email sub issue. 
1. **Verticurl FMC** Once a report is complete please add a link to the main issue into the Planning & Recap Spreeedsheet section.

### Questions

Note that if questions arise during the review process with Verticurl, please cc `@ManoSiv` to help facilitate. 

### EMail Send Times
{: #email-send-times}

When working with Verticurl, we must specify a specific time we would like the email to be sent. If the Field Marketer does not provide a specific time, then Verticurl will send at the following times:

- AMER label: 9 AM ET
- EMEA label: 10 AM CET
- APAC label: 11am AEST

Should a requested send time be missed, Verticurl can take the liberty to schedule the send within 8 hours of the original ask. If the send time window goes beyond the 8 hour time frame, then Verticurl must get approval from sender to move to a different time. As an example, if the send time was scheduled for 6 AM ET, and for ever reason, the send time did not get scheduled for 6 AM ET, Verticurl can make the decision when to send the email if its between 6:01 AM ET - 2:01 PM ET on the same day of the send.

## EMEA/APAC FMC Coordinator 
The EMEA Field Marketing team has contracted for XYZ hours with Verticurl to augment their FMC duties as that team grows. 

The FMC resources can be found [here](/handbook/marketing/lifecycle-marketing/agency-verticurl/#team). 

EMEA FMC DRI - Helena Dixon. 

Verticurl FMC 
1. Priya - @priya_sridhar  `mohanapriya.thangavel@verticurl.com` 

### Vericurl FMC Duties 
1. Verticurl FMC reviews Field Marketing Issues
1. Verticurl FMC creates the epic and sub-issues 
1. Verticurl FMC follows up on sub-issues
1. Verticurl FMC provides detailed post event Marketo reports


### FMC Triage Steps
1. **GitLab**: FMM moves the Field Marekting issue to `mktg-status::wip`. The Event details and FMC Checklist must be filled out in full and line item complete in Allocadia to an issue to WIP).
1. **GitLab**: FMM pings the FMC in the Field Marketing issue to request epic and sub issue creation.
1. **GitLab**: EMEA/APAC FMC reviews Field Marekting Issue, confirms the campaign tag and Allocadia ID has been created and adds in the allocadia line item to the event details.
1. **GitLab**: EMEA/APAC FMC adds the label `FMM-Verticurl::wip` to the Field Markeitng Issue, provides instructions on what is required and EMEA/APAC FMC will assign issue to a Verticurl FMC DRI (Directly Responsible Individual) 
1. **Verticurl**: Verticurl FMC reviews Field Marketing Issue espcially that the FMC Checklist is complete. If information is incomplete the Verticurl FMC will message the FM DRI to clarify and to provide the missing information before they proceed
1. **Verticurl**: Verticurl FMC creates the epic and sub-issues utilizing this [list of epics](/handbook/marketing/field-marketing/#field-marketing-campaign-issue-templates-epic-codes-and-progression-status)  
1. **Verticurl**: Verticurl FMC adds the event to the appropriate events calendar. All events should be added to the [internal calendar](https://about.gitlab.com/handbook/marketing/virtual-events/#gitlab-virtual-events-calendar)
1. **Verticurl**: Verticurl FMC creates the Marketo program and SFDC campaign utilizing the Program Tracking sub-issue previously created
1. **Verticurl**: Verticurl FMC pings the FMM in the Program Tracking issue that the Marketo program and SFDC campaign have been created and closes issue
1. **Verticurl**: Verticurl FMC pings the EMEA FMC once all sub-issues are created.
1. **GitLab**: EMEA FMC will change label `FMM-Verticrul::review` to the Field Marketing Issue
1. **Verticurl**: to follow up on sub-issues to remind the FMM DRI to complete tasks, example, if an invite email needs to be sent or copy created.

### Post Event Reporting
1. **GitLab** Post event reporting. To Request a full Marketo Recap reporting from Verticurl please  request in the Follow Up email sub issue. 
1. **Verticurl** Once a report is complete please add a link to the main issue into the Planning & Recap Spreeedsheet section.




