---
layout: handbook-page-toc
title: "Definitive Guide to Namespace Analysis"
description: "This page defines the Namespace along with the relationship to Workflow groups as well as give directions for Namespace Data Analysis"
---

## On this page
- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Namespace 

**NAMESPACE** 
is a container or grouping of common features available in the application.  Features are determined by a subscription assigned to a namespace and subsequent namespaces will have the same features. Subscriptions can only be assigned to top level `Ultimate Namespaces`.  Namespace Types are User, Group, Subgroup and Project.  Only User and Group namespaces can be top level namespaces.  

For additional existing documentation on Namespaces, please refer to the dedicated docs.gitlab.com section on Namespaces [here](https://docs.gitlab.com/ee/user/namespace/). 

Paid Features are purchased through [Subscriptions and Licenses](https://about.gitlab.com/pricing/licensing-faq/#what-do-i-need-in-order-to-use-my-subscription-or-license).  `Subscriptions` are assigned to a namespace for Gitlab.com SaaS Instances and `Licenses` are assigned at the Instance level of Self-Managed Implementations.  

A [Subscription](https://about.gitlab.com/handbook/marketing/strategic-marketing/enablement/dotcom-subscriptions/#common-misconceptions) is assigned to a single Top Level Namespace called an **Ultimate Namespace**.  Only User and Group namespaces can be Ultimate Namespaces.  User namespaces can have subsequent Projects while Groups can have subsequent Subgroups and Projects. Going forward, subscriptions will only be allowed to be assigned to Ultimate Group Namespaces because this offers the most flexibility in the project. You can have as many Ultimate Namespaces as needed, but a subscription can only be assigned to a single Ultimate Namespace. Usually one namespace, with the subscription, is created at the highest level and subsequent namespaces are built down from there.  Ultimate namespaces are classified as **Paid**, **Free** or **Trial** depending on whether a subscription is attached and the type of subscription it is.  Trial subscriptions are not paid but, give the paid features for a trial period.   

A subscription can be moved between Namespaces.  The Paid Features are moved as and cascaded down through subsequent namespaces.  Activity on a Paid Namespace before the subscription was moved will be retained in the data, but will no longer be available for use unless the subscription is moved back. 

**WORKFLOW GROUPINGS** 
are directly associated with the Namespace groupings.  Workflow groups are functional areas where work is performed. When a User, Group or Project is created, an associated namespace record is also created. These groups use the functionality and features of the associated namespaces.   Users (Members) are assigned to the workflow groups.  Members are cascaded down through the workflow groups.   

Here is the Namespace To Workflow Relationship Diagram for a visual understanding of the Namespace structure: ![https://lucid.app/lucidchart/ac9af4ec-59a7-468e-a191-c44ccf9df133/edit?invitationId=inv_f9e71212-974c-4e7c-81d1-b1d39c56342f&page=DVe-aYClp-zW#](/handbook/business-technology/data-team/data-catalog/namespace/Namespace_to_Workflow.png) 

**User Namespace**
  * Can be an Ultimate Namespace
  * Also referred to as **Personal Namespace**
  * Only Projects can be created under Users
  * Users are not limited to the number of Projects
  * User namespaces are found in data by Namespace_Type = 'User' 

**Group Namespace**
  * Can be an Ultimate Namespace
  * Subgroups and Projects can be created under Groups
  * Groups can be nested up to 21 levels
  * Group id is the same as the Namespace Id 
  * The [Group Data](https://gitlab-data.gitlab.io/analytics/#!/model/model.gitlab_snowflake.gitlab_dotcom_groups) is built from the Namespace data where Namespace_Type = 'Group'

**Project Namespace**
  * Can NOT be an Ultimate Namespace
  * Projects must have a Parent User or Group Namespace
  * Projects can not have subsequent namespaces
  * User namespaces are found in data by Namespace_Type = 'Project' 

**Ulitmate Namespace**
  * Top-level namespace
  * Only a User or Group can be Ultimate Namespaces 
  * Subscriptions can only be associated with Ultimate Namespaces
  * Ultimate Namespaces are found in data where:
    * Namespace_is_Ultimate_Parent = 'TRUE'
    * -OR- Parent_id = 'NULL' 
    * -OR- Namespace_id = Ultimate_Namespace_id

## Examples

### Groups, Projects & Namespaces
![Groups, Projects & Namespaces](/handbook/business-technology/data-team/data-catalog/namespace/Group_Project_Namespace.png)

### Personal Namespaces
![Personal Namespaces](/handbook/business-technology/data-team/data-catalog/namespace/Personal_Namespace_Example.png)  

## Namespace Use Cases

Namespace Service Pings information is sent to Gitlab showing the usage of the product by namespace.  Gitlab receives [Service Ping](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#saas-namespace-service-ping) information at the Instance or [Namespace Ping](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/saas-service-ping-automation/#saas-namespace-service-ping) level.  The [Service Ping](https://docs.gitlab.com/ee/development/service_ping/) information is used to enhance the product and better meet the needs of the users.  Here are some use cases for Namespaces.

**Paid, Free and Trial Namespaces Created**
analysis is needed to identify Namespaces that have been recently created and using Paid vs Free vs Trial (Free w/Paid Features) features of the product.  

<details>
<summary markdown="span">query</summary>

```
SELECT 
    gitlab_plan_id                              ultimate_namespace_plan_id,
    gitlab_plan_title                           ultimate_namespace_plan_title,
    gitlab_plan_is_paid                         ultimate_namespace_plan_is_paid,
    COUNT(DISTINCT dim_namespace_id)            namespace_count
FROM 
    prod.common.dim_namespace
WHERE 
    DATEDIFF(DAY, CURRENT_TIMESTAMP, created_at) >= -90
    --AND plan_is_paid IN ('TRUE','FALSE')
GROUP BY
    gitlab_plan_id,
    gitlab_plan_title,
    gitlab_plan_is_paid
ORDER BY
    gitlab_plan_id,
    gitlab_plan_title,
    gitlab_plan_is_paid
```

</details>


**Project Namespaces by Membership**
analysis is needed to show the overall usage of Project Namespaces by users.

<details>
<summary markdown="span">query</summary> 

```
SELECT 
    dim_namespace_id,
    namespace_name                              project_name,
    TO_DATE(created_at)                         project_create_date,
    current_member_count                        project_members
FROM 
    prod.common.dim_namespace
WHERE 
    namespace_type = 'Project'
ORDER BY
    current_member_count DESC
``` 
</details>

**Group Namespaces by Membership**
analysis is needed to show the overall usage of Group Namespaces by users.

<details>
<summary markdown="span">query</summary> 

```
SELECT 
    TOP 10
    dim_namespace_id,
    namespace_name                              group_name,
    TO_DATE(created_at)                         group_create_date,
    current_member_count                        group_members
FROM 
    prod.common.dim_namespace
WHERE 
    namespace_type = 'Group'
ORDER BY
    current_member_count DESC
``` 
</details>

**Top-Level Group with Most Sub-Groups and Projects**
analysis is needed to show where the namespace is being utilized most.     

<details>
<summary markdown="span">query</summary> 

```
SELECT
    TOP 10 
    ultimate_parent_namespace_id                        ultimate_namespace_id,
    TO_DATE(MIN(created_at))                            min_create_date,
    COUNT(*)                                            total_count,
    SUM(CASE
            WHEN namespace_type='Group'
            THEN 1
            ELSE 0
        END
       )                                                group_count,
    SUM(CASE
            WHEN namespace_type='Project'
            THEN 1
            ELSE 0
        END
       )                                                project_count,
    SUM(CASE
            WHEN namespace_type='User'
            THEN 1
            ELSE 0
        END
       )                                                user_count   
FROM
    prod.common.dim_namespace
GROUP BY
    ultimate_parent_namespace_id
ORDER BY
    group_count DESC
    --project_count DESC
    --user_count DESC
``` 
</details>

**Multiple ways for Listing Ultimate Namespaces**
 is needed to find Ultimate Namespaces     

<details>
<summary markdown="span">query</summary> 

```
-- Use namespace_is_ultimate_parent when available
SELECT * FROM prod.common.dim_namespace WHERE namespace_is_ultimate_parent = 'TRUE'
-- OR Verify Namespace has no Parent
SELECT * FROM prod.common.dim_namespace WHERE parent_id IS NULL
-- OR Verify Namespace is Also the Ultimate Namespace
SELECT * FROM prod.common.dim_namespace WHERE dim_namespace_id = ultimate_parent_namespace_id
```
</details>

**Identify Ultimate Namespaces from the Namespace table with Attributes**
is needed to show Ultimate Namespaces with all attributes     

<details>
<summary markdown="span">query</summary> 

```
-- Join by Namespace_id
SELECT 
    * 
FROM 
    prod.workspace_data_science.monthly_stage_usage_by_namespace            usage       
    LEFT JOIN prod.common.dim_namespace                                     ns 
    ON usage.dim_namespace_id = ns.dim_namespace_id 
WHERE 
    ns.namespace_is_ultimate_parent = 'TRUE'
```
</details>


 
