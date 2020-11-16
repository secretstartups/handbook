---
layout: handbook-page-toc
title: Email Automation
description: "Information on GitLab's email automation process related to People Group tasks."
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Overview

People Operations team sends out several emails for different reasons. When possible, we try to automate these.

### Onboarding Email

This is the [email](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/master/.gitlab/email_templates/onboarding_email.md) that is sent to our team members on the morning of their first day of employment (based upon the onboarding date in the issue title). The email is cc'd to `people-exp@domain`.

Every day we run 3 scheduled pipelines. They are each setup for a specific region:

- Americas at 10AM UTC
- EMEA at 4AM UTC
- JAPAC at 6PM UTC

For the JAPAC pipeline it will fetch the team members with a start date for the next day (timezones).
For the EMEA and Americas pipeline it will fetch all the team members that have a start day equal
to the current day (so who is starting today). The pipeline then filters out the ones for the region
they need to send the email to. This all is to ensure we don't send out the email too late or too early.
The region of the team member is determined from the region that is on their BambooHR profile. This is the
first iteration, if we need to split it up by countries, we can rework the current implementation.

We fetch some other data besides the region as well:

- their onboarding issue URL
- their name

This data is used to populate the email that we then send to them. The email address used to send the email is `onboarding@domain` and is set with a `reply-to: people-exp@domain` as nobody monitors replies to `onboarding@`.  The email address is strictly used for automation.

### Values-check in Email

This is the [email](/handbook/people-group/values-check-in/) that is send to our team members after 90 days of employment.

Every day at 10AM UTC we run a scheduled pipeline. This pipeline will fetch all the team members that are eligible to get this values check in.
For every eligible team member we send out two emails:

- one to the team member
- one to the team member's manager: this is determined by the manager for the team member on BambooHR

The email address used to send the email is `peoplespecialists@domain` and is set with a `reply-to: peopleops@domain` as nobody monitors replies to `peoplespecialists@domain`. The email address is strictly used for automation.

### Probation Ending Email

This is the [email](https://gitlab.com/gitlab-com/people-group/General/-/blob/master/.gitlab/email_templates/probation_ending_manager.md)
that is send when a probation period is about to end for a team member. The email is send to the team member's manager and CC'd to `people-exp@domain`

Every day at 9AM UTC we run a scheduled pipeline. This pipeline will fetch all the team members that are eligible. An eligible team
member means:

- the country listed on their BambooHR profile is a country that uses probation
- they have a probation that will end in 14 days

The email address used to send the email is `onboarding@domain` and is set with a `reply-to: people-exp@domain` as nobody
monitors replies to `onboarding@domain`. The email address is strictly used for automation.

### Swag Email

This is the [email](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/master/email_templates/swag_email.md) that is send on the first day of a new team member so they receive the code to get a discount at the swag store. The email is cc'd to `people-exp@domain`.

Every day at 9AM UTC we run a scheduled pipeline. This pipeline will fetch all the team members that are eligible. An eligible team
member means:

- Team member who is on their first day of employment at GitLab

The email address used to send the email is `onboarding@domain` and is set with a `reply-to: people-exp@domain` as nobody
monitors replies to `onboarding@domain`. The email address is strictly used for automation.

### Netherlands Contract Ending Email

This is the [email](https://gitlab.com/gitlab-com/people-group/General/-/blob/master/.gitlab/email_templates/netherlands_temp_contract_renewal.md) that is send to the team member's manager two months before the team member's contract end. The email is cc'd to `peopleops@domain` and to the relevant People Business Partner.

Every day at 9AM UTC we run a scheduled pipeline. This pipeline will fetch all the team members that are eligible. An eligible team
member means:

- Team member who lives in the Netherlands
- and who's temporary contract ends in two months.

The email address used to send the email is `peoplespecialists@domain` and is set with a `reply-to: peopleops@domain` as nobody monitors replies to `peoplespecialists@domain`. The email address is strictly used for automation.

Currently this email runs in test mode. This means the email is not send to the manager but to the People Engineer and only cc'd to `peopleops@domain` and not the People Business Partner.
