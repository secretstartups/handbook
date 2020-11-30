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

The Verticurl team will be working with GitLab to execute email marketing setup and other tasks in Marketo. Review and approval is expected of issue requesters, and the project managment pass of issues will take place between GitLab and Verticurl. `@jgragnola` will be PM for GitLab Campaigns issues (including Partner Marketing and Corporate Marketing), while `@lblanchard` will be responsible for passing issues on behalf of Field Marketing. `@ashwin.raj` will be responsible for assignment to team members within Verticurl.

### Team Members

| Name | Company/Role | GitLab Handle | Email Address |
| -------------- | ----- | ---------- | --- |
| Ashwinraj Maniraj | Verticurl, PM | @ashwin.raj | `ashwinraj.maniraj@verticurl.com` |
| Jayaprakash D | Verticurl | @? | `jayaprakash.d@verticurl.com` |
| Sonu Gifty | Verticurl | @? | `sonugifty.thomas@verticurl.com` |
| Viswanath R | Verticurl | @? | `Viswanath.R@verticurl.com` |
| Jackie Gragnola | GitLab, Campaigns (PM) | @jgragnola | `jgragnola@gitlab.com` |
| Nout Boctor-Smith | GitLab, Email Marketing | @nbsmith | `nboctorsmith@gitlab.com` |
| Leslie Blanchard | GitLab, Field Marketing (PM) | @lblanchard | `lblanchard@gitlab.com` |
| Agnes Oetama | GitLab, Campaigns | @aoetama | `aoetama@gitlab.com` |
| Jenny Tiemann | GitLab, Campaigns | @jennyt | `jtiemann@gitlab.com` |
| Zac Badgley | GitLab, Campaigns | @zbadgley | `zbadgley@gitlab.com` |
| Eirini Pan | GitLab, Campaigns | @eirinipan | `epan@gitlab.com` |
| Indre Kryzeviciene | GitLab, Campaigns | ikryzeviciene@ | `ikryzeviciene@gitlab.com` |
| Emily Kyle | GitLab, Corporate Marketing | @emily | `emily@gitlab.com` |
| Teagan Shurtleff | GitLab, Corporate Marketing | @tshurtleff | `tshurtleff@gitlab.com` |
| Alisha Rashidi | GitLab, Partner Marketing | @arashidi | `arashidi@gitlab.com` |
| Sara D'Avila | GitLab, Partner Marketing | @saraedavila | `sdavila@gitlab.com` |


## Project Management
The following "triage" of issues are an extension of the [Campaigns Team triage](/handbook/marketing/demand-generation/campaigns/#project-management), utilizing the `~mktg-status::??` labels. Please see an overiew of the statuses [here](/handbook/marketing/demand-generation/campaigns/#intake-process-labels).

### Shortcut list views
* [All Verticurl Issues](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl)
* [Verticurl Issues in Triage](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Atriage)
* [Verticurl Issues in WIP](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Awip)
* [Verticurl Issues in Review](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Areview)
* [Verticurl Issues in Blocked](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl&label_name[]=mktg-status%3A%3Ablocked)

#### Corporate and Partner Marketing (triaged through Campaigns)
The following process is used for issues within the campaigns project, but coming from outside of the campaigns team (Corporate Marketing, Partner Marketing).

1. **GitLab**: Issues are submitted in the Campaigns project with status ~mktg-status::triage.
   * At the time of moving to triage, all details must be provided and final (including copy reviewed by relevant stakeholders, and all hyperlinks double-checked and confirmed).
   * [Shortcut to see all issues in "triage" status](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Atriage)
1. **GitLab**: `@jgragnola` will review the incoming issues for completed details. When details are confirmed final, `@jgragnola` will assign to `@ashwin.raj` and apply Verticurl label.
   * `@jgragnola` will add to the issue description a link to the Marketo email program so that Verticurl does not need to dig through the epic and issues for the relevant location.
   * [Shortcut to see all issues with Verticurl label](https://gitlab.com/groups/gitlab-com/marketing/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=Verticurl)
1. **Verticurl**: `@ashwin.raj` will manage the incoming issues in ~mktg-status::triage and assign within the verticurl team, changing status to ~mktg-status::wip when the issue is assigned.
   * SLA: 24 hours (from day assigned to `@ashiwn.raj` to be assigned to Verticurl team DRI)
   * [Shortcut to see all issues in "triage" assigned to @ashwin.raj](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Atriage&assignee_username[]=ashwin.raj)
1. **Verticurl**: When the assigned Verticurl team member completes the setup in Marketo, they will send a test email to the individuals listed in the issue under the bullet for "Reviewers/Approvers"
   * SLA: 24 hours (from day assigned to Verticurl team DRI to provide )
1. **Verticurl**: Assigned Verticurl team member will comment into the issue tagging the reviewers/approvers and documenting that the test email was sent to their inbox.
1. **Verticurl**: Assigned Verticurl team member will move status to ~mktg-status::review
   * [Shortcut to see all issues in "review" with Verticurl label](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Atriage&assignee_username[]=ashwin.raj)
1. **Verticurl**: Assigned Verticurl team member will post a screenshot of the email in the issue description for transparency.
   * This chrome extension is recommended by `@nbsmith` for screenshots: [GoFullPage](https://chrome.google.com/webstore/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl?hl=en)
1. **GitLab**: Issue requester must review and approve email (or provide corrections) via comment in the issue.
   * SLA: 24 hours *from when the test email is sent and comment added to issue)
1. **Verticurl**: Assigned Verticurl team member makes any necessary corrections. If no corrections needed, comment to `@nbsmith` to set the email to send (at start of the process, this is to do a review of the audience being sent the email).
1. **Verticurl**: Verticurl checks that email was sent, and closees out the issue.

#### Campaigns Team
The following process is used for issues within the campaigns project, generated from the Campaigns team.

1. **GitLab**: Campaign team members will apply Verticurl label and assign issues to `@ashwin.raj`.
   * Campaign team member is responsible for adding a link to the Marketo email program so that Verticurl does not need to dig through the epic and issues for the relevant email to update.
   * Campaign team member is responsible for ensuring email copy and hyperlinks are final.
1. **Verticurl**: `@ashwin.raj` will manage the incoming issues in ~mktg-status::triage and assign within the verticurl team, changing status to ~mktg-status::wip when the issue is assigned.
   * SLA: 24 hours (from day assigned to `@ashiwn.raj` to be assigned to Verticurl team DRI)
   * [Shortcut to see all issues in "triage" assigned to @ashwin.raj](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Atriage&assignee_username[]=ashwin.raj)
1. **Verticurl**: When the assigned Verticurl team member completes the setup in Marketo, they will send a test email to the individuals listed in the issue under the bullet for "Reviewers/Approvers"
   * SLA: 24 hours (from day assigned to Verticurl team DRI to provide )
1. **Verticurl**: Assigned Verticurl team member will comment into the issue tagging the reviewers/approvers and documenting that the test email was sent to their inbox.
1. **Verticurl**: Assigned Verticurl team member will move status to ~mktg-status::review
   * [Shortcut to see all issues in "review" with Verticurl label](https://gitlab.com/gitlab-com/marketing/demand-generation/campaigns/-/issues?scope=all&utf8=%E2%9C%93&state=opened&label_name[]=mktg-status%3A%3Atriage&assignee_username[]=ashwin.raj)
1. **Verticurl**: Assigned Verticurl team member will post a screenshot of the email in the issue description for transparency.
   * This chrome extension is recommended by `@nbsmith` for screenshots: [GoFullPage](https://chrome.google.com/webstore/detail/gofullpage-full-page-scre/fdpohaocaechififmbbbbbknoalclacl?hl=en)
1. **GitLab**: Issue requester must review and approve email (or provide corrections) via comment in the issue.
   * SLA: 24 hours *from when the test email is sent and comment added to issue)
1. **Verticurl**: Assigned Verticurl team member makes any necessary corrections. If no corrections needed, comment to `@nbsmith` to set the email to send (at start of the process, this is to do a review of the audience being sent the email).
1. **Verticurl**: Verticurl checks that email was sent, and closees out the issue.
