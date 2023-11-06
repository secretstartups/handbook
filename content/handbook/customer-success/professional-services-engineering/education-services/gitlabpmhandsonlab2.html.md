---

title: "GitLab Project Management Hands-On Guide: Lab 2"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---
# GitLab Project Management Hands-On Guide


## LAB 2: CREATE AN ORGANIZATIONAL STRUCTURE IN GITLAB

### A. Review groups and projects for GitLab's own source code

1. *In a new browser tab*, navigate to [https://gitlab.com/gitlab-org](https://gitlab.com/gitlab-org)
1. Click into the **Frontend** subgroup (you might have to scroll to the second page of subgroups to find it). Within the **Frontend** subgroup, note the presence of projects and additional subgroups. Spend a few moments exploring some of these subgroups and projects.

### B. Create an organizational structure in GitLab

1. Ensure your are in your **My Test Group** sandbox group in the GitLab training environment.
1. Click the **New Subgroup** button.
1. Click **Create group**.
1. In the **Group name** field, type `DigiBit Technologies`  
1. Click **Create group**.
1. Within the **DigiBit Technologies** group, create this subgroup structure. Remember that the breadcrumbs are a good way to navigate between subgroups when you're creating a multi-level collection of groups and subgroups.
    - **Software**
      - **Core**
      - **Android**
      - **iOS**
    - **Infrastructure**
    - **Security**

### C. Create a new project

1. Navigate to the **Software > Core** subgroup you just created.
1. Select **New project**.
1. Select **Create blank project**.
1. In the **Project name** field, enter `Family Budget Calculator`<br/>
1. Leave the **Visibility Level** at the default selection.
1. Enable the **Initialize repository with a README** checkbox.
1. Select **Create project**.

### D. Add a project member and set their role

1. In the **Family Budget Calculator** project, click **Project Information > Members** in the left pane.
1. Select **Invite members**.
1. Search for and select your instructor as the user you are inviting. If you are taking the self-paced course, enter your own email address.
1. In the **Select a role** dropdown, select **Developer**.
1. Click **Invite**.
1. Refresh the page to see the user invited as a Direct Member.

## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-on Guide*, please submit them via merge request.
