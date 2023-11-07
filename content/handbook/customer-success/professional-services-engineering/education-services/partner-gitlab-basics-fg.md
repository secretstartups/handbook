---
aliases: /handbook/customer-success/professional-services-engineering/education-services/partner-gitlab-basics-fg.html
title: "Partner Facilitator Guide for GitLab with Git Basics"
description: "This Facilitator Guide is intended to walk you through all important links, preparation items, and after class items for our GitLab with Git Basics course."
---

# GitLab with Git Facilitator Guide for Partners

## Important Links

1. [Hands On Guide](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/education-services/gitbasicshandson.html)
2. [GitLab Template Projects for VMs](https://gitlab.com/gitlab-com/customer-success/professional-services-group/partner-training-template-projects/gitlab-with-git-basics)
3. [Remote Sessions Tips and Tricks](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/remote-training-tips/)

## Before Class Preparation

1. Lab set up and preparation
   1. Set up the lab environment for your organization (if not already done)
   2. Provision learners
2. Hands-on walkthrough
   1. Practice each demo in the lab environment
   2. Test each hands-on activity in the lab environment
3. Websites to have up prior to class:
    1. [Related GitLab Docs pages](https://docs.gitlab.com/ee/gitlab-basics/)
    2. [Hands on Guide](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/education-services/%20gitbasicshandson.html)
    3. [Lab environment](https://gitlab.com/gitlab-com/customer-success/professional-services-group/partner-training-template-projects/gitlab-with-git-basics)
        (Virtual Machines need to be built prior to class)
4. Slides
    1. Make sure you can access the slides with presenter notes

## Instructor Tips and Links by Module Number

### Module 1- GitLab Overview

1. Hands-on Environment: Instruct learners to sign into your hands-on demo/lab environment  prior to the starting these sections of the module.
2. GitLab Maturity page: you may want to demo from this page to get the latest updates to the maturity model- the deck only has a screenshot.
    1. <https://about.gitlab.com/direction/maturity/>
3. GitLab.org: (Dogfooding slide)
    1. <https://gitlab.com/gitlab-org/gitlab>

### Module 3- Git Basics

1. Git Cheat Sheet: <https://about.gitlab.com/images/press/git-cheat-sheet.pdf>

### Module 4: Code Creation and Review

1. Be prepared to demo snippets, have some code ready(like a hello world script) to input
2. Be prepared to create a simple wiki
3. Be prepared to demo a merge request (from the Hands-on Guide)

### Module 5: GitLab CI/CD

1. Be prepared to demo creating a .gitlab-ci.yml file. This demo will show learners how to complete their lab section for this module.

### Module 7: Secure

1. Complete the SAST demo using the instructions in the notes section/lab guide
2. At the end of the session, please share out the linkfor the [GitLab Training Survey](https://www.surveymonkey.com/r/proservtraining)

## Cleaning up your Local Comp and Hands on VMs After Class

Afer each class you will want to clean up your systems both locally and in your VMs so you do not end up with duplicates that intefere with future classes.

1. Remove the Training directory from your local system: (rm -rf Training)
2. Navigate to the training users group and remove the projects you created in labs
3. If you followed the lab guide; the projects will be:
4. Top Level Project Repo
5. CI Test
6. Second Project
7. AutoDevOps-test
8. Navigate to each project -> Settings -General -> Advanced -> Delete Project -> copy and paste the entire project name -> click Delete Project -> confirm deletion.
