---
layout: handbook-page-toc
title: "Vimeo"
description: "Vimeo is a video hosting, sharing, and services platform. "
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### About Vimeo

Vimeo is a video hosting, sharing, and services platform. 

### Acesss

Everyone in GitLab will have access to Vimeo through Okta ([see related issue](https://gitlab.com/gitlab-com/gl-security/zero-trust/okta/-/issues/201#note_438418851)). If a higher permission set is required, [please follow the access request process](https://about.gitlab.com/handbook/business-ops/team-member-enablement/onboarding-access-requests/access-requests/) as outlined in the business operations handbook.

#### User Roles

[Managing team members on your account](https://vimeo.zendesk.com/hc/en-us/articles/224818687-Managing-team-members-on-your-account)

1. Uploaders
1. Viewers
1. Contributors
1. Admins
1. Owners

### Support

1. [Contact Support](https://vimeo.com/help/contact)
1. [Help Center](https://vimeo.com/help)

### Training

1. [Onboarding Call (GitLab team - internal use only) 202005](https://drive.google.com/file/d/1k61AoPcGBNtXIUltYEHOk6_9vFBUDGYB/view?usp=sharing)
1. [Training Call (GitLab team - internal use only) 202006](https://drive.google.com/file/d/14jHp_nZGVBml7ipz1ZpeCvuAJInrADdk/view?usp=sharing)
1. [Video School](https://vimeo.com/blog/category/video-school)

### Live Events

#### Create a live event

##### Step 1

1. Select `Live Events` in the left sidebar menu.
1. Click `Create live event` under the list of events in the table. You can also click the `New video` button in the top-left corner and select `Create live event`. 
1. A dialogue box will pop up asking you to fill in some details about your event. In the `Event title` field, title your event. 
1. Select whether this will be a one-time or recurring event.
1. Select a start date (if applicable; optional). 
1. If you select a start date, the time field will activate allowing you to input a time (if applicable, optional).
1. Choose the privacy for this event. The available options are: `Public`, `Only me`, `Password`, `People I follow`, `Private link`, or `Hide from Vimeo`. See detailed explanations of these options in the [privacy settings overview](#privacy-settings-overview).
1. Click `Next`.

##### Step 2

1. On the next page, choose settings for your live event. Under the `Event` tab in the left-hand sidebar, toggle the `Chat` functionality on or off (appears only on Vimeo where you choose to embed). [See more info on enabling, disabling, and moderating chat](https://vimeo.zendesk.com/hc/en-us/articles/360040771772-Enabling-disabling-and-moderating-chat).
1. In `Viewing privacy` you can select different privacy options for your live event.
1. Enter a description for your live event under the `Description` field. 
1. Under the video preview, you can choose a thumbnail for your video cover and edit the start time of the event.
1. Under the `Embed` tab, select the options you would like to toggle on or off before generating your embed code. First, select the preferred embed privacy. You can choose `Anywhere`, `Nowhere`, or `Specific domains`. [See live event privacy settings](#live-event-privacy-settings).
1. Under `Video Controls` toggle on/off the options for your live event.  [See more about customizing the embedded player and adding embed presets](https://vimeo.zendesk.com/hc/en-us/articles/224972808-Customizing-the-embedded-player).
1. Choose your preferred interaction tool and its respective settings (optional). See [interaction tools](#interaction-tools) for more detail.
1. Under the `Destinations` tab, select where you will be streaming your live event. Available destinations to stream: Vimeo. [More destinations coming soon](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/3872). Click `Next`. 
1. Vimeo will ask permission to use your device's microphone and camera. After acceptance, a low-res preview will be made available to test audio/video input/output. Notice a new sidebar menu available to manage the stream including: Destinations, [Chat](#chat), [Polls](#polls), [Q&A](#Q&A), [Graphics](#graphics), and [Stream Health](#stream-health). One or more of these features may not be enabled based on the set up of your live event. 
1. Once you've configured all your live stream settings and have successfully completed a dry-run, click the `Go Live` button in the top-right corner.

### Stream Health

### Graphics

### Q&A

[Live Q&A](https://vimeo.zendesk.com/hc/en-us/articles/360044207351-Live-Q-A) allows you to accept questions, have viewers vote to order questions based on popularity, publish the question to the stream, and ultimately answer them.

#### Setting up Q&A

1. Once you have set up your live event, select `Q&A` from the sidebar menu.
1. Click `Start Q&A` to open your event up to questions. You can do this before your stream or while you're live. **Note:** You cannot take action on a question until your event is broadcasting. Chat users are notified that they can begin to submit questions through [Live Chat](#chat). Questions they ask will be posted to the Q&A window immediately upon submission. They can also click the thumbs-up icon to vote on questions they like. Under the `Active` tab, questions will populate, which you can sort either by `Recent` or `Popular`.

#### Publishing Questions

1. To answer a question, hover over the question and click `Answer`. A graphic overlay will appear as a lower third with the question automatically. **Note:** You are expected to address the question within the stream; there is no option to type in an answer into the Q&A module. 
1. You can hide (and re-show) the graphic overlay by clicking `Hide (Show)` in the `Active Questions` list.
1. When you’ve finished answering the question, click `Archive` to remove the question from the list. You may also archive questions without answering them or publishing them to the stream. If you've archived a question by mistake, you can switch over to the `Archived` tab, hover over the questions and click `Unarchive`. This will put the question back in the `Active` tab.

#### Ending Q&A

1. To end your Q&A session, click `End Q&A` below the list of questions. **Note:** Ending Q&A does not end the [live chat](#chat). Live chat will end as soon as the broadcast ends and will not be available afterward. Once you end the Q&A, you can export a CSV log of the Q&A by clicking `Export` at the top of the page. 
1. If you're streaming from a recurring event, this button opens a drop-down menu with a list of the date/times of all streams in the last 30 days that you can archive; select `Current event` for the active event.

#### Q&A Export

The CSV includes the following information:

- Name (person who asked it / anonymous)
- The question
- Time submitted
- Number of upvotes
- Answered (yes/no)
- Archived (yes/no)
- Approved (yes/no/N/A)
- Q&A number (if you held multiple Q&A sessions within one stream, i.e. you started a Q&A, then ended it, then started it again prior to ending your broadcast; this lets you know if the question was asked during which Q&A session during the course of the stream).

### Polls

[Live polls](https://vimeo.zendesk.com/hc/en-us/articles/360002126447-Live-polls) allows you to insert questions into your live stream for viewers to respond to via [live chat](#chat). Polls can be used to gather feedback from viewers (answers ranked by percentage) or as a quiz (one option being the correct response). You can have as many polls as you’d like per stream, but only one poll may be open at a time.

#### Create a poll

1. Once you have set up your live event, click `Polls` in the left sidebar menu.
1. Click the `Create Poll` button.
1. Enter the question and up to four options. You have the optional ability to mark one option as the correct choice by clicking the star icon associated with that option.
1. Once your poll has been created and you are live, select `Open poll` to show this poll and allow viewers to participate. Polls can be created before going live, but they cannot be opened until you are streaming. Opened polls are pinned to the beginning of the live chat and visible to all viewers. You can keep your poll open for as long as you’d like. While open, you can choose to `Show graphic` which will show the poll options on the stream itself. The percentages for each option will continue to changes as more viewers partake.
1. Once viewers have had enough time to submit their response, click `Publish results` to close the poll so no more responses can be accepted. You can continue to use the `Show graphic/Hide graphic` button to display or hide the final results. Once your poll has concluded and you no longer need the results, you can remove it by clicking `Archive`. **Note:** Poll results will not be stored anywhere on the Vimeo account after the event so take note of them before removing them.

### Chat

Chat is disabled by default. You can enable it in [step 2 of creating a live event](#step-2). As the event owner, you have the ability to moderate chat including comment deletion and banning capabilities. 

[See more info on enabling, disabling, and moderating chat](https://vimeo.zendesk.com/hc/en-us/articles/360040771772-Enabling-disabling-and-moderating-chat).

### Destinations

Vimeo supports [simulcasting](https://vimeo.zendesk.com/hc/en-us/articles/360000352508-Simulcast-overview) which allows for simultaneous streaming on Facebook Live, YouTube, LinkedIn, and any custom RTMP destination.

[Coming soon.](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/3872)

### Interaction tools

[Interaction tools](https://vimeo.zendesk.com/hc/en-us/articles/115007469788-Video-interaction-tools-overview) allow you to engage with your audience at meaningful points within the video, and give them the opportunity to connect to additional external sites or resources.

1. `Email capture` can appear before, during, or after a video, with the option to withhold your video behind the email capture field, or let viewers skip it.
1. `Cards` are a customizable, notification-style layer that you can set to appear during playback and remain on the screen for six seconds. 
1. `End screens` let you determine exactly what appears when videos finish playing. 

### Privacy settings overview

1. `Anyone` - Allow anyone to see this video.
1. `Only me` - Make this video visible to me and no one else
1. `Only people I follow` - Make my videos visible only to people I follow on Vimeo (Note: this setting will make it so that people you follow will see your video in their feeds)
1. `Only people I choose` - I'll select people with whom I want to share this video (Note: this setting will only work for sharing with other Vimeo members you follow)
1. `Only people with a password` - Protect this video with a password (Note: you can share password-protected videos with non-Vimeo members). 
1. `Only people with the private link` - Make video visible only to people who have the link. (Your video cannot appear in channels or groups, and any credits you’ve added will be removed.)
1. `Hide this video from vimeo.com` - This video can be embedded on other sites but can’t be viewed on vimeo.com. (Your video cannot appear in channels and groups but can still be added to showcases and portfolios.)

[See more info on privacy settings](https://vimeo.zendesk.com/hc/en-us/articles/224817847-Privacy-settings-overview).

#### Live event privacy settings

1. `Anywhere` is fully open privacy.
1. `Nowhere` disables embedding completely.
1. `Only on sites I choose` allows you to input the specific URLs that are allowed to host the embedded player.

[See more info on changing the privacy settings of live videos](https://vimeo.zendesk.com/hc/en-us/articles/360001205427-Changing-the-privacy-settings-of-your-Live-videos).

### Implementation

[See epic for more info](https://gitlab.com/groups/gitlab-com/marketing/-/epics/1100). 

### Integrations

#### Okta

[In progress](https://gitlab.com/gitlab-com/gl-security/zero-trust/okta/-/issues/201). 

#### Social Media

[Coming soon](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/3872).

#### Google Tag Manager

[Coming soon](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/3770). 
