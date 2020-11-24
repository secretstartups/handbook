---
layout: handbook-page-toc
title: "Journey Orchestrator: Sending emails via Gainsight"
description: "Ways to use Gainsight's one-to-many email system to deliver value to your customers via different sequencing methods with the purpose of enabling all customers, especially with asynchronous learning at the core."
---


## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


## What is Journey Orchestrator?

[Journey Orchestrator](https://www.gainsight.com/journey-orchestrator/) is Gainsight's module enabling one-to-many campaigns, with if/then branching to automate email campaigns, playbooks, meetings, and more. For example, you can create a basic email campaign or a more advanced series of emails that can create a playbook or perform different actions, based on what the customer does/does not do.

## Current Gainsight emails available for use

### General Emails

| Title | Description | Languages |
| ----- | ------| ------ |
| Defining Your DevOps Environment |                                           | English, German |
| Welcome Email                    | Email to send to new customers            | English, Spanish, Portuguese
| Survey and Swag                  | Optional email to send during onboarding  | English | 

### Commercial Emails

| Title | Description | Languages |
| ----- | ------| ------ |
|       |    |
|       |    |
|       |    |
|       |    |


## Requesting a new Journey

To request new email templates be added to Gainsight, or programs in Journey Orchestrator, use the Sales Ops board above and put the content and format of your email in Markdown (if possible). Then `@mention` a Gainsight administrator.



### Filtering fields

Below are filters program creators will likely want to use for setting up journeys. For example, we do not want to email **everyone**, do we?

| Title | Description | Automatic/manual? |
| ----- | ------| ------ |
| `CARR (This Account)`          | The ARR for a specific account          | Automatic          |
| `Technical Account Manager`          | The TAM for this account          | Automatic          |
| `Account Owner Team`          | The specific region (EMEA, APAC...) for the customer          | Automatic          |
| `Products Purchased (This Account)`      | What product(s) did the customer purchase? This can include multiple subscriptions, CI Minutes, etc.          |           |
| `[JB] Deployment Type`          | Options include: SaaS or Self-Managed, to track the type of customer deployment          | Automatic          |
| `Support Level`         | The level of Support the customer receives from GitLab | Automatic          |
| `Deployer`          | Customer-deployed, GitLab services, Partner services. More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#deployer)          | Manual          |
| `Hosting`          | TAM derived field for the customer's hosting (on-premises, cloud, hybrid, gitlab.com...). More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#hosting)          | Manual          |
| `Customer Conversion Source`          | Community conversion, New customer, Existing - New TAM. More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#customer-conversion-source)          | Manual          |
| `Provider`          | Lists the provider (AWS,GCP...) the customer uses. More details on [handbook](/handbook/customer-success/tam/gainsight/deployment-types/#provider)          | Manual          |
| `Geo?`          | True/false if they're using Geo          | Manual          |
| `High Availability?`          | True/false if they're on HA          | Manual          |
| `Technology Stack`      | Multi-pick picklist to list all technologies used by the customer    | Manual          |




