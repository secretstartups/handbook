---
layout: handbook-page-toc
title: "Data Team Triage"
description: "GitLab Data Team Triage"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## Triage FAQ
**Is Data Triage 24/7 support or shift where we need to support it for 24 hours?** <br>
We need to work in our normal working hour perform the list of task mentioned for the triage day in the [Triage Template](https://gitlab.com/gitlab-data/analytics/-/issues/new?issuable_template=Data%20Triage&issue%5Bassignee_id%5D=&issue%5Bmilestone_id%5D=)

**If any issue is found do we directly jump to fix it in production or take it as part of the incident and solve it within the defined time?** <br>
On the Triage day the data team member present will look for all the failures, questions or errors in:
- The Slack-channels; #data-prom-alerts #dbt-runs #analytics-pipelines and #data
- Newly added [issues](https://gitlab.com/groups/gitlab-data/-/boards/1917859?&label_name[]=Priority%3A%3A1-Ops&label_name[]=Triage)
- The TDF dashboard in [Sisense](https://app.periscopedata.com/app/gitlab/756199/Trusted-Data-Dashboard)

It includes all the failures since the last person did sign off and will create an issue for all the failures since then till the person signs off.
If any data pipeline has broken and there is expected to be a delay in getting data loaded or refreshed. The concerned team has to be notified using the [Triage Template](https://gitlab.com/gitlab-data/analytics/-/issues/new?

**Is there ETA for a different kind of issue?** <br>
If the pipeline is broken it needs to be fixed, currently we are working on defining SLO's for our data assets. For our data extraction pipelines, there is a comprehensive overview [here](/handbook/business-ops/data-team/platform/#extract-and-load/).

**If I work my normal hours on triage day i.e. till 11 AM of US timeline. What happens when the pipeline breaks post my normal hours and there is a delay in data availability?** <br>
Yes, the benefit of our presence is that we have a wide overage of hours. If the person who is on Triage is ahead of US timelines, we have an advantage of solving issues timely. The downside is that we have not full coverage that day for US timelines. This is an attention point towards the future. 

## Triage common issues
In this section we state down common issues and resolutions

| **Airflow Task failure!** |
|--|
| DAG `gitlab_com_db_extract` <br> Task `gitlab-com-dbt-incremental-source-freshness`  <br> |
| Background: This extract relies on a copy (replication) database of the GitLab.com environment. Its high likely that this is the root cause of a high replication [lag](https://prometheus-db.gprd.gitlab.net/graph?g0.expr=(pg_replication_lag)%20and%20on(instance)%20(pg_replication_is_replica%7Btype%3D~%22postgres-(archive)%22%7D%20%3D%3D%201)&g0.tab=0&g0.stacked=0&g0.range_input=1w&g1.expr=pg_long_running_transactions_age_in_seconds%7Btype%3D~%22postgres-(archive)%22%7D&g1.tab=0&g1.stacked=0&g1.range_input=6h). |
|More information of the setup [here](https://gitlab.com/gitlab-data/analytics/-/issues/8283#note_537332709). |
|Possible steps, resolution and actions: - Check for replication lag <br> - Pause the DAG if needed <br> - Check for data gaps <br> - Perform backfilling <br> - Reschedule the DAG |
|Note: The GitLab.com data source is a very important data source and commonly used. Please inform an update business stakeholders accordingly.|
