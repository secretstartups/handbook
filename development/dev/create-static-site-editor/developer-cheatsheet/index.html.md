---
layout: handbook-page-toc
title: Developer Cheatsheet
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Useful Commands

### general

* Testing CI/CD Jobs Locally: `gitlab-runner exec shell job_name`

### gitlab-org/gitlab
* `gdk start`
( `gdk doctor`
* `bin/rake frontend:fixtures`
* Running tests:
    * `yarn karma`
    * `yarn jest`
* [Debugging Capybara](https://docs.gitlab.com/ee/development/testing_guide/best_practices.html#debugging-capybara)
    * `CHROME_HEADLESS=0 bundle exec rspec spec/features/projects/tree/create_directory_spec.rb`
* [Running QA specs](https://gitlab.com/gitlab-org/gitlab/tree/master/qa#how-can-i-use-it):
    * `cd qa && bundle exec bin/qa Test::Instance::All http://0.0.0.0:3000 -- qa/specs/features/ee/browser_ui/3_create/web_ide/web_terminal_spec.rb`
* [Capybara Screenshots](https://gitlab.com/gitlab-org/gitlab/blob/master/doc/development/testing_guide/best_practices.md#screenshots)
    * `screenshot_and_save_page`
    * `screenshot_and_open_image`
* [`live_debug`](https://docs.gitlab.com/ee/development/testing_guide/best_practices.html#live-debug)
* Static Analysis:
    * `scripts/static-analysis` (long)
    * `yarn eslint` (faster)
* `fdescribe` and `fit` for focused karma specs

### gitlab-com/www-gitlab-com

* Run site locally:
  * `NO_CONTRACTS=true bundle exec middleman`
* [Development Documentation](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/development.md)
  * [Testing tips](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/doc/development.md#testing)

## Tips and Tricks

## Git Tips

- Use of interactive rebasing (`git rebase -i master`) and message cleanup via `reword`/`fixup` are worth learning more about if you are unfamiliar with them.
- Interactive rebasing tip:
  - This process will let you separate "interactive rebasing" against the `merge-base` (the common ancestor of your branch `HEAD` and the upstream branch `master`) from the possibility of "conflict resolution" when rebasing against the latest upstream `master`.
  - First, do a `git rebase -i $(git merge-base HEAD master)`.  This lets you do your interactive rebase against the `merge-base` without any chance of having to deal with conflicts at the same time.  Make sure that the `merge-base` commit is contained on your master branch (i.e. you didn't just fetch and checkout the branch directly without updating master).  You could just `git fetch` then rebase against `origin/master`, but this negates the benefit of using `--force-with-lease`.
  - Optionally `git push --force-with-lease` (Or just wait until after the next step to push if you don't want to trigger an extra unnecessary build)
  - Then, do a `git rebase master`, to rebase against the latest master, and resolve any conflicts against your cleaned-up, interactively-rebased branch.
  - `git push --force-with-lease` (force-with-lease ensures nobody else has pushed to the branch since you last pulled)
- See [this blog post](https://about.gitlab.com/blog/2016/12/08/git-tips-and-tricks/) and our [git cheatsheet](https://about.gitlab.com/images/press/git-cheat-sheet.pdf) for more git tips.

### Working with Issues/MRs

* [Expanding Issue/MR Threads for Searching](https://gitlab.com/gitlab-org/gitlab/issues/38235)

#### New habits

Though the [contributor and development docs](https://docs.gitlab.com/ee/development/) are the single source of truth, there are some additional habits that may be worth developing when you're new to the code contribution process.

Depending on your existing habits and `git` practices the habits below may help mitigate pain during code submissions.
- Keep GDK up to date (update often, if not daily)
- Keep your commit history clean
    - Take special note of the [commit message guidelines](https://docs.gitlab.com/ee/development/contributing/merge_request_workflow.html#commit-messages-guidelines)
    - See "Git Tips" above
- Keep merge requests small
    - Merge conflicts are inevitable, but focusing on making your MRs smaller will save you pain later
- Keep localization files up to date
    - When adding English copy, messages, or labels don't forget to [update localization files](https://docs.gitlab.com/ee/development/i18n/externalization.html#updating-the-po-files-with-the-new-content)

### Dealing with Broken Master

* https://about.gitlab.com/handbook/engineering/workflow/#broken-master
* https://about.gitlab.com/handbook/engineering/workflow/#maintaining-throughput-during-broken-master

### Browser Testing

* Browser Testing: https://docs.gitlab.com/ee/development/fe_guide/index.html#browser-support
* Dynamic element validation in E2E tests: https://docs.gitlab.com/ee/development/testing_guide/end_to_end/dynamic_element_validation.html

### Running Web IDE Terminal in GDK

* https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/master/doc/howto/web_ide_terminal_gdk_setup.md
* https://www.youtube.com/watch?v=MhwmqqaREw0
