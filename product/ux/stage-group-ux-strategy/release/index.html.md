---
layout: handbook-page-toc
title: "Release UX Team"
description: "The Release UX team's goal is to design simple, clean ways to make GitLab the tool of choice for deploying where, when, and how users want to."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

The [Release stage](/stages-devops-lifecycle/release/) includes all features that help you guarantee software delivery by automating the release and delivery of applications, shortening the delivery lifecycle, streamlining manual processes, and accelerating team velocity.

The Release UX team's goal is to enable these complex flows by providing the best experience in software delivery. Our design mission is bring to the forefront simple, clean ways to make GitLab the tool of choice for deploying where, when, and how users want to.

Our biggest partners are the stages under the Ops section ([Verify](/direction/ops/#verify), [Package](/direction/ops/#package), [Configure](/direction/configure/) and [Monitor](/direction/monitor/)), Dev section ([Manage:Optimize](/direction/dev/#manage-1)), and Infrastructure ([Delivery](/handbook/engineering/infrastructure/team/delivery/)).

### Release UX Team

- [Rayana Verissimo](https://gitlab.com/rayana) - Product Design Manager
- [Russell Dickenson](https://gitlab.com/rdickenson) - Senior Technical Writer
- [Will Leidheiser](https://gitlab.com/wleidheiser) - Senior UX Researcher
- [Emily Bauman](https://gitlab.com/users/emilybauman) - Product Designer

### Stable counterparts

The following members of other functional teams are our stable counterparts:

- [Nicole Williams](https://gitlab.com/nicolewilliams) - Engineering Manager
- [Chris Balane](https://gitlab.com/cbalane) - Senior Product Manager

### Current Focus

The best way to understand the strategy and vision behind the Release stage is to read the [Deployment Direction](/direction/deployment) handbook page.

As of Q4 FY22, we are focused on improving the deployment experience for our customers by enabling better tracking and coordination on deployments, including:

- [Making deployment & status information easier to read on environments page](https://gitlab.com/groups/gitlab-org/-/epics/6938)  
- [Sharing production environments across projects](https://gitlab.com/groups/gitlab-org/-/epics/4276)

You can see more of our ongoing UX work under the `~ready-for-design` and `~design` columns on the [Release Plan](https://gitlab.com/groups/gitlab-org/-/boards/1489550?label_name[]=devops%3A%3Arelease&label_name[]=group%3A%3Arelease&label_name[]=Next%20Up) board, as well as the ongoing [milestone planning issues](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues?scope=all&state=all&search=%22Planning+Issue%22).

### Shared UX

The user experience around releasing code from GitLab repositories spans many areas and pages of our product. In order to deliver a seamless user experience, our team covers the following areas:

- Environments
- Deployments
- Releases
- Feature Flags
- gitlab-ci.yml
- CI Pipelines

Other areas and pages may also include: 

- Project settings
- Merge Requests
- Infrastructure & Kubernetes
- Runners
- Audit log

More specifically, the Release group is responsible for a few categories of the GitLab product, that you can see [on this Handbook page](https://about.gitlab.com/handbook/product/categories/#release-group).

### Category UX Overview

The **Category UX Overview** is an introduction to the categories and features in the Release group, with examples for their interfaces and UX. You can watch the video below or read the content in [this issue](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues/101).

This is a living document that serves as a visual reference for how our UX works, but it is not a formal source of truth. It is regularly reviewed and updated, but some information on it might be outdated.

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/S8iFdfPQmbw" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

The content seen in the video can be found in [this issue](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues/101), where you can see links to each feature and the screenshots. There is also [a complete visual map](https://www.figma.com/file/m86hcciGMQJ4RzvVq6Wlnu/Release-Stage---Categories-UX-Overview?node-id=0%3A1) on Figma. 

### Our Users

We have different user types we consider in our experience design effort. Even when a user has the same title, their responsibilities may vary by organization size, department, org structure, and role. Here are some of the people we are serving:

- [Release Manager](/handbook/product/personas/#rachel-release-manager)
- [Software Developer](/handbook/product/personas/#sasha-software-developer)
- [Development Tech Lead](/handbook/product/personas/#delaney-development-team-lead)
- [DevOps Engineer](/handbook/product/personas/)
- [Product Manager](/handbook/product/personas/#parker-product-manager)
- [QA Engineer](https://about.gitlab.com/handbook/product/personas/#simone-software-engineer-in-test)

### UX strategy & research

We will commit to staying aligned on shared UX with the development groups as much as possible, being the conversation drivers with product managers and other counterparts.

The Release UX team is working together to uncover customers' core needs, what our users’ workflows look like, and defining how we can make tasks easier. Our strategy involves the following actions:

| Strategy | Cadence |
| -------- | ------- |
| Jobs to be Done framework | Quarterly reviewed |
| [UX Scorecards and recommendations](/handbook/product/ux/ux-scorecards/) | Ad hoc |
| [Opportunity canvas](/handbook/product/product-processes/#opportunity-canvas) | Ad hoc |
| Stakeholder interviews | Ad hoc |
| User and customer interviews | Ad hoc |

Visit [CI/CD UX](/handbook/product/ux/stage-group-ux-strategy/ci-cd/) page to read about the overall department strategy.

For all the recent & relevant research our group has been working on, check the links below:

- [Release UX - Research Studies Compilation - FY22 Q3-Q4](https://gitlab.com/gitlab-org/ci-cd/release-group/release/-/issues/92)
- [Research Summary – Shared environments & deployments](https://gitlab.com/gitlab-org/uxr_insights/-/issues/1254)
- [Dovetail](https://dovetailapp.com/projects)
- [UX Research repository](https://gitlab.com/gitlab-org/ux-research/-/issues?scope=all&state=all)

### Jobs to be Done

See all [Release stage](/handbook/engineering/development/ops/release/jtbd/) JTBDs.

### Team meetings

- **Release Group Weekly**: Once a week, meeting with engineering team to align ongoing development efforts
- **Release UX/PM Sync**: Once a week, meeting between designers and product manager to align current and future design work
- **Release UX/Front-end Sync**: Every two weeks, design and front-end engineers meet to discuss ongoing efforts and share feedback
- **CI/CD UX Meeting**: Every two weeks. Meeting to discuss our stages UX shared efforts, review designs, and iterate on our strategy.

### Follow our work

The [Release UX YouTube channel](https://www.youtube.com/playlist?list=PL05JrBw4t0KoyqCjN4f79w0dYZusHLx15) includes UX Scorecard walkthroughs, UX reviews, group feedback sessions, team meetings, and more.
