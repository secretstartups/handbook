---
layout: handbook-page-toc
title: "GitLab Security Essentials<br/>Hands-On Guide: Lab 4"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
{:.no_toc}

## LAB 4: Enable, configure, and run License Compliance

### A. Setup

1. Return to the **Security Labs** project you used in previous labs.
1. **OPTIONAL:** Follow the instructions at the start of [Lab 2](secessentialshandson2.html) for speeding up your pipeline by disabling scanners that you enabled in previous labs. 
1. **OPTIONAL:** Disable the **build-and-push-docker-image** job you added in the previous lab, since it takes some time to run.


### B. Unblock License Compliance for your project

**Important**: if you are taking a self-paced class, skip this section and continue with the **View your dependencies** section below. This section is only for students taking an instructor-led class.

The training environment for instructor-led classes blocks License Compliance for all projects by default. You need to unblock it for your project before you can enable it in `.gitlab-ci.yml`. Outside the training environment, you'll probably never need to do this step.

1. In the left navigation pane, select **Settings > CI/CD**. In the **Variables** section, select **Expand**.
1. Select **Add variable**.
1. In the **Key** field, enter `LICENSE_MANAGEMENT_DISABLED`
1. In the **Value** field, enter a single space.
1. Uncheck **Protect variable**.
1. Select **Add variable**.


### C. View your dependencies

1. As you saw in the Dependency Scanning lab, this Python project has 1 dependency: version **2.0.0** of the open-source **Keras** library. Confirm this by looking in the `requirements.txt` file in your project's repository.


### D. Enable and run License Compliance

1. Add the `Security/License-Scanning.gitlab-ci.yml` template to the `include:` section of `.gitlab-ci.yml`. If necessary, use any already-included templates as a model for syntax and indentation.
1. Commit the edited `.gitlab-ci.yml` with an appropriate message.
1. Visit the details page for pipeline that your commit triggered. Watch the progress of the `license_scanning` job. This might take a few minutes because the scanner has to download all of your project's dependencies, those dependencies' dependencies, and so on.


### E. View the License Compliance report with uncategorized licenses

1. Return to the details page for your pipeline and select the new **Licenses** tab. Keras is a big library with many dependencies of its own, so you'll see several licenses. Since you haven't added any rules for approving or denying licenses yet, GitLab will list all of these licenses as "uncategorized."


### F. Approve and deny licenses

Normally you would approve or deny each of the licenses for your project's dependencies, but in this lab you'll manage just 3 of them.

1. Select **Manage licenses**.
1. Select **Add license policy**.
1. In the **License name** dropdown, select `MIT License`. There are several licenses with similar names, so be sure to pick the right one.
1. Select the **Allow** radio button.
1. Select **Submit**.
1. Select **Add license policy**.
1. In the **License name** dropdown, select `Apache License 2.0`. Make sure not to accidentally select a different license with a similar name.
1. Select the **Deny** radio button.
1. Select **Submit**.
1. Use the same process to **deny** the `ISC License` (*not* the license just called `ISC`).


### G. View the License Compliance report with categorized licenses

1. Return to the details page of the most recent pipeline and select the **Licenses** tab.
1. Notice that GitLab now describes the **Apache License 2.0** as out of compliance, and lists the dependencies that you should remove from your project to restore compliance.
1. See that GitLab describes the **MIT License** as acceptable to use in this project.


### H. Add approval rules

The security team decides that your project *generally* shouldn't use dependencies with the MIT License, but is willing to consider some exceptions. MRs that introduce dependencies with denied licenses are normally blocked from being merged, but you can make an approval rule that allows any member of the security team to override blocked MRs. GitLab calls this special approval ruleset **License-Check**.

1. Select **Manage licenses**.
1. Select the **License Approvals** button (not the link with the same name). This shows the special **License-Check** approval ruleset, which is currently empty.
1. Leave **Approvals required** set to `1` so the MR can be unblocked by any single member of the security team.
1. In **Add approvers** select any user other than yourself (you can't give the project owner permission to approve license compliance overrides). If there had been a "security team" group defined, you could have added that group instead.
1. Click away from the **Add approvers** dropdown to close it, and confirm that an approver has been configured.
1. Select **Add approvers** and notice the new message **License Approvals are active**.


### I. Make an MR that adds a dependency with a denied license

1. Make a new branch called `add-dnspython-dependency`
1. Make an MR for that branch, making sure to remove `Draft:` from the MR title so that it's ready to merge.
1. Add a new dependency to the **add-dnspython-dependency** branch (not the **main** branch!) by pasting `dnspython==2.1.0` as a new line at the end of `requirements.txt`. Commit the edit.
1. Navigate to the details page for the pipeline that was triggered by your commit, and wait for it to finish.
1. Navigate to the branch's MR. In the **License Compliance** pane, select **Expand**. The MR is blocked from being merged because the **dnspython** dependency that it adds uses a denied license.<br/><br/>Normally you would need to either remove the dependency or have a member of the security team approve the MR and override the license compliance block. Since there are no approvers available in this training environment, you can stop here and leave the MR unmerged.


## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-on Guide*, please submit them via merge request.
