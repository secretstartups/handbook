---
layout: handbook-page-toc
title: GitLab Learn Admin Documentation
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## Best practices for content creation and organization in GitLab Learn

These best practices are iterative and will continuously update. As the LXP implementation team discovers new ways to utilize EdCast, these best practices will be updated. EdCast admins and team members should consider opening an MR to this page and adding best practices as they discover new use cases and tools in the platform for content creation and curation. 

If EdCast admins have questions about best practices in the LXP or need support in making decisions about how to upload and organize their content, please reach out to the [L&D team in Slack](https://app.slack.com/client/T02592416/CMRAWQ97W/thread/CAEEVBR2M-1608029461.344100).

If you're just getting started using EdCast, watch this short overview of the user experience in the platform and how new learning content fits into this design.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Hm7SLOiV08o" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### Creating new learning content

Definitions and examples of SmartCards, Journeys, Pathways, Channels, Carousels, Channels, and Groups can be found in our [GitLab Learn contribution docs](/handbook/people-group/learning-and-development/gitlab-learn/contribute/#learning-content-in-the-lxp)

#### SmartCards

1. SmartCards created in a Pathway or Journey are only discoverable from within that pathway or Journey. Create SmartCards with quizzes, polls, or other action items from learners from within the Journey or Pathway
1. Create content based SmartCards independently from a Journey or Pathway so that content can be repurposed and discovered

#### Pathways

1. Badges can be awarded upon completion of a Pathway. If the Pathway is not part of a Journey, use the Pathway level badges

#### Journeys

1. Badges can be awarded upon the completion of a Journey. It's best to require all pathways be completed in order to earn a badge, and use a Journey level badge over Pathway level badges


### Order of Operations for Content Creation

#### Step 1: Determine if content is `public` or `private`


| Content Type | Definition | Example Audience |
| ----- | ----- | ----- |
| `private` | Content is only visible to the assigned learner or assigned group | Content for the GitLab team or customers only |
| `public` | Content is discoverable and visible to all learners in the platform | Content for wider community members |


#### Step 2: Build smartcards depending on content status 

##### Building `public` content

1. Build SmartCards independently of any Pathways or Journey
1. Make sure the `private` content checkbox is unchecked for SmartCards, Pathways, and Journeys
1. Add SmartCards to relevant Pathways, Journeys, Channels, and Groups

**Example:** L&D creates a publicly available course called GitLab 101. The SmartCards for this course link to the handbook and should be public to all users in the platform. The team will create each SmartCard independently in the EdCast platform, then add them all to a Pathway. Quizzes for the course will be created within the Pathway to utilize progressive unlocking features. The course can be broadcasted on public channels for new learners to discover the content.

##### Building `private` content 

1. Build Smartcards within a Pathway or Journey
1. Make sure the `private` content checkbox is checked for SmartCards, Pathways, and Journeys
1. Assign content directly to an individual user or group

**Example:** L&D uploads a compliance course with graded content for a specific group of learners. Since there is graded, interactive content, we want this path to only be assigned to the GitLab team. SmartCards will be built within a private Pathway that will be assigned directly to team members via a Group. In the future, the team might create a public course without the graded elements that could be public for the wider community.

##### Building content with both `public` and `private` elements

Option 3: If parts of content are for certain audience and parts are available to all learners

1. Create a Pathway and confirm the `private` content checkbox is checked
1. Create `private` content in SmartCards in a the Pathway
1. Create `public` content in a SmartCard outside of the private Pathway
1. Assign Pathway to specific learners or groups

**Example:** L&D hosts a [manager challenge course] (/handbook/people-group/learning-and-development/manager-challenge/) with graded content for a specific group of learners. The team wants the manager content available for the wider community but needs the graded content to be restricted to assigned learners. SmartCards with public content will be built independelty of any Pathway, then added to the private manager challenge Pathway. SmartCards with private content will be built within the private manager challenge Pathway. This private Pathway will be assigned to specific audiences and the wider community can discover content in SmartCards.

There is also the option to organize these public SmartCards into a second Pathway that the wider community can access without the graded requirements. Perhaps a quick quiz or poll could be utilized here instead. 


### Choosing between a badge or certification

#### Badges

Badges are available with the creation of both pathways and journeys and are awarded to the learner on the EdCast platform upon completing a set Pathway or Journey. Badges can also be [shared by the learner](/handbook/people-group/learning-and-development/gitlab-learn/user/#sharing-your-gitlab-learn-badges) on their LinkedIn profiles.

Teams should choose to use a badge to recognize learners achievements when:

- Learning Pathways are completed
- Journeys that do not require an official certification or accreditation 
- Setting goals, motivating behaviors, representing achievements, and communicating success

Follow the steps below for [creating a badge in EdCast](/handbook/people-group/learning-and-development/gitlab-learn/admin/#creating-a-badge)

#### Certifications

Certifications are available for content updated in the Leapest LMS Lite with the combination of assessments created in Mettl. The certifications can be shared externally.

Teams should choose to use certifications to recognize learners achievements when:

- Learners require an official certification upon completion
- Establishing credibility in a specific skill area, etc.


### Image guidelines

The L&D team is collaborating with the GitLab Brand team to determine our best approach to using image in the LXP. Internal team members can refer to this [confidential issue](https://gitlab.com/gitlab-com/marketing/inbound-marketing/growth/-/issues/606#note_463614873) during the collaboration.

When image guidelines are set, this section will be updated to reflect how the team will use images to communicate content in the LXP.

#### Images for SmartCards

#### Images for Channels

#### Images for Groups

#### Finding photographs

The GitLab team will use the following photographers on [Unsplash.com](https://unsplash.com/) for images in the LXP.

- [LinkedIn Sales Navigator](https://unsplash.com/@linkedinsalesnavigator)
- [WOCintech](https://unsplash.com/@wocintechchat)



### Peer review content before publishing

It's important to have another member of your team review your content before making it live on the platform. Consider using this process to review content in the LXP. If your team decides on a different peer-review process, please document on this page.

#### Prior to peer review

1. The content creator or curator builds the content in the LXP, including opening SmartCards, branded images, and organizing Pathways and Journeys
1. Mark content to `save for later`, which leaves it in a draft state (not yet published)
1. Team collaborates in Slack to find a reviewer for their private content by sharing the direct link to EdCast
1. Reviewer uses the following checklist to confirm that content is ready to be shared with the wider GitLab Learn audience:

#### Content review checklist items

To review in the front end of GitLab Learn

1. Click into the `edit` mode to review content in each Journey or Pathway
1. Content is organized in a Pathway or Journey
1. Name is clear and identifies what the learner will achieve upon completion
1. Description of the Pathway or Journey clearly defines the content
1. Images are branded based on correct image guidelines
1. Learning level is set
1. Badge status is set and uploaded
1. Each SmartCard has a clear description

To review in the EdCast backend

1. Language is specified
1. Tags are added based on related content keywords
1. Relevant channels are included
1. User taxonomy topics are chosen

When the peer-review is complete, content should be switched on by the content creator to the `published` state.


### Sharing content with learners

#### Using groups

Groups are best utilized to organize learners around a specific quality. Examples include role and team. Consider these best practices when creating a group:

1. Decide if your group is private or public. Private groups cannot be discovered by learners who are not members of the group. These are best used when you want to organize a group of only your direct team members. Public groups are discoverable by any learner on the platform. These are best used when you'd like to broadcast the group to a wide audience
1. Groups can be used to assign content to a specific group of people. Learning can be assigned to all members of a group
1. When new members are added to a group, they will automatically be assigned all content that has been assigned to that group
1. Groups offer a space to create a community of learners around a similar topic or goal
1. All groups must have a group administrator that will take responsibility for managing content in the group, curating new content for the group, and creating new ways to maintain a community. Group admin are encouraged to open an MR to this page and add best practices for group management

##### Inviting new members to groups

Engage learners in groups using the following practices

1. Learners automatically added by the HRIS integration from BambooHR to groups based on their role in the organization
1. Manually adding users to groups by navigating to the group and clicking the `invite` option
1. Broadcast open groups on the Discover page to invite new members


#### Broadcasting on Channels

Channels are used to collect and broadcast information based on like content. Users can follow channels to stay up to date on all new learning content in a specific area of interest. 

1. Use Channels to share content with a wider audience. For example, if the L&D team created a training on effective communication for the GitLab team and assigned it to the GitLab team group, the same content could be shared on a Remote Communication Channel so the wider community could train on this course as well
1. Channels should have a clear title and description that defines what content the user will find in the channel
1. SmartCards, Pathways, and Journeys can be shared to channels upon creation or can be added to relevant channels later on
1. Channels can have multiple curators to encourage collaboration and content sharing


### Designing the discover page

The discover page is the page where learners will land upon logging into the LXP. On this page, users can discover new content, navigate to their followed channels, find their groups, and more.

The discover page can be leveraged by admin to: 

- advertise new learning opportunities
- share new channels
- highlight learning from specific users

The discover page is also curated based on the user. For example, if a carousel appears on the discover page that includes private groups, only groups that the user is a part of will appear.

Use these best practices when designing and updating the discover page in EdCast:

1. Consider multiple user perspectives when adding static content to the discover page. For example, the first iteration of the discover page includes links to EdCast user docs, which is relevant for all users in their first few times accessing the platform 
1. Use custom carousels to organize content by topic. Carousels can display either channels or users
1. Custom carousels with channels should be clearly named and invite the learner to explore a specific topic
1. Custom carousels with users should feature engaged learners and leaders in the platform 


## Management and maintenance of content using EdCast

This section documents specific workflows in EdCast that admin will use when creating and maintaining content. As the LXP implementation team discovers new ways to utilize EdCast, these processes shoud be updated. All admin should consider opening an MR to this page and workflows as they explore new tools in the platform.

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
1. Choose `select type` and decide on the type of channel you'd like to create. You can feature users, SmartCards, or channels in a carousel
1. Add a name to the carousel. This name will appear on the discover page above the carousel and should indicate what the learner will find or achieve in this carousel
1. Click `create carousel`
1. This will open a tab where you can further build the carousel
1. If you create a carousel of smart cards, use the `default` rectangular shape for display. If you create a carousel of channels, use the `classic icon` shape for display
1. Add relevant channels or SmartCards by searching and clicking on the content you'd like to feature. You can drag and drop these items to arrange the order and delete unnecessary content using the trash icon
1. When you've completed your carousel, click the `done` button
1. Return to the `custom carousels` tab and be sure the enable/disable tab is `on` for it to appear on the discover page. If you'd like to save the carousel to be featured at a later date, leave this tab in the `off` mode

#### Editing existing custom carousels

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `content` tab
1. Click on `custom carousels`
1. Here, you can edit and enable/disable carousels. Disabled carousels will not be visible on the Discover page
1. Click on the pencil icon
1. In editing a carousel, you can change the style and add channels, users, or SmartCards. When you're done editing, click the `done` button to save your changes 
1. You can update the name of your carousel. Click the `update carousel name` button to save your changes


### Editing the Discover page

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `settings` tab
1. Click on `configuration`
1. Navigate to the `discover` tab
1. On this page, you can
     - Drag and drop carousels to edit their arrangement on the discover page
     - Rename built-in carousels
     - Toggle built-in carousels to be on or off


### Journeys, Pathways, and SmartCards

Journeys, Pathways, and SmartCards are initially created in the front end of EdCast. Moderation and limited editing occurs in the admin backend. The following steps outline how to access these limited edits and moderate journeys, pathways, and smart cards. Steps for contributing new content to EdCast are outlined in our [contribute to the LXP handbook section](/handbook/people-group/learning-and-development/gitlab-learn/contribute).

#### Editing Journeys, Pathways, and SmartCards

1. Login to Edcast and navigate to the `admin` panel
1. Click on the `content` tab
1. Choose either the `SmartCards`, `Journeys`, or `Pathways`
1. In each tab, you'll find a list display of all the content in each type. From this list, you can:
     - View data about the content, like creation date, creator, title, tags, related channels, and state
     - Promote content using the toggle on/off option
     - Delete content using the trash icon
     - Edit backend content information by clicking on the pencil icon

##### Limitations of backend content editing

Edits that you'd like to made related to the arrangement of content in the LXP will be done in the front end. The following are examples of edits you **cannot** make in the admin section and will need to use the EdCast front end to edit:

- Arrangement of SmartCards in a Pathway, or Pathways in a Journey
- Badging information

#### Moderating content

Admin processing for moderating content will be outlined in future iterations.


### Creating a badge

Badges are used in the EdCast platform to award learners who have finished a Pathway or Journey. Badges can be shared in the EdCast platform and externally on learner's LinkedIn profiles. Use the GitLab [requesting design help process](https://about.gitlab.com/handbook/marketing/corporate-marketing/brand-activation/brand-guidelines/#requesting-design-help) to request a new badge.

#### Adding a badge to EdCast

1. If necessary, collaborate with the brand team to [create a new badge](https://about.gitlab.com/handbook/marketing/corporate-marketing/brand-activation/brand-guidelines/#requesting-design-help). Otherwise, locate the existing badge file
1. Email EdCast account rep with the request to upload the file to the platform
1. Navigate to the pathway or journey you'd like to add the badge to. In the `create` or `edit` tab, navigate to the `badge` setting
1. Mark the check box to indicate that `Upon completing this pathway/journey, assignee will get a badge`
1. Decide if you'd like to unlock the badge after a quiz, and mark the checkbox if needed
1. Click on the badge you'd like to associate with the course
1. Add a badge name
1. Click the `done` button


## Contribution Approvals

Admin process for approving content contributed to the LXP is coming soon.

## Reporting

Admin process for reporting from EdGraph is coming soon.




