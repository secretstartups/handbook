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

## Parental leave PTO to BambooHR

From 2020-12-18 we will do a daily check to see if any new Parental leave PTO was requested for the day before on PTO by Roots. If there are any PTO events created on that day, we will add 3 employment statuses to the team member's BambooHR profile:
- One with the status `Parental Leave` with the date the start date of the PTO event
- One with the status `End of Parental Leave` with the date the end of the PTO event
- One with the status `Active` with the date the end date of the PTO event + 1

## Set closed training issues to confidential 

Once per day, closed issues in the training project are automatically marked as confidential for compliance.
