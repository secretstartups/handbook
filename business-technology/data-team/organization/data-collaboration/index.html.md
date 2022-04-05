---
layout: handbook-page-toc
title: "Data Collaboration Handbook"
description: "GitLab Data Collaboration Team Handbook"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

----


# Data Collaboration at GitLab 

The mission of the Data Collaboration Team is to enable everyone in the company to work better together using data and data tools.

## Team Structure

- [@mlaanen](https://gitlab.com/mlaanen) - Lead
- [@ttnguyen28](https://gitlab.com/ttnguyen28) - BI DRI
- [@ken_aguilar](https://gitlab.com/ken_aguilar)

## Handbook First

At GitLab we are [Handbook First](https://about.gitlab.com/handbook/handbook-usage/#why-handbook-first) and promote this concept by ensuring the data collaboration team page remains updated with the most accurate information regarding our objectives, processes, and projects. We also strive to keep the handbook updated with useful resources and our data toolset. 

## Data Collaboration Responsibilities 

Of the [Data Team's Responsibilities](https://about.gitlab.com/handbook/business-technology/data-team/#responsibilities), the Data Collaboration Team is **directly responsible** for:

- Administration of our Sisense CDT BI platform
- Initial triage and traffic management of data issues
- Evaluation and selection of new BI platforms
- Future administration of Product Analytics platforms
- Being a **_Center of Excellence_** for business intelligence and data vizualization
- Create a catalog for data assets, improving the findability of data

Additionally, the Data Collaboration Team **supports** the following responsibilities:

- With **Data Leadership**:
  - Scoping and executing a data analytics strategy that directly impacts business KPIs
  - Broadcasting regular updates about deliverables, ongoing initiatives, and roadmap

## How We Work

*Coming soon*

### Team Roles

*Coming soon*

### Data Analytics Tools

*Coming soon*

## Key Projects

- [New BI Platform Evaluation and Deployment](https://gitlab.com/groups/gitlab-data/-/epics/470)
- [Rollout Product Analytics Tool to Growth](https://gitlab.com/groups/gitlab-data/-/epics/514)
- [Develop Subject Matter Expert Lookup](https://gitlab.com/gitlab-data/functional-analytics-center-of-excellence/-/issues/2)

### Project Structure 

*Coming soon*

### Current State of Business Intelligence

Currently, analysts and knowledge workers in the company have a few options to analyze structured data from the [data warehouse](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-warehouse), primarily those listed below:

| Solution | Good for | Limitations | 
| ------ | ------ | ----- |
|[Sisense for Cloud Data Teams](https://about.gitlab.com/handbook/business-technology/data-team/platform/periscope/) | Heavy SQL users to create data vizualizations | Difficult to use for non-SQL users, limited filtering capabilities, no data modeling capabilities| 
| [Google Data Studio](https://about.gitlab.com/handbook/business-technology/data-team/platform/#google-data-studio)| Integrations well with other Google products | Limited data modeling and data vizualisation capabilities, limited access to data | 
| Google Sheets | Easy to use | Limited in how much data it can handle | 
| Solutions specific to business functions, including Gainsight, Salesforce, Google Analytics, etc. | Solves for business function specific use cases | Can't solve for other use cases outside of its primary domain | 

What is missing from all these solutions is a governed way to enable data analytics across the company. None of the platforms currently in use have robust granular access controls, robust data modeling and data governance capabilities, or world class data vizualisation capabilities. Furthermore, these platforms only enable a subset of out entire team member base to be proficient analyzing data. This impacts us in the following ways:
- Instead of democratizing data analytics, most data analytics work is put on specific team members who face an ever growing backlog of issues and risk becoming bottle necks. 
- The lack of robust granular access controls results in increased overhead to enforce the principle of least privilige, like the need to create our [SAFE intermediate space](https://about.gitlab.com/handbook/business-technology/data-team/platform/safe-data/#what-is-safe-data) due to the lack of row and column level permissions.
- The lack of robust data governance capabilities in the platforms we use for analytics purposes could result in different numbers being displayed for the same metrics.
- The lack of world class data vizualisation options results in less useable dashboards, as many data vizualization [best practices](https://www.perceptualedge.com/articles/Whitepapers/Communicating_Numbers.pdf) can't always be implemented in our current toolset.


### Current State of Product Analytics

*Coming soon*


### Future State of Business Intelligence

*Coming soon*


### Future State of Product Analytics

*Coming soon*


## Useful Resources

### Slack Channels

- [#bt-data-collaboration](https://gitlab.slack.com/archives/C036ADU4EH3): Internal Data Collaboration Team
- [#bt-data-new-bi-tool-evaluation](https://gitlab.slack.com/archives/C02S5SBRMR9): New BI Tool Evaluation
- [#product-analytics-platform](https://gitlab.slack.com/archives/C022RCEPK9V) - New Product Analytics tools
- [#bt-data-posthog-pilot](https://gitlab.slack.com/archives/C035VQ1S153) - PostHog Implementation
- [#gitlab-posthog-data](https://gitlab.slack.com/archives/C02QQGGG6FJ) - External Slack channel with PostHog
- [#data-sisense-gitlab-external](https://gitlab.slack.com/archives/C02GG8C3GFK) - External channel with Sisense
