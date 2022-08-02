---
layout: handbook-page-toc
title: "The Infrastructure Platforms Section"
---


## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Mission

The Infrastructure Platforms section enables GitLab Engineering to build and deliver **safe**, **scalable** and **efficient** features.

## Vision

To deliver on the mission, we are in the process of formalising the building blocks we need to work on.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/Vui6_iULzPw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This vision has been partially discussed by the team members of the Infrastructure Platforms section while setting the [direction for FY23](https://gitlab.com/gitlab-com/gl-infra/mstaff/-/issues/101).

## FY23 Direction

In FY23, teams in the Platforms Section of the Infrastructure Department continue to focus on expanding their role as an enabler across the Engineering function. With the growth of this section, it is becoming imperative that the Platforms section teams collaborate more closely, and use the influence they have built individually to take our engineering processes to the next stage.

In FY23, the focus is on:

### 1. Achieve 50% growth year-on-year in engagement surveys results compared to FY22

With the approved headcount for FY23, the general focus will be on hiring. However, we must ensure that the existing team members are happy and that action is taken based on their feedback. We will focus on how to:

* Make hiring processes more efficient. (Platform, link to be added)
* Support career goals of individual team members with the section. (Platform, link to be added)
* Conduct regular pulse surveys to ensure team member engagement, outside of company level engagement surveys. (Platform, link to be added)

### 2. Prepare self-servicing for stage group teams to enable end-to-end development

The Platforms Section is well positioned to continue working on process, tooling, and systems changes which allow us to continue supporting the company growth. With a number of highly ambitious, and highly impactful projects we are looking to:

* Create a roadmap for a new framework that will enable individual stage groups to manage the lifecycle of their features, and ensure that they are reliable and performant. (Delivery and Scalability teams, link to be added)
* Eliminate manual steps from the deployment process. (Delivery, link to be added)
* Ensure the preciseness of Error Budgets as a measure of a business desire for GitLab.com reliability and performance. (Scalability, link to be added)

### 3. Increase use and accuracy of Platform team metrics, and feed them into enablement processes

Individual teams in the Platforms Section have a number of metrics, and measures they use to guide their work. Furthermore, we are involved in a number of processes that span the whole Engineering function. We need to get better at:

* Having a common understanding of how different team metrics impact each other. (Platform, link to be added)
* Streamlining and increasing involvement in processes that better our application reliability and performance (e.g. InfraDev, capacity planning). (Scalability, link to be added)
* Understanding every component of MTTP on GitLab.com, measuring turnaround time for a self-managed releases, and similar. (Delivery, link to be added)

### 4. Increase GitLab.com resilience to planned and unplanned growth, while keeping the cost of running the platform in check

With the work we've been doing in previous years, we are all in alignment that as a group we are focused on scaling horizontally and vertically, whether we are talking about GitLab (the application), GitLab.com (the infrastructure), or processes that support serving our users. In FY23, we need to be focused on one more dimension, the cost. The topics we will focus on are:

* Ensure that non-horizontally scalable services (such as Redis, Sidekiq) can continue supporting growth. (Delivery and Scalability teams, link to be added)
* Increase Kubernetes cluster utilization and resilience. (Delivery and Scalability teams, link to be added)
* Reduce the time to recover from unexpected usage, and increase application resilience to all types of growth on GitLab.com. (Delivery and Scalability, link to be added)

## How we work

### Communication

We collaborate on the section level items in the [#s_platforms](https://gitlab.slack.com/archives/C02D1HQRTKQ) Slack channel. This channel is used to share important information with the wider team, but also serves to align all teams in Platfroms with the common topic.

For communication between managers, we have [#infra-platforms-reports](https://gitlab.slack.com/archives/C010QV6RRB3) channel. Everyone interested is welcome to join this channel if they find the topics interesting. We also have a confidential managers channel that is used to discuss staffing issues affecting all teams that require additional coordination. This channel receives 1-3 messages every month.

Once per week, we hold a `Platforms leads call` to align on action items related to carreer development, general direction or answer any ongoing questions that have not been addressed async. The call is cancelled when there are no topics added on the morning of the call.

### Projects

We endevour to keep issues and epics up to date with the latest status of our work. Every Wednesday, the DRI for a project is expected to update the status block in the epic description. This enables other engineers and other managers to have good information about projects in an asynchronous fashion. 

### OKR
 
OKRs (or other items outside of projects) that require status tracking should be updated each Wednesday. When updating the progress percentage of any given KR, it is not necessary to provide extensive notes. One sentence with a link to a larger update is sufficient in most cases. It is also acceptable to do a check-in without providing a note, but be advised that several updates in a row with no percentage change, and no additional details will need to be discussed with your manager.
