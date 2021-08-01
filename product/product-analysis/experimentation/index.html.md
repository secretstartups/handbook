---
layout: markdown_page
title: Experimentation Design & Analysis Framework
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

## Additional Resources

You can find additional experimentation resources throughout the handbook and GitLab docs. 
Here are a few pages to check out:

* [How Growth launches experiments](/handbook/product/growth/#how-growth-launches-experiments)
* [Growth Engineering Guide to running experiments](/handbook/engineering/development/growth/experimentation/)
* [GitLab Experiment Guide](https://docs.gitlab.com/ee/development/experiment_guide/)

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
