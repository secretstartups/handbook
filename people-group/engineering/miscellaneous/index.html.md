---
layout: handbook-page-toc
title: Miscellaneous
description: "Information on automations related to syncing to our team page, job families, and more."
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Team page entry Specialty field

Once/day we run a pipeline that syncs the specialty field for team members within the Engineering and Product division. This
means that if team members edit that field in the file, this will result in the sync overwriting when it runs again. The reason
for this is that we consider BambooHR as the single source of truth for this data. Thus team members and managers will need to
make adjustments in BambooHR first and this will be automatically propagated in the team page entry.

To determine what to fill in for the specialty, we first look at the multi-select specialty field. If there is nothing present in
this field, we look at the single select specialty field.

## Parental leave PTO to BambooHR

From 2020-12-18 we will do a daily check to see if any new Parental leave PTO was requested for the day before on PTO by Roots. If there are any PTO events created on that day, we will add 3 employment statuses to the team member's BambooHR profile:
- One with the status `Parental Leave` with the date the start date of the PTO event
- One with the status `End of Parental Leave` with the date the end of the PTO event
- One with the status `Active` with the date the end date of the PTO event + 1

## Sensitive data compliant PTO by Roots export

Every week, a scheduled job queries all PTO events occurring during a ±4 week time frame. Sensitive information (eg. the _type_ of PTO taken) is then filtered out from these PTO events. The compliant data is then uploaded to a Google Cloud Storage bucket for the data analytics team to consume.

The data team then makes a subset of this information available via Sisense to allow team members to create more accurate charts for metrics like _number of merge requests per team member over a 30-day period_.

## Netherlands accrual adjustments

A scheduled job runs on January first and for each team member located in the Netherlands, if their `Employee Accruals` balance is negative, it is set back to 0 days.

A similar scheduled job also runs on July first, but in this case, for each team member located in the Netherlands, if their `Employee Accruals` balance exceeds 10 days, it is set back to 10 days.

## Set closed training issues to confidential

Once per day, closed issues in the [training project](https://gitlab.com/gitlab-com/people-group/Training) are automatically marked as confidential for compliance.

## Letter of employment

Every hour, a scheduled job checks the letter of employment requests spreadsheet for new entries. For each entry, a letter of employment will be generated using the team member's BambooHR data. The letter is then sent directly to the team member's work email address.

## CXC contract renewal email

Every day, a scheduled job looks for team members with a CXC contract expiring in two weeks. An email is sent to each of those team members to remind them of the contract renewal process. The GitLab CXC point of contact (email listed in the `CXC_CONTACT_EMAIL` environment variable) is also copied on this email as a reminder to initiate the renewal process on their end.

## Entities sync

Once per week, BambooHR locations are synced to GitLab groups. Team members are then added to the correct group. The list of groups (entities) can be found in the [entities project](https://gitlab.com/gitlab-com/entities).

When creating a merge request or issue that affects all members of a given GitLab entity, all members with direct membership can be pinged using `@gitlab-com/entities/<entity-name>`.

eg. for Canada Corp, use `@gitlab-com/entities/canada-corp`.

### On-call scheduling spreadsheet

On the first day of each month, we populate a spreadsheet including information for team members who have been at GitLab for more than 3 months. The spreadsheet is used by engineering to plan for on-call availability.

Synced fields are sourced from BambooHR and the team file.

- Name
- Job title
- Division
- Department
- Subdepartment
- Role
- City
- Country
- State/province
- Weekend availability
