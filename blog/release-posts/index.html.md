---
layout: handbook-page-toc
title: "GitLab Release Posts"
description: "Guidelines to create and update release posts"
---

## On this page

{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Release posts

Release posts are [blog posts](/releases/categories/releases/) that announce changes to the GitLab application. This includes our regular cadence of monthly releases which happen on the 22nd of each month, and patch/security releases whenever necessary.

Release posts follow a process outlined here, and the templates that are used to create them also highlight what needs to be done, by who, and when those items are due.

**Note:** We're evolving our release post process! You can view and share feedback on the latest direction by viewing [Scaling the release post](https://docs.google.com/presentation/d/1_Osx3FrDxT4aqjl-Kc9QXgp30z0Pl1k4tBCv0DlZYkk/edit).

### Quick Links

- For release post schedule of assignments see [Release Post Scheduling page](managers/)
- For a list of release posts (both security and monthly), check the
  [blog category for releases](/blog/categories/releases/).
- For a list of features per release, check the [releases page](/releases/).
- For all named changes, check the changelog
  for [GitLab CE](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/CHANGELOG.md)
  and [GitLab EE](https://gitlab.com/gitlab-org/gitlab-ee/blob/master/CHANGELOG.md).
- See also [release managers](/community/release-managers/).

#### Templates

_The sections below also link to these templates, but they're provided here for quick reference._

- [Monthly **release post** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md)
- [Monthly **release post item** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md)
- [Monthly **release post bug and performance improvement** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Bug-PerformanceImprovement-Block.md)
- [Monthly release **content block** templates](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/release_posts/unreleased/samples)
- [Patch release template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/patch_release_blog_template.html.md.erb)
- [Security release template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/security_release_blog_template.html.md)

---

## Monthly releases

Monthly releases are blog posts with an exclusive layout aiming to apprise the reader of the changes, new features, and other considerations for the new release that comes out on the 22nd of every month. They follow a process that involves collaboration across many different roles, and each persona's responsibilities are outlined on this page.

At a high level, the process is:

| Date | Step |
| ------ | ------ |
| By the 7th | The **Release Post Manager** creates a branch on `www-gitlab-com` and MR in that project that will collect all the release post items in to a single blog entry |
| 1st - 10th | **PMs** contribute individual MRs for all of their content blocks (top/primary/secondary features, deprecations, removals, and upgrades) as release post items in the `/data/release_posts/unreleased` directory. For primary items, PMs will also add the item to `features.yml`.<br><br>**EMs** can also contribute individual MRs for deprecations, removals, and upgrades as release post items in the `/data/release_posts/unreleased` directory.<br><br>**PMs** add recurring content blocks for Omnibus improvements, deprecation warnings, and more |
| by the 16th | **PMMs, TWs, and PM Directors** review individual release post items MRs <br><br>**EMs and PMs** contribute to MRs for Performance Improvements and Bug Fixes
| by the 17th | **EMs** merge those MRs in to master as the features they represent are merged in to the GitLab codebase.<br><br>**Release Post Manager** merges recurring content blocks for performance improvements and bug fixes. Any MRs added after the 17th should be submitted against the Release Post branch, not Master.
| on the 18th | At 8 AM PT, (3 PM UTC) the **Release Post Manager** aggregates all the content blocks by updating the release post branch from the `master` branch, and moving all the "unreleased" items into the release post branch for **final content assembly**.<br><br>The **Release Post Manager** adds the MVP for the release and selects a cover image<br><br>The **Messaging lead** picks a top features and/or themes to highlight and finalizes the introduction content |
| 18th - 20th | The **Release post manager, Messaging Lead, and TW Lead** perform final reviews/revisions to ensure everything is ready to publish. <br><br>Any changes after 8 AM PT (3 PM UTC) on the 18th will be done via the `release-X-Y` branch, not `master` branch, and is subject to approval by the **Release post manager**. |
| 22nd of Month | The **Release post manager**, publishes the blog post to master on the morning of the 22nd, immediately following the package itself being published by the **Release team** The [GitLab.org Releases page](https://gitlab.com/gitlab-org/gitlab/-/releases) will also populate the changelog via the process outlined in [`gitlab!44837`](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/44837)|

_**Note:** The specific steps that should be followed, when they are due, and the order they should be followed in are described in the [Monthly release **post** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md) and the [Monthly release **post item** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md)._

### Participants

- [**Release Post Manager**](#release-post-manager)
- [**PM contributors**](#pm-contributors)
- [**Messaging lead**](#messaging-lead)
- [**PMM reviewers**](#pmm-reviewers)
- [**TW lead**](#tw-lead)
- [**TW reviewers**](#tw-reviewers)
- [**Engineering Managers**](#engineering-managers)

### Release Post Manager

Each month a Product Manager will lead the release post, as defined in the [Release Post Scheduling page](managers/). The Release Post Manager is listed as the Author of the release post when the post is published. Each month a Product Manager also acts as a shadow to support the Release Post Manager tasks if needed, act as back up on decisions in absence of the Release Post Manager and prepare to run the next release post. By shadowing the month prior to leading the effort, Product Managers are prepared and aware of any shifts in processes or optimizations needed since the last time they participated.

Product Managers can volunteer for any release that doesn't have someone assigned yet. To assign yourself as release post manager or release post manager's shadow, simply add your name on the [Release Post Scheduling page](managers/) by submitting an MR to update the `/data/release_post_managers.yml` file. Otherwise, PMs will be assigned using a fair scheduling principle:

1. Members that never managed a release post before
1. Members that have the longest interval since they managed their last release post

After joining the company, there is a grace period of a few months where the new Product Manager
will get up to speed with the process, then they will be scheduled to manage a release post.

Adding members to the list is a shared task, and everyone can contribute by following the
principle described above. Scheduled people are pinged in the merge request to make them aware.
They don't need to confirm or approve, since they can always update the list if they are not
available for the given release post.

<i class="fas fa-exclamation-triangle" aria-hidden="true" style="color: red"></i>
**Important**: if you're scheduled for a given month and you can't make it, because you're on
vacation, overloaded, or for any other reason, that is okay, **as long as you swap the
release post manager role** with someone else **before** creating the merge request and starting the
whole process. If you take it, you're responsible for the entire process and must be
available to carry it out until the end.
{:.alert .alert-warning}

The Release Post Manager is accountable for:

- Setting up the release post branch and completeing all the tasks assigned to the Release Post managager in the Release Post MR template
- Reviewing and supporting overall content quality and accuracty of all content published in the release post
- Supporting and checking in with the TW lead and Messaging lead via Slack and a brief weekly standup
- Creating the release post [merge request](#create-the-release-post-mr)
- Creating MRs to collect [performance improvements and bug fixes](#create-mrs-for-bugs-and-performance-improvements)
- Soliciting/collecting votes for the [MVP](#mvp), getting the write-up form the nominator of the winning candidate and updating `release-X-Y/www-gitlab-com/data/mvps.yml` and `data/release_posts/X_Y/mvp.yml`
- Adding the [cover image](#cover-image) that is (jpg, png) is [smaller than 300KB](#images)
- Monigtoring the Slack Release Post channel to help answer questions and troubleshoot hurdles
- Pinging the PMs and others as needed in Slack or MRs to help reslove feedback
- Sending out reminders about upcoming deadlines.
- Merging master into the release branch on a regular basis to resolve conflicts (do not rebase, please do `git pull origin master`, then `:wq`)
- Making sure we have the post **ready to merge two days before the 22nd**
- Merging the release post MR on the 22nd and ensuring the page goes live successfully (coordinate with the release managers in the
  `#releases` Slack channel and only merge once they've pinged you in Slack to confirm the packages are released, which will be sometime around 14:10 - 14:20)
- Creating and collecting feedback in the release post retro issue during the release post
- Doing a sync retro with the Tech Writing and Messaging leads sometime between the 23rd and the 1st of the month, to identify and collaboratively complete actions to improve process and update the handbook/MRs
- [Communicate](#communication) with our Community Advocates following the [Involving Experts workflow](/handbook/marketing/community-relations/community-advocacy/workflows/involving-experts/) as needed to field questions that come up from viewers of the release post blog once it is live on the 22nd
- Making sure the auto sorting of secondary features by title (alpha) and stage generally looks good or is revised if need be [Content Reviews](#content-reviews)
- Work with PMs, Messaging lead and others as needed  to make sure any external blogs they reference go live before the release post blog gets published on the 22nd.

**The initial steps of creating a release post branch and the release post merge request are explained below. All subsequent steps for Release Post Manager are documented as checklist items in the merge request that gets created below.**

<i class="fas fa-exclamation-triangle" aria-hidden="true" style="color: red"></i>
**Important:** Please check beforehand if you have **merge rights** to the www project.
If you don't, ask someone to grant you access or pair with someone else to merge
the post with you on the 22nd. If someone else merges it, make sure you're
available to follow up with anything that might come up in the last minute.
{:.alert .alert-warning}

#### Create your release post branch and required directories/files

**Note:** In the following sections we refer to the GitLab version as X.Y
and the date of the release as YYYY/MM/22. You should replace those values
with the current version and date. The day will always be the 22nd, so no need
to change that.
{:.alert .alert-info .text-center}

There are two ways to create the initial monthly release post in the [about.GitLab.com repository](https://gitlab.com/gitlab-com/www-gitlab-com): a) using a script and b) manually. The script does exactly what you would manually, but automates the process.

##### First way: using a script

1. Make sure you have [set everything up to contribute to the about.GitLab.com repository](/handbook/git-page-update/).
1. Locally, in a terminal, run the task:

   ```shell
   bundle exec rake "release:monthly"
   ```

   You will be asked to submit the release post date (in ISO format)
   and the GitLab version (in `major.minor` format). If any of the two are
   wrongly submitted or the release branch already exists, the task will
   abort.

1. Push the branch that was created and follow the link to [create the merge request](#create-the-release-post-mr).

##### Second way: manually

The manual way can be done either locally or using the GitLab Web IDE:

1. Create a new branch `release-X-Y` from `master`
1. On `release-X-Y` branch, create the blog post file, containing the introduction and the blog post frontmatter information:
   1. In `sites/marketing/source/releases/posts/` directory, add a new file called `YYYY-MM-22-gitlab-X-Y-released.html.md` by copying the
      [monthly release blog template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/monthly_release_blog_template.html.md).
1. On `release-X-Y` branch, create the release post data directory, to which features and other data will be added:
   1. Create a new directory `X_Y` in the `data/release_posts` directory.
   1. Copy [`data/release_posts/unreleased/samples/mvp.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/release_posts/unreleased/samples/mvp.yml) into `data/release_posts/X_Y/mvp.yml`.
   1. Copy [`data/release_posts/unreleased/samples/cta.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/release_posts/unreleased/samples/cta.yml) into `data/release_posts/X_Y/cta.yml`.

**Important!** Please use the **most recent templates** for each of these files.
They can be found when browsing the repository in the `master` branch.
{:.alert .alert-info .text-center}

#### Create the release post MR

Create a merge request with the introductory changes _after the previous post has been merged and before the feature freeze date_ to make the post available to receive contributions from the team:

1. The source branch must be `release-X-Y` and the target branch `master`.
1. Set the title to `Draft: Release post - GitLab X.Y`.
1. Confirm that "Delete source branch when merge request is accepted" is selected.
1. Use the release post template for your MR.

   ![release post MR template](release-post-mr-template.png){:.shadow}

**Important**: all the files related to the release process, including [`data/features.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/features.yml), [`data/mvps.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/mvps.yml) and [`sites/marketing/source/includes/home/ten-oh-announcement.html.haml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/includes/home/ten-oh-announcement.html.haml) must be committed in this MR.
{:.alert .alert-info}

#### Create MRs for Bugs and Performance Improvements

Create two merge requests that simply contain the sample templates for these content blocks. Having separate MRs (from the main Release Post MR) allows discussions to be easier to follow and the contribution process to be simpler.

_**Note:** The MRs for Bug and for Performance Improvements provide a place for others to add their content,  and while the Release Post Manager is not responsible for the creating the content, they are responsible for completing the tasks assigned to them in the checklist of the templates for these MRs._

1. For each bug and performance MR, create a new branch from master. Name the branches `release-X-Y-bugs` and `release-X-Y-performance-improvements`
1. Open a merge requests targeted at the master branch. Name the MRs `Draft: release-X-Y-bugs` and `Draft: release-X-Y-performance-improvements` and use the [`Release-Post-Bug-PerformanceImprovement-Block template`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Bug-PerformanceImprovement-Block.md)
1. Assign appropriate milestone and labels: `release post` `release post item` `Technical Writing`
1. Confirm that "Delete source branch when merge request is accepted" is selected.
1. Add [`bugs.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/bugs.yml) and [`performance_improvements.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/performance_improvements.yml) to the corresponding `release-X-Y-bugs` and `release-X-Y-performance-improvements` branches to `data/release_posts/13_1`

#### Local dev environment setup to run content assembly script

**Note**: You should not use the default system installed Ruby but should install a Ruby version manager like [RVM](https://rvm.io/rubies/installing), [Rbenv](https://github.com/rbenv/rbenv#installing-ruby-versions) or [asdf](https://github.com/asdf-vm/asdf-ruby) to manage your Ruby installation. See handbook guidance on [installing a Ruby version manager](https://about.gitlab.com/handbook/git-page-update/) and other requirements. Reach out for help if needed.
{:.alert .alert-info}

Prior to running the content assembly script (described in the next section), the release post manager should confirm their local dev environment is running a current version of Ruby and its dependencies are updated. 

1. Open a terminal window and run `./bin/doctor` and follow the prompts to resolve any errors. See also [demo video](https://youtu.be/zYK1JA8VMbI) of the doctor script.
1. Once Ruby and all dependencies are updated, then you can proceed with content assembly of the release post.

**How do I know if I already have a Ruby Version Manager installed?** 

1. Open a terminal window and type `which asdf` or `which rbenv` or `which rvm` 
1. If the output is sommething other than `asdf not found` or `rbenv not found` or `rvm not found` then you likely have one of these installed. A path to one of those tools is returned to the screen if a Ruby version manager is installed.

**What if I have a different Ruby Version Manager than what is in the handbook?** If something like `rbenv` already installed, then you likely just need to update Homebrew with `brew upgrade rbenv ruby-build` and install the latest with `rbenv install 2.6.6` or similar. 

#### Merge individual items in to your branch

**Important**: This procedure applies until the 17th, at 11:59 PM PT (6:59 AM UTC). After this time, anyone who wants to include a change in the upcoming release post can either coordinate updates directly on the release post branch with the Release Post Manager or submit it in a separate MR, targeting the `release-X-Y` branch, and assign it to the Release Post Manager to merge. For more information, see our documentation ho how to [Develop on a feature branch](https://docs.gitlab.com/ee/gitlab-basics/feature_branch_workflow.html).
{:.alert .alert-info}

When it is time to assemble the release post, this will be done by moving the
content block files from `data/release_posts/unreleased` to
`data/release_posts/X_Y`, and images from `source/images/unreleased` to
`source/images/X_Y`.

Those block items comprise of the [release post items](#pm-contributors) that
each PM creates for each feature.

The `bin/release-post-assemble` script makes this easy to do:

```bash
# Checkout the release branch
git checkout release-X-Y

# Pull any updates to the release branch
git pull

# Fetch and merge updates from master, including new unreleased features
git pull origin master

# Move release post items and images to the release director
bin/release-post-assemble

# Push the changes
git push
```

If for some reason `bin/release-post-assemble` fails use the following steps to manually move content and push your changes. There is also a video walking through the changes [here](https://www.youtube.com/watch?v=SAtiSiSh_eA).

1. Verify you've completed steps 1-3 above
1. Manually move all the `.yml` files from `/data/releases_posts/unreleased/` to `/data/release_posts/x_y/` (`x_y` being the release post directory e.g. `13_2`) | *note: leave the `/samples` directory in the same location, don't move it*
1. Manually move all the images in `/source/images/unreleased/` to `/source/images/x_y/`
1. Using a text editor like VS Code **find and replace** all the image paths under `image_url:` in each release post `.yml` file from `/unreleased/` to `/x_y/`. The video above demonstrates that.
1. `git commit` and `git push` and you should be good to go

#### Communication

The release post manager, the Messaging lead and the TW lead will need to communicate about topics that are related to the release post but not relevant to all participants in the main [Slack release post channel](https://gitlab.slack.com/archives/C3TRESYPJ). The Release Post Manager will create a Slack channel called "X-Y-release-post-prep to faciliate communication specific to the release post leads, which will be utilized till the 21st to minimize noise in the main release post Slack channel. On the 22nd, this channel will be abandoned and all communication will default to the main release post Slack channel for the final day of collaboration.

The Community Advocates team will reach out to the release post manager in Slack #release-post when they are using the [Involving Experts workflow](/handbook/marketing/community-relations/community-advocacy/workflows/involving-experts/) and need help responding to inquiries about content in the release post blog. These needs will primarily arise within the first week of going live with the blog. However, as Author for a specific release post, you may get pinged to help coordinate a response some weeks later as issues arise. You will usually just need to find the best DRI to handle the issue, often the PM of the release post item in question.

#### Content reviews

The due dates for various reviews across all participants can be found on the release post MR and [release post item MR templates](#templates). PM contributors are encouraged to cease attempts to add new content blocks after the final merge deadline of the 17th, and especially after final content assembly happens at 8 AM PT (3 PM UTC). But if highly impactful features are released it is up to the discretion of the Release Post Manager to work with the PM and Messaging lead to add more content blocks up until the 21st.

Keeping an eye on the various content reviews (TW, PMM and Director) for the individual release post items (content block MRs) is the responsiblity of PM contributor. However, it is recommended that the Release Post Manager keep an eye on how many items are not yet marked with the Ready label on the 10th of the month or not yet merged on the 16th of the month, and check in with PMs in Slack Release Post channel to support and clear hurdles if needed. A really easy way to do this is to keep your eyes on the [Preview page](https://about.gitlab.com/releases/gitlab-com/) and copy edit and link check items as new items appear. It's also important to do this becuase this page is LIVE to users and should be error free.

The content review of the Performance Improvements and Bug Fixes MRs are the responsibility of the Release Post Manager and the TW Lead.

The review and any needed adjustment to the ordering of secondary features due to stakeholder feedback is the responsibility of the release post manager. Secondary features, bug fixes, performance improvements, deprecations, removals, and upgrade notes are all sorted alphabetically by title, grouped by stage. To affect the sort order of the secondary features, a change to the content block's `title` is required. The release post manager should work with the product managers of the content blocks to make these changes, to ensure accuracy and alignment.

After the release post MR has been generated, additional feedback is solicited by the RPM from the CEO and [product leaders](https://about.gitlab.com/handbook/product/product-leadership/#product-leadership-team-structure) via Slack in the #release-post channel. Consistency in messaging when they can expect to start their review about 24 hours in advance is appreciated, especially when this review may be over the weekend. A best practice for capturing feedback from Slack is is to copy the feedback into the MR comments with checkboxes to ensure each item is addressed. PMs can be tagged there also for easier tracking and follow up. Refer to [this 13.0 MR comment thread](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/48201#note_345230940) for reference.

The review of all content for quality, including the marketing intro, is recommended for the Release Post Manager to keep things smooth, since it is the Release Post Manager's responsibility to make sure all content is completed until by the 20th of the month, ensuring a one day buffer is left for final error fixes and small improvements.

#### Next steps

Now that you have created the release post MR, refer to the checklist in the MR for each action that you need to take and the due dates of each action. Keep in mind the MRs for Bug and for Performance Improvements have their own checklists to be completed, including a task for the Release Post Manager to merge these MR by the 17th prior to final content assembly.

#### Updating Release Post Manager assignments

To update the [release post managers list](managers/), edit the data file below.

- **[Data YAML file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/release_post_managers.yml)**: gathers the release post managers for every release (9.0 onwards). Be sure to update the "Managers" section below the "Versions" if this is your first release.
- **[Layout Haml file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/handbook/marketing/blog/release-posts/managers/index.html.haml)**: simple handbook layout that pulls the data from the YAML file above.

### PM Contributors

Product Managers are responsible for [raising MRs for their content blocks](#content-blocks) and ensuring they are reviewed by necessary contributors by the due date. These are mostly added by the Product Managers, each filling up the sections they are [accountable for](/handbook/product/product-categories/#devops-stages), but anyone can contribute, including community contributors. Content blocks should also be added for any epics or notable community contributions that were delivered.

#### Contribution instructions

In parallel with feature development, a merge request should be prepared by the PM with the required content. **Do not wait** for the feature to be merged before drafting the release post item, it is recommended PMs write Release Post Item MRs as they prepare for the milestone Kickoff.

**Important**: The [Instructions](#instructions) below apply up to the 17th, at 11:59 PM PT (6:59 AM UTC). After content assembly on the 18th of the month, anyone who wants to include a change in the upcoming release post must coordinate with the Release Post Manager and follow detailed instructions in the [Merging content blocks after the 18th](#merging-content-blocks-after-the-18th) section for special handling of late additions.
{:.alert .alert-info}

##### Key dates

- During kickoff preparation, or when planning for the upcoming milestone: consider creating the release posts early to enable the team to [work backwards](https://www.product-frameworks.com/Amazon-Product-Management.html)
- **10th of the month - Drafted**: ready for review by Product Marketing, Tech Writer, and PM Group Manager or PM Director
- **11th to 16th of the month - Reviewed**: reviewed by all required stakeholders, content revised as needed and ready to be merged
- **17th of the month - Merged**: release post item MR merged by the Engineering Manager if feature has been merged
- **18th of the month - Final content assembly**: and release post blog content lock in preparation for final reviews/editing

##### Instructions

- Create a new branch from `master` for each feature/deprecation
- Open a merge request targeted at the `master` branch
- Use the [Release Post Item template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md)
- Content should be one YAML file added to `data/release_posts/unreleased/` on the `master` branch
  - See `data/release_posts/unreleased/samples/` for format and sample content
  - Note that the structure needs to be preserved, like `features:` then `top:`, then the feature content
  - Images should be placed in `/source/images/unreleased/`
- Update the `data/features.yml` (if applicable) to include your feature and commit the changes as part of the same merge request
- Complete the PM checklist included in the [Release Post Item MR template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md), which includes but not limited to these tasks:
  - Assign the MR to the relevant Tech Writer for review
  - Assign the MR to the relevant Product Marketing Manger, and/or Director if additional review is needed
  - Once all content is reviewed and complete, add the `Ready` label and assign MR to the appropriate Engineering Manager (EM) to merge when the feature is deployed and enabled.

  **Important note on naming files**: PMs should create file names that are descriptive and have reasonable overlap with the title of the content block itself. This makes it easier to related content blocks to yml file by different participants in the review process.

  - Feature file names: `stagename-featurename.yml` (for example, `create-group-wikis.yml`). **Do not:**
    - Designate primary vs secondary as that can change.
    - Use category or group name.
    - Include the reporter's name.

  - Deprecation file names: `dep-something-descriptive.yml`
  - Removal file names: `removal-something-else-descriptive.yml`
  - Upgrade file names: `upgrade-another-description.yml`

  **Some troubleshooting hints:**

  - **Use `git merge`, don't use `git rebase`.** Rebase is a powerful tool that makes for a clean commit history, but due to the volume of commits by the number of collaborators on the `www-gitlab-com` repo, it will typically have a lot of conflicts you'll have to manually work through. Since your content MRs should only contain changes relevant to your own content block and a single addition to `features.yml`, merge conflicts should be minimal, and typically nonexistant. If you start a rebase and run in to issues, you can always back out with `git rebase --abort`.
  - **Remember to close your quotes, check your filenames, and indent properly.** Many vague pipeline errors are caused by common coding gotchas. Make sure your quotes are closed, the file you're referencing uses _exactly_ the same filename you listed, and you have the right indentation set on each line.

#### Content

Be sure to reference your Direction items and Release features. All items which appear
in our [Upcoming Releases page](https://about.gitlab.com/upcoming-releases/) should be included in the relevant release post.
For more guidance about what to include in the release post please reference the [Product Handbook](/handbook/product/product-processes/#communication#release-posts).

When writing your content blocks, be sure to reference [Writing release blog posts](/handbook/product/product-processes/#writing-release-blog-posts) and [Writing about features](/handbook/product/product-processes/#writing-about-features) to ensure your release post item writeups align with how GitLab communicates. For example, we avoid formal phrases such as "we are pleased to announce" and generally speak directly to our users by saying "you can now do x" rather than "the user can now do x". Checking out the links to these guidelines will help you align our tone/voice as you write, ensuring a smoother and more speedy review process for your release post items.

PM contributors are encouraged to use discretion if wanting to add new content blocks after the final merge deadline of the 17th, and especially after final content assembly happens at 8 AM PST (3 PM UTC). But if if highly impactful features are released that can not wait till the next blog post, PMs should reach out and coordinate with the Release Post Manager. It is up to the discretion of the Release Post Manager to work with the PM and Messaging lead to add more content blocks up until the 21st.

#### Primary vs Secondary

When creating your content for a Release Post item you'll need to determine if it's a `Primary` or `Secondary` feature. Do this in collaboartion with your PMM counterpart and reference this guidance if you're unsure:

A feature should be `Primary` if the feature:

- Matures a category (post release you'd update the `category maturity` for the category your feature lives within)
- Is **new**, or a significant improvement - it adds key functionality that did not exist previously or significantly changes existing functionality
- Has high demand from customers or the wider community (measured by discussion or upvotes on an epic/issue)
- Feature ties into a current Marketing narrative or campaign

#### Reviews

PM Director/Group Manager and PMM reviews are highly recommended, but the Tech Writer review is the only one required for inclusion in the Release Post. Tech Writer reivew is required even when late additions are made to the relaese post after the 18th of the month. The Tech Writing review should be focused on looking for typos, grammar errors, and helping with style. PMs are responsible for coordinating any significant content/tech changes. Communicating priority about which release post items are most important for review will help Product Section leads, PMMs, and Tech Writers review the right items by the 10th of each month, so ensure the proper labels ares applied to the MR and assign reviewers to the MR when it is ready for them to review (ex: `Tech Writing`, `Direction`, `Deliverable`, etc).

##### Recommendations for optional PM Director/Group Manager and PMM Reviews

As Director and PMM reviews are not required, but recommended, PMs should consider a few things when determining which content blocks to request a review for:

- Does the feature contribute to a Group or Stage's overall Direction?
- Does the feature contribute to increasing a Category's maturity?
- Does the feature increase our ability to compete in the market?
- Does the feature have considerable customer demand?
- Does the feature represent an significant UX improvement?

If the answer to any of these is "yes", it is recommended that you coordinate with your Director and PMM to review the content block by the 16th. As the PM it is your responsibility to communicate what MRs need review from the TWs, PMMs, and Directors as well as the MRs relative priority if you have multiple content block MRs that need reviews.

#### Merging Content Block MRs

Engineering Managers are the DRIs for merging these MRs when the feature is merged in to the codebase itself. This allows all of the relevant parties (Product Managers, PMMs, Section Leads, Technical Writers) to have enough time to review the content without having to scramble or hold up engineering from releasing a feature.

To enable Engineering Managers to merge their feature blocks as soon as an issue has closed, please ensure all scheduled items you want to include in the release post have content blocks MRs created for them and have the `Ready` label applied when content contribution and reviews are completed.

#### Reviewing, editing and updating merged content blocks

After content block MRs are merged, they can be viewed on the [Preview page](https://about.gitlab.com/releases/gitlab-com/) and should be updated/edited via MRs to master up until the **final merge deadline of the 17th**. Starting on the 18th, content block MRs should be viewed in the Review app of the release post branch after **final content assembly**, and updated/edited on the release post branch by coordinating with the Release Post Manager. It's important to check this page after the content block MR is merged becuase this page is LIVE to users and should be error free.

#### Merging content blocks after the 18th

After the content assembly starts on the 18th of the month and before the 20th, adding any new release post items **must be coordinated with the Release Post Manager**. This is necessary to allow them to assess the impact on the release post and coordinate any necessary adjustments with the release post team (Messaging Lead, Tech Writer, etc.) Failure to do so might result in your changes not being picked into the release post. Before pinging the release post manager, ask yourself if your content absolutely needs to be part of the current release post. At end-of-day on the 19th, no late content blocks will be accepted.

##### Process for merging late additions

- Ping the Release Post Manager (RPM) in `#release-post` to request adding a late addition for the release post, and wait for the RPM to give confirmation to proceed. The RPM will do their best to accommodate the request, but it is not guaranteed.
- If the RPM approves the late addition, then PM and RPM will decide which option below to proceed with:
  1. PM closes the original MR and creates a new MR from the `release-X-Y` branch.
  2. PM manually rebase their MR and updates the target branch to `release-X-Y` branch **and** move image files to the release-specific folder on the `release-X-Y` branch.
  3. PM closes the original MR, and PM or RPM creates a new yaml file for the content block as a direct commit on the release post MR.
- PM notifies the RPM to merge if option 1 or 2 was implemented 
- If the release post item is a top feature or part of the release post theme, the RPM and Messaging Lead will work together to update the release post.

For options 1 and 2 above, see documentation [Develop on a feature branch](https://docs.gitlab.com/ee/topics/git/feature_branch_development.html#use-case-gitlabs-release-posts) for instructions of how to create an MR on a release branch or how to rebase.

#### Accountability

**You are responsible for the content you add to the blog post**. Therefore,
make sure that:

- All new features in this release are in the release post.
- All the entries are correct, especially with regard to links to the documentation or feature pages (when available).
- Feature tier availability: all contain the [correct entry](#feature-availability).
- All primary features are accompanied by their images.
- All new and/or primary features are added to [`data/features.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/features.md) _with a screenshot accompanying the feature (if the feature is visible in the UI)_.
  - All images are optimized according to the [image guidelines](#images) **and** smaller than 150KB
  - Keep in mind the [`features.yml`](/handbook/marketing/website/#adding-features-to-webpages) is the SSOT for displaying features across `about.gitlab.com`.
- All features should have a clear value driver.

As noted in the [Release Post Item template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md):

- Make it clear if a feature is **new**, or is an improvement to an existing feature.
- Make sure your content is reasonably aligned with guidance in [Writing about features](/handbook/product/product-processes/#writing-about-features).
- Ensure that titles use sentence case with feature and product names in capital case.

Write the description of every feature as you do to regular blog posts. Please write according to
the [Markdown guide](/handbook/markdown-guide/).

<i class="fas fa-exclamation-triangle" aria-hidden="true" style="color: red"></i>
**Important!** Make sure to merge `master` into the release post branch **before
pushing changes** to any existing file to avoid merge conflicts. Do not rebase,
do `git pull origin master` then `:wq`.
{: .alert .alert-info}

#### PMs checklist

Once the PMs have included everything they're accountable for, they should **check their item** in the release post MR description:

![PMs check list](features-checklist.png){:.shadow}

By checking your item, you will make it clear to the Release Post Manager that you have done your part in time (during the general contributions stage) and you're waiting for review. If you don't check it, it's implicit that you didn't finish your part in time, despite that's the case or not.

Once all content is reviewed and complete, add the `Ready` label and assign this issue to the Engineering Manager (EM). The EM is responsible for merging as soon as the implementing issue is deployed to GitLab.com, after which this content will appear on the GitLab.com Release page
and can be included in the next release post. All release post items must be merged on or before the 17th of the month. If a feature is not ready by the 17th deadline, the EM should push the release post item to the next milestone.

#### Notes for PMs

**Vacations:**

If you are on vacation before/during the release, fill all your items and create placeholders in the release post Yaml file for all the items you cannot add for whatever reason. To complete them, and to follow up with all the content you are responsible for, assign someone to take over for you and notify the Release Post Manager.

**Replies:**

Please respond to comments in the MR thread as soon as possible. We have a non-negotiable due date for release posts.

**Documentation:**

Please add the `documentation_link` at the same time you add a content block to the release post. When you leave it to add it later, you will probably forget it, the reviewer will ping you later on during the review stage, and you will have little time to write, get your MR reviewed, approved, merged, and available in [the documentation](https://docs.gitlab.com/)

Always link to the "EE" version of GitLab docs `https://docs.gitlab.com/ee/` (not `/ce/`) in the blog post, even if it is a CE feature.

**Bugs:**

It's the PMs discretion on which bugs or performance improvements to include in a release post. When evaluating what to include consider the following factors:

- Amount of impacted users - if the bug you're fixing impacts many users consider adding it to the release post. Not all high volume bugs are worth calling out, be sure to consider severity as well.
- Severity - if the bug is severe (even if it impacts fewer users) consider including it. A performance improvement is a good example, it could be on a feature that sees less use but if you're able to make a significant improvemnt it's worth calling out.
- Any data-loss or security related bug - you've likely already pushed a fix with relevant content in a patch release. If not, be sure to include those types of issues.
- Bugs with high demand - demand being interest from customers (in the form of upvotes, discussions on issues) or the wider community.

It's also recommended you collaborate with your EM in deciding what to include.

### Messaging lead

Each month a Product Marketing Manager (PMM) will lead the messaging and positioning for the release post. Use the handbook guidance below for messaging lead release post preparation and planning. This handbook section is your source of truth from the 18th of the previous month - 11th of the release month. After the 11th of the month, your source of truth to prepare and deliver the release post is in the [monthly release post blog template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md).

The messaging lead is responsible for:

- Deciding on the [top three features](#top-three-features)
- Writing the blog post [introduction](#introduction)
- Coordinating with the PMM team to make sure all feature descriptions have [strong messaging](#messaging-review)
- Ordering release post items, both primary and secondary. (see more info [below](#feature-order))
- [Coordinating Marketing efforts](#marketing-coordination) on release day

#### Identify top three features and themes (18th of the previous month - 11th of the release month)

This section provides guidance on how to decide on top 3 features or themes and timelines:

**Use the handbook guidance below for messaging lead release post preparation and planning. This handbook section is your source of truth from the 18th of the previous month - 11th of the release month.**

- **Around 18th of previous month**
  - Join the monthly kick-off call or listen to the recording on the [GitLab Unfiltered Youtube Channel](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A). The [Product Kickoff Review page's Overview](/direction/kickoff/#overview) links to a playlist for the kickoff videos.
  - Along with the kick-off call or recording, review the [kick-off call agenda](/direction/kickoff/)  
  - Review the [upcoming releases page](/upcoming-releases/), where features the Directors consider important will be highlighted with the label **HIGHLIGHT**
- **After 22nd of the previous month**
  - Schedule a meeting with the previous messaging lead to understand best practices
  - Create a tab for the current release in the [Release Feature Story Planning](https://docs.google.com/spreadsheets/d/1sU3x6uR5wNTwsYroikdHpToi9tRVlZ4n83vjceXjp9A/edit?usp=sharing) spreadsheet by duplicating the previous release tab. Make sure to name the new tab according to the current release number and edit the issue filters in the spreadsheet to sort by the current release milestone (otherwise you'll be looking at a list of the previous month's features).
  - Optional: Make a copy of the [messaging lead story planning doc](https://docs.google.com/document/d/1XoRWJXjWmwdeSE8_bSBcVvBnLhhYdzPW5T8JLYvYVmE/edit?usp=sharing) to fill out as you organize potential themes/features in preparation to circulate your progress for review closer to the release date.
- **Between the 5th and 10th of the release month**, from the [issue list](https://gitlab.com/gitlab-org/gitlab/-/issues) with Milestone 'Release Number', e.g. [filtering for the milestone 12.9](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&milestone_title=12.9), shortlist issues by these criteria:
  - Customer Interest - Look for issues with Label 'customer' and sort by Popularity. Shortlist issues with high number of upvotes (e.g., more than 50)
  - CEO Interest - Look for issues with Label 'CEO Interest'. Shortlist the issues listed
  - Popularity - Sort by Popularity. Shortlist issues with high number of upvotes (e.g., more than 50)
  - Strategic Issues - Look for issues with Label 'Product Vision FY20' and sort by popularity. Shortlist issues with high number of upvotes (e.g., more than 50)
  - Oldest Issues - Sort by Created Date. Shortlist a few of the oldest issues
- **By the 11th of the release month**
  - Shortlist features from the Investor Update from CEO about the top features indicated to investors
  - Start by looking at Release Post Items labeled ~"release post item::primary"
  - Update your [Release Feature Story Planning](https://docs.google.com/spreadsheets/d/1sU3x6uR5wNTwsYroikdHpToi9tRVlZ4n83vjceXjp9A/edit?usp=sharing) spreadsheet tab as necessary with the shortlist of features based on the previous criteria: Customer Interest, CEO Interest, Popularity, Strategic Issues, and Oldest Issues
  - Optional: Update your [messaging lead story planning doc](https://docs.google.com/document/d/1XoRWJXjWmwdeSE8_bSBcVvBnLhhYdzPW5T8JLYvYVmE/edit?usp=sharing) with potential themes/features based on your shortlist criteria
- **On the 11th of the release month, take inventory to make sure you are ready for next steps**
  - You should have already started identifying theme/features based on the various parameters outlined above and [Merge requests](https://gitlab.com/dashboard/merge_requests?scope=all&utf8=%E2%9C%93&state=all) with Milestone 'Release Number' and Label 'release-post' which give the indicator of all the features that could be released
  - Ideally, you've identified more than 4-5 features or themes - as even at this stage, a few features may move to the next release, making a theme irrelevant. Watch the release post [preview page](https://about.gitlab.com/releases/gitlab-com/). Features posted there have been introduced on GitLab.com and are less likely to slip.
  - Remember to leverage your [Release Feature Story Planning spreadsheet](https://docs.google.com/spreadsheets/d/1sU3x6uR5wNTwsYroikdHpToi9tRVlZ4n83vjceXjp9A/edit?usp=sharing) and to update the optional [messaging lead story planning doc](https://docs.google.com/document/d/1XoRWJXjWmwdeSE8_bSBcVvBnLhhYdzPW5T8JLYvYVmE/edit?usp=sharing) if you chose to use it, as it will be very handy in the next several days leading up to release post content reviews

#### Messaging lead positioning, content creation, and stakeholder reviews (11th of the release month - 22nd of the release month)

**From the 11th until the release launch on the 22nd, your source of truth for remaining messaging lead tasks is the detailed PMM checklist included in each month's release post MR description entitled "Messaging content and positioning (Messaging Lead)."**

- The messaging lead tasklist is sourced from the [release post MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md) and acts as the SSoT for the remaining tasks leading up to the release on the 22nd. Date range: 11th of the release month - 22nd day of release.
- After the 11th, you should have completed the preparation and planning tasks in the handbook section above, as well as have an idea or your potential themes/features.

#### Best practices for the release post

- Make sure the titles have “customer value” rather than just name of the features
- Try to get one core feature to illustrate support to the community
- Try to align each item with value drivers

#### Feature order

The messaging lead orders the primary features in the release post to align with the themes they've identified and incorporated into their introduction for the release post. Primary feature content blocks are sorted alphabetically by file name so the messaging lead can affect the order of these items by adding a 2-digit numerical prefix to the file name of each individual content block. For example, `01_filename.yml`, `02_another_file.yml`, etc.

Secondary features, bug fixes, performance improvements, deprecations, removals, and upgrade notes are all sorted alphabetically by title, grouped by stage. In cases where the messaging lead wants to manually affect the sort order of the secondary features, a change to the content block's `title` is required. It is recommended this be coordinated with the release post manager so the PM and the PMM of the content block are involved as needed.

##### Marketing coordination

- The Messaging Lead should coordinate additional marketing efforts that take place on release day, which may include a press release, social media, campaigns, or additional web pages that need to go live. It is recommended that the press release not include a link to the release post so we aren't constrained by any potential delays of the release post. PR sets embargo times with the media in advance that are hard to move the time around should there be any delays with the MR.
- The Messaging Lead should be online and on call to receive Slack messages from 1300 UTC through 1500 UTC (or until the release post ships).
- The Messaging Lead must be informed by the Release Post Manager if the release gets delayed so that they can coordinate timing with the press or any other team involved in the given release.
- **Social Media specific coordination**
  - The Messaging Lead should inform the social team that the release post has published and it's time to schedule social media posts. Use @social on Slack in the #release-post Slack channel, include the release post link and the summary used for the social caption. The social team will schedule posts across channels at the next available best time of day in order to maximize awareness, as well as, schedule a second "in case you missed it" post ~72 hours after the first posts publish. Any further coordination can occur in this Slack conversation.

### PMM Reviewers

#### Messaging review

_Each PM is responsible for pinging their PMM counterpart when they need a review on the messaging for a Release Post Item MR or changes to `features.yml`._

- Leave comments for the PMs on the items file in the MR. Make sure to comment in the diff on the line that you are referring to so that the PM has the context and comments can be resolved appropriately.
- See [writing about features](/handbook/product/product-processes/#writing-about-features) as a guideline for what feature descriptions show have.
- Review the messaging for these features look for these 4 elements
  - **problem/solution**: Does this describe the user pain points (problem) as well as how the new feature removes the paint points (solves the problem)?
  - **short/pithy**: Is this communicated clearly with the fewest words possible?
  - **tone clarify**: Is the language and sentence structure clear and grammatically correct?
  - **technical clarity**: Does the descripton of the feature make sense for various audiences, including folks who are not deeply familiar with GitLab?
  - **value driver**: Does the feature help our users Increase Operational Effectiveness, Deliver Better Products Faster or Reduce Security and Compliance Risk?
- To understand the feature better look at the issue and MR for the feature, they are linked in the YAML. Sometimes the issue description will include the value prop. Read the comments in the issue and MR for the feature, often users and customers will chime in with why they want a feature and what pain the lack of the feature is causing.
- The release post and `features.yml` can have the same or very similar content. E.g. same screen shot.
  - The tone of the release post is more about introducing the feature "we're happy to ship XYZ..."
  - The tone of `features.yml` should be [evergreen](https://www.thebalancecareers.com/what-is-evergreen-content-definition-dos-and-don-ts-2316028) to appear on our website in various places.

### TW Lead

**Note:** Technical writers review the individual release post items according
to the [stage/group they are assigned to](/handbook/engineering/ux/technical-writing/#designated-technical-writers).
Each month, one of the technical writers is also responsible for the structural
check of the final release post merge request. This section is about the latter.
{: .alert .alert-info}

The TW Lead is responsible for a final review of:

- [Structural check](#structural-check)
  - [Release post top feature](#release-post-top-feature)
  - [Release post primary features](#release-post-primary-features)
  - [Release post secondary features](#release-post-secondary-features)
- [Frontmatter check](#frontmatter)
- [Bugs](#bugs-mr)
- [Performance improvements](#performance-improvements-mr)
- [MVP check](#mvp-check)

While individual [TW reviewers](#tw-reviewers) are responsible for reviewing the structure and content of individual feature items,
the TW Lead still has overall responsibility for confirming that style and language
remain reasonably consistent and that all links point to relevant content.

#### Structural check

_A technical writer, once assigned to the release post merge request, will check the syntax and the content structure._

The **Structural check** [checklist in the main release post merge request description](../../../../../../../.gitlab/merge_request_templates/Release-Post.md)
will guide them through the structural check.

Given that the technical writing review occurs in release post items'
merge requests, the purpose of the structural check is:

- Review the overall post for consistency. For example, if there's an entry that deprecates an item called `auth-server`, raise questions if there's also an entry that removes an item referred to as `auth_server`.
- Make sure the post renders well.
- The content as a whole clearly describes the new features and feature improvements.
- Check all the links work and are in place.
- Check for syntax errors, typos and grammar mistakes, remove extra whitespace.
- Verify that the images look harmonic when scrolling through the page (for example, suppose that most of the images were screenshots taken of a large portion of the screen and one of them is super zoomed. This one should be ideally replaced with another that looks more like the rest of the images).
- This should happen in the release post item review, but if there's time, double-check documentation links and product tiers.

Pay special attention to the release post Markdown file, which adds the introduction.
Review the introduction briefly, but do not change the writing style nor the messaging;
these are owned by PMMs, so leave it to them to avoid unnecessary back-and-forths.
Make sure feature descriptions make sense, anchors work fine, all internal links have
the relative path.

#### Making changes

Until the 18th, at 8 am Pacific Time, the TW Lead should be able to make changes directly to the release post. After that time, anyone who wants to include a change in the upcoming release _may_ need to submit it in a separate MR, with a target of the `release-X-Y` branch. For more information, see our documentation ho how to [Develop on a feature branch](https://docs.gitlab.com/ee/topics/git/feature_branch_workflow.html).

#### Release post top feature

Pay close attention to the content of this item. As this will be the "headline" feature
for the release, it's especially important "to get this right."

To identify the [Top feature](#top-feature), look for `top` directly beneath `features` in the RP `.yml` file:

```yaml
features:
  top:
```

Each [TW reviewer](#tw-reviewers) retains prime responsibility for each RP, [Deprecations](#deprecations), [Removals](#removals), and [Upgrades](#upgrades).

#### Release post primary features

All release post [primary features](#primary-features) should already have been reviewed by the [TW reviewer](#tw-reviewers).
If you find an issue, do work with the TW reviewer, if time permits.

To identify the primary features, look for `primary` directly beneath `features` in the RP `.yml` file:

```yaml
features:
  primary:
```

#### Release post secondary features

All release post [Secondary features](#secondary-features-other-improvements) should already have been reviewed by the [TW reviewer](#tw-reviewers).
If you find an issue, do work with the TW reviewer, if time permits.

To identify the primary features, look for `primary` directly beneath `features` in the RP `.yml` file:

```yaml
features:
  secondary:
```

Images or videos are not required for secondary features.

#### Frontmatter

In its [frontmatter](#frontmatter):

- Look for each entry as shown on the code block below.
- Remove any remaining HTML comments and unused blocks to clean up the file.
- Make sure that `title` is no longer than 62 characters, to ensure it presents well against the blog post's title graphic.

```yaml
---
release_number: "X.Y"
title: "GitLab X.Y Released with Feature A and Feature B"
author: "Name Surname"
author_gitlab: gitlab.com-username
author_twitter: twitter-username
categories: releases
image_title: '/images/X_Y/X_Y-cover-image.ext'
description: "GitLab X.Y Released with XXX, YYY, ZZZ, KKK, and much more!"
twitter_image: '/images/tweets/gitlab-X-Y-released.jpg'
layout: release
featured: yes
# header_layout_dark: true #uncomment if the cover image is dark
# release_number_dark: true #uncomment if you want a dark release number
---
```

**Layout:**

The last two entries of the post's frontmatter give the option for a
different layout. If you want to use a dark cover image, you'll need
to uncomment `header_layout_dark: true`.

If you want only the release number to be dark, uncomment
`release_number_dark: true`.

These two variables work independently; you can assign either of them
or both of them to the same post.

Note: Because there are no individual TW reviewers for the performance improvements and bug fixes (#performance-improvements-and-bug-fixes) content block MRs, Engineering Managers and Product Managers will contribute to MRs created by the Release Post Manager. The MR will be assigned to the TW Lead by th 16th to review, mark with Ready label and assign to the Release Post Manager to merge.

#### Bugs MR

As the TW Lead, you're responsible for reviewing an MR created for [bug fixes](#create-mrs-for-bugs-and-performance-improvements).
This MR has **not** been reviewed by any other TW. For this MR, you'll check:

- The title of the bug, for syntax and clarity.
- The link to the bug report.
- Whether the bug has been closed.
  - If the bug is closed, was it closed on or before the current milestone?
  - If the bug is still open, make sure that the responsible EM, PM, or bug author is aware of the situation.
  - If the bug will not be closed by the 20th of the month, remove the entry from the Bugs MR.

#### Performance Improvements MR

As the TW Lead, you're responsible for reviewing an MR created for [performance improvements](#create-mrs-for-bugs-and-performance-improvements).
This MR has **not** been reviewed by any other TW. For this MR, you'll check:

- The title of the performance improvement issue, for syntax and clarity.
- The link to the performance issue.
- Whether the issue has been closed.
  - If the issue is still open, make sure that the responsible EM, PM, or bug author is aware of the situation.
  - If the issue will not be closed by the 20th of the month, remove the entry from the Bugs MR.

#### MVP entry

As the TW Lead, you're responsible for reviewing the entry for the [MVP of the month](#mvp).
This MR has **not** been reviewed by any other TW. For this MR, you'll check this MR for:

- Consistency, as requested by the PMM.
- All links from the MVP description.
- "Look and feel" as built. Sometimes it's better to collect all info for the MVP in one or two paragraphs.

#### Links to external blogs

The introducton or other parts of the release post written may include links to external blogs posts. These links may be broken till the 21st but should still  be flagged by the TW lead during structural check so the Release post manager and Messaging lead  don't miss coordinating with authors of these external blogs to make sure they're live before the release post blog goes live on the 22nd. 

### TW Reviewers

**Note:** TW reviewers should not be confused with the [TW lead](#tw-lead).
{: .alert .alert-info}

Each person of the Technical Writing team is responsible for the review
of each individual release post item that falls under their
[respective stage/group](/handbook/engineering/ux/technical-writing/#designated-technical-writers).

When the PM creates the release post item merge request, they should assign to the TW
of their group for review (required). The process of the TW review is described in the
[release post item template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md).

### Engineering Managers

The responsibilities of the Engineering Manager are documented in the
[Engineering Handbook](/handbook/engineering/workflow/release-feature-determination-workflow/).

---

## Monthly release blog post sections

- [Introduction](#introduction)
- [CTA buttons](#cta)
- [MVP](#mvp)
- [Features](#features)
  - [Top feature](#top-feature)
  - [Primary features](#primary-features)
  - [Secondary features (improvements)](#improvements)
  - [Illustrations](#illustrations) (screenshots, gifs, or videos)
  accompanying their respective features
- [Performance improvements and bug fixes](#performance-improvements-and-bug-fixes)
- [Omnibus improvements](#omnibus-improvements) (added as a secondary feature)
- [Important notes on upgrading](#important-notes-on-upgrading) (optional)
- [Deprecations](#deprecations)

### Introduction

_The messaging lead writes the introduction for the release post._

Add the copy for the intro to the blog post file (`YYYY-MM-DD-gitlab-X-Y-released.html.md`), in regular Markdown. This file linked at the top of the release post MR. E.g. [GitLab 11.2 blog post file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/posts/2018-08-22-gitlab-11-2-released.html.md)

```md
Introductory paragraph

Introduction
```

The first paragraph is the one that catches the eyes of the reader, it should be punchy giving a summary of the most significant features. This first paragraph can then be used as a summary on the homepage and on social media. It should catch attention and cause the reader to want to read more.

The following paragraphs should highlight the business value of top 3 features and link to the feature description (link using the feature headings' anchors). It's important to highlight the pain points solved and the value the feature provides.

A final paragraph can give a shout out to additional features encouraging the reader to read the full release notes to learn about all the features have that shipped.
It should also include the total number of new features being released, including bugs, performance improvements, and contributions from non-DevOps stages like Enablement. All of these should be listed in the release post, either as headers or bullet points.

@mention the PMs whose features are included the intro and ask them to review.

Examples of previous release post intros written by PMM:

- [GitLab 10.8 released](/blog/2018/05/22/gitlab-10-8-released/)
- [GitLab 11.0 released](/blog/2018/06/22/gitlab-11-0-released/)
- [GitLab 11.1 released](/blog/2018/07/22/gitlab-11-1-released/)

#### Linking to external blogs

The introduction or other parts of the release post written by the Messaging lead may include links to external blogs posts. It is important that the Messaging lead coordinates with authors of these external blogs to make sure they're live before the release post manager pushes the release post blog live on the 22nd. 

### CTA

Call-to-action buttons displayed at the end of the introduction. A CTA to the [events page](/events/) is added by default. Add webcasts, or custom buttons to this entry whenever necessary.

```yaml
cta:
  - title: Join us for an upcoming event
    link: '/events/' # relative link
  - title: Lorem ipsum dolor sit amet
    link: 'https://example.com' # external link
```

### MVP

To display the [MVP of the month](/community/mvp/), use the example provided in this template, and adjust it to your case. Don't forget to link to the MR with the MVP's contribution.

```yaml
mvp:
  fullname: Dosuken Shinya # full name
  gitlab: dosuken123 # gitlab.com username
  description: | # supports markdown. Please link to the MR with the MVP's contribution.
    Dosuken extended our [Pipelines API](http://docs.gitlab.com/ee/api/pipelines.html#list-project-pipelines)
    by [adding additional search attributes](https://gitlab.com/gitlab-org/gitlab-ce/merge_requests/9367).
    This is a huge improvement to our CI API, for example enabling queries to easily return the latest
    pipeline for a specific branch, as well as a host of other possibilities. Dosuken also made a great
    contribution last release, laying the foundation for
    [scheduled pipelines](https://gitlab.com/gitlab-org/gitlab-ce/merge_requests/10133). Thanks Dosuken!
```

Solicit MVP nominations in the `#release-post` and `#community-relations` Slack channels by sharing a link to an issue for collaboration (example: [Release Post 13.6 MVP Nominations](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/9647)). Add candidates to the MVP Nominations issue as soon as you see a contribution or a set of contributions that you think are great and should be taken into consideration for selection. Every GitLab team-member and core team member is encouraged to add suggestions to the MVP Nominations issue with a link to the contributor's issue and merge request. If there are no MVP nominations by the 15th of the month, reaching out to the Core team #core in Slack for nominations is recommended.

Based on this discussion, the Release Post Manager will make a decision. They should not wait for consensus. There can only be one MVP.

The MVP will be prized with a gift from GitLab, usually a swag pack. :)

**Important**: the MVP section should briefly describe what the feature is about,
link to the GitLab profile of the MVP, and link to the issue, MR, issue board, or
epic that introduced the change that awarded by the MVP.
If it is a major feature, it must be accompanied by a content block with a more
detailed description linked from the MVP section. The MVP feature, as well as
any other feature, regardless of who shipped it, must be documented and linked
to the docs.
{:.alert .alert-warning}

**Important**: remember to update `data/mvps.yml` with the new MVP.
{:.alert .alert-info}

### Features

The most relevant features of the release are included in the post by [product managers](/handbook/product/product-categories/#devops-stages). Classify the feature according to its relevance and to where you want to place it in the blog post:

#### Top feature

The most important feature of the release, mentioned right after the MVP section. Images can be added at will in the description entry. A link to the documentation is required.

#### Primary features

Features with higher impact, displayed in rows after the top feature, with an image next to its text. An image accompanying the description is required. A [video](#videos) can also be added to replace the image.

#### Secondary features (other improvements)

Relevant improvements in GitLab. Image is not required, but recommended.

If the secondary feature is promoted to a primary feature, the PM or EM will be asked to supply an image on **short notice**.

### Content blocks

_**Note:** "Feature blocks" are now known as content blocks, as there are many that are not just features. For example, we include upgrade warnings, Omnibus installer improvements, and performance enhancements._

Use content blocks to add features or other content to the YAML data file. The layout will be applied automatically by Middleman's [templating system](/blog/2016/06/10/ssg-overview-gitlab-pages-part-2/#template_engine).

Content blocks in the YAML data file contain the following entries, as exemplified below:

```yaml
features:
  primary:
    - name: "Multi-Project Pipeline Graphs"
      available_in: [premium, ultimate]
      documentation_link: 'https://docs.gitlab.com/ee/ci/multi_project_pipelines.html#multi-project-pipeline-visualization-premium'
      image_url: '/images/9_3/multi-project_pipelines.png'
      reporter: bikebilly
      stage: secure
      categories:
        - "Application Security Testing"
        - "SAST"
      issue_url: 'https://gitlab.com/gitlab-org/gitlab/issues/1234'
      description: |
        Lorem ipsum dolor sit amet, [consectetur adipisicing](#link) elit.
```

#### Primary vs Secondary

The second line of the content block should indicate whether the feature is a primary or secondary feature. For primary features, use the `primary` key as shown in the [sample content block above](/handbook/marketing/blog/release-posts/#content-blocks). For secondary features, replace the `primary` key with the word `secondary`.

#### Feature name

- `name`: feature name, capitalized

Use a short and strong name for all feature names.

#### Feature Availability

Use the following pattern to apply the correct badge to the feature (Core, Starter, Premium, Ultimate).

- `available_in`: availability of that feature in GitLab:
  - For GitLab Core, use `[core, starter, premium, ultimate]`
  - For GitLab Starter, use `[starter, premium, ultimate]`
  - For GitLab Premium, use `[premium, ultimate]`
  - For GitLab Ultimate, use `[ultimate]`

If the feature is available in GitLab.com, the badges for GitLab.com will be
applied automatically according to the self-managed availability. For example,
`available_in: [premium, ultimate]` will "turn on" the badges Premium, Ultimate,
Silver, and Gold.

If the feature is not available in GitLab.com, e.g., LDAP and admin settings,
use the tag `gitlab_com: false` to turn off the entire GitLab.com badges' row. For
example, for GitLab Geo features, use:

```yaml
available_in: [premium, ultimate]
gitlab_com: false
```

If the feature is only available in GitLab.com, e.g. subscriptions, you can use
the following badges:

- `available_in`: availability of that feature in GitLab.com:
  - For GitLab.com Free, use `[free, bronze, silver, gold]`
  - For GitLab.com Bronze, use `[bronze, silver, gold]`
  - For GitLab.com Silver, use `[silver, gold]`
  - For GitLab.com Gold, use `[gold]`

If, however, the feature is only available on GitLab.com because it is behind a
feature flag and disabled by default, it should not be included in the release
post unless you are deliberately seeking beta testers.

#### Documentation

Provide a link to the **updated** documentation for the feature. It is a required field.
It can be, in this priority order:

- A **feature documentation** link, when available
- A **feature-related documentation** link, when a dedicated doc is not available.

**Important**: always link to the EE documentation, even if the feature is available in CE.
{:.alert .alert-info}

Note: `documentation_text` was deprecated by [!13283](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/13283) for GitLab 11.2.

**Important:** Every feature mentioned on the release post must link to an
up-to-date document shipped in time, before the feature freeze.
_"Docs or it didn't happen!"_
{:.alert .alert-warning}

#### Illustration (images, videos)

- `image_url`: link to the image which illustrates that feature.
Required for primary features, optional for secondary features and top feature.
- `image_noshadow: true`: if an image (`image_url`) already has shadow
the entry `image_noshadow` will remove the shadow applied with CSS by default. Optional.
- `video`: when present, overrides the image and displays the linked video instead. See the [Videos](#videos)
section for more information.

Check the section **Adding Content** > [Illustrations](#illustrations) for more information.

#### Feature reporter

- `reporter`: GitLab handle of the user adding the content block to
the release post (not the feature author).
This should be the PM responsible for the feature, so in the review
phase anyone knows who they have to ping in order to get clarifications.
It is a required field.

#### Stage

- `stage`: the [stage](/stages-devops-lifecycle/) the feature belongs to (lowercase):

  - [`manage`](/stages-devops-lifecycle/manage/)
  - [`plan`](/stages-devops-lifecycle/plan/)
  - [`create`](/stages-devops-lifecycle/create/)
  - [`verify`](/stages-devops-lifecycle/verify/)
  - [`package`](/stages-devops-lifecycle/package/)
  - [`release`](/stages-devops-lifecycle/release/)
  - [`configure`](/stages-devops-lifecycle/configure/)
  - [`monitor`](/stages-devops-lifecycle/monitor/)
  - [`secure`](/stages-devops-lifecycle/secure/)
  - [`protect`](/stages-devops-lifecycle/protect/)
  - [`enablement`](/handbook/product/product-categories/#enablement-stage).

The stages display as an icon next to the product tiers' badges linking
to the stage webpage using a regex:
`https://about.gitlab.com/stages-devops-lifecycle/<stage>/`. We can
also override it with a [custom stage URL](#custom-stage-url).

Although `stage` is a required field, if a feature doesn't
belong to any of the stages at all, you can delete the `stage`
line and it won't output anything.

Besides displaying the icon, with `stage` set, PMs can easily
find anything that is related to their area, even if reported by
other users.

**Note:** `team` was [deprecated](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/17198)
in December 2018 for GitLab 11.6 in favor of `stage`, with a follow-up iteration
introducing their [respective icons](https://gitlab.com/gitlab-com/www-gitlab-com/merge_requests/17210).
{: .alert .alert-info}

##### Custom stage URL

For stages outside of the DevOps lifecycle, such as Enablement
and Growth, which don't have the same path as the other stages
(`/stages-devops-lifecycle/<stage>`), it is necessary to add
the `stage_url` to the content block to override the default path:

```yml
# Enablement
stage: enablement
stage_url: '/handbook/engineering/development/enablement/'

# Growth
stage: growth
stage_url: '/handbook/product/growth/'
```

#### Categories

- `category` (array): Any category(ies) the feature belongs to. These are usually attached
to the feature's issue as labels. A list of categories can be found in
[`/data/categories.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/categories.yml).
Make sure to add the category `name` exactly as typed on the data file.

#### Related issue, epic, merge request, or webpage

- `issue_url`: link to the issue on GitLab.com where the feature is discussed
and developed. Using this link the reviewer can check the status of the specific
feature for consistency and additional references.
It is a required field, but can be replaced with `mr_url`, `issueboard_url`, or `epic_url`.
Always wrap links in single quotes (`'https://example.com'`).
- `issueboard_url`: link to the issue board related to the feature. Not required, but available.
- `mr_url`: link to the MR that introduced the feature. Not required, but available.
- `epic_url`: link to the epic related to the feature. Not required, but available.
- `webpage_url`: link to the marketing webpage for a given feature. Not required, but available.

#### Feature description

- `description: |`: add the feature's description in this entry.
Make sure your cursor is in the line below the pipeline symbol `|` intended once.
All `description` fields fully support [Markdown](/handbook/markdown-guide/), the only thing you need to be worried about is respecting the indentation.

### Cover image license

According to our [Blog handbook](/handbook/marketing/blog/#cover-image), it's necessary to provide the source of the cover image. Fill in the entry below to display this info at the very end of the `...release.html.md` blog post:

```yaml
cover_img:
  image_url: '#link_to_original_image'
  licence: CC0 # which licence the image is available with
  licence_url: '#link_to_licence'
```

### Important notes on upgrading

_To be added by the Distribution Product Manager._

The "upgrade barometer" section was [deprecated](https://gitlab.com/gitlab-com/gl-infra/delivery/issues/124) on GitLab 11.8 and replaced with a section
called "Important notes on upgrading to GitLab X.Y".
{:.alert .alert-info}

Upgrade warnings should be added to the release post **only to describe important upgrade notes**, such as:

- Migrations, post migrations, background migrations
- Downtime
- Special cases

If there's no relevant info to a given release, do not add this section
to the post.

### Performance improvements and bug fixes

_To be added by Engineering Managers and Product Managers._

The Release Post manager will [create MRs](#create-mrs-for-bugs-and-performance-improvements), post notifications and share reminders to collect contributions for performance improvements and bugs. Engineering Managers will contribute to performance improvements and both Engineering Managers and Product Managers will contribute to bug fixes.

### Omnibus improvements

_To be added by the Distribution Product Manager._

This section should contain any relevant updates for packaged software, new features, and new commands relating to the administration of self-managed GitLab instances deployed using the Omnibus package e.g. (`gitlab-backup`).

### Extras

_To be added by Product Managers and merged by Engineering Managers._

If you need an extra block to convey important info, and it doesn't fit the other blog post sections, you can use the `extras` block, right before `deprecations` (in the release post YAML datafile):

```yaml
extras:
  - title: "Hello World"
    description: | # supports markdown
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur, beatae!
```

For more multiple blocks, use:

```yaml
extras:
  - title: "Hello World"
    description: | # supports markdown
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur, beatae!
  - title: "Lorem"
    description: | # supports markdown
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque.
```

### Deprecations

_To be added by Product Managers or Engineering Managers and merged by either._

Describe the deprecations happening in that release or in upcoming releases. Note that there are differences in [deprecations and removals](/handbook/product/gitlab-the-product/#deprecating-and-removing-features),
so be sure to include the relevant details on when the feature will be removed from GitLab in the post. Let our community know about a future deprecation as soon as possible. When adding deprecations be sure to keep with the same structure of "XYZ feature or function will be deprecated at ABC time."

The due date is defined by the removal of that feature. The field is required, and should be set as:

- The date of the removal, e.g., "May 22nd, 2017", or
- An upcoming release (_only_ if the release date in unknown), e.g., "GitLab 12.0", or
- An estimation of the removal date, e.g., "January 22nd, 2019 (estimated)", or
- An estimation of the removal release (_only_ if the release date in unknown), e.g., "GitLab 12.0 (estimated)"

If the deprecation is scheduled for an upcoming release, the content should remain in the release post until it has been completed. For example, if a deprecation is announced in the 12.9 release post and scheduled to be completed in 13.0, the same content would be included in release posts 12.9, 12.10, and 13.0.

Please set up one deprecation per MR by creating a new .yml file in the `/data/release_posts/unreleased/` folder with the following contents:

```yaml
deprecations:
  - feature_name: Lorem ipsum dolor
    due: May 22nd, 2017 # example
    reporter: bikebilly # item author username
    description: |  # example (supports markdown)
      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
      Veritatis, quisquam.
```

No other changes are required and the `features.yml` file should not be edited until the feature is removed from the product.

Per GitLab's [Versioning Policy](https://docs.gitlab.com/ee/policy/maintenance.html#versioning), non-backward compatible and breaking changes are recommended for a major release, whereas backward compatible changes can be introduced in a minor release.

Once complete, assign the MR to the [technical writer](/handbook/engineering/ux/technical-writing/#designated-technical-writers) assigned to the stage.

When approved, include the "Ready" label in the MR before merging.

---

### Removals

_To be added by Product Managers or Engineering Managers and merged by either._

Describe the features that are being removed in the upcoming release. Removals should be planned.
If possible, set up a [deprecation](#deprecation) notice at least one minor release before removing a feature.

Note the differences between [deprecations and removals](/handbook/product/gitlab-the-product/#deprecating-and-removing-features),
so be sure to include the relevant details on when the feature will be removed from GitLab in the post.

The `date_of_removal`due date is defined by the removal of that feature. The field is required, and should be set as:

- The date of the removal, e.g., "May 22nd, 2017"

Please set up one removal per MR.

```yaml
removals:
  - feature_name: Lorem ipsum dolor
    date_of_removal: May 22nd, 2017 # example
    reporter: bikebilly # item author username
    description: |  # example (supports markdown)
      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
      Veritatis, quisquam.
```

If you need to set up multiple removals, notify the [Release Post Manager](#release-post-manager) and make use of multiple feature removal blocks in a single file:

```yaml
removals:
  - feature_name: Lorem ipsum dolor
    date_of_removal: May 22nd, 2017 # example
    description: |  # example (supports markdown)
      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
      Veritatis, quisquam.
  - feature_name: Lorem ipsum dolor
    date_of_removal: May 22nd, 2017. # example
    description: |  # example (supports markdown)
      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
      Veritatis, quisquam.
```

The `/data/features.yml` file should also be edited with the removed features deleted from the file.

Per GitLab's [Versioning Policy](https://docs.gitlab.com/ee/policy/maintenance.html#versioning), non-backward compatible and breaking changes are recommended for a major release, whereas backward compatible changes can be introduced in a minor release.

Once complete, assign the MR to the [technical writer](/handbook/engineering/ux/technical-writing/#designated-technical-writers) assigned to the stage.

When approved, include the "Ready" label in the MR before merging.

---

### Upgrades

_To be added by Product Managers or Engineering Managers and merged by Engineering Managers._

Describe any considerations administrators should have when upgrading. These could be warnings about potential data loss, recommendations for maintenance beforehand, and other similar concerns.

_One notable example was in %12.10, [we required administrators to migrate from Postgres 10 to Postgres 11](https://about.gitlab.com/releases/2020/04/22/gitlab-12-10-released/#upgrade)._

```yaml
upgrade:
    reporter: bikebilly # item author username
    description: |  # example (supports markdown)
      Lorem ipsum dolor sit amet, consectetur adipisicing elit.
      Veritatis, quisquam.
```

Once complete, assign the MR to the [technical writer](/handbook/engineering/ux/technical-writing/#designated-technical-writers) assigned to the stage.

When approved, include the "Ready" label in the MR before merging.

## Adding content

For entries that support Markdown, use regular [Markdown Kramdown](/handbook/markdown-guide/), as we use for all blog posts and webpages on about.GitLab.com.

### Illustrations

#### Images

- {:#alt} Make sure every image has an
  [alternative text](/handbook/markdown-guide/#images)
- {:#images-compressed} Each image should be compressed with [ImageOptim](https://imageoptim.com),
  [TinyPNG](https://tinypng.com/), or similar tool. You can also try [automation tools like Hazel or Automator](https://about.gitlab.com/blog/2020/01/30/simple-trick-for-smaller-screenshots/)
- {:#image-size-limit} Each image should not surpass 150KB (300KB for cover
  image), gifs included
- [pngbot](https://gitlab.com/jramsay/pngbot) will compress PNG images added in
  merge request by converting each PNG to PNG 8 (8 bit, 256 colors) using
  [pngquant](https://pngquant.org) before losslessly compressing with
  [zopflipng](https://github.com/google/zopfli).
- {:#application-screenshots} **Application screenshots**:
  - Make sure that the application screenshot captures the feature to make it
    immediately recognizable
  - Include **only* the necessary UI context to allow the reader to identify where this
    feature is available. Minimize empty space in a screenshot. You may need to make
    your browser window smaller before taking the screenshot, to bring UI elements
    closer together.
  - Crop screenshots so that they are wide, not square, so that when they fill
    the column width and do not take up large amounts of vertical space.
  - Avoid resizing images. Ideally include the screenshot at native High DPI
    (Retina Display) resolution so that it is sharp when viewed on these displays
  - Reduce the number of colors in your screenshot using a quantizer like
    [ImageAlpha](https://pngmini.com/), [pngquant](https://pngquant.org/), or
    [TinyPNG](https://tinypng.com/). Try reducing the number of colors to
    fewer than 256 colors (default) to increase savings. Small savings add up
    over many images.
  - Finally compress your image using a lossless compression tool like
    [ImageOptim](https://imageoptim.com), or
    [zopflipng](https://github.com/google/zopfli) to reduce the file size even
    further, saving an additional 5-20%.
  - In most instances it should be possible to reduce a PNG screenshot well
    below 100KB. Small savings on each image accumulate quickly and reduce the
    page load time significantly.
  - Screenshots throughout the post should be harmonic and consistent in terms
    of their size and quality
- {:#gifs} **Animated gifs**:
  - If a gif isn't necessary, replace it with a static image (.png, .jpg)
  - If an animation is necessary but the gif > 300KB, use a video instead
- {:#cover-image} **Cover image**:
  use a unique cover image for every post, usually from [Unsplash](https://unsplash.com/), and add
  [the required copyright info](#cover-image-license) into the Yaml file.
  This image should be eye-catching, inspiring and avoid images of people. Suggested aspect ratio is 3:1 and resolution should be enough to be good-looking on big displays. To test the image and see how it fits (without waiting for a build or running the handbook locally):
  - Navigate to a previous release post
  - Using a web inspector find the element `<div class="cover" style="background-image: url();">`
  - Inside of `url()` replace the string with the URL of the upsplash image (the actual URL of the image, you may need to right-click the image and select "copy image address")
  - Hit the enter key and you should see the image render inside of your web browser
- {:#image-shadow} **Image shadow**:
  when you add images though the text,
  make sure all images have the class shadow applied:
  - `![image alt text](#img-url){:.shadow}`
  - If the original image already has shadow applied, don't use `{:.shadow}`.
  - If you're inserting the image in the YAML file via `image_url` entry, add the `image_noshadow: true` [entry](#feature-blocks) right after `image_url`.
- {:#social-sharing-image} **Social sharing image**:
  It's required to add a [social sharing image](../index.html#social-media-info) to the blog post. It is the image that will display on social media feeds (and Slack) whenever the link to the post is shared. The image is created in coordination with the social media team.
  - Around the 20th, the messaging lead should tag @social in the release post issue, link to the blog hero chosen image, and provide the blog title. A member of the social team will then create the image needed, adding two commits to the MR: 1 for uploading the image to the directory, and 1 adding the image URL in the `twitter_image` section of the frontmatter in the blog post.
  - Images used for release posts will be placed under `source/images/opengraph/release-posts/` directory and named after the post's filename release number (xx-x in the title).

#### Videos

You can add YouTube videos to content blocks that can either override the image or add it within the Markdown description as described below.

##### Videos in content blocks

For content blocks, you can add a video instead of an image by using the entry `video:`.
If both are present, the video will override the image (it won't display the image, only the video). Example:

```yaml
- name: "Awesome Feature"
  available_in: [premium, ultimate]
  documentation_link: 'doc-link'
  video: "https://www.youtube.com/embed/eH-GuoqlweM"
  description: |
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, provident.
```

Make sure to add the `/embed/` video URL from YouTube. Follow the steps
described on the [Markdown guide](/handbook/markdown-guide/#display-videos-from-youtube) to find the correct path.

##### Videos added to the description

When added to an entry that supports Markdown, every [video should be wrapped into a figure tag](/handbook/markdown-guide/#videos), as shown below:

```yaml
- name: "Awesome Feature"
  ...
  description: |
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, provident.

    <!-- Leave a blank line above and below the code below. Do not change the code block in any ways, except for the video URL. Leave the indentation as-is and do not remove the whitespace before </iframe>. Remove this comment when ready. -->

    <figure class="video_container">
      <iframe src="https://www.youtube.com/embed/PoBaY_rqeKA" frameborder="0" allowfullscreen="true"> </iframe>
    </figure>

    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, provident.
```

The `<figure>` element is recommended for semantic SEO and the `video_container` class will assure the video is displayed responsively.

Consult the [Markdown guide](/handbook/markdown-guide/#videos) for the correct Markdown markup to apply to different sources (YouTube, Google Drive, HTML video).

## Technical aspects

The release post is created from many small data files, that are rendered into the final form using templates and helpers.

The content files need to be created every release with the content unique to that release, as described by the section [getting started](#getting-started).

The template and helper files are used to render the blog post from the many content files, and do not need to be changed in most releases.

- **Templates:**
  - [Layout (Haml) file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/layouts/release.haml):
    creates a layout for the final HTML file, and requires the include file below.
  - [Include (Haml) file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/includes/release.html.haml):
    builds the content of the post applying custom styles. Its markup includes semantic SEO improvements.
- **Helpers:**
  - [Helper (Ruby) file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/helpers/release_post_helpers.rb): when the release post is being rendered, the helper combines all the release post items into a variable that is used by the include (Haml) file. The output of the helper is consistent with single data file process used until GitLab 12.8.
- **Content:**
  - **Data (YAML) files**: each contain the content for one feature, improvement, or deprecation. Data files are added to the [unreleased](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/release_posts/unreleased) directory, and then moved to a [release](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/release_posts/12_8) directory. The purpose of the helper (Ruby) is to combine these files when rendering the release post.
  - **Blog post (Markdown) file**: the blog post file holds the introduction of the blog post and frontmatter ([template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/monthly_release_blog_template.html.md), [example](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/sites/marketing/source/releases/posts/2017-05-22-gitlab-9-2-released.html.md)).

To learn more how the template system works, read through an overview on [Modern Static Site Generators](/blog/2016/06/10/ssg-overview-gitlab-pages-part-2/).

### Release post item generator

The [release post item generator](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/bin/release-post-item) automates the creation of release post items using issues and epics. Issues and epics are the source of truth for what problems are being solved and how, and should have a clear description, and be well labeled. The script uses this information to pre-fill release post item MRs:

| Issue/Epic element                                      | Release Post Item Attribute (yml) or MR element |
|---------------------------------------------------------|-------------------------------------------------|
| Issue Title                                             | `title:`                                        |
| Label `devops::`                                        | `stage:`                                        |
| Label `group::`                                         | assigns group product manager as reporter, and tags [relevant team members in the MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md) |
| label `category:`                                       | `categories:`                                   |
| Label `release post item::` (`primary`/`secondary`)     | content block type `primary:` or `secondary:`   |
| Label tier (e.g. `GitLab Core` `GitLab Ultimate`)       | `available_in:`                                 |
| Issue web url (i.e. `/gitlab-org/gitlab/-/issues/####`) | `issue_url:`                                    |
| Issue description under `### Release notes`             | `description:` will contain all text except for the `documentation_link` and `image_url` <br><br>`documentation_link:` is the first URL in the `### Release notes` section containing `https://docs.gitlab.com*` <br><br>`image_url:` is the first image added to the `### Release notes` section. (e.g. `Image: ![name](/path/)`) |

To ensure the generator script runs correctly follow the process below:

1. Make sure the issue is open.
1. Update your issue or epic with content in `### Release notes` (including a docs link and image, although those can always be added/updated in the MR later) specifically having it contain both a `Description:` then a `Documentation:`.
1. Make sure `devops::`, `group::`, `category:` and tier (e.g. `GitLab Core`) labels are applied
1. Apply one of the `release post item::` scoped labels. This will make the generator script pick up your issue next time it runs (once per hour)

Once the script runs an draft MR in the `/gitlab-com/www-gitlab-com` project will be opened and assigned to the group PM. You can continue editing and reviewing that MR from there.

If you'd like to check to see when the last pipeline ran (and if it picked up your issue) you can inspect the scheduled pipeline [here](https://gitlab.com/gitlab-com/www-gitlab-com/-/pipeline_schedules).

You can also watch [this overview video](https://www.youtube.com/watch?v=rfn9ebgTwKg) demonstrating how to use the `release post item generator`.

*note: The release post item generator is still in beta. If you find issues or have questions post them in Slack [#release-post-iteration](https://gitlab.slack.com/archives/CTXULEPQD)* or add them to the current cycle release post retrospective issue.

The generator script can also be run on your computer.

1. Clone the `www-gitlab-com` project, and install dependencies using `bundle install`
1. Run the script, providing your GitLab private access token, and the issue URL:

   ```shell
   PRIVATE_TOKEN=<token> bin/release-post-item --no-local <issue_url>
   ```

Refer to `bin/release-post-item --help` for complete documentation.

### Release post item linting

The [release post item linter](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/bin/validate-release-post-item)
validates all items being merged to the `data/release_posts/unreleased` directory meet minimal
standards. Specifically, it checks:

- YAML can be parsed
- Conformity to [schema](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/bin/release-post-item-schema.yml)
  - Each file contains exactly one item (e.g. feature or deprecation)
  - Content blocks have valid fields
  - Deprecations have valid fields
- The `stage` filed maps to a valid stage key in `data/stages.yml`
- The `categories` list only contains valid category names from `data/categories.yml`

It does not check if:

- `top` and `primary` items have an image or video
- `issue_url` is supplied, since there are other alternatives

The schema is implemented using [Rx](http://rx.codesimply.com/index.html).

### Release post assembly

The [release post assembly](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/bin/validate-release-post-item) script moves release post content blocks and their images to the current release directory.

It uses a simple regexp to locate content files and images. It performs no validation. In the future, it would be simple to combine the functionality with the linter to reduce the number of scripts to maintain.

In preparation for content assembly on the 18th of the month, the Release Post Manager should ensure their local dev environment is up to date (e.g., running latest version of Ruby). Follow the steps in the "Content assembly and initial review" section of the [release post MR checklist](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post.md) to prepare a local dev environment in advance.

### Release post merge request template

The [release post MR template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post.md) is our checklist for every release. Let's keep it up-to-date! :)

---

## Patch and Security release posts

The Delivery team is responsible for creating release posts for [patch](https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/patch/blog-post.md) and [security releases](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md#critical-security-releases).

Release posts should live in `sites/marketing/source/releases/posts`. For patch and security releases,
please make sure to specify them in the title, add the correct [category](../#categories):

- Patch releases:
  - `title: "GitLab Patch Release: x.y.z and x.y.z"`
  - `categories: releases`
- Security releases:
  - `title: "GitLab Security Release: x.y.z and x.y.z"`
  - `categories: releases`

<style>
  pre { margin-bottom: 20px; }
</style>
