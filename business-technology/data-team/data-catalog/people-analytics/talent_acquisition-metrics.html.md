---
layout: handbook-page-toc
title: "Talent Acquisition Metrics Dashboard"

---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />

## On this page

- TOC
{:toc}

{::options parse_block_html="true" /}

---
## Talent Acquisition Key Metrics

GitLab is a focused on supporting our team members, and just like other business stakeholders our Talent Acquisition Team within People Group is data focused to constantly improving the hiring process to help teams internally hire the right team members, and also making sure candidates that go through the process have a good experience.

Many of the Talent Acquisition KPIs can be found in our [KPI Index](https://about.gitlab.com/handbook/ceo/kpis/#talent-acquisition-kpis).

The [Talent Acquisition Metrics Dashboard](https://app.periscopedata.com/app/gitlab/668158/Talent-Acquisition-Metrics) takes into account our KPIs, in addition to other metrics.

### Quick Links
<div class="flex-row" markdown="0" style="height:80px">
  <a href="https://app.periscopedata.com/app/gitlab/668158/Recruiting-Metrics" class="btn btn-purple" style="width:50%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Talent Acquisition Metrics Dashboard</a>
  <a href="https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.greenhouse_stage_analysis" class="btn btn-purple" style="width:50%;height:100%;margin:5px;float:left;display:flex;justify-content:center;align-items:center;">Model Documentation</a>
</div>

<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Using the Dashboard People Metrics Dashboard</h1>
<br>

The [talent acquisition metrics dashboard](https://app.periscopedata.com/app/gitlab/668158/Recruiting-Metrics) allows users to come in and get a quick insight of where GitLab stands for the last month, the previous fiscal quarter end, and identifies how the company has been trending for the selected date range (defaulted to past 12 months).

The dashboard allows users to filter on:
  - Talent Acquisition Division
  - Talent Acquisition Department (a division must be selected to go to the department level)
  - Talent Source
  - Talent Source Name (a talent source must be selected)
  - Talent Acquisition Team (i.e. engineering talent acquisition team, the sales talent acquisition team, etc)
  - Talent Acquisition Team Recruiter (dependent on talent acquisition team filter)
  - Candidate Coordinator
  - Is Prospect (to identify if the candidate is a potential prospect that we have reached out to versus a candidate where they have started the hiring process by applying through other sources)
  - Sourcing Team Flag
  - Sourcing Team Sourcer (dependent on `sourcing team flag set` = `sourcing team`)


Some key tips while using this dashboard:
1) If you see the <span style="color:blue">metric name in blue</span> there is an accompanying dashboard that will allow you to explore the data deeper. Click on the link to head there!


<style> #headerformat {
background-color: #6666c4; color: black; padding: 5px; text-align: center;
}
</style>
<h1 id="headerformat">Talent Acquisition Metrics Data Model </h1>

This dashboard is built off [`greenhouse_stage_analysis`](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.greenhouse_stage_analysis). The source data comes from Greenhouse.

This data model provides an overview of each candidate that has gone through the hiring process and what stages they have hit in addition to key attributes (i.e. source, recruiter, division the job is for, etc)

The underlying data to create this model is accessible to team members with access to `greenhouse` [role](https://gitlab.com/gitlab-data/analytics/-/blob/master/permissions/snowflake/roles.yml).

In Sisense you'll see the underlying query displayed as:

```
  WITH talent acquisition_data AS (

    SELECT *
    FROM legacy.greenhouse_stage_analysis
    WHERE [division_modified=Talent Acquisition__Division]
      AND [department_name=talent acquisition_department]
      AND [source_type=Talent_Source]
      AND [sourcing_team=Sourcing_Team_Flag]
      AND [sourcer_name=Sourcing_Team_sourcer]
      AND [talent acquisition_team=talent acquisition_team]
      AND [candidate_recruiter=Talent Acquisition_Team_Recruiter]
      AND [source_name=Talent Acquisition_Source_Name]
      AND [candidate_coordinator=candidate_coordinator]
      AND [is_prospect=Is_Prospect]


  [talent acquisition_metrics] --- this uses a sisense snippet that identifies all the key metrics i.e. calcuating out which candidates are considered an applicant, what the application to reviewed rate is, what the application to hire rate is, etc.

  The entire snippet can be found [here](https://app.periscopedata.com/app/gitlab/snippet/recruiting_metrics/55081acd27f44d7fb1706d47f44b5ae8/edit)

  SELECT prospected
  FROM metrics
  WHERE month_stage_entered_on = DATE_TRUNC(month, CURRENT_DATE())
```
<!-- To see all underlying data models and how they create `greenhouse_stage_analysis` check out the ERD -->









