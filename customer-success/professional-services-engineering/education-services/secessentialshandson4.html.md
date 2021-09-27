---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands On Guide- Lab 4"
description: "This Hands On Guide Lab is designed to walk you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands On Guide- Lab 4
{:.no_toc}

## LAB 4- Migrate to license_scanning and Enable License Approvals

### Start with the following `.gitlab-ci.yml`
```yaml
include:
  - template: License-Management.gitlab-ci.yml

license_management:
  artifacts:
    reports:
      license_management: gl-license-management-report.json
```
### Copy the YAML above to a personal or project snippet
Use this link as a resource to [creating snippets](https://docs.gitlab.com/ee/user/snippets.html#create-snippets)
Name the file `license-compliance.gitlab-ci.yml`.

### Migrate to `license_scanning`
In GitLab 12.8 a new name for `license_management` job was introduced. This change was made to improve clarity around the purpose of the scan, which is to scan and collect the types of licenses present in a project's dependencies. GitLab 13.0 drops support for `license_management`. If you’re using a custom setup for License Compliance, you’re required to update your CI configuration accordingly:

**With the following directions, make changes to `license-compliance.gitlab-ci.yml`.**
1. On the line with the CI template, change the CI template to `License-Scanning.gitlab-ci.yml`.
1. On the line with the job name, change the job name to `license_scanning` (if you mention it in .gitlab-ci.yml).
1. On the line with the artifact name, change the artifact name to `license_scanning`, and the filename to `gl-license-scanning-report.json` (if you mention it in .gitlab-ci.yml).

### Enable License Approvals
`License-Check` is a merge request approval rule you can enable to allow an individual or group to approve a merge request that contains a `denied` license.

You can enable `License-Check` one of two ways:

1. Navigate to your project’s **Settings > General** and expand **Merge request approvals**.
1. Choose **Enable** or **Edit**.
1. Add or change the **Rule name** to `License-Check` (case sensitive).

![License Check](https://docs.gitlab.com/ee/user/compliance/license_compliance/img/license-check_v13_4.png)

### Create an approval group for all merge requests
1. Create an **approval group** in the **project policies** section for **Security & Compliance > License Compliance**. 
1. Set the approval group’s **number of approvals**. It must be greater than zero**.
1. Once you **enable** this group in your project, the approval rule is enabled for all merge requests.

**Any code changes cause the approvals required to reset.

**An approval is required when a license report:**|**An approval is optional when a license report:**
:-----:|:-----:
Contains a dependency that includes a software license that is `denied`.|Contains no software license violations.
Is not generated during pipeline execution.|Contains only new licenses that are `allowed` or unknown.
### SUGGESTIONS?

If you wish to make a change to our Hands on Guide for GitLab Security Essentials- please submit your changes via Merge Request!

