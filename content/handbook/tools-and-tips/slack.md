---
title: "Slack"
description: "Slack usage and tips at GitLab"
---

## In general

*Slack is an important part of GitLab's strategy for communication between team members. As such, extra care needs to be given to ensure the safety and integrity of data.*

### Browse Channels

You can browse all available GitLab channels by clicking on "Channels" on the left pane in the Slack app.
From there, you can see every channel, who created it, and how many members there are.
Feel free to ask for recommendations from other team members for their favorite channels.
Every team member is automatically added to the `#company-fyi` and `#whats-happening-at-gitlab` channels, where announcements are made and information for the entire company is shared.
There are also a few default channels that every new hire is added to, such as: `#celebrations`, `#new_team_members`, `#questions`, `#random`, & `#thanks`; these channels are optional, but we think they are a great place for team members to interact and get to know each other.

### Organize Channels in Sidebar Sections

Slack now supports [organizing channels in sections](https://slack.com/intl/en-de/help/articles/360043207674-Organize-conversations-with-custom-sections). Previously this only was possible through "Starred" channels. Navigate into the Slack **preferences** and select the `Sidebar` navigation item. Click on `Create Section` to create a new section on the left sidebar. You can also do that from the settings menu of each existing section.

Feel free to organize this with your most frequent used channels, or specific team grouping. You can drag and drop and also hide sections. You can for example create the `info` section and add `#company-fyi` and `#whats-happening-at-gitlab` as channels. Additionally, add the `team` section and move all related channels there.

### Channels Access

In addition to GitLab team-members, designated groups such as the [Core Team](https://about.gitlab.com/community/core-team/) members and advisors outside of GitLab may be granted access to our Slack channels.
However, internal channels that start with `#a_` will be restricted to GitLab team-members who have been invited to those channels only.
Any confidential conversations regarding our customers should be restricted only to `#a_` channels.
The rationale for internal channels is that it could be a breach of many of our contracts for third parties to have knowledge of GitLab customers.
This is especially the case when third parties could be customers' competitors.

### Slack Status

Slack allows you to set your [status](https://slackhq.com/set-your-status-in-slack) for your fellow GitLab team members by using your choice of standard messages such as "Away" and "Lunch" or a custom message and your choice of emoji.

If you're off work for a holiday or vacation you can update your status by using [Time Off by Deel]({{< ref "paid-time-off#time-off-by-deel" >}}).
This is a great way to let your team know whether you are available.

To have your Slack status automatically set to "In a meeting" based on your Google Calendar, add the [Google Calendar app](https://gitlab.slack.com/apps/ADZ494LHY-google-calendar?next_id=0) to your Slack account.

### Do Not Disturb Hours

Slack now supports "Do Not Disturb Hours" so you won't be pinged in the middle of the night or while you are dealing with family matters.
You can set your "Do Not Disturb Hours" by clicking on the bell at the top of the left pane in the Slack app.
You also have the option of snoozing for 20 minutes or up to 24 hours.
Note: Do Not Disturb can be overridden in the event of an emergency.
See Slack documentation for more information.

### Invite

There are [multiple ways](https://get.slack.help/hc/en-us/articles/201980108-Invite-members-to-a-channel) to invite people into a Slack channel.
The easiest way is to use the invite command by typing `/invite @jenny`.
Avoid inviting people through a mention message.
E.g. `@jenny` as it can create a message that distracts others.

### Quick Switcher

Quick Switcher is a great feature to know about if you want to get productive with Slack.
As the name suggests, it allows you to switch between channels and direct messages quickly.
Invoke it with<kbd>Cmd</kbd>+<kbd>k</kbd>on Mac or<kbd>Ctrl</kbd>+<kbd>k</kbd>on Windows or Linux and start typing the name of the person to chat with or the channel you are interested in.
You can then navigate the suggestions with<kbd>↑</kbd>and<kbd>↓</kbd>keys and hit<kbd>enter</kbd>to select.

### Display only unread conversations

With lots of channels and direct messages, Slack can become overwhelming. To help
keep track of activity on Slack, and to simplify the interface, consider
[displaying only unread conversations](https://slack.com/intl/en-au/help/articles/360043207674-Organise-your-sidebar-with-customised-sections-Organise-your-sidebar-with-customised-sections-Organise-your-sidebar-with-customised-sections#manage-conversation-display).

### Minimize Visual Distractions

Animated images and emoji can add meaning to conversation, but they can also be distracting.
If you would prefer to have static images and emoji, disable the animation.
For details, see [Manage animated images and emoji](https://get.slack.help/hc/en-us/articles/228023907-Manage-animated-images-and-emoji).

### Sort channels and direct messages with stars

To sort direct messages and channels, open the direct message or channel and click on the star icon.
For details, see [Star channel or direct message](https://get.slack.help/hc/en-us/articles/201331016-Star-channels-messages-or-files#star-a-channel-or-dm).

### Unfurling Links in Messages

Slack has a built-in feature to [Unfurl](https://api.slack.com/docs/message-link-unfurling) links included in messages posted to Slack.
This will post a preview of the link alongside the message.
You can remove the unfurled preview of the link by hitting the "x" in the top-left of the preview.
This will then prompt you to confirm removing the attachment, which you can hit "Yes, remove".

![Unfurl attachment removal](/handbook/tools-and-tips/images/unfurl-remove.png)

In the confirmation prompt you may also see a checkbox to *"Disable future attachments from this website"*.
As a workspace admin if you select the disable option **this will denylist the link/domain across the workspace and will impact every user**.
If you do happen to denylist a link or a domain, they can be modified in the Workspace admin portal under [Settings & Permissions](https://gitlab.slack.com/admin/attachments).

### Change Group DMs to Private Channels

If you are in a group direct message with multiple people, you can [change it to a private channel](https://get.slack.help/hc/en-us/articles/217555437-Move-group-DMs-to-a-private-channel), in order to avoid extra pings and allow additional team members to be added or removed to the channel.

### Custom theme

The interface colors can be customized in Slack.
This is especially useful when using multiple slack accounts, setting up different themes makes it really easy to differentiate them instantly.
The theme selector is available under Preferences > Themes.

In order to setup a GitLab theme, send yourself the following message: `#643685,#634489,#FC6D26,#ffffff,#71558f,#ffffff,#FCA326,#e24329`, and press the `Switch sidebar theme` button.

### Slack Apps

Many applications can integrate with Slack.
Recommended apps:

1. Google Calendar - By integrating your calendar with Slack, you'll get notifications about meetings directly in Slack.
Most important - 1 minute before a meeting begins, you'll receive a message with the meeting info, including a link to join meetings that are occurring in Zoom.
You can set up the integration by typing /gcal into any message field.

### Slack Reminders

Slack reminders help you to remember things without having to keep it all in your head.
You can set reminders for yourself or other team members.
You will receive a notification at the specified time.

You can use natural language with the `/remind` command.
Type `/remind help` to get some tips.
For full information on Slack reminders [see the Slack help](https://get.slack.help/hc/en-us/articles/208423427-Set-a-reminder).
