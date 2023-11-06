---

title: "GitLab with Git Basics Hands-On Guide: Lab 6"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab with Git Basics course."
---
# GitLab with Git Basics Hands-on Guide: Lab 6


## LAB 6: Static Application Security Testing (SAST)

SAST, an optional feature on CI/CD pipelines, analyzes your source code for known vulnerabilities. GitLab’s Vulnerability Report then shows any old or new vulnerabilities found with each pipeline run.

This lab uses SAST to identify security vulnerabilities in your code.

### A. Enable SAST in your `CI Test` project

1. Go to `CI Test` > `.gitlab-ci.yml`.
1. **Open Web IDE** to edit the yaml file.
1. Pull up the [SAST docs page](https://docs.gitlab.com/ee/user/application_security/sast/) to assist with this lab. This page shows instructions for including SAST in CI/CD pipelines and lists the languages and frameworks that SAST supports.
1. On the docs page, scroll down to the **Configure SAST in your CI/CD YAML** header and read that section.
1. Copy the following lines:

```yaml
include:
  - template: Jobs/SAST.gitlab-ci.yml
```

1. Navigate back to the Web IDE where you were editing `.gitlab-ci.yml`.
1. Paste the copied code at the end of that file. Ensure that:
   - there is a blank line above the pasted text
   - the first line of the pasted code is flush-left
   - the second line of the pasted code is indented with 2 spaces
1. **Create commit...**
1. Add the commit message: `Add SAST to pipeline`
1. **Commit to the `main` branch** instead of creating a new branch.
1. **Commit**. The pipeline will now run, and will include a SAST job.

Next, you'll add a file with a known vulnerability and see if SAST detects it.

### B. Add `run.py` and review SAST scanning results

1. Return to your project's overview page by selecting the **CI Test** project title on the top left of the page.
1. Near the top left, to the right of the branch dropdown, select **(+) > This directory > New file**.
1. For the **File name** field, use `run.py`.
1. In a separate tab, open this [snippet](https://ilt.gitlabtraining.cloud/professional-services-classes/gitlab-with-git-basics/gitlab-flow-demo/-/blob/master/run.py). Copy the contents of this snippet and paste it into the empty `run.py` file back in your original GitLab tab.
1. Select **Commit changes**.
1. In the left-hand navigation pane, select **CI/CD > Pipelines**.
1. At the top of the row of the table of pipelines, select the **running** or **passed** status labels.
1. When the pipeline finishes, in the left navigation pane, select **Security & Compliance > Vulnerability Report**.
1. To wrap up, select the `Info` vulnerability and read about a potential security problem detected by SAST scanning in `run.py`.

## Suggestions?

If you’d like to suggest changes to the *GitLab with Git Basics Hands-on Guide*, please submit them via merge request.
