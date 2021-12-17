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

The mission of the data science team is to facilitate making better decisions faster using predictive analytics.

## Data Science Responsibilities 
Of the [Data Team's Responsibilities](https://about.gitlab.com/handbook/business-technology/data-team/#responsibilities), the Data Science Team is **directly responsible** for:

- Delivering _descriptive_, _predictive_, and _prescriptive_ solutions that promote and improve [Gitlab's KPIs](https://about.gitlab.com/company/kpis/)
- Being a **_Center of Excellence_** for advanced analytics and supporting other teams in their data science endeavors 
- Developing tooling, processes, and best practices for data science and machine learning

Additionally, the Data Science Team **supports** the following responsibilities:

- With **Data Leadership**:
  - Scoping and executing a data science strategy that directly impacts business KPIs
  - Broadcasting regular updates about data deliverables, ongoing initiatives, and roadmap
- With the [**Data Engineering Team**](https://about.gitlab.com/handbook/business-technology/data-team/organization/engineering/):
  - Defining and championing data quality best practices and programs for GitLab data systems
  - Deploying data science models, ensuring data quality and integrity, shaping datasets to be compatible with machine learning, and brining new datasets online
- With the [**Data Analytics Team**](https://about.gitlab.com/handbook/business-technology/data-team/organization/analytics/):
  - Incorpating data science into analytics initiatives
  - Designing dashboard to enhance the value and impact of the data science models

## What is Data Science?
Check out this brief overview of what data science is at Gitlab:

<!-- blank line -->
<figure class="video_container">
  <iframe src="https://www.youtube.com/embed/wRbNExL0hv8" frameborder="0" allowfullscreen="true"> </iframe>
</figure>
<!-- blank line -->

([Corresponding slides](https://docs.google.com/presentation/d/1Y-V6bZ5w8Ms5yfMiuYCYZs9ald7Q5MxydYhSh9DWwwQ/edit?usp=sharing))

### Data Science Tools at Gitlab

- **[Pre-configured JuypterLab Image](https://gitlab.com/gitlab-data/data-science)**: The data science team uses JupyterLab pre-configured with common python modules (pandas, numpy, etc.), native Snowflake connectivity, and git support. Working from a common framework allows us to create models and derive insights faster. This setup is freely available for anyone to use. Check out our [Jupyter Guide](/handbook/business-technology/data-team/platform/jupyter-guide/) for additional information.
- **[gitlabds python tools](https://gitlab.com/gitlab-data/gitlabds/)**: Functions to help automate common data prep (dummy coding, outlier detection, variable reduction, etc.) and modeling tasks (i.e. evaluating model performance). Install directly via [pypi](https://pypi.org/project/gitlabds/) (`pip install gitlabds`), or use as part of the above JupyterLab image.
- **[Modeling Templates](https://gitlab.com/gitlab-data/data-science/-/tree/main/templates)**: The data science team has created modeling templates to allow you to easily start building predictive models without writing python code from scratch. To enable these templates, follow the instructions on the [Jupyter Guide](/handbook/business-technology/data-team/platform/jupyter-guide/#enabling-jupyter-templates).

### Common Data Science Terms 
- **Algorithm** -  sequence of computer-implementable instructions used to solve specific problem
- **Classification** - process of predicting a category for each observation. For example, determining if a picutre is of a cat or a dog. 
- **Clustering** - process of finding natural groupings of observations in dataset. Often used for segmenation of users or customers.
- **Data Science (DS)** - interdisciplinary field that uses computer science, statistical techniques and domain expertise to extract insights from data
- **Feature** - single column in dataset that can be used for analysis, such as country or age. Also refered to as variables or attributes 
- **Feature Engineering** -  process of selecting, combining and transforming data into features that can be used by machine learning algorithms 
- **Imputation** - process of replacing missing or incorrect data with statistical "best guesses" of the actual values
- **Machine Learning (ML)** - use and development of algorithms without being explicitly programmed to determine patterns in data
- **Model** - A complex set of mathematical formulas that generates preditions
- **Regression** - A statistical method for predicting an outcome. For example, predicting a person's income, or how likely a customer is to churn
- **Training** -  Applying an algorithm to data to generate a model
- **Test Dataset** - Deliberately excluding some observations from training the model so they can be used to test how well the model predicts  
- **Weight** - numerical value assigned to feature that determines it's strength

## Handbook First on Data Science Team
At GitLab we are [Handbook First](https://about.gitlab.com/handbook/handbook-usage/#why-handbook-first) and drive this by ensuring the data science team page remains updated with the most accurate information regarding data science projects and methologies. We also strive to keep the handbook updated with useful resources and the current iteration of data science tools we are devloping. 

## Projects
| Name | Maturity | Objective | Sponsor | Epic | Last Update | Next Update | Deliverables |
| ----- | -----| -----| -----| ----- | ----- | ----- | ----- | 
| [Propensity to Expand](https://gitlab.com/gitlab-data/propensity-to-buy) (PtE) | Viable | Determine which paid accounts are likely to expand their ARR by > 10% in next 3 months | Sales | https://gitlab.com/groups/gitlab-data/-/epics/340 | FY22-Q3 | FY22-Q4 | [Exec Summary](https://docs.google.com/presentation/d/1Aaf2HzFYrYDPgrZKDHxS9gzep4LHGMlwF5SxYs-her0/edit#slide=id.gf528ae95ed_0_0), [PtE Inspector](https://app.periscopedata.com/app/gitlab:safe-dashboard/951374/PtE-Inspector), [PtE Results Dashboard](https://app.periscopedata.com/app/gitlab:safe-dashboard/958412/PtE-Results) |
| [Propensity to Contract](https://gitlab.com/gitlab-data/propensity-to-contract) (PtC) | Viable | Determine which paid accounts are likely to reduce their ARR by > 10% or $1000 | Customer Success | https://gitlab.com/groups/gitlab-data/-/epics/382 | FY22-Q4 | FY23-Q1 ||
| User Segmentation | Planned | - | Growth | | | FY23-Q1 | | 
| Propensity to Make First Purchase | Planned | - | Growth | | | FY23-Q1 | | 
| Golden Journey | Planned | - | Growth | | | FY23-Q2 | | 
| Stage Adoption MRI | Planned | - | | | | FY23-Q2 | | 
| Product Usage Event | Planned | - | | | | FY23-Q3 | |
| Marketing Lead Scoring | Planned | - | Marketing | | | FY23-Q4 | |  
| Expansion Predicted ARR | Unplanned | - | Sales | | | | |  
| Community Sentiment Analysis | Unplanned | - | Product | | | | | 
| Feature $ARR Uplift Prediction | Unplanned | - | Product (Anoop) | | | | | 
| GitLab MLOps Product Development | Unplanned | - | Product (Taylor) | | | | | 

### Maturity
Maturity of data science projects closely follows the [Gitlab product maturity model](https://about.gitlab.com/direction/maturity/):
- **Unplanned**: Not implemented, and not yet on our roadmap.
- **Planned**: Not implemented, but on our roadmap; executive sponsor attached to project.
- **Viable**: Available, but not fully productionalized yet; scores and insights manually generated; low adoption outside of immediate stakeholders.
- **Complete**: Fully implemented into Data Team cloud production infrastructure; increasing adoption of corresponding dashboards and scores within the intended organization.
- **Optimized**: Fine-tuned, fully automated, and self-service; continuous model monitoring and scoring; high adoption within intended organization.

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





