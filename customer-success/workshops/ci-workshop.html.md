---
layout: handbook-page-toc
title: "CI Workshop"
Description: "Guidance for TAMs on leading continuous integration deep-dive workshops"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

- [CI Workshop Overview](#ci-workshop-overview)
- [Workshop Materials](#workshop-materials)
- [Discovery Questions](#discovery-questions)


## CI Workshop Overview

This workshop is intended to provide enablement for new or existing customers such that a TAM or SA could:

* Customize the available [Workshop Materials](#workshop-materials) to suit the customer's level of experience and areas of interest
* Pitch to a customer using our [Collaboration Project Issue Template](#collaboration-project-issue-template)
* Create a rich workshop environment complete with customer registration to facilitate follow-up contact with interested parties (potentially broadening or deepening the relationship)
* Ask appropriate [discovery questions](/handbook/marketing/strategic-marketing/usecase-gtm/ci/#discovery-questions)
* Drive followup actions

This workshop is *not* intended to provide a "hands-on-keyboard" demo experience.

*Typical time*: 60-120 minutes is a good guideline. The Advanced CI Workshop with pre-recorded video includes approximately 80 minutes of pre-recorded video plus approximately 5-15 minutes of "`rules:` examples". Don't forget to allot time for questions.

## How to Get Started

1. [Create a signup page via Zoom](https://support.zoom.us/hc/en-us/articles/211579443-Setting-up-registration-for-a-meeting) for the workshop for your customer to share internally. The benefit of a signup page is that:
    1. You can understand in advance the number of expected attendees, and prepare accordingly (ie. by engaging volunteer resources to handle async Q&A).
    1. You will know who is coming and can tailor content to specific levels/titles of attendees (Don't forget to add a `title` question to your signup page!).
    1. You will have a list of attendees to follow up with.  This part is incredibly significant as this workshop becomes a means to engage with dev leads and end users, that we often do not have otherwise. 
1. Create an Issue in the customer's Collaboration Project using the [CI Sell Sheet issue template](https://gitlab.com/gitlab-com/customer-success/tam/-/blob/master/.gitlab/issue_templates/CICDv2WorshopTopics.md) and ask your customer to select the topics they'd most like to address. 
1. Select the sections within the [GitLab CI Conversion Workshop Enablement V2](https://docs.google.com/presentation/d/1K1t1O-8JMViiX6zKn0S2OMSjw1XvTcII5UQdNP0ItVs/edit#slide=id.g97c25944f3_1_0) deck that best fits what your customer wants.
   * **Note:** Please cut&paste the slides you need into a new deck instead of using the source deck for your presentation.
1. Time your session based on the number of topics; 1-2 topics plus Q&A can likely be covered in an hour, 3-4 topics plus Q&A might require 90-120 mins. 
1. Find a partner to present with... another TAM, the SA for the customer or one of the creators of this workshop. It's always better to have someone to take notes or bounce questions off of.

## Workshop Materials

* [GitLab CI Conversion Workshop Enablement V2](https://docs.google.com/presentation/d/1K1t1O-8JMViiX6zKn0S2OMSjw1XvTcII5UQdNP0ItVs/edit#slide=id.g97c25944f3_1_0)

The above deck contains all content necessary to support any of the à la carte options described in the [Collaboration Project Issue Template](#collaboration-project-issue-template).

* [Advanced CI Configuration Slides with pre-recorded video](https://docs.google.com/presentation/d/1GI-QdzYJY3ccVtELZr-5uLBcsaGbP2Ioliw5XMZJc9Q/edit#slide=id.g893eb10b30_0_0)
* [Advanced CI Configuration Slides without video](https://docs.google.com/presentation/d/1lEF-8XBBn5kKdK5h9HNvQPvrQB8n1Jw-PYDIxO4ngT0/edit)

These two decks are a more focused "Advanced" level presentation, one accompanied by pre-recorded content, and the latter with reference copies of all slides addressed in the video content.

Please use [this issue](https://gitlab.com/gitlab-com/customer-success/tam/-/issues/372) for feedback on any of the above, as well as learnings from this workshop process so that we can continue to iterate.

## Collaboration Project Issue Template

Reference: [CI Sell Sheet issue template](https://gitlab.com/gitlab-com/customer-success/tam/-/blob/master/.gitlab/issue_templates/CICDv2WorshopTopics.md)

### Purpose
When considering a path for a CICD discussion with your customers, you may use the below as a template to create an issue in your customer's collaboration project. This can help your customers find the most suitable content within their available window.

### Prerequisites
(If possible, get these in advance from the customer)

- Painpoints
- Tool Stack

### Topics to Include in Each Discussion
- GitLab ROI - 5m
- Q&A - allow up to 10-15m if you want to do live, though recommended is over chat during the session to keep the session more dynamic.

### Tips and Tricks for Delivering
- Bring a friend! Invite another TAM or SA.
- Don’t be afraid to take follow-up questions to async
- Survey post workshop (could offer swag)

### Copy and Paste the Topics Below from Basic, Intermediate and Advanced Topics

#### Basic Level Topics
- GitLab CI/CD Basics (“Introductory Content”) - 30-40m
  - GitLab Architecture
  - GitLab yml file
  - GitLab Runner
- CI Conversions (“Migration Focused Content”)
  - Jenkins - link to our docs
  - CircleCI - link to our docs
  * Major Differences

#### Intermediate Topics
- Using Cache and Artifacts
- Using the Package & Container Registry
- Using Pipeline variables and secrets
- Controlling when jobs are in the pipeline with rules:
- Scheduling Pipelines
- Debugging pipelines
- GitLab Pages
- AutoDevOps Basics

#### Advanced Topics
- Pipeline Architecture
  - Dynamic Child Pipelines
  - Directed Acyclic Graph pipelines
  - Multi-project pipelines
- Merge Trains
  - Pipelines for merged results
- Advanced AutoDevOps
  - Inheriting & Customizing AutoDevOps Templates
  - Using environment variables to customize behavior
- GitLab Security Testing & Code Quality
  - SAST
  - DAST
  - Secrets Detection
  - Code Quality
  - Dependency Scanning
  - Container Scanning
  - License Compliance
  - Browser Performance Testing

#### Tips & Tricks (works great as a filler for the end of the presentation) - 5-10m

## Discovery Questions

It's highly recommended to review Strategic Marketing's list of usecase-centric [discovery questions](/handbook/marketing/strategic-marketing/usecase-gtm/ci/#discovery-questions) ahead of the session.


