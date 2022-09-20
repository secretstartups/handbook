---
layout: handbook-page-toc
title: "Usability testing"
description: "Conducting usability testing at GitLab"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Usability at GitLab

The term "usability" can mean a variety of things. At GitLab, we use the following definition of usability when we conduct user research and design our product:

**To be usable, an interactive system should be useful, efficient, effective, satisfying, and learnable.**

* **Usefulness** is the degree to which our product enables a user to achieve his or her goals. 

* **Efficiency** is the quickness with which the user’s goal can be accomplished accurately and completely in a period of time.

* **Effectiveness** refers to the extent to which the interactive system behaves in the way that users expect it to and the ease with which users can use it to do what they intend.

* **Learnability** is a part of effectiveness and has to do with the user’s ability to operate the interactive system to some defined level of competence after some predetermined amount and period of training (which may be no time at all). It can also refer to the ability of infrequent users to relearn the system after periods of inactivity.

* **Satisfaction** refers to the user’s perceptions, feelings, and opinions of the product. 

*Note: This definition is based on information from the [Handbook of Usability Testing](https://www.amazon.com/Handbook-Usability-Testing-Conduct-Effective/dp/0470185481) and the [International Usability and UX Qualification Board curriculum](https://uxqb.org/public/documents/CPUX-F_EN_Curriculum-and-Glossary.pdf).*


## Usability testing

Usability testing is the process of evaluating a product experience with representative users. The aim is to observe how users complete a set of tasks and to understand any problems they encounter. Since users often perform tasks differently than expected, this qualitative method helps to uncover why users perform tasks the way that they do, including understanding their motivations and needs. At GitLab, usability testing is part of [solution validation](https://about.gitlab.com/handbook/product/ux/ux-research-training/solution-validation-and-methods/).

We also conduct regaular [Usability Benchmarking](https://about.gitlab.com/handbook/product/ux/ux-research-training/usability-benchmarking/) studies at GitLab. These are also focused on usability, and are used to set performance and ux benchmarks for specific tasks and workflows across GitLab. As such, they are much more rigorous and time-consuming than a normal usability test ought to be.

### Different types of usability testing

Generally speaking, we can differentiate between:

**Moderated versus unmoderated usability testing**

Moderated tests have a moderator present who guides participants through the tasks. This allows them to have a conversation about their experience, and it helps to find answers to “Why?” questions. 

Conversely, users complete [unmoderated usability](https://about.gitlab.com/handbook/product/ux/ux-research-training/unmoderated-testing/) tests on their own without the presence of a moderator. This is helpful when you have a very direct question.

| Moderated usability testing                                                                                                                                                                                         | Unmoderated usability testing                                                                                                                                                       |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Complex questions/WHY? Questions, such as:<br><br>  “Why do users experience a problem when using a feature?”<br>  “Why are users not successful in using a feature?”<br>  “How do users go about using a feature?” | Direct questions, such as:<br><br>  “Do users find the entry point to complete their task?"<br> “Do users recognize the new UI element?”<br> “Which design option do users prefer?” |

**Formative versus summative usability testing**

Formative usability tests are continuous evaluations to discover usability problems. They tend to have a smaller scope, such as focusing on one specific feature of a product or just parts of it. Oftentimes, prototypes are used for evaluation. 

Summative usability tests tend to be larger in scope and are run with the live product. They are useful if you lack details on why users are experiencing a particular problem or want to validate in the first place how easy it is to use. 

### Steps for conducting a usability test
1. [Establish your research question](https://about.gitlab.com/handbook/product/ux/ux-research-training/defining-goals-objectives-and-hypotheses/#step-1---start-thinking-of-a-problem).
2. Identify the tasks you want to focus on for your usability test. 
    - There is no magic number when it comes to how many tasks to include. A guideline is to have [3 - 4 tasks](https://about.gitlab.com/handbook/product/ux/ux-research-training/writing-usability-testing-script/#tasks), as this ensures that participants don’t get tired and exhausted. Another aspect to consider is that unmoderated test sessions should be 15 - 20 minutes max and moderated sessions 60 minutes max. 
    - The key thing to remember when writing your tasks is that [they reflect realistic user goals](https://about.gitlab.com/handbook/product/ux/ux-research-training/writing-usability-testing-script/#tasks). Taking the JTBD into account when creating your tasks helps keep the focus on user goals. See these [tips for writing good tasks](https://about.gitlab.com/handbook/product/ux/ux-research-training/writing-usability-testing-script/#tasks) that include examples. 
3. Define what success looks like.
    - Before testing with users, reach agreement among your stakeholders about what success looks like, such as the target completion rate you are aiming for. For example, a completion rate greater than 80% translates to a Complete or Lovable [CM scorecard level](https://about.gitlab.com/handbook/product/ux/category-maturity-scorecards/#calculating-the-cm-scorecard-score). This article from [MeasuringU](https://measuringu.com/task-completion/) suggests using 78% as a baseline, whereas a minimum of 92% would satisfy a completion rate in the top quartile. However, it's not unreasonable to aim for even 100%; it's up to each team to determine the success criteria required for each study and each feature.    
4. [Identify your target audience and initiate recruiting](https://about.gitlab.com/handbook/product/ux/ux-research-training/recruiting-participants/).
5. [Prepare your prototype or demo environment](https://about.gitlab.com/handbook/product/ux/category-maturity-scorecards/#step-2-prepare-your-testing-environment).
6. [Write your test script, including tasks and metrics to collect](https://docs.google.com/document/d/1_5Qu2JR9QE5LE6cK4eq9yJs-nXv2rlWWifcjacaiWdI/edit).
    - [The International Organization of Standardization’s (ISO) definition of usability](https://www.iso.org/obp/ui/#iso:std:iso:9241:-11:ed-2:v1:en) focuses on [3 factors: Effectiveness, Efficiency, Satisfaction](https://about.gitlab.com/handbook/product/ux/ux-research-training/usability-testing/#3-factors-to-measure). When setting up your usability test, we recommend capturing the [metrics shown below](https://about.gitlab.com/handbook/product/ux/ux-research-training/usability-testing/#3-factors-to-measure), as this will help to measure improvements consistently over time and [to assess their impact on system usability](https://about.gitlab.com/handbook/product/ux/#system-usability). There are many other metrics that you can measure to understand usability problems, such as error rates or number of times a user needed help. If you find them helpful for your research topic, feel free to use them.
    - Remind participants to think aloud as they go through the tasks, especially in an unmoderated test.
    - Take a look at these more [detailed tips and tricks](https://about.gitlab.com/handbook/product/ux/ux-research-training/writing-usability-testing-script/) on how to write an excellent usability test script. 
    - If you run an unmoderated usability test, please use or reference the [usability metrics template](https://app.usertesting.com/test_plan_templates/11481/edit) available in UserTesting.com. UserTesting.com has native options for _task success_ and _difficulty_ to capture metrics that are similar to ours, but these are not the same usability metrics needed for our studies. Please use the options listed in this template instead.
    - If you run an unmoderated usability test that will run under 5 minutes, toggle the Short test option *on* when building your test plan.
7. [Run a pilot session to test the usability test](https://about.gitlab.com/handbook/product/ux/ux-research-training/writing-usability-testing-script/#3-test-the-test).
8. [Analyze your research data](https://about.gitlab.com/handbook/product/ux/ux-research-training/analyzing-research-data/)
    - For each task, synthesize how many users succeeded or failed and why they failed. 
    - For each task, calculate how easy or difficult it was for participants to complete it. Look for patterns on why they gave a score.
    -  Calculate the average score for the [SUS adjective rating scale](https://uxpajournal.org/determining-what-individual-sus-scores-mean-adding-an-adjective-rating-scale/), and look for patterns in why they gave a particular score. 
    - Note down any other interesting observations you had. 
9. [Document your insights in Dovetail](https://about.gitlab.com/handbook/product/ux/ux-research-training/documenting-research-findings/). If you have actionable insights, ensure they are also [documented in the GitLab UX Research project](https://about.gitlab.com/handbook/product/ux/ux-research-training/research-insights/#how-to-document-actionable-insights).
10. Decide on the next steps.
    - Any [actionable insights](https://about.gitlab.com/handbook/product/ux/ux-research-training/research-insights/#actionable-insights) require a follow up. Work with your counterparts to determine priority for the identified usability problems. Remember to conduct another usability study to validate your proposed solution.

### 3 Factors to measure

#### 1. Effectiveness
- What’s being measured?  
    - Effectiveness can be determined by calculating the pass rate. This shows the success or completion rate of each task.
- How is it measured?  
    - The pass rate can be determined by dividing the number of participants that were able to complete the task by the total number of participants.
    - Ensure that you are observing and documenting *why* participants are failing as well.
- Why are we measuring it?
    - We want users to succeed in reaching their goals. Understanding why and where they fail will help us improve the experience.

#### 2. Efficiency
- What’s being measured?  
    - Efficiency can be measured by understanding how easy a task was perceived to be by participants. This can be done by asking a [Single Ease Question](https://about.gitlab.com/handbook/product/ux/category-maturity-scorecards/#the-3-questions-we-ask) per task
- How is it measured?  
    - Ask the Single Ease question after each task. 
       - *“Overall, this task was…”* <br> *- Extremely difficult* <br> *- Difficult* <br> *- Neither easy nor difficult* <br> *- Easy* <br> *- Extremely easy* <br> *“Why?”*                                       
    - Ensure that you are asking *why* participants rated it this way right after having them rate the ease of use.
- Why are we measuring it?
    - The subjectively perceived task difficulty is something we collect during CMS. Collecting it as part of a usability test gives a prediction and pulse check for a later CMS study.
    - It is important to understand the participants’ reasons for giving a rating, especially in situations where a rating is low. This is especially important in usability testing when the number of participants is also low.

#### 3. Satisfaction
- What’s being measured?  
    - Satisfaction can be determined by understanding how user-friendly a participant perceives an *experience* or series of tasks to be.
- How is it measured?  
    - After all tasks are completed, ask the participant to rate the experience on the [Adjective rating scale](https://uxpajournal.org/determining-what-individual-sus-scores-mean-adding-an-adjective-rating-scale/).
       - *“Overall, I would rate the user-friendliness of this product as:”* <br> *- Worst-imaginable* <br> *- Awful* <br> *- Poor* <br> *- OK* <br> *- Good* <br> *- Excellent* <br> *- Best imaginable*
    - Ensure that you are asking *why* participants rated it this way right after having them rate the experience.
- Why are we measuring it?
    - This score highly correlates to SUS, and our aim is to [increase system usability](https://about.gitlab.com/company/strategy/#2-build-on-our-open-core-strength).
    - It is important to understand the participants’ reasons for giving a rating, especially in situations where a rating is low. This is especially important in usability testing when the number of participants is also low. 

## How usability testing relates to Category Maturity Scorecards (CM Scorecards)
Usability testing happens before you conduct a [CM Scorecard](https://about.gitlab.com/handbook/product/ux/category-maturity-scorecards/#intro-and-goal). Usability testing helps to identify the majority of problems users encounter, the reasons for these issues, and their impact when using GitLab, so we know what to improve. 

If you run a CM Scorecard without prior usability testing, you will likely identify some of the usability problems users experience. However, the effort and rigor connected with the Category Maturity Scorecard to measure objectively the current maturity of the product doesn’t justify skipping usability testing. 
In addition, during usability testing you have opportunities to engage with participants directly and dive deeper into understanding their behaviors and problems. The Category Maturity Scorecard process does not allow for such interactions as it's designed to capture unbiased metrics and self-reported user sentiment.

## Frequently Asked Questions

**Why should I not ask in user testing if a participant completed a task successfully?**
It’s a self-reported measure which may or may not be true. If a participant indicated they completed a task successfully, you still need to check if they really completed it based on how you defined success. It’s important to capture only necessary data from users and considering you need to double-check their response with actual behaviour, we suggest to leave it out in the first place. 

**Why should I not use UserTesting.com’s native task metric _difficulty_ to assess Efficiency? Isn’t it the same?**
UserTesting.com’s task metric _difficulty_ is similar but it uses a different rating scale than the Single Ease Question. Currently, there is no option to change the scale labels in UserTesting.com to align with ours.  



