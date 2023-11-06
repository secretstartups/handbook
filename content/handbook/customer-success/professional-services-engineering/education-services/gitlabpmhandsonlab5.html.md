---

title: "GitLab Project Management Hands-On Guide: Lab 5"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---
# GitLab Project Management Hands-On Guide


## LAB 5: ORGANIZE AND MANAGE ISSUES

### A. Set issue metadata

1. In your **Family Budget Calculator** project, click **Issues** from the left pane.
1. Click your **Third-party financial services integration** issue.
1. In the issue's metadata pane, click **Edit** next to the **Epic** field.
1. Assign this issue to the **Investment Tracking** epic.
1. In the issue's metadata pane, click **Edit** next to the **Iteration** field.
1. Assign this issue to the first most recent iteration in **Team sprints**.
1. In the issue's metadata pane, click **Edit** next to the **Due date** field.
1. Set the issue due date to 1 week from today's date.
1. In the issue's metadata pane, click **Edit** next to the **Labels** field.
1. Apply the label **Status::WIP**. Note this replaces the previous **Status::Open** label, since an issue can't simultaneously have multiple labels with the same scope (the "Status::" part of the label).
1. In the issue's metadata pane, click **Edit** next to the **Weight** field.
1. Enter a value of `2`, then click away from the metadata pane to set the issue's weight.
1. Navigate to **DigiBit Technologies > Software** group. In the left pane, click **Epics**. Click the **Investment Tracking** epic. Note that the **Third-party financial services integration** issue appears in the epic's details page.
1. In the left pane, click **Issues > Iterations**. Click the iteration to which you assigned the issue. Note that the **Third-party financial services integration** issue appears on the iteration's details page.

### B. Organize, promote, and link issues and epics

1. In your **Family Budget Calculator** project, click **Issues** in the left pane.
1. Click your **Back-end services** issue.

    You realize that, considering the scope of this initiative, this issue would be better suited as an epic, with each To-Do in the description as a separate issue in the epic.

1. To promote this issue to an epic, use the `/promote` quick action in the issue's comment field, then click **Comment**.
1. **Back-end services** is now an epic at the **Core** group level. Using the breadcrumbs at the top of the page, click your **Core** subgroup.
1. In the left pane, click **Epics**.
1. Click into your new **Back-end services** epic.
1. You'd like to link the epic's To-Do items as individual issues. Under the **Child issues and epics** tab, click **Add > Add a new issue**.
1. Enter `Create DB` as the issue title.
1. In the **Project** dropdown, select **Family Budget Calculator**, as it is the only project created so far, and all issues must belong to a project.
1. Click **Create issue**.
1. Use the same steps to to create issues titled `Create service infrastructure` and `Back-end documentation`, both linked to the **Back-end services** epic.
1. Click into the **Create DB** issue.
1. In the issue's right metadata pane, assign the issue to the **Back-End Services Deployed** milestone.
1. Assign the **Create service infrastructure** and **Back-end documentation** issues to the **Back-End Services Deployed** milestone.

    So far all issues have been created in the **Family Budget Calculator** project by necessity. But as requirements grow it may be best to move some issues into more suitable projects.

1. Navigate to your **Software > Core** subgroup.
1. From the **Core** group landing page, click **New project**, then **Create blank project**.
1. In the **Project name** field, enter `Database`
1. Leave the **Visibility Level** at the default selection.
1. Enable the **Initialize repository with a README** checkbox.
1. Click **Create project**.
1. Return to your **Family Budget Calculator** project in the **Core** subgroup.
1. In the left pane, click **Issues**.
1. Click into the **Create DB** issue.
1. On the issue's details page, scroll to the bottom of the right metadata pane and click **Move issue**.
1. Select your **Database** project, then click **Move**.
1. See that the project heading and breadcrumbs at the top of the page indicate your issue is now part of the **Database** project.

### C. Create and apply a description template

1. Navigate to your **DigiBit Technologies** group.
1. In the upper right corner of the group landing page, click **New Project**.
1. Click **Create blank project**.
1. Enter `Description Templates` as the project name. This project will hold templates that can be used to pre-populate issues and merge requests across the organization.
1. Enable the **Initialize repository with a README** checkbox.
1. Click **Create project**.
1. On the project landing page, click the **(+)** dropdown near the top of the page under the project title.
1. Click **New file**.
1. In the **File name** field, enter `.gitlab/issue_templates/technical_spike.md`
1. For the file's content, paste the following:

    ```markdown
   ## Instructions
   Use this issue to capture research that must take place before continued development of a feature.
   
   ### Summary
   <!--In 2 sentences or fewer, describe the problem to be solved or the question to be answered.  -->
   
   ### Impact Statement
   <!-- Describe importance of solving the problem. How will it affect the feature or product direction?  -->
   
   ### Tasks
   - [ ] Assign participants and DRI
   - [ ] Apply appropriate priority and team labels
   - [ ] Assign to an upcoming product sprint
   
   /label ~"Status::Open"
    ```

1. Click **Commit changes**.
1. Using the breadcrumbs at the top of the page, navigate back to your **DigiBit Technologies** group.
1. In the left pane, click **Settings > General**.
1. Scroll to the **Templates** section and select **Expand**.
1. In the **Select a template repository** dropdown, select your **Description Templates** project.
1. Click **Save changes**.
1. Now the template can be applied when creating an issue. Navigate to your **DigiBit Technologies > Software > Core > Database** project.
1. In the left pane, click **Issues**.
1. Click **New issue**.
1. For the issue title, enter `Identify tuning parameters to reduce performance bottlenecks`
1. In the **Description** field, expand the **Choose a template** dropdown and select your **technical_spike** description template.
1. Optionally modify any details in the description.
1. Assign the issue to yourself and click **Create issue**.
1. Review the pre-populated description and metadata on the issue's details page.

## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-on Guide*, please submit them via merge request.
