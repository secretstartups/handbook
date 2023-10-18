---
layout: handbook-page-toc
title: Mobile DevOps Apps Single-Engineer Group
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Mobile DevOps Showcase and Update Videos

| Date              | Topic | Video |
|-------------------|-------|-------|
| June 1, 2023 | macOS Runner Images | [https://youtu.be/zVQdUh1WfD8](https://youtu.be/zVQdUh1WfD8) |
| May 17, 2023 | macOS M1 Runners & Fastlane Improvements | [https://youtu.be/IwJHJNKqVZc](https://youtu.be/IwJHJNKqVZc) |
| April 27, 2023 | Mobile DevOps Showcase, Apr. 2023 | [https://youtu.be/iWdTjgZB9yA](https://youtu.be/iWdTjgZB9yA) |
| April 10, 2023 | Google Play Integration Demo | [https://youtu.be/Fxaj3hna4uk](https://youtu.be/Fxaj3hna4uk) |
| March 31, 2023 | Mobile DevOps Showcase, Mar. 2023 | [https://youtu.be/u8yC8W2k85U](https://youtu.be/u8yC8W2k85U) |
| March 17, 2023 | Apple App Store Integration Demo | [https://youtu.be/CwzAWVgJeK8](https://youtu.be/CwzAWVgJeK8) |
| February 24, 2023 | Mobile DevOps Showcase, Feb. 2023 | [https://youtu.be/Ar8IsBgP1as](https://youtu.be/Ar8IsBgP1as) |
| February 17, 2023 | Demo Projects & Mobile DevOps Guides | [https://youtu.be/0VPFfLQTBrY](https://youtu.be/0VPFfLQTBrY) |
| January 31, 2023 | Mobile DevOps Showcase, Jan. 2023 | [https://youtu.be/Orpkynh5nok](https://youtu.be/Orpkynh5nok) |
| January 12, 2023 | Mobile DevOps JTBD| [https://youtu.be/mbtcQlKZCeo](https://youtu.be/mbtcQlKZCeo) |
| December 12, 2022 | Project-level Secure Files for Self-Managed, Apple App Store Integration, SaaS Runners for Self-Managed GitLab | [https://youtu.be/ksdFcUN6NJA](https://youtu.be/ksdFcUN6NJA) |
| November 23, 2022 | Apple App Store Integration | [https://youtu.be/ksdFcUN6NJA](https://youtu.be/ksdFcUN6NJA) | 

## Mission

Our mission is to improve software delivery performance for mobile developers and teams by enabling [DevOps capabilities](https://cloud.google.com/architecture/devops/technical) for mobile software delivery.

## Vision

The vision for GitLab Mobile DevOps is to be the easiest way to `build`, `test`, `sign`, and `release` a mobile application. We do this by creating automation and tooling to enable a CI/CD pipeline with only a few clicks. While also helping teams to avoid confusing and brittle custom CI scripts or relying on a single engineer’s laptop to do all of the releases.

## Approach

### Building Blocks

As we work towards our fully-automated vision, we will start by creating building blocks that can be used independently or combined with other tools to create powerful automations. As these building blocks mature, they will become the basis for the automated delivery pipeline features.


| Feature | Status | Usage Change (August 2023) |
|---------|--------|-------|
| [macOS Build Environments](https://docs.gitlab.com/ee/ci/runners/saas/macos_saas_runner.html) | Public Beta | [+2.6%](https://docs.google.com/spreadsheets/d/1mvjis8Bv_BSmcj7JVlimEYNA2EpCc9mG6vkX-6GmA1U/edit#gid=0) (internal) |
| [Project-level Secure Files](https://docs.gitlab.com/ee/ci/secure_files/) | Available | [+19%](https://docs.google.com/spreadsheets/d/1mvjis8Bv_BSmcj7JVlimEYNA2EpCc9mG6vkX-6GmA1U/edit#gid=0) (internal) | 
| [Extract and visualize code signing file metadata](https://gitlab.com/gitlab-org/gitlab/-/issues/374949) | Available | [+8.3](https://docs.google.com/spreadsheets/d/1mvjis8Bv_BSmcj7JVlimEYNA2EpCc9mG6vkX-6GmA1U/edit#gid=0) (internal)|
| [download-secure-files](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/download-secure-files) | Available | [+9.5%](https://docs.google.com/spreadsheets/d/1mvjis8Bv_BSmcj7JVlimEYNA2EpCc9mG6vkX-6GmA1U/edit#gid=0) (internal)  | 
| [Fastlane Match storage mode](https://github.com/fastlane/fastlane/pull/20386) | Available | [+17.3](https://docs.google.com/spreadsheets/d/1mvjis8Bv_BSmcj7JVlimEYNA2EpCc9mG6vkX-6GmA1U/edit#gid=0) (internal) | 
| [Apple App Store Integration](https://docs.gitlab.com/ee/user/project/integrations/apple_app_store.html) | Available | [+29%](https://docs.google.com/spreadsheets/d/1mvjis8Bv_BSmcj7JVlimEYNA2EpCc9mG6vkX-6GmA1U/edit#gid=0) (internal) |
| [Google Play Integration](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/111621) | Available | [+20%](https://docs.google.com/spreadsheets/d/1mvjis8Bv_BSmcj7JVlimEYNA2EpCc9mG6vkX-6GmA1U/edit#gid=0) (internal) |
| [Mobile DevOps CI/CD Components](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/113) | Backlog | - |
| [Firebase App Distribution Integration](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/46) | Backlog | - |
| [Code Coverage for Mobile](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/22) | Backlog | - |
| [Review Apps for Mobile](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/15) | Available | - |
| [Mobile SAST](https://docs.gitlab.com/ee/user/application_security/sast/index.html#experimental-features) | Available | - |

### Fully Automated

As the necessary building blocks become available, we will extend those tools with a simple UI to make it easy to enable an automated delivery pipeline for an application quickly.   

| Feature | Status | Usage |
|---------|--------|-------|
| [Auto iOS](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/auto) | Backlog | - |
| Auto Android | Backlog | - |
| [Mobile DevOps Project Settings](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/84) | Backlog | - |

### Fastlane

[Fastlane](http://fastlane.tools/) is the most popular open-source tool for mobile application development and release automation. We will utilize Fastlane in our automations and tools, and contribute to the open source project whenever possible. Please see our [recent contributions](https://github.com/fastlane/fastlane/pulls?q=is%3Apr+author%3Adarbyfrey) for more details.

## Competitive Landscape

There are several competitors in this space providing visual pipeline builders on top of their own CI/CD systems (Bitrise, Appcircle, and Codemagic) and the more prominent players, including Visual Studio App Center, Firebase, and AWS Mobile Services.

## Jobs to be Done

### Goals

Utilize JTBD and job statements to:

* Understand our users' underlying motivations
* Validate identified problem areas within the Mobile DevOps experience
* Create a common language across teams for better collaboration when working on improving the experience for GitLab Mobile DevOps
* Create a transparent view for our stakeholders into the current and future state of the product

### JTBD

#### Choose a build environment

Once I have an Android or iOS application created, I want to be able to easily choose a build environment for my CI jobs so that I can be confident that my builds will behave as expected.

| Job statements | Maturity | Research | Roadmap |
|----------------|----------|----------|---------|
| When setting up a CI build for my Android application, I want an easy way to configure the build environment, including the SDK version and dependencies, so that I can quickly have a successful CI build running. | <img src="https://img.shields.io/badge/SCORE----yellow"> | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/100) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/103) |
| When setting up a CI build for my iOS application, I want an easy way to configure the build environment, including the Xcode version and dependencies, so that I can quickly have a successful CI build running. | <img src="https://img.shields.io/badge/SCORE----yellow"> | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/100) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/103) |

#### Manage code signing

Once I have an Android or iOS application created, I want to securely manage and automate the code signing process so that I can focus on building my application.

| Job statements | Maturity | Research | Roadmap |
|----------------|----------|----------|---------|
| When setting up or managing code signing for my Android application, I want a secure, easy-to-use tool for adding and interacting with my keystore files so that I can quickly have a reliable code signing CI pipeline. | <img src="https://img.shields.io/badge/SCORE----yellow">  | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/101) | [Issue](https://gitlab.com/groups/gitlab-org/-/epics/9541) | 
| When setting up or managing code signing for my iOS application, I want a secure, easy-to-use tool for adding and interacting with my signing certificates and provisioning profiles files so that I can quickly have a reliable code signing CI pipeline. | <img src="https://img.shields.io/badge/SCORE----yellow">  | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/101) | [Issue](https://gitlab.com/groups/gitlab-org/-/epics/9541) | 

#### Automate releasing

Once my Android or iOS application is ready to be released, I want to be able to set up an automated release process so that I can confidently release my application anytime.

| Job statements | Maturity | Research | Roadmap |
|----------------|----------|----------|---------|
| When setting up a release pipeline for my Android application, I want to be able to easily configure my project to deploy to the Google Play Store so that I can have a reliable automated release pipeline.  | <img src="https://img.shields.io/badge/SCORE----yellow">  | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/102) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/104) |
| When setting up a release pipeline for my iOS application, I want to be able to easily configure my project to deploy to Test Flight and the Apple App Store so that I can have a reliable automated release pipeline.  | <img src="https://img.shields.io/badge/SCORE----yellow">  | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/102) | [Issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/104) |

## Product Development Group Affinity

The Mobile DevOps SEG is primarily aligned with the [Verify](https://about.gitlab.com/handbook/product/categories/#verify-stage) stage, and more specifically the [Pipeline Authoring](https://about.gitlab.com/handbook/product/categories/#pipeline-authoring-group) and [Runner SaaS](https://about.gitlab.com/handbook/product/categories/#runner-saas-group). There is also some alignment with the [Integrations](https://about.gitlab.com/handbook/product/categories/#integrations-group) group.

## Who We Are

The Mobile DevOps SEG is a [Single-Engineer Group](https://about.gitlab.com/company/team/structure/#single-engineer-groups) within our [Incubation Engineering Department](https://about.gitlab.com/handbook/engineering/development/incubation/).

## How We Work

#### Video Updates

We will share video demos as we explore the opportunities and challenges in this space and deliver new features. These demos will be recorded and shared in the [Mobile DevOps Demos issue](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/7).

#### Status Updates

Weekly status updates are also be posted in the [Mobile DevOps Status Updates](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues/107) issue.

## How To Contribute

#### Feedback

Feedback is essential to this project, so we encourage you to:

* [Request a feature](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/feedback/-/issues/new?issuable_template=feature_request).
* [Report a bug](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/feedback/-/issues/new?issuable_template=report_bug).
* [Share feedback](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/feedback/-/issues/new?issuable_template=general_feedback).

#### GitLab Issues

Please feel free to create issues or participate in discussions in our [issue board](https://gitlab.com/gitlab-org/incubation-engineering/mobile-devops/readme/-/issues).

#### Slack

We can also be found in Slack at `#mobile-devops` (internal)
