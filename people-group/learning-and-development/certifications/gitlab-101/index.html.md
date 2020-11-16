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

### Who can benefit from this 101 training?

Everyone at GitLab needs to know how to use GitLab and be technical to some level. This training is geared toward GitLab team members who are in non-engineering roles (i.e. recruiting, peopleops, marketing, finance, etc) and/or have not used a DevOps tool like GitLab before. This can also be helpful for non-engineering people outside of GitLab wanting to learn how to use GitLab for personal projects.

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
1. Git
   1. **Definition:** is a distributed version-control system for tracking changes in source code during software development. It is designed for coordinating work among programmers, but it can be used to track changes in any set of files.
1. DevOps
   1. **Definition:** is a set of practices that combines software development and information-technology operations which aims to shorten the systems development life cycle and provide continuous delivery with high software quality.
1. Project
   1. **Definition:** used for hosting your codebase, as an issue tracker, collaborate on code, and continuously build, test, and deploy your app with built-in GitLab CI/CD.
   1. **Example:** This is a [project](https://gitlab.com/gitlab-com/people-group/gitlab-tool-training).
1. Issue
   1. **Definition:** the fundamental medium for collaborating on ideas and planning work in GitLab
   1. **Example:** This is an [Issue](https://gitlab.com/gitlab-com/people-group/gitlab-tool-training/-/issues/1).
1. Milestone
   1. **Definition:** are a way to track issues and merge requests created to achieve a broader goal in a certain period of time. They allow you to organize issues and merge requests into a cohesive group, with an optional start date and an optional due date.
   1. **More information on:** [milestones](https://docs.gitlab.com/ee/user/project/milestones/)
1. Label
   1. **Definition:** allow you to categorize epics, issues, and merge requests using descriptive titles like bug, feature request, or docs, as well as customizable colors. They allow you to quickly and dynamically filter and manage epics, issues, and merge requests, and are a key part of issue boards.
   1. **More information on:** [labels](https://docs.gitlab.com/ee/user/project/labels.html)
1. Weight
   1. **Definition:** allow you to get a better idea of how much time, value or complexity a given issue has or will cost.  
   1. **More information on:** [issue weights](https://docs.gitlab.com/ee/user/project/issues/issue_weight.html)
1. Merge Request
   1. **Definition:** allows you to visualize and collaborate on the proposed changes to source code that exist as commits on a given Git branch. A Merge Request (MR) is the basis of GitLab as a code collaboration and version control platform. It is as simple as the name implies: a request to merge one branch into another.
   1. **Example:** This is a [Merge Request](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/40563#0c7def9794ef444dbc7eb560126846353b630886).
1. Commit
   1. **Definition:** Merge requests allow you to visualize and collaborate on the proposed changes to source code that exist as commits on a given Git branch
1. Branch
   1. **Definition:** a version of a project’s working tree. You create a branch for each set of related changes you make. This keeps each set of changes separate from each other, allowing changes to be made in parallel, without affecting each other.
1. Markdown
   1. **Definition:** a lightweight markup language with plain-text-formatting syntax. Its design allows it to be converted to many output formats, but the original tool by the same name only supports HTML.
   1. **Example:** Take a look at our [GitLab Markdown Guide](/handbook/markdown-guide/)
1. Local
   1. **Definition:** your machine
   1. **Example:** If someone says to do something locally that means to open the terminal on your computer to make a change.
1. SSH Key (SSH = Secure Shell)
   1. **Definition:** a cryptographic network protocol for operating network services securely over an unsecured network.
1. Source Code
   1. **Definition:** a text listing of commands to be compiled or assembled into an executable computer program.
1. Terminal
   1. **Definition:** used for entering data into, and displaying or printing data from, a computer or a computing system.
1. Open Source
   1. **Definition:** denoting software for which the original source code is made freely available and may be redistributed and modified.
   1. **Example:** Our GitLab [handbook](/handbook/) is open source because anyone can make changes and contribute to it.

### Most Common Terms at GitLab

All of these terms will be used at GitLab, but the most common ones are:

* Project
* Issue
* Merge Request (MR)

### Practice Your Knowledge

Before taking the quiz, practice your knowledge on technical terminology with these [flashcards](https://www.flippity.net/fc.asp?k=1_jf6kg7EVGAhn5YJaxUz0TdavEfh1S2XPxyE4OnqWYE&t=card).

To use the flashcards, click on the link above. You can review the flashcards in a variety of different ways. You can use them like normal (virtual) index card flashcards with the vocab word on the front and click on the index card to reveal the definition on the back. You can also use the other flashcard functions such as: List, Practice, or Matching.

### Quiz - Lesson 1: Technical Terminology

To move on to the next Lesson, take and pass the [GitLab 101: Technical Terminology Quiz](https://docs.google.com/forms/d/e/1FAIpQLSd3G3QJJRa1XvKbUNXhJENSxoWd5907CpP4-jhvvyRcvZzwRA/viewform).

## Lesson 2: GitLab Issues

### What is a GitLab Issue

As you learned in the technical terminology portion, a GitLab Issue is the fundamental medium for collaborating on ideas and planning work in GitLab. That means if you are working on a project or idea and want to collaborate with other team members, you can open an issue to do that.    

### How to open a GitLab Issue

To open a GitLab issue:

1. Navigate to the project where you want to open the issue
   1. **How do you know what project to use?** - Find the project that is most relevant to the issue you want to create. For example if you wanted to open an issue on something relating to our [benefits](/handbook/total-rewards/benefits/), you would open an issue in the Total Rewards project. If you do open an issue in an incorrect project, you can move it. We will cover that as the next topic. 
1. Select "Issues" in the left hand side
1. Click the green "New issue" button in the top right
1. Add in a Title for the issue
1. In the Description add any relevant information
1. Click the "preview" button at the top of the issue box to preview your issue and make sure you have formatted everything correctly
1. Decide whether the issue needs to be confidential or not
   1. **How do you know if your issue should be confidential or not?** [Transparency](/handbook/values/#transparency) is one of our values so we try to be open about as many things as possible. Only use confidential issues, if the issue must contain [non-public information](/handbook/communication/#not-public).
1. Assign the issue to the relevant person (that might be you!)
1. If relevant: assign a milestone
1. If relevant: add a label (or multiple)
1. If relevant: add a weight
1. If relevant: add a due date
1. Click the green "Submit issue" at the bottom

#### Video: How to open a GitLab Issue (~8 minutes)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/iGNVJ3D0XnI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### How to move a GitLab Issue

It's possible that an issue will be opened in an incorrect project. If that happens, it is easy to move it to the correct project.

To move a GitLab issue:

1. Navigate to the issue you want to move
1. In the right hand column, scroll all the way to the bottom
1. Select "move issue"
1. Search for the project you want to move it to and click on it
1. Click the green "Move" button
1. It will move the issue and link to where the issue was before in the old project

#### Video: How to move a GitLab Issue (~2 minutes)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/nQ4llM12GP8" frameborder="0" allowfullscreen="true"> </iframe>
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
1. In the top right click on the "Issues" button
1. Click the "x" on the right of the search bar to clear
1. If there is specific text you know is in an issue or part of it's title you can search for it by entering the text in quotations. (ex. "GitLab 101")
1. If you don't know what text is in the issue, but you know who it is assigned to (aka "Assignee") you can click on the search box and select "z" from the drop down, then select "=", and then search for the handle of the team member you know it is assigned to
1. You can also search using the options of "Author", "Milestone", "Release", "Label", and "My Reaction"

This [resource](https://docs.gitlab.com/ee/user/search/) has helpful tips on searching for an Issue.

#### Video: How to search for a GitLab Issue (~4 minutes)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/3Zpcg5MFaaw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### GitLab Issue Labels and Issue Boards

Tags or labels are used to help sort and search for GitLab Issues.

Each GitLab Project has an Issue Board. These can be set up similar to how a kanban board would look. You can add different lists to the Issue Board based on "labels" in the project.

#### Video: GitLab Issue Labels and Issue Boards (~4 minutes)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/vjccjHI7aGI" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Other Helpful Tips for Issues
   1. Marking issues as "Confidential" - This means everyone at GitLab still has access to see the issue. People outside of GitLab would not have access to view the issue, though.

### Quiz - Lesson 2: GitLab Issues

To move on to the next Lesson, take and pass the [GitLab 101: Issues Quiz](https://docs.google.com/forms/d/e/1FAIpQLSeR1zOvGKrDWD1t52DNv3DdNeLblI2nPP0dm-PKD8TkNUfB7Q/viewform).


## Lesson 3: GitLab Merge Requests

### What is a GitLab Merge Request

As you learned in the technical terminology portion, a GitLab Merge Request (MR) is a request to merge one branch into another. We want to reiterate that this is a "request" meaning you aren't going to break GitLab with just submitting your MR.

### How to create a GitLab Merge Request (i.e. How to make an update to the handbook)

To create a merge request:

1. Find the page of the [handbook](/handbook/) that you want to make the change to. (ex. [Learning & Development](/handbook/people-group/learning-and-development/))
1. Once you are on the page you want to make a change to, scroll all the way to the bottom and select "Edit this page"
1. This will redirect you to the file on the [www-gitlab-com](https://gitlab.com/gitlab-com/www-gitlab-com) project
1. Then you will need to click the blue "Edit" button
1. Select the soft wrap/no wrap button in the top right (just above the text box) to how you prefer
1. Find the portion of the page you were wanting to change and make your proposed changes.
1. Update the "Commit message" - this should describe the changes you made in a few words (ex. Add Values Certification to Page)
1. Update the "Target Branch" - this will be similar to the commit message, but shorter and using dashes instead of spaces. Every branch name must be unique and we recommend starting it with your initials (ex. cg-add-values-cert-iteration-june4)
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

You can search for a GitLab Merge Request in the same way as you search for a GitLab Issue [outlined above](/handbook/people-group/learning-and-development/certifications/gitlab-101/#how-to-search-for-a-gitlab-issue). The only difference is to select the "Merge requests" button in the top right, rather than the Issues button.

### Helpful Tips for Merge Requests
   1. Who can merge your Merge Request (MR)? - your manager should have the ability to merge (i.e. [maintainer access](https://docs.gitlab.com/ee/user/permissions.html#project-members-permissions)). If they don't have the ability to merge, they will know who you can assign it to for review/merging.
      1. If you assign your MR to someone who isn't a Maintainer, there will be a yellow triangle with an exclamation point by their picture.
   1. Soft Wrap - when you are editing your MR, you can either select soft wrap or no wrap. If you select "soft wrap" you will be able to see all of the text in one screen. If you select "no wrap" (which is the default) you will have to scroll to the right if the text on the line is wider than the page.
   1. Squash Commits -
   1. Delete Branch -

### Quiz - Lesson 3: GitLab Merge Requests

Take and pass the [GitLab 101: Merge Requests Quiz](https://docs.google.com/forms/d/e/1FAIpQLSfzwgutFZegAESbgsiObhb6N8rqn4NNlWDbxACK7khh3p5hJA/viewform).

To become certified in GitLab 101, you will have to pass (with at least an 80%) all three Lessons including: Technical Terminology, GitLab Issues, and GitLab Merge Requests.

## Feedback  

We are always trying to improve. Please let us know what you thought of this GitLab 101 course by filling out our [feedback form](https://docs.google.com/forms/d/e/1FAIpQLSdtScO_hkV_mFlhlB4tiSf9tjXvrQBVMkkGCOegZlZH2yzZWQ/viewform).
