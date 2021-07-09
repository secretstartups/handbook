---
layout: handbook-page-toc
title: "GitLab Offboarding Guidelines"
description: "Offboarding process and steps on the backend"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The [People Experience Associate](/job-families/people-ops/people-experience-associate/) in the relevant [rotation](/handbook/people-group/people-experience-team/#weeklyrotation) will assign the offboarding team member to a People Experience Associate from within the offboarding [tracker](https://docs.google.com/spreadsheets/d/1Z45eOZ2rCRIKgGae3eOKQ8lhIbAPikSs5gLz3V8Kh9U/edit?ts=5e7a2c42#gid=989170380). Once assigned, the assigned People Experience Associate creates the [offboarding issue](https://gitlab.com/gitlab-com/people-group/employment/-/blob/master/.gitlab/issue_templates/offboarding.md), within 12 hours of the offboarding date (may be sooner once the relevant Associate in the rotation is online) as is stipulated in the #offboarding Slack channel submitted by the People Business Partner. Many other teams work to deprovision access including the ITOps team, this should be regarded as urgent and expected to be completed in 5 working days with the exception of [Laptop returns](/handbook/business-ops/team-member-enablement/onboarding-access-requests/#returning-oldoffboarded-laptops), which can take 2 - 4 weeks.

## Offboarding Process

### Notice of Offboarding

The offboarding process kicks off once the People Business Partner completes the [Offboarding Workflow Form](https://docs.google.com/forms/d/e/1FAIpQLScBBnV7bKKVkqfTk9Aq9sfSB_r85SKTxt0_mC6RhbRwU3DtSA/viewform), which is also included in the `#offboardings` Slack channel. This workflow should include information around the offboarding type, the exact date on which it will be effective i.e. immediate or future dated and whether or not the team member in question will be placed on Garden Leave.  The team members status should immediately be updated in BambooHR to either `Notice Period` or `Garden Leave` where applicable, and thereafter set for termination using the data in the tracker as per this [process](https://about.gitlab.com/handbook/people-group/offboarding/offboarding_guidelines/#updating-bamboohr). `Notice Period` is defined as the period of work after someone has voluntarily resigned from GitLab. `Garden Leave` can be found with additional details in the [handbook](https://about.gitlab.com/handbook/people-group/offboarding/#leave-of-absence-or-garden-leave) and will be confirmed by the People Business Partner.

People Business Partners are encouraged to provide reasonable notice that an offboarding will be taking place to allow for adequate planning both on the part of the People Experience Team and the Tech Provisioners involved.

In support of the People Experience Teams efforts to remain both compliant and efficient, offboardings which are scheduled will commence at 4PM in their regional timezone (EMEA, JAPAC, and NORAM) and 12pm in their regional timezone on Friday. at which point de-provisioning will commence - in instances where it may be tricky to have cut-off initiated at this time, we encourage team members or People Business Partners to advise the People Experiece team of an updated date and time.

Should the offboarding fall on a day when the People Experience Team is [unavailable](https://about.gitlab.com/handbook/people-group/people-experience-team/), The People Experience Associate will create a private Slack channel with the team member's manager and team member and discuss offboarding options. 

### Updating BambooHR
1. Click on the setting gear symbol in the right hand corner and set employee to terminated, which will prompt for the following information:
   1. Effective Date
   1. Employment Status
   1. Termination Type
   1. Termination Reason - Ensure the PBP gives you a reason listed within BambooHR
   1. Eligible for Rehire
1. Add exit impact below Employment Status table
1. If the team member is within their probation period, delete the "End of Probation Period" and "Active" entries. The top entry in the Employment Status table should be the "Termination" entry.

### Creating the Offboarding Issue

Offboarding issues are now created [automatically](https://about.gitlab.com/handbook/people-group/engineering/offboarding/#scheduled-offboarding-issue-creation) using the data from the People Exp / Ops Tracker which is provided by the People Business Partner when submitting the form. **It is essential that the date and time inserted in the tracker is accurate as this will be the time in which the employment bot will open the offboarding issue**

The relevant People Experience Associate will be pinged in Slack once the offboarding issue is created, and automatically assign the People Experience Associate. The ping will include a link to the new offboarding issue.

Note: If the team member is transitioning to a [temporarily positioned contractor](/handbook/people-group/general-onboarding/consultants/), please proceed with the full offboarding and create a separate onboarding issue to grant only specific temporary access for what they would need to fulfill their contractual obligations.

#### Creating the Offboarding Issue Manually

In the event that the offboarding issue is not automatically opened or an urgent issue is needed to be opened, the People Experience Associate can open the offboarding issue manually, by following the steps below:

1. In Slack, go to your profile as if you were going to send a Slack message to yourself. Type the command `/pops run offboarding BambooHR_ID_number` (not Employee ID #). This number is found in the team member's BambooHR profile URL, after `id=`. It is a 5-digit number. An example of the command would be `/pops run offboarding 00000`. If BambooHR's API is down, this ChatOps command will fail and will need to be created manually.
1. You will be pinged in Slack once the offboarding issue is created, which usually takes 30 seconds or so. The ping will include a link to the offboarding issue and merge request removing from team page.
1. You will need to check the Department, GitLab Email Address and GitLab Handle within the issue is correct.

## Tools Offboarding

### Google Workspace

IT Ops will follow the below steps to set up an auto-response that notifies the sender that the team member they are trying to reach is no longer with GitLab and who to contact.

   1. Navigate to Google admin portal and search for the email account.
   1. Unsuspend the account, reset sign in cookies, reset password, do not email the password. 
   1. Move account into the Former Team Memebers Organizational Unit. 
   1. Use GAM to set a Out of Office Message on the account
   1. Add the [appropriate template](https://gitlab.com/gitlab-com/people-group/people-operations/employment-templates/-/blob/master/email_templates/offboarding_rejection.md) per team member's department under the `Customize rejection notice`

The Out of Office message will stay on the account for 90 days, aftewards ITOPs will follow up and archive the account in the G-Suite vault.

### Slack

- Bots

IT Ops check if the team member has created any bots before disabling the account. Go to [Slack](https://gitlab.slack.com/apps/manage) or on your admin Slack profile click Menu >> Configure Apps >> Custom Integrations >> Bots and search through the bots' list for the team member.
If a bot exists, please DM the manager to confirm if the bot should be removed.

- Custom Emoji's

There is currently a task listed in the offboarding template for the People Experience Associate handling the offboarding to search for and remove any custom emoji for the offboarded team member. Herewith the steps to complete:

1. Select the dropdown in Slack where it states GitLab
1. Select Settings and Administration
1. Customize GitLab
1. Ensure that you are under the Emoji tab
1. Search for the team members name 
1. If there is a custom emoji, select the `x` next to the emoji listed to delete
1. Select confirm to delete permanently from the GitLab Slack workspace

### Team Page

As per the [automation](https://about.gitlab.com/handbook/people-group/engineering/offboarding/#offboarding-merge-request) in place, a merge request is automatically created to remove the team member from the team page. This will update the following:

- Removing the individual file from the data/team_members/person directory
- Removing the picture used in the previous file
- Adjusting the reports_to in case the offboarded team member had reports
- Removing the pet picture in case the team member had any
- Removing the pet page entry
- Update the CODEOWNERS file: change to the manager or remove if the manager is already a codeowner for that file

The People Experience Associate will need to complete:

- Remove the team members ReadMe

## Offboarding Compliance

The People Experience Associates in the relevant rotation will complete a weekly audit of all offboarding issues opened within that specific week and check that all tasks have been completed by all Team Member and/or Departments. In the event that tasks are still outstanding, the People Experience Associate will ping the relevant Departments within the offboarding issue to call for tasks to be completed.

Once all tasks have been completed, the People Experience Associate will close the offboarding issue and mark as completed in the offboarding tracker.

All offboarding tasks by all Departments need to be completed within 5 days of the offboarding date. For systems that are more critical and time sensitive, these will be completed within the first 24 hours (example 1Password, Okta, Slack) by the relevant Departments. Information about application & system deprovisioners can be found on the [Tech Stack Applications handbook page](/handbook/business-ops/tech-stack-applications/).

To ensure a successful completion of the offboarding issue, it is important that all tasks are checked off, whether the system/tool is applicable to the offboarding team member or not. Checking the box indicates one of the following:

- I have revoked team member access to this particular system/tool
- I have checked and this team member was not given access to this particular the system/tool
