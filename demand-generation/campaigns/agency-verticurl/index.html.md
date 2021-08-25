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
The Verticurl team will be working with GitLab to execute email marketing setup and other tasks in Marketo. Review and approval is expected of issue requesters, and the project managment pass of issues will take place between GitLab and Verticurl. `@jgragnola` will be overall liason for requests coming from Campaigns, Partner, and Corporate, while the regional Field Marketing leaders will be responsible for passing issues on behalf of Field Marketing. `@ashwin.raj` will be responsible for assignment to team members within Verticurl.

### Process documentation shortcuts for Verticurl
{: #shortcuts .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

- [Sales Nominated Invitations](/handbook/marketing/demand-generation/campaigns/emails-nurture/#sales-nominated)
- [Add to Nurture](/handbook/marketing/demand-generation/campaigns/emails-nurture/#add-to-nurture-in-program)
- [Marketo Program + Salesforce Campaigns](/handbook/marketing/marketing-operations/campaigns-and-programs/#marketo-program-and-salesforce-campaign-set-up)
- [Workshop Landing Page and Marketo Setup](/handbook/marketing/revenue-marketing/field-marketing/workshop-webcast-how-to/#virtual-workshop-logistical-set-up)
- To be added (not yet scoped with MOps): GTM Motion token to build in overarching nurture logic and remove "add to nurture" issues.

### Team Members
{: #team}
<!-- DO NOT CHANGE THIS ANCHOR -->
[View all team members with GitLab handles and email addresses here](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=1269662266)

| Name | Company/Role | GitLab Handle | Email Address |
| ---- | ------------ | ------------- | ------------- |
| Ashwinraj Maniraj | Verticurl, Client Success Manager | @ashwin.raj | `ashwinraj.maniraj@verticurl.com` |
| Jayaprakash D | Verticurl, Campaigns Team Consultant | @? | `jayaprakash.d@verticurl.com` |
| Sonu Gifty | Verticurl, Campaigns Team Consultant | @sonugifty | `sonugifty.thomas@verticurl.com` |
| Priya | Verticurl, Campaigns Team Consultant | @@priya_sridhar | `mohanapriya.thangavel@verticurl.com` |
| Viswanath R | Verticurl, Project Management | @? | `Viswanath.R@verticurl.com` |
| Prathap Arumugam | Verticurl, Backup Project Management | @? | `prathap.arumugam@verticurl.com` |
| Karthikeyan K. | Verticurl, FMM/ABM resource | @@karthikeyan.k  | `karthikeyan.k@verticurl.com` |


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
1. **GitLab**: when details in issue description are confirmed and final, issue owner will move to **~mktg-status::wip** and assign to `@ashwin.raj`.
1. **Verticurl**: `@ashwin.raj` will assign issue to a Verticurl DRI (Directly Responsible Individual) within Verticurl's internal project management system.
    - SLA: 24 hours (from day assigned to `@ashiwn.raj` to be assigned to Verticurl team DRI)
1. **Verticurl**: Verticurl DRI adds email to the Google Calendar AND [Marketing Calendar](https://docs.google.com/spreadsheets/d/1c2V3Aj1l_UT5hEb54nczzinGUxtxswZBhZV8r9eErqM/edit#gid=1705692818) for the anticipated send date.
    - The requested send date is the due date of the issue. If the requested send date is less than 5 Business Days from the date it is passed to Ashwin, the date of the issue may be scheduled 5 business days out to abide by SLAs. This is at the discretion of Verticurl based on other work in progress and upcoming.
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
- **FMM-Verticurl::complete** - Work has been completed.

### Triage Steps
{: #triage-steps-fmm}

<!-- DO NOT CHANGE THIS ANCHOR -->

1. **GitLab**: Issues are submitted with final copy and all details included, with status `FMM-Verticurl::triage`.
    - At the time of moving to triage, all details must be provided and final (including copy reviewed by relevant stakeholders, and all hyperlinks double-checked and confirmed).
1. **GitLab**: Triage Manager (Regional Manager, FMM) for relevant team will review the incoming issues for completed details. When details are confirmed and final, Triage Manager will move to `mktg-status::wip` and assign to `FMM Verticurl resource - karthikeyan.k`, `FMM Verticurl resourse - sonugifty` and `FMM Verticurl Resource - priya_sridhar`
    - If Triage Manager finds that all details are not included in the issue, then Triage Manager will add the label `FMM-Verticurl::blocked` and will also comment to the requesting team member what is missing. Once the team member addresses the missing pieces, they then add the `FMM-Verticurl::triage` label again to start the review process over.
1. **Verticurl**: `FMM Verticurl resource - karthikeyan.k`, `FMM Verticurl resourse - sonugifty` and `FMM Verticurl Resource - priya_sridhar` will assign issue to a Verticurl [DRI](/handbook/people-group/directly-responsible-individuals/) within Verticurl's internal project management system. Today, that is `FMM Verticurl resource - karthikeyan.k`, `FMM Verticurl resourse - sonugifty` and `FMM Verticurl Resource - priya_sridhar`.
1. **Verticurl**: Verticurl DRI adds email to the Google Calendar for the anticipated send date.
    - The requested send date is the due date of the issue. If the requested send date is less than 5 Business Days from the date it is passed to Karthikeyan K, the date of the issue will be scheduled 5 business days out to abide by SLAs.
1. **Verticurl**: Verticurl DRI completes the setup in Marketo, then sends a test email to the "Reviewers/Approvers" listed in the issue
    - SLA: 24 hours (from day assigned to Verticurl team DRI to provide)
    - [Tables to reference with email addresses of potential reviewers](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=1269662266)
1. **Verticurl**: Verticurl DRI comments into the issue tagging the reviewers/approvers and documenting that the test email was sent to their inbox.
1. **Verticurl**: Verticurl DRI moves status to `FMM-Verticurl::review`
1. **Verticurl**: Verticurl DRI posts a screenshot of the email in the issue description
    - This chrome extension is recommended by `@nbsmith` for screenshots: [GoFullPage](https://chrome.google.com/webstore/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl?hl=en)
1. **GitLab**: Issue requester must review and approve email (or provide corrections) via comment in the issue
    - SLA: 24 hours from when the test email is sent and comment added to issue). Feedback and approval in a timeley manner is critical on the GitLab side.
1. **Verticurl**: Verticurl DRI makes any necessary corrections. If no corrections needed and approval provided by reviewer, Verticurl DRI sets the email to send (time for send to be determined in issue comments).
1. **Verticurl**: Verticurl checks that email was sent, confirms in comments (tagging issue requester), adds `FMM-Verticurl::complete` and closes out the issue.
1. Field Marketing will be working through post event reporting with the Verticurl team. Details on that process will be forthcoming.

### eMail Send Times
{: #email-send-times}

When working with Verticurl, we must specify a specific time we would like the email to be sent. If the Field Marketer does not provide a specific time, then Verticurl will send at the following times:

- AMER label: 9 AM ET
- EMEA label: 10 AM CET
- APAC label: 11am AEST

Should a requested send time be missed, Verticurl can take the liberty to schedule the send within 8 hours of the original ask. If the send time window goes beyond the 8 hour time frame, then Verticurl must get approval from sender to move to a different time. As an example, if the send time was scheduled for 6 AM ET, and for ever reason, the send time did not get scheduled for 6 AM ET, Verticurl can make the decision when to send the email if its between 6:01 AM ET - 2:01 PM ET on the same day of the send.

## EMEA FMC Coordinator 
The EMEA Field Marketing team has contracted for XYZ hours with Verticurl to augment their FMC duties as that team grows. 

The FMC resources can be found [here](/handbook/marketing/demand-generation/campaigns/agency-verticurl/#team). 

FMC DRI - Helena Dixon. 

### FMC Duties 
Helena to add 

### FMC Triage Steps
Helena to add  if its different 


