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

## Data Science Responsibilities 
Of the [Data Team's Responsibilities](https://about.gitlab.com/handbook/business-technology/data-team/#responsibilities) the Data Science Team is **directly responsible** for:

- A
- B
- C

Additionally, the Data Analytics Team **supports** the following responsibilities:

- With the **Data Leadership Team**:
  - Defining and publishing a Data Science strategy that has a direct impact on business KPIs
  - Broadcasting regular updates about data deliverables, ongoing initiatives, and upcoming plans
- With the [**Data Engineering Team**](/handbook/business-technology/data-team/organization/engineering/#data-engineering-responsibilities):
  - Helping to define and champion Data Quality practices and programs for GitLab data systems
  - productionalizing models, ensuring data quality and integrity, shaping datasets to be conductive with advanced analytics and machine learning, brining new datasets online
- With the Data Analytics Team:
  - dashboard to enhance the value and impact of the data science models.

## What is Data Science?
Check out this brief overview of what data science is at Gitlab:
<figure class="video_container">
  <iframe src="https://www.youtube.com/watch?v=wRbNExL0hv8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>

([Corresponding slides](https://docs.google.com/presentation/d/1Y-V6bZ5w8Ms5yfMiuYCYZs9ald7Q5MxydYhSh9DWwwQ/edit?usp=sharing))

### Data Science Tools at Gitlab

- **[Pre-configured JuypterLab Image](https://gitlab.com/gitlab-data/data-science)**: The data science team uses JupyterLab pre-configured with common python modules (pandas, numpy, etc.), native Snowflake connectivity, and git support. Working from a common framework allows us to create models and derive insights faster. This setup is freely available for anyone to use. Check out the the [Jupyter Guide](/handbook/business-technology/data-team/platform/jupyter-guide/) for additional information.
- **[gitlabds python tools](https://gitlab.com/gitlab-data/gitlabds/)**: Functions to help automate common data prep (dummy coding, outlier detection, variable reduction, etc.) and modeling tasks (i.e. evaluating model performance). Install directly via `pip install gitlabds` or use as part of the JupyterLab image above.
- **Modeling Templates** (**Coming Soon!**)

### Common Data Science Terms 
- **Algorithm** -  sequence of computer-implementable instructions used to solve specific problem
- **Classification** - process of predicting categories for each observation. For example, determining if a picutre is of a cat or a dog. 
- **Clustering** - process of finding natural groupings of observations in dataset. Often used for segmenation of product users or customers.
- **Data Science (DS)** - interdisciplinary field that uses computer science, statistical techniques and domain expertise to extract insights from data
- **Feature** - single column in dataset that can be used for analysis, such as country, age etc. Sometimes refered to as variables or attributes 
- **Feature Engineering** -  process of selecting, combining and transforming data into features that can be used by ML algorithms 
- **Imputation** - process of replacing missing or incorrect data with statistical "best guesses" of the actual values
- **Machine Learning (ML)** - use and development of algorithms without being explicitly programmed to determine patterns in data
- **Model** - A complex set of mathematical formulas that generates preditions
- **Regression** - process of predicting continuous numerical variable for each observation. For example, predicting a person's income.
- **Training** -  Applying an algorithm to data to generate a model
- **Test Dataset** - Deliberately excluding some observations from training the model so they can be used to test how well the model predicts  
- **Weight** - numerical value assigned to feature that determines it's strength

## Handbook First on Data Science Team
At GitLab we are [Handbook First](https://about.gitlab.com/handbook/handbook-usage/#why-handbook-first) and drive this by ensuring the data science team page remains updated with the most accurate information regarding data science projects and methologies. We also strive to keep the handbook updated with useful resources and the current iteration of data science tools we are devloping. 

## Projects
| Name | Maturity | Objective | Sponsor | Epic | Last Update | Next Update | Deliverables
| -----| ----- | ------ |-----| ------ |-----| -----| -----| 
| [Propensity to Expand](https://gitlab.com/gitlab-data/propensity-to-buy) (PtE) | Ad hoc | Determine which paid accounts are likely to expand their ARR by > 10% in next 3 months | Sales | https://gitlab.com/groups/gitlab-data/-/epics/340 | FY22-Q3 | FY22-Q4 | [Exec Summary](https://docs.google.com/presentation/d/1Aaf2HzFYrYDPgrZKDHxS9gzep4LHGMlwF5SxYs-her0/edit#slide=id.gf528ae95ed_0_0), [PtE Inspector](https://app.periscopedata.com/app/gitlab:safe-dashboard/951374/PtE-Inspector), [PtE Results Dashboard](https://app.periscopedata.com/app/gitlab:safe-dashboard/958412/PtE-Results) |
| [Propensity to Contract](https://gitlab.com/gitlab-data/propensity-to-contract) (PtC) | Planned | Determine which paid accounts are likely to reduce their ARR by > 10% or $1000 | Customer Success | https://gitlab.com/groups/gitlab-data/-/epics/382 | | FY23-Q4 ||
| User Segmentation | Planned | - | Growth | || FY23-Q1 | | 
| Propensity to Make First Purchase | Planned | - | Growth | || FY23-Q1 || |
| Golden Journey | Planned | - | Growth | || FY23-Q2 | | 
| Stage Adoption MRI | Planned | - | | || FY23-Q2 | | 
| Product Usage Event | Planned | - | | || FY23-Q3 | |
| Marketing Lead Scoring | Planned | - | Marketing | || FY23-Q4 | |  
| Expansion Predicted ARR | Unplanned | - | Sales | | | | |  
| Community Sentiment Analysis | Unplanned | - | Product | | | | | 
| Feature $ARR Uplift Prediction | Unplanned | - | Product (Anoop) | | | | | 
| GitLab MLOps Product Development | Unplanned | - | Product (Taylor) | | | | | 

### Maturity
- **Unplanned**: Not implemented, and not yet on our roadmap
- **Planned**: Not implemented, but on our roadmap.
- **Ad hoc**: Complete, but must be run manually on local machine
- **Deployed**: Complete, and fully implmented into Data Team cloud infrastructure 
- **Optmized**: Fully automated and self-service

### Project Slack Channels
- [#data-propensity-projects](https://gitlab.slack.com/archives/C02172C5KH7): For PtE & PtC

### Project Structure 

The Data Science Team follows [Cross-Industry standard process for data mining (CRISP-DM)](https://en.wikipedia.org/wiki/Cross-industry_standard_process_for_data_mining) to deliver projects, which consists of the following 6 phases:

##### Business Understanding 

The first step is to understand the business needs of the stakeholders and the success criteria of the project. This phase includes requirements gathering, stakeholders interviews, project defintion, product user stories, and potential use cases. This phase is closely aligned with GitLab's [OKRs](https://about.gitlab.com/company/okrs/) and company's value - [Iteration](/handbook/values/#iteration)

##### Data Understanding 

Data understanding is closely aligned with business understanding. It requires determining the breadth and scope of existing relevant datasources. In this phase, data scientists work closely with data engineers and data analysts to determine where gaps may exist and to identify any data discrepancies or risks. If there is a need to bring external data, a request should be raised in this phase. 

##### Data Preparation 

After defining business needs and data sources, it is time to dive into the data! This phase requires conducting data quality checks and exploratory data analysis (EDA). At this stage, data scientists are developing a greater understanding of data and how different datapoints relate to solving the business need.This will be very useful in the next phase - modeling.

##### Modeling 

Modeling refers process by which various machine learning techniques are used to find a solution that addresses the business need. This often takes the form of predicting why/when/how future instances of a business outcome will occur (e.g. which customers are likely to churn in the next 6 months?). This is achieved by looking at the complex mathematical relationships between the data and the outcome. Often, this process is referred to as "training the model."

##### Evaluation 

Performance is generally measured by how _accurate_, _powerful_, and _explainable_ the model is. Findings are presented to the stakeholders for feedback. This phase is strongly aligned with the GitLabs values of [Iteration](/handbook/values/#iteration) Incorporating feedback, data scientists iterate over _Modeling_ and _Evalution_ long as business goal is met.

##### Deployment

Once the model has been approved by the stakeholders, it then gets deployed into the data science production pipeline. This process automatically updates, generates predictions, and monitors the model on a regular cadence.  

## Useful Data Science & Machine Learning Resources

- **_Python Data Science Handbook_** by Jake VanderPlas: Great for beginngers looking to learn python and dip their toes into data science.

- **_Python Machine Learning_** by Sebastian Raschka & Vahid Mirjalili: More advanced topics with the assumption of a basic level of python.

- **_The Elements of Stastical Learning, Data Mining, Inference, and Prediction_** by Trevor Hastie, Robert Tibshirani, & Jerome Friedman: Great deep dive into all the statistics and logic behind many of the commonly used predictive techniques. Can be pretty stats/math heavy at time.





