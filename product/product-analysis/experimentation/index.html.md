---
layout: markdown_page
title: Experimentation Design & Analysis
---

<!---## On this page---->

{:.no_toc}

- TOC
{:toc}

## Overview

Experimentation is hard. In an ideal world, we would have an easy-to-use, easy-to-implement 
experimentation tool, data would be robust and timely, and we would be able to reach required 
sample sizes quickly. But, we do not live in an ideal world, so we need to be very deliberate and 
thoughtful in how we approach experimentation design and analysis.

In order to increase our [velocity](/handbook/engineering/development/growth/#experiment-cadence) 
while maintaining our ability to learn from experiments, the GitLab Growth stage (including the 
Product Analysis group) is adopting a new framework for designing and analyzing experiments. This 
framework is adapted from the work of data scientist [Danielle Nelson](https://www.linkedin.com/in/daniellevnelson/). 

Like everything at GitLab, this page and how we implement the framework are [in draft](/handbook/values/#everything-is-in-draft), 
and we will [iterate](/handbook/values/#iteration) over time.

## Framework

Please note that in this case “framework” does not refer to the technical framework running the 
experiment (i.e., [GLEX](https://docs.gitlab.com/ee/development/experiment_guide/gitlab_experiment.html)), 
but rather refers to the framework with which we design and analyze experiments.
{: .alert .alert-info}

Our experimentation design and analysis framework leverages two different "types" of experiments: 
**True Randomized Control Trials (True RCTs)** and **Pseudo-Randomized Control Trials (Pseudo-RCTs)**. The 
two types differ in terms of statistical rigor (including p-value interpretation), which in turn 
impacts required sample size and experiment duration.

**True RCTs are optimized for statistical certainty and pseudo-RCTs are optimized for experiment 
velocity.**

### True Randomized Control Trials (True RCTs)

True RCTs are the most statistically rigorous experiments which, if designed and run properly, result 
in causal inference. In other words, we can actually say that the experiment _caused_ a change 
in a metric. True RCTs are classic "A/B/n Tests". Unfortunately these types of experiments and the 
certainty of the learnings come at a price: they tend to require a large sample size and experiment 
duration. If the effect size (minimum change in the metric that would be relevant to detect) is 
small (ex: you want to detect a 1% change), the metric is less prevalent (ex: low conversion rate), 
or the variance in the metric is large (i.e., a “noisy” metric), you need a much larger sample 
size. In addition, there needs to be extra care taken to ensure that experiments are not colliding.

True RCTs will be developed and evaluated with the industry standard statistical significance level 
of p <= 0.05 and a power of 0.8.
* p <= 0.05: results are **statistically significant**
  * Ex: The variant landing page showed a significant increase of 10% in click rate.
* p > 0.05: results are **not statistically significant**
  * Ex: The difference in click rate between control and variant landing pages was not significant.

### Pseudo-Randomized Control Trials (Pseudo-RCTs)

Pseudo-RCTs are less statistically rigorous than true RCTs and lead to directional learnings. In 
other words, we cannot say that the experiment _caused_ a change in a metric, but we can say 
it _directionally impacted_ a metric. Pseudo-RCTs carry the spirit of true RCTs without 
requiring a larger sample size and duration. As such, they carry a higher risk that the results 
were due to random chance instead of the experiment.

Since pseudo-RCTs are less strict, we evaluate them based on a looser p-value interpretation 
and we use different language to understand and communicate the results. The language used for 
these measurements needs to be very intentional so as to not overstate our confidence. This 
means that we should _not_ communicate a percent change (ex: 10% increase) because our level of 
certainty and statistical significance could be misinterpreted. In addition, including the p-value 
(or noting the confidence level) helps to avoid misinterpretation.
* p <= 0.05: experiment **“had an impact”**
  * Ex: The variant landing page showed a lift in click rate from 40% to 44% (p=0.04).
* p > 0.05 and p < 0.2: experiment **"had a directional impact"** (or **“might have had an impact”**)
  * Ex: The variant landing page showed a directional lift in click rate from 40% to 44% (p=0.11).

## Considerations for selecting experiment type

It is not always straightforward or easy to select which type of experiment to run. Here are a 
few questions to help guide that decision:
* **How certain do I need to be that this experiment _caused_ a change in a metric?** Is a 
directional learning sufficient?
  * If the metric is critical to the business and you need to be certain that the experiment 
  caused a change, then you should run a true RCT.
* **How large of an impact do I expect and care about?** Does it matter if the metric moves 1% 
or do I really only care if it changes 10%?
  * If you need to detect a small impact, then you will need a larger sample size.
* **How prevalent and/or volatile is the metric I care about?**
  * If the metric is less prevalent and/or more volatile, then you will need a larger sample size.
  * If the metric is very volatile, then you may struggle to detect an impact if you run a pseudo-RCT.
* **What other experiments are running or are queued up to be run?** Does running this experiment 
a long time impair our ability to start another, higher priority experiment? Is there another 
experiment currently running that will collide with this one?
  * If you need to be certain of the results, then you will likely need to run the experiment for 
  a longer period of time _and_ be extremely careful of experiments interacting.
* **Would I do something differently based on the level of certainty in the results?** Would I make a 
different decision if I knew the experiment caused a change in a metric than if I knew it 
directionally impacted a metric?
  * If you would make the same decision regardless of a causal or directional impact, you should 
  likely run a pseudo-RCT.

We will continue to build out a guide on how to select which type of experiment to run.

## Standard Operating Procedure for Creating and Running Experiments
This guide is used to explain the following steps in the GitLab Experimentation Process and the steps that are recommended for the successful implementation and analysis of an experiment. Here are the main parties involved in the creation and execution of an experiment and the scope of responsibilty for each: 

### Scope and Responsibilities for Product Managers, Engineers, and Analysts


|                          |                         Product Managers                        |               Engineers               |                        Analysts                       |
|--------------------------|:---------------------------------------------------------------:|:-------------------------------------:|:-----------------------------------------------------:|
| Planning                 | Issue creation<br>Determine experiment type<br>Event definition |        Event definition review        | Experiment type, metrics, and event definition review |
| Implementation           |                                                                 | Event tracking and variant definition |                                                       |
| QA                       |                PM/Dev QA the experiment variants                |           Rollout on staging          |    Data checks to ensure data collection in staging   |
| Experiment in Production |                 PM confirms experiment variants                 |                Data QA                |                        Data QA                        |
| Post-Experiment          |     Ending of experiment and post-experiment data collection    |         Resolution and cleanup        |                  Experiment analysis                  |

### For Product Managers
1. Start with defining the metrics that you will use to determine success in the experiment. Here are some questions to help guide the selection of metrics for an experiment. We recommend defining 1 target KPI or what we would use to declare a winner in this experiment, and any other secondary KPIs that you’d like to be included in the analysis: 

    - What is the business question you are trying to answer?
    - What is the desired effect for this experiment? (More engagement like clicks, page views, stage adoption, or an increase in paid conversion) 
    - What are the variants that are being introduced in the experiment and what is the expected behavior? 
    - Are there events or a sequence of events that are specific to a variant vs. the control group?

    <br>**NOTE:** Product Analytics is available to help with the definition of events and metrics for experiments for better alignment before proceeding with the analysis

2. Identify what kind of experiment you’d like to conduct from the experiments we’ve described below. We’ve also included a questionnaire that will help you decide what desired result you’d like from the experiment: 

    Our experimentation design and analysis framework leverages two different "types" of experiments: **True Randomized Control Trials (True RCTs)** and **Pseudo-Randomized Control Trials (Pseudo-RCTs)**. The two types differ in terms of statistical rigor (including p-value interpretation), which in turn impacts required sample size and experiment duration.

    True RCTs are optimized for statistical certainty and pseudo-RCTs are optimized for experiment velocity. Please refer to the definition of the experiment types at the beginning of this page for further guidance.

    Feel free to reach out to the Product Analytics team if you need any more guidance. 

3. After defining your metrics, work with your Product Analytics team and engineers to identify what the best method of tracking would be and which events need to be tracked. 
    -  Are you tracking front-end events? Back-end events? 
    - Are you conducting a funnel analysis? If so, is there an order of events that you are tracking?
    - What is your conversion event (or what you would consider as a successful conversion)?
    - If you are tracking a conversion rate, specify what the numerator and denominator would be for this calculation.
      - Specify if time should be factored into the conversion rate, such as D7, D14, or D30 conversion.

4. Write an issue and assign it to the Product Analytics team and use the “Experiment Analysis Request” template.
    The contents of the Experiment template can be found [here](https://gitlab.com/gitlab-data/product-analytics/-/blob/main/.gitlab/issue_templates/Experiment%20Analysis%20Request.md)

5. Once the experiment has data in staging (before being launched into production) be sure to let the Product Analytics team know so they can check if the data is coming through.
    You can also use the [Experiment Data Validation](https://app.periscopedata.com/app/gitlab/860363/Experiment-Data-Validation?) dashboard to check your data.

6. Once the experiment results have been analyzed and a variant has been launched, please inform Engineering so that any experiments that are concluded can be paused to maximize data warehouse storage. 

### For Engineers

1. Work with your Product Managers to list the event names, type of event, and where the data is expected to be collected. Use the event definition table that is below to help format your event definitions.

|     Action    | Funnel | Level | Source |                                                                                                    Description                                                                                                   |
|:-------------:|:------:|:-----:|:------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|  assignment   |   1    |   BE  |  auto  | Any time the experiment is evaluated. Use unique keys to get experiences, or review as a total count. Group by unique keys to see changes over time or subsequent evaluations. Experiment is sticky to the user. |
|  focus_form   |   2    |   FE  |  [link](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/60038/diffs#7232c8176a30817af010d3e442ef46afe5429362_0_6)  |                                                                                    Standard event with the [focus_form context.](https://github.com/snowplow/iglu-central/blob/master/schemas/com.snowplowanalytics.snowplow/focus_form/jsonschema/1-0-0)                                                                                   |
|  change_form  |   3    |   FE  |  [link](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/60038/diffs#7232c8176a30817af010d3e442ef46afe5429362_0_6)  |                                                                                   Standard event with the [change_form context.](https://github.com/snowplow/iglu-central/blob/master/schemas/com.snowplowanalytics.snowplow/change_form/jsonschema/1-0-0)                                                                                   |
|  submit_form  |   4    |   FE  |  [link](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/60038/diffs#7232c8176a30817af010d3e442ef46afe5429362_0_6)  |                                                                                   Standard event with the [submit_form context.](https://github.com/snowplow/iglu-central/blob/master/schemas/com.snowplowanalytics.snowplow/submit_form/jsonschema/1-0-0)                                                                                   |
| create_group  |   5    |   BE  |  [link](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/60038/diffs#dc240efebd5278da9bb46419b7f74a5a9a3f12e9_26_26)  |                                                                              When a group is created in subsequent onboarding steps                                                                              |

2. Link any tracking and/or related-issues to the main experiment issue assigned to Product Analytics 

3. Let all stakeholders know when the experiment is available on staging or production and at what percent (if rolling out in phases or in certain percentages of the population of users) it’s currently set at.

### For Analysts
1. Work with Product Managers and Engineering to identify which events would make the most sense for your analysis.

2. The Product Analytics team can help determine how long data needs to be collected in order for the results to be statistically significant. Here is a list of upfront calculations that will help determine the length of an experiment: 
    - Check the estimated traffic or audience based on the criteria provided by your Product Manager 
    - Calculate sample size using this [sample size calculator.](https://docs.google.com/spreadsheets/u/1/d/1KP_rDB3e6pJuOJwA59HcAUVpWUuzoPveaJiTH_PSviM/edit#gid=0)
    - Check the z-score that is correlated with the experiment type and compute for sample size based on the z-score and baseline conversion 
    - Calculate effect size using: *STILL IN PROGRESS*  


3. Create a mock dashboard with staging data. This will help give the Product Managers an idea of what is realistically expected from the analysis before it is rolled out into production and can help tune the metrics that are being used to measure experiment success. 
    - In the dashboard, be sure to include a link to the experimentation ticket as well as a short definition of the events so that it is easily understandable by people unfamiliar with the details of the experiment.
    - Be sure to check which events are flowing in, if they are collecting the right context, and call out any anomalies to the data collection.
    - Examples of past experiment analysis: 
        - [Jobs To Be Done Experiment](https://app.periscopedata.com/app/gitlab/867903/WIP-Growth:Adoption-Jobs-To-Be-Done)
        - [SaaS Trial Onboarding Experiment](https://app.periscopedata.com/app/gitlab/882318/Growth:Conversion-SaaS-Trial-Onboarding)

4. Once production data has begun to flow in, be sure to swap your data source to reference production data and NOT staging data. Keep an eye on your metrics as they bake to their full sample size, and call out any discrepancies or unexpected behavior to your Product Manager. 

5. Be sure to check the sample size of the variants against the total population of GitLab users to identify the right sample size needed for results to be statistically significant. 

6. Share any relevant insights to the Product Manager and discuss any post-experiment analysis that needs to be done.


## Additional Resources

You can find additional experimentation resources throughout the handbook and GitLab docs. 
Here are a few pages to check out:

* [How Growth launches experiments](/handbook/product/growth/#how-growth-launches-experiments)
* [Growth Engineering Guide to running experiments](/handbook/engineering/development/growth/experimentation/)
* [GitLab Experiment Guide](https://docs.gitlab.com/ee/development/experiment_guide/)
* [Experimentation Best Practices](/handbook/business-technology/data-team/experimentation-best-practices/)

<details markdown="1">
  <summary markdown="span">Click to view useful terms</summary>

Here are some useful terms used in the context of experimentation. In addition to the definitions 
below, Khan Academy provides [excellent videos](https://www.khanacademy.org/math/ap-statistics/tests-significance-ap) 
explaining these terms and concepts.

* **Null hypothesis (H<sub>0</sub>):** The default hypothesis that there is no relationship 
between variables.
  * In experimentation, we are trying to disprove or reject the null hypothesis.
* **Alternative hypothesis (H<sub>1</sub> or H<sub>A</sub>):** The hypothesis that there is a 
relationship between variables, the opposite of the null hypothesis.
* **Type I error:** The rejection of a true null hypothesis, a "false positive".
* **Type II error:** The non-rejection of a false null hypothesis, a "false negative".
* **Alpha (α):** The probability of committing a Type I error (returning a "false positive"), 
sometimes called the significance level.
  * The industry standard is α = 0.05, which is the value we use for true RCTs but not necessarily 
  for pseudo-RCTs.
  * This value is set _before_ an experiment starts to prevent bias from sneaking into the 
  interpretation of results.
* **p-value:** The probability that the observed results are due to random chance, _assuming 
the null hypothesis is true_.
  * Ex: p=0.03 means that there is a 3% chance that the results you are seeing are due to chance.
  * See the sections above about p-value interpretation for each experiment type.
* **Statistical significance:** Results are considered to be statistically significant if p <= α.
* **Confidence interval (CI):** Range of values that is likely to include a given value within a 
given confidence level (1-α).
* **Beta (β):** The probability of committing a Type II error (returning a "false negative").
* **Power (1-β):** The probability of correctly rejecting the null hypothesis. In other words, 
your ability to detect a difference between experiment variations where there is actually a 
difference between groups.
  * The industry standard for Power is 0.8.
* **Effect size:** The magnitude of difference between groups.
  * We use minimum effect size when designing up experiments (what is the minimum change we want 
  to detect).
* **Sample size:** The number of observations (ex: users, namespaces, etc) included in an experiment.
  * We calculate the minimum sample size required to detect a given size impact in a given metric.

</details>
