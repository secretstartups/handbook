---
aliases: /handbook/customer-success/professional-services-engineering/education-services/gitlabpmhandsonlab4.html
title: "GitLab Project Management Hands-On Guide: Lab 4"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---

# GitLab Project Management Hands-On Guide


## LAB 4: CREATE ISSUES

### A. Create and manage labels

1. Navigate to your **DigiBit Technologies** group.
1. In the left pane, click **Subgroup information > Labels**.
1. Click **New label**.
1. In the **Title** field, enter `Status::Open`. The 2 colons in the label title mean that this will be a **scoped** label.
1. In the **Description** field, enter `Item that is ready to begin work`
1. For the label's color, GitLab supports any RGB color code. For this label, choose **Blue** from the suggested color palette (or enter `#0000ff` in the **Background color** field).
1. Click **Create label**.
1. Create the following additional labels, setting a description and background color of your choosing. Note that some of these are scoped and some are unscoped.
    - `Status::WIP`
    - `Status::Done`
    - `Priority::High`
    - `Priority::Medium`
    - `Priority::Low`
    - `Dev`
    - `QA`
    - `Security`

1. Navigate to your **Family Budget Calculator** project inside the **DigitBit Technologies > Software > Core** group hierarchy.
1. Click **Project information > Labels** from the left pane.
1. "Star" these labels to designate them as prioritized labels:
     - **Priority::High**
     - **Priority::Medium**
     - **Priority::Low**

     The **Priority::High** label should be at the top of the list, followed by **Priority::Medium** and then **Priority::Low**. If they aren't in this order, rearrange them by dragging each label up or down.

### B. Create issues for tracking work

1. In your **Family Budget Calculator** project, click **Issues** from the left navigation pane.
1. Click **New issue**.
1. Title the issue `Third-party financial services integration`
1. Enter an optional issue description.
1. Using the **Assignees** dropdown, assign the issue to yourself (your training user). Leave the other options as they are for now.
1. Click **Create issue**.
1. You will be taken to the landing page for the issue you just created. Note the variety of metadata fields in the right pane. The next module discusses these fields in depth.
1. In the issue metadata pane, click **Edit** next to the **Labels** field.
1. Select the **Status::Open** label, then click away from the metadata pane to apply the label to the issue.
1. Repeat the last 2 steps to apply the **Priority::Medium** and **Dev** labels to the issue.
1. In the left pane, click **Issues**. You will see the new issue in the list along with its labels.
1. Create a second issue by clicking **New issue** in the top right of the issue list page.
1. Title the second issue `Back-end services`
1. Paste the following as the issue description:

    ```markdown
   - Create DB
   - Create service infrastructure
   - Write documentation
    ```

1. Assign the issue to yourself and click **Create issue**.
1. Apply these labels to the **Back-end services** issue: **Dev**, **Status::Open**, and **Priority::High**.
1. In the left pane, click **Issues** to see both issues with their labels.
1. Create a third issue by clicking **New issue** in the top right of the issue list page.
1. Title the third issue `Front-end services`
1. Paste the following as the issue description:

    ```markdown
   - UX design
   - Integration
   - Write documentation
    ```

1. Assign the issue to yourself and click **Create issue**.
1. Apply these labels to the **Front-end services** issue: **Dev**, **Status::WIP**, and **Priority::High**.
1. In the left pane, click **Issues** to see all 3 issues with their labels.

## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-on Guide*, please submit them via merge request.
