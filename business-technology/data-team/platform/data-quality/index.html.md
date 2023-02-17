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

The governance plan runbook is intended to facilitate the implementation and adoption of the governance plan. It is meant to make data management easy and provide flexibility and continuous improvement. The below steps should be considered when implementing the plan:

1. Determine the DRI that will write the problem statement in step #1, will open the epic in the Data Quality Project, and will be responsible for guiding the cross-functional team through the remaining steps of the data governance plan. 

1. Create a new section on this handbook page for the data quality issue and provide the governance plan. Provide a link to the epic in the Data Quality Project.

1. The DRI should facilitate the completion of the data quality governance plan. This should be a collaborative effort between business, functional analytics, and central data teams.

1. All data quality issues should be opened in the Data Quality Project. If there is an existing epic that addresses the root cause of the problem, then the issue should be linked to that epic. If there is no epic opened that addresses the problem, then a DRI needs to be identified to complete step #1 below and faciliate the execution of the data quality governance plan.

## Data Quality Project in GitLab

Coming soon. A link will be provided to the Data Quality Project as well as guidance on the operations of the issues and labels in the project.

## Data Quality Governance Planning and Process

### 1. Develop Data Quality Problem Statement 

The problem statement should define what the data quality problem is and what impact it has on business outcomes. The problem statement should be added to an epic in the Data Quality Project using the data quality epic template. 

### 2. Develop Potential Root Causes

The root causes for the data quality issue identified in the problem statement should be determined and added to the epic. These root causes can be business process related or they can be related to technical configurations in source system applications. All issues related to the same problem statement and root causes should be opened in the Data Quality Project and linked to the related epic. Oftentimes, many data quality issues are opened for the same problem statement. This approach of having a high level epic with the problem statement and root causes and linking related issues to it will help correlate data quality problems to the right root cause Epic.

### 3. Define Data Definitions

Pursuant to the root causes identified in the problem statement, identify the source system, source system database table, source system field, and source system field definition. This step is meant to document the source system entities and defintions at the point of data production before that data is emitted in a data pipeline. 

### 4. Develop Mid-Level Diagram for the System and Problem

Solving data quality problems requires a cross-functional team working collaboratively to resolve the issues. It can be challenging to align on the various systems, applications, and data when team members may not be familiar with certain areas of the data pipelines. Therefore, a mid-level diagram that is simple to understand for all stakeholders and provides an overview of the systems, applications, and data should be provided.

### 5. Define Quality Standards and Monitoring

Quality standards relating to the issues defined in the problem statement should be identified. For example, for mapping SaaS Namespaces to subscriptions, should the quality standard be 95% or 100% coverage, or somewhere inbetween? A Sisense or Tableau chart should be developed to provide the data detection rule results to monitor the quality standard. Also, a business impact detection chart should be provided to illustrate the impact to the business for not meeting the quality standard. 

### 6. Determine Data Table and Column Ownership

All applicable data tables and fields should be listed. The four main tables to focus on are the source system table, the source table in Snowflake, either the common_prep or common enterprise dimensional model table in Snowflake, and a mart or report table in Snowflake. Team members should be assigned to each table and column as DRIs for the quality of data in the respective table and field. Generally speaking, the Backend Engineer and/or Product Manager should be DRI for the source system table, the Data Platform Engineer should be DRI for the source table in Snowflake, the Analytics Engineer should be DRI for the common_prep or common table, and the Functional Analyst should be the DRI for any mart or reporting table.

## Data Quality Program Design Spike: Governance Plan for SaaS Namespace <> Subscription Mapping

<details markdown=1>

<summary><b>1. Data Quality Problem Statement</b></summary>

There have been an increased amount of issues raised to the CS Ops team regarding customer namespaces that either do not have product usage data displaying or their product usage data is very outdated. This lack of data, or lack of new data, prevents us from generating health, adoption, and maturity scores for the customers experiencing this problem.

**DRAFT: Link to Epic in the Data Group will be provided**

</details>

<details markdown=1>

<summary><b>2. Potential Root Causes</b></summary>

**SaaS subscription are not assigned to a namespace/group in Zuora for several potential reasons** (in descending order of occurrence):

1. **Multi-year ramped subscriptions (old)**, where each ramp segment is created as a separate subscription in Zuora. It's likely the customer loses access when the previous ramp subscription segment expires.
1. **Subscriptions with Entity other than US**. This may mean that a subscription was created as a renewal on a different Zuora account, and none of the previous data transferred. It's likely the customer doesn't have access. [Related dashboard?](https://app.periscopedata.com/app/gitlab:safe-dashboard/1062859/Change-of-Entity---Orders)
1. **Subscriptions are created by a Human in Zuora**. Namespace assignment doesn't automatically transfer to the new subscription. This might be a subset of `#2`.
1. **Order in CustomersDot has NamespaceId assigned, but not the related Zuora Subscription**. Customer does have access in this case. [Issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/5171).
1. **Subscription was purchased via a Reseller**. Support has to help with namespace assignment, because customer has no access to CDot to do it themselves. It's likely the customer doesn't have access.
1. **Subscription was de-booked / rebooked to correct an error**. The quote is pushed from SFDC, but Zuora notification profile is silenced to avoid notifications sent to customer. De-booked subscription data (like namespace) doesn’t transfer. <sup>\*</sup>Need to [understand this more](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/634#note_1237253100).

</details>

<details markdown=1>

<summary><b>3. Data Definitions</b></summary>

| Source System | Source System Table | Source System Field Name | Source System Field Name Defintion | 
|     --        | --                  | --                       | --                |
|   [Zuora](https://knowledgecenter.zuora.com/Zuora_Central_Platform/API/G_SOAP_API/E1_SOAP_API_Object_Reference/Subscription)      |  subscription       |   id (SubscriptionId)    |  The ID of this object. Upon creation, the ID of this object is SubscriptionId.  |
|     Zuora        | subscription        | GITLABNAMESPACEID__C     | The SaaS Namespace Id that the subscription is associated with. This is a custom field added by GitLab's Fulfillment team   |

</details>

<details markdown=1>

<summary><b>4. Mid-Level Diagram for the System and Problem</b></summary>

`Coming soon...`

</details>

<details markdown=1>

<summary><b>5. Quality Standards and Monitoring</b></summary>

The SaaS section of this [Instances w/out Subscriptions](https://app.periscopedata.com/app/gitlab:safe-dashboard/1056238/WIP-@bbutterfield-Instances-w-out-Subscriptions) dashboard provides the following metrics:

1. Percent of Paying SaaS Subscriptions Missing Namespace ID
1. Number of paying SaaS Subscriptions Missing Namespace ID
1. Percent of SaaS ARR Missing Namespace ID
1. Total SaaS ARR Missing Namespace ID
1. Total SaaS ARR Missing Namespace ID and Number of paying SaaS Subscriptions Missing Namespace ID by Product Tier

**DRAFT: Quality standards should be considered and set for each of the above metrics.**

</details>

<details markdown=1>

<summary><b>6. Data Table and Column Ownership</b></summary>

**Source System Table**

| System | Table | Field | DRI | 
|     --        | --           | --           | --  |
|    Zuora           |    subscription      |    subscriptionid          |  TBD   |
|    Zuora           |    subscription      |    GITLABNAMESPACEID__C    |  TBD   |

**Snowflake Source Table**

| System | Table | Field | DRI | 
|     --        | --           | --           | --  |
|     Snowflake          |    zuora_subscription_source      |   subscription_id     |  TBD  |
|     Snowflake          |    zuora_subscription_source      |   namespace_id        |  TBD  |

**Snowflake Common_Prep or Common Table**

| System | Table | Field | DRI | 
|     --        | --           | --           | --  |
|     Snowflake          |     prep_subscription   |    dim_subscription_id     |  TBD   |
|     Snowflake          |     prep_subscription   |    namespace_id     |  TBD   |

**Snowflake Mart or Reporting Table**

| System | Table | Field | DRI | 
|     --        | --           | --           | --  |
|     Snowflake    |    PUMP_GAINSIGHT_METRICS_MONTHLY_PAID   |   DIM_NAMESPACE_ID    |  TBD   |
|     Snowflake    |    PUMP_GAINSIGHT_METRICS_MONTHLY_PAID   |   DIM_SUBSCRIPTION_ID_ORIGINAL    |  TBD   |


</details>





