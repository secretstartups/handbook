---
layout: markdown_page
title: "Data Quality"
description: "A Design Spike for a Data Quality Program at GitLab"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

In an effort to improve Data Quality at GitLab, the Central Data Team is conducting a Design Spike on a Data Quality program. The approach is to develop a MVC around steps the Data Community can take to improve data quality while we wait upon a new Data Quality Manager to be hired. This handbook page will document the MVC and provide team members with guidance on how they can contribute to improved data quality at GitLab.

## Governance Plan Runbook

The governance plan runbook is intended to facilitate the implementation and adoption of the governance plan developed in steps #1 through #5 below. It is meant to make data management easy and provide flexibility and continuous improvement. The below steps should be considered when implementing the plan:

1. Determine the DRI that will write the problem statement in step #1, will open the epic in the Data Quality Project, and will be responsible for guiding the team through the remaining steps of the data governance plan. 

1. The DRI should facilitate the completion of steps #2 through #5 of the governance plan. This should be a collaborative effort between business, functional analytics, and central data teams.

1. All data quality issues should be opened in the Data Quality project. If there is an existing epic that addresses the root cause of the problem, then the issue should be linked to that epic. If there is no epic opened that addresses the problem, then a DRI needs to be identified to complete steps #1 below and faciliate the execution of the governance plan.

## Data Quality Governance Planning and Process

### 1. Develop Data Quality Problem Statement 

The problem statement should define what the data quality problem is, what impact it has on business outcomes, and provide root cause(s) of the problem if possible. The problem statement should be added to an epic in the Data Quality Project using the data quality epic template. All issues related to the root causes in the problem statement should be opened in the Data Quality Project and linked to the related epic. Oftentimes, many issues are opened for the same root cause problem. This approach of having a high level epic with the problem statement and root causes and linking related issues to it will help correlate data quality problems to the right root cause Epic.

### 2. Define Data Definitions

Pursuant to the root causes identified in the problem statement, all applicable data fields should be listed and definitions provided. The source system applications, source system table names, technical api field names, Snowflake data warehouse source table and field names, and the Snowflake dimensional model field names should be provided.

### 3. Develop Mid-Level Diagram for the System and Problem

Solving data quality problems requires a cross-functional team working collaboratively to resolve the issues. It can be challenging to align on the various systems, applications, and data when team members may not be familiar with certain areas of the data pipelines. Therefore, a mid-level diagram that is simple to understand for all stakeholders and provides an overview of the systems, applications, and data should be provided.

### 4. Define Quality Standards and Monitoring

Quality standards relating to the issues defined in the problem statement should be identified. For example, for mapping SaaS Namespaces to subscriptions, should the quality standard be 95% or 100% coverage, or somewhere inbetween? A Sisense or Tableau chart should be developed to provide the data detection rule results to monitor the quality standard. Also, a business impact detection chart should be provided to illustrate the impact to the business for not meeting the quality standard. 

### 5. Determine Data Table and Column Ownership

Pursuant to the data definitions and other information provided in step #2, team members should be assigned to each table and column as DRIs for the quality of data in each of the tables and columns identified. Anyone that works with the data production in source system appications and works with ELT data pipelines towards Snowflake is eligible to be a DRI for table and column ownership. 


