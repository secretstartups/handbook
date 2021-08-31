---
layout: handbook-page-toc
title: "GitLab with Git Basics Hands-On Guide: Lab 6"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 6
{:.no_toc}

## LAB 6: Static Application Security Testing (SAST)

SAST, an optional feature on CI/CD pipelines, analyzes your source code for known vulnerabilities. GitLab’s Vulnerability Report then shows any old or new vulnerabilities found with each pipeline run.

This lab uses SAST to identify security vulnerabilities in your code.

### Enable SAST in your `CI Test` project

1. Navigate to your `CI Test` project and open `.gitlab-ci.yml`
1. Click **Web IDE** to edit the file.
1. Pull up the [SAST docs page](https://docs.gitlab.com/ee/user/application_security/sast/) to assist with this lab. This page shows instructions for including SAST in CI/CD pipelines and lists the languages and frameworks that SAST supports.
1. On the docs page, scroll down to the **Configure SAST manually** header and read that section.
1. Copy the following line:
```yaml
include:
  - template: Security/SAST.gitlab-ci.yml
```
1. Navigate back to the Web IDE where you were editing `.gitlab-ci.yml`
1. Paste the copied code at the end of that file. Ensure that:
   * there is a blank line above the pasted text
   * the first line of the pasted code is flush-left
   * the second line of the pasted code is indented with 2 spaces
1. Click **Commit...**
1. Add a commit message: `Add SAST to pipeline`
1. Click **Commit to the `main` branch** instead of creating a new branch.
1. Click **Commit**. The pipeline will now run, and will include a SAST job.

Next, let’s add a file with a known vulnerability and see if SAST detects it.

### Add a `main.go` file and view SAST results

1. Navigate away from the Web IDE and back to your project overview page by clicking the **CI Test** project title in the top left of the page.
1. Near the top left of the page, click the `+` icon to the right of the `main` branch name. Under **This directory**, click **New file**.
1. Type `main.go` in the **File name** field.
1. Open this [snippet](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-with-git-basics/gitlab-flow-demo/-/snippets/1) in a separate tab. Copy the content of that snippet. Paste it into your empty `main.go` file in your original GitLab tab.
1. Click **Commit changes**.
1. In the left-hand navigation pane, click **CI/CD > Pipelines**. 
1. In the top row of the table of pipelines, click the **running** or **passed** status label. Under the **Test** stage, you should see the `gosec-sast` job. This job does SAST scanning for Go code.
1. Click on the **Vulnerability Report** under the **Security & Compliance** tab near the middle of the left sidebar. Click on the `Errors unhandled` vulnerability to read about a potential security problem detected by SAST scanning.

## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
