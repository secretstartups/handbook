---
layout: handbook-page-toc
title: "Slack Dashboard"

---
<link rel="stylesheet" type="text/css" href="/stylesheets/biztech.css" />


---
## Slack Dashboard
This dashboard is used to monitor the percent of messages that are not DMs
as related to the [Chief of Staff Team to the CEO KPIs](https://about.gitlab.com/handbook/ceo/chief-of-staff-team/performance-indicators/#percent-of-sent-slack-messages-that-are-not-dms). This dashboard can help us understand how to increase the use of public channels and be handbook-first.


The dashboard can be found [here](https://app.periscopedata.com/app/gitlab/513609/GitLab-Slack)


###Updating Data

1. Head to https://gitlab.slack.com/stats
2. Change `Date Range` to all time and export data
3. Use the following code to clean the data (this can be done through R Studio) - https://gitlab.com/gitlab-data/analytics/-/blob/master/transform/general/clean_slack_data.R
4. Once you have the cleaned data heads to sheetload.slack_stats(https://docs.google.com/spreadsheets/d/15a2PVvSs7K_C-EsGq2hKLUYNywxPmE74Ldx-YbXqN-w/edit#gid=673732546) and replace data in current tab with new data

