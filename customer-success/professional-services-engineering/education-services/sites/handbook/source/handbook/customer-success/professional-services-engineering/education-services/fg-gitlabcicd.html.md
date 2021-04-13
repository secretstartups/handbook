---
layout: handbook-page-toc
title: "Facilitator Guide for GitLab CI/CD"
description: "This Facilitator Guide is intended to walk you through all important links, preparation items, and after class items for our GitLab CI/CD training course."
---
# GitLab CI/CD Facilitator Guide for Instructors
{:.no_toc}

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Important Links

1. [Hands On Guide](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandson.html)
2. [GitLab Template Projects for VMs](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training)
3. [Remote Sessions Tips and Tricks](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/remote-training-tips/)
4. [Course Introduction CBT](https://gitlabtrainingcontent.s3-us-west-2.amazonaws.com/GitLab+Course+Introduction-+GitLab+CICD+-+Storyline+output/story.html) (all attendees receive prior to training)
5. [Master Presentation](https://docs.google.com/presentation/d/1Eb7m7cGFrmMDfaHF3TRWLqhgSxZpYxl0RzA8DHWIcDU/edit?usp=sharing)-
  - Go to File > Make a Copy > Entire Presentation to save a copy of your deck.
  - PDF the presentation at the end of the course to send to the client
  - Save  your copy in the applicable [client folder](https://drive.google.com/drive/u/0/folders/1ozPKiAlUzbKwpkscaYVTp9PVoi9hWm4U)


## Things to do Ahead

1. Lab setup and preparation
   1. Set up the GitLab CI/CD hands on project with your organizations GitLab training lab environment (if not already done).
   2. Provision learners
2. Hands-on walkthrough
    1. Practice each demo in the lab environment
    2. Test each hands-on activity in the lab environment
3. Websites to have up prior to class
    1. [Related GitLab Docs pages](https://docs.gitlab.com/ee/gitlab-basics/)
    2. [Hands on Guide](https://about.gitlab.com/handbook/customer-success/professional-services-engineering/education-services/gitlabcicdhandson.html)
    3. Lab environment
    4. [Example demo projects](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training)
4. Slides
    1. Make sure you can access the slides with presenter notes

## Tips and Links by Module Number 

### Module 1- GitLab Overview
1. Demo Environment: You will want to instruct learners to sign into this environment prior to labs and demos.
   1. https://www.gitlabdemo.com/invite
1. GitLab Maturity page: you may want to demo from this page to get the latest updates to the maturity model- the deck only has a screenshot.
   1. <https://about.gitlab.com/direction/maturity/>
1. GitLab.org: (Dogfooding slide)
   1. <https://gitlab.com/gitlab-org/gitlab>
1. Adjust agenda times and zones to reflect the time zone for the class for both Day 1 and Day 2- the master presentation is in Pacific Standard Time

### Module 3: Anatomy of a Pipeline

1. Be prepared to demo a YAML build- a simple “hello world” project is fine
1. Ensure attendees have the Hands On Guide open for their lab exercises
1. For lab 2- they can use any template they choose, but BASH covers the most characteristics and examples for them.
1. Be prepared to demo a merge request (from our lab guide)

### [Battleship Challenge](https://gitlabtrainingcontent.s3-us-west-2.amazonaws.com/Battleship+CICD+Challenge+-+Storyline+output/story.html)

### Module 5: Variable Precedence and Scoping

1. Ensure learners have the link to the [Sample Project](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training)
1. [Snippets section](https://gitlab-core.us.gitlabdemo.cloud/training-sample-projects/ps-classes/gitlab-ci-cd-training/gitlab-cicd-hands-on-demo/-/snippets)

### [Super Mario Adventure Game](https://gitlabtrainingcontent.s3-us-west-2.amazonaws.com/Super+Mario+Adventure+-+Storyline+output/story.html)

### Session End

At the end of the session, remember to share out the link for the [survey](https://forms.gle/sKcsKSqV1aeXkYyF7)- they will receive a follow up email as well with the survey and certification instructions, but this helps get you immediate results and better input. At end of session, remember to put post course session survey link in chat.

## Cleaning up your Local Comp and Demo system after class

After each class you will want to clean up your systems so it does not interfere with your next class.

1. Remove the Training directory from your local system:  (rm -rf Training)
1. Navigate to the training users group and remove the projects you created in labs
1. If you followed the lab guide; the projects will be:
- Runner Demo
- CICD Hands On
