---
layout: handbook-page-toc
title: "Evaluating navigation"
description: "When proposing navigation changes, it's important to proceed with high confidence. We evaluate how changes perform compared to our existing experience using a set of defined methods."
---

# On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Evaluating navigation changes

Navigation is the structure that supports the rest of our experiences. Users rely on it to know where and how to do their most important tasks in our product. When we propose any changes to navigation, it's important that we proceed with high confidence. To gain that confidence, we evaluate how those proposed changes perform compared to our existing experience using a set of defined methods. 

This page provides metrics to use when evaluating navigation at both the high level (overall success with navigating our product) and at the detailed level (success with navigating specific product areas).

### Overall success

To evaluate the success of our navigation strategy at a high level over time, we use a two-question survey that evaluates the concepts of *Context* and *Effort*. Based on past research, we believe these two concepts are the biggest challenges with our navigation. 

Once per quarter, we survey a sample of users that meet our minimum criteria for GitLab usage. As we deploy changes to navigation, we use this survey to understand how users' attitudes on those two concepts have changed over time. 

It's important to remember that navigation changes, even multiple changes taken together, are often subtle and not always noticed as explicitly as feature changes. We cannot guarantee that navigational changes we make will have a direct and meaningful effect on how users perceive our product experience. Thus, this success metric will be a lagging indicator, and we should not expect it to move in direct connection to changes we make.

#### Minimum criteria

It's important that people have had sufficient experience with the navigation experience we're looking to evaluate when we survey them. We use the following criteria when deciding who to survey:

- How long they've been a GitLab user: Users must have a minimum tenure of 90 days.
- How recent was their GitLab activity & product breadth: Users must have recorded a minimum of 10 usage data events across at least two stages over the previous 30 days

#### Execution

Each quarter, we pull a new list of users that meet the criteria from the data warehouse and send them the survey via email. No user is to be sent a survey email more than once a year. Results will be presented quarterly. We'll aim for **two hundred responses per quarter**.

#### Content

We ask users the following two questions. Response scales are flipped randomly per user, so that some users will see the most negative response option first (*Very difficult*), and others will see the most positive (*Very easy*). 

**Context**  
This question is meant to measure how well users feel they can maintain context and stay oriented when moving between product areas.

> *How easy or difficult is it to know where you are when navigating throughout GitLab?*

> - Very difficult
> - Difficult
> - Not easy or difficult
> - Easy
> - Very easy

**Effort**  
This question is meant to measure how easy is it for users to get to and from the things they need to use.

> *How easy or difficult is it to find the things you need to use in GitLab?*

> - Very difficult
> - Difficult
> - Not easy or difficult
> - Easy
> - Very easy

#### Analysis

To understand how users' ratings may have changed from quarter to quarter, we'll first convert the response scales into integers (1-5). We can then take the mean score for the two samples we want to compare and compute a [two-sample t-test](https://www.khanacademy.org/math/ap-statistics/two-sample-inference/two-sample-t-test-means/v/two-sample-t-test-for-difference-of-means) to understand if our two means are sufficient different enough from one another.

It's important to note that our response scales are Likert scales, which are ordinal values (also called conceptual values), meaning we can't know the actual intervals between different response options. This is compared to interval values like numbers, where values are spaced an equal distance apart and we can calculate the size of the difference between values. For our analysis, we will convert our data from conceptual values ('Very easy') to integers, but solely for the purposes of analysis. Statistical tests for interval data are simpler and more robust, and [research has shown](https://www.researchgate.net/publication/41420484_LIkert_scales_levels_of_measurement_adn_the_laws_of_statistics) that analyzing Likert scale data as if it were interval data produces results with no meaningful difference from ordinal analyses.

**This means we can't quantify by how much sentiment has improved from quarter to quarter, we can only be confident that it has improved (or not) based on the average responses.** To give an example, assume we give our midpoint option ('Not easy or difficult') a value of 3, and the next option ('Easy') a value of 4. If our previous mean value is 3.2 and our new mean value is 3.6, and the samples are judged sufficiently different using the t-test, then we can say we are confident that average response value has improved compared to the previous quarter, but not by how much it has improved. This is because the numerical values are only placeholders for our conceptual values and we can't measure the "distance" between something being *easy* and *very easy*. The number 4 may represent Easy, but that doesn't mean 4.3 represents 30% easier than Easy.

### Evaluating individual projects

When evaluating the performance of specific areas of our product and/or proposed improvements, it's important to choose an evaluation metric that makes sense for both the existing experience and any potential improvements. The only fair way to judge the success of an improvement is to evaluate both the before and after states using the same method. It's up to each product team to decide which evaluation metric is appropriate for their work. Here we will describe several possibilities and give an idea of when they're appropriate to use.

Teams are not required to using a single criteria to measure improvement. Teams should feel comfortable triangulating success using multiple metrics. If every metric does not improve in the solution experience, that does not mean the team should not still consider it an improvement. Using the data collected, they should then make a holistic, subjective decision that is supported but not dictated by the metrics chosen.

When using a evaluation method that involves having users complete tasks, it's important to define a cut-off time for each task. This allows us to be more objective in our evaluation and not let participants' struggles or frustration influence how long we let people work. Everyone involved in the evaluation should agree on the cut-off times. The simpliest method is to have everyone give what they feel is a sufficient amount of time for a user with your defined criteria to complete the task, and then add a 20% buffer. However, if a participant believes they cannot go on, you should respect that decision and not make them continue.

#### First-click testing

[Multiple studies](https://blog.optimalworkshop.com/does-the-first-click-really-matter-treejack-says-yes/) have shown that a successful first click is a strong indicator of ultimate success for navigational tasks. First click testing is straightforward to deploy, either in a moderated or unmoderated setting.

This is good for:

- When your proposed solution is a prototype where users won't have complete freedom to navigate wherever they choose.
- When your proposed solution is only 1-2 steps and not something involving a progression of clicks.
- When there's a singular method to complete the task and not a variety of options.

To judge the success of a new experience compared to an existing one, you can look at:

- Successful first click %
- User-reported confidence:
> *How confident are you that you clicked the correct item?*
> - Very confident
> - Somewhat confident
> - Not confident

**Setting up a first-click test**

First, define tasks that you want your participants to complete. Then you can [follow these instructions](/handbook/product/ux/ux-research-training/creating-first-click-study-qualtrics/) for creating a first-click test. You can conduct first-click tests moderated or unmoderated, though unmoderated is recommended to reach the recommended sample size, unless you have a compelling reason to conduct the sessions synchronously. Five tasks is an informal limit per participant. You should randomize the order of tasks if you have more than one (unless tasks are dependent on each other and only make sense in a certain order).

**Recommended sample size:** 20-50 users, depending on perceived difficulty

#### Findability rate

A binary measure of whether a user was able to find a given item when given a task (0 = unable, 1 = able). You can then calculate the average findability overall and by task. You can also ask users about their perceived difficulty of the task. This is easy to measure and analyze. It can be done in a moderated test where you designate the outcome, or in an unmoderated test where you have the user self-report whether they were able to find the requested item. A findability test is not suitable for prototype solutions where users can only navigate through a defined flow.

This is good for:

- When your proposed solution is full fidelity and it allows users to navigate anywhere
- When you have multiple paths to find a given item.
- When you have concerns that users may have difficulties after the initial click

To judge the success of a new experience compared to an existing one, you can look at:

- Successful findability %
- User-reported difficulty:
> *How easy or difficult was it to find what you were looking for?*
> - Very difficult
> - Difficult
> - Not easy or difficult
> - Easy
> - Very easy

**Setting up a findability test**

First, define tasks that you want your participants to complete. It's recommended to either evaluate tasks in a moderated session or by having unmoderated participants record themselves. This is because we can't be certain in an unmoderated session that participants correctly understand what "success" entails. If you need to do unmoderated testing and aren't able to record participants, then you should at record or do moderated sessions for a subset of participants to get an indication of how likely it is participants may misunderstand the success criteria. Five tasks is an informal limit per participant. You should randomize the order of tasks if you have more than one (unless tasks are dependent on each other and only make sense in a certain order).

**Recommended sample size:** 10-30 users, depending on perceived difficulty

#### Time on task / Number of clicks

Both time on task and number of clicks are meant to be measures of efficiency rather than success. These measures are not suitable for prototype solutions where users can only navigate through a defined flow. In order to control for variability in measurement, these efficiency tests should only be conducted using unmoderated testing tools using their built-in measurement capabilities.

This is good for:

- When your proposed solution is full fidelity and it allows users to navigate anywhere
- When you're more concerned with how quickly or easily a user can complete a task rather than how successful they are.

To judge the success of a new experience compared to an existing one, you can look at:

- Average number of clicks per task
- Average time on task
- 75th percentile per task for time on task or number of clicks. This represents the fastest 75% of users and is good for filtering outliers.
