---
layout: handbook-page-toc
title: "Data Science Handbook"
description: "GitLab Data Science Team Handbook"
---

## On this page 
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

----

# Data Science at GitLab 


The mission of the Data Science team is to help understand business, customers and products better with model-based insights.
The team accomplishes this mission by building machine learning models and analysing data to convert results into trusted and scalable products. 


## Projects

### Propensity to Buy

- Start Date: 2021-06-30
- [Project](https://gitlab.com/gitlab-data/propensity-to-buy)
- [Data Science Work breakdown](https://gitlab.com/groups/gitlab-data/-/epics/340)
- [Slack Channel](https://gitlab.slack.com/archives/C027EEYL8EL)

### Project Backlog

- Buy (Upsell) Predicted ARR
- Golden Journey - Growth Team - Hila Qu
- PtB.first order  - Growth Team - Hila Qu
- PtB.churn - Customer Success Team - David Sakamoto
- User Segmentation / persona activity, use cases - Product Team - Hila Qu
- Community Sentiment Analysis / twitter, facebook - Product Team
- GitLab MLOps Product Development - Product Team - Taylor
- Feature $ARR uplift prediction - Product Team - Anoop Dawar

# Data Science responsibilities 

- What exactly is data science?! Check out [this video](https://www.youtube.com/watch?v=wRbNExL0hv8) or [these slides](https://docs.google.com/presentation/d/1Y-V6bZ5w8Ms5yfMiuYCYZs9ald7Q5MxydYhSh9DWwwQ/edit?usp=sharing) for a quick overview.

- Responsibilities of data scientists are outlined [here](https://about.gitlab.com/job-families/finance/data-science/) 

- Additionally, the **Data Science Team** supports the following responsibilities:
    - With the **Data Leadership Team**:
        - Defining and publishing a Data Science roadmap to expand analytical capabilities
        - Broadcasting regular updates about data deliverables, ongoing initiatives, and upcoming plans
    - With the [**Data Engineering Team**](https://about.gitlab.com/handbook/business-technology/data-team/organization/engineering/#data-engineering-responsibilities):
        - Helping to define and champion Data Quality practices and programs for GitLab data systems



# Projects structure 

Data Scientists follow [Cross-Industry standard process for data mining (CRISP-DM)](https://en.wikipedia.org/wiki/Cross-industry_standard_process_for_data_mining) to deliver projects, which consists of 6 phases. More detailed breakdown of project structure and code examples can be found (here). 

### Business Understanding 

First step is to define business needs of end users of the project and success criteria. This phase includes gathering requirements, stakeholders interviews, defining vision, user stories for product and use cases for models. This phase is closely aligned with GitLab's [OKRs](https://about.gitlab.com/company/okrs/) and company's value - [Iteration](https://about.gitlab.com/handbook/values/#iteration)

### Data Understanding 

Data understanding is closely aligned with business understanding. It requires to define data sources that business already has in place and the ones that business does not. In this phase data scientists work closely with data engineers and data analysts to define any miscrepancies and risks. If there is a need to bring external data, request should be raised in this phase. 

### Data Preparation 

After defining business needs and data sources it is time to dive into the data! This phase requires conducting [Second data quality check] and [Exploratory data analysis]. At this stage, data scientists are gathering greater understanding of data, its types, correlations and distributions what will be useful in the next phase - modeling.

### Modeling 

Modeling refers to building machine learning model, which consists of training, testing and validating model. Based on Business Understanding phase initial algorithm should be picked and pre-processing should be defined. In this phase, outcomes from Data Preparation are needed as not all algorithms can work with all data types.

### Evaluation 

In this phase, performance of model is measured (if required in Business Understanding) and outcomes are presented to stakeholders and end users for feedback. This phase is strongly aligned with one of the GitLab's values - [Iteration](https://about.gitlab.com/handbook/values/#iteration) After feedback, data scientists iterate on above phases as long as business goal is met.

### Deployment / Productionalization

Once a viable prediction model has been created, the next step is to deploy the model in to the TBD data science production pipeline. This process automatically updates ("re-trains") the model as new data becomes available and generates predictions for all eligable records on a regular cadence.  

# Success Criteria 

Every data science project at GitLab starts and ends with success criteria. 

Success criteria is measured as follows: 

`value_provided = future_state - current_state`

We recognise two types of business outcomes from data science projects: direct and indirect impact.

## Direct Impact 

Projects with direct impact allow to translate project outcomes directly to monetary value. This usually can be achieved by optimisation projects which goal is to reduce time spent on process or increase revenue of company. Below provided examples of success criteria statement for direct impact: 

### Time Saved 

"Our project helped to reduce time spent on process X by 10 000 hours valued at $500k."

### Money earned 

"Our project brought new high-profile customers that brought extra $50 Million to annual revenue"

## Indirect impact 

Projects with indirect impact do not translate directly to monetary value, but provide platform for other decision makers to bring monetary value. These projects are usually the ones where critical insights are provided to stakeholders as scalable product and then used to increase capabilities of decision maker. Below provided examples of success criteria statement for indirect impact:

### Increased Visibility 

"Our project helped stakeholders increase decision making capabilities, which improved sales strategy by 10%."

### Unlock Insights 

"Our project enabled the product team to finally understand who our major customers are and the behaviors they exhibited. This knowledge helped to secure a new customer worth $1M ARR."


# Data Science Tools at Gitlab

- **[Pre-configured JuypterLab Image](https://gitlab.com/gitlab-data/data-science)**: The data science team uses JupyterLab pre-configured with common python modules (pandas, numpy, etc.), native Snowflake connectivity, and git support. Working from a common framework allows us to create models and derive insights faster. This setup is freely available for anyone to use. Check out the the [Jupyter Guide](https://about.gitlab.com/handbook/business-technology/data-team/platform/jupyter-guide/) for additional information.

- **[gitlabds python tools](https://gitlab.com/gitlab-data/gitlabds/)**: Functions to help automate common data prep (dummy coding, outlier detection, variable reduction, etc.) and modeling tasks (i.e. evaluating model performance). Install directly via `pip install gitlabds` or use as part of the JupyterLab image above.

- **Modeling Templates** (**Coming Soon!**)



# Useful Data Science & Machine Learning Resources

- _Python Data Science Handbook_ by Jake VanderPlas: Great for beginngers looking to learn python and dip their toes into data science.

- _Python Machine Learning_ by Sebastian Raschka & Vahid Mirjalili: More advanced topics with the assumption of a basic level of python.

- _The Elements of Stastical Learning, Data Mining, Inference, and Prediction_ by Trevor Hastie, Robert Tibshirani, & Jerome Friedman: Great deep dive into all the statistics and logic behind many of the commonly used predictive techniques. Can be pretty stats/math heavy at time.

# Common Data Science Terms 

Below listed common data science terms that are used by team. 


**Data Science (DS)** - interdisciplinary field that uses computer science, statistical techniques and domain expertise to extract insights from data

**Machine Learning (ML)** - use and development of algorithms without being explicitly programmed to determine patterns in data

**Algorithm** -  sequence of computer-implementable instructions used to solve specific problem

**Feature** - single column in dataset that can be used for analysis, such as country, age etc. Sometimes refered to as variables or attributes 

**Feature Engineering** -  process of selecting, combining and transforming data into features

**Weight** - numerical value assigned to feature that determines it's strength

**Model** - an applied algorithm with weights determined by input data

**Imputation** - process of replacing missing data with substituted values

**Training** -  assigning weights in a model based on input data

**Testing** - comparing predicted values from trained model to actual values 

**Classification** - process of predicting categories for each data point 

**Regression** - process of predicting continuous numerical variable for each data point 

**Clustering** - process of definining groupings in dataset 









