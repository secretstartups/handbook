---
layout: handbook-page-toc
title: "Training Cloud Omnibus-as-a-Service"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

The demo systems that we call the GitLab Training Cloud provides a perpetual shared GitLab instance that is used for Professional Services training classes and field marketing enablement workshops with hands-on lab scenarios. The GitLab Training Cloud is comparable to our hosted gitlab.com SaaS service, however it allows greater flexibility for demonstration and sandbox purposes without affecting our production environment.

The GitLab Training Cloud provides you access to Ultimate license features with your own user account and an organizational group that you can use for creating projects and child groups. We also handle all of the GitLab Runner autoscaling and Kubernetes configuration behind the scenes. 

## Version 1

The Training Cloud v1 shares the [gitlab-core.us.gitlabdemo.cloud](https://gitlab-core.us.gitlabdemo.cloud) Omnibus instance with our Demo Cloud.

* Shared GitLab (Core) Instance
* Shared GitLab Runners
* Shared Kubernetes Cluster

## How It Works

The process for using the demo systems for workshops has been iterated several times, including significant process changes in FY22-Q1 to transition from custom lab guides per workshop to a centralized catalog of lab guides that improves our efficiency. Please consider this handbook page the SSOT for the latest changes.

If you are organizing or hosting a workshop (for any purpose) that has hands-on labs, you are encouraged to use one of the lab guides that are published in our [hands-on lab guide catalog](#workshop-hands-on-lab-guide-catalog). We treat the catalog like a college or university bookstore collection where you can get the course materials off the shelf, regardless of what the marketing name of your course or workshop is, or who is teaching it.

For each workshop session, you will need to follow the instructions below:

* Using an existing lab guide in the catalog? (90% of workshops). Follow the [Workshop existing lab guide catalog usage process](#workshop-existing-lab-guide-catalog-usage-process) at least 2-3+ weeks prior to the workshop.
* Need to create a new lab guide for your workshop or different sample projects? Follow the [Workshop hands-on lab creation process](#workshop-hands-on-lab-creation-process) at least 6-8+ weeks prior to the workshop.

### Workshop hands-on lab guide catalog

All of the workshop content that is created officially can be found in the [gitlab-com/customer-success/workshops](https://gitlab.com/gitlab-com/customer-success/workshops) group. There have historically been many deviations and custom workshops that have been created, however they are not considered official until they have been [approved by the demo systems team](#workshop-hands-on-lab-creation-process) and published to this handbook page.

<table>
<tr>
<th>Lab Guide Name</th>
<th>Links</th>
<th>Maintainer</th>
</tr>
<tr>
<td>Advanced CI/CD</td>
<td>
<ul>
<li><a href="https://gitlab.com/gitlab-com/customer-success/workshops/templates/advanced-ci-cd-template">Slides and Sample Project</a></li>
</ul>
</td>
<td><a href="https://gitlab.com/lmwilliams">@lmwilliams</a></td>
</tr>
<tr>
<td>Program Project Management</td>
<td>
<ul>
<li><a href="https://gitlab.com/gitlab-com/customer-success/workshops/templates/ppm-template">Slides and Sample Projects</a></li>
</ul>
</td>
<td><a href="https://gitlab.com/lmwilliams">@lmwilliams</a></td>
</tr>
<tr>
<td>DevOps Automation</td>
<td>
<ul>
<li><a href="https://gitlab.com/gitlab-com/customer-success/workshops/templates/devops-automation-template">Slides</a></li>
</ul>
</td>
<td><a href="https://gitlab.com/lmwilliams">@lmwilliams</a></td>
</tr>
<tr>
<td>Security</td>
<td>
<ul>
<li><a href="https://gitlab.com/gitlab-com/customer-success/workshops/templates/security-template">Slides and Sample Projects</a></li>
</ul>
</td>
<td><a href="https://gitlab.com/lmwilliams">@lmwilliams</a></td>
</tr>
</table>

#### Workshop existing lab guide catalog usage process

If one of the lab guides in the catalog above works for you, you can simply create an issue and invitation code and you're good to go after completing the steps below. We ask that you create the issue 2-3 weeks prior so we have time to make changes if there are any capacity limits, scheduled maintenace, multiple workshop schedule conflicts, known CI/CD cluster problems, etc.

1. `[2-3+ weeks prior]` **Issue created** - Create an issue in the Demo Systems issue tracker using the [workshop_existing_lab_guide](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues/new?issuable_template=workshop_existing_lab_guide) issue template. You can follow the commented out instructions in the issue description, including linking to the catalog lab guide that you'll be using.
1. `[2-3+ weeks prior]` **Invitation code** - Create your invitation code [using the instructions below](#self-service-workflow-for-creating-an-invitation-code). This will automatically create the GitLab group and environment for you to use for your sample projects and lab exercise development. It is recommended to not create a test invitation code since you will have to perform additional steps to relocate and re-test your sample projects. We can administratively update the expiration date if your workshop is rescheduled.
1. `[2-3+ weeks prior]` **Import sample project(s)** - Import the catalog lab guide sample project(s) into the GitLab group for this session. You can start using your sample project and perform testing [using the instructions below](#test-your-invitation-code-and-sample-projects).
1. `[2-3+ weeks prior]` **Green light approval** - Once capacity limits and schedule conflicts are checked, Jeff Martin will provide the final approval in the issue and you're good to go. 
    * [Prepare for your class or workshop](#prepare-for-your-class-or-workshop)
    * [During the class or workshop](#during-the-class-or-workshop)
    * [After the class or workshop](#after-the-class-or-workshop)

### Workshop hands-on lab creation process

When creating new lab guides for a workshop, you should start planning and creating your workshop labs 6-8+ weeks before the planned date of the workshop. 

**If you are starting on your labs less than four (4) weeks before your workshop date, you can only use the Demo Systems if you are using lab exercises that are listed in the [lab guide catalog](#workshop-hands-on-lab-guide-catalog).** With less than four weeks, there is not enough time for creating lab exercises, creating a code sample project, debugging your CI pipelines, creating a `README` and troubleshooting instructions, completing a peer content review, having two peers perform step-by-step lab exercise testing, complete an infrastructure scalability review and make changes if needed, and coming up with plan B and plan C if there are technical glitches. 

**Alternatively, you can publish an open source project for the user to use asynchronously after the workshop is over in their own GitLab.com group or Omnibus instance. A lot of the challenges that we face are non-existant if hundreds of users are not clicking the green button at the same time.**

If you have any questions or deviations to this process, please send a Slack message or schedule a Zoom call with Jeff Martin to discuss. We're happy to accommodate but want to be proactive and discuss as early as possible to avoid last minute scrambling.

1. `[6+ weeks prior]` **Issue created in demo systems issue tracker** - Create an issue in the Demo Systems issue tracker using the [workshop_sample_projects_review](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues/new?issuable_template=workshop_sample_projects_review) issue template. 
    * Follow the instructions in the issue description to fill out a description of your lab scenarios and what you will be doing. This is the "lab abstract" to give the demo systems team time to prepare thematically for what you want to do and identify any risks or technical limitations early.
1. `[6+ weeks prior]` **Preliminary infrastructure scalability assessment** - After the abstract has been posted in the issue, the demo systems team will check if there are any preliminary concerns or infrastructure changes needed. You can see the list of things we're looking for in the [list of scalability challenges below](#demo-systems-team-scalability-review).
    * The goal is to discover any potential problems before we get to the 11th hour and allow us to help you with a Plan B if needed.
    * This can be done formally in the issue or informally during an exploratory Zoom call depending on your preference or the technologies being used in the lab exercises. 
    * **You do not need to wait for the demo systems team approval to start the process of creating your sample project or lab exercises (see below).**
1. `[5-6+ weeks prior]` **Invitation code** - Create your invitation code [using the instructions below](#self-service-workflow-for-creating-an-invitation-code). This will automatically create the GitLab group and environment for you to use for your sample projects and lab exercise development. It is recommended to not create a test invitation code since you will have to perform additional steps to relocate and re-test your sample projects. We can administratively update the expiration date if your workshop is rescheduled.
1. `[4-5+ weeks prior]` **Create or import sample project(s)** - Create your code sample project or import your existing sample project into the GitLab group for this session. You can start using your sample project and perform testing [using the instructions below](#test-your-invitation-code-and-sample-projects).
1. `[4-5+ weeks prior]` **Create a slide deck using the template and add steps for your exercises** - This [slide deck](https://docs.google.com/presentation/d/1ZKZSecu7orWyQxY8m-et26RQI2-ZELVaFuIrJxNN6-Q/edit?usp=sharing) has the standardized instructions for students to redeem an invitation code and import their project. You will need to add additional slides with the lab exercises being performed in your workshop. 
    * We use step-by-step instructions in the slides to allow students with a variety of learning styles to be successful in our workshops. This includes watching a demo presented by the instructor, looking at screenshots in the deck, reading the `README`, and performing the steps click-by-click based on steps shown in the slides. Remember that not all students will perform the steps to create their lab environment, so instructions should be in the slides in addition to the `README`.
    * Remember to update all screenshots based on what you see when you perform your tests with your sample projects. Slide decks that have instructions that do not match what the student sees will not pass the peer review.
    * Remember that you might be presenting this workshop, however others must be able to reuse your content or consume it async. Be sure that everything you think is important or said verbally is either on the slide or in the presenter notes of the slide deck. Please help the team live our values of iteration and build upon the great work that you're doing.
    * **Helpful tip:** You can redeem the invitation code multiple times to get a fresh environment to perform lab exercise steps.
1. `[3-4+ weeks prior]` **Publish the link to your sample project in the issue** - After your project is ready for performing lab exercises, update the issue description with the link to your sample project. 
1. `[3-4+ weeks prior]` **Publish the link to your slides in the issue** - After you have added your lab exercise steps, update the issue description with the link to your slides. The peer reviewers will be assigned by Jeff Martin or an SA manager and are usually tagged 1-2 weeks prior to content review taking place to allow the reviewers time to plan ahead on their calendar.
1. `[3-4+ weeks prior]` **Record a video of yourself performing lab steps (dry run)** - Use your preferred screenshare recording tool (Zoom, Camtasia, Screenflow, etc) to record a video of walking through the lab steps and providing a narrative of what you're doing. Please upload the video to the Demo Systems [Google Drive folder](https://drive.google.com/drive/u/0/folders/19EVEgVNgvBCj0WrzQW3MgnCOYfbS3p6X). This serves as a dry run that the leadership team can review and serves as a guideline for peer reviewers to follow if your lab steps are not sufficient. You will find that you will explain a lot of things verbally that are not written down and this is a chance to capture it while benefiting the others that are reviewing the labs.
1. `[3-4+ weeks prior]` **Final infrastructure scalability review** - Once the sample project and step-by-step instructions are published, the demo systems team will perform a walk-through of the lab steps while monitoring our infrastructure to understand the impact and identify any technical challenges when performed simultaneously by hundreds of students. You can see the list of things we're looking for in the [list of scalability challenges below](#demo-systems-team-scalability-review).
    * The demo systems team will comment on the issue with a full review and either a green light or a list of changes to make.
1. :bangbang: `[3-4+ weeks prior]` **Infrastructure go/no-go decision** - If there any problems with using the demo systems for your workshop that cannot be easily fixed or changed, the demo systems team will comment on the issue and schedule time to discuss next steps and alternatives. 
1. `[3+ weeks prior]` **All lab exercises ready for peer testing** - Comment on the issue that the slides are complete and sample projects have been tested to the best of your ability and are ready for peer review.
1. `[2-3+ weeks prior]` **Peer review of lab exercises** - The peer reviewers will review the slide deck for understandability and topic coverage. They will also perform the lab exercises as if they are a student to ensure that instructions are easy to understand and follow, and identify any technical issues or possible confusion areas that should be known for the team members assisting with the workshop in real time. All peer reviews should ideally be completed within 3-5 days.
    * Each peer reviwer will comment on the issue with a full review. The goal is to reach a "good enough" state that all students can be successful with the instructions as written.
1. `[2 weeks prior]` **Final edits and publishing** - It is expected that there will be several hours of edits to make to the slides or lab exercises based on the peer review.
1. `[1-2 weeks prior]` **Green light approval** - Once all reviews have been completed, Jeff Martin will provide the final approval in the issue and you're good to go.
    * [Prepare for your class or workshop](#prepare-for-your-class-or-workshop)
    * [During the class or workshop](#during-the-class-or-workshop)
    * [After the class or workshop](#after-the-class-or-workshop)
1. `[1-3 weeks after]` **Publish to catalog** - After the workshop has been completed and any reported problems are mitigated, the demo systems team will publish the lab guide for your workshop to the catalog for future re-use.

#### Self-service workflow for creating an invitation code

1. Visit the [Invitation Codes Admin UI](https://gitlabdemo.com/invitations) to create a new invitation code. A new 8-character invitation code is generated that will be shared across all students, instructors and organizers for this class or workshop session.
1. A new GitLab group will be created on the Omnibus instance for your session. (Ex. `https://gitlab-core.us.gitlabdemo.cloud/training-users/session-a1b2c3d4/`)
1. You can create, import, or transfer projects that you have created into the session's sample projects child group (Ex. `/training-users/session-a1b2c3d4/sample-projects-a1b2c3d4/lab-scenario1`). 
    * You will perform this using your credentials that you use for the Demo Cloud that provides you with Admin access to the Omnibus instance and all of the groups that you'll need to access. 
    * The sample projects group will expire and be deleted after your session is over, so it is recommended to keep the "golden master copy" of your sample projects in the [Training and Workshop Sample Projects](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects) (Ex. `/training-sample-projects/workshop-name/lab-scenario1`) group and [export/import the project](https://docs.gitlab.com/ee/user/project/settings/import_export.html) into the session's sample projects (Ex. `/training-users/session-a1b2c3d4/sample-projects-a1b2c3d4/lab-scenario1`). Keep in mind that the Import from URL functionality only include all of the [contents of a project](https://docs.gitlab.com/ee/user/project/settings/import_export.html#exported-contents), so a full `tar` export is recommended. 
1. Navigate to the Session group and configure [Group-level Project Templates](https://docs.gitlab.com/ee/user/group/custom_project_templates.html#setting-up-group-level-project-templates) and choose the `Sample Projects` child group from the drop down menu. This step is not automated since it is [not available in the API](https://gitlab.com/gitlab-org/gitlab/-/issues/296883). 

#### Test your invitation code and sample projects.

1. Open a new browser window in incognito mode (for a fresh authentication session).
1. Redeem the invitation code like a student will at [https://gitlabdemo.com/invite](https://gitlabdemo.com/invite).
1. Use the credentials provided to login to the GitLab instance.
1. Navigate to your `My Test Group - a1b2c3d4` group, or use the blue `My Group` button on `gitlabdemo.com`.
1. Create a new project choose `Import from Template`.
1. You will find your sample projects under the `Group` tab and click the `Use template` button to import.
1. Create a slide deck or use an [existing example for student lab instructions](https://docs.google.com/presentation/d/1ZKZSecu7orWyQxY8m-et26RQI2-ZELVaFuIrJxNN6-Q/edit?usp=sharing). These should be detailed enough to be followed async by a student.
1. Perform your lab steps as if a student is following your instructions. Make any tweaks and corrections to make it flow easy for the student. This may take several hours or several iterations with multiple people. Each team member that's helping you can redeem the invitation code to create an account, and you can also redeem the invitation code multiple times in different incognito windows for a fresh session.
1. Update your slide deck and/or sample project README with any changes you discovered during your testing.
1. Take note of any challenges that you run into for your review discussion with the Demo Systems team. You may add them as comments on the issue you will create below.

#### Demo Systems team scalability review

1. Create an issue in the Demo Systems issue tracker using the [workshop_sample_projects_review](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues/new?issuable_template=workshop_sample_projects_review) issue template. Follow the instructions in the issue description.
1. The Demo Systems team will comment on the issue with async technical review of your lab scenarios and sample projects to identify scalability concerns. Here's some of the things we're looking for with scalability challenges.
    * Autoscaling runners for 500 simultaneous pipelines started in 10 seconds
    * Autoscaling Kubernetes nodes for 500 simultaneous review apps/deployments in 60 seconds
    * Auto DevOps pipelines that consume lots of wasted resources
    * Kubernetes services that are not needed (ex. Postgres database)
    * Intensive test jobs that are not needed during workshop (ex. Code Quality, Dependency Scanning, etc.)
    * Project export/import queued job fails with 500 simultaneous project imports
    * Features in your project that have known issues with import/export process (ex. wikis)
    * Administrative access for students (alternative use cases)
    * Package registry caching and garbage collection
    * Container registry caching and garbage collection
    * CI images pulling from Docker Hub with rate limits
    * CI image versions that are incompatible or have been upgraded with bug fixes
    * Using templates in `.gitlab-ci.yml` without realizing the underlying job load.
    * Using custom `.gitlab-ci.yml` files without comments of the actions being performed
    * Dependency proxy configuration (particularly for npm and maven dependencies)
    * Lack of step-by-step instructions that leads to student misconfigurations and errors
1. A Zoom call will be scheduled to review the findings and discuss anything important or noteworthy.
1. After the Demo Systems team approves your sample projects, you're ready for your workshop.

#### Prepare for your class or workshop

1. Share the invitation code with the event organizer in the GitLab issue or Slack channel.
1. Create a Slack thread in `#demo-systems-workshops-{region}` for real-time support.

#### During the class or workshop

1. Post a message in the Slack thread when you start your workshop and end your workshop to let the Demo Systems team know for verifying autoscaling configuration for Runners, etc.
1. Use the [slides to show students how to properly redeem an invitation code](https://docs.google.com/presentation/d/1ZKZSecu7orWyQxY8m-et26RQI2-ZELVaFuIrJxNN6-Q/edit?usp=sharing).
1. Post messages in the Slack thread if you see problems and need triage assistance. 
1. Ask students to perform an export of their project if they want to keep it and re-import it on GitLab.com or another Omnibus instance in their own environment.

#### After the class or workshop

1. If you want to keep any sample projects or you made changes that aren't reflected in the projects that you imported from originally, transfer these projects to the [Training and Workshop Sample Projects](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects) (Ex. `/training-sample-projects/workshop-name/lab-scenario1`) group or your own namespace.
1. The session group and all sample projects and student groups will be destroyed during garbage collection on the date shown in the [Invitation Codes Admin UI](https://gitlabdemo.com/invitations) at 00:00 UTC. As a rule of thumb, copy anything from the session group to another location by the end of the day after your class or workshop is over to avoid data loss.

#### Extension Policy

1. We do not extend workshops since it is very resource intensive to keep resources around. Any student that needs more time should export their project(s) and import them on GitLab.com or Omnibus instance in their own environment.
1. We can extend Professional Services class access only if the request is received before the expiration date of the user account and/or invitation code. We cannot extend after garbage collection scripts have been run.

## Version 2

The Training Cloud v2 environment is a WIP. You can see the GitLab projects for this initiative in the [Training Cloud](https://gitlab.com/gitlab-com/demo-systems/training-cloud) GitLab group. We are building v2 using infrastructure-as-code that we publish as open source for our community in the [Sandbox Cloud Terraform modules](https://gitlab.com/gitlab-com/sandbox-cloud/tf-modules) and [Sandbox Cloud Ansible roles](https://gitlab.com/gitlab-com/sandbox-cloud/ansible-roles) groups. We are [exploring the use of HashiCorp Packer](https://gitlab.com/gitlab-com/demo-systems/issue-tracker/-/issues/55) for easier distribution of pre-configured images in upcoming iterations.

## Version Upgrades and Maintenance

We perform version upgrades on the weekend following the 22nd of each month. The weekend upgrades are performed at a random time on Saturday or Sunday based on engineer availablility and lasts for approximately 30 minutes.

We delay the upgrade window for updates that we consider risky or occur during holidays. This occurs during May each year when the major version of GitLab is released and usually aligns with the US Memorial Day holiday, in December around the Christmas Holiday, and in January at the end of the fiscal year when we have a configuration freeze until sales demos are completed. 

In the current iteration, it is assumed that all classes and workshops will use the latest version of GitLab with an Ultimate license. In the future, we may considering offering version-specific or license/tier specific environments for each class or workshop.

For patch and security updates, we will usually only perform upgrades for critical updates and will announce maintenance windows in the `#demo-systems` channel on Slack.

### FY22 Upgrade Schedule

| GitLab Version | Release Date     | Upgrade Window (Sat to Sun) |
|----------------|------------------|-----------------------------|
| v13.9          | 2021-02-22 (Mon) | 02-27 to 02-28              |
| v13.10         | 2021-03-22 (Mon) | 03-27 to 03-28              |
| v13.11         | 2021-04-22 (Thu) | 04-24 to 04-25              |
| v14.0          | 2021-05-22 (Sat) | 06-05 to 06-06 (delay)      |
| v14.1          | 2021-06-22 (Tue) | 06-26 to 06-27              |
| v14.2          | 2021-07-22 (Thu) | 07-24 to 07-25              |
| v14.3          | 2021-08-22 (Sun) | 08-28 to 08-29              |
| v14.4          | 2021-09-22 (Wed) | 09-25 to 09-26              |
| v14.5          | 2021-10-22 (Fri) | 10-23 to 10-24              |
| v14.6          | 2021-11-22 (Mon) | 11-27 to 11-28              |
| v14.7          | 2021-12-22 (Wed) | 01-01 to 01-02 (delay)      |
| v14.8          | 2022-01-22 (Sat) | 02-05 to 02-06 (delay)      |

### Legacy Version Support

We keep our shared environment up-to-date with the latest versions to help showcase the value that the newest features and solutions offer.

For demo and sandbox use cases requiring an older version, you can deploy a GitLab instance in a container in the Container Sandbox or using Omnibus in the Compute Sandbox. We do not offer any data migration or parity configuration support.

