---
layout: handbook-page-toc
title: "Setting Up a Local Environment"
description: "Tips and suggestions for setting up a local environment to write and preview GitLab product documentation."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Whether you are a contributor or a GitLab Technical Writing team member, one of your first tasks is to set up
an environment on your computer for writing and previewing [GitLab documentation](https://docs.gitlab.com/).

## Tools for technical writers

You can use the following tools to set up your environment. Most of
these are not compulsory - you can set up your environment however you choose.
These are simply suggestions to help you get up and running quickly:

- If you haven't already, [install Git](https://docs.gitlab.com/ee/topics/git/how_to_install_git/index.html)
  and [add an SSH key to your GitLab profile](https://docs.gitlab.com/ee/ssh/#add-an-ssh-key-to-your-gitlab-account).
  This step is required.
- Install a code editor, like VS Code or Sublime Text, where you will work with markdown files. You can use whichever tool
  you're most comfortable with.
- [Install documentation linters](https://docs.gitlab.com/ee/development/documentation/testing.html#install-linters) and
  [integrate them with your code editor](https://docs.gitlab.com/ee/development/documentation/testing.html#configure-editors).
- To build the docs site locally, install [the requirements and dependencies](https://gitlab.com/gitlab-org/gitlab-docs/-/blob/main/doc/setup.md). If you are new to working on GitLab documentation as a Technical Writing team member, getting this basic local build and preview setup is recommended. GDK can be added later, after you are comfortable using the combination of Git, text editor, linters, and Nanoc (static site generator) the [Technical Writing workflow](https://about.gitlab.com/handbook/product/ux/technical-writing/workflow/).
- [Install the GitLab Development Kit (GDK)](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/index.md). GDK enables you:
  - To install, run, and maintain an instance of GitLab locally.
  - To [preview documentation changes locally](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/gitlab_docs.md).
  - To [preview code changes](https://gitlab.com/gitlab-org/gitlab-development-kit/-/blob/main/doc/howto/preview_gitlab_changes.md) locally.

## Additional resources

- The [Documentation Style Guide](https://docs.gitlab.com/ee/development/documentation/styleguide/)
  defines the standards for GitLab documentation, including grammar and formatting.
- The [documentation testing page](https://docs.gitlab.com/ee/development/documentation/testing.html)
  has important information about tests you should run to help ensure the quality of our documentation codebase.
- The [documentation topic types](https://docs.gitlab.com/ee/development/documentation/topic_types/index.html) define the structure for how content should be organized.
