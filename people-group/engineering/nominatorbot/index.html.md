---
layout: handbook-page-toc
title: Nominator bot
description: Information on Slack Nominator bot created by the People Engineering team.
---

## On this page

{:.no_toc}

- TOC
{:toc}

# Nominator

We're using a custom Slack app, the [Nominatorbot](https://gitlab.com/gitlab-com/people-group/peopleops-eng/nominatorbot/)
that team members can use to nominate other team members for discretionary bonuses.

To nominate someone you type in `/nominate`. The bot will open a dialog
with additional details to fill in. Once filled in, you can submit the dialog. This data
will be stored in a database and is sent through Slack to the nominee's manager.

The manager can then decide to approve or reject this nomination. On approval, the bot will
send this nomination to the second level manager, People Business Partners and Total Rewards
team. Each of them have to approve. On the final approval, it is added to BambooHR in the
bonus table. The nominator AND the manager of the nominee are also updated about a final approval.
The manager will receive a message with the full nomination and will be asked to share this with the
nominee and to share it in the #team-members-update channel on Slack.

## Features
### Update a nomination
Since 2021-03-05 all approvers also have the uption to `update` a nomination. Sometimes
the nomination although valid, doesn't contain enough information. By clicking the update button the
approver can edit the nomination message. Once updated, it can be approved (or rejected) and it will be
send to the next approver with the updated message.

### Retrigger the approver
Sometimes a nomination is "stuck" with an approver. A nominator can use the home section of the nominatorbot
to let the bot send a new message to the person who needs to approve. We only allow a retrigger when:

- the nomination has not been approved or rejected yet
- AND the nomination was either created more than 24 hours ago or the last review has happened more than 24 hours ago
- AND in case a retrigger was already send out, it also needs to be more than 24 hours ago

Please be mindful using this retrigger functionality. There could be a valid reason why the approver is taking a few days
to approve or reject the nomination.

### Follow the state of a nomination as a manager
When you've approved a nomination and you want to be able to follow up the nomination. In the home section of the
nominator bot, there is a button `Reviewed Nominations`. Upon clicking that button a list will be loaded with all
the nominations you've reviewed and their current status.

## Requests and or bugs
Upcoming iterations can be found [here](https://gitlab.com/groups/gitlab-com/people-group/peopleops-eng/-/boards/1655060?scope=all&utf8=%E2%9C%93&state=opened&label_name%5B%5D=p-nominatorbot)
Issues with the bot and/or feedback about the process can be created [here](https://gitlab.com/gitlab-com/people-group/peopleops-eng/nominatorbot/-/issues/new?issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=). We welcome contributions to the project!
