---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands On Guide: Lab 6"
description: "This Hands On Guide is designed to walk you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands On Guide: Lab 6
{:.no_toc}

## LAB 6: Static Application Security Testing (SAST)

SAST, an optional feature of CI/CD pipelines, analyzes your source code for known vulnerabilities. On every commit to a SAST-enabled project, GitLab checks the SAST report and compares the found vulnerabilities between the source and target branches.

The purpose of this lab is to use SAST to identify potential security vulnerabilities in your code.

### Navigate to the `CI Test` Project

1. Open your `CI Test` project and click on the `.gitlab-ci.yml` file.
2. Click on **Web IDE** to edit the file.
3. Pull up this [docs page](https://docs.gitlab.com/ee/user/application_security/sast/) in another tab to assist you with this lab. This page displays instructions for including SAST in CI/CD pipelines. The page also lists the languages and frameworks that SAST supports.
4. On the docs page, scroll down to the **Configure SAST manually** section.
5. Copy the following line:
```yaml
include:
  - template: Security/SAST.gitlab-ci.yml
```
6. Navigate back to the Web IDE where you were editing `.gitlab-ci.yml`.
7. **Paste the code** just copied below the **test1** section, leaving a blank line between the blocks of code. Ensure the first line of the pasted code is flush-left, and the second line is indented.
8. Click the blue **Commit...** button.
9. Add a commit message: `Add SAST to pipeline`
10. Click **Commit to `master` branch** instead of creating a new branch. The branch may also be named `main`.
11. Click **Commit**. Now that you have committed this change, the pipeline will run.

Next, let's add a file with a known vulnerability and see if SAST detects it.

### Add a `main.go` file and view SAST results

1. Navigate away from the Web IDE and back to your project overview page repository by clicking the **CI Test** project title on the top left of the window.
2. Click the `+` icon to the right of the `master` branch name near the top left of the window. Under **This directory**, click **New file**.
3. Type `main.go` in the **File name** field.
4. Copy entire file contents from this [snippet](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-with-git-basics/gitlab-flow-demo/-/snippets/1) and paste them into your empty `main.go` file.
5. Click **Commit changes**.
6. In the left pane, click **Pipelines** in the **CI/CD** section. Click the **running** or **passed** status label next to the top entry in the list of pipelines. Under the **Test** stage, you should see the SAST scan running.
7. Click the **Security** tab near the middle of the page. In the **Vulnerability** column, click on the `Errors unhandled` vulnerability to learn more about a potential security problem that SAST scanning detected.

### Suggestions?

If you wish to make a change to the *Hands on Guide for GitLab with Git Basics*, please submit your changes via Merge Request!
