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

1. Navigate to your `CI Test` project and open `.gitlab-ci.yml`.
1. Click **Web IDE** to edit the file.
1. Pull up the [SAST docs page](https://docs.gitlab.com/ee/user/application_security/sast/) to assist with this lab. This page shows instructions for including SAST in CI/CD pipelines and lists the languages and frameworks that SAST supports.
1. On the docs page, scroll down to the **Configure SAST manually** header and read that section.
1. Copy the following lines:
```yaml
include:
  - template: Security/SAST.gitlab-ci.yml
```
6. Navigate back to the Web IDE where you were editing `.gitlab-ci.yml`.
7. Paste the copied code at the end of that file. Ensure that:
   * there is a blank line above the pasted text
   * the first line of the pasted code is flush-left
   * the second line of the pasted code is indented with 2 spaces
8. Click **Commit...**
9. Add a commit message: `Add SAST to pipeline`
10. Click **Commit to the `main` branch** instead of creating a new branch.
11. Click **Commit**. The pipeline will now run, and will include a SAST job.

Next, let’s add a file with a known vulnerability and see if SAST detects it.

### Add `main.go` and review SAST scanning results

1. Navigate away from the Web IDE and back to your project's overview page by selecting the **CI Test** project title on the page, top left.
1. Near the top left, select the `+` to the right of where it states `main`. Under **This directory**, select **New file**.
1. For the **File name** field, use `main.go`.
1. In a separate tab, open this [snippet](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-with-git-basics/gitlab-flow-demo/-/snippets/26). Copy the contents of this snippet and paste it into the empty `main.go` file back in your original GitLab tab.
1. Select **Commit changes**.
1. In the left-hand navigation pane, select **CI/CD > Pipelines**. 
1. At the top of the row of the table of pipelines, select the **running** or **passed** status labels. Under the **Test** stage, you should see a new `gosec-sast` job. This job does SAST scanning of the Go code, `main.go`.
1. When the pipeline finishes, in the left navigation pane, select **Security & Compliance > Vulnerability Report**.
1. If prompted, select **Configure security testing**, then **Enable SAST**. 
1. To wrap up, select the `Errors unhandled` vulnerability and read about a potential security problem detected by SAST scanning in `main.go`.

## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
