---
layout: handbook-page-toc
title: "GitLab Project Management Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---
# GitLab Project Management Hands-On Guide
{:.no_toc}

## LAB 2: CREATE AN ORGANIZATIONAL STRUCTURE IN GITLAB

### A. Review groups and projects for GitLab's own source code

1. _In a new browser tab_, navigate to [https://gitlab.com/gitlab-org](https://gitlab.com/gitlab-org) 
1. Click into the **Frontend** subgroup (you might have to scroll to the second page of subgroups to find it). Within the **Frontend** subgroup, note the presence of projects and additional subgroups. Spend a few moments exploring some of these subgroups and projects.

### B. Create an organizational structure in GitLab

1. Back in the GitLab training environment, in the top bar, navigate to **Menu > Groups > Your groups** 
    - If you are in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your Session's subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    - If you are in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.
1. Click the **New Subgroup** button.
1. In the **Subgroup name** field, type `DigiBit Technologies`
1. Note that because this group is in the training environment, it can only have the **Private** visibility level.   
1. Click **Create subgroup**.
1. Within the **DigiBit Technologies** group, create this subgroup structure. Remember that the breadcrumbs are a good way to navigate between subgroups when you're creating a multi-level collection of groups and subgroups.
    - **Software**
      - **Core**
      - **Android**
      - **iOS**
    - **Infrastructure**
    - **Security**

### C. Create a new project

1. Navigate to the **Core** subgroup you just created.
1. Click **New project**. 
1. Click **Create blank project**.
1. In the **Project name** field, enter `Family Budget Calculator`<br/>
1. Leave the **Visibility Level** at the default selection.
1. Enable the **Initialize repository with a README** checkbox.
1. Click **Create project**.

### D. Add a project member and set their role

1. In the **Family Budget Calculator** project, click **Project Information > Members** in the left pane.
1. Under the **Invite Members** tab, in the **Username or Email address** field, enter your own email address.<br/>
   Select **Invite "\<EMAIL ADDRESS\>" by email** from the dropdown that appears.<br/>
   **Note:** Normally you wouldn't invite yourself to a project that you created, but since the training environment prevents you from inviting other students to this project, this is a way to practice sending an invitation.
1. In the **Select a role** dropdown, select **Developer**.
1. Click **Invite**.
 
## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-on Guide*, please submit them via merge request.
