---
aliases: /handbook/customer-success/professional-services-engineering/education-services/gitlabpmhandsonlab8.html
title: "GitLab Project Management Hands-On Guide: Lab 8"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Project Management course."
---

# GitLab Project Management Hands-On Guide


## LAB 8: CREATE AND MANAGE A KANBAN BOARD

Kanban boards show you the progress of all tickets in your project, as they move from the Backlog, to being worked on, to being checked by QA, to being closed. A real-world Kanban board might involve many more statuses than these 4, but these are adequate for a bare-bones Kanban demonstration.

### A. Create a new subgroup to work in

1. Back in the GitLab training environment, navigate to **Menu > Groups > Your Groups**
    - If you are in an instructor-led class, expand the arrow to the left of the **Training Users** group. Expand the arrow to the left of your Session's subgroup. Open the subgroup called **My Test Group - \<USERNAME\>**.
    - If you are in the self-paced environment, open the group called **My Test Group - \<USERNAME\>**.
1. Click **New subgroup**.
1. Enter `PM Workflows` as the group name.
1. Click **Create subgroup**.

### B. Create epics to assign issues to

1. From your new subgroup, in the left pane, click **Epics**.
1. Create 3 new epics named **Frontend**, **Backend**, and **QA**, respectively. Leave the metadata fields as-is when creating each epic.

### C. Make a project pre-populated with issues

1. Click the **PM Workflows** title tile in the left pane to return to the subgroup landing page.
1. At the top of the page, click **New project**.
1. Click **Create from template**.
1. Scroll to the bottom of the built-in templates. Next to **Sample GitLab Project**, click **Use template**.
1. Title the project `Awesome Software` and click **Create project**.

    GitLab will import a project containing many pre-generated issues and merge requests. When the import process has finished, you will be taken to the new project's landing page.

### D. Assign some issues to epics

1. In the left pane, click **Issues**.
1. Click an issue at random.
1. Assign the issue to the **Backend** epic using the right metadata pane on the issue's details page.
1. Assign another random issue to the **Frontend** epic.
1. Assign another random issue to the **QA** epic.

### E. Create labels representing Kanban stages

1. Using the breadcrumbs at the top of the page, return to your **PM Workflows** subgroup.
1. In the left pane, click **Subgroup information > Labels**.
1. Create 3 scoped *Status* labels:
   - `Status::Backlog`
   - `Status::WIP`
   - `Status::QA`
1. Note that you are **not** making a label to mark an issue as "done." Instead, you will close each issue when it is done. This lets GitLab register the issue as complete in burndown/burnup charts and on roadmaps.
1. Create 3 scoped *Health* labels:
   - `Health::On Track`
   - `Health::Needs Attention`
   - `Health::At Risk`

### F. Put all issues in the Kanban backlog

None of the issues have been worked on yet, so you need apply the **Status::Backlog** label to all of them. Fortunately you can perform bulk edits on issues.

1. In the left pane, click **Issues**.
1. Click **Edit issues**.
1. Select all the issues by clicking the faint checkbox to the left of the search bar above the list of issues.
1. In the right pane, select **Status::Backlog** from the **Labels** dropdown.
1. At the top of the right pane, click **Update all** to apply the label to all selected issues.

### G. Create the Kanban board

1. In the left pane, click **Issues > Boards**.
1. At the top of the page, click the **Development** dropdown.
1. Select **Create new board** from the **Switch board** menu.
1. Enter the title `Kanban`
1. Deselect the **Show the Open list** checkbox.
1. Keep the **Show the Closed list** checkbox selected.
1. Kanban boards generally show **all** your issues, so don't set a scope for the board.
1. Click **Create board**.

### H. Add a list for each stage

1. At the top right of the page, click **Create list**.
1. In the **New list** options, select **Label** as the list scope and **Status::Backlog** as the value.
1. Click **Add to board**.
1. Add additional lists for the **Status::WIP** and  **Status::QA** labels.
1. Refresh the browser page to force the 3 new lists to appear in the same order that you created them.

### I. Limit the allowed amount of work in progress

1. Click the gear icon at the top of the **WIP** list to open list settings.
1. Next to **Work in progress limit**, click **Edit** button and set the value to `3`
1. Click the **X** in the top right corner to exit out of the list settings.

### J. Simulate work on issues

1. Practice dragging issues between different lists. What do you notice if you place more than 3 issues in the **WIP** list?
1. At the top of the page, click **Group by > Epic**.
1. At the bottom of the page, expand **Issues with no epic assigned** to see the full list of issues in the **Backlog** list.
1. Practice dragging more issues, both to different lists and to different epics.

## Suggestions?

If you'd like to suggest changes to the *GitLab Project Management Hands-On Guide*, please submit them via merge request.
