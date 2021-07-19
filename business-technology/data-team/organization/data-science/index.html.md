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

### Propensity to Buy -> Account Score

- [Development Epic](https://gitlab.com/groups/gitlab-data/-/epics/302)
- Start Date: 2021-06-30
- [Slack Channel](https://gitlab.slack.com/archives/C027EEYL8EL)


## Tools 

The Data Science team uses Python and Jupyter to deliver projects. 

# Data Science responsibilities 

Responsibilities of data scientists are outlined [here](https://about.gitlab.com/job-families/finance/data-science/) 

Additionally, the **Data Science Team** supports the following responsibilities
- With the **Data Leadership Team**:
    - Defining and publishing a Data Science roadmap to expand analytical capabilities
    - Broadcasting regular updates about data deliverables, ongoing initiatives, and upcoming plans
- With the [**Data Engineering Team**](/handbook/business-technology/data-team/organization/engineering/#data-engineering-responsibilities):
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

### Deployment 

Once success criteria has been met, If it is ad-hoc analysis then no production deployment is needed, only handover to end-users. In last phase it is important to remember about [Handbook First](https://about.gitlab.com/company/culture/all-remote/handbook-first-documentation/) approach, although it is recommended to document efforts regularly, during all phases. 


# Success Criteria 

Every data science project at GitLab starts and ends with success criteria. 

Success criteria is measured as follows: 

`value_provided = future_state - current_state`

We recognise two types of business outcomes from data science projects: direct and indirect impact.

## Direct impact 

Projects with direct impact allow to translate project outcomes directly to monetary value. This usually can be achieved by optimisation projects which goal is to reduce time spent on process or increase revenue of company. Below provided examples of success criteria statement for direct impact: 

### Time saved 

"Our project helped to reduce time spent on process X by 10 000 hours valued at $500k."

### Money earned 

"Our project brought new high-profile customers that brought extra $50 Million to annual revenue"

## Indirect impact 

Projects with indirect impact do not translate directly to monetary value, but provide platform for other decision makers to bring monetary value. These projects are usually the ones where critical insights are provided to stakeholders as scalable product and then used to increase capabilities of decision maker. Below provided examples of success criteria statement for indirect impact:

### Increased visibility 

"Our project helped stakeholders increase decision making capabilities, which improved sales strategy by 10%."

### Capability unlock 

"Our project enabled the product team to finally understand who our major customers are and the behaviors they exhibited. This knowledge helped to secure a new customer worth $1M ARR."


## Tools setup

Currently data science team uses DataLab to build models and derive insights. DataLab is a built-in Jupyter instance provided by Google Cloud. To setup DataLab for your @gitlab.com account, follow these steps:


- [ ] Raise Access Request (AR) for Google Cloud Credentials. To do that please follow instructions here or create separate issue and copy contents from [here](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/) or create separate issue and copy contents from [here](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/10306#note_622125437). Ensure you update your name and other personal details and project name is ``gitlab-analysis.`` Assign it to your manager.
- [ ] Raise AR for DataLab setup for ``gitlab-analysis``, similar way as previous step. Assign it to your manager. You can also tag project owners (Dennis van Rooijen, Paul Armstrong or Ved Prakash) if you need help.
- [ ] Please follow next step after running onboarding template, once you added GOOGLE_APPLICATION_CREDENTIALS path to your .zshrc` file which can be accessed by vi ~/.zshrc``. One of the project owners should send you configuration json file, which is important to add in your google credentials. Follow below steps:
- [ ] Download the json file provided.
- [ ] Copy the path  including file_name.
- [ ] Open terminal and run vi ~/.zshrc
- [ ] If you already have variable  GOOGLE_APPLICATION_CREDENTIALS  modify its value to the file path and file name. To modify value please click ``I`` on your keyboard which stands for insert - it will allow you to modify content. If you don’t have this variable then use below command:

export GOOGLE_APPLICATION_CREDENTIALS = <File_path>/<file_name>

then :wq! to write and exit file (w stands for write and q stands for quit)

- [ ] Refresh this file by sourcing it back, by running command in terminal: ``source ~/.zshrc``.
- [ ] After approved AR install and initialise Google Cloud SDK (which stands for software development kit) to which instructions are provided [here](https://cloud.google.com/sdk/docs/install).. After download and installation follow point a and b, especially commands in terminal.
- [ ] Run ``gcloud components install datalab`` in your terminal
- [ ] Project owner should provide you name of your Datalab instance, the most likely it will be your_gitlab_handle-datalab-project. If you do not receive it follow up with owners by tagging them in access request issue or texting them directly on slack. Once you have name of your instance connect to DataLab by using datalab connect your_gitlab_username-datalab-project. 

If you receive error
"The specified Datalab instance was created for your_gitlab_username@gitlab.com, but you are attempting to connect to it as your_gitlab_username@gitlab-analysis.iam.gserviceaccount.com". Then re-run the command as
datalab connect your_gitlab_username-datalab-project --no-user-checking

- [ ] Open your browser and type localhost:8081. It may take couple minutes to connect, so if nothing comes up refresh website or validate with project owners if your access has been granted properly. You should be all set!




