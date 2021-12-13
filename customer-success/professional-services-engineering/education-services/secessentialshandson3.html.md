---
layout: handbook-page-toc
title: "GitLab Security Essentials Hands-On Guide: Lab 3"
description: "This Hands-On Guide walks you through the lab exercises used in the GitLab Security Essentials course."
---
# GitLab Security Essentials Hands-On Guide: Lab 3
{:.no_toc}

## LAB 3: Enable, configure, and run License Compliance

### Unblock License Compliance for your project

The training environment blocks License Compliance for all projects by default. You need to unblock it for your project before you can enable it in `.gitlab-ci.yml`. Outside the training environment, you'll probably never need to do this step.

1. Return to the **Security Labs** project you used for the previous labs.
1. In the left navigation pane, click **Settings > CI/CD**. In the **Variables** section, click **Expand**.
1. Click **Add variable**.
1. In the **Key** field, enter `LICENSE_MANAGEMENT_DISABLED`
1. In the **Value** field, enter a single space.
1. Uncheck **Protect variable**.
1. Click **Add variable**.


### View your dependencies

1. As you saw in the Dependency Scanning lab, this Python project has 1 dependency: the open-source **Keras** library. Confirm this by looking in the `requirements.txt` file.


### Enable and run License Compliance

1. Add the `Security/License-Scanning.gitlab-ci.yml` template to the `include:` section of `.gitlab-ci.yml`. If necessary, use the already-included templates as a model for syntax and indentation.
1. Commit the edited `.gitlab-ci.yml` with an appropriate message.
1. Visit the details page for pipeline that your commit triggered. Watch the progress of the `license_scanning` job. This might take a few minutes because the scanner has to download all of your project's dependencies, and those dependencies' dependencies, and so on.


### View the License Compliance report with uncategorized licenses

1. Return to the details page for your pipeline and click the new **Licenses** tab. Keras is a big library with many dependencies of its own, so you'll see several licenses. Since you haven't added any rules for approving or denying licenses yet, GitLab will list all of these licenses as "uncategorized."


### Approve and deny licenses

In real life you would approve or deny each of the licenses for your project's dependencies, but in this lab you'll manage just 2 of them.

1. Click **Manage licenses**. 
2. Click **Add a license**.
3. In the **License name** dropdown, select `MIT License`. There are several licenses with similar names, so be sure to pick the right one.
4. Select the **Allow** radio button.
5. Click **Submit**.
6. Click **Add a license**.
7. In the **License name** dropdown, select `Apache License 2.0`. Make sure not to accidentally select a different license with a similar name.
8. Select the **Deny** radio button.
9. Click **Submit**.
10. Use the same process to **deny** the `ISC License` (not the license just called `ISC`).


### View the License Compliance report with categorized licenses

1. Return to the details page of the most recent pipeline and click the **Licenses** tab. 
1. Notice that GitLab now describes the **Apache License 2.0** as out of compliance, and lists the dependencies that you should remove from your project to restore compliance.
1. See that GitLab describes the **MIT License** as acceptable to use in this project.


### Add approval rules

The security team decides that your project *generally* shouldn't use dependencies with the MIT License, but is willing to consider some exceptions. MRs that introduce dependencies with denied licenses are normally blocked from being merged, but you can make an approval rule that allows any member of the security team to override blocked MRs. GitLab calls this special approval ruleset **License-Check**.

1. Click **Manage licenses**.
1. Click **License Approvals**. This shows the special **License-Check** approval ruleset  (which is currently empty).
1. Leave **Approvals required** set to `1` so the MR can be unblocked by any single member of the security team.
1. In **Add approvers** select `Administrator @root`, since that's the only user available that's not you (you can't give the project owner permission to approve license compliance overrides). If there had been a "security team" group defined, you could have added that group instead.
1. Click away from the **Add approvers** dropdown to close it, and confirm that **Administrator** is an approver.
1. Click **Add approvers** and notice the new message **License Approvals are active**.


### Make an MR that adds a dependency with a denied license

1. Make a new branch called `add-dnspython-dependency`
2. Make an MR for that branch, making sure to remove `Draft:` from the MR title so that it's ready to merge.
3. Add a new dependency to the **add-dnspython-dependency** branch (not the **main** branch!) by pasting `dnspython==2.1.0` as a new line at the end of `requirements.txt`. Commit the edit.
4. Navigate to the details page for the pipeline that was triggered by your commit, and wait for it to finish.
5. Navigate to the branch's MR. In the **License Compliance** pane, click **Expand**. The MR is blocked from being merged because the **dnspython** dependency that it adds uses a denied license.<br/><br/>Normally you would need to either remove the dependency or have a member of the security team approve the MR and override the license compliance block. Since there are no approvers available in this training environment, you can stop here and leave the MR unmerged.


## Suggestions?

If you’d like to suggest changes to the *GitLab Security Essentials Hands-on Guide*, please submit them via merge request.
