---
layout: handbook-page-toc
title: "Manual Release Post Kickoff"
description: "Guidelines to for manually kicking off the Release Post"
---

## Manually create your release post branch and required directories/files

If the automated pipeline fails, the manual steps below can be done either locally or using the GitLab Web IDE:

1. On `gitlab.com/gitlab-com/www-gitlab-com` create a new branch `release-X-Y` from `master`.
1. On `release-X-Y` branch, create the blog post file, containing the introduction and the blog post frontmatter information:
   1. In `sites/uncategorized/source/releases/posts/` directory, add a new file called `YYYY-MM-22-gitlab-X-Y-released.html.md` by copying the
      [monthly release blog template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/monthly_release_blog_template.html.md).
1. On `release-X-Y` branch, create the release post data directory, to which features and other data will be added:
   1. Create a new directory `X_Y` in the `data/release_posts` directory.
   1. Copy [`data/release_posts/unreleased/samples/mvp.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/release_posts/unreleased/samples/mvp.yml) into `data/release_posts/X_Y/mvp.yml`.
   1. Copy [`data/release_posts/unreleased/samples/cta.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/release_posts/unreleased/samples/cta.yml) into `data/release_posts/X_Y/cta.yml`.
1. On the release-X-Y branch, edit `sites/uncategorized/source/includes/home/ten-oh-announcement.html.haml` changing all the GitLab version numbers and URLs referencing the release post to reflect the current one. Leave the announcement description as is, as you (the Release Post Manager) will change this later in the process.

**Important!** Please be sure to use the **most recent templates** on `master` for the `mvp` and `cta` files you create, by clicking on the links provided in instructions. They can also be found when browsing the repository in the `master` branch.
{:.alert .alert-info .text-center}

### Create the release post MR

Create a merge request with the introductory changes _after the previous post has been merged and before the feature freeze date_ to make the post available to receive contributions from the team:

1. The source branch must be `release-X-Y` and the target branch `master`.
1. Set the title to `Draft: Release post - GitLab X.Y`.  Prefix the title with `Draft:`.
1. Confirm that "Delete source branch when merge request is accepted" is selected.
1. Use the release post template for your MR.

   ![release post MR template](release-post-mr-template.png){:.shadow}

Now that you have created the release post MR, refer to the checklist in the MR for each action that you need to take and the due dates of each action. Keep in mind the MRs for usability improvements, bugs, and performance improvements have their own checklists to be completed, including a task for the Release Post Manager to merge these MR by the 17th prior to final content assembly.

### Create MRs for usability improvements, bugs, and performance improvements

Create dedicated MRs from the sample templates for these content blocks (usability improvements, bugs, performance improvements). This separation from the main Release Post MR simplifies the contribution and discussion process.

**Note for people adding content:** The MRs for usability improvements, bugs, and performance improvements provide a place for others to add their content. While the Release Post Manager isn't responsible for creating the content, they are responsible for completing the tasks assigned to them in the checklist of the templates for these MRs, on schedule. Make sure to immediately apply any suggestion you make to avoid race conditions where your suggestion is considered as applied if someone else has directly pushed a commit ([example](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/96728#note_806133408)). The TW lead will review the changes anyway, so no need to ask for a pre-review.
{:.alert .alert-info}

1. In the `gitlab.com/gitlab-com/www-gitlab-com` project, create 3 [new
   branches](https://gitlab.com/gitlab-com/www-gitlab-com/-/branches/new) from master: one for bugs, one for usability improvements, and one for performance improvements.
   Name the branches `release-X-Y-bugs` `release-X-Y-usability-improvements` and `release-X-Y-performance-improvements`.
1. From each of these newly created branches, open a merge request (MR)
   targeted at the master branch. Name the MRs `Draft: release-X-Y-bugs`, `Draft: release-X-Y-usability-improvements`, and
   `Draft: release-X-Y-performance-improvements`, and use the
   [`Release-Post-Bug-Usability-PerformanceImprovement-Block`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Bug-Performance-Usability-Improvement-Block.md).
   template.
1. Add appropriate milestone to the MRs.
1. Assign the MRs to yourself, and assign the TW lead as Reviewer of the MRs when the merge request is ready for review.
1. Confirm that **Delete source branch when merge request is accepted** is
   selected.
1. After the MRs are created, confirm they have the following labels:
   - `release post`
   - `release post item`
   - `Technical Writing`
1. In each MR, replace the `@mentions` with the actual task owner names.
1. On the `release-X-Y-bugs` branch, add a new file to the `data/release_posts/unreleased/` folder called bugs.yml and populate it with the content of [`bugs.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/bugs.yml)
1. On the `release-X-Y-usability-improvements` branch, add
a new file to the `data/release_posts/unreleased/` folder called release-post-ux-improvements.yml and populate it with the content of 
   [`release-post-ux-improvements.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/usability_improvements.yml).
1. On the `release-X-Y-performance-improvements` branch, add
a new file to the `data/release_posts/unreleased/` folder called performance_improvements.yml and populate it with the content of    [`performance_improvements.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/performance_improvements.yml).