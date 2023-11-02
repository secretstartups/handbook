---

title: "Merge Request (MR) Rate"

---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />




{:toc}

{::options parse_block_html="true" /}

---

## Merge Request (MR) Rate

MR Rate is a measure of productivity and efficiency. The numerator is a collection of merge requests to a set of projects. The denominator is a collection of people. Both are tracked over time (usually monthly).

Additional detail on overall and wider MR Rate can be found [here](https://about.gitlab.com/handbook/engineering/merge-request-rate/)

### Quick Links

<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/820498/TD:-MR-Rate---WIP" class="btn btn-purple" style="width:50%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">MR Rate Dashboard</a>
  <a href="https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_gitlab_employees_merge_request_metrics" class="btn btn-purple" style="width:50%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">DBT Documentation</a>
</div>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Getting Started </h1>

The MR Rate Dashboard is built on `rpt_gitlab_employees_merge_request_metrics` and takes into account 2 main filters:

1) `Breakout`: This allows the user to view the dashboard at a company, division, or department level.

2) `Breakout_division_department`: This filter is a child filter and will change depending on the breakout selection.
  - `Breakout` = `Company` --> `Breakout_division_department` will give 1 option to be selected `all_company`
  - `Breakout` = `Division` --> `Breakout_division_department` will list all the divisions at GitLab
  - `Breakout` = `Department`--> `Breakout_division_department`  will list all the division-department combinations.

  *Note: the `Breakout_division_department` filter only allows you to select 1 option as the data is pre-aggregated.*


The dashboard itself consists of:
1) The MR Rate Trend

2) A % member of team members with at least 1 MR trend

3) A breakdown of the MR Rate by team members for the previous month

4) A breakdown of which projects are accounted for, and those that are not.


***Projects that are part of the product***

In the MR Rate and Volume of MR calculations, we consider MRs from projects that contributes to the overall product efforts.

The current list of projects are identified in the gitlab-data/analytics project for the following system databases:

|System Database | File                          |
|GitLab.com         |[projects_part_of_product.csv](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/projects_part_of_product.csv)  |
|ops.gitlab.net     |[projects_part_of_product_ops.csv](https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/snowflake-dbt/data/projects_part_of_product_ops.csv) |


Looking to update the projects list, follow the directions [here](https://about.gitlab.com/handbook/engineering/metrics/#updating-the-list-of-projects)

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;}
</style>
<h1 id="headerformat">Data Model</h1>

The [underlying data model](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_gitlab_employees_merge_request_metrics?g_v=1&g_i=%2Brpt_gitlab_employees_merge_request_metrics%2B) take into account a lot of data models beforehand, however, we try to make it easier to analyze by bringing this into 1 aggregated data model at the GitLab team member level, and then creating the aggregated level report:

[gitlab_employees_merge_requests_xf](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.rpt_gitlab_employees_merge_request_metrics) -- shows all merge requests for GitLab Team Members, and indicates whether the merge request is accounted for in our mr rate calculation with the usage of the `is_part_of_product` field.

In addition, we use [`gitlab_bamboohr_employee_base`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.gitlab_bamboohr_employee_base) to create our base model that breaks down employees by month and organizational attributes (i.e division, department, etc) and how long they are effective.






