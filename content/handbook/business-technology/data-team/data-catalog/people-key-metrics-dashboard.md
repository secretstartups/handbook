---
aliases: /handbook/business-technology/data-team/data-catalog/people_key_metrics_dashboard
title: "People Metrics"

---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />


---

## People Key Metrics

GitLab is a focused on supporting our team members, and just like other business stakeholders our People Group is data focused when it comes to creating an environment that allows team members to focus on the contribution they have at GitLab.


Many of the People KPIs can be found in our [KPI Index](/handbook/company/kpis/#people-group-kpis).

The [People Metrics Dashboard](https://app.periscopedata.com/app/gitlab/714228/People-Metrics-Drill-Down) takes into account our KPIs, in addition to other metrics that help drive people data decisions.

### Quick Links

<br>
<br>
<br>
<div class="flex-row" markdown="0" style="height:80px">
<p>
  <a href="https://app.periscopedata.com/app/gitlab/714228/People-Metrics-Drill-Down" class="btn btn-purple" style="width:25%;height:50px;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">People Metrics Dashboard</a>
  <a href="https://app.periscopedata.com/app/gitlab/714960/People-Metrics-Overview" class="btn btn-purple" style="width:25%;height:50px;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">People Metrics Overview</a>
  <a href="https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_rpt_headcount_aggregation" class="btn btn-purple" style="width:25%;height:50px;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Model Documentation</a>
  <a href="https://app.periscopedata.com/app/gitlab/831245/People-Data-Discovery-Feature" class="btn btn-purple" style="width:25%;height:50px;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">People Data Discovery Dashboard</a>
  <a href="https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_rpt_headcount_aggregation" class="btn btn-purple" style="width:25%;height:50px;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Demo of Data Model</a>
  <a href="https://youtu.be/NJpIgvPxSMM" class="btn btn-purple" style="width:25%;height:50px;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Video Demo of Data Model and Dashboard</a>
</p>
</div>
<br>
<br>
<br>


<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Using the Dashboard People Metrics Dashboard</h1>


The [people metrics dashboard](https://app.periscopedata.com/app/gitlab/714228/People-Metrics-Drill-Down) allows users to come in and get a quick insight of where GitLab stands for the last month, the previous fiscal quarter end, and identifies how the company has been trending for the selected date range (defaulted to past 12 months).

The dashboard can be filtered down to 3 levels:

| Dashboard View | Filter 1 | Filter 2 |
|----------------| ---------| ---------|
| GitLab Overall | `Breakout` = `Company` | `Breakout_Division_Department` = `All Company` |
| GitLab Overall | `Breakout` = `Division` | `Breakout_Division_Department` = `Filter on the applicable division` |
| GitLab Overall | `Breakout` = `Department` | `Breakout_Division_Department` = `Filter on the applicable division-department` |

**Note: This only allows you select 1 division or 1 department at a time.

Some key tips while using this dashboard:
1) If you see the <span style="color:blue">metric name in blue</span> there is an accompanying dashboard that will allow you to explore the data deeper. Click on the link to head there!
2) If you need to see everything aggregated in a report --> head to the [People Metrics Overview - Current Month](https://app.periscopedata.com/app/gitlab/714960/WIP---People-Divisional-Dashboard). This is accessible within the dashboard.
    - This works in the same way as the drilldown report.  For example, filtering on `People_Metrics_View` = 'Division` will show the breakout of all kpis in a report with divisions across the top and GitLab Overall at the end to provide a quick comparision at the division level.
       - This is great for questions like which division has high attrition, or which divisions are we behind on hiring for?
    - By filtering on `People_Metrics_View` = 'Department` it will allow the viewer to dive deeper into the above questions, and determine if there is an issue at the department level.


<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">People Metrics Data Model </h1>

The majority of the dashboard is built off [`bamboohr_rpt_headcount_aggregation`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.bamboohr_rpt_headcount_aggregation).

This data model aggregates all relevant people metrics at 4 levels on a monthly basis:
1. `kpi_breakout` -- this shows all metrics aggregated up to the company level
2. `division_breakout`
3. `department_breakout`
4. `eeoc_breakout` -- this shows metrics aggregated to understand diversity metrics (i.e gender, ethnicity, region)

The underlying data to create this model is accessible to team members with access to `bamboohr_analytics` role and then for more sensitive data (i.e. EEOC data and compensation) `bamboohr` role.

<!-- To see all underlying data models and how they create `bamboohr_rpt_headcount_aggregation` check out the ERD -->

### Create Your Own Report:

Looking to create a report yourself, check out the demo video that walks through how to use the `discovery` feature in Sisense. This allows users to drag and drop fields.

A preview of this feature can also be found on the [People Data Discovery Feature Dashboard](https://app.periscopedata.com/app/gitlab/831245/People-Data-Discovery-Feature)







