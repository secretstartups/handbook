---
layout: handbook-page-toc
title: "Git Guide for Blog Contributors"
description: "A guide for working with Git, terminal, and the www-gitlab-com repository"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## General Tips

### Get Most Recent Files
When you sign on for the day try to do a `git pull origin master` so that you have the most recent files and changes from others locally on your computer — this will avoid merge conflicts and overwriting files.
When you do this make sure you are in the right directory, (e.g. MacBook-Pro:www-gitlab-com user$)
Throughout the day you can also run `git pull` to get the most recent changes locally.

### Committing Changes and Pushing Changes
To start, make sure your on the correct feature branch with `git checkout 0000-branch-name`[enter] in terminal
Add, change, update files in the repository.
In Terminal → run `git status` [enter] to see all of the files you’ve modified
`Git add .` [enter] will stage all of these files (and any you created) for a commit
Next we need to add a commit message with `git commit -m “[descriptive message goes here]”` [enter]
Now we’re ready to push your local changes to `0000-branch-name` using `git push origin 0000-branch-name` [enter]

### Commit Early and Often
Commit early and often — avoid working on multiple large files and then committing and pushing the files all at once (it can take several minutes, or even hours, to push depending on your internet connection — worst case it times out)
Run `git pull` [enter] on occasion to make sure you have the most recent changes / updates locally.

### Static Site Editor Developer Tips
There is a handy resource the Static Site Editor group has put together for [Git Tips here](https://about.gitlab.com/handbook/engineering/development/dev/create-static-site-editor/developer-cheatsheet/#git-tips).

## Geting Recent Changes From Master

### How and When to Use Merge Workflow
Use a merge workflow for feature branches where MULTIPLE PEOPLE ARE WORKING ON THEM. Use the the built-in [squash and merge](https://docs.gitlab.com/ee/user/project/merge_requests/squash_and_merge.html) functionality when merging an MR to ensure only clean, atomic, squashed commits make it to master. 

```
git checkout 0000-branch-name
git fetch
git merge origin/master
git push origin  0000-branch-name
```
### How and When to Use Rebase Workflow
Use a rebase-based workflow on feature branches WHICH ONLY ONE PERSON IS WORKING ON, because otherwise you end up with fragmented, non-atomic, git spaghetti for history. Rebase has powerful history rewriting features. Rebasing is changing the base of your feature branch from one commit to another making it appear as if you had created your branch from a different commit. Git accomplishes this by creating new commits and applying them to the specified featured base.
```
git checkout 0000-branch-name
git fetch
git rebase origin/master
git push origin  0000-branch-name
```
## How to Resolve Merge Conflicts

### Offical GitLab Documentation
Here is the [oficial documentation on merge request conflict resolution](https://docs.gitlab.com/ee/user/project/merge_requests/resolve_conflicts.html) in GitLab.

Here's a great blog post on [resolving merge conflicts from the GitLab UI](https://about.gitlab.com/blog/2016/09/06/resolving-merge-conflicts-from-the-gitlab-ui/)

### Reseting Local Branch to Origin
If you have not made any changes to your local branch and are getting a conflict message from orgin, just resest your local branch to be exactly like origin. WARNING - if you have made changes to your blog post, those changes will be lost!
```
git fetch
git checkout 0000-branch-name
git reset -hard  origin/0000-branch-name
```

## Help with Git

### Slack Channels

If you're having problems with git, reach out in the following slack channels =)
- [#git-help](https://app.slack.com/client/T02592416/C1E21S2LD)
- [#mr-buddies](https://app.slack.com/client/T02592416/CLM8K5LF4)
