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

## Set closed training issues to confidential 

Once per day, closed issues in the [training project](https://gitlab.com/gitlab-com/people-group/Training) are automatically marked as confidential for compliance.

## Letter of employment

Every 15 minutes, a scheduled job checks the letter of employment requests spreadsheet for new entries. For each entry, a letter of employment will be generated using the team member's BambooHR data. The letter is then sent directly to the team member's work email address.

## CXC contract renewal email

Every day, a scheduled job looks for team members with a CXC contract expiring in two weeks. An email is sent to each of those team members to remind them of the contract renewal process. The GitLab CXC point of contact (email listed in the `CXC_CONTACT_EMAIL` environment variable) is also copied on this email as a reminder to initiate the renewal process on their end.
