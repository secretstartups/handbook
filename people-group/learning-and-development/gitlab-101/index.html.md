---
layout: handbook-page-toc
title: GitLab 101 Tool Certification
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

Welcome to the GitLab 101 Tool certification page! Here you will find our 101 course on how to use GitLab. 

Please visit Level Up and create an account to complete the [GitLab 101 Certification](https://levelup.gitlab.com/access/saml/login/internal-team-members?returnTo=https://levelup.gitlab.com/learn/course/gitlab-101-certification) and earn the GitLab 101 Badge!

Team members can also complete the [GitLab Team Members Certification](https://levelup.gitlab.com/access/saml/login/internal-team-members?returnTo=https://levelup.gitlab.com/learn/course/gitlab-team-members-certification). All of the information contained on this handbook page can be found in the GitLab Team Members Certification on Level Up. 


### Who can benefit from this 101 training?

Everyone at GitLab needs to know how to use GitLab and be technical to some level. This training is geared toward GitLab team members who are in non-engineering roles (i.e. talent acquisition, peopleops, marketing, finance, etc) and/or have not used a DevOps tool like GitLab before. This can also be helpful for non-engineering people outside of GitLab wanting to learn how to use GitLab for personal projects.

###  When should this training be completed?

This GitLab 101 training should be completed within 30 days of joining GitLab to help you be successful and impactful in your role while using GitLab as a tool.

###  What do you need to get started?

To get started with the GitLab 101 Tool Certification you will need:

* to have your GitLab Account set up
* your Laptop
* WiFi
* 2-3 hours (this course can be completed either in one sitting or lesson by lesson)

## Objectives

1. Learn common technical terms used at GitLab
1. Learn how to open, comment on, and move GitLab Issues
1. Learn how to create a GitLab Merge Request

## Lesson 1: Technical Terminology

### What is GitLab

GitLab is a web-based DevOps lifecycle tool that provides a Git-repository manager providing wiki, issue-tracking and CI/CD pipeline features, using an open-source license.

Summarized: GitLab is a complete DevOps platform, delivered as a single application.

This will make more sense once you understand all of the terminology.

### Terminology
1. Board 
   1. **Definition:** make it possible to visualize and manage lists of issues which can be defined by one of three ways: Labels, Team members, and Milestones.
1. Branch
   1. **Definition:** a version of a project’s working tree. You create a branch for each set of related changes you make. This keeps each set of changes separate from each other, allowing changes to be made in parallel, without affecting each other.
1. Commit
   1. **Definition:** a change, or set of changes, to one or more files in the source code on a given Git branch. A commit allows you to mark the project in its current state as a kind of snapshot in time.
   1. **Example:** This is a [commit](https://gitlab.com/gitlab-com/www-gitlab-com/-/commit/e539128d235c084199047788d121141777a7fe2c).
1. DevOps
   1. **Definition:** is a set of practices that combines software development and information-technology operations which aims to shorten the systems development life cycle and provide continuous delivery with high software quality.
1. Epic
   1. **Definition:** provides a way to organize and manage a set of issues and sub-epics that share the same theme.
   1. **Example:** This is an [epic](https://gitlab.com/groups/gitlab-com/people-group/learning-development/-/epics/15).
1. Git
   1. **Definition:** is a distributed version-control system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files.
1. Groups
   1. **Definition:** are used to manage one or more related projects at the same time. You can use groups to manage permissions for your projects. If someone has access to the group (it’s a member of the group), they get access to all the projects, issues, and merge requests  in the group.
   1. **Example:** This is a [group](https://gitlab.com/gitlab-com).
1. Handbook-first approach
   1. **Definition:** it’s a process that describes documenting in the handbook before taking an action, without using other forms of communication. This ensures no duplication and having the Handbook up to date.
1. Issue
   1. **Definition:** the fundamental medium for collaborating on ideas and planning work in GitLab
   1. **Example:** This is an [Issue](https://gitlab.com/gitlab-com/people-group/gitlab-tool-training/-/issues/1).
1. Labels
   1. **Definition:** They help you organize and tag your work so you can track and find the work items you’re interested in. You can use descriptive titles like bug, feature request, or docs, as well as customizable colors.
   1. **More information on:** [labels](https://docs.gitlab.com/ee/user/project/labels.html).
1. Local
   1. **Definition:** your machine. You can also use GitLab locally, on your machine, not just in the browser.
   1. **Example:** If someone says to do something locally that means to open the terminal on your computer to make a change.
1. Markdown
   1. **Definition:** a lightweight markup language with plain-text-formatting syntax. Its design allows it to be converted to many output formats, but the original tool by the same name only supports HTML.
   1. **Example:** Take a look at our [GitLab Markdown Guide](/handbook/markdown-guide/)
1. Milestones
   1. **Definition:** are a way to track issues and merge requests created to achieve a broader goal in a certain period of time. They allow you to organize issues and merge requests into a cohesive group, with an optional start date and an optional due date.
   1. **More information on:** [milestones](https://docs.gitlab.com/ee/user/project/milestones/)
1. Merge Request
   1. **Definition:** allows you to visualize and collaborate on the proposed changes to source code that exist as commits on a given Git branch. A Merge Request (MR) is the basis of GitLab as a code collaboration and version control platform. It is as simple as the name implies: a request to merge one branch into another.
   1. **Example:** This is a [Merge Request](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/40563#0c7def9794ef444dbc7eb560126846353b630886).
1. Open Source
   1. **Definition:** denotes software for which the original source code is made freely available and may be redistributed and modified.
   1. **Example:** Our GitLab [handbook](/handbook/) is open source because anyone can make changes and contribute to it.
1. Project
   1. **Definition:** used for hosting your codebase, as an issue tracker, collaborate on code, and continuously build, test, and deploy your app with built-in GitLab CI/CD.
   1. **Example:** This is a [project](https://gitlab.com/gitlab-com/people-group/gitlab-tool-training).
1. Source Code
   1. **Definition:** a text listing of commands to be compiled or assembled into an executable computer program.
1. SSH Key (SSH = Secure Shell)
   1. **Definition:** a cryptographic network protocol for operating network services securely over an unsecured network.
1. Terminal
   1. **Definition:** is a command line input console used for entering data into, and displaying or printing data from a computer or a computing system.
1. To-Do lists
   1. **Definition:** are lists of issues, merge requests or epics where you were mentioned in.
1. Weight
   1. **Definition:** allow you to get a better idea of how much time, value or complexity a given issue has or will cost.
   1. **More information on:** [issue weights](https://docs.gitlab.com/ee/user/project/issues/issue_weight.html)

### Most Common Terms at GitLab

All of these terms will be used at GitLab, but the most common ones are:

* Project
* Issue
* Merge Request (MR)

### Practice Your Knowledge

Before taking the quiz, practice your knowledge on technical terminology with these [flashcards](https://www.cram.com/flashcards/technical-terminology-12355727).

To use the flashcards, click on the link above. You can review the flashcards in a variety of different ways. You can use them like normal (virtual) index card flashcards with the vocab word on the front and click on the index card to reveal the definition on the back. You can also use the other flashcard functions like Memorize and Test.

### Quiz - Lesson 1: Technical Terminology

Please complete the Lesson 1 assessment in [Level Up](https://levelup.gitlab.com/access/saml/login/internal-team-members?returnTo=https://levelup.gitlab.com/learn/course/gitlab-101-certification)

## Lesson 2: GitLab Issues

### What is a GitLab Issue

As you learned in the technical terminology portion, a GitLab Issue is the fundamental medium for collaborating on ideas and planning work in GitLab. That means if you are working on a project or idea and want to collaborate with other team members, you can open an issue to do that.

### How to open a GitLab Issue

To open a GitLab issue:

1. Navigate to the project where you want to open the issue
   1. **How do you know what project to use?** - Find the project that is most relevant to the issue you want to create. For example if you wanted to open an issue on something relating to our [benefits](/handbook/total-rewards/benefits/), you would open an issue in the Total Rewards project. If you do open an issue in an incorrect project, you can move it. We will cover that as the next topic.
1. Select "Issues" in the left hand side
1. Click the blue "New issue" button in the top right
1. Add in a Title for the issue
1. In the Description add any relevant information
1. Click the "preview" button at the top of the issue box to preview your issue and make sure you have formatted everything correctly
1. Decide whether the issue needs to be confidential or not
   1. **How do you know if your issue should be confidential or not?** [Transparency](/handbook/values/#transparency) is one of our values so we try to be open about as many things as possible. Only use confidential issues, if the issue must contain [non-public information](/handbook/communication/confidentiality-levels/#not-public).
1. Assign the issue to the relevant person (that might be you!)
1. If relevant: assign a milestone
1. If relevant: add a label (or multiple)
1. If relevant: add a weight
1. If relevant: add a due date
1. Click the blue "Submit issue" at the bottom

#### Video: How to open a GitLab Issue (~8 minutes)



<figure class="video_container">
  <iframe src="https://player.vimeo.com/video/484212044" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
</figure>

### How to move a GitLab Issue

It's possible that an issue will be opened in an incorrect project. If that happens, it is easy to move it to the correct project.

To move a GitLab issue:

1. Navigate to the issue you want to move
1. In the right hand menu bar, scroll all the way to the bottom
1. Select "Move issue"
1. Search for the project you want to move it to and click on it
1. Click the blue "Move" button
1. It will move the issue, and the link will change according to the new location of the issue

#### Video: How to move a GitLab Issue (~2 minutes)

<figure class="video_container">
  <iframe src="https://player.vimeo.com/video/491217472" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
</figure>

### How to comment on a GitLab Issue

To comment on a GitLab issue:

1. Open the issue that you want to comment on
1. If there are other comments, scroll to the bottom and add your comment there
1. It is also possible that you may want to reply to someone's comment that is already on the issue. To do this, you will click the speech balloon on their comment (when you hover over it it will say "reply to comment") and it will add a box for you to type your reply.
1. When you are done typing your comment, click the green "Comment" button to add it to the issue


### How to search for a GitLab Issue

Knowing how to search for a GitLab issue can be very helpful, especially if you had been looking at it but hadn't made a comment or been tagged in it. If you know some key words that were in the issue, you should be able to find it! Here's how:

1. Go to [gitlab.com](https://gitlab.com/)
1. In the top right click on the search bar
1. Type in text you want to search for and hit enter
1. On the next screen, select the group the issue is in that you are searching for. In this instance the group is `people-group`
1. Then, select the project the issue is in that you are searching for. In this instance the project is `gitlab-tool-training`
1. Click on the "issues" tab under the search bar to see all issues with the text you are searching for in that specific group and project. 

This [docs resource](https://docs.gitlab.com/ee/user/search/) has helpful tips on searching for an Issue.

#### Video: How to search for a GitLab Issue (~4 minutes)

<figure class="video_container">
  <iframe src="https://player.vimeo.com/video/537384017" width="640" height="400" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
</figure>

### GitLab Issue Labels and Issue Boards

Tags or labels are used to help sort and search for GitLab Issues.

Each GitLab Project has an Issue Board. These can be set up similar to how a kanban board would look. You can add different lists to the Issue Board based on "labels" in the project.

#### Video: GitLab Issue Labels and Issue Boards (~4 minutes)

<figure class="video_container">
  <iframe src="https://player.vimeo.com/video/491218462" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
</figure>

### Other Helpful Tips for Issues
   1. Marking issues as "Confidential" - This means everyone at GitLab still has access to see the issue. People outside of GitLab would not have access to view the issue, though.

### Quiz - Lesson 2: GitLab Issues

Please complete the Lesson 2 assessment in [Level Up](https://levelup.gitlab.com/access/saml/login/internal-team-members?returnTo=https://levelup.gitlab.com/learn/course/gitlab-101-certification)

## Lesson 3: GitLab Merge Requests

### What is a GitLab Merge Request

As you learned in the technical terminology portion, a GitLab Merge Request (MR) is a request to merge one branch into another. We want to reiterate that this is a "request" meaning you aren't going to break GitLab with just submitting your MR.

### How to create a GitLab Merge Request (i.e. How to make an update to the handbook)

To create a merge request:

1. Find the page of the [handbook](/handbook/) that you want to make the change to. (ex. [Learning & Development](/handbook/people-group/learning-and-development/))
1. Once you are on the page you want to make a change to, scroll all the way to the bottom and select "View page source"
1. This will redirect you to the file on the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) project
1. Then you will need to click the blue "Edit" button
1. Select the soft wrap/no wrap button in the top right (just above the text box) to how you prefer
1. Find the portion of the page you were wanting to change and make your proposed changes.
1. Update the "Commit message" - this should describe the changes you made in a few words (ex. Add Values Certification to Page)
1. Update the "Target Branch" - this will be similar to the commit message, but shorter and using dashes instead of spaces. Every branch name must be unique.
1. Click "Commit changes" - don't worry, this will just create your merge request, it will not make your changes reflect right away (someone still has to merge it before your changes will be reflected).
1. On the next page the "Title" will auto populate as the Commit message from the previous page
1. Answer the questions in the "Description section"
1. Assign the merge request to your manager for review
1. Click "submit merge request"

#### Video: How to create a GitLab Merge Request (~10 minutes)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/etgjyJ0SSUM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### How to search for a GitLab Merge Request

You can search for a GitLab Merge Request in the same way as you search for a GitLab Issue [outlined above](/handbook/people-group/learning-and-development/gitlab-101/#how-to-search-for-a-gitlab-issue). The only difference is to select the "Merge requests" button in the top right, rather than the Issues button.

### Helpful Tips for Merge Requests
   1. Who can merge your Merge Request (MR)? - your manager should have the ability to merge (i.e. [maintainer access](https://docs.gitlab.com/ee/user/permissions.html#project-members-permissions)). If they don't have the ability to merge, they will know who you can assign it to for review/merging.
      1. If you assign your MR to someone who isn't a Maintainer, there will be a yellow triangle with an exclamation point by their picture.
   1. Soft Wrap - when you are editing your MR, you can either select soft wrap or no wrap. If you select "soft wrap" you will be able to see all of the text in one screen. If you select "no wrap" (which is the default) you will have to scroll to the right if the text on the line is wider than the page.
   1. Squash Commits - when obtaining a merge request, there is an option to enable or disable [“Squash commits when merge request is accepted”](https://docs.gitlab.com/ee/user/project/merge_requests/squash_and_merge.html). If enabled, it combines all your merge request’s commits into one and retain a clean history.
   1. Delete Branch - when creating or editing your merge request, you can also select the [“Delete source branch when merge request accepted”](https://docs.gitlab.com/ee/user/project/merge_requests/getting_started.html#deleting-the-source-branch) option.

### Quiz - Lesson 3: GitLab Merge Requests

Please complete the Lesson 3 assessment in [Level Up](https://levelup.gitlab.com/access/saml/login/internal-team-members?returnTo=https://levelup.gitlab.com/learn/course/gitlab-101-certification)

To become certified in GitLab 101, you will have to pass (with at least an 80%) all three Lessons including: Technical Terminology, GitLab Issues, and GitLab Merge Requests.

## Feedback

We are always trying to improve. Please let us know what you thought of this GitLab 101 course by filling out our [feedback form in Level Up](https://levelup.gitlab.com/access/saml/login/internal-team-members?returnTo=https://levelup.gitlab.com/learn/course/gitlab-101-certification).
