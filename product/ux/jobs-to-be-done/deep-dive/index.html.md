---
layout: handbook-page-toc
title: "Jobs to be Done (JTBD) Deep Dive"
description: "There are more than a few frameworks for Jobs to be Done. The aim of this documentation is to adapt those frameworks to create a shared understanding that fits our needs."
---

#### On this page
{:.no_toc .hidden-md .hidden-lg}
{::options parse_block_html="true" /}

- TOC
{:toc .hidden-md .hidden-lg}

There are more than a few different frameworks for Jobs to be Done (JTBD) out there. The aim of this documentation is to adapt those frameworks and create a shared understanding of a JTBD process that fits our needs here at GitLab.

Our goal is to make products that people want, as well as make people want our products. Using JTBD can help us do that.

## What is a JTBD?
* **A lens for viewing your products and solutions in terms of the jobs customers are trying to achieve.** Instead of looking at the demographic factors of usage, JTBD focuses on what people seek to achieve in a certain circumstance ([see Clayton Christensen's Milkshake video](https://www.youtube.com/watch?v=sfGtw2C95Ms)).
* **A way to understand the goals that people want to accomplish.** Achieving those goals amounts to progress in their lives. Jobs are also the needs, motivators, and drivers of behavior: they predict why people behave the way they do. This moves beyond mere correlation and strives to find causality.
* **A chance to step back from your business and understand the objectives of the people you serve.** To innovate, don’t ask customers about their preferences, but instead understand their underlying needs and motivations.
* **A framework for improving collaboration and communication across disciplines and stage groups.** Since JTBD isn't particular to any expertise (for example, product, UX, marketing), it can be used by all of these disciplines to focus team members on the core problem that the business aims to solve for its customers. For example, rather than marketing having personas, UX having user stories, and so on, the company can use JTBD to establish common, high-level definitions that everyone can use.

## What isn't a JTBD?
* **They are not about your product, service, or brand.** People “hire” products to get a job done. Instead of focusing on your own solution, you must first understand what people want and why that’s important to them.
* **They are not about specific products or particular solutions.** Instead, they focus on the process that people go through to solve a problem.

## When should I use a JTBD?
Use JTBD throughout the design process, but most notably to:
* Define scope
* Validate direction
* Evaluate existing experiences
* Assess category maturity

## How do I structure a JTBD?
A core strength of JTBD is its structure, which clearly separates out various aspects of achieving objectives. The who, what, how, why, and when/where are analyzed individually, giving both precision and flexibility to JTBD methods.

### _Who_ is the focus of a JTBD?

When writing a JTBD, focus on the **job performer**. In other words, write it from the perspective of an end user who is trying to do the job. Conversely, do not write a JTBD from the perspective of what GitLab (or the business stakeholder) wants to achieve.

Other functions within the job ecosystem to consider include the following:
   * **Approver:** Someone who authorizes the acquisition of a solution 
   * **Reviewer:** Someone who examines a solution for appropriateness 
   * **Technician:** The person who integrates a solution and gets it working
   * **Manager:** Someone who oversees a job performer while performing the job
   * **Audience:** People who consume the output of performing the job
   * **Assistant:** A person who aids and supports the job performer in getting the job done

Note that these different roles don’t refer to job titles. Instead, they represent different functional actors within the context of getting a job done. 

### _What_ does the job performer want to accomplish (independent of your solution)?

The aim of the job performer is not to interact with your company but to get something done. Because they don’t mention solutions or technology, jobs should be as timeless and unchanging as possible. Strive to frame jobs in a way that makes them stable, even as technology changes. 

### _How_ will the job get done? (objective of the JTBD) 

The process follows job performers as they move through different goal stages in order to accomplish their goal.

  * Understanding the process of the job performer’s intent is key to JTBD. 
  * You can illustrate the job in a chronological map using a sequence of stages, such as Beginning, Middle, and End.
  * Each stage can contain multiple user stories. Be careful not to get into the tasks/physical activities just yet.
  * Because the job has to be “done,” be sure to formulate the job in a way that has an end state.
  * Once you have the sequence, specify the tasks needed to complete each user story. 

### _Why_ does the performer act in a certain way? What are their requirements or intended outcomes during the job process?

Why do the job performers act the way they do while getting a job done? Their actions might be tied to achieving specific outcomes, such as producing a specific report. Their actions might also be tied to requirements or processes to which they must adhere.

In JTBD, a need is seen in relation to getting the job done. Needs aren’t demands from a solution, but an individual’s requirements for getting a job done. Needs aren’t aspirations, either, which are above the job in terms of abstraction. 

Example: If a main job is defined as _file taxes_, their need may be to _minimize the time it takes to gather documents or maximize the likelihood of getting a return_. 

Example: Expressions like “have financial peace of mind” or “provide for my family” are motivations beyond getting the job. These are important aspects to consider later, but not needs related to reaching the objective of filing taxes. 

### _When and where_ does the job get done?

The circumstance (or contextual factors) that frame job execution include when and where the job gets done; for example, aspects around time, manner, and place. A job without context is not complete and cannot provide strategic direction. There is a dependency between formulating a job and knowing the circumstances. 

JTBD uses circumstances to make them relevant to an organization. The conditions around the job give it meaning and relevance and therefore must be considered. Adding contextual detail to the situation also helps greatly when designing a solution.

Example: *Get breakfast* is a very broad job that could apply to many situations. But for a fast food restaurant, *get breakfast on the go*, is a more precise job to focus on. 
 
Example: A solution for the job *get breakfast on the go* could include everything from going to a restaurant or diner to eating a packed lunch at a desk. But when considering specific circumstances like *when late for work, while commuting* and *when cost is a factor*, a morning milkshake might be a better solution for the job.

## JTBD examples and tips

JTBDs are difficult to get right can take some time to refine. Below is an example of a job statement and its versions throughout the refinement process. The feedback provided for each version can offer some helpful tips to keep in mind when you're writing them.

Version 1: When new features are added to a product, I want to know if and how those changes impact performance so that I can ensure my product works as expected for users.

- "When new features are added to a product" - Make sure to describe the circumstances the job performer is in when they need to get the job done. New features being added is not an isolated act.
- "I want to know if and how those changes impact performance" - This job can be a bit more specific (instead of using "if and how"). It will be easier to validate when you focus on one aspect of the need/outcome for the job performer.
- "so that I can ensure my product works as expected for users" -  How can you make the outcome for the job performer more specific? Why is it important that the product works as expected? What is the desired end state and/or feeling that a job performer has for doing this job? Make sure to describe the circumstances that the job performer is in when they need to get the job done.

Version 2: When I or my teammate is making a code change to our product, I want to know if the change introduces a latency for my end users so that I can ensure users are satisfied with the performance of the product and continue to use it

- "When I or my teammate is making a code change to our product" - We don't need to specify the "who" this is for since it seems to apply to any code changes to the product.
- "so that I can ensure users are satisfied with the performance of the product and continue to use it" - Handling a latency doesn't measure satisfaction, but it deals directly with usability.

Final version: When a code change is made, I want to know if the change introduces a latency for my end users so that I can meet the quality standards of performance response time to maintain usability for our end users.

- ✅ Describe specific circumstances that the job performer is in when they need to get the job done.
- ✅ Focus on one specific goal or aspect that the job performer needs to complete when writing out the job statement so that it makes it easier to validate in the future.
- ✅ Focus the outcome of the job statement around the desired end state or feeling for the job performer as well as the reason why completing the job is so important. Ensure the outcome is something that is measurable and can be used to validate the job statement.
