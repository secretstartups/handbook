---
layout: handbook-page-toc
title: Verticurl Agency
description: Verticurl agency projects, processes, and notes
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Verticurl Agency Overview
{: #overview .gitlab-purple}

The Verticurl team will be working with GitLab to execute email marketing setup and other tasks in Marketo. Review and approval is expected of issue requesters, and the project managment pass of issues will take place between GitLab and Verticurl. `@jgragnola` will be PM for GitLab Campaigns issues (including Partner Marketing and Corporate Marketing), while `@lblanchard` will be responsible for passing issues on behalf of Field Marketing. `@ashwin.raj` will be responsible for assignment to team members within Verticurl.

### Team Members
{: #team .gitlab-purple}

[View all team members with GitLab handles and email addresses here](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=1269662266)

| Name | Company/Role | GitLab Handle | Email Address |
| -------------- | ----- | ---------- | --- |
| Ashwinraj Maniraj | Verticurl, Client Success Manager | @ashwin.raj | `ashwinraj.maniraj@verticurl.com` |
| Jayaprakash D | Verticurl, Campaigns Team Consultant | @? | `jayaprakash.d@verticurl.com` |
| Sonu Gifty | Verticurl, Campaigns Team Consultant | @? | `sonugifty.thomas@verticurl.com` |
| Viswanath R | Verticurl, Project Management | @? | `Viswanath.R@verticurl.com` |
| Prathap Arumugam | Verticurl, Backup Project Management | @? | `prathap.arumugam@verticurl.com` |

## Project Management
{: #project-management .gitlab-purple}

To assist with organizing prioritization and pipeline of issues for Verticurl, we utilize this [project planning doc](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=0). Issues will still be managed within GitLab with commentary taking place there.

* [Campaigns, Partner, and Corporate](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=0)
* [Field Marketing & ABM](https://docs.google.com/spreadsheets/d/1AlSJKG2izsC7VKs5yUfL8EttJycYSBZrb38E_rBCAgk/edit#gid=766457622)

### Shortcut list views
{: #list-views}
* [All Verticurl Issues](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl)
* [Verticurl Issues in Triage](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Atriage)
* [Verticurl Issues in WIP](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Awip)
* [Verticurl Issues in Review](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Areview)
* [Verticurl Issues in Blocked](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Ablocked)

### Triage Steps
{: #triage}

1. **GitLab**: Issues are submitted with final copy and all details included, with status ~mktg-status::triage.
   * At the time of moving to triage, all details must be provided and final (including copy reviewed by relevant stakeholders, and all hyperlinks double-checked and confirmed).
1. **GitLab**: Project Manager for relevant team will review the incoming issues for completed details. When details are confirmed and final, Project Manager will move to ~mktg-status::wip and assign to `@ashwin.raj`.
   * `@jgragnola` will project manage the triage for Campaigns/Partner/Corporate
   * `@lblanchard` will project manage the triage for Field Marketing and ABM
1. **Verticurl**: `@ashwin.raj` will assign issue to a Verticurl DRI (Directly Responsible Individual) within Verticurl's internal project management system.
   * SLA: 24 hours (from day assigned to `@ashiwn.raj` to be assigned to Verticurl team DRI)
1. **Verticurl**: Verticurl DRI adds email to the Google Calendar for the anticipated send date.
   * The requested send date is the due date of the issue. If the requested send date is less than 5 Business Days from the date it is passed to Ashwin, the date of the issue will be scheduled 5 business days out to abide by SLAs.
1. **Verticurl**: Verticurl DRI completes the setup in Marketo, then sends a test email to the "Reviewers/Approvers" listed in the issue
   * SLA: 24 hours (from day assigned to Verticurl team DRI to provide )
   * [Tables to reference with email addresses of potential reviewers](/handbook/marketing/demand-generation/campaigns/agency-verticurl#team-members)
1. **Verticurl**: Verticurl DRI comments into the issue tagging the reviewers/approvers and documenting that the test email was sent to their inbox.
1. **Verticurl**: Verticurl DRI moves status to ~mktg-status::review
1. **Verticurl**: Verticurl DRI posts a screenshot of the email in the issue description
   * This chrome extension is recommended by `@nbsmith` for screenshots: [GoFullPage](https://chrome.google.com/webstore/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl?hl=en)
1. **GitLab**: Issue requester must review and approve email (or provide corrections) via comment in the issue
   * SLA: 24 hours *from when the test email is sent and comment added to issue). Feedback and approval in a timeley manner is critical on the GitLab side.
1. **Verticurl**: Verticurl DRI makes any necessary corrections. If no corrections needed and approval provided by reviewer, Verticurl DRI sets the email to send (time for send to be determined in issue comments).
1. **Verticurl**: Verticurl checks that email was sent, confirms in comments (tagging issue requester) and closes out the issue.

### Responsibilities of email requesters
{: #requester-responsibilities}

* Issue (email) requesters are responsible for submitting **all details**, including **final approved copy**, reviewed by all stakeholders, PRIOR to passing the issue to Verticurl.
* Issue (email) requesters are responsible for **timely feedback and answers** to Verticurl.
* Issue (email) requesters are responsible for **FINAL QA** (including spelling, grammar, readability, and checking that all links direct to the proper URLs and contain proper tracking parameters)

### Review Process
{: #review-process}
Unless otherwise stated, only **ONE** of the people listed as "Reviewer/Approver" in the issue need to approve in order for the email to be set to send by Verticurl.

As stated in "responsibilities of email requesters" section above, the reviewer is responsible for final QA of all copy, grammar, readability, LINKS, tracking, and formatting.

#### Do not use `email.gitlab` links in email copy documents
{: #email-links}
Please  include **raw URLs** in the copy doc (never `email.gitlab.com...`) and beware not to copy links from previous emails since they are unique to those individual emails.

`email.gitlab` is the CNAME for our Marketo instance, so When Marketo sends an email, it converts the url from `https://about.gitlab.com` or whatever URLs are present in the email to instead be `email.gitlab....` so that it can match up the **unique link clicked** to the **unique lead** and the **unique email** in Marketo. This allows for tracking to the individual clicks, and track click and engagement data back to the individual email.

This isn't unique to our system, it's how most, if not all, marketing automation tracking takes place behind the scenes.

Diligence in copy doc review, and awareness of this URL transition upon email send via Marketo, will help keep the triage process efficient in passing to Verticurl. Here is a [real issue example](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues/278#note_461325686) if you'd benefit from seeing commentary.
