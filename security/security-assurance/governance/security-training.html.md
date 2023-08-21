---
layout: handbook-page-toc
title: "Security Training"
description: "All about Security Training, including where to find it and how to create it."
---

<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview
This page is for all information regarding GitLab security trainings. Security training can take the form of training for specific groups, security awareness, and also training developed by the Security Department for the added security benefits to GitLab team members, GitLab customers, and the larger security community.

## Security Assurance

The Security Assurance sub department handles security training needs that involve [Field Security](/handbook/security/security-assurance/field-security/), [Security Governance](/handbook/security/security-assurance/governance/), [Security Compliance](/handbook/security/security-assurance/security-compliance/index.html) and [Security Risk](/handbook/security/security-assurance/security-risk/).

For more information on Security Assurance, visit the [Security Assurance](/handbook/security/security-assurance/index.html) page.

## Security Awareness Training

GitLab team members are probably most familiar with [security awareness training](/handbook/security/security-assurance/governance/sec-awareness-training.html) which is a handbook first GitLab-customized training + annual policy reviews provided via [ProofPoint](https://gitlab.ws01-securityeducation.com/). GitLab requires all new hires to complete [New Hire security orientation training](/handbook/security/security-assurance/governance/sec-awareness-training.html#when-will-security-awareness-training-occur) as part of the onboarding process and annual training there after.

GitLab security awareness training has been developed by [GitLab Security](/handbook/security/)'s [Governance Program](/handbook/security/security-assurance/governance/). The goal of the training is to:

1. Make all GitLab team-members aware of the GitLab Security team, and familiarize them with our efforts, team structure, and people.
1. Make all GitLab team-members aware of the importance of their role in securing GitLab on a daily basis, and to empower them to make the right decisions with security best-practices.
1. Familiarize all new GitLab team-members with security-related situations that they might encounter during their tenure with the company.
1. Help all GitLab team-members internalize and reinforce the idea that reaching out to Security is an encouraging practice.

* Special topics covered:
  * [Suspected phishing](/handbook/security/security-assurance/governance/phishing.html#how-to-identify-a-basic-phishing-attack)
  * [Acceptable Use](/handbook/people-group/acceptable-use-policy/)
  * [Device Lost or Stolen?!](https://about.gitlab.com/handbook/security/#panic-email)
    * Slack: the `/security` Slack command
    * Email (Emergencies-ONLY): panic@gitlab.com
  * [Data Classification](/handbook/security/data-classification-standard.html)
  * [No Red Data on Unapproved Locations](/handbook/people-group/acceptable-use-policy/#security-and-proprietary-information)

#### Training Feedback
You are strongly encouraged to engage the team behind the training and provide feedback, or ask any questions related to the content of the training. You can do that through:
1. A quarterly-reviewed GitLab [feedback issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-awareness-training/security-awareness-training-program/-/issues/13) for New Hire training.
1. Annual security awareness training [feedback issue](https://gitlab.com/gitlab-com/gl-security/security-assurance/governance/security-awareness-training/security-awareness-training-program/-/issues/16).
1. Sending an email to security-training@gitlab.com.

## Secure Coding Training

As a [DevOps](https://about.gitlab.com/topics/devops/) company, it makes sense that we need to focus on producing secure code, and therefore training of our developers is a high priority item. There is an entire [handbook page dedicated to Secure Coding training](/handbook/security/secure-coding-training.html) with numerous references to both required and recommended training.

## Additional Security Training

There are additional training topics that do not fit into the Security Assurance and Secure Coding training areas. These are training opportunities that fall into these general categories:

* Training for Security Department team members for specific sub departments associated with high risk roles.
* Security training for other role-based training associated with high risk roles.
* Detailed explanations of certain security-related subjects to help GitLab team members (as well as customers and the security community in general) understand and reach clarity on common security topics.

These training resources are typically grouped together by access level and intended audience. As we are handbook first, we will try to make all training available for all, although there are times we will need to convey information that needs to be restricted for internal-only access. For example, a training course about "How to create a Security Training Course for GitLab" will be geared toward the Security Department, but as it will contain no internally sensitive material, it can be fully documented in the handbook and made public - benefitting GitLab as well as the security community at large. As we will develop these courses, we will list them here.

## Developing Security Training Courses for GitLab

While developing security training courses for GitLab may seem somewhat daunting, it is not. And it is not restricted to the Security Department! If you are in another department and have an idea for training that involves security, you can still come up with training courses. The biggest question you might have is "how do I do this?" We've outlined some steps for you so that you can create training courses with a security aspect to them.

### Basics

There are a few basics to keep in mind. They are as follows:

* Content for training can consist of numerous items, including handbook entries (obviously), videos on GitLab Unfiltered, blog posts, runbooks, projects, and so on. By creating content in any of those forms, you can create the building blocks for a potential training course.
* Gathering those individual content building blocks and arranging them together creates a training course.
* Whenever possible, try to make training courses handbook first.
* Dealing with GitLab Learn via LevelUp. By taking the [LevelUp Scavenger Hunt](https://levelup.gitlab.com/learn/course/level-up-scavenger-hunt/main/welcome-to-level-up?client=internal-team-members) course you will learn a lot about the entire process and creating content.

### Specific to Security

There are a few fundamental differences when creating training material vs non-security training material.

* Review the [GitLab Data Classification Standard](https://about.gitlab.com/handbook/security/data-classification-standard.html) so you are aware of what is considered public vs non-public data. [GREEN](https://about.gitlab.com/handbook/security/data-classification-standard.html#green) data can be publicly shareable, any training content that is not GREEN data should not be included in publicly-accessible training material.
* New content created from scratch needs to be reviewed by the Security Department to determine what its classification is.
* Non-public training content would not go into the handbook, but could be included in a private project or runbook.

Here are a few examples to help illustrate the point:
* Training content that talks about GitLab's [Red Team](https://about.gitlab.com/handbook/security/threat-management/red-team/) and their approach to how they perform their duties is fine. Details on how a Red Team assessment was performed including examples of data recovered or specific techniques against specific GitLab assets should not be (unless perhaps it has been reviewed and "sanitized" by the Security Department).
* Security-related content that involves business partnerships, specific customers, certain company initiatives, and other related non-public information cannot be included in publicly accessible training content. A good example would be if GitLab were working with a government agency - the agency itself may have extremely strict rules about what can be made public, and something that is considered public by GitLab's own standards may not be a part of that agency's standards.
* You _can_ have public content that points to internal private content, similar to a handbook entry that contains a link to an internal issue or restricted document. However, you _cannot_ quote from that private content within your public content.

Any questions about classifications, public vs non-public data, and what can be included in public training content, ask. You can ask us in the `#security` Slack channel.

### Our Vision

The Security Department vision is to be the leading example in security, innovation, and transparency. Our training should be as open as possible, and if it is viewable by the public it allows us to not only help GitLab's security, we're helping others by example. Conceivably it could also be a recruiting tool to show future GitLab team members why we're such a great place to work, allowing us to continue growing as a department and a company.
