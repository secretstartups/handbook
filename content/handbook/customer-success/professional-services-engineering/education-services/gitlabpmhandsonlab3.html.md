---

title: "GitLab Project Management Hands-On Guide: Lab 3"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---
# GitLab Project Management Hands-On Guide


## LAB 3: USE GITLAB PLANNING TOOLS

### A. Review planning features in GitLab

1. Navigate to the GitLab project [landing page](https://gitlab.com/gitlab-org/gitlab). Note the namespace structure indicated by the top of the page. You should be in the **GitLab** project inside the **GitLab.org** group.
1. In the breadcrumbs at the top of the page, click **GitLab.org** to navigate to the parent group.
1. Note the number of epics, issues, and merge requests indicated in the left pane. These numbers represent work items across all subgroups and projects inside **Gitlab.org**.
1. In the left pane, click **Epics**. This takes you to a searchable list of epics in **GitLab.org** and all its subgroups.
1. In the left pane, click **Epics > Roadmap**. Spend a moment scrolling the displayed milestones and open epics.

### B. Create an epic and child epic

1. Back in the GitLab training environment, go to the top bar and navigate to **Menu > Groups > Your Groups**. Navigate into the **Software** subgroup you created in the previous lab.
1. In the left pane of the **Software** group landing page, click **Epics**.
1. In the upper-right corner, click **New epic**.
1. On the *New Epic* page, enter `Feature Category: Retirement Planning` in the **Title** field.
1. In the **Description** field, paste the following:

    ```markdown
   # Overview

   This is the top-level epic for all features in the `Retirement Planning` category of DigiBit's personal finance software.

   # Useful Links
   - *To-Do: add link to the feature strategy document*
   - *To-Do: add contributing team member information*
    ```

    You can click the **Preview** tab in the **Description** field to see how the markdown will render after the epic is created.

1. Leave all other fields as they are, and click **Create epic**.
1. Create a new child epic to link to the parent epic: from the **Feature Category: Retirement Planning** epic landing page, click **New Epic**.
1. Title the new epic `Investment Tracking`
1. In the **Description** field, paste the following:

    ```markdown
   # Overview

   This epic tracks all work on `Investment Tracking` features and integrations, as part of the overall `Retirement Planning` category strategy.
    ```

1. Leave all other fields as they are, and click **Create epic**.
1. Return to the Software group's full list of epics by clicking **Epics** in the breadcrumbs at the top of the page.
1. Click into the **Feature Category: Retirement Planning** epic.
1. You will now designate the **Investment Tracking** epic as a child of the **Retirement Planning** epic. In the **Child issues and epics** tab, select the **Add** drop-down menu, and click **Add an existing epic**.
1. Type `&` in the field provided, and select **Investment Tracking** from the list of epics.
1. Click **Add** to link **Investment Tracking** as a child epic to the **Retirement Planning** parent epic.

### C. Set milestones to represent product goals

1. Navigate to your **DigiBit Technologies** subgroup.
1. In the left pane, click **Issues > Milestones**.
1. Click **New milestone**.
1. Title the new milestone `Organization Kickoff`
1. Select today's date as the milestone start date. Select 2 days from today as the milestone end date.
1. Click **Create milestone**.
1. In the breadcrumbs at the top of the page, click **Milestones**.
1. Click **New milestone** to create a second milestone.
1. Title the second milestone `Back-end services deployed`
1. Select today's date as the milestone start date. Select 2 weeks from today as the milestone end date.
1. Click **Create milestone**.
1. In the breadcrumbs at the top of the page, click **Milestones** to view your newly created milestones.

You will later assign tasks to the epics and milestones you created, allowing you to use roadmaps to view the progress of your initiatives.

### D. Schedule iterations as team sprints

Iterations are mutually exclusive timeboxes intended to track team velocity, while milestones can represent larger, overlapping product goals.

1. In your subgroup structure, navigate to **DigiBit Technologies > Software**.
1. In the left pane, click **Issues > Iterations**.
1. Click **New iteration cadence**.
1. Title the iteration cadence `Team sprints`
1. In the description, enter `Tracking team progress toward minimum viable product`
1. Select today's date as the iteration cadence's start date. Select 2 weeks as the duration of each iteration. Select 6 for the number of upcoming iterations.
1. Click **Create iteration**.
1. Ensure the **Enable roll over** checkbox is selected.
1. Select **Create cadence**.

You will later assign individual tasks to iterations (sprints).

### E. Create a wiki for project documentation

1. Navigate to your **Family Budget Calculator** project in the **Software > Core** subgroup.
1. In the left pane, click **Wiki**.
1. Click **Create your first page**.
1. Enter `Family Budget Calculator Documentation` as the page title.
1. Paste the following text in the **Content** field, then click **Create page**.

    ```markdown
   ## Summary

   The Family Budget Calculator helps households stay on budget and save for the future.

   ## Contact

   Contact <YOUR-NAME> with questions or comments.
    ```

    If you'd like, edit the **Family Budget Calculator Documentation** page to add additional content or create additional wiki pages.

## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-on Guide*, please submit them via merge request.
