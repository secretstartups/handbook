---
layout: handbook-page-toc
title: "Email Automation"
---

- TOC
{:toc}

## Overview

People Operations team sends out several emails for different reasons. When possible, we try to automate these.

### Onboarding Email
This is the [email](https://gitlab.com/gitlab-com/people-group/employment-templates/-/blob/master/.gitlab/issue_templates/onboarding_email.md) that is send
to our team members on the day before their employment.

Every day we run 3 scheduled pipelines. They are each setup for a specific region:
- JAPAC at ?AM UTC
- EMEA at 6AM UTC
- Americas at ?AM UTC

 Each of those pipelines will fetch all the team members that have a start day for the next day 
 and then filter out the ones for the region they need to send the email to. This ensures we don't
 send out the email too later or too early. The region of the team member is determined from the
 region that is on their BambooHR profile.
 
We fetch some other data besides the region as well:
- their onboarding issue URL
- their name

This data is used to populate the email that we then send to them. The email address used to send the email is `onboarding@domain` and is set with a `reply-to: people-exp@domain` as nobody monitors replies to `onboarding@`. The email address is strictly used for automation.

Currently this email automation is in test mode. This means that instead of sending it to the incoming team member, the email is send to the People Operations Engineer.

### Values-check in Email
This is the [email](/handbook/people-group/values-check-in/) that is send to our team members after 6 or 8 weeks (depending on probation) of employment.

Every day at 10AM UTC we run a scheduled pipeline. This pipeline will fetch all the team members that are eligble to get this values check in.
For every eligble team member we send out two emails:
- one to the team member
- one to the team member's manager: this is determined by the manager for the team member on BambooHR

The email address used to send the email is `peoplespecialists@domain` and is set with a `reply-to: peopleops@domain` as nobody monitors replies to `peoplespecialists@`.
The email address is strictly used for automation.
