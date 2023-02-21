---
layout: markdown_page
title: "Data Quality"
description: "MVC for a Data Quality Program at GitLab"
---

## On this page
{:.no_toc}

- TOC
{:toc}

## Overview

In an effort to improve data quality at GitLab, the Central Data Team is creating a MVC for a data quality program. The detection rules on the [TD: Product Data Quality Scorecard](https://app.periscopedata.com/app/gitlab/887191/TD:-Product-Data-Quality-Scorecard---Overview-V1.0) are in scope for the MVC. The approach is to develop a program that the Data Community can use to improve data quality while we wait for a new Data Quality Manager to be hired. This handbook page will document the MVC and provide team members with guidance on how they can contribute to improved data quality at GitLab.

## Data Quality Runbook

<details markdown=1>

<summary><b>Runbook</b></summary>

**New Data Quality Issue Runbook**

1. All data quality issues relating to the detection rules on the [TD: Product Data Quality Scorecard](https://app.periscopedata.com/app/gitlab/887191/TD:-Product-Data-Quality-Scorecard---Overview-V1.0) should be opened and triaged in the Data Quality Project. Issues in scope that are opened in the Data Team project can be moved to the Data Quality project. 

1. The triager should apply the following lables to help determine next steps on the issue:
    1. [Workflow Status Label](https://gitlab.com/groups/gitlab-data/-/labels?utf8=%E2%9C%93&subscribed=&search=workflow): Pick `workflow
1 - triage` to start
    1. [Prioritization Type](https://gitlab.com/groups/gitlab-data/-/labels?utf8=%E2%9C%93&subscribed=&search=Priority+Label%3A+): Pick `Priority
1-Ops`
    1. [Data Champion](https://gitlab.com/groups/gitlab-data/-/labels?subscribed=&search=Champion): Select the Functional Analyst Team that will champion the issue. For the MVC, this will most likely be Customer Success or Product Data Insights. 
    1. [Data Team](https://gitlab.com/groups/gitlab-data/-/labels?subscribed=&search=Team%3A%3A): Select the Fusion Team that is DRI for the data. For the MVC, this will most likely be the R&D Data Fusion Team.
    1. [Source System Owner]..Coming Soon..: Select the team that owns the source system related to the DQ issue
    1. Source System (Light Green): Select source systems in scope (Salesforce, Zuora, Zendesk, GitLab.com, CustomerDot, VersionApp, etc.)
    1. Data System (Light Blue): Select data systems in scope (Snowflake, dbt, Gainsight, Airflow, etc)
    1. [DQ: Waypoint]..Coming Soon..: Select Waypoint where the root cause of the data quality problem exists
    
1. The triager should search the Data Quality Epics and see if the new issue could be related to an existing epic. If there is an existing epic that addresses the root cause of the problem identified in the issue, then the issue should be linked to that epic and a comment sent to the author of the issue and DRI of the existing epic that a new issue has been linked. The `workflow 2 - validation` label should be applied.

1. The DRI of the epic can validate that the newly linked issues are related and can apply the next applicable [Workflow Status Label](https://gitlab.com/groups/gitlab-data/-/labels?utf8=%E2%9C%93&subscribed=&search=workflow).

1. If there is no epic opened that addresses the problem, then the issue requires further validation to determine if a governance plan is needed. Only issues related to the [TD: Product Data Quality Scorecard](https://app.periscopedata.com/app/gitlab/887191/TD:-Product-Data-Quality-Scorecard---Overview-V1.0) are in scope now. If the issue relates to one of the detection rules, then the triager can refere the issue to the R&D Data Fusion Team manager for next steps. If the issue does not relate to one of the detection rules, then the triager should follow the business as usual triage process.  

**Governance Plan Runbook**

The governance plan runbook is intended to facilitate the implementation and adoption of the governance plan. It is meant to make data management easy and provide flexibility and continuous improvement. The below steps should be considered when implementing the plan:

1. Determine the DRI that will write the problem statement in step #1, will open the epic in the Data Quality Project, and will be responsible for guiding the cross-functional team through the remaining steps of the data governance plan. 

1. Create a new section on this handbook page for the data quality issue and provide the governance plan. Provide a link to the epic in the Data Quality Project.

1. The DRI should facilitate the completion of the data quality governance plan. This should be a collaborative effort between business, functional analytics, and central data teams.

</details>

## Data Quality Project in GitLab

<details markdown=1>

<summary><b>Project</b></summary>

Coming soon. A link will be provided to the Data Quality Project as well as guidance on the operations of the issues and labels in the project.

</details>

## Governance Planning and Process

<details markdown=1>

<summary><b>1. Identify Governance Plan DRI</b></summary>

Given we do not have a Data Quality Manager, a DRI will need to be assigned on a governance plan by plan basis to guide the team through the governance planning and process. 

</details>

<details markdown=1>

<summary><b>2. Develop Data Quality Problem Statement</b></summary>

The problem statement should define what the data quality problem is and what impact it has on business outcomes. The problem statement should be added to an epic in the Data Quality Project using the data quality epic template. 

</details>

<details markdown=1>

<summary><b>3. Develop Potential Root Causes</b></summary>

The root causes for the data quality issue identified in the problem statement should be determined. These root causes can be business process related or they can be related to technical configurations in source system applications. All issues related to the same problem statement and root causes should be opened in the Data Quality Project and linked to the related epic. Oftentimes, many data quality issues are opened for the same problem statement. This approach of having a high level epic with the problem statement and linking related issues to it will help correlate data quality problems to the right root cause Epic.

</details>

<details markdown=1>

<summary><b>4. Define Data Definitions</b></summary>

Pursuant to the root causes identified in the problem statement, identify the source system, source system database table, source system field, and source system field definition. This step is meant to document the source system entities and defintions at the point of data production before that data is emitted in a data pipeline. 

</details>

<details markdown=1>

<summary><b>5. Develop Data Flow Diagram for the System and Problem</b></summary>

Solving data quality problems requires a cross-functional team working collaboratively to resolve the issues. It can be challenging to align on the various systems, applications, and data when team members may not be familiar with certain areas of the data pipelines. Therefore, a data flow diagram that is simple to understand for all stakeholders and provides an overview of the systems, applications, and data should be provided. 

</details>

<details markdown=1>

<summary><b>6. Define Quality Standards and Monitoring</b></summary>

Quality standards relating to the issues defined in the problem statement should be identified. For example, for mapping SaaS Namespaces to subscriptions, should the quality standard be 95% or 100% coverage, or somewhere inbetween? A Sisense or Tableau chart should be developed to provide the data detection rule results to monitor the quality standard. Also, a business impact detection chart should be provided to illustrate the impact to the business for not meeting the quality standard. 

</details>

<details markdown=1>

<summary><b>7. Determine Data Table and Column Ownership</b></summary>

All applicable data tables and fields should be listed. The four main tables to focus on are:

1. The source system table
2. The source table in the RAW or PREP database in Snowflake, depending upon any de-dupeing or cleanup that happens for a data source 
3. The `common_prep` or `common` enterprise dimensional model table in Snowflake, depending on where the data lands in COMMON first
4. A mart or report table in Snowflake 

Team members should be assigned to each table and column as DRIs for the quality of data in the respective table and field. Generally speaking, the Backend Engineer and/or Product Manager should be DRI for the source system table, the Data Platform Engineer should be DRI for the source table in Snowflake, the Analytics Engineer should be DRI for the common_prep or common table, and the Functional Analyst should be the DRI for any mart or reporting table.

</details>

<details markdown=1>

<summary><b>8. Solutions</b></summary>

The solutions to the root causes identified in the governance plan should be documented in this step. These solutions can consist of temprorary work arounds as well as permanent solutions. Estimated ship dates for the solutions can be provided if they are available. 

</details>

## Governance Plan for SaaS Namespace <> Subscription Mapping

<details markdown=1>

<summary><b>1. Governance Plan DRI</b></summary>

`NAME`

</details>

<details markdown=1>

<summary><b>2. Data Quality Problem Statement</b></summary>

There have been a number of issues raised to the CS Ops team related to customer namespaces that either do not have product usage data displaying, or their product usage data is very outdated. As a result, we cannot generate health, adoption, and maturity scores for the customers experiencing these problem.

**DRAFT: Link to Epic in the Data Group will be provided**

</details>

<details markdown=1>

<summary><b>3. Potential Root Causes</b></summary>

**SaaS subscription are not assigned to a namespace/group in Zuora for several potential reasons** (in descending order of frequency):

1. **Multi-year ramped subscriptions (old)**, where each ramp segment is created as a separate subscription in Zuora. It's likely the customer loses access when the previous ramp subscription segment expires.
1. **Subscriptions with Entity other than US**. This may mean that a subscription was created as a renewal on a different Zuora account, and none of the previous data transferred. It's likely the customer doesn't have access. [Related dashboard?](https://app.periscopedata.com/app/gitlab:safe-dashboard/1062859/Change-of-Entity---Orders)
1. **Subscriptions are created by a Human in Zuora**. Namespace assignment doesn't automatically transfer to the new subscription. This might be a subset of `#2`.
1. **Order in CustomersDot has NamespaceId assigned, but not the related Zuora Subscription**. Customer does have access in this case. [Issue](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/5171).
1. **Subscription was purchased via a Reseller**. Support has to help with namespace assignment, because customer has no access to CDot to do it themselves. It's likely the customer doesn't have access.
1. **Subscription was de-booked / rebooked to correct an error**. The quote is pushed from SFDC, but Zuora notification profile is silenced to avoid notifications sent to customer. De-booked subscription data (like namespace) doesn’t transfer. <sup>\*</sup>Need to [understand this more](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/634#note_1237253100).

</details>

<details markdown=1>

<summary><b>4. Data Definitions</b></summary>

| Source System | Source System Table | Source System Field Name | Source System Field Name Defintion | 
|     --        | --                  | --                       | --                |
|   [Zuora](https://knowledgecenter.zuora.com/Zuora_Central_Platform/API/G_SOAP_API/E1_SOAP_API_Object_Reference/Subscription)      |  subscription       |   id (SubscriptionId)    |  The ID of this object. Upon creation, the ID of this object is SubscriptionId.  |
|     Zuora        | subscription        | GITLABNAMESPACEID__C     | The SaaS Namespace Id that the subscription is associated with. This is a custom field added by GitLab's Fulfillment team   |

</details>

<details markdown=1>

<summary><b>5. Data Flow Diagram for the System and Problem</b></summary>

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embedded/40f3b89f-d24a-4483-bdc7-893216dc6c89" id="SjnyTai~HuDZ"></iframe></div>

</details>

<details markdown=1>

<summary><b>6. Quality Standards and Monitoring</b></summary>

**Monitoring**

Product Data Detection Rule 7: [SaaS Subscriptions Not Mapped to Namespaces](https://app.periscopedata.com/app/gitlab/887191/TD:-Product-Data-Quality-Scorecard---Overview-V1.0?widget=12143403&udv=0)

**Quality Standards**

The SaaS section of this [Instances w/out Subscriptions](https://app.periscopedata.com/app/gitlab:safe-dashboard/1056238/WIP-@bbutterfield-Instances-w-out-Subscriptions) dashboard provides the following metrics:

1. Percent of Paying SaaS Subscriptions Missing Namespace ID
1. Number of paying SaaS Subscriptions Missing Namespace ID
1. Percent of SaaS ARR Missing Namespace ID
1. Total SaaS ARR Missing Namespace ID
1. Total SaaS ARR Missing Namespace ID and Number of paying SaaS Subscriptions Missing Namespace ID by Product Tier

**DRAFT: Quality standards should be considered and set for the above metrics.**

</details>

<details markdown=1>

<summary><b>7. Data Table and Column Ownership</b></summary>

**Source System Table**

| System | Table | Column | DRI | 
|     --        | --           | --           | --  |
|    Zuora           |    subscription      |    subscriptionid          |  TBD   |
|    Zuora           |    subscription      |    GITLABNAMESPACEID__C    |  TBD   |

**Snowflake Source Table**

| System | Table | Column | DRI | 
|     --        | --           | --           | --  |
|     Snowflake          |    raw.zuora_stitch.subscription      |   id     |  TBD  |
|     Snowflake          |    raw.zuora_stitch.subscription      |   GITLABNAMESPACEID__C        |  TBD  |

**Snowflake Common_Prep or Common Table**

| System | Table | Column | DRI | 
|     --        | --           | --           | --  |
|     Snowflake          |     prod.common_prep.prep_subscription   |    dim_subscription_id     |  TBD   |
|     Snowflake          |     prod.common_prep.prep_subscription   |    namespace_id     |  TBD   |

**Snowflake Mart or Reporting Table**

| System | Table | Column | DRI | 
|     --        | --           | --           | --  |
|     Snowflake    |    PROD.PUMPS.PUMP_GAINSIGHT_METRICS_MONTHLY_PAID   |   DIM_NAMESPACE_ID    |  TBD   |
|     Snowflake    |    PROD.PUMPS.PUMP_GAINSIGHT_METRICS_MONTHLY_PAID   |   DIM_SUBSCRIPTION_ID_ORIGINAL    |  TBD   |

</details>

<details markdown=1>

<summary><b>8. Solutions</b></summary>

**Temporary, Work-Around Solutions**

`Coming soon...`

**Permanent Solutions**

`Coming soon...`

</details>





