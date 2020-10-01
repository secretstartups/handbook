---
layout: handbook-page-toc
title: Delete Projects in Soft-Deleted State
category: GitLab.com
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Customers may ask that a project they recently marked for deletion be deleted immediately so that they can reuse that project's path without needing to wait. Should a customer request this through Zendesk, do the following.

In most cases (provided there aren't any database or infrastructure issues), soft-deleted projects can be deleted as an admin without requiring a console escalation.

## Deprecation

This workflow will be no longer be necessary once the work in [https://gitlab.com/gitlab-org/gitlab/-/issues/191367](https://gitlab.com/gitlab-org/gitlab/-/issues/191367) is completed.

## Workflow

1. Get written confirmation from the customer which project(s) are to be deleted. We ideally want them to confirm the complete path to the project (e.g., `namespace/project`) and the ID.
1. As admin, head to that project's **Settings > General > Advanced** and restore the project. Archived projects will otherwise not display in the next step. [[1](#screenshot-1)]
1. From the admin area, head to **Projects** then filter the namespace from the **Namespaces** drop down. [[2](#screenshot-2)]
    - Note: Subgroups may be difficult to filter. In this case, grab the subgroup's `ID` to the `namespace_id` in the URL parameter `https://gitlab.com/admin/projects?namespace_id=(subgroup_id)`. [[3](#screenshot-3)]
1. Find the project(s) in question and click **Delete**. You will be prompted to confirm the project name. [[4](#screenshot-4)]
1. If all else fails, [open a Project Deletion Console Escalation](https://gitlab.com/gitlab-com/support/internal-requests/issues/new?issuable_template=Soft-Deleted%20Project). Remember to add a link to the issue to the Zendesk ticket and inform the customer that we've asked an engineer to process the deletion.

### Screenshots

1. ![Restore project](assets/delete_1.jpg){: .shadow}{: #screenshot-1}
1. ![Filter namespace](assets/delete_2.jpg){: .shadow}{: #screenshot-2}
1. ![Filter namespace by group ID](assets/delete_4.jpg){: .shadow}{: #screenshot-3}
1. ![Delete project](assets/delete_3.jpg){: .shadow}{: #screenshot-4}
