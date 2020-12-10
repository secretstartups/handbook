---
layout: handbook-page-toc
title: EdCast Admin Documentation
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The following processes are used by administrators of the EdCast platform.

## Content Management

### Channels

#### Creating a new channel

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `content` tab
1. Click on `channels`
1. Click on `add channel`
1. In the `setup` tab, define the following for your channel:
     - Name: This is the name users will see on the discover page and across the top of the channel
     - Description: Provide a short text description about content this channel will broadcast
     - Profile image: Refer to the image guidelines below 
     - Topics: Add at least 3 topics to categorize content that will be in this channel. This will help users discover the channel in the platform
     - Provider: Define who is creating the channel or where the content is coming from. For example, 'GitLab Field Enablement Team'. This step is not required.
     - Provider Image: Add an image to correspond with the provider above. This step is not required. This image will overwrite the channel image
     - Private, Open, Allow Follow, and Automated Pin Cards: Confirm all permissions
1. Click `save channel`
1. After you click `save channel`, the following tabs will open for editing: `content`, `people` and `carousels`
1. These tabs will allow you to further define permissions for your channel. These are not required to create your channel, but will help customize and organize content. 

**Documentation Note:** For the purposes of MVC documentation, the L&D team will stop channel documentation here and iterate in the future as we discover how customization within these additional tabs can be leveraged.

### Editing an existing channel

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `content` tab
1. Click on `channels`
1. Here, you can turn the `promotion` tab on or off if you'd like to promote the channel
1. You have the option to delete or view the history of the channel, see the title, and related user information
1. Locate the channel you'd like to edit in the list. Click on the small pencil button to edit. 
1. Follow the steps above for `Creating a new channel` to make any edits or updates to the existing channel


### Carousels

#### Creating a custom carousel

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `content` tab
1. Click on `custom carousels`
1. Choose `select type` and decide on the type of channel you'd like to create. You can feature users, smart cards, or channels in a carousel
1. Add a name to the carousel. This name will appear on the discover page above the carousel and should indicate what the learner will find or achieve in this carousel
1. Click `create carousel`
1. This will open a tab where you can further build the carousel
1. If you create a carousel of smart cards, use the `default` rectangular shape for display. If you create a carousel of channels, use the `classic icon` shape for display
1. Add relevant channels or smart cards by searching and clicking on the content you'd like to feature. You can drag and drop these items to arrange the order and delete unnecessary conent using the trash icon
1. When you've completed your carousel, click the `done` button
1. Return to the `custom carousels` tab and be sure the enable/disable tab is `on` for it to appear on the discover page. If you'd like to save the carousel to be featued at a later date, leave this tab in the `off` mode

#### Editing existing custom carousels

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `content` tab
1. Click on `custom carousels`
1. Here, you can edit and enable/disable carousels. Disabled carousels will not be visible on the Discover page
1. Cick on the pencil icon
1. In editing a carousel, you can change the style and add channels, users, or cards. When you're done editing, click the `done` button to save your changes 
1. You can update the name of your carousel. Click the `update carousel name` button to save your changes


### Editing the Discover page

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `settings` tab
1. Click on `configuration`
1. Navigate to the `discover` tab
1. On this page, you can
     - Drag and drop carousels to edit their arrangement on the discover page
     - Rename built in carousels
     - Toggle built in carousels to be on or off


### Journeys, pathways, and smart cards

Journeys, pathways, and smart cards are initially created in the front end of EdCast. Moderation and limited editing occurs in the admin backend. The following steps outline how to access these limited edits and moderate journeys, pathways, and smart cards. Steps for contributing new content to EdCast are outlined in our [contribute to the LXP handbook section](/handbook/people-group/learning-and-development/gitlab-learn/contribute).

#### Editing journeys, pathways, and smart cards

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `content` tab
1. Choose either the `smartcards`, `journeys`, or `pathways`
1. In each tab, you'll find a list display of all the content in each type. From this list, you can:
     - View data about the content, like creation date, creator, title, tags, realted channels, and state
     - Promote content using the toggle on/off option
     - Delete content using the trash icon
     - Edit backend content information by clikcing on the pencil icon

##### Limitations of backend content editing

Edits that you'd like to made related to arrangement of content in the LXP will be done in the front end. The following are examples of edits you **cannot** make in the admin section and will need to use the EdCast front end to edit:

- Arrangement of smartcards in a pathway, or pathways in a journey
- Badging information

#### Moderating content

Admin processing for moderating content will be outlined in future iterations.


### Image guidelines

The L&D team is collaborating with the GitLab Brand team to determine our best approach to using image in the LXP. Internal team members can refer to this [confidential issue](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/606#note_463614873) during the collaboration.

When image guidelines are set, this section will be udpated to reflect how the team will use images to communicate content in the LXP.

#### Images for smartcards

#### Images for channels

#### Images for groups

#### Finding photographs

The GitLab team will use the following photographers on [Unsplash.com](https://unsplash.com/) for images in the LXP.

- [LinkedIn Sales Navigator](https://unsplash.com/@linkedinsalesnavigator)
- [WOCintech](https://unsplash.com/@wocintechchat)


### Creating a badge

Badges are used in the EdCast platform to award learners who have finished a pathway or journey. Badges can be shared in the EdCast plaform and externally on learner's LinkedIn profiles. Use the GitLab [requesting design help process](https://about.gitlab.com/handbook/marketing/inbound-marketing/digital-experience/brand-guidelines/#requesting-design-help) to request a new badge.

#### Adding a badge to EdCast

1. If necessary, collaborate with the brand team to [create a new badge](https://about.gitlab.com/handbook/marketing/inbound-marketing/digital-experience/brand-guidelines/#requesting-design-help). Otherwise, locate the existing badge file
1. Email EdCast account rep with the request to upload the file to the platform
1. Navigate to the pathway or journey you'd like to add the badge to. In the `create` or `edit` tab, navigate to the `badge` setting
1. Mark the check box to indciate that `Upon completing this pathway/journey, assignee will get a badge`
1. Decide if you'd like to unlock the badge after a quiz, and mark the checkbox if needed
1. Click on the badge you'd like to associate with the course
1. Add a badge name
1. Click the `done` button


## Contribution Approvals

Admin process for approving content contributed to the LXP is coming soon.

## Reporting

Admin process for reporting from EdGraph is coming soon.




