---
layout: handbook-page-toc
title: Jobs to be Done (JTBD) Overview
description: >-
  JTBD is a framework for viewing products and solutions in terms of jobs
  customers want to achieve. It's about understanding the goals that people want
  to accomplish.
---

#### On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

A Job to be Done (JTBD) is a framework, or lens, for viewing products and solutions in terms of the jobs customers are trying to achieve. It's about understanding the goals that people want to accomplish. It lets us step back from our business and understand the objectives of the people we serve. It opens the door to innovation.

At GitLab, we have our own flavor of JTBD and use it throughout the design process, but most notably to:

- Define scope
- Validate direction
- Evaluate existing experiences
- Assess category maturity

JTBD come directly from research and customer conversations with those people who do the tasks/jobs we need to design for. [Problem validation](/handbook/product/ux/ux-research-training/problem-validation-and-methods/#what-is-problem-validation) is one of the most effective ways to confidently inform the writing of a JTBD.

To learn more about our JTBD philosophy, see the [JTBD deep dive](/handbook/product/ux/jobs-to-be-done/deep-dive/) and [How to create a Job Map](https://about.gitlab.com/handbook/product/ux/jobs-to-be-done/mapping-jobs-to-be-done/)

You can also watch the following video for a brief overview of why JTBD are so valuable in the product development process:
<figure class="video_container"><iframe src="https://www.youtube.com/embed/H6j1Xd4yufI"></iframe></figure>

### GitLab's Jobs to be Done

All GitLab Jobs to be Done can be found in the [jobs-to-be-done.yml file](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/jobs_to_be_done.yml).

## JTBD terminology

First, let's set the terminology we use for JTBD.

- **Job**: Something a customer wants to accomplish. For example, the main job of a GitLab customer could be stated as, "build and deploy software." The job always starts with a verb.
- **Job performer**: The person who does the job. Usually, we talk about these people in terms of personas. They are [buyers](/handbook/product/personas/#buyer-personas), [developers](/handbook/product/personas/#sasha-software-developer), [sysadmins](/handbook/product/personas/#sidney-systems-administrator), and so on.
- **Job statement**: A succinct statement that brings together the circumstance, goal, and outcome of a job.
- **Task**: A step in the process of completing a job.
- **Need**: Requirements for the job. Can be a system, business, or user requirement. Examples may include words like fast, inexpensive, efficient, less, more, must have, should have.
- **Situation**: Describes the circumstances a person is in when they need a job done.
- **Outcome**: The desired end state and/or feeling that a job performer has for doing a job.

## How to write a JTBD

When we refer to JTBD in our work at GitLab, we are referring to the **job statement**. A job statement provides the context of what is happening while someone is trying to accomplish a goal. In contrast, a job is _only_ the thing they want to accomplish. A job statement includes: the job, the situation, and the outcome. 

In the broader industry, what we call a _job statement_ is usually referred to as a _job story_. Why do we call job stories "job statements" at GitLab? Because "job stories" sounds too similar to "user stories," and we tend to fall into the trap of writing those, instead. That doesn't give us room to innovate and ensure that we're helping people accomplish the job.

We write our job statements using the standard format:

**"When [situation], I want to [job], so I can [outcome]."**

JTBD are difficult to get right. Before you begin, you have to have a clear understanding of what someone is wanting to accomplish, and that understanding should be validated with past research and customer conversations.

It is crucial to ensuring that the job statements are grounded in experience and not theory. We must have a high level of confidence in our job statements before we can put them into use.

## Determining the scope of a JTBD

Job statements can be written at different levels or altitudes. 

### Main Jobs

To help determine longer-term product direction, JTBD can be written for an entire stage or across multiple stages.

A main job is often expressed as a utilitarian goal. It’s an act that will be performed and should have a clear end state&mdash;the “done” part of JTBD. It shouldn’t include adjectives like quick, easy, or inexpensive (because those are considered to be needs) or the metrics by which job performers compare solutions (this is handled separately). The main job is also different from your marketing message or value proposition statement, which tends to be persuasive to evoke an emotion. 

Don’t define a main job too narrowly. A small job will limit your field of vision, but also will constrain your efforts. When in doubt, go broader, and define a main job that is larger rather than smaller. Ask “why?” and “how?” to move the level of granularity of the main job up or down.

Example: Release secure code

### Sub-Jobs

For the majority of our work, we write job statements for stage groups as we craft experiences for features or sets of related features. If you're writing a job statement for your stage group, consider this guiding principle to determine the appropriate altitude: If the job is applicable to more than 3 user types, it's likely the altitude is set too high for a sub-job (consider whether it is a main job, instead).

Examples: Identify vulnerabilities that can lead to an exploit; Identify applications most at risk in an organization

## Prioritizing JTBD

Often, we find there are many JTBD for one category. We are striving to have 2-3 JTBDs per category, at the most. Using [user research](/handbook/product/ux/jobs-to-be-done/prioritizing-jobs-to-be-done) to help determine which JTBD are the most crucial to our users can help when planning for future research, design, and product needs.

## Quick methods to increase confidence

- Reference previous research and industry standards.
- Conduct [generative problem validation research](/handbook/product/ux/ux-research-training/problem-validation-and-methods/#when-to-use-problem-validation) using broad questions. For example, ask questions like, "tell me what you do as a software engineer."
- Run abbreviated 30-minute job interviews with a minimum of 5 participants (direct questions). For example, ask questions based on the JTBD such as, "tell me about the last time you made an architectural decision. What went well? What didn't go so well?" Document your interview using the [JTBD Interview Note template](https://docs.google.com/spreadsheets/d/e/2PACX-1vSX5b57MKfLFl59TfiN61rWNkm2Qctb8cVy40JUGsF6FyEcy3jhPBUxY-4D3exXxqXPwwBkcSOb0HT8/pub?output=xlsx).

## JTBD, user stories, and tasks

Read "[What is and isn't a JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#what-is-a-jtbd)".

Job statements are different than user stories and tasks. They are designed to be persona, product, and solution agnostic and have a close relationship with user stories and tasks. This allows us to think more deeply about the context, rather than just a _role with a goal_.

_Example:_

- **Job:** Help me to **make effective architectural decisions**.
- **Job statement:** When my development ecosystem begins to mature, I want an overall understanding of my organization’s registries and specific package usage, so I can make effective architectural decisions.
- **Task:** View a list of packages we use.

In its most basic form, you will have a job statement that is associated with one or more user stories that are made up of multiple tasks. You'll use each of these at different moments within the design process.

Job statements offer a high-level view of the main objective. User stories guide your solutions as you create wireframes and tasks become the steps required to complete the job.

If you want a detailed breakdown of each segement of the job statement, learn more about the [structure of a JTBD](/handbook/product/ux/jobs-to-be-done/deep-dive/#how-do-i-structure-a-jtbd).
