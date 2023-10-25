---
layout: handbook-page-toc
title: "The Infrastructure Platforms Section"
---


## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Mission

The Infrastructure Platforms section enables GitLab Engineering to build and deliver **safe**, **scalable** and **efficient** features for multi-tenant and single-tenant GitLab SaaS platforms (GitLab.com and GitLab Dedicated).

## Vision

To deliver on the mission, we are in the process of formalising the building blocks we need to work on.

<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/Vui6_iULzPw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

This vision has been partially discussed by the team members of the Infrastructure Platforms section while setting the [direction for FY23](https://gitlab.com/gitlab-com/gl-infra/mstaff/-/issues/101).

## FY24 Direction

In FY24, teams in the Platforms Section of the Infrastructure Department will continue to focus on expanding their role as an enabler across the Engineering function. With the growth of this section, it is becoming imperative that the Platforms section teams collaborate more closely, and use the influence they have built individually to take our engineering processes to the next stage.

Initiatives driven within the Platforms section, often spanning multiple quarters, are represented on the [SaaS Platforms section epic](https://gitlab.com/groups/gitlab-com/-/epics/2115).

In FY24, the focus is on:

### 1. Achieve 50% growth year-on-year in engagement surveys results compared to FY23

With the team growth in FY23 and the approved headcount for FY24, the general focus will be on hiring and setting teams up for success. However, we must ensure that the existing team members are happy and that action is taken based on their feedback. We will focus on how to:

* Make hiring processes more efficient. (Platform, link to be added)
* Support career goals of individual team members with the section. (Platform, link to be added)
* Introduce an effective way to regularly gather feedback from team members, outside of company-level engagement surveys. Use the feedback to ensure continual team improvements. 

### 2. Prepare self-servicing for stage group teams to enable end-to-end development

The Platforms Section is well positioned to continue working on process, tooling, and systems changes which allow us to continue supporting the company growth. With a number of highly ambitious, and highly impactful projects we are looking to:

* Create a roadmap for new frameworks that will enable individual stage groups to manage their features' lifecycle and ensure that they are reliable and performant. (Delivery and Scalability teams, link to be added)
* Expand Delivery metrics to provide stage groups with visibility into the frequency, and reliability of deploying and releasing changes to GitLab users (Delivery, link to be added) 
* Ensure the preciseness of Error Budgets as a measure of a business desire for GitLab.com reliability and performance. ([Create Performance Indicator for Error Budgets](https://gitlab.com/gitlab-com/gl-infra/scalability/-/issues/1997))

### 3. Increase use and accuracy of Platform team metrics, and feed them into enablement processes

Individual teams in the Platforms Section have a number of metrics, and measures they use to guide their work. Furthermore, we are involved in a number of processes that span the whole Engineering function. We need to get better at:

* Having a common understanding of how different team metrics impact each other. (Platform, link to be added)
* Streamlining and increasing involvement in processes that better our application reliability and performance (e.g. InfraDev, capacity planning). (Scalability, link to be added)
* Understanding every component of MTTP on GitLab.com, measuring turnaround time for a self-managed releases, and similar. (Delivery, link to be added)

### 4. Increase GitLab's resilience to planned and unplanned growth, while keeping the cost of running the platform in check

With the work we've been doing in previous years, we are all in alignment that as a group we are focused on scaling horizontally and vertically, whether we are talking about GitLab (the application), GitLab.com (the infrastructure), or processes that support serving our users. In FY23, we added one more dimension, the cost. In FY24 we will continue to focus on:

* Ensuring that non-horizontally scalable services (such as Redis, Sidekiq) can continue supporting growth. (Delivery and Scalability teams, link to be added)
* Increasing Kubernetes cluster utilization and resilience. (Delivery and Scalability teams, link to be added)
* Reducing the time to recover from unexpected usage, and increase application resilience to all types of growth on GitLab.com. (Delivery and Scalability, link to be added)

## How we work

### Communication

We collaborate on the section level items in the [#s_platforms](https://gitlab.slack.com/archives/C02D1HQRTKQ) Slack channel. This channel is used to share important information with the wider team, but also serves to align all teams in Platfroms with the common topic.

For communication between managers, we have [#infra-platforms-reports](https://gitlab.slack.com/archives/C010QV6RRB3) channel. Everyone interested is welcome to join this channel if they find the topics interesting. We also have a confidential managers channel that is used to discuss staffing issues affecting all teams that require additional coordination.

Once per week, we hold a `Platforms leads call` to align on action items related to career development, general direction or answer any ongoing questions that have not been addressed async. The call is cancelled when there are no topics added on the morning of the call.

In addition to the `Platforms leads call`, we have some recurring events and reminders that can be viewed in the [SaaS Platforms Leadership Calendar](https://calendar.google.com/calendar/u/0?cid=Y184YTgxZjdhY2M3NmQ3MmI4ZTQxODlhNjFmN2EyN[…]MzIzNmY1OTJlN2RkNTJlODNiQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20). Please add this to your Calendars to stay up-to-date with the various events.

We hold a monthly **Infrastructure Office Hours** for any questions and feedback you may have for the Platforms team. More details can be found on the [Infrastructure Home](../#infrastructureofficehours). 

The Director of Product and Director of Infrastructure for Platforms conduct weekly progress reviews. During `Platforms Grand Review`, they review [progress across all groups](https://gitlab.com/groups/gitlab-com/-/epics/2115) with the goals of being informed of progress made, learning about existing blockers, and supporting the team. The review is private streamed to the GitLab Unfiltered channel because the review covers confidential issues. All recordings are made available in the [Platforms Grand Review YouTube Playlist](https://www.youtube.com/playlist?list=PL05JrBw4t0KqDXSHdlUvPWHOj_Hw8JdQ1).

### Projects

We endeavor to keep issues and epics up to date with the latest status of our work. Every Wednesday, the DRI for a project is expected to update the status block in the epic description to: 
1. Indicate any project blockers.
2. Briefly highlight progress since the last update.
3. Indicate planned next steps, or mitigations required to progress.
This enables other engineers and other managers to have good information about projects in an asynchronous fashion. 

Completed epics should remain "Open" with the ~"workflow-infra::In Progress" label. Update the status block in the epic description to summarize the project and share the completed status. Completed epics will be reviewed, celebrated, and updated to closed in the next `Platforms Grand Review`.  

### Tools

The Platforms section builds and maintains various tools to help deploy, operate and monitor our SaaS platforms. You can view a list of these tools in the [Platforms Tools Index](https://about.gitlab.com/handbook/engineering/infrastructure/platforms/tools/).

### OKR
 
OKRs (or other items outside of projects) that require status tracking should be updated each Wednesday. When updating the progress percentage of any given KR, it is not necessary to provide extensive notes. One sentence with a link to a larger update is sufficient in most cases. It is also acceptable to do a check-in without providing a note, but be advised that several updates in a row with no percentage change, and no additional details will need to be discussed with your manager.

## Platforms Learning Path

All team members are encouraged to schedule time for personal development. The following links may help you get started with Platforms-relevant learning. Please add your own contributions to this list to help others with their personal development. 

### Learn about Platforms, and the Platforms Groups

| Group | Topic |
|-------|-------|
| SaaS Platforms | [Product direction](https://about.gitlab.com/direction/saas-platforms/) |
| [Delivery Group](https://about.gitlab.com/handbook/engineering/infrastructure/team/delivery) | [Mission](https://about.gitlab.com/handbook/engineering/infrastructure/team/delivery/#mission), [Strategy](https://about.gitlab.com/handbook/engineering/infrastructure/team/delivery/#strategy), [Team history](https://about.gitlab.com/handbook/engineering/infrastructure/team/delivery/#history) |
| [Scalability Group](https://about.gitlab.com/handbook/engineering/infrastructure/team/scalability/) | [Mission](https://about.gitlab.com/handbook/engineering/infrastructure/team/scalability/#mission), [Strategy](https://about.gitlab.com/handbook/engineering/infrastructure/team/scalability/#strategy), [Team history](https://about.gitlab.com/handbook/engineering/infrastructure/team/scalability/#history) |
| [Dedicated Group](https://about.gitlab.com/handbook/engineering/infrastructure/team/gitlab-dedicated/) | [Mission](https://about.gitlab.com/handbook/engineering/infrastructure/team/gitlab-dedicated/#mission) |

### Learn about tools and technologies used within Platforms

1. [Jsonnet tutorial](https://jsonnet.org/learning/tutorial.html)
2. [GitLab.com running on the Kubernetes platform](https://about.gitlab.com/handbook/engineering/infrastructure/production/kubernetes/gitlab-com/)

