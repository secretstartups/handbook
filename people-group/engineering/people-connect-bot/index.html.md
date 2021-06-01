---
layout: handbook-page-toc
title: People Connect bot
description: Information on Slack People Connect bot created by the People Engineering team.
---

## On this page

{:.no_toc}

- TOC
  {:toc}

# People Connect Bot

We're using a custom Slack app, the [People Connect Bot](https://gitlab.com/gitlab-com/people-group/peopleops-eng/people-connect-bot/)
to setup the connection between Slack and GitLab Service Desk for the People Experience team.

The bot is setup to only look into one channel (the "People Connect" channel). Every time
someone adds a new message to this channel, the bot will pick this up and create a new issue
on the private GitLab People Connect project. This project is also set up to use Service Desk
with a specific email.

When a PEA adds a note to an issue started by a Slack comment, a GitLab webhook will be 
triggered to the People Connect bot and this will add the note as a comment on the Slack
thread. When the team member replies, this will trigger a note on the ongoing issue and so 
on.

In case the PEA closes the issue and the team member replies to the thread, the issue will
be reopened. This way no issue gets lost.

## Requests and or bugs

Issues with the bot and/or feedback about the process can be created [here](https://gitlab.com/gitlab-com/people-group/peopleops-eng/people-connect-bot/-/issues/new)
