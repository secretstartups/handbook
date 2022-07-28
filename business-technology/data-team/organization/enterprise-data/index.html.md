---
layout: handbook-page-toc
title: "Enterprise Data Handbook"
description: "GitLab Enterprise Data Team Handbook"
---

## On this page 
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

----

# Enterprise Data at GitLab

## Mission

To collaborate with the business units and data teams in establishing and facilitating commonly accepted guidelines around `building`, `integrating`, `maintaining` and `using` consistent `Enterprise Data`.

## Team Structure

- [@iweeks](https://gitlab.com/iweeks)
- [@snalamaru](https://gitlab.com/snalamaru)
- [@tpoole](https://gitlab.com/tpoole1)

## Handbook First

At GitLab we are [Handbook First](/handbook/handbook-usage/#why-handbook-first) and promote this concept by ensuring the enterprise data team page remains updated with the most accurate information regarding enterprise data objectives, processes, and projects. We also strive to keep the handbook updated with useful resources and our enterprise data toolset. 

## Enterprise Data Responsibilities 

Of the [Data Team's Responsibilities](/handbook/business-technology/data-team/#responsibilities), the Enterprise Data Team is responsible for:

- Being a **_Center of Excellence_** for [Data Management processes](https://about.gitlab.com/handbook/business-technology/data-team/data-management/)
- Provide direction and support to the Data Modeling Project teams to develop architecture and implement dimensional model designs by following [Modeling Development process](https://about.gitlab.com/handbook/business-technology/data-team/platform/edw/#modeling-development-process) 
- Review ERDs and validate Data models to ensure that they adhere to all the [Enterprise Dimensional Modeling Guidelines](https://about.gitlab.com/handbook/business-technology/data-team/platform/edw/#modeling-guidelines) and [Naming standards](Naming Standards)
- Update/Maintain a current version of [Conformance matrix](https://docs.google.com/spreadsheets/d/1j3lHKR29AT1dH_jWeqEwjeO81RAXUfXauIfbZbX_2ME/edit#gid=430467333) to enhance searchabilty of EDM Facts/Dims/marts for cross-subject area analysis
- Support Self-Service BI and Analytical capabilities by providing Data Enablement and required training to the Users on Data Models
-  Continue to work towards adding more content to [Data Catalog](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/#data-catalog) for business users that synthesizes details about data assets across multiple data sources by organizing them into an easy to digest form
- Creating Definitive Guide Handbook pages on various topics of interest for business and technical audience

Additionally, the `Enterprise Data Team` partners with the `Data Platform` & other `Data Teams` to Scope, Assist and Support a [Data Management strategy](https://lucid.app/lucidchart/3d662a2c-0025-40eb-a507-07ad21d11214/edit?beaconFlowId=795ADBEB78311025&invitationId=inv_cc970528-711f-44e1-8086-47d450d4400d&page=0_0#) that directly impacts data across various subject areas.  These areas of responsibility include:

  - **Data Storage & Integration**
    - `Archival processes`
      - If the plan is to keep a certain period of history, an archive stratgey would be defined
      - Specifies how much data will be kept on line
      - Specifies process of removing/archiving facts
      - Identifies how obsolete dimensional detail will be dealt with
    - `Data cleansing & Transformations`
      - Incorporating the required business logic in to models to support reporting and analytics
      - Detecting and correcting inaccurate data 
  - **Data Quality**
      - Supporting Trusted Data Framework
      - Exposing Comprehensive and Accurate Data to Users
      - Data Observabiity
        
  - **Data Security**
    - Role based access to subject areas
    - Protection of sensitive data elements  - Safe restricted schemas
    - Data Masking techniques
        
  - **Ongoing tuning**
    - Performance tuning of long running dbt models
    - Development of aggregates(project-approach) 

  - **Self-Service BI/End User support**
    - Creation of new facts, conformed dimensions and data marts for different subject areas
    - Add appropriate documentation supporting data assets
    - Providing training on facts/dims/marts in EDM for analysis and reporting


# Key Projects

1. **Data Modeling & Design**
     - Define Data Modeling standards & Naming conventions
     - Schema Updates - Common_mart, common_mart_product, new rpt schemas
     - Surrogate keys vs Natural Keys - Refactoring existing Models
     - ERD Reviews
     - Monthly EDM Workshops
     - Build lowest grain of Dims and Facts (translated and built in Enterprise Data Warehouse)
     - Business approval on logic used for Translation and Final data
     - Make sure we are modeling from the Root Source forward
     - Build Aggregated data from lowest grain for matching data from Atomic through Aggregates 
     - Include all data in Atomic and Aggregated data to be filtered during analysis and reporting as needed
     - Build Specific Reporting data that can be filtered for Specific Reporting needs

2. **Documenting Single Source of Truth**
     - Precise and best usable for Users in DBT Models and Handbook pages
     - Clear and connecting from source to published across all business data

3. **Deprecation of Legacy models**

4. **Metadata Management & Content Discovery**
     - Update Conformance matrix to reflect current state of facts, dimensions and marts used across Subject-areas


## Current State of Enterprise Data

Currently, analysts and knowledge workers in the company have a few options to analyze structured data from the [data warehouse](https://about.gitlab.com/handbook/business-technology/data-team/platform/#data-warehouse), primarily those listed below:

- A well defined Enterprise Data Model that provides a birds-eye view to all the available fact, dimension and mart models being used across various subject areas has not been developed yet.
- The existing Data models are siloed and there are not many conformed dimensions.
- The lack of robust data modeling and data governance capabilities
- A single source of truth for the data is missing as the same data exists in multiple different sources
- Users are finding it extremely difficult to search/explore/access data or reports to support their analytical requirements


## Future State of Enterprise Data

### Vision

To have simple and comprehensive data with consistency across the `Enterprise Data Warehouse` to provide `ease of use`, `ease of collaboration` and `ease of maintenance` while optimizing business decisions. 

The `Enterprise Data Team` will continue to work towards achieving the following goals:

- Accelerate from Current Data state to a Single Source of Truth, Standardized, Governed Enterprise Data Structure that is Simple, Comprehensive and Layered for ease of use.
- Establish and support Data Management processes for analysis to be more efficient so that the users will know exactly where to find the data they need.
- Build a well governed data lineage to easily identify data dependencies, understand who is using each data source and make relevant tables more accessible.
- Provide high-quality, reliable, centralized and trusted data models for accurate analysis and reporting purposes.
- Ensure the data is secure and compliant with well-defined roles for subject areas.
- Consolidate data across multiple sources for increased efficiency.
- Centrally share and govern data within cross-functional teams using a unified data catalog.
- Having a consistent data architecture that is scalable and robust.


# Useful Links and resources

- [A Complete Enterprise Data Platform](https://about.gitlab.com/handbook/business-technology/data-team/direction/#a-complete-enterprise-data-platform)
- [Enterprise Dimensional Modelling](https://about.gitlab.com/handbook/business-technology/data-team/platform/edw/)
- [Data Team Data Management](https://about.gitlab.com/handbook/business-technology/data-team/data-management/)
- [Data Team Platform](https://about.gitlab.com/handbook/business-technology/data-team/platform/)


