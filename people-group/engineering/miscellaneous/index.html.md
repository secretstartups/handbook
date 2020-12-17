---
layout: handbook-page-toc
title: Miscellaneous
description: "Information on automations related to syncing to our team page, modern health, job families, and more."
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Sync to Team Page

Since 2020-05-25 every day at 09AM UTC, we have a pipeline running that syncs the team members who started
the day before to the team.yml file.

We fetch all the new team members with a start date of the previous day and check if they opted-in on
being synced to the team page. Opt-in happens by setting `Export Name/Location to Team Page?` to `Yes`
on their BambooHR profile. This is a task on day one for the new team member.

If they selected yes, we grab some data (name, job title, start date, department and country) and format it,
so it can be added to the team page entry. If they did not opt-in, we still add an entry to the team page.
However that entry is anonymized.

We then create a merge request on `www-gitlab-com` project so it can be merged. The merge is not automatically set.
Considering this is a new sync we've added to the automation process we want to check the MRs before setting them to merge.
The merge request is assigned to the People Experience Team and they set it to merge when the pipeline succeeds.

## Team members to Modern Health

[Modern Health](/handbook/total-rewards/benefits/modern-health) needs a weekly update about all our active
team members. This proces has been automated by using their `Upload to AWS S3` functionality. Every Friday
at 1PM UTC we run a scheduled job. This job fetches all the active team members from BambooHR and stores
the following in a CSV file:

- First name
- Last name
- Work email
- Employee ID
- Department
- Start Date

This CSV file is then uploaded to a S3 bucket that is maintained by Modern Health. They process the file
so the team members can have access to Modern Health.

## Parental leave PTO to BambooHR
From 2020-12-18 we will do a daily check to see if any new Parental leave PTO was requested for the day before on PTO by Roots. If there are any PTO events created on that day, we will add 3 employment statuses to the team member's BambooHR profile:
- One with the status `Parental Leave` with the date the start date of the PTO event
- One with the status `End of Parental Leave` with the date the end of the PTO event
- One with the status `Active` with the date the end date of the PTO event + 1

## CI Job Families

Whenever a merge request is created on the [www-gitlab-com](<a href="https://gitlab.com/gitlab-com/www-gitlab-com/">https://gitlab.com/gitlab-com/www-gitlab-com/</a>) project, we run the following pipeline related to job families:

- inclusiveness check: this is [a script](<a href="https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/lib/lint/inclusiveness_check.rb">https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/lib/lint/inclusiveness_check.rb</a>) that checks that the job family uses inclusive language. You can read more about it [here](/handbook/hiring/job-families/index.html#inclusive-language-check).

## Team members to LawLogix (I9)

I-9 forms are used to verify the identity and employment authorization of individuals hired for employment in the United States. All U.S. employers must properly complete Form I-9 for each individual they hire for employment in the United States. At GitLab we use [LawLogix](<a href="https://www.lawlogix.com/">https://www.lawlogix.com/</a>) to help us with this process.

To avoid manually having to manage team members to this tool, there is a custom sync set up between BambooHR and LawLogix. This sync works with uploading CSV files to them. There are 4 different files to be uploaded in the process, two of them are fully automated and two need a trigger from a People Experience Associate.

Note: this only looks at team members with "United States" as their listed country in BambooHR. All other team members are ignored for this sync.
Note: this sync is not active yet as we are still running this in test phase - we will receive a production URL when they have everything set up

### New hires

This syncs the new hires to LawLogix. Every day we check which team members have a start date in 7 days. If there are team members, we create a file with the following naming convention: `01_employee_add_mmddyyhhmmss.csv`. For every eligible team member the following information is added to the file:

- hire date: the date they start working at GitLab
- employee id: the unique employee ID that has been assigned to them in BambooHR (not to be confused with the ID of the user in BambooHR)
- legal entity: either `Gitlab Inc` or `GitLab Federal LLC`. This depends on what is filled in on the `location` field in BambooHR.
- first and last name
- personal email address

Note that if a team member is added as a last minute hire (in this case defined as with less then 7 days to their start date), the team member will not be picked up by the sync. However a People Experience Associate can run the following command in Slack so that a new team member upload file is created to LawLogix:

`/pops run uploadtoi9 <ID_IN_BambooHR_URL>`

### Update hires

This syncs updates to LawLogix. If a change happens in hire date, legal entity or the team member's name, this change needs to be reflected on LawLogix as well. This one needs to be triggered by a People Experience Associate by running the following Slack command:

`/pops run reuploadtoi9 <ID_IN_BambooHR_URL>`

This will trigger a pipeline that fetches the team member on BambooHR. A file with the following naming convention is created: `02_employee_update_mmddyyhhmmss.csv`. The same fields as for new hires are added to this file. Once done, the file is uploaded to LawLogix where they process it.

### Rehired team member

This syncs rehires to LawLogix. A rehire is defined as a team member who has a previous I-9 record in Guardian that was
terminated and the employee is being rehired. This one needs to be triggered by a People Experience Associate by running the following Slack command:

`/pops run rehirei9 <ID_IN_BambooHR_URL>`

This will trigger a pipeline that fetches the team member on BambooHR. A file with the following naming convention is created: `03_employee_rehire_mmddyyhhmmss.csv`. The same fields as for new hires are added to this file except that there is also a column `rehire` added where the value is set to `yes`. Once done, the file is uploaded to LawLogix where they process it.

### Offboarded team members

When a team member leaves GitLab they also need to be _terminated_ on LawLogix. We have a daily check for offboarded team members. Every day we check if there are any new offboarding issues created for the day before. For those, we check if the team member is located in the United States. If there are matches, we create a file with the following naming convention: `04_employee_termination_mmddyyhhmmss.csv` and add the users employee id and their end date to the file. This is then uploaded to LawLogix so they can process it.

## Compensation Calculator

The compensation calculator has its own [project](https://gitlab.com/gitlab-com/people-group/peopleops-eng/compensation-calculator/).
