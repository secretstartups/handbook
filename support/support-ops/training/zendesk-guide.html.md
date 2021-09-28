---
layout: handbook-page-toc
title: 'Zendesk Guide Training'
category: Zendesk
description: 'Training documentation concerning Zendesk Guide'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## What this covers

This training material will cover the following topics:

* a broad overview of what a Zendesk Guide is.
* the various components of Zendesk Guide.
* GitLab Support Ops change management process for Zendesk Guide.

## What is Zendesk Guide

Zendesk Guide is the system that generates the support portal and related
matters, such as:

* Help articles
* General appearance
* Built-in integrations

A more general way to think of it is it is the Help Center.

## Accessing Zendesk Guide

The main way to access Zendesk Guide is to click the 4 squares in the top-right
of the page and then select Guide. This will open up the Zendesk Guide in a new
tab.

From there, you can click on `Guide admin` in the top-right of the page to get
to the admin page for Zendesk Guide.

**Note**: If you do not see the `Guide admin` link, you are likely in preview
mode. At the top of the screen, this should be indicated, along with a link you
can click to leave preview mode.

## Components of Zendesk Guide

On the admin page for Zendesk Guide, you will find several icons on the
left-hand side of the page:

| Position | Icon Description | Meaning |
|:--------:|------------------|---------|
| 1 | Open book | Manage articles |
| 2 | Text bubble | Moderate content |
| 3 | 3 lines | Arrange content |
| 4 | Eyeball | Customize design |
| 5 | User with lock | User permissions |
| 6 | Gear | Settings |

### Manage articles

This section is where you manage articles that are used in Zendesk Guide. From
here you can publish/unpublish articles, modify labels/author/permissions,
archive/unarchive articles, and delete articles.

Clicking on an article will bring up the editor for said article.

### Moderate content

This section is where you would do moderation on content. As we do not use user
content (comments, articles, etc.), this section can be ignored.

### Arrange content

This section let's you rearrange and import content. As we largely do not use
articles, this section can be ignored.

### Customize design

This section lets you manage the appearance of the support portal. As this
section handles edits to the support portal, see
[editing the support portal](#editing-the-support-portal) for more information.

### User permissions

This page lets you configure the user permissions for the support portal. This
section is separated into 2 more sections:

#### User segments

This section let's you configure user groupings. With our setup, there should
only be two (and these are built into Zendesk Guide):

* Agents and admins (user tpye: Staff)
* Sign-in users (user tpye: Signed-in users)

You should not need to change this section as it is largely unused.

#### Management permissions

This section let's you manage permissions based on user segments. You should not
need to change this section as it is also largely unused.

### Settings

This page lets you configure the settings for Zendesk Guide. This section is
separated into 3 more sections:

#### Guide settings

Here you handle content management, security, requests, and integrations
settings for the help center. These settings should not normally be changed
without extensive communication and testing, as they can greatly impact the user
experience.

* Content management
  * Anonymous voting on aritcle - unchecked
  * Spam filter
    * Content moderation - checked
    * Moderate all content
  * User profiles - unchecked
* Security
  * Display unsafe content - checked
  * Require sign in - unchecked
* Requests
  * Sort by oldest comment to newest
  * Enable agents to manage requests from Help Center - unchecked
* Integrations
  * Google Analytics - checked
  * Tracking ID is filled out (do not change this)
* Powered by Zendesk logo - unchecked

#### Language settings

Here you can enable multiple languages for the support portal. We currently do
not use any other language than `English (United States)` at this time. The
Help Center name for this language should be `GitLab, Inc.`.

#### Gather settings

This lets you handle how users can provide ideas and ask questions. Generally
speaking, we do not use this section, as we prefer to keep all documentation
on the GitLab side instead of within Zendesk. You should not need to modify
these settings, which should have all of the checkboxes unchecked.

## Adding articles

To add an article, click the `Add` drop-down in the top-left of the page, and
then click `Article`.

This will bring up the Article creation page. From here, you can enter the
various values relating to the article (title, content, permissions, visibility,
etc.). After doing so, you should save the article by clicking the blue `Save`
button in the top-right of the page.

**Note**: Saving an article does **not** publish it.

To public the article, click the down arrow next to the blue `Save` button and
then click `Publish`.

## Editing the support portal

Editing the support portal (not the forms within it but the portal appearance
itself) is done via Zendesk Guide. From within Zendesk Guide, you would first
go to the [customize design page](#customize-design). From there, you will see
a list of available themes to use. We currently use the `GitLab Support` theme.

To begin editing the theme, you will first click on `Customize` on the live
theme (bottom-right of the theme box). This will take you to the theme editor
page. Here, you will see the theme options on the left-hand side. Tweaks here
are reflected live via the display on the page (right-side, takes up most of the
page).

To change the page you are live viewing (or the role you are seeing it as), you
will use the two drop-downs at the top of the live preview that read `Templates`
and `Preview role`. These are useful for changing the page itself and the
perspective you are viewing the page as. Some pages can only be shown when in a
specific role, so take this into mind when editing the theme settings.

After making any changes, make sure to publish the changes via the blue
`Publish` button in the bottom-right of the page.

**Note**: Changes here do impact the core theme's code, namely the theme's
`manifest.json` file. If you make changes in the theme's settings, you will want
to ensure the theme's files in the zendesk-theme repo is updated as well. See
[exporting/importing the theme](#exporting-and-importing-themes) for more
details on obtaining the code to use.

### Editing the code of the support portal

**Warning**: Tweaking code can severely break the functionality of the support
portal. Broken javascript can result in forms not rendering or working properly.
Ensure you perform thorough testing before ever changing production code.

To edit the code itself, you will want to click the white `Edit code` button
when on the theme editor page. Doing so will bring you to the code editor page
for the theme. Here, you can select the various files that make up the theme and
edit the code itself. This is especially useful for tweaking the JS/CSS/etc. of
the theme to enhance it beyond its normal capabilities.

**Note**: This does require an in-depth knowledge of HTML, CSS, JS (including
jQuery), etc. If you do not feel comfortable doing this, please reach out to
your fellow Support Ops team members or a Support Ops Manager for assistance.

Once you are done editing the code, you can either hit `Ctrl+s` (`Cmd+s` for
Mac) on your keyboard or click the white `Publish` button in the top-right of
the page to save/publish the changes to the Zendesk instance.

### Exporting and importing themes

To export (i.e. download) a theme, go to the themes page and click the three
vertical dots over the theme you wish to download. After doing so, click the
`Download` option. This will then download a zip file containing all the theme
files. You can extract this to see the theme files as needed.

To import a theme (i.e. upload it), go to the themes page and click the blue
`Add theme` button. This will have a drop-down appear. Click `Import theme` on
the drop-down, then select the zip file from your computer. After doing so, the
theme will be uploaded and added to the Zendesk Guide themes page.

#### Converting the repo into a zip file

To convert the zendesk-theme repo into a zip file, you would want to do the
following:

* For Zendesk Global

```bash
rm -fr ~/zendesk-theme-temp
git clone git@gitlab.com:gitlab-com/support/support-ops/zendesk-theme.git ~/zendesk-theme-temp
cd ~/zendesk-theme-temp
zip -r zendesk-theme * -x .git .gitignore
mv zendesk-theme.zip ~/Downloads/
```

* For Zendesk US Federal

```bash
rm -fr ~/zendesk-theme-temp
git clone git@ops.gitlab.net:gitlab-com/support/zendesk-us-federal/zendesk-theme.git
zendesk-theme-temp
cd ~/zendesk-theme-temp
zip -r zendesk-theme * -x .git .gitignore
mv zendesk-theme.zip ~/Downloads/
```

Either script will create a zendesk-theme.zip file in your `Downloads` folder
you can then use for importing.

## Change management

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/MSkyalDswso" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

**Note**: While the above video is for Zendesk Automations, the exact same
process applies for Zendesk Guide. The sole difference in the tags used on
the requests/merge requests and how the change is implemented to production.

To ensure changes runs smoothly, we do our changes in set stages.

### Request stage

All Zendesk Guide changes should start with a request issue. This issue should
stem from a
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue where the proposal was discussed.

The request should not be "make this change in Zendesk," unless the request is
coming directly from a Support Ops team member. If the request does not detail
_what_ the desired effect is, we as Support Ops should instead push back on the
request and ask the requester detail _what they want to see as a result_ and not
_what they want done in Zendesk_.

All request issues should contain the following labels at creation:

* "Support-Ops-Category::Theme"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

While we have scripting and templating in place to find when these are missing,
you should strive to ensure those are present. If you find any of them missing,
please add them.

Once the request is in good standing, you may assign it to yourself (if it is
not already) and add the tag "SupportOps::Doing" to indicate you have started
working on this.

### Testing stage

When making a change to Zendesk Guide, we start the process in the Zendesk
sandbox. In the Zendesk sandbox for the corresponding Zendesk instance this impacts, you will make the desired changes. Once this is done, update the
original request issue with the following:

* A link to the support portal in the Zendesk sandbox where the changes can be
  viewed
* However much time it took you to implement the changes in the sandbox
  * This can be down using the `/spend X minutes`, where `X` is the number of
    minutes you spent.
* What testing needs to be done.

You will then test these changes. This process should take no less than 3 days
after making the changes. This is to ensure that not only is the change tested
thoroughly, but others have time to review your tests and the results.

Often, you will need assistance testing out changes. Should this be required,
consider reaching out to the following for assistance in testing the changes:

* The original requester
* A fellow Support Ops team member
* A Support Ops Manager

If testing provides failed results, this means we need to update the original
request issue with what happened and why. If this is because of a flaw in the
request, we should state as much and recommend the requester go back to the
original
[support-team-meta](https://gitlab.com/gitlab-com/support/support-team-meta/)
issue to re-discuss. If it failed due to our implementation, we should detail
what was wrong with the implementation and propose a new method to try.

Once the changes have been thoroughly tested (and are successful), make sure to
add the time you spent doing the testing to the original request.

At that juncture, update the issue with a comment to state testing has completed
and was successful. You should give the requester an opportunity to review the
test(s) and result(s). Ask if they would like to review them. If they decline,
you may move on. If they wish to do so, await their update after they have
reviewed the results.

### Repo stage

To prepare for the implementation, you will need to create a merge request to
the corresponding zendesk-theme repo (see [Useful links](#useful-links)
down below).

After creating the merge request, make sure it is linked in the original
request and you have added any additional time spent to the requester issue.

From here, have one of your fellow Support Ops team members or a Support Ops
Manager review the merge request and add their approval (or comments). Once
approval has been added, an implementation date can be determined.

**Note**: All merge requests in the zendesk-theme repo should contain the
following labels (the same as with issues):

* "Support-Ops-Category::Theme"
* A priority label, which is one of:
  * "Support-Ops-Priority::Urgent"
  * "Support-Ops-Priority::High"
  * "Support-Ops-Priority::Normal"
  * "Support-Ops-Priority::Low"
* "Zendesk::Global" if this is about the Zendesk Global instance
* "Zendesk::US-Federal" if this is about the Zendesk US Federal instance
* "SupportOps::To Do"

### Pre-implementation announcement stage

Once an implementation date has been determined, you need to announce this
upcoming change. To do this, go to the Slack channel
`#support_ops-accouncements` and click the lightning bolt on the text box (this
is the shortcuts icon). From there, select `Support Ops Announcement`. This
will cause a form to pop-up. Fill out the form to generate a message in the
`#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

### Implementation stage

In this stage, you will make the changes in the production Zendesk Guide and
then merge the results in the zendesk-theme repo.

### Post-implementation announcement stage

Once an implementation has been completed, you need to announce the change. To
do this, go to the Slack channel `#support_ops-accouncements` and click the
lightning bolt on the text box (this is the shortcuts icon). From there, select
`Support Ops Announcement`. This will cause a form to pop-up. Fill out the form
to generate a message in the `#support_ops-accouncements` channel.

The form asks for the following:

* **Who** is this impacting
* **What** is changing
* **When** is it changing
* **Why** is it changing
* Other info (optional)
* **Request link**

Once it posts, you will need to screenshot the post message and add that to the
`Support Operations Corner` of the
[Support Week in Review](https://docs.google.com/document/d/1eyMzbzImSKNFMpmu33C6imvC1iWEWHREJqaD6mkVDNg/edit?usp=sharing)
document

After adding it in the Support Week in Review, you then want to cross-link
(copy the link to the post) the announcement to the following channels:

| Channel | When to cross-link |
|---------|--------------------|
| `#support_operations` | Every time |
| `#support_team-chat` | If this impacts Support only or Everyone |
| `#spt_managers` | If this impacts Support only or Everyone |
| `#whats-happening-at-gitlab` | If the change is concerning SLA OR provisioning/deprovisioning |

## Useful links

* [Zendesk Guide resources](https://support.zendesk.com/hc/en-us/articles/204231676-Guide-resources)
* [Zendesk Global support portal](https://support.gitlab.com)
* [Zendesk US Federal support portal](https://federal-support.gitlab.com)
* [zendesk-theme Global repo](https://gitlab.com/gitlab-com/support/support-ops/zendesk-theme)
* [zendesk-theme US Federal repo](https://ops.gitlab.net/gitlab-com/support/zendesk-us-federal/zendesk-theme)
