---
layout: handbook-page-toc
title: GitLab 201 Tool Certification
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Introduction

Welcome to the GitLab 201 Tool certification page! This is a self-paced course consisting of reading material, video tutorials and knowledge assessments at the end of each lesson. To become certified in GitLab 201, participants will have to pass all 3 lessons with at least 80%. We recommend that courses are completed and passed in order. 


### Who can benefit from this 201 training?

Everyone at GitLab needs to know how to use GitLab and be technical to some level. This training is geared toward GitLab team members who are in non-engineering roles (i.e. recruiting, peopleops, marketing, finance, etc) and/or have not used a DevOps tool like GitLab before. This can also be helpful for non-engineering people outside of GitLab wanting to learn how to use GitLab for personal projects. 

### Prerequsites

[GitLab 101 Tool Certification](/handbook/people-group/learning-and-development/certifications/gitlab-101/)

### What do you need to get started?

### Objectives
1. 
1.
1.

## Lesson 1: Epics

Epics let you manage your portfolio of projects more efficiently and with less effort by tracking groups of issues that share a theme, across projects and milestones. Epics are great for [project management](https://about.gitlab.com/handbook/marketing/project-management-guidelines/epics/) as they help to better [enhance your workflow](https://about.gitlab.com/blog/2020/01/21/epics-three-features-accelerate-your-workflow/).

### Uses

1. Suppose your team is working on a project/OKR that involves multiple discussions throughout different issues created in distinct projects within a Group.  With epics, you can track all the related activities that together contribute to that single project/OKR.
1. Track when the work for the group of issues is targeted to begin, and when it’s targeted to end. 
1. Discuss and collaborate on ideas and scope at a high level.  
1. Helps to report on the health status of the different issues attached.

### How to Create Epics

Epics are created on group level. To create an epic, navigate to the project’s group, on the left panel,
 
1. Click ‘epics’ 
1. Then click ‘New epic’ 
1. Type in the title of the epic and click create epic
1. This epic is referred to as the parent epic

You may choose to mark confidential by selecting Make this epic confidential checkbox.

### Video: How to Create an Epic (~x minutes)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/hxUmalpYHF4" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### Child Epics

Child epics may be added to a parent epic.  To add a child epic:

1. Navigate to the parent epic, click the add dropdown button
1. Click Add an epic
1. Type in the title
1. Create epic

### Video: How to Create a Child Epic (~x minutes)

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/2OjWGpOsBsM" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

### How to link Epics and Issues

An epic contains a list of issues and an issue can be associated with at most one epic. When you add an issue that’s already linked to an epic, the issue is automatically unlinked from its current parent.

### How to Add an Issue to an Epic

1. In the epic, click the Add dropdown button.

1. [INSERT IMAGE]
1. Click Add an existing issue
1. Either paste the link of the issue or enter the issue id

1. [INSERT IMAGE]
1. If there are multiple issues to be added, press the spacebar and repeat this step 
1. Click Add


### Add an epic to an issue:

For an existing issue, navigate to the side bar,

[INSERT IMAGE]

click Epic, type in the title of the epic you want to add and then select it from the drop down menu.

[INSERT IMAGE]  


### Helpful Tips:

**Issues** - medium for collaborating on ideas and planning work in GitLab

**Boards** - set up similar to how a kanban board would look. An issue board shows you what issues your team is working on, who is assigned to each, and where in the workflow those issues are.

**Epic** - helps to track issues across multiple projects efficiently. Epics give a high level view of the health status of different issues attached to that epic.

### Quiz - Lesson 1: Epics

To move on to the next lesson, take and pass the GitLab 201 epics quiz.

## Lesson 2: Merge Requests

In GitLab 101, we learned how to [create merge requests](https://about.gitlab.com/handbook/people-group/learning-and-development/certifications/gitlab-101/#lesson-3-gitlab-merge-requests). In this lesson, we will dive deeper into merge requests. 

### Reviewing a Merge Request

You can review a merge request to provide feedback to the author. You can start a review in the merge request diff. Diff is the view of changes to a file between branches or commits.

To review a merge request:  
1. Click on the "Changes" tab in the merge request.
1. Write your comment on a diff and click on the start a review button. 

1. [INSERT IMAGE]
  
1. To add more comments to a review, start writing a comment as normal and click the ‘Add to review’ button.
1. To resolve a thread, when replying to a comment, click the checkbox to resolve thread. 
1. Click "submit review" to publish all documents.


### Suggesting Changes to a Merge Request

You can suggest changes in the Merge Request Diff threads. The Merge Request author is able to apply these suggestions with a click, which will generate a commit in the merge request.

1. Choose a line to be changed, click add a comment icon

1. [INSERT IMAGE]
1. Then click on the Insert suggestion icon in the toolbar

1. [INSERT IMAGE]
1. In the comment, add your suggestion to the pre-populated code block

1. [INSERT IMAGE]
1. Click "Start a review" to add your comment to a review, or "Add comment now" to add the comment immediately.
1. The Suggestion in the comment can be applied by the merge request author directly from the merge request.
1. Once the suggestion has been applied, a new commit will be created and the suggested change will be pushed to the merge request's branch.  

### WIP/Draft Merge Requests

If you are still working on a merge request and not ready for it to be merged, add `WIP: ` or `Draft: ` to the start of the merge request’s title, this will prevent the merge request from being merged.

To update a WIP MR, in the changes tab, click on the pencil icon to edit the merge request.
[INSERT IMAGE]

Make your changes.  Click "commit changes".

When you are ready for it to be merged, simply remove the `WIP: ` or `Draft: ` prefix from the title of the MR.

### Quiz - Lesson 2: Merge Requests 

## Lesson 3: How to navigate www-gitlab-com project

You may search through the `www-gitlab-com` project to access the handbook. This is useful for when you are adding a new page to the handbook.  
To find the handbook, navigate to `www-gitlab-com` project, click sites - handbook - source - handbook. Click the section of the handbook you want to navigate to (eg people group, marketing)

### Video: How to Create a new handbook page

### Helpful Tips for updating the Handbook
The [markdown guide](/handbook/markdown-guide/#markdown-style-guide-for-aboutgitlabcom) page contains useful tips for updating the handbook, such as adding images, embedding documents and much more.  

### Referencing another section of the handbook for how to do something 
If you don’t know how to do something - find another instance of it in the handbook. For example, if you want to add a table to the handbook. Navigate to a section of the handbook that contains a table, the [People Group](/handbook/people-group/) page is a good example.  
Click "view source" to see how the table looks. You may copy/paste, then edit to suit your needs.
