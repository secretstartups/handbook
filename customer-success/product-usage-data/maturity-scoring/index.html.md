---
layout: handbook-page-toc
title: "Use Case Adoption Scoring"
description: "An overview of Adoption Scoring, how it is calculated, and how CSMs can use the information with customers in their conversations."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

*For an overview of Gainsight, and information about how to login, please refer to the [Gainsight Overview Page](/handbook/sales/gainsight/).*

For an overview of how CSMs use Gainsight, please refer to the [Gainsight CSM Overview Page](/handbook/customer-success/csm/gainsight)

## Adoption Scoring

Use case Adoption scoring will assist CSMs in understanding a customer's adoption state based on a specific list of metrics. 
By looking at the Adoption scores, the CSM will gain an understanding of the customer's current state in the adoption journey.

<details>
  <summary markdown="span"> Building Adoption Scores </summary>

### Metrics Availability & Evaluation
The first step in the process of building a Use Case adoption score starts with identifying active metrics that can gauge a customer’s level of performance and adoption for a given use case. To capture the breadth of use case adoption, there should be a minimum of 3 and ideally 5-7 metrics to be able to provide a comprehensive score. Product Management and Customer Success teams play a big role in identifying use case specific metrics. Product Marketing works with Product Managers to identify Adoption Recommendations for each use case which can be viewed on the the respective Use Case Resource Pages. After identifying a sufficient list of metrics, we move on to identifying the denominator to normalize the metric (i.e. `Git Operations - User L28D` / by `Billable Users` = `Git Operation Utilization %`). 

<details>
  <summary markdown="span"> Use Case Resource Pages </summary>
  - [SCM](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/version-control-collaboration/#adoption-recommendation)
  <br>
  - [CI](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/ci/#adoption-recommendation)
  <br>
  - [CD](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/cd/#adoption-recommendation)
  <br>
  - [Security (DevSecOps)](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/devsecops/)
  <br>
  - [Compliance](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/compliance/)
  <br>
  - [Artifact Management (Package)](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/package/)
  <br>
  - [GitOps](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/gitops/#adoption-recommendation)
  <br>
  - [Agile](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/agile/#adoption-recommendation)
  </details>

### Threshold and weighting analysis
The threshold percentages are chosen by looking at how many customers fall into certain quartiles as well as looking at the averages/median for a subset of customers that we know have healthy usage in this use case. Combining those two gets us to a great starting point of where those percentages should be for each metric. We then look at how many customers would fall into each color based on that starting point. There are some final tweaks after that as well as getting feedback from other teams on those percentages that are set for each color. 
<br>
### Testing
This is an important part of validating the selected metrics, thresholds, weighting, and data integrity. The process entails calculating the score for at least 15-20 real accounts, specifically where we have a good understanding of their adoption of the given use case, which we can then share with the CSMs to confirm the resulting score. 
<br>
### Operationalize in Gainsight
Use Case Adoption metrics currently live in Gainsight, which is planned to change in the future as Gitlab continues to evaluate new BI tools, but for now, we currently calculate the Adoption score using the Adoption Use Case usage reports in Gainsight. This report contains normalized metrics (i.e. `CI Pipelines - L28D` / `Billable Users` = `CI Pipelines Utilization %`) which are currently calculated using Gainsight Rules Engine. 
<br>
### Enablement
The last piece is enabling CSMs to be able to calculate the score, formulate the customer-facing slide deck and be able to present the score in detail. This requires cross-functional partnership between CSMs, CSM Managers, Enablement and CSOps, where a CSM will usually lead the enablement sessions with a mock presentation, while CSOps handle Q&A and any follow-ups that may come out of those enablement sessions. 
<br>
### Iterate and improve
With a product that updates monthly while also adding new features to the Gitlab use cases, we have an ongoing process to update the respective adoption scores, aiming for the most accurate depiction of use case adoption by our customers. As new features are built and made available, new metrics are also instrumented by the respective product teams to be able to provide insights to customers that can help customers improve their experience and attain their DevOps goals with Gitlab. 
<br>

</details>

### CI Adoption Scoring

The following primary and ancillary metrics are used to determine a customer's CI Adoption Score: 
<br>
![CI Adoption Scoring](https://lucid.app/publicSegments/view/14463ed0-bdf2-47a1-998b-40a6bdba9986/image.png)
<br>
[Adoption Guide Reference Link](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/ci/#adoption-guide)

#### Resources

- [Use Case Adoption Scoring - Defined Metrics](https://docs.google.com/spreadsheets/d/1dJLQIwoQxSK6pJL-ZmbMK_VUBmY0INZPgVsWqsypHzI/edit?usp=sharing) (internal only)
- [Template Deck for Customer Conversations](https://docs.google.com/presentation/d/1Zn5gyUrBRgA1fyprVuoA24FKiH_3fpT5KuL5vK6GcuE/edit#slide=id.g110af81e0a3_0_215) (internal only)
    - In order to generate the slides shown in the video above - this [Google sheet](https://docs.google.com/spreadsheets/d/1wPrQRS9XGJek4oWcZPe9QeaFne9scbJVZYuvEioE2GI/edit#gid=1737266116) can help. 
        - Instructions on using the sheet can be found in this [internal video](https://youtu.be/oWuX_jtLnLI)
- Use the [Use Case Adoption Scorecard](https://gitlab.gainsightcloud.com/v1/ui/dashboard#/f18df482-a70f-4a8b-8c82-1f99538d777e) dashboard in Gainsight to view your customer's CI Metrics to export and calculate the Adoption score
- [Value Statements for CI Adoption Score](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/delivery-automation/#customer-adoption-and-value)
    - This should help guide the conversation around how CI Adoption is measured and how to improve adoption.

#### Additional CSM enablement 
In this (internal) video a fellow CSM walks you through:
- How the CI Adoption score is calculated 
- Template slides to showcase a customer's Adoption
- Key conversation drivers such as:
  - How the customer is currently progressing on their path to CI Adoption
  - How the customer compares with other similar customer's in the industry 
  - Key areas of focus on the adoption journey

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/zurUFQDSWt8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>  
<!-- blank line -->

- CI Adoption Scoring Walk-through 
    - [Session 1](https://youtu.be/E4IMgFWGkNM) (internal only)
    - [Session 2](https://chorus.ai/meeting/E4F00AFC0C4A4036A7AC370653A50112?) (internal only)
    - [Value Statements for CI Adoption](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/delivery-automation/#customer-adoption-and-value)


### Security (DevSecOps) Adoption Scoring
The following metrics are used to determine a customer's Security Adoption Score:
<br>
![DevSecOps Adoption Scoring](https://lucid.app/publicSegments/view/ab7a9ef5-d69c-47ff-9dc0-defe3e8f8610/image.png)
<br>
[Adoption Guide Reference Link](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/devsecops/#adoption-guide)
<br>

#### Resources

- [Use Case Adoption Scoring - Defined Metrics](https://docs.google.com/spreadsheets/d/1dJLQIwoQxSK6pJL-ZmbMK_VUBmY0INZPgVsWqsypHzI/edit?usp=sharing) (internal only)
- [Template Deck for Customer Conversations](https://docs.google.com/presentation/d/1JdRlS5G9iB0XMMWktYxYBDCnhVs2Ti-I6jBW0q61YZk/edit?usp=sharing) (internal only)
   - In order to generate the slide - this [Google sheet](https://docs.google.com/spreadsheets/d/1wPrQRS9XGJek4oWcZPe9QeaFne9scbJVZYuvEioE2GI/edit#gid=1737266116) can help. 
        - Instructions on using the sheet can be found in this Artifact Generator How to [internal video](https://youtu.be/pLp2Y0oZuc0)
- Use the [Use Case Adoption Scorecard](https://gitlab.gainsightcloud.com/v1/ui/dashboard#/f18df482-a70f-4a8b-8c82-1f99538d777e) dashboard in Gainsight to view your customer's Security (DevSecOps) Metrics to export and calculate the Adoption score
- [Value Statements](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/devsecops/#the-gitlab-solution)
- Additional CSM Enablement - [Session 1](https://youtu.be/VXtiPVrOzS4) (internal only).  [Session 2](https://youtu.be/xwj-vHMYcUE) (internal only)

### CD Adoption Scoring
The following metrics are used to determine a customer's CD Adoption Score:
<br>
![CD Adoption Scoring](https://lucid.app/publicSegments/view/52a3c35f-a4c0-4632-ab89-258a02d78042/image.jpeg)
<br>
[Adoption Guide Reference Link](https://about.gitlab.com/handbook/marketing/brand-and-product-marketing/product-and-solution-marketing/usecase-gtm/cd/#adoption-guide)
<br>

#### Additional CSM enablement 
In this (internal) [enablement session](https://youtu.be/MQkIlvlsBUA), CSOps & a fellow CSM will walk you through:
- How & Why we chose the CD Metrics
- How thresholds are established
- How to calculate and build a customer-ready presentation deck
- What are deployments? Why do they matter? How to drive the conversation with customers
- Three customer scenarios with different deployment strategies

<!-- blank line -->
<iframe width="560" height="315" src="https://www.youtube.com/embed/MQkIlvlsBUA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<!-- blank line -->

#### Resources
- [Use Case Adoption Scoring - Defined Metrics](https://docs.google.com/spreadsheets/d/1dJLQIwoQxSK6pJL-ZmbMK_VUBmY0INZPgVsWqsypHzI/edit?usp=sharing) (internal only)
- [Template Deck for Customer Conversations](https://docs.google.com/presentation/d/1T4vINvjXu4dGBEUHdZb3ohxJG91p11QC1zOWrUNHD4E/edit?usp=sharing) (internal only)
    - In order to generate the slides shown in the video above - this [Google sheet](https://docs.google.com/spreadsheets/d/1wPrQRS9XGJek4oWcZPe9QeaFne9scbJVZYuvEioE2GI/edit#gid=1737266116) can help. 
        - Instructions on using the sheet can be found in this [internal video](https://youtu.be/oWuX_jtLnLI)
- Use the [Use Case Adoption Scorecard](https://gitlab.gainsightcloud.com/v1/ui/dashboard#/f18df482-a70f-4a8b-8c82-1f99538d777e) dashboard in Gainsight to view your customer's CI Metrics to export and calculate the Adoption score

<br>

##### **Disclaimer:**  The scoring criterias & thresholds will continue to evolve as we iterate
