---
layout: handbook-page-toc
title: "Enterprise Dimensional Model"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## Background

The Enterprise Dimensional Model (EDM) is GitLab's centralized data model, designed to enable and support the highest levels of accuracy and quality for reporting and analytics. The data model follows the [Kimball](https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/dimensional-modeling-techniques/) technique, including a Bus Matrix and Entity Relationship Diagram. Dimensional Modeling is the third step of our overarching [Data Development Approach](https://about.gitlab.com/handbook/business-technology/data-team/organization/#development-approach) (after Requirements definition and UI Wireframing) and this overall approach enables us to repeatedly produce high-quality data solutions. The EDM is housed in our Snowflake [Enterprise Data Warehouse](https://about.gitlab.com/handbook/business-technology/data-team/platform/#our-data-stack) and is generated using [dbt](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/).

As of 2021-April, the EDM solves for Go-To-Market funnel analytics and is actively being expanded to solve for Product Usage analytics. Example SiSense dashboards powered by the EDM include:
- [TD: Sales Funnel](https://app.periscopedata.com/app/gitlab/761665/TD:-Sales-Funnel---Target-vs.-Actual)
- [TD: Customer Segmentation](https://app.periscopedata.com/app/gitlab/718514/TD:-Customer-Segmentation)
- [TD: Drillable Net Retention](https://app.periscopedata.com/app/gitlab/763726/TD:-Drillable-Net-Retention)
- [TD: Pricing Dashoard](https://app.periscopedata.com/app/gitlab/748119/TD:-Pricing-Dashboard---Customer-Overview)

### Primary Dimensional Modeling Artifacts
- The [Enterprise Bus Matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=1372061550) consolidates all of our Fact and Dimension tables into an easy-to-use table and is patterned after the [Kimball bus matrix](https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/kimball-data-warehouse-bus-architecture/).
- The [Enterprise Entity Relationship Diagram](https://lucid.app/lucidchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19/view?page=B47EyN20O.G6#) presents a unified entity-level view of the Fact and Dimension tables.
- The [Dimensional Modelling Development Process](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#dimensional-modeling) covers our modeling standards, including naming conventions.

### The Enterprise Dimensional Model 'BIG PICTURE' Diagram
- We use Lucidchart's [ER diagram template](https://www.lucidchart.com/pages/er-diagrams) to build [Enterprise Entity Relationship Diagram](https://lucid.app/lucidchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19/view?page=B47EyN20O.G6#) source.

<div style="width: 640px; height: 480px; margin: 10px; position: relative;"><iframe allowfullscreen frameborder="0" style="width:640px; height:480px" src="https://lucid.app/documents/embeddedchart/12ee91c1-7ae5-4e99-96ae-bc51652dfa19" id="jBktl-f497ew"></iframe></div>

## What Is Dimensional Modeling?

Dimensional modeling is part of the Business Dimensional Lifecycle methodology developed by [Ralph Kimball](https://en.wikipedia.org/wiki/Ralph_Kimball) which includes a set of methods, techniques and concepts for use in data warehouse design.

_a logical design technique that seeks to present the data in a standard, intuitive framework that allows for high-performance access_

Dimensional Modeling is business process oriented and can be built in 4 steps:

1. Choose the business process e.g. track monthly revenue
1. Declare the grain e.g. per customer
1. Identify the dimensions
1. Identify the fact

### Fact and dimension tables

Dimensional modeling always uses the concepts of facts (measures), and dimensions (context).
Facts are typically (but not always) numeric values that can be aggregated, and dimensions are groups of hierarchies and descriptors that define the facts.

In the simplest version fact table is a central table and is linked to dimensional tables with foreign keys creating a star schema.
Star schema with dimensional tables linking to more dimensional tables are called snowflake schemas, multi fact tables schemas are called galaxies.

### Why is it worth using dimensional modeling 

- Dimensional Modeling has a few flavors, but the overall design is industry standard and has been used successfully for decades
- The FACT and DIM structures result in easy to understand and access data, suitable for business teams
- Dimensional modeling supports centralized implementation of business logic and consistent definitions across business users e.g. one source of truth of customer definition
- The design supports 'plug and play' of new subject areas and in fact the model grows in power as more dimensions are added

## Our Very First Iteration - Solving for ARR and Customer Counts

The initial iteration was proposed in [2019-December](https://gitlab.com/gitlab-data/managers/-/merge_requests/1) and we deployed a model to support ARR/ Customer counts in [2020-May](https://gitlab.com/groups/gitlab-data/-/epics/76). 

```mermaid
classDiagram
    fct_charges --|> dim_subscriptions
    fct_charges --|> dim_accounts
    fct_charges --|> dim_dates
    fct_charges --|> dim_product_details
    dim_accounts --|> dim_customers
    dim_subscriptions --|> dim_customers
    fct_invoice_items_agg <|-- fct_charges
    fct_invoice_items <|-- fct_charges
    fct_charges : +FK invoice_item_id
    fct_charges : +FK account_id
    fct_charges: +FK product_id
    fct_charges: +FK subscription_id,
    fct_charges: +FK effective_start_date_id,
    fct_charges: +FK effective_end_date_id,
    fct_charges: +FK product_details_id
    fct_charges : +PK charge_id
    fct_charges: mrr()
    fct_charges: rate_plan_name()
    fct_charges: rate_plan_charge_name()
    fct_invoice_items_agg: +PK charge_id
    fct_invoice_items_agg: charge_amount_sum()
    fct_invoice_items: +PK invoice_item_id
    class dim_accounts{
        PK: account_id
        FK: crm_id
        account_name()
        country()
    }
    class dim_subscriptions{
        PK: subscription_id
        FK: crm_id
        subscription_status()
    }
    class dim_dates {
        PK: date_id
    }
    class dim_customers {
        PK: crm_id
        customer_id
    }
    class dim_product_details {
        PK: product_details_id
    }
```

## Enterprise Data Model Governance

##### Modeling Development Process

1. Extend the [dimension bus matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=1372061550) as the blueprint for the EDM.
1. Add the table to the appropriate LucidChart ERD.
1. Model each source in the `PREP` database using source specific schema names.
1. Create `PREP` tables in the `COMMON_PREP` schema in the `PROD` database.
1. Deploy dimension tables. Each dimension also includes a common record entry of -1 key value to represent `unknown`
1. Create fact tables. Populate facts with correct dimension keys, and use the -1 key value for unknowable keys.

##### Naming Standards

It is critical to be intentional when organizing a self-service data environment, starting with naming conventions. The goal is to make navigating the data warehouse easy for beginner, intermediate, and advanced users. We make this possible by following these best practices:

1. FACT TABLES: `fct_<verb>` Facts represent events or real-world processes that occur. Facts can often be identified because they represent the action or 'verb'.  (e.g. session, transaction)
1. DIMENSION TABLES: `dim_<noun>` = dimension table. Dimensions provide descriptive context to the fact records. Dimensions can often be identified because they are 'nouns' such as a person, place, or thing (e.g. customer, employee) The dimension attributes act as 'adjectives'. (e.g. customer type, employee division)
1. Singular naming should be used, e.g. dim_customer, not dim_customers.
1. Use prefixes in table and column names to group like data. Data will remain logically grouped when sorted alphabetically, e.g. dim_geo_location, dim_geo_region, dim_geo_sub_region.
1. Use dimension table names in primary and foreign key naming. This makes it clear to the user what table will need to be joined to pull in additional attributes. For example, the primary key for dim_crm_account is dim_crm_account_id. If this field appears in fct_subscription, it will be named dim_crm_account_id to make it clear the user will need to join to dim_crm_account to get additional account details.

##### Modeling Requirements

- Typically, we will create the dimensions in the `common` schema first, and then the code that builds the fact tables references these common dimensions (LEFT JOIN) to ensure the common key is available. There are some situation where logically we are 100% confident every key that is in the fact table will be available in the dimension. This depends on the source of the dimension and any logic applied.
- Both facts and dimensions should be tested using [Trusted Data Framework (TDF)](/handbook/business-technology/data-team/platform/dbt-guide/#trusted-data-framework) tests.
    - For dimensions, we can test for the existence of the -1 (unknown) dimension_id, and total row counts.
    - For facts, we can test to ensure the number of records/rows is not expanded due to incorrect granularity joins, and can add a golden data test to pull the dimension attribute from the dimension table for the related fact record and compare to the expected value on the golden data record.
- fct_ and dim_ models should be materialized as tables to improve query performance,
- All dimensions must have:
    - An hashed surrogate key,
    - A natural unique key. This key value can be composed from multiple columns to generate uniqueness.
- Models are tested and documented in a schema.yml file in the same directory as the models,
- All facts and dimensions have the following audit columns:
    - revision_number - this is a manually incremented number representing a logical change in the model
    - created_by - this is a GitLab user id
    - updated_by - this is a GitLab user id
    - model_created_at timestamp - this is a static value for when the model was created
    - model_updated_at timestamp - this is the last time the model was updated by someone
    - dbt_created_at timestamp - this is populated by dbt when the table is created
    - dbt_updated_at timestamp - this is the date the data was last loaded. For most models, this will be the same as dbt_created_at with the exception of incremental models.
- The Prep(prep_) and mapping/look-up(map_) tables to support dimension tables should be created in `common_mapping` schema.
- Additional Bridge(bdg_) tables should reside in `common` schema. These tables act as intermediate tables to resolve many-to-many relationships between two tables.

##### ERD Requirements

- Generated in Lucidchart
- Embedded into the dbt docs for all relevant models as an iframe
- Cross-linking from the ERD to the dbt docs for the give model
- Proper relationship connections
- Primary and foreign keys listed
- At least 3-5 other columns that demonstrate the nature of the table and are unlikely to change
- Working SQL reference example

##### Additional Guidelines

The Dimensional Model is meant to be simple to use and designed for the user. Dimensional models are likely to be denormalized, as opposite to source models, making them easier to read and interpret, as well as allowing efficient querying by reducing the number of joins.

- Very often a CTE duplicated across two models qualifies to be a separate fct_/dim_ table

## Schemas

#### Common Prep

The Common Prep Schema has 6 primary use cases at this time. As we iterate on the EDM 2.0, we will evaluate each of these cases for efficacy and performance and determine if there is a more streamlined and efficient approach to perform the transformation being done in Common Marts. The use cases are as follows:

1. Generate Surrogate Keys used in the Common Schema.
1. Clean Source System data such as the conversion of datatypes and replacing NULL values.
1. Apply business process logic that is needed before combining with other data in the Common Schema.
1. Bring in Foreign Keys/Identifier fields from other models that are useful for joins in dimensions and facts in the Common Schema.
1. Unioning data coming from multiple sources before loading into tables in the Common Schema.
1. No specific case but built for consistency in design.

#### Common Mart

Marts are a combination of dimensions and facts that are joined together and used by business entities for insights and analytics. They are often grouped by business units such as marketing, finance, product, and sales. When a model is in this directory, it communicates to business stakeholders that the data is cleanly modelled and is ready for querying.

Below are some guidlines to follow when building marts:

1. Following the naming convention for fact and dimension tables, all marts should start with the prefix `mart_`.
1. Marts should not be built on top of other marts and should be built using FCT and DIM tables. 

## Slowly Changing Dimensions & Snapshots

In broad, generalized terms, there are two perspectives used when analysing data: the current view and the historical view.  When using the current view, an analyst uses the most up-to-date values for dimensions to slice facts, regardless of what these values may have been in the past. However, sometimes it is necessary to look at the world the way it was in a prior period, when the values in a dimension were different. For example, you may want to look at sales numbers using a prior product catalog or calculate the number of customers in a given country over time, to provide insights on customers who change addresses periodically. 

We use three types of dimensions to cover both the current and historical view of the data. For a current view, a Type 1 dimension will have the up-to-date values for each attribute. For this historical analysis, a Type 2 slowly changing dimension (SCD) can track infrequent changes to a dimension's attributes and capture the period when these values were valid. This differs from an event/activity table because the attribute values are not expected to change, but are allowed to change. In an activity table, we track the changes made to objects which have lifecycles (ex. opportunities). A third type of dimension can be used to provide an alterative view. This could be used when a product in the catalog could fall into two categories, and the analyst would like to see the data from both perspectives separately. We do not currently employ this Type 3 dimension in the Enterprise Dimensional Model.

For more information about the three types of dimensions:
1. [Type 1](https://www.kimballgroup.com/2008/08/slowly-changing-dimensions/): Dimension values are overwritten when they are updated. This provides a current-state view of the data with no historical context.
1. [Type 2](https://www.kimballgroup.com/2008/09/slowly-changing-dimensions-part-2/): Dimension values are added as they are updated. Dates (`valid_from` and `valid_to`) are associated with each record in the dimension to indicate when the value was actively used in the source data. Using these dates, we can look back to how the universe looked at a previous state in time. This is what we call a slowly changing dimension.
1. [Type 3](https://www.kimballgroup.com/2008/09/slowly-changing-dimensions-part-2/): Dimension values are overwritten as in Type 1 slowly changing dimensions, but there is an additional field for an `Alternate Category` which can allow users to slice the data by an alternative version of a dimension. This type of dimension in not currently used in the Enterprise Dimensional Model.

Slowly changing dimensions are useful when coupled with snapshot tables. A snapshot table shows the history of an object, providing analysts with a timeline of the modifications made to the object from its creation to the present day. As an example, an analyst might want to track an opportunity from the day it was created, through each of its states, and see what state it is in today. In another handbook page, we have described how to [create snapshots in dbt](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#snapshots). The end result of this process is a model which has a format similar to the below example:

| id | attribute | valid_from_date | valid_to_date|
| --- | --- | --- | --- |
| 1 | 'open' | 2022-01-01 | 2021-01-02 |
| 1 | 'validating' | 2022-01-02 | 2022-01-02 |
| 1 | 'approved' | 2022-01-02 | 2022-01-03 |
| 1 | 'closed' | 2022-01-03 | 2022-01-05 |
| 1 | 'approved' | 2022-01-05 | NULL |
| 2 | 'open' | 2022-01-01 | 2022-01-05 |
| 2 | 'approved' | 2022-01-05 | NULL |

**Tip**: It can be helpful to add a column with logic to indicate the most recent record in a slowly changing dimension.

For performance reasons, it is helpful to keep the slowly changing dimension at the grain in the example above for as long as possible. That being said, it is often easier for users to understand a slowly changing dimension when it is [expanded to a daily snapshot view](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#building-models-on-top-of-snapshots). The example above is transformed into the table below:

| id | attribute | date|
| --- | --- | --- |
| 1 | 'open' | 2022-01-01 |
| 1 | 'validating' | 2022-01-02 | 
| 1 | 'approved' | 2022-01-02 | 
| 1 | 'approved' | 2022-01-03 |
| 1 | 'closed' | 2022-01-03 |
| 1 | 'closed' | 2022-01-04 |
| 1 | 'closed' | 2022-01-05 |
| 1 | 'approved' | 2022-01-05 |
| 1 | 'approved' | repeat until chosen date |
| 2 | 'open' | 2022-01-01 |
| 2 | 'open' | 2022-01-02 |
| 2 | 'open' | 2022-01-03 |
| 2 | 'open' | 2022-01-04 |
| 2 | 'open' | 2022-01-05 |
| 2 | 'approved' | 2022-01-05 |
| 2 | 'approved' | repeat until chosen date |

In the Enterprise Dimensional Model, we introduce the daily grain in the `COMMON` schema so the snapshot models are available in our reporting tool. These daily snapshot models should end with the suffix `_daily_snapshot`. If a slowly changing dimension requires additional business logic beyond what comes out of the source system and is stored in a `_source` model, the best practice is to create a staging model in the `COMMON_PREP` schema with the transformations and then [build the slowly changing dimension](https://about.gitlab.com/handbook/business-technology/data-team/platform/dbt-guide/#create-snapshot-tables-with-dbt-snapshot) and daily snapshot model from the `COMMON_PREP` model. 

The dbt solution for building snapshot tables will set the `valid_to` field as NULL for the current version of a record, as shown in the first example above. This is how the data will be presented in the `_source` models. When this is transformed into a daily snapshot in the `COMMON` schema, there is flexibility for the analyst to decide how to [set the end date](https://discourse.getdbt.com/t/building-models-on-top-of-snapshots/517) (today's date, a future date, into the infinite future) depending on the business use case.

## Useful links and resources

- [dbt Discourse about Kimball dimensional modelling](https://discourse.getdbt.com/t/is-kimball-dimensional-modeling-still-relevant-in-a-modern-data-warehouse/225/6) in modern data warehouses including some important ideas why we should still use Kimball
- [Dimensional modelling manifesto](https://www.kimballgroup.com/1997/08/a-dimensional-modeling-manifesto/)
- [Dimensional Modelling techniques](https://www.kimballgroup.com/data-warehouse-business-intelligence-resources/kimball-techniques/dimensional-modeling-techniques/) by Kimball Group
