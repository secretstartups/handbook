---
layout: handbook-page-toc
title: "How to write description templates"
description: "The purpose of this page is to document best practices related to writing description templates for issues and merge requests."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# How to write description templates
{:.no_toc}

---

The purpose of this page is to document best practices related to writing [description templates](https://docs.gitlab.com/ee/user/project/description_templates.html) for issues and merge requests.

* **They** = the people filling out the form.
* **You** = the people creating the form to fill out and / or the people who review the answers.

# General writing tips

* User attention span is short. Be succinct when writing a template.
* Always include an introduction and a conclusion. In the case of a template,
  * The introduction should list what it's for, what it's not for, and who might read it.
    * Example: *This template is for bugs on about.gitlab.com and is reviewed by the Growth Marketing team.*
  * The conclusion should include a checklist reviewing the actions they're required to do.
    * Example: *All sections have been filled out, relevant documents have been attached, a due date was specified with reason, all copy is finalized.*

# Writing templates

## Choose a purpose

Not all questions are applicable in all situations. The first step is to choose what topic the issue is about. Some example situations are a feature request, a bug report, and a UX problem. Don't create one issue template for everything, create a separate template for each situation.

## Create an outline

An outline helps you organize information, ensures topics are covered, and helps you stay on-point. [How to create an outline](https://www.grammarly.com/blog/how-to-write-outline/).

* Add head tags (H1-H6) to each section. These are directly linkable.
* Create a visual hierarchy. The most important information should be the highest contrast. The document should be easy to skim through. It should be easy to find what you're looking for.

## Create an order-of-operations

Informational hierarchy is important, but procedural hierarchy is equally important. The following template is suggested:

1. Instructions
1. Prompt
1. Example

Below is an example that follows the above template:

```
Include the problem we're trying to solve.

Insert here your request WITH reason

Example: As an X, I want to do Y because Z.
```

## Ask good questions

You have to ask the right questions in order to gather the right information from the user.

### How to ask good questions

Most importantly,

* **Ask the right question.** You might want to treat a symptom or you might want to treat the underlying cause.
* **Ask the right people.** Don't ask a fish to climb a tree.
* **Ask at the right times.** Does this need to be asked now? Can we ask the question later? Do we want to get someone in the door before asking them questions because it's more important to get them in the door? Do we want to ask them questions beforehand so we know what door they want?
* **Ask in the right order.** List important items first and optional items last.

---

More specifically,

* **Name the template appropriately with details.** Make it easy to find. Make its purpose clear. **Don't:** `Website request`. *What are you requesting?* **Do:** `Request webpage update`.
* **Make it easy to fill out.** The easier it is, the more likely they are to do it.
* **Explain why you're asking.** This helps communicate what you hope to get out of them. It also helps alleviate reservations they might have about answering.
* **Give examples.** Don't just ask for an image, tell them what kind of images are useful and how the image needs to be prepared for use.
* **List do's and dont's.** This helps filter out unexpected or irrelevant data.
* **Provide instructions via calls to action** like `Insert answer here` and `list items below`.
* **Set their expectations.** A person might ask for the sun when you're only able to deliver the moon.
* **Limit your expectations.** The person writing an issue might not know how to use Photoshop.
* **Be strategically vague.** Example: "what do you hope to achieve" versus "what color do you want this to be?"
* **Be specific when it helps.** Example: "this issue is for bug reports" versus "this issue is for bug reports on about.gitlab.com excluding the handbook."
* **Define important terms.** If you need them to understand something, explain it to them. Don't assume they are reading the same homonym. Don't make someone look up a definition. Don't assume familiarity.
* **Link to documentation.** In order to keep the issue short and relevant, don't include all documentation in the template. Example: "our team workflow is documented over there."
* **Demonstrate with preference.** Don't just say "take a screenshot," link them to your preferred article on how to do that. Don't just ask their browser version, link them to your preferred method to obtain that information. Sure they could google it, but the resource they find might not follow all of the steps you need.
* **Eliminate redundancies and combine similarities.** People don't like to give the same answer twice. They also may answer the same question differently. In order to facilitate data integrity, try to combine questions when possible.
* **Group similar topics by subject matter.** This allows them to skip sections that might not be applicable. It also allows you to navigate directly to sections you're interested in.
* **A question can have multiple parts.** For example, "what kind of network are you connected to?" might have checklists for wired/wireless, home/workplace, vpn, etc.
* **Provide checkboxes.**
  * The act of checking a box lets you know that the item was done.
  * Checkboxes let you ask them to choose between options or select all that apply.
  * You might want to leave them with an option for "other."
  * Ask follow-up questions depending on the choice they give.

### What are good questions

#### The 5 W

[The 5 Ws](https://en.wikipedia.org/wiki/Five_Ws) are a basic tenet in information gathering and problem solving. Who, what, when, where, why, and sometimes how. Below are some example questions from each of the 5Ws.

**Note that all questions can be asked in affirmative and negative directions (is / isn't, will / won't, etc).** Generally speaking one is enough, but sometimes it's necessary to list both.

Example 1: Brandon will be building X. ~~Brandon won't be building Y.~~ Chad will be building Y.

Example 2: Add feature X to section Y on all pages, except for page Z.

##### What

What do they want to achieve? What is the unexpected application behavior? What is the user unable to accomplish? What metrics allow us to measure that? What are the requirements?

##### Why

Why do they want to do it? Why is this a problem? Why does the user need to do this? Why is this important to the company?

##### Where

Where is this happening? Where do they expect it to happen? Where do we expect it to happen? Where are the users coming from? Where do they want to go?

##### Who

Who is the intended audience? Who does this bug impact? Who is this a problem for? Who will be building this feature?

##### When

When is the right time in a [user journey](https://uxplanet.org/a-beginners-guide-to-user-journey-mapping-bd914f4c517c) for this to happen? When will this appear on the website and when will it stay until? When is this valid? When is the requested due date?

##### How

When writing an issue template, it is often better to omit questions about "how". This lets the implementation team research solutions to propose.

# Automatically prefill data

**Setup your templates to automatically add relevant information such labels**. *Set confidentiality if applicable*. You might also want to assign issues automatically or add cc @ mentions to the template. For example,

```
/label ~"type::bug" ~reproduced ~needs-investigation
/cc @project-manager
/assign @qa-tester
/due in 14 days
/confidential
```

# Peer review of templates

Before releasing a template, it's best practice to have it reviewed by both people who submit responses and people who review responses. Submitters will help you identify questions that need clarification. Reviewers will help you identify questions that won't provide data they need. Both will help you identify missing or unnecessary questions.

# Gather data and iterate

After you release a template, if someone isn't answering a question, it could be an indicator that:

* They don't want to answer. Rewrite the question in a way that alleviates their concerns.
* They don't know how to answer. Help walk them through it.

If you're getting the wrong data, it could be an indicator that:

* They don't understand the question. Try rephrasing it for clarity. Add definitions. Give examples.
* You're asking the wrong question. Try approaching it from another perspective.

With each change you make to a template, document why you made that change so you don't make the same mistake repeatedly. Check to see if the change you made in one section is applicable to other sections. Review the other templates to see if they can benefit from this update too.
