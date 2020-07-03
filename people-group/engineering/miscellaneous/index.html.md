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
being synec to the team page. Opt-in happens by setting `Export Name/Location to Team Page?` to `Yes`
on their BambooHR profile. This is a task on day one for the new team member. When they selected yes, we
grab some data (name, job title, start date, department and country) and format it, so it can be added to
the team page.

We then create a merge request so it can be merged. The merge is not automatically set. Considering this
is a new sync we've added to the automation process we want to check the MRs before setting them to merge.
This check happens by the People Operations Engineer and the Senior Manager, People Operations.

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
so the team members can have access to Modern Health

## CI Job Families Inclusivenes Check
Whenever a merge request is created on the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com/) project, we run a pipeline that checks for 
inclusive language in the job families. We use an open source [Ruby gem](https://gitlab.com/gitlab-com/www-gitlab-com/) to perform this check.

Currently that library covers:
- the usage of masculine vs feminine-coded language 
- the usage of gendered pronouns
- misusued words
- fixed vs growth mindset

The following results lead to failure of the pipeline:
- High usage of masculine-coded language: this means the job family is using more masculine-coded words than feminine-coded words. 
  This could lead to fewer applicants from diverse groups. 
- Usage of any misused words as this could excluded diverse groups
- High usage of fixed-coded language: this means the job family is using more fixed-coded words than growth-coded. Again, this could lead to fewer applicants from a diverse group
- Usage of gendered pronouns: we want to be inclusive to all

If your job family fails but the wording used is valid, you can add your file to a list to be skipped. This file can be found on the same project [here](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/inclusiveness_check.yml).

In the following video Lien Van Den Steen, People Ops Engineer talked with Kelly Murdock, Senior Recruiter how they can audit job families. The following is discussed:
- what is checked 
- how to audit job families that are currently on the `skipped` list
- how to interpret these results
- what results should we aim for

<figure class='video_container'>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/0ZIfDU0l2sU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
