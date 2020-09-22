---
layout: handbook-page-toc
title: "Miscellaneous"
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

## CI Job Families
Whenever a merge request is created on the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com/) project, there are two pipelines that run related to job families:

- inclusiveness check: this is [a script](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/lib/lint/inclusiveness_check.rb) that checks that the job family uses inclusive language. You can read more about it [here](/handbook/hiring/job-families/index.html#inclusive-language-check).
- requirements check: this is [a script](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/marketing/source/job-families/check_job_families.py) that checks if certain elements are present on the job family. For example `Ability to use GitLab` is a hard requirement that needs to be present on every job family. The pipeline will fail if it is not present.
