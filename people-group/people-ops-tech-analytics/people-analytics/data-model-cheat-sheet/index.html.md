---
layout: handbook-page-toc
title: People Analytics Data Models Cheat Sheet
---

## On this page
{:.no_toc}

- TOC
{:toc}
## Objectives for this page

This handbook page is intended to provide a high-level overview of the most common data models used by the People Analytics team. If you are in need of using People Data for dashboard development and reporting, this page will help you determine the best models to use. IF you have any questions please don't hesitate to reach out to someone from the team for help.

## Helpful places to start

* [DBT Docs](https://dbt.gitlabdata.com/#!/overview) - This resource contains comprehensive documentation on all available dbt models. This is a great starting point to understanding our models. For specific People Models, please reference the **Commonly Used Data Models** section below for a starting point.

* [Definitive guides to data subject areas](https://about.gitlab.com/handbook/business-technology/data-team/data-catalog/#definitive-guides) managed by the Data team. 

* [Documentation on data pipelines](https://about.gitlab.com/handbook/business-technology/data-team/platform/pipelines/) for the technically curious analyst. This page goes into each data source and extraction details.

* [People Group Tech Stack Guide](https://about.gitlab.com/handbook/people-group/workday/tech-stack-guide-workday/) for overview of all the integrations that go into and out of our HR systems and all the tools we use.

## Data Model Categories

These categories are grouped by data source and subject area.

### Workday/BambooHR

_Workday_ is our current HRIS system and single source of truth for employee data. The cutover for workday data was on 2022-06-16, and any data prior to that point in time was provided by our previous HRIS system, _BambooHR_.
 

#### Documentation


<details markdown="1"><summary>Click to expand</summary>

* [Workday Overview](https://about.gitlab.com/handbook/people-group/workday/workday-guide/)



#### Commonly Used Data Models


<details markdown="1"><summary>Click to expand</summary>

| Database | Schema | Table Name | Data Grain | Description | Notes |
| --- | --- | --- | --- | --- | --- |
| prod | legacy | [employee_directory_analysis](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.employee_directory_analysis) | `employee_id` by `date_actual` | Gives the current state of the employees at GitLab at any point of time. This is the model to use for headcount, team size, or any people-related analysis for employees. This has current and past employees, as well as their department, division, and cost center and hire/termination dates. | |
| prod | legacy | [bamboohr_rpt_headcount_aggregation](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_rpt_headcount_aggregation) | `department`, `division`, `eeoc_value` | This report creates out a headcount report from the bamboohr_headcount_intermediate to be used for Sisense dashboards for each month. | The division reporting is based on current division used. |
| prep | sensitive | [employee_directory_intermediate](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.employee_directory_intermediate) | `employee_id` by `date_actual` | INCLUDES SENSITIVE INFORMATION. The master collection of all info about GitLab employees for their latest position. | |
| prep | sensitive | [bamboohr_employment_status_xf](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_employment_status_xf) | `employee_id` by `valid_from_date` | This model provides a transaction record of an employee's status changes (i.e. active, leave, termed). It helps identify when an employee is re-hired, and provides termination type | |
| prep | sensitive | [bamboohr_promotions_xf](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_promotions_xf) | `employee_id` by `promotion_date` and `compensation_sequence` | This model identifies all individuals that were promoted and the compensation change associated to the promotion. The total compensation change is equal to the change in compensation (from bamboohr_compensation model) times the pay frequency and currency conversion at time of promotion + change in OTE(USD) at time of promotion. In the case the team member is hourly, we use the bamboohr_currency_conversion table. | |
| prep | sensitive | [bamboohr_id_employee_number_mapping](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_id_employee_number_mapping) | `employee_id` | This model is the canonical source mapping bamboo employee numbers with employee IDs. It includes all employees for all time. The model also captures demographic information, and removes test accounts. | |
| prep | sensitive | [bamboohr_separations](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_separations) | `employee_id` | Provides a report of all separated team members. | |
| prep | sensitive | [workday_terminations](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.workday_terminations) | `employee_id` | Provides the termination reason, and exit impact to allow the People Analytics team to accurately report on termination data | |
| prep | workday | [blended_directory_source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.blended_directory_source) | `employee_id` by `uploaded_at` and `source_system` | Daily upload of employee data used for downstream models. | Helpful source for auditing any data issues in Snowflake |

</details>


### Greenhouse

_Greenhouse_ is GitLab's ATS (Applicant Tracking System) and will contain information relating to Talent Acquisition including candidates, applications, requisitions, interviews, and offers.

#### Documentation


<details markdown="1"><summary>Click to expand</summary>

* [Greenhouse Overview](https://about.gitlab.com/handbook/hiring/greenhouse/)


</details>


#### Commonly Used Data Models


<details markdown="1"><summary>Click to expand</summary>

| Database | Schema | Table Name | Data Grain | Description | Notes |
| --- | --- | --- | --- | --- | --- |
| prod | workspace_people | [rpt_hires](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_hires) | `application_id` | This is a report specifically for talent acquisition and counts accepted offers as hires. |  |
| prep | greenhouse | [greenhouse_application_stages_source](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.greenhouse_application_stages_source) | `application_id` by `stage_id` and `stage_entered_on` | This table is Historical activity of all stages an application can be in Each row represents a stage that an application can be in, and the timestamp that the application entered and exited the stage Things to note: This table contains a row for each stage that an application can be in (taken from the job that the application is on). Thus, there may be rows for stages that an application has yet to reach, or will not reach (if the application was rejected). |  |
| prep | sensitive | [greenhouse_recruiting_xf](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.greenhouse_recruiting_xf) | `application_id` | This is shows all applications submitted and ties in offer data, greenhouse department (the associated division), and source data to be in 1 place. |  |

</details>

