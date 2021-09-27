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
  [blog category for releases](/releases/categories/releases/).
- For a list of features per release, check the [releases page](/releases/).
- For all named changes, check the changelog
  for [GitLab CE](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/CHANGELOG.md)
  and [GitLab EE](https://gitlab.com/gitlab-org/gitlab-ee/blob/master/CHANGELOG.md).
- See also [release managers](/community/release-managers/).
- Release Post Managers will need [Maintainer](https://docs.gitlab.com/ee/user/permissions.html#project-members-permissions) access to project https://gitlab.com/gitlab-com/www-gitlab-com/. If you need access, model your request after [this confidential issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/10031).

#### Templates

_The sections below also link to these templates, but they're provided here for quick reference._

- [Monthly **release post** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md)
- [Monthly **release post item** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md)
- [Monthly **release post bug, usability and performance improvements** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Bug-Performance-Usability-Improvement-Block.md)
- [Monthly release **content block** templates](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/release_posts/unreleased/samples)
- [Patch release template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/patch_release_blog_template.html.md.erb)
- [Security release template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/security_release_blog_template.html.md)

---

## Monthly releases

Monthly releases are blog posts with an exclusive layout aiming to apprise the reader of the changes, new features, and other considerations for the new release that comes out on the 22nd of every month. They follow a process that involves collaboration across many different roles, and each persona's responsibilities are outlined on this page.

Note: Unless specifically noted otherwise, for all due dates below the exact cutoff time is the end of the day at 11:59 PM in Pacific Time.

At a high level, the process is:

| Date | Step |
| ------ | ------ |
| By the 7th | The **Release Post Manager** creates a branch on `www-gitlab-com` and MR in that project that will collect all the release post items in to a single blog entry <br><br> Note for Technical Writers: to avoid potential merge conflicts later during content assembly, please **do not** merge updates from `main` to the release post branch even if you notice it falling behind. The **Release Post Manager** has sole responsibility of the release post branch and will take care of merging from `master` as part of the content assembly process on the 18th. |
| 1st - 10th | **PMs** contribute individual MRs for all of their content blocks (top/primary/secondary features, [Deprecations](#deprecations), [Removals](#removals), and [Upgrades](#upgrades)) as release post items. For primary items, PMs will also add the item to `features.yml`.<br><br>**EMs** can also contribute individual MRs for [Deprecations](#deprecations), [Removals](#removals), and [Upgrades](#upgrades) as release post items.<br><br>**PMs** add recurring content blocks for Omnibus improvements, deprecation warnings, and more |
| by the 15th | **EMs, PMs and PDs** contribute to MRs for Usability, Performance Improvements and Bug Fixes. <br><br> **Note:** For items that are feature flagged, it is recommended they are `enabled by default` by this date to ensure inclusion into self-managed release. |
| by the 16th | **TWs** (with optional PMMs, Product Designers, and PM Leader) review individual release post item MRs <br><br>**TW Lead** reviews usability, bugs and performance improvement MRs
| by the 17th | **EMs** merge MRs if the underlying code was merged _before_ the 17th or manually verified to be in the release (check the release stable branch). [Be aware](https://about.gitlab.com/handbook/engineering/workflow/#product-development-timeline): "Merging [code] by the 17th does not guarantee that the feature will be in the [milestone] release."<br><br>**Release Post Manager** merges recurring content blocks for usability, performance improvements and bug fixes. Any MRs added after the 17th should be submitted against the Release Post branch, not Master.
| on the 18th | At 8 AM PT, (3 PM UTC) the **Release Post Manager** aggregates all the content blocks by updating the release post branch from the `master` branch, and moving all the "unreleased" items into the release post branch for **final content assembly**.<br><br>The **Release Post Manager** adds the MVP for the release and selects a cover image<br><br>The **Release post manager** works with VP of Product Management to pick features highlighted and finalizes the introduction content |
| 18th - 20th | The **Release Post Manager and Technical Writer** perform final reviews/revisions to ensure everything is ready to publish. <br><br>Any changes after 8 AM PT (3 PM UTC) on the 18th will be done via the `release-X-Y` branch, not `master` branch, and is subject to approval by the **Release Post Manager**.

The 18th - 20th can also fall on vacations or holidays. It is important for Product Managers to designate, ahead of time, who to respond to time-sensitive inquiries should they be unreachable. Release Post Managers are also empowered to make decisions and take actions after not hearing back from the product manager before the EOD on the 20th.
|
| 22nd of Month | The **Release Post Manager** publishes the blog post to master on the morning of the 22nd, immediately following the package itself being published by the **Release team** The [GitLab.org Releases page](https://gitlab.com/gitlab-org/gitlab/-/releases) will also populate the changelog via the process outlined in [`gitlab!44837`](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/44837)|

_**Note:** The specific steps that should be followed, when they are due, and the order they should be followed in are described in the [Monthly release **post** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md) and the [Monthly release **post item** MR template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md)._

### Participants

- [**Release Post Manager**](#release-post-manager)
- [**PM contributors**](#pm-contributors)
- [**PMM reviewers**](#pmm-reviewers)
- [**TW lead**](#tw-lead)
- [**Product Design reviewers**](#product-design-reviewers)
- [**TW reviewers**](#tw-reviewers)
- [**Technical advisors**](#technical-advisors)
- [**Engineering Managers**](#engineering-managers)

### Volunteering for the Release post

Each month a Product Manager, Product Marketing Manager, Technical Writer, and an Engineering Department Technical Advisor volunteer to manage the release post, as listed in the [Release Post Scheduling page](managers/). The Product Manager volunteer will lead the release post as the Release Post Manager and is listed as the Author of the release post when the post is published. To update the [release post scheduling list](managers/), all volunteers need to edit the data file below:

- **[Data YAML file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/release_post_managers.yml)**: gathers the release post managers for every release (9.0 onwards). Be sure to update the "Managers" section below the "Versions" if this is your first release.
- **[Layout Haml file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/source/handbook/marketing/blog/release-posts/managers/index.html.haml)**: simple handbook layout that pulls the data from the YAML file above.

It's highly recommended that all volunteers shadow the release post prior to the one they run. Volunteers can update the previously mentioned data YAML file to indicate both when they shadow and when they help run the release post.

#### Release Post Manager

Product Managers of any level (IC or managers) can volunteer for any release that doesn't have someone assigned yet. While we encourage IC product managers to take advantage of this opportunity to demonstrate their leadership skills, we also value that managers will bring their experience to the role.

To assign yourself as release post manager or release post manager's shadow, simply add your name on the [Release Post Scheduling page](managers/) by submitting an MR to update the `/data/release_post_managers.yml` file. Otherwise, PMs will be assigned using a fair scheduling principle:

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

#### Release Post Manager Shadow

Each month a Product Manager also acts as a shadow to support the Release Post Manager tasks if needed, act as back up on decisions in absence of the Release Post Manager and prepare to run the next release post. By shadowing the month prior to leading the effort, Product Managers are prepared and aware of any shifts in processes or optimizations needed since the last time they participated.

Shadows should remain engaged with the release process by:
* Following the activity in the slack channels
* Attending the weekly standups
* Assist the Release Post Manager with content reviews and any other tasks they ask for help on

In order to properly onboard the shadow, the Release Post Manager should:

* Set up an initial coffee chat with your shadow the week after the previous release ships to get to know each other and clarify any initial questions from the shadow
* Point the shadow to this page
* Include the shadow in the initial release post MR creation
* Include the shadow on all meetings and as much as possible on activities like reviews or other opportunities where you can work synchronously together

Remember - the goal of the shadow is to get them engaged and aware of the process so they can run one on their own. Include the shadow as much as possible so they can learn and be prepared!

### Release Post Manager Responsibilities

- Setting up the release post branch and completing all the tasks assigned to the Release Post manager in the Release Post MR template
- Reviewing and supporting overall content quality and accuracy of all content published in the release post
- Supporting and checking in with the Technical Writer via Slack and a brief weekly standup
- Onboard the Release Post shadow so they understand the whole process and can contribute to helping with content review and other tasks.
- Including the Release Post Manager Shadow as much as possible on activities
- Creating the release post [merge request](#create-the-release-post-mr)
- Creating MRs to collect [usability improvements, performance improvementsm and bug fixes](#create-mrs-for-usability-improvements-bugs-and-performance-improvements)
- Soliciting/collecting votes for the [MVP](#mvp), getting the write-up form the nominator of the winning candidate and updating `release-X-Y/www-gitlab-com/data/mvps.yml` and `data/release_posts/X_Y/mvp.yml`
- Adding the [cover image](#cover-image) that is (jpg, png) is [smaller than 300KB](#images)
- Working with VP of Product Management to identify features to highlight in the introdcution
- Working with the VP of Product Management to identify what to include in [What's New](/handbook/product/gitlab-the-product/index.html#using-whats-new-to-communicate-updates-to-users)
- Monitoring the Slack Release Post channel to help answer questions and troubleshoot hurdles
- Pinging the PMs and others as needed in Slack or MRs to help resolve feedback
- Sending out reminders about upcoming deadlines.
- Merging master into the release branch on a regular basis to resolve conflicts (do not rebase, please do `git pull origin master`, then `:wq`)
- Making sure we have the post **ready to merge two days before the 22nd**
- Merging the release post MR on the 22nd and ensuring the page goes live successfully (coordinate with the release managers in the
  `#releases` Slack channel and only merge once they've pinged you in Slack to confirm the packages are released, which will be sometime around 14:10 - 14:20)
- Creating and collecting feedback in the release post retro issue during the release post
- Doing a sync retro with the Technical Writer, the Technical Advisor, the Release Post Manager Shadow, and the Product Operations DRI sometime between the 23rd and the 1st of the month, to identify and collaboratively complete actions to improve the process and update the handbook/MRs
- [Communicate](#communication) directly with product managers using [#product](https://gitlab.slack.com/archives/C0NFPSFA8) on Slack as needed to field questions that come up from viewers of the release post blog once it is live on the 22nd
- If you need additional support in engaging with the community, the Developer Evangelism team ([#developer-evangelism](https://gitlab.slack.com/archives/CMELFQS4B) on Slack) is available to support on [release days](/handbook/marketing/community-relations/developer-evangelism/hacker-news/#release-days)
- Making sure the auto sorting of secondary features by title (alpha) and stage generally looks good or is revised if need be [Content Reviews](#content-reviews)
- Work with PMs and others as needed to make sure any external blogs they reference in their content blogs go live before the release post blog gets published on the 22nd.
- Making sure the Technical Writer is aware if release post items are added or removed after the 18th
- Informing the social team that the release post has been published and it's time to schedule social media posts

**The initial steps of creating a release post branch and the release post merge request are explained below. All subsequent steps for Release Post Manager are documented as checklist items in the merge request that gets created below.**

If you have any technical problems while doing any of your release post manager duties that you can't resolve with the help of the Technical Writer or [release post DRI](https://gitlab.com/fseifoddini), you can reach out for technical advisement to the [Technical Advisors](#technical-advisors) via the dev escalation process. When you communicate with tech advisors, always indicate whether your problem is urgent or not. If you indicate it is urgent, provide a clear date/time by which you need a response or resolution.

<i class="fas fa-exclamation-triangle" aria-hidden="true" style="color: red"></i>
**Important:** Please check beforehand if you have `Maintainer` **merge rights** to the www project.
If you don't, submit an issue to [request access](https://about.gitlab.com/handbook/business-ops/team-member-enablement/onboarding-access-requests/access-requests/) asking for [Maintainer](https://docs.gitlab.com/ee/user/permissions.html#project-members-permissions) access to project https://gitlab.com/gitlab-com/www-gitlab-com/. If you need access, model your request after [this confidential issue](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/10031). You will also need to inform the [release post DRI](https://gitlab.com/fseifoddini) as well as the Technical Writer as an FYI that it's in progress but you may need merge support.
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
1. In a terminal (locally or Gitpod), run the task:

   ```shell
   bundle exec rake "release:monthly"
   ```

   You will be asked to submit the release post date (in ISO format)
   and the GitLab version (in `major.minor` format). If any of the two are
   wrongly submitted or the release branch already exists, the task will
   abort.

1. Push the branch that was created and follow the link to [create the merge request](#create-the-release-post-mr).

###### Gitpod

If you want to use the script but don't want to setup the local environment you can use [GitPod](https://www.gitpod.io/).

1. [Enable Gitpod in your GitLab settings](https://docs.gitlab.com/ee/integration/gitpod.html#enable-gitpod-in-your-user-settings)
1. Go to [about.GitLab.com repository](https://gitlab.com/gitlab-com/www-gitlab-com) and click the down caret next to the "WebIDE" button and slect "Gitpod" from the drop down.
1. Click the Gitpod button and follow the prompts to create an account (if you have not previously)
1. Wait for setup of the environemnt to happen
1. Follow steps above but in the Gitpod terminal not local terminal

##### Second way: manually

The manual way can be done either locally or using the GitLab Web IDE:

1. On `gitlab.com/gitlab-com/www-gitlab-com` create a new branch `release-X-Y` from `master`
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

#### Create the release post MR

Create a merge request with the introductory changes _after the previous post has been merged and before the feature freeze date_ to make the post available to receive contributions from the team:

1. The source branch must be `release-X-Y` and the target branch `master`.
1. Set the title to `Release post - GitLab X.Y`.  Do **not** prefix the title with `Draft:` or `WIP:`.
1. Confirm that "Delete source branch when merge request is accepted" is selected.
1. Use the release post template for your MR.

   ![release post MR template](release-post-mr-template.png){:.shadow}


Now that you have created the release post MR, refer to the checklist in the MR for each action that you need to take and the due dates of each action. Keep in mind the MRs for Usability improvements, Bugs, and Performance improvements have their own checklists to be completed, including a task for the Release Post Manager to merge these MR by the 17th prior to final content assembly.

#### Create MRs for usability improvements, bugs, and performance improvements

Create dedicated MRs from the sample templates for these content blocks (Usability improvements, Bugs, Performance improvements). This separation from the main Release Post MR simplifies the contribution and discussion process.

_**Note:** The MRs for Usability improvements, Bugs, and Performance improvements provide a place for others to add their content. While the Release Post Manager isn't responsible for creating the content, they are responsible for completing the tasks assigned to them in the checklist of the templates for these MRs, on schedule._

1. In the `gitlab.com/gitlab-com/www-gitlab-com` project, create 3 [new
   branches](https://gitlab.com/gitlab-com/www-gitlab-com/-/branches/new) from master: one for bugs, one for usability improvements and one for performance improvements.
   Name the branches `release-X-Y-bugs` `release-X-Y-usability-improvements` and `release-X-Y-performance-improvements`.
1. From each of these newly created branches, open a merge request (MR)
   targeted at the master branch. Name the MRs `Draft: release-X-Y-bugs` `Draft: release-X-Y-usability-improvements`and
   `Draft: release-X-Y-performance-improvements`, and use the
   [`Release-Post-Bug-Usability-PerformanceImprovement-Block`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Bug-Performance-Usability-Improvement-Block.md)
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
   [`release-post-ux-improvements.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/usability_improvements.yml)
1. On the `release-X-Y-performance-improvements` branch, add
a new file to the `data/release_posts/unreleased/` folder called performance_improvements.yml and populate it with the content of    [`performance_improvements.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/performance_improvements.yml)

#### Local dev environment setup to run content assembly script

**Note**: You should not use the default system installed Ruby but should install a Ruby version manager like [RVM](https://rvm.io/rubies/installing), [Rbenv](https://github.com/rbenv/rbenv#installing-ruby-versions) or [asdf](https://github.com/asdf-vm/asdf-ruby) to manage your Ruby installation. See handbook guidance on [installing a Ruby version manager](https://about.gitlab.com/handbook/git-page-update/) and other requirements. Reach out for help if needed.
{:.alert .alert-info}

Prior to running the content assembly script (described in the next section), the release post manager should confirm their local dev environment is running a current version of Ruby and its dependencies are updated. Doing this early on in the process is recommended as, sometimes, updates to the www-gitlab-com project or the content assembly script could cause your Ruby version or Ruby libraries (gems) to be outdated. If unknown errors arise during this verifcation, reach out to [the release post DRI](https://gitlab.com/fseifoddini) for advisment.

1. Open a terminal window and run `./bin/doctor` and follow the prompts to resolve any errors. See also [demo video](https://youtu.be/zYK1JA8VMbI) of the doctor script.
1. Once Ruby and all dependencies are updated, then you can proceed with content assembly of the release post.

**How do I know if I already have a Ruby Version Manager installed?**

Open a terminal window, and then run one of these commands:

- `which asdf`
- `which rbenv`
- `which rvm`

If the returned output is something other than `asdf not found`, `rbenv not found`,
or `rvm not found`, you probably have one of these installed. A path to one of
those tools is returned to the screen if a Ruby version manager is installed.

**What if I have a different Ruby Version Manager than what is in the handbook?** If something like `rbenv` already installed, then you likely just need to update Homebrew with `brew upgrade rbenv ruby-build` and install the latest with `rbenv install 2.6.6` or similar.

#### Content assembly: merging release post items (content blocks) to your branch

**Important**: This procedure applies until the 17th, at 11:59 PM PT (6:59 AM UTC). After this time, anyone who wants to include a change in the upcoming release post can either coordinate updates directly on the release post branch with the Release Post Manager or submit it in a separate MR, targeting the `release-X-Y` branch, and assign it to the Release Post Manager to merge. For more information, see our documentation on how to [Develop on a feature branch](https://docs.gitlab.com/ee/gitlab-basics/feature_branch_workflow.html).
{:.alert .alert-info}

When it is time to assemble the release post, this will be done by moving the
content block files from `data/release_posts/unreleased` to
`data/release_posts/X_Y`, and images from `source/images/unreleased` to
`source/images/X_Y`.

Those block items comprise of the [release post items](#pm-contributors) that
each PM creates for each feature.

The `bin/release-post-assemble` script makes this easy to do:

```bash
  git checkout master
  git pull
  git checkout release-X-Y
  git pull
  git merge master
  bin/release-post-assemble
  git push
  git push origin release-X-Y
```

Sometimes `bin/release-post-assemble`  may fail if there is a Ruby version update (or updated Ruby libraries) between the time the release post manager updates their local environment by the 7th and when content assembly starts on the 18th. The script may even fail for unknown reasons at times. If for some reason `bin/release-post-assemble` fails, you can reach out to the [release post DRI](https://gitlab.com/fseifoddini) for advisement. If all else fails, you can use the following steps to manually move content and push your changes. There is also a video walking through the changes [here](https://www.youtube.com/watch?v=SAtiSiSh_eA).

1. Verify you've completed steps 1-3 above
1. Manually move all the `.yml` files from `/data/releases_posts/unreleased/` to `/data/release_posts/x_y/` (`x_y` being the release post directory e.g. `13_2`) | *note: leave the `/samples` directory in the same location, don't move it*
1. Manually move all the images in `/source/images/unreleased/` to `/source/images/x_y/`
1. Using a text editor like VS Code **find and replace** all the image paths under `image_url:` in each release post `.yml` file from `/unreleased/` to `/x_y/`. The video above demonstrates that.
1. `git commit` and `git push` and you should be good to go

#### Communication

The release post manager, the Technical Advisor, the Product Operations DRI, and the Technical Writer will need to communicate about topics that are related to the release post, these should occur in the `#release-post` channel in Slack.

The release post manager posts in Slack channels most requently with reminders. As such, if the release post manager is seeking guidance on how to phrase certain posts, it's recommended to scroll to the appropximate date that post would have been made by the previous release post manager in the relevant Slack channel. However, here are some best practices and an example:

- Make a clear, descriptive statement of what's being shared and why
- If you need someone to take an action, say so explicitly and tag that person
- If the action requested is time sensitive, give a clear due date
- If there are known issues they need to be aware of, list them out
- Always cc your release post team for big announcments so everyone is in the loop

When communicating with your release post team, use the release post prep channel and organize discussions into threads to make it easier to track conversations. Also, review GitLab's [effective slack communication](https://about.gitlab.com/handbook/communication/#slack) guidance.

Sample post to executive stakehlders for review:

_`@Sid @Scott Williamson @Anoop Dawar` The 13.6 Release Post has been generated and can be reviewed at https://release-13-6.about.gitlab-review.app/releases/2020/11/22/gitlab-13-6-released/index.html

Please share your feedback by 10am PT on Friday November 20 (tomorrow). Thank you for your review!

Currently there are no known issues/adjustments to the content but I know of one deprecation that needs to be added and will happen with my first wave of edits. We do still need to add social links and a reminder that the YouTube videos do not load in review apps but we have verified the proper /embed/ URLs.

Here’s the 13.6 release post MR: https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/66652

Cc `@Farnoosh @axil @Saumya Upadhyaya @Michael Karampalas`

The Developer Evangelism team will reach out to the release post manager in Slack #release-post following their [Release days process](/handbook/marketing/community-relations/developer-evangelism/hacker-news/#release-days) when they need help responding to inquiries about content in the release post blog. These needs will primarily arise within the first week of going live with the blog. However, as Author for a specific release post, you may get pinged to help coordinate a response some weeks later as issues arise. You will usually just need to find the best DRI to handle the issue, often the PM of the release post item in question.

Sometiemes, external PR and Marketing firms reporting on the release or managing media relations may ping the RPM directly with questions, since the RPM is  the "author"  of the release post. If this happens the release post manager should coordinate reach out to  Product Operation help who in Marketing can take over this communication.

#### Content reviews


The due dates for various reviews across all participants can be found on the [release post MR template](#templates) and the [release post item MR template](#templates). PM contributors are encouraged to cease attempts to add new content blocks after the content merge deadline on the 17th, and especially after final content assembly happens on the 18th at 8 AM PT (3 PM UTC). Exceptions can be made for highly impactful features but it is up to the discretion of the Release Post Manager to work with the PM to add more content blocks up until the 21st.

Keeping an eye on the various content reviews (TW, PMM and Director) for the individual release post items (content block MRs) is the responsibility of PM contributor. However, it is recommended that the Release Post Manager keep an eye on how many items are not yet marked with the Ready label on the 10th of the month or not yet merged on the 16th of the month, and check in with PMs in Slack Release Post channel to support and clear hurdles if needed. A really easy way to do this is to keep your eyes on the [Preview page](https://about.gitlab.com/releases/gitlab-com/) and copy edit and link check items as new items appear. It's also important to do this because this page is LIVE to users and should be error free.

The content review of the Usability, Performance improvements, and bug fixes MRs are the responsibility of the Release Post Manager and the TW Lead.

The review and any needed adjustment to the ordering of secondary features due to stakeholder feedback is the responsibility of the release post manager. Secondary features, bug fixes, usability, performance improvements, removals, and upgrade notes are all sorted alphabetically by title, grouped by stage. Deprecations are sorted by planned removal date. To affect the sort order of the secondary features, a change to the content block's `title` is required. The release post manager should work with the product managers of the content blocks to make these changes, to ensure accuracy and alignment. The ordering of deprecations should not be changed. 

After the Review App for the release post has been generated, the Release Post Manager solicits additional feedback from the CEO and [product leaders](https://about.gitlab.com/handbook/product/product-leadership/#product-leadership-team-structure) via Slack in the #release-post channel. Clearly communicate when they can expect to start their review 24 hours in advance; this is especially important when the review must happen over the weekend. A best practice for capturing feedback from Slack is to copy the feedback into the MR comments with checkboxes to ensure each item is addressed. PMs can be tagged there also for easier tracking and follow up. Refer to [this 13.0 MR comment thread](https://gitlab.com/gitlab-com/www-gitlab-com/-/merge_requests/48201#note_345230940) for reference.

It is the Release Post Manager's responsibility to make sure all content is completed by the 20th of the month, ensuring a one day buffer is left for final error fixes and small improvements.

**NOTE** To the extent possible we strive to use [GitLab's Community Code Review Guidlines](https://docs.gitlab.com/ee/development/code_review.html#getting-your-merge-request-reviewed-approved-and-merged) when performing Release Post content review.

##### What RPM should look for when reviewing content blocks

It is recommended for the Release Post Manager to review all content for quality, including the marketing intro. But when reviewing content blocks in each release post item MRs, the RPM should look for the following:

1. Is the why (problem) and the what (solution) clearly stated? See [writing about feature](https://about.gitlab.com/handbook/product/product-processes/#writing-about-features) as a guideline for what feature descriptions should contain.
1. Does the filenames follow the recommended file-naming convention? See **Important note on naming files** under [Instructions](#instructions) for PM contributors.

##### Tips for reviews

1. Utilize the [Available now on GitLab](https://about.gitlab.com/releases/gitlab-com/) page to easily scan release post items that have been merged
1. Search the [Available now on GitLab](https://about.gitlab.com/releases/gitlab-com/) and preview pages for characters like `[`, `]`, `(`, and `)` to find malformed links.
1. Copy/paste the content of those pages into a tool like Grammarly to find less obvious typos like duplicate words.

#### Introduction

The introduction content of the release post (found in `YYYY-MM-DD-gitlab-X-Y-released.html.md`)  is templated to be standard across all release posts, and should not be modified without approval from the Product Operations DRI. This file is linked at the top of the release post MR for reference and ease of editing. The release post manager will tag in the VP of Product Management to choose features to highlight in the introduction and to also designate a top feature.

### PM Contributors

Product Managers are responsible for [raising MRs for their content blocks](#content-blocks) and ensuring they are reviewed by necessary contributors by the due date. These are mostly added by the Product Managers, each filling up the sections they are [accountable for](/handbook/product/categories/#devops-stages), but anyone can contribute, including community contributors. Content blocks should also be added for any epics or notable community contributions that were delivered.

#### Contribution instructions

In parallel with feature development, a merge request should be prepared by the PM with the required content. **Do not wait** for the feature to be merged before drafting the release post item, it is recommended PMs write Release Post Item MRs as they prepare for the milestone Kickoff.

**Important**: The [Instructions](#instructions) below apply up to the 17th, at 11:59 PM PT (6:59 AM UTC). After content assembly on the 18th of the month, anyone who wants to include a change in the upcoming release post must coordinate with the Release Post Manager and follow detailed instructions in the [Merging content blocks after the 18th](#adding-or-removing-content-blocks-after-the-18th) section for special handling of late additions.
{:.alert .alert-info}

##### Key dates

- During kickoff preparation, or when planning for the upcoming milestone: consider creating the release posts early to enable the team to [work backwards](https://www.product-frameworks.com/Amazon-Product-Management.html)
- **10th of the month - Drafted**: ready for review by Product Marketing, Tech Writer, and PM Group Manager or PM Director
- **11th to 16th of the month - Reviewed**: reviewed by all required stakeholders, content revised as needed and ready to be merged
- **17th of the month - Merged**: release post item MR merged by the Engineering Manager if feature has been merged
- **18th of the month - Final content assembly**: and release post blog content lock in preparation for final reviews/editing

##### Instructions

###### Option 1: automated MR creation

The [release post item generator](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/bin/release-post-item) automates the creation of release post items using issues and epics. Draft your release post content under the **Release notes** section of the [feature issue template](/handbook/product/product-processes/#feature-templates) and then follow the [release post item generator](#release-post-item-generator) instructions.

###### Option 2: manual MR creation

- Create a new branch from `master` for each feature (primary, secondary, removal). [Deprecations are handled differently](#deprecations)
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

  **Important note on naming files**: PMs should create file names that are descriptive and have reasonable overlap with the title of the content block itself. This makes it easier to related content blocks to yml file by different participants in the review process. Either underscores `_` or hyphens `-` can be used as long as the correct prefix is used (`stagename`, `removal`, or `upgrade`) as listed below.

  - Feature file names: `stagename-featurename.yml` (for example, `create-group-wikis.yml`). **Do not:**
    - Designate primary vs secondary as that can change.
    - Use category or group name.
    - Include the reporter's name.

  - Removal file names: `removal-something-else-descriptive.yml`
  - Upgrade file names: `upgrade-another-description.yml`

  **Some troubleshooting hints:**

  - **Use `git merge`, don't use `git rebase`.** Rebase is a powerful tool that makes for a clean commit history, but due to the volume of commits by the number of collaborators on the `www-gitlab-com` repo, it will typically have a lot of conflicts you'll have to manually work through. Since your content MRs should only contain changes relevant to your own content block and a single addition to `features.yml`, merge conflicts should be minimal, and typically nonexistent. If you start a rebase and run in to issues, you can always back out with `git rebase --abort`.
  - **Remember to close your quotes, check your filenames, and indent properly.** Many vague pipeline errors are caused by common coding gotchas. Make sure your quotes are closed, the file you're referencing uses _exactly_ the same filename you listed, and you have the right indentation set on each line.

#### Content

Be sure to reference your Direction items and Release features. All items which appear
in our [Upcoming Releases page](https://about.gitlab.com/upcoming-releases/) should be included in the relevant release post.
For more guidance about what to include in the release post please reference the [Product Handbook](/handbook/product/product-processes/#communication#release-posts).

When writing your content blocks, be sure to reference [Writing release blog posts](/handbook/product/product-processes/#writing-release-blog-posts) and [Writing about features](/handbook/product/product-processes/#writing-about-features) to ensure your release post item writeups align with how GitLab communicates. For example, we avoid formal phrases such as "we are pleased to announce" and generally speak directly to our users by saying "you can now do x" rather than "the user can now do x". Checking out the links to these guidelines will help you align our tone/voice as you write, ensuring a smoother and more speedy review process for your release post items.

PM contributors are encouraged to use discretion if wanting to add new content blocks after the final merge deadline of the 17th, and especially after final content assembly happens at 8 AM PST (3 PM UTC). But if highly impactful features are released that can not wait till the next blog post, PMs should reach out and coordinate with the Release Post Manager. It is up to the discretion of the Release Post Manager to work with the PM to add more content blocks up until the 21st.

#### Primary vs Secondary

When creating your content for a Release Post item you'll need to determine if it's a `primary` or `secondary` feature. Do this in collaboration with your PMM counterpart and reference this guidance if you're unsure:

A feature should be `primary` if the feature:

- Matures a category (post release you'd update the `category maturity` for the category your feature lives within)
- Is **new**, or a significant improvement - it adds key functionality that did not exist previously or significantly changes existing functionality
- Has high demand from customers or the wider community (measured by discussion or upvotes on an epic/issue)
- Feature ties into a current Marketing narrative or campaign
- All `primary` features should have a corresponding entry in `features.yml` as well as a photo or video in the release post item block.

#### Reviews

PM Director/Group Manager, PMM, and Product Design reviews are highly recommended, but the Tech Writer review is the only one required for inclusion in the Release Post. Tech Writer review is required even when late additions are made to the release post after the 18th of the month. The Tech Writing review should be focused on looking for typos, grammar errors, and helping with style. PMs are responsible for coordinating any significant content/tech changes. Communicating priority about which release post items are most important for review will help Product Section leads, PMMs, and Tech Writers review the right items by the 10th of each month, to ensure the proper labels are applied to the MR and assign reviewers to the MR when it is ready for them to review (ex: `Tech Writing`, `Direction`, `Deliverable`, etc).
- **Note: For consistency, use the [Reviewers for Merge Requests(https://docs.gitlab.com/ee/user/project/merge_requests/getting_started#reviewer)] feature in GitLab when assigning PM Director/Group Manager, PMM, TW and Product Design team members for content reviews.**

##### Recommendations for optional PM Director/Group Manager and PMM Reviews

As PMM reviews are not required, but recommended - and Product Leader and Product Design reviews are optional - PMs should consider a few things when determining which content blocks to request a review for:

- Does the feature contribute to a Group or Stage's overall Direction?
- Does the feature contribute to increasing a Category's maturity?
- Does the feature increase our ability to compete in the market?
- Does the feature have considerable customer demand?
- Does the feature represent a significant UX improvement?

If the answer to any of these is "yes", it is recommended that you coordinate with your Director, PMM, and Product Design counterpart to review the content block by the 16th. As the PM it is your responsibility to communicate what MRs need a review from the TWs, PMMs, Product Designers, and Directors as well as the MRs relative priority if you have multiple content block MRs that need reviews.

#### Merging Content Block MRs

Engineering Managers are the DRIs for merging these MRs when the feature is merged into the codebase itself. This allows all of the relevant parties (Product Managers, PMMs, Product Designers, Section Leads, Technical Writers) to have enough time to review the content without having to scramble or hold up engineering from releasing a feature.

To enable Engineering Managers to merge their feature blocks as soon as an issue has closed, please ensure all scheduled items you want to include in the release post have content blocks MRs created for them and have the `Ready` label applied when content contribution and reviews are completed.

#### Reviewing, editing and updating merged content blocks

After content block MRs are merged, they can be viewed on the [Preview page](https://about.gitlab.com/releases/gitlab-com/) and should be updated/edited via MRs to master up until the **final merge deadline of the 17th**. Starting on the 18th, content block MRs should be viewed in the Review app of the release post branch after **final content assembly**, and updated/edited on the release post branch by coordinating with the Release Post Manager. It's important to check this page after the content block MR is merged because this page is LIVE to users and should be error free.

#### Adding or removing content blocks after the 18th

After the content assembly starts on the 18th of the month and before the 20th, adding any new or removing any merged release post items **must be coordinated with the Release Post Manager**. This is necessary to allow them to assess the impact on the release post and coordinate any necessary adjustments with the release post team (Tech Writer, PM, etc.) Failure to do so might result in your changes not being picked into the release post. Before pinging the release post manager, ask yourself if your content absolutely needs to be part of the current release post. At end-of-day on the 20th, no late content blocks will be accepted.

##### Process for merging late additions

- Ping the Release Post Manager (RPM) in `#release-post` to request adding a late addition for the release post, and wait for the RPM to give confirmation to proceed. The release post manager will do their best to accommodate the request, but it is not guaranteed.
- If the RPM approves the late addition, then PM and RPM will proceed by:
   - PM closes their original release post item MR, and PM or release post manager creates a new yaml file for the content block as a direct commit on the release post `release-X-Y` branch. PM notifies release post manager to review.

Take note of the following:

- If the feature is primary and you had not previously added it to `features.yml` you will need to create a second MR, branched from `master` to add the feature to `features.yml`. (`features.yml` should be merged to `master`, not the release post branch.)
- The release post yml file should be placed in `/data/release_posts/x_y/` on the `release X-Y` branch
- If the feature has an image it should be placed in `/source/images/x_y/` on the `release X-Y` branch
- Ensure that the `image_url` field in the release post yml file points to the image file under `/source/images/x_y/`

##### Process for removing merged content blocks

- Ping the Release Post Manager in  Slack `#release-post` to notify them you need to remove an item already merged onto `the release X-Y` branch.
- Either the release post manager or the PM, with approval from the release post manager, will remove YAML and image files from the `release X-Y` branch
- The PM will remove the feature from `features.yml` on master

#### Accountability

**You are responsible for the content you add to the blog post**. Therefore,
make sure that:

- All new features in this release are in the release post.
- All the entries are correct, especially with regard to links to the documentation or feature pages (when available).
- Feature tier availability: all contain the [correct entry](#feature-availability).
- All primary features are accompanied by their images.
- All new and/or primary features are added to [`data/features.yml`](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/features.md) _with a screenshot accompanying the feature (if the feature is visible in the UI)_.
  - All images are optimized according to the [image guidelines](#images) **and** smaller than 150KB
  - Keep in mind the [`features.yml`](/handbook/marketing/inbound-marketing/digital-experience/website/#adding-features-to-webpages) is the SSOT for displaying features across `about.gitlab.com`.
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

##### Contributing to Bug Fixes

It's the PMs discretion on which bugs or performance improvements to include in a release post. When evaluating what to include consider the following factors:

- Amount of impacted users - if the bug you're fixing impacts many users consider adding it to the release post. Not all high volume bugs are worth calling out, be sure to consider severity as well.
- Severity - if the bug is severe (even if it impacts fewer users) consider including it. A performance improvement is a good example, it could be on a feature that sees less use but if you're able to make a significant improvement it's worth calling out.
- Any data-loss or security related bug - you've likely already pushed a fix with relevant content in a patch release. If not, be sure to include those types of issues.
- Bugs with high demand - demand being interest from customers (in the form of upvotes, discussions on issues) or the wider community.

It's also recommended you collaborate with your EM in deciding what to include.

Note that security fixes should be included in, and announced with, the [Patch and Security release posts](https://about.gitlab.com/handbook/marketing/blog/release-posts/#patch-and-security-release-posts) which is a different process than the monthly release post.

##### Contributing to Usability Improvements

It's up to the product manager's and product designer's discretion, in partnership, to decide what usability improvements to highlight in a release post. This section will be limited to a maximum of 12 line items for consumability. We encourage PDs to make sure all items that don't make it into this section are added to the UI Polish gallery, with a link from the release post.

When evaluating what to include consider the following factors:

- Reach - if it impacts 50% or more of our users, prospects, or customers, consider including it.
- Impact - if it **does not** have a trivial or minimal impact, consider including it. Also, if the reach is low but it has a high or massive impact, consider including it.
- In the event there are more than 12 suggested improvements, the Release Post Manager will review the list and work with Design Leadership to trim to the most noteworthy improvements.

### PMM Reviewers

#### Messaging review

_Each PM is responsible for pinging their PMM counterpart when they need a review on the messaging for a Release Post Item MR or changes to `features.yml`._

- Leave comments for the PMs on the items file in the MR. Make sure to comment in the diff on the line that you are referring to so that the PM has the context and comments can be resolved appropriately.
- See [writing about features](/handbook/product/product-processes/#writing-about-features) as a guideline for what feature descriptions show have.
- Review the messaging for these features look for these 4 elements
  - **problem/solution**: Does this describe the user pain points (problem) as well as how the new feature removes the paint points (solves the problem)?
  - **short/pithy**: Is this communicated clearly with the fewest words possible?
  - **tone clarify**: Is the language and sentence structure clear and grammatically correct? Is the text in the present tense, and is "you" used instead of "user."
  - **technical clarity**: Does the description of the feature make sense for various audiences, including folks who are not deeply familiar with GitLab?
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
  - [Release post top feature](#top-feature) For any identified issues, inform the [TW reviewer](#tw-reviewers) to resolve as appropriate.
  - [Release post primary features](#primary-features) For any identified issues, inform the [TW reviewer](#tw-reviewers) to resolve as appropriate.
- [Frontmatter check](#frontmatter)
- [Bugs](#bugs-mr)
- [Performance improvements](#performance-improvements-mr)
- [Usablity improvements](#usability-improvements-mr)
- [MVP check](#mvp-entry)
- [Versioned documentation release](#versioned-documentation-release)

While individual TW reviewers and product managers have ultimate responsibility for the style and language of their release post items, including [Deprecations](#deprecations), [Removals](#removals), and [Upgrades](#upgrades), TW leads still have an overall responsibility to notify the release post manager, the product managers and TW reviewers if style and language don't seem reasonably consistent (things are obviously out of sync with known guidelines). But it is not the responsibility of the TW leads to _fix_ style and language inconsistencies. However, TW leads _do_ have the responsibility and ownership to make sure that all links in the release post point to relevant content and be fixed, if issues are found.

Consideration: When communicating with your release post team, use the release post prep channel and organize discussions into threads to make it easier to track conversations. Also, review GitLab's [effective slack communication](https://about.gitlab.com/handbook/communication/#slack) guidance.

#### Structural check

_A technical writer, once assigned to the release post merge request, will check the syntax and the content structure._

The **Structural check** [checklist in the main release post merge request description](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post.md#structural-check-technical-writing-lead)
will guide them through the structural check.

Given that the technical writing review occurs in release post items'
merge requests, the purpose of the structural check is:

- Review the overall post for consistency. For example, if there's an entry in a previous release post that deprecates an item called `auth-server` for this date, raise questions if there's also an entry that removes an item referred to as `auth_server`.
- Make sure the post renders well.
- The content as a whole clearly describes the new features and feature improvements.
- Check all the links work and are in place.
- Check all content for syntax errors, typos and grammar mistakes, remove extra whitespace.
- Verify that the images look harmonic when scrolling through the page (for example, suppose that most of the images were screenshots taken of a large portion of the screen and one of them is super zoomed. This one should be ideally replaced with another that looks more like the rest of the images).
- This should happen in the release post item review, but if there's time, double-check documentation links and product tiers.

Pay special attention to the release post Markdown file, which adds the introduction.
Review the introduction briefly, but do not change the writing style nor the messaging;
these are owned by PMMs, so leave it to them to avoid unnecessary back-and-forths.
Make sure feature descriptions make sense, anchors work fine, all internal links have
the relative path.

**Note:** The introduction or other parts of the release post written may include links to external
blog posts. These links may be broken until the 21st, but should still be flagged by the TW Lead
during the structural check so the Release Post Manager doesn't miss coordinating
with authors of these external blogs to ensure they're live before the release post blog goes live
on the 22nd.
{: .alert .alert-info}

The Release Post is considered a special blog post instance, so should adhere to the Marketing
editorial team's
[style guide](https://about.gitlab.com/handbook/marketing/inbound-marketing/content/editorial-team/#blog-style-guide).

#### Making changes

Until 8:00 am Pacific Time on the 18th, the TW Lead should be able to make changes
directly to the release post. After that time, anyone who wants to include a
change in the upcoming release may need to submit it in a separate MR, with a
target of the `release-X-Y` branch. For more information, see
[Develop on a feature branch](https://docs.gitlab.com/ee/topics/git/feature_branch_development.html#use-case-gitlab-release-posts).


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
twitter_image: '/images/X_Y/X_Y-cover-image.ext'
layout: release
featured: yes
# header_layout_dark: true #uncomment if the cover image is dark
# release_number_dark: true #uncomment if you want a dark release number
# release_number_image: "/images/X_Y/X_Y-release-number-image.svg" # uncomment if you want a svg image to replace the release number that normally overlays the background image
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

Note: Because there are no individual TW reviewers for the performance improvements and bug fixes (#usability-improvements-performance-improvements-and-bug-fixes) content block MRs, Engineering Managers and Product Managers will contribute to MRs created by the Release Post Manager. The MR will be assigned to the TW Lead by the 16th to review, mark with Ready label and assign to the Release Post Manager to merge.

#### Bugs MR

As the TW Lead, you're responsible for reviewing an MR created for [bug fixes](#create-mrs-for-usability-improvements-bugs-and-performance-improvements).
This MR has **not** been reviewed by any other TW. For this MR, ensure to check the metadata and the description, as follows:

Bugs included in the description:

- The title of the bug, for syntax and clarity.
- The link to the bug report.
- Whether the bug has been closed:
  - If the bug is closed, was it closed on or before the current milestone?
  - If the bug is still open, make sure that the responsible EM, PM, or bug author is aware of the situation.
  - If the bug will not be closed by the 16th of the month, remove the entry from the Bugs MR.

YAML data:

- Syntax: `[]()` for links, URLs wrapped in single quotes, text wrapped in double quotes, code wrapped in code blocks or inline code blocks.
- `- name: "Bug fixes"`
- `bug_fixes_url: 'https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=closed&milestone_title=XX.Y&label_name[]=bug` - replace XX.Y with the current milestone. For example, for GitLab 13.8, the correct link is `https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=closed&milestone_title=13.8&label_name[]=bug'` - this links to closed issues for the 13.8 milestone with the `~bug` label.

#### Performance Improvements MR

As the TW Lead, you're responsible for reviewing an MR created for [performance improvements](#create-mrs-for-usability-improvements-bugs-and-performance-improvements).
This MR has **not** been reviewed by any other TW. For this MR, ensure to check the metadata and the description, as follows:

Performance improvements added to the description:

- The title of the performance improvement issue, for syntax and clarity.
- The link to the performance issue.
- Whether the issue has been closed.
  - If the issue is still open, make sure that the responsible EM, PM, or performance improvement author is aware of the situation.
  - If the issue will not be closed by the 16th of the month, remove the entry from the Performance Improvements MR.

YAML data:

- Syntax: `[]()` for links, URLs wrapped in single quotes, text wrapped in double quotes, code wrapped in code blocks or inline code blocks.
- `- name: "Performance improvements"`
- `performance_improvements_url: 'https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&utf8=%E2%9C%93&state=merged&milestone_title=XX.Y&label_name[]=performance'` - replace XX.Y with the current milestone. For example, for GitLab 13.8, the correct link is `https://gitlab.com/gitlab-org/gitlab/-/merge_requests?scope=all&utf8=%E2%9C%93&state=merged&milestone_title=13.8&label_name[]=performance` - this links to merged merge requests for the 13.8 milestone with the `~performance` label.

#### Usability improvements MR

As the TW Lead, you're responsible for reviewing an MR created for [usablity improvements](#create-mrs-for-usability-improvements-bugs-and-performance-improvements).
This MR has **not** been reviewed by any other TW. For this MR, ensure to check the metadata and the description, as follows:

Usability improvements included in the description:

- The title of the improvement, for syntax and clarity.
- The link to the improvement issue/MR.
- Whether the issue/MR has been closed:
  - If the issue/MR is closed, was it closed on or before the current milestone?
  - If the issue/MR is still open, make sure that the responsible EM, PM, PD or usability author is aware of the situation.
  - If the issue/MR will not be closed by the 16th of the month, remove the entry from the Usability MR.

YAML data:

- Syntax: `[]()` for links, URLs wrapped in single quotes, text wrapped in double quotes, code wrapped in code blocks or inline code blocks.
- `- name: "Usability improvements"`
- `usability_improvement_url: 'https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=closed&milestone_title=XX.Y&label_name[]=usability` - replace XX.Y with the current milestone. For example, for GitLab 13.8, the correct link is `https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=closed&milestone_title=13.8&label_name[]=usability'` - this links to closed issues for the 13.8 milestone with the `~usability` label.

#### MVP entry

As the TW Lead, you're responsible for reviewing the entry for the [MVP of the month](#mvp).
This MR has **not** been reviewed by any other TW. For this MR, you'll check this MR for:

- Consistency, as requested by the PMM.
- All links from the MVP description.
- "Look and feel" as built. Sometimes it's better to collect all info for the MVP in one or two paragraphs.

#### Versioned documentation release

When a new GitLab version is released on the 22nd, the TW Lead also sets up the release
of the published documentation for that version.

For instructions, see the GitLab docs [Monthly release process](/handbook/engineering/ux/technical-writing/workflow/release.html).

### TW Reviewers

**Note:** TW reviewers should not be confused with the [TW lead](#tw-lead).
{: .alert .alert-info}

Each person in the Technical Writing team is responsible for the review
of each individual release post item that falls under their
[respective stage/group](/handbook/engineering/ux/technical-writing/#designated-technical-writers).

When the PM creates the release post item merge request, they should assign to the TW
of their group for review (required). The process of the TW review is described in the
[release post item template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md).

### Product Design Reviewers

**Note:** Product Designers [DRIs](https://about.gitlab.com/handbook/people-group/directly-responsible-individuals/) review the individual release post items according to the [stage/group each designer is assigned to](https://about.gitlab.com/handbook/product/categories/#devops-stages).
{: .alert .alert-info}

_Each PM is responsible for pinging their Product Design counterpart when they need a review on the content or visuals within a release post._

Product Designers should collaborate on release post items and review:

- **JTBD**: Ensure that the messaging encapsulates how the item supports a user’s [Job to be Done](https://about.gitlab.com/handbook/engineering/ux/jobs-to-be-done/).
- **MVC messaging**: Articulate any design vision or future iterations if applicable. This is especially important when considering items that are [under construction](https://about.gitlab.com/handbook/values/#under-construction), or contribute toward a Category’s maturity.
- **Artifacts**: Validate that UI elements (screenshots, GIFs) included in the post are up to date and reflect all design changes. Ensure that no mocks are used.

### Engineering Managers

The responsibilities of the Engineering Manager are documented in the
[Engineering Handbook](/handbook/engineering/workflow/release-feature-determination-workflow/).

### Technical Advisors

Each month the release post manager may need help with technical hurdles during the release post process. In order to provide the release post, which is a time sensitive and highly visible asset for customers and users, with adequate technical advisement and support, we are piloting a partnership with the GitLab development team to leverage the [Dev Escalation process](/handbook/on-call/#development-team-on-call-rotation) via the Slack `#dev-escalation` channel as an extension. This insures that at all times, if something breaks that the release post team can not resolve themselves, they have access to technical experts for resolution. It is recommended that technical advisors review the documented [technical aspects](https://about.gitlab.com/handbook/marketing/blog/release-posts/#technical-aspects) of the release post for reference, and the [escalation process](https://about.gitlab.com/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#escalation-process).

Please note that unlike other monthly volunteers of the release post, the technical advisor is not expected to follow the release post process at all times. The release post manager will reach out to the technical advisor on call via Slack in `#dev-escalation` channel and then cross-posts to `#release-post` channel for transparency that issues are being worked on. It is then expected that the technical advisor will respond to the release post manager or release post DRI as soon as possible, including evenings/weekends, as the release post asks are often time sensitive, **especially between the 18th and the 22nd of the month**. The technical advisor is responsible for determining if further dev escalation should proceed.

The good news is that the release post technical hurdles are often reasonably easy to trouble shoot for technical experts, which is why we're excited about this partnership!

Below are the types of problems the release post mangers may need help with.

- Assist with setup of [local dev environment](#local-dev-environment-setup-to-run-content-assembly-script)
- Triaging various automations and [technical aspects](#technical-aspects) of the release post
- Triaging pipeline errors and suggest changes or provide a fix to related merge requests
- Resolving merge conflicts with the release post
- Identifying when to engage with other technical teams to resolve upstream problems

#### Getting Help During the Release Post Assembly

**Release Post Manager**

Should you exhaust your ability to resolve your blocker quickly mention the Technical Advisor in `#dev-escalation` channel and cross-post in `#release-post` channel to ask for help, and make others aware that there may be a delay in assembly.
Describe your blocker in detail, screenshots, videos, etc can assist in diagnosing the problem. Indicate whether your problem is urgent or not. If you indicate it is urgent, provide a clear date/time by which you need a response or resolution.

**Technical Advisor**

What we have seen with previous challenges during the Release Post Assembly stage is some difficulty is encountered by the Release Post Manager because of a problem with their local development environment (Ruby setup, permissions, gems, etc) or git conflicts. You should be familiar with git, Ruby, and the command line. There are a few resources that you can use to diagnose and resolve the issue at hand:

- Review the output of the assembly script including git status
- Consider running ./bin/doctor and review the output
- Reference the [list of previous problems](#possible-script-errors-with-corrective-actions)

Following your best judgement with the resolution of the incdient, record the diagnosis and the steps taken to resolve so that we can improve the release post process and our preparedness. Deposit this info in a new issue or as part of the current release post retrospective.

#### Getting Help During the Release Post Deployment

**Release Post Manager**

Should you exhaust your ability to resolve your blocker quickly mention the Technical Advisor in `#dev-escalation` channel and cross-post in `#release-post` channel to ask for help, and make others aware that there may be a delay in release post deployment.
Describe your blocker in detail, screenshots, videos, etc can assist in diagnosing the problem. Indicate whether your problem is urgent or not. If you indicate it is urgent, provide a clear date/time by which you need a response or resolution.

**Technical Advisor**

The Release Post Deployment is a critical and time-sensitive operation. Please respond thoughtfully and quickly.

Following your best judgement with the following:

- For minor incidents that can be recovered from your intervention alone or in concert with the Release Post Manager, do so while record the diagnosis and the steps taken to resolve so that we can improve the process and our preparedness. Deposit this info in a new issue or as part of the current release post retrospective.
- For major incidents that require immediate assistance from an SRE, developer on call, or other team members with increased access rights, create an issue and follow the [dev escalation procedure](https://about.gitlab.com/handbook/engineering/development/processes/Infra-Dev-Escalation/process.html#escalation-process). Record the diagnosis and the steps taken to resolve so that we can improve the process and our preparedness. Deposit this info in a new issue or as part of the current release post retrospective.

#### Incident Response

Release post content assembly on the 18th and release post deployment on the 22nd are time sensitive with multiple dependencies across various departments. GitLab team members often voluntarily go out of their way to assist with blockers found during these two time sensitive procedures, but it can be confusing as to who is doing what to resolve an active blocking incident. Some procedural detail to our response efforts is shown below.

**Response and Resolution SLOs** Due to the time sensitive nature of both key Release Post actions, assembly and deployment, the initial response time must be very quick, within 15 minutes. Incident resolution should also be as quick, within 60 minutes or less, if possible.

**The Role of the Technical Advisor** The introduction of the technical advisor role is meant to be a coordinating role responding to blockers that occur along the way. They may work alone or in tadem with other volunteers to resolve the blocker as they see fit. They are also responsible for clearing the blocker, assembly of others, delegating response tasks including engaging in dev escalation.

**Ownership, Positive Control, and Intent** There should only be one owner of the incident at any given time. There must be clear understanding of who has control of actions to investigate and remedy the incident. Use positive exchange of control, that is pass control to another person who will now be in charge. The extreme example is from aviation where pilots exchange control in a manner like the following where you might hear "your airplane" to pass control followed by "my airplane" from the second pilot to accept control followed by the acknowledgement and release of control from the initiating pilot with "your airplane." This avoids multiple people working at cross purposes from each other. Pilots operating an airplane is an extreme example, but it shows how to use clear language in your efforts to resolve the incident as to who is doing what. Only one person should be have control at a time. Similarly, the person taking action should declare their intent, "I'm going to merge master into the 13.8 release post branch and resolve any conflicts."

**Timeline**

1. Release Post Manager is blocked. Initial attempts to unblock themself fails.
1. Release Post Manager joins `#dev-escalation`; mentions the Technical Advisor for this release detailing the nature of the blocker and its severity.
1. Technical Advisor responds to the previous message.
1. Technical Advisor creates a dedicated public Slack channel for communication around the incident like `release-post-13.8-deploy-failure`. They share that channel with `#release-post` for others to follow along.
1. Begin a Zoom call. Post the invitation to the zoom room in the newly created slack channel.
1. Technical Advisor assumes control from the Release Post Manager.
1. Investigation begins. Be as visible as possible, share your screen. Consider recording the Zoom session.
1. Action taken.
1. Blocker is resolved.
1. Close Zoom.
1. Collect screenshots, recordings, terminal history, comments in Slack, or other evidence on the issue.
1. Open a new issue to document the incident, deposit history, and add suggestions for corrective action or prevention. Link issue to the current release post retrospective.

See also: [Google SRE Ch. 14](https://sre.google/sre-book/managing-incidents/)

## Managing Ongoing Technical Support Tasks

Anyone can contribute to technical issues that support the Release Post Process with the burden being mostly on the current volunteer tech advisor. The following outlines how to manage active and upcoming issues.

### Tracking

Use the following `~Release Post::Tech Advisor` and `~product operations` labels for issues that require changes to the tools that facilitate the delivery of a release post. Create issues for low priority issues that arise during the milestone or as an artifact of decisions made during a retrospective. Creating an issue for immediate incident response isn't required since the delivery of the release post requires quick resolution and synchronous communication.

[This board](https://gitlab.com/gitlab-com/www-gitlab-com/-/boards/3130926?&label_name[]=Release%20Post%3A%3ATech%20Advisor) organizes these labeled issues into a familiar software development workflow. When working on an issue, assign yourself and strive to keep the issue up-to-date with the proper workflow label and weekly async updates.

### Handoff

It's unlikely that one technical advisor will serve in back-to-back milestones. Therefore, clearly communicating with the incoming technical advisor about the state of issues as part of release post retrospective and kickoff is a good idea.

Should you prefer to continue to contribute to an issue under active development after your volunteer rotation, that's great. In that situation, make it clear through assignments and issue updates that you will be the DRI.

---

## Monthly release blog post sections

- [CTA buttons](#cta)
- [MVP](#mvp)
- [Features](#features)
  - [Top feature](#top-feature)
  - [Primary features](#primary-features)
  - [Secondary features (improvements)](#improvements)
  - [Illustrations](#illustrations) (screenshots, gifs, or videos)
  accompanying their respective features
- [Usability improvements, performance improvements and bug fixes](#usability-improvements-performance-improvements-and-bug-fixes)
- [Omnibus improvements](#omnibus-improvements) (added as a secondary feature)
- [Important notes on upgrading](#important-notes-on-upgrading) (optional)
- [Deprecations](#deprecations)

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

Solicit MVP nominations in the [`#release-post`](https://gitlab.slack.com/messages/release-post) Slack channel by sharing a link to an issue for collaboration (example: [Release Post 13.6 MVP Nominations](https://gitlab.com/gitlab-com/www-gitlab-com/-/issues/9647)). Cross-link the message from `#release-post` to Slack [#community-relations](https://gitlab.slack.com/archives/C0R04UMT9), [`#mr-coaching`](https://gitlab.slack.com/messages/mr-coaching) and [`#core`](https://gitlab.slack.com/messages/core) channels. Add candidates to the MVP Nominations issue as soon as you see a contribution or a set of contributions that you think are great and should be taken into consideration for selection. Every GitLab team-member and core team member is encouraged to add suggestions to the MVP Nominations issue with a link to the contributor's issue and merge request.

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

The most relevant features of the release are included in the post by [product managers](/handbook/product/categories/#devops-stages). Classify the feature according to its relevance and to where you want to place it in the blog post:

#### Top feature

_**Note**: If you would like a feature to be considered for a `top` feature, create the release post MR with the feature as `primary` and reach out to the VP of Product Management and the Release Post Manager on Slack at #release-post to let them know you would like your feature to be considered. The VP of PM is the DRI for selecting the `top` feature and will make their choice from all `primary` features in the release._

The top feature of the release is mentioned right after the MVP section, prior to other primary features. An image or video and documentation links are required. The [TW lead](#tw-lead) will pay close attention to the content of this item, as it is the "headline" feature for the release and it's especially important to get it right.

To identify the [Top feature](#top-feature), look for `top` directly beneath `features` in the RP `.yml` file:

```yaml
features:
  top:
```

#### Primary features

Features with higher impact, displayed in rows after the top feature, with an image next to its text. An image accompanying the description is required. A [video](#videos) can also be added to replace the image.
All release post [primary features](#primary-features) should be reviewed by the [TW reviewer](#tw-reviewers).
To identify the primary features, look for `primary` directly beneath `features` in the RP `.yml` file:

```yaml
features:
  primary:
```

#### Secondary features

Other relevant improvements in GitLab that follow after top and primary features. Images or videos aren't required, but are recommended. All release post Secondary features should be reviewed by the [TW reviewer](#tw-reviewers).

If the secondary feature is promoted to a primary feature, the PM or EM will be asked to supply an image on **short notice**.

To identify the secondary features, look for `secondary` directly beneath `features` in the RP `.yml` file:

```yaml
features:
  secondary:
```

### Content blocks

_**Note:** "Feature blocks" are now known as content blocks, as there are many that are not just features. For example, we include upgrade warnings, Omnibus installer improvements, and performance enhancements._

Use content blocks to add features or other content to the YAML data file. The layout will be applied automatically by Middleman's [templating system](/blog/2016/06/10/ssg-overview-gitlab-pages-part-2/#template_engine).

Content blocks in the YAML data file contain the following entries, as exemplified below:

```yaml
features:
  primary:
    - name: "Do great things with this feature"
      available_in: [core, premium, ultimate]
      documentation_link: 'https://docs.gitlab.com/ee/ci/multi_project_pipelines.html#multi-project-pipeline-visualization-premium'
      image_url: '/images/topics/multi-project_pipelines.png'
      reporter: bikebilly
      stage: secure
      categories:
        - "Application Security Testing"
        - "SAST"
      issue_url: 'https://gitlab.com/gitlab-org/gitlab/issues/1234'
      description: |
        Use present tense, and speak about "you" instead of "the user."

        Describe how the new functionality is beneficial. Use phrases that start with, "In previous versions of GitLab, you couldn't... Now you can..."

        [Add another link](#link) if needed.
```

#### Description

Content of the **description** should adhere to the Marketing editorial team’s
[style guide](https://about.gitlab.com/handbook/marketing/inbound-marketing/content/editorial-team/#blog-style-guide).

Do not include UI navigation instructions in the feature's description. These instructions should be
contained in the relevant documentation.

#### Feature priority

The second line of the content block should indicate whether the feature is a top, primary, or secondary feature. For primary features, use the `primary` key as shown in the [sample content block above](/handbook/marketing/blog/release-posts/#content-blocks). For secondary features, replace the `primary` key with the word `secondary` and for the top feature replace `primary` with `top`.

#### Feature name

- `name`: feature name, capitalized

Use a short and strong name for all feature names.

#### Feature Availability

Use the following pattern to apply the correct badge to the feature (Free, Premium, Ultimate).

- `available_in`: availability of that feature in GitLab:
  - For GitLab Free, use `[core, premium, ultimate]`
  - For GitLab Premium, use `[premium, ultimate]`
  - For GitLab Ultimate, use `[ultimate]`

**Important note**: GitLab Free tier is referenced as `core` in the data file. This is intentional and the page templates will apply the proper tier name on the frontend.

If the feature is available in GitLab.com, the badges for GitLab.com will be
applied automatically according to the self-managed availability. For example,
`available_in: [premium, ultimate]` will "turn on" the badges Premium and Ultimate under self-managed and SaaS.

If the feature is not available in GitLab.com, e.g., LDAP and admin settings,
use the tag `gitlab_com: false` to turn off the entire SaaS badges' row. For
example, for GitLab Geo features, use:

```yaml
available_in: [premium, ultimate]
gitlab_com: false
```

If the feature is only available in GitLab.com, e.g. subscriptions, you can use
the following badges:

- `available_in`: availability of that feature in GitLab.com:
  - For GitLab.com Free, use `[free, silver, gold]`
  - For GitLab.com Silver, use `[silver, gold]`
  - For GitLab.com Gold, use `[gold]`

You can also mix the GitLab.com badges with the self managed badges; however, for this to work, the `gitlab_com` variable must be set to `false`:

- `available_in`:
  - For availability in all tiers on GitLab.com and only Premium and Ultimate tiers on self managed, use `[free, silver, gold, premium, ultimate]` and set `gitlab_com: false`
  - For availability in the Silver and Gold tiers on GitLab.com and all tiers on self managed, use `[core, premium, ultimate, silver, gold]` and set `gitlab_com: false`
  - For availability in the Gold tier on GitLab.com and only Premium and Ultimate tiers on self managed, use `[premium, ultimate, gold]` and set `gitlab_com: false`

From time to time a feature may be developed behind a feature flag and made [available slowly](https://docs.gitlab.com/ee/development/feature_flags/development.html#development-type) to larger audiences. If this is the case do not include the item in the release post unless you are deliberately seeking beta testers. This may result in a feature issue being closed in a milestone earlier than it is announced.

If you are deliberately seeking beta tests include the release post as well as instructions on how to enable the feature and provide feedback.

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
  - [`enablement`](/handbook/product/categories/#enablement-stage).

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

### Usability improvements performance improvements and bug fixes

_To be added by Engineering Managers, Product Managers and Product Designers._

The Release Post manager will [create MRs](#create-mrs-for-usability-improvements-bugs-and-performance-improvements), post notifications and share reminders to collect contributions for usability improvements, performance improvements, and bugs. Engineering Managers can contribute to performance improvements and both Engineering Managers and Product Managers can contribute to bug fixes. Both Product Managers and Product Designers can contribute to usability improvements.

### Omnibus improvements

_To be added by the Distribution Product Manager._

This section should contain any relevant updates for packaged software, new features, and new commands relating to the administration of self-managed GitLab instances deployed using the Omnibus package e.g. (`gitlab-backup`).

### Extras

_To be added by Product Managers and merged by Engineering Managers._

If you need an extra block to convey important info, and it doesn't fit the other blog post sections, you can use the `extras` block, right before `deprecations` (in the release post YAML datafile):

```yaml
extras:
  header: "GitLab SaaS Performance Improvements"
  blocks:
  - title: "Example performance improvement"
    description: | # supports markdown
      Accelerate modern DevOps. Producat velocitatem quacum fiducia, sine securitate sacrificium, et visibilis DevOps in victoria!
```

For more multiple blocks, use:

```yaml
extras:
  header: "GitLab SaaS Performance Improvements"
  blocks:
  - title: "Example performance improvement"
    description: | # supports markdown
      Accelerate modern DevOps. Producat velocitatem quacum fiducia, sine securitate sacrificium, et visibilis DevOps in victoria!
  - title: "Another performance improvement"
    description: | # supports markdown
      Uno fonte veritatis!
```
### Deprecations, removals and breaking changes

Below you'll find info on how to announce deprecations and removals in the release post and documentation. Please also review GitLab's overall deprecation and removal definition and policies [here](lhttps://about.gitlab.com/handbook/product/gitlab-the-product/#breaking-changes-deprecations-and-removing-features) before announcing any deprecations or removals. 

#### Deprecations

_To be added by Product Managers or Engineering Managers and merged in by Technical Writers._
 Deprecation notices should be [added to the documentation per the deprecation policy](https://docs.gitlab.com/omnibus/package-information/deprecation_policy.html#deprecating-configuration).

**Please watch the videos below as well as reading the info below to help clarify how to handle deprecations and removals in the release post.**

</figure>

<figure class="video_container">
    <iframe src="https://www.youtube.com/watch?v=0TKmIIdGZIE" title="Update GitLab Deprecation Process 2021 09 16" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

A deprecation needs to have an initial announcement in the release post notifying the community **at least two releases in advance** of the date of planned removal. Deprecations should also be included in the [documentation](https://docs.gitlab.com/ee/update/deprecations.html) or for at least 2 releases prior to the final removal. Deprecation MRs need to be merged by the 17th of the month so that self-managed customers receive notice in a timely fashion. Please be sure to review and understand the differences between [deprecations and removals](/handbook/product/gitlab-the-product/#deprecating-and-removing-features). 

Create a deprecation notice by adding a new `.yml` file to the [`/data/deprecations`](https://gitlab.com/gitlab-org/gitlab/-/tree/master/data/deprecations) folder of the `gitlab-org/gitlab` project using the template below.

```yaml
- name: # The name of the feature to be deprecated
  announcement_milestone: # XX.YY format - The milestone when this feature was first announced as deprecated
  announcement_date: # YYYY-MM-DD format - The date of the milestone release when this feature was first announced as deprecated
  removal_milestone: # XX.YY format - The milestone when this feature is planned to be removed
  body: | # Do not modify this line, instead modify the lines below.
    <!-- START OF BODY COMMENT

    This area supports markdown.  Delete this entire comment and replace it with your markdown content.

    Add the `release post item` and `release post item::deprecation` labels and the current milestone to your MR so that the release post manager can see how many deprecations are coming.

    When ready, assign to your tech writer to review and merge.

    END OF BODY COMMENT -->
  stage: # (optional - may be required in the future) String value of the stage that the feature was created in. e.g., Growth
  tiers: # (optional - may be required in the future) An array of tiers that the feature is available in currently.  e.g., [Free, Silver, Gold, Core, Premium, Ultimate]
  issue_url: # (optional) This is a link to the deprecation issue in GitLab
  documentation_url: # (optional) This is a link to the current documentation page
  image_url: # (optional) This is a link to a thumbnail image depicting the feature
  video_url: # (optional) Use the youtube thumbnail URL with the structure of https://img.youtube.com/vi/UNIQUEID/hqdefault.jpg
  removal_date: # (optional - may be required in the future) YYYY-MM-DD format - the date of the milestone release when this feature is planned to be removed
```

`name` should follow the structure of "XYZ feature or function will be deprecated at ABC time."

The `announcement_milestone` field should match the milestone when the feature was first deprecated (e.g. 13.9).  This field determines which release post will announce the deprecated feature.

The `announcement_date` field should match the date of the release when this feature was first announced as deprecated (e.g. 2021-09-02).

The `removal_milestone` field should match the milestone when the feature is planned to be removed from the product (e.g. 14.0).

`body` should contain a brief description of the feature or functionality being removed. It is recommended that you link to the documentation. The description of the deprecation should state what actions the user should take to rectify the behavior. 

If you have multiple deprecation notices for your category, then you can choose to create one MR and one `.yml` file. No other changes are required and the `features.yml` file should not be edited until the feature is removed from the product.

Per GitLab's [Versioning Policy](https://docs.gitlab.com/ee/policy/maintenance.html#versioning), non-backwards compatible and breaking changes are recommended for a major release, whereas backwards-compatible changes can be introduced in a minor release.

Once complete, assign the MR to the [technical writer](/handbook/engineering/ux/technical-writing/#designated-technical-writers) assigned to the stage to merge it into the documentation.

The deprecation yml file then goes through two processes to be seen by users. First, when the [technical writer](/handbook/engineering/ux/technical-writing/#designated-technical-writers) runs a rake task as part of their merge process, this updates the deprecation documentation page. Documentation is included in self-managed instances and this then provides a complete list of deprecations for self-managed users within their own documentation. When the Release Post Manager runs the content assembly step, the new (meaning the deprecation notices those files where the announcement milestone matches the current release post milestone) deprecations are included in the release post, but the older ones are not. A link to the documentation page is included so a user can see the full list at any time. For a deeper understanding of technical aspects of deprecations as part of the release post and Docs, visit [deprecation technical aspects](#deprecation-technical-aspects). 

#### Removals

_To be added by Product Managers or Engineering Managers and merged by either._

**Please watch this helpful [video](https://www.youtube.com/watch?v=9gy7tg94j7s) as well as reading the info below to help clarify this process for you.**

A removal is an announcement in the release post notifying the community that a feature has officially been removed. Do not use the removal template until the feature is actually getting removed. Removals are announced in the release post as a deprecation at least 2 releases prior to the actual release when feature is removed. Note the differences between [deprecations and removals](/handbook/product/gitlab-the-product/#deprecating-and-removing-features).

Create a removal notice by creating one .yml file in the `/data/release_posts/unreleased/` folder, utilizing the following content block for each notice:


```yaml
removals:
  - feature_name: XYZ feature or function has been removed
    date_of_removal: May 22nd, 2017 # day the removal was released
    reporter: bikebilly # GitLab username of the person reporting the removal
    description: |  # example (supports markdown)
      Describe the feature that was removed. Use past tense ("feature X was removed") because the removal has already happened.

      [Add another link](#link) if needed.

      Don't forget to edit /data/features.yml.
```

If you need to set up multiple removals, notify the [Release Post Manager](#release-post-manager) and make use of multiple feature removal blocks in a single file:

```yaml
removals:
  - feature_name: XYZ feature or function has been removed
    date_of_removal: May 22nd, 2017 # day the removal was released
    reporter: bikebilly # GitLab username of the person reporting the removal
    description: |  # example (supports markdown)
      Describe the feature that was removed. Use past tense ("feature X was removed") because the removal has already happened.

      [Add another link](#link) if needed.

      Don't forget to edit /data/features.yml.
  - feature_name: ABC feature or function has been removed
    date_of_removal: May 22nd, 2017. # day the removal was released
    reporter: bikebilly # GitLab username of the person reporting the removal
    description: |  # example (supports markdown)
      Describe the feature that was removed. Use past tense ("feature X was removed") because the removal has already happened.

      [Add another link](#link) if needed.

      Don't forget to edit /data/features.yml.
```

- `feature_name` should follow the structure of "XYZ feature or function has been removed."
- `date_of_removal` should be the day the removal was released, e.g. May 22nd, 2021.
- `reporter` should be the GitLab username of the person reporting the removal.
- `description` should contain a brief description of the feature or functionality being removed.

The `/data/features.yml` file should also be edited with the removed features deleted from the file.

Per GitLab's [Versioning Policy](https://docs.gitlab.com/ee/policy/maintenance.html#versioning), non-backward compatible and breaking changes are recommended for a major release, whereas backward compatible changes can be introduced in a minor release.

Once complete, assign the MR to the [technical writer](/handbook/engineering/ux/technical-writing/#designated-technical-writers) assigned to the stage.

When approved, include the "Ready" label in the MR before merging.

---

### Upgrades

_To be added by Product Managers or Engineering Managers and merged by Engineering Managers._

**Please watch this helpful [video](https://www.youtube.com/watch?v=9gy7tg94j7s) as well as reading the info below to help clarify this process for you.**

Describe any considerations administrators should have when upgrading to this version. These could be warnings about potential data loss, recommendations for maintenance beforehand, and other similar concerns.

Considerations for future upgrades should be noted in the [deprecations](#deprecations) sections.

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
  It's required to add a [social sharing image](../index.html#social-media-info) to the blog post. It is the image that will display on social media feeds (and Slack) whenever the link to the post is shared. This is fulfillled by adding the [cover image](#cover-image) to the release post.

#### Videos

You can add YouTube videos to content blocks that can either override the image or add it within the Markdown description as described below.

##### Videos in content blocks

For content blocks, you can add a video instead of an image by using the entry `video:`.
If both are present, the video will override the image (it won't display the image, only the video). Example:

```yaml
- name: "Awesome Feature"
  available_in: [premium, ultimate]
  documentation_link: 'doc-link'
  video: "https://www.youtube-nocookie.com/embed/eH-GuoqlweM"
  description: |
    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae, provident.
```

- Make sure to add the `/embed/` video URL from YouTube. Follow the steps
described on the [Markdown guide](/handbook/markdown-guide/#display-videos-from-youtube) to find the correct path.
- The domain `https://www.youtube-nocookie.com/` will allow YouTube videos to display in the review app correctly.
- Loading HTML videos from the source also work with no further adjustments. For example:

   ```yaml
   video: '/images/13_8/create_code_review-click-drag-multi-line-comments.mp4'
   ```

- Review the auto-generated captions for your video, and [clean them up for accuracy](https://www.youtube.com/watch?v=uJnhnA1fELY). Machine-generated captions often mangle technical terms.

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
  - [Include (Haml) file](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/sites/uncategorized/source/includes/release.html.haml):
    builds the content of the post applying custom styles. Its markup includes semantic SEO improvements.
- **Helpers:**
  - [Helper (Ruby) file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/helpers/release_post_helpers.rb): when the release post is being rendered, the helper combines all the release post items into a variable that is used by the include (Haml) file. The output of the helper is consistent with single data file process used until GitLab 12.8.
- **Content:**
  - **Data (YAML) files**: each contain the content for one feature, improvement, or deprecation. Data files are added to the [unreleased](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/release_posts/unreleased) or [data/deprecations](https://gitlab.com/gitlab-org/gitlab/-/tree/master/data/deprecations) directories, and then moved to a [release](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/data/release_posts/12_8) directory. The purpose of the helper (Ruby) is to combine these files when rendering the release post.
  - **Blog post (Markdown) file**: the blog post file holds the introduction of the blog post and frontmatter ([template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/doc/templates/blog/monthly_release_blog_template.html.md), [example](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/sites/uncategorized/source/releases/posts/2017-05-22-gitlab-9-2-released.html.md)).

To learn more how the template system works, read through an overview on [Modern Static Site Generators](/blog/2016/06/10/ssg-overview-gitlab-pages-part-2/).

### Feature order

Important note: Feature order should not be changed without approval from the Release Post Manager.

Primary feature content blocks are sorted alphabetically by file name so if necessary, the ordering can be affected by adding a 2-digit numerical prefix to the file name of each individual content block. For example, `01_filename.yml`, `02_another_file.yml`, etc.

Secondary features are first grouped by stage and within each stage sorted alphabetically by title. Features with no specified stage are grouped last. In release 13.10 and prior, bug fixes, performance improvements, and usability sections were also part of this automated sort order.  Starting with release 13.11, bugs, performance improvement, and usability sections were changed from secondary features to tertiary features, so they now will automatically come after the secondary features and prior to the Deprecations Removals and Upgrades sections.

It is not recommended but possible to manually affect the sort order of the secondary features. To do so a change to the content block's `title` is required.

### Release post branch creation Rake task

The release post branch can be created with the
[`release:monthly` Rake task](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/1d5b6127115ad8a0addecba54aa1cb14df024495/Rakefile#L71-182)
that automates most of the things that are needed for the release post merge request.

When you run `bundle exec rake release:monthly`, the following things happen:

1. You are asked for the GitLab version (for example, 13.10), and the release
   post date in ISO format (for example 2021-03-22). The script then reads those
   two values and uses them in the templates that are mentioned in the next steps.
   If one of them is missing, the script stops and exits.
1. The branch name is set to `release-X-Y`, which is based on the version you
   provided above.
1. The script checks if the release branch already exists. If it does, it
   stops and exits. You'll need to delete your local branch (`git branch -D release-X-Y`)
   if you want to re-run the script.
1. Git stashes your current changes, if any, checks out `master`, and pulls from
   `origin` (this should be the default remote pointing to the `gitlab-com/www-gitlab-com` repo,
   you can check with `git remote -v`).
1. The script then creates the new release branch.
1. The [intro](https://gitlab.com/gitlab-com/www-gitlab-com/-/tree/master/sites/uncategorized/source/releases/posts)
   is created by using the template under
   `doc/templates/blog/monthly_release_blog_template.html.md`. It replaces the
   stub X.Y values with the version you provided in the first step.
1. The [announcement template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/templates/blog/monthly_announcement_frontpage.html.haml) is used to update the
   [announcement frontpage](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/sites/uncategorized/source/includes/home/ten-oh-announcement.html.haml) with the new version.
1. The data directory for the release is created under `data/release_posts/X_Y/`.
   If it exists, the script stops and exits. You'll need to delete this directory
   if you want to re-run the script.
1. The [MVP template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/mvp.yml)
   is used to create the MVP file (`data/release_posts/X_Y/mvp.yml`).
1. The [CTA template](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/release_posts/unreleased/samples/cta.yml) is used to create the CTA file (`data/release_posts/X_Y/cta.yml`).
1. All the new and changed files are committed, and you are instructed to push
   the branch to GitLab in order to create the merge request.

### Release post item generator

The [release post item generator](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/bin/release-post-item) automates the creation of release post items using issues and epics. Issues and epics are the source of truth for what problems are being solved and how, and should have a clear description, and be well labeled. The script uses this information to pre-fill release post item MRs:

| Issue/Epic element                                      | Release Post Item Attribute (yml) or MR element |
|---------------------------------------------------------|-------------------------------------------------|
| Issue Title                                             | `title:`                                        |
| Label `devops::`                                        | `stage:`                                        |
| Label `group::`                                         | assigns group product manager as reporter, and tags [relevant team members in the MR](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/.gitlab/merge_request_templates/Release-Post-Item.md) |
| label `category:`                                       | `categories:`                                   |
| Label `release post item::` (`primary`/`secondary`)     | content block type `primary:` or `secondary:`   |
| Label tier (e.g. `GitLab Core` `GitLab Premium` `GitLab Ultimate`) | `available_in:`                                 |
| Issue web url (i.e. `/gitlab-org/gitlab/-/issues/####`) | `issue_url:`                                    |
| Issue description under `### Release notes`             | `description:` will contain all text except for the `documentation_link` and `image_url` <br><br>`documentation_link:` is the first URL in the `### Release notes` section containing `https://docs.gitlab.com*` <br><br>`image_url:` is the first image added to the `### Release notes` section. (e.g. `Image: ![name](/path/)`) |

**Important note:** GitLab Free tier is referenced as `core` in the data file. This is intentional and the page templates will apply the proper tier name on the frontend.


To ensure the generator script runs correctly follow the process below:

1. Make sure the issue is open.
1. Update your issue or epic with content in `### Release notes` (including a docs link and image, although those can always be added/updated in the MR later) specifically having it contain both a `Description:` then a `Documentation:`.
1. Make sure `devops::`, `group::`, `category:` and tier (e.g. `GitLab Core`) labels are applied
1. Apply one of the `release post item::` scoped labels. This will make the generator script pick up your issue next time it runs (once per hour)

Once the script runs an draft MR in the `/gitlab-com/www-gitlab-com` project will be opened and assigned to the group PM. You can continue editing and reviewing that MR from there.

If you'd like to check to see when the last pipeline ran (and if it picked up your issue) you can inspect the scheduled pipeline [here](https://gitlab.com/gitlab-com/www-gitlab-com/-/pipeline_schedules).

You can also watch [this overview video](https://www.youtube.com/watch?v=rfn9ebgTwKg) demonstrating how to use the `release post item generator`.

*Note: If you find problems with the `release post item generator`, questions should be posted in Slack [#release-post](https://gitlab.slack.com/archives/CTXULEPQD)* or added to the release post retrospective issue, tagging the release post [technical advisor](#technical-advisors). 

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
- Conformity to [schema]( https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/data/schemas/releasepost.schema.json)
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

#### Possible Script Errors with Corrective Actions

The [development.md](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/development.md) contains steps to setup your local development environment.

Here are some of the common errors that a user might encounter where it may not be clear as what to do.

1. You are missing a required Ruby Gem

You might receive obscure error such as this:

```
Traceback (most recent call last):
	6: from ./bin/release-post-item:5:in `<main>'
	5: from ./bin/release-post-item:5:in `require_relative'
	4: from /Users/chase/work/www-gitlab-com/lib/release_posts.rb:13:in `<top (required)>'
	3: from /Users/chase/work/www-gitlab-com/lib/release_posts.rb:13:in `require_relative'
	2: from /Users/chase/work/www-gitlab-com/lib/release_posts/post_entry.rb:6:in `<top (required)>'
	1: from /Users/chase/.asdf/installs/ruby/2.6.6/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:117:in `require'
/Users/chase/.asdf/installs/ruby/2.6.6/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:117:in `require': cannot load such file -- styled_yaml (LoadError)
```

In this case, ruby is trying to load a file named `styled_yaml`. It's not clear that this is a gem (a self-contained ruby library), but the `require` statement in the output is a clue that there is some unresolved dependency here. **The action you should take in this case is to run `bundle install`**. You can also run `./bin/doctor` and it _should_ provide guidance on what to do. If you're uncomfortable or encounter have difficulty here, you can reach out to the [release post DRI](https://gitlab.com/fseifoddini) for advisement.

2. Ruby mismatch

If you have a ruby version manager installed, you may receive an error in your terminal along the lines of `ruby  3.0.0  Not installed. Run "asdf install ruby 3.0.0"`

It's possible that your ruby version is out of date with what is required to run handbook scripts. You should be able to run `./bin/doctor` to compare your current ruby version with that in the `.tool-versions` file.

**The action you can take is to install the required ruby version**

To install Ruby in the most popular ruby version managers, try:

- For asdf, run the following: `asdf install ruby 3.0.0`
- For rbenv, run the following: `brew upgrade rbenv ruby-build && rbenv install 3.0.0`
- For rvm, run the following: `rvm install 3.0.0`

If you're uncomfortable or encounter have difficulty here, you can reach out to the [release post DRI](https://gitlab.com/fseifoddini) for advisement.

Note that the handbook currently [suggests](https://about.gitlab.com/handbook/git-page-update/#4-install-ruby-version-manager-rvm) `rvm`, while engineering has adopted `asdf`. You may find other references to `rbenv` in this documentation too. Any of these are fine, but they all work a bit differently and you _**only need one ruby version manager installed**_.

It is also possible that your ruby version manager is misconfigured or your settings have been altered because of an upgrade to macOS especially from earlier versions to Catalina or higher. It's difficult to suggest an action for this scenario, you may want to reach out to the [release post DRI](https://gitlab.com/fseifoddini) for advisement.

3. Gems install correctly, but you still have a missing gem error

The ruby gem package manager is called bundler. Depending on the version of bundler you have installed, it is possible to configure bundler to install gems in a location different from the usual (and required) location by passing the `--path that_other_directory` are remembered between invocations and will be stored in `./.bundle/config` or in `./bundle/config`.

If you look in the `./bundle/config` file you might see:

```
BUNDLE_PATH: "that_other_directory"
```

**The action you can take here is to edit that file `./bundle/config` and possibly `./bundle/config` to remove the BUNDLE_PATH setting and re-run `bundle install`.** You may also want to remove the `that_other_directory` which is often `vendor`. If you're uncomfortable or encounter have difficulty here, you can reach out to the [release post DRI](https://gitlab.com/fseifoddini) for advisement.

4. Locking support

You might encounter a message like this about locking support when you push a local commit to origin.

```
Locking support detected on remote "origin". Consider enabling it with:
  $ git config lfs.https://work-gitlab/gitlab-com/www-gitlab-com.git/info/lfs.locksverify true
```

You can probably safely ignore this suggestion. More documentation on [Git LFS file locking](https://github.com/git-lfs/git-lfs/wiki/File-Locking).

5. JAMF and git-lfs conflict

In the process of trying to push your commits to gitlab.com git is trying to verify the SSL cert. If you have JAMF installed (and you should for compliance reasons), git might find a different certificate for gitlab.com and throw an error about `Post "https://gitlab.com/gitlab-com/www-gitlab-com.git/info/lfs/locks/verify": x509: certificate signed by unknown authority
error: failed to push some refs to 'gitlab.com:gitlab-com/www-gitlab-com.git'`.

**The action you can take here is to contact IT** More information can be found in the following issue:
https://gitlab.com/gitlab-com/business-ops/team-member-enablement/issue-tracker/-/issues/1263#note_491341250

### Deprecation technical aspects

1. To ensure you can run the local rake tasks please ensure your [GDK](https://gitlab.com/gitlab-org/gitlab-development-kit) is configured correctly.
    - Install the GDK: `curl "https://gitlab.com/gitlab-org/gitlab-development-kit/-/raw/main/support/install" | bash`
    - Ensure your [local Gems](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/.tool-versions) are up to date:
        ```
        golang 1.16.8 1.17.1
        minio 2021-04-06T23-11-00Z
        nodejs 14.17.5
        postgres 12.6 11.9
        redis 6.0.15
        ruby 2.7.4 3.0.2
        yarn 1.22.11
      ``` 
1. When running the rake task to generate the Deprecation (`bin/rake gitlab:docs:compile_deprecations`), you might encounter some Gem bundler issues. To solve these ensure you are using the correct versions locally:
      - `bundle update --bundler`
    - `gem install bundler:2.1.4`
1. Please be aware your Ruby version should match the [`.tool-versions`](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/.tool-versions) before attempting to update the bundler.

---

### Release post merge request template

The [release post MR template](https://gitlab.com/gitlab-com/www-gitlab-com/blob/master/.gitlab/merge_request_templates/Release-Post.md) is our checklist for every release. Let's keep it up-to-date! :)

---

## Patch and Security release posts

The Delivery team is responsible for creating release posts for [patch](https://gitlab.com/gitlab-org/release/docs/-/blob/master/general/patch/blog-post.md) and [security releases](https://gitlab.com/gitlab-org/release/docs/blob/master/general/security/process.md#critical-security-releases).

Release posts should live in `sites/uncategorized/source/releases/posts`. For patch and security releases,
please make sure to specify them in the title, add the correct [category](../#categories):

- Patch releases:
  - `title: "GitLab Patch Release: x.y.z and x.y.z"`
  - `categories: releases`
- Security releases:
  - `title: "GitLab Security Release: x.y.z and x.y.z"`
  - `categories: releases`

## Creating an MR for What's New entries

[Video walkthrough of the process](https://youtu.be/GxKooIAknM8)

1. The VP of Product Management will identify the 3-7 topics for [What's New] each release as part of the their final review.
     - What gets highlighted in the What's new can but does not have to align with the primary features and/or theme of the release post.
     - If the VP of Product Management wants to solicit feedback on their selection from the PM team, they can do so by posting in Slack #release-post.
1. The VP of Product Management will create the What's New .yml file in  `gitlab/data/whats_new` directory of the `gitlab.com/gitlab-org/gitlab` project
   1. Utilize the [template](https://gitlab.com/gitlab-org/gitlab/-/blob/master/data/whats_new/templates/YYYYMMDD0001_XX_YY.yml)
   1. Title the file as `YYYYMMDD00001_XX_YY.yml` - for example, the 13.4 entry is titled `202009300001_13_04.yml`
   1. Using the content that is in the release post items, duplicate the content for What's New
      1. Sometimes it is necessary to trim down the description. Keep in mind that these should be short, and generally a single paragraph.
1. Images are required
   1. For videos, use the youtube image. To get the image URL, insert the youtube unique ID into this format: `https://img.youtube.com/vi/[insert-youtube-video-id-here]/hqdefault.jpg`
   1. Images will end up at a URL like `https://about.gitlab.com/images/X_Y/XXXXXXX.XXX` Make sure you provide a full URL for the YAML entry. Ex: `https://about.gitlab.com/images/13_7/reviewers_sidebar.png`
   1. If an image is not available, you can use a generic image (ex: https://about.gitlab.com/images/ci/gitlab-ci-cd-logo_2x.png) but it is recommended to only use release post items that have an image as an additional measure to check for posts that don't make the release
1. Submit the MR and add labels  ~"documentation" and ~"Pick into XX.Y" where XX.Y is the release that the What's New MR is for.
1. **IMPORTANT: The MR should not be merged until after the release post is live on the 22nd or the images will not display** After the release post is live, but before merging, the branch should be checked out and the content checked in GDK to make sure that all images are displaying, links are accurate, and that the What's New items are part of the final release post. Only once those are confirmed should the MR be merged. Typically this means the What's New content will be live on the 23rd or 24th, depending on maintainer reviews.

<style>
  pre { margin-bottom: 20px; }
</style>
