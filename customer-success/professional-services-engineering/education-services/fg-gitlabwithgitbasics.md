---
layout: handbook-page-toc
title: "Facilitator Guide for GitLab with Git Basics"
description: "This Facilitator Guide is intended to walk you through all important links, preparation items, and after class items for our GitLab with Git Basics course."
---
# GitLab with Git Basics Facilitator Guide for Instructors
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Important Links

1. [Master Presentation](https://docs.google.com/presentation/d/1Le0c7vijUOWvOANlQezty5G6oZD-gS8tfaB6eU0lkKg/edit#slide=id.g869c6da966_1_0)
    1. Go to File > Make a Copy > Entire Presentation to save a copy of your deck.
    2. Go to `File > Download > PDF Document` at the end of the course and send the PDF to the client
    3. Save  your copy in the applicable [client folder](https://drive.google.com/drive/u/0/folders/1ozPKiAlUzbKwpkscaYVTp9PVoi9hWm4U)
2. [Hands On Guide](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/education-services/%20gitbasicshandson.html)
3. [GitLab Template Projects for VMs](https://gitlab.com/gitlab-com/customer-success/professional-services-group/partner-training-template-projects/gitlab-with-git-basics)
4. [Remote Sessions Tips and Tricks](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/remote-training-tips/)
5. [Certification Instructions](https://drive.google.com/file/d/1GfqYHu2w78YdBFr_9vgXm9r66o7a6ZKj/view?usp=sharing)
6. [GitLab Certified Associate Instructions Wiki](https://gitlab.com/gitlab-com/customer-success/professional-services-group/education-services/-/wikis/GitLab-Certification-Instructions)(Internal GitLab only)


## Before Class Preparation

1. Hands-on walkthrough
   1. Practice each demo in the lab environment
   2. Test each hands-on activity in the lab environment
2. Websites to have up prior to class:
    1. [Related GitLab Docs pages](https://docs.gitlab.com/ee/gitlab-basics/)
    2. [Hands on Guide](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/education-services/%20gitbasicshandson.html)
    3. [Lab environment](https://gitlabdemo.com) 
    4. [Example Demo Projects](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-with-git-basics)
3. Slides
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
2. At the end of the session, please share out the linkfor the [GitLab Training Survey](https://forms.gle/sKcsKSqV1aeXkYyF7)

### Cleaning up your Local Comp and Demo System After Class

After each class you will want to clean up your systems so it does not interfere with your next class.

1. Remove the Training directory from your local system: (rm -rf Training)
2. Navigate to the training users group and remove the projects you created in labs
3. If you followed the lab guide; the projects will be:
    1. Top Level Project Repo
    1. CI Test
    1. Second Project
    1. autoDevOps-test
4. Navigate to each project -> Settings -General -> Advanced -> Delete Project -> copy and paste the entire project name -> click Delete Project -> confirm 
