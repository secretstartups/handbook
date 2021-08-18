---
layout: handbook-page-toc
title: 'AMER Response Crew Notification Training'
category: Gitlab.com Projects
description: 'Training documentation concerning the AMER Response Crew Notification'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* What the AMER Response Crew Notification is
* How the AMER Response Crew Notification works
* When does the AMER Response Crew Notification runs

## What is the AMER Response Crew Notification

This is a tool used for posting the daily members of the AMER
[response crew](../../workflows/meeting-service-level-objectives.html#support-response-crew)
into a Slack channel. It also handles rotating the Support Managers present in
the AMER response crew.

## How does the AMER Response Crew Notification work

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/czz0632wNgg" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This all works utilizing ruby scripting and GitLab CI/CD. The CI/CD component
of this is straight forward, in that it has 1 stage and it runs the ruby
scripts within the project.

### Create stage

This stage contains two different jobs:

* post_message
* rotate_managers

#### post_message

This job runs the `./bin/run` script via a CI/CD schedule, but only if the
environment variable `ACTION` is present and has a value of `post`.

The actual script looks at the Pagerduty schedules associated with the AMER
response crew and determine who is scheduled for the current day. It then posts
this information to a slack channel.

#### rotate_managers

**Note**: Via the .gitlab-ci.yml file, this succeeds every 4 weeks. This was
accomplished by having the script part of the job start with:

```bash
[ $(expr $(date +%U) % 4) -eq 3 ] &&
```

Which equates to "the week number of the year divided by 4 has a remainder of
3".

This job runs the `./bin/rotate_managers` script via a CI/CD schedule, but only
if the environment variable `ACTION` is present and has a value of `rotate`.

The actual script looks at the Pagerduty schedule for Supprot Managers
associated with the AMER response crew and rotates them all by one day. It then
saves this change to Pagerduty to be applied on the following Sunday. It will
then post the rotation in a slack channel to notify those involved.

## When does AMER Response Crew Notification run

By using GitLab CI/CD schedules, we have the following set to run at various
intervals:

| Name | What it does | When it runs |
|------|--------------|--------------|
| Rotate managers schedule | Runs [rotate_managers](#rotate_managers) | Every Wednesday at 0700 Central Time |
| Post in channel | Runs [post_message](#post_message) | Daily at 0800 Central Time |

## Useful links

* [AMER Response Crew Notification repo](https://gitlab.com/gitlab-com/support/toolbox/amer-response-crew-notification)
* [Support team repo](https://gitlab.com/gitlab-com/support/team)
* [Response Crew documentation](../../workflows/meeting-service-level-objectives.html#support-response-crew)
