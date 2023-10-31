---
layout: handbook-page-toc
title: "System Usability Scale Database"
description: "Gitlab stores all previously recorded SUS surveys in the Sisense App to allow easy access for all team members."
---

### On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The [System Usability Scale](https://about.gitlab.com/handbook/product/ux/performance-indicators/system-usability-scale/) (SUS) is a standardized metric used to measure usability perception of computer interfaces. Gitlab uses SUS as one of the [UX Department's Key Performance Indicators](https://about.gitlab.com/handbook/product/ux/performance-indicators/#perception-of-system-usability), and collects data every quarter through a survey. 

Team members often need to look at past or present SUS scores or surface insights from the verbatims that users provide. In the past, this access to past SUS data was labor intensive. So, the UX Research Team collected and built a [SUS Database](https://app.periscopedata.com/app/gitlab/topic/SUS-Database/abdcbad729a343a09bf38824ef3585d3) in Sisense (internal access only), so that any team member can view all past SUS data points. Everyone at Gitlab is granted a View-only license to Sisense, but you can [request access](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request) to an Editor role, if you believe that is necessary for your role.

Gitlab started collecting regular SUS surveys in Q1 FY20, and we continue to collect data quarterly.

## Overview of SUS Database

The SUS Database contains information for every quarter of our SUS campaigns. A video walkthrough is available for gitlab team members ([Video Link](https://youtu.be/ONnZJUH4kbU)) (internal users only).

## What data do we have?

There are 2 main tables in our SUS Database:

-  **sus_all_data** contains the main columns of raw data that we collect for SUS, as well as a collection of sentiment analysis. This would be the main table to use for most queries.
  - Important Columns: 
    - doc_id: A unique identifier for each participant.
    - quarter: Format: FY[year]Q[quarter] (ex: FY21Q4). The quarter which the row of data was collected from. 
    - text_raw: The participant's verbatim from the survey.
    - theme: A hand coded label that associates the participant's verbatim with a UX theme.
    - su: The participant's calculated sus score from the survey.
    - plan: manual data entered from previous handoff.
    - primary_stage: A hand coded label that associates the participant's verbatim with a Gitlab Stag. A secondary stage could also be present in the secondary_stage column. 
-  **sus_indiv_scores** contains participant answers to the individual questions of the SUS score.
  - Important Columns (Q1-10): A column for each participant's answers to the individual SUS questions.

There is no Personal Identifiable Information (PII) in any of our data. If you have any questions about what other data is present or what the columns mean in our tables, please message the [#ux_research](https://gitlab.slack.com/archives/CMEERUCE4) Slack channel.

## How to access the SUS Database

A direct link to the [SUS Database is here](https://app.periscopedata.com/app/gitlab/topic/SUS-Database/abdcbad729a343a09bf38824ef3585d3). If you are in Sisense, one easy way to navigate to the [SUS database](https://app.periscopedata.com/app/gitlab/topic/SUS-Database/abdcbad729a343a09bf38824ef3585d3) is to use Sisense's Topics feature. Click on the Topics icon in the left navigation bar. Then, search for `SUS` and click on the `SUS Database` result.

![Sisense Search Example](/images/uxresearch/sus-search-example.png)


On the SUS Topic page, you will see two dashboards labeled [SUS Overview Dashboard](https://app.periscopedata.com/app/gitlab/968219/SUS-Overview-Dashboard) and [SUS Quarterly Dashboard](https://app.periscopedata.com/app/gitlab/968220/SUS-Quarterly-Dashboard). Both contain SUS data.  

- The SUS Overview Dashboard contains one table with some basic SUS data that you can filter and explore.

![SUS Overview Dashboard Example](/images/uxresearch/sus-overview-dash.png)

- The [SUS Quarterly Dashboard](https://app.periscopedata.com/app/gitlab/968220/SUS-Quarterly-Dashboard) contains multiple tables that show the most recent quarter of data pulled at any given time. Each table is made to answer a specific type of question concerning the SUS data.

![SUS Quarterly Dashboard Example](/images/uxresearch/sus-quarterly-dash.png)


## How to navigate the SUS Database

When viewing a dashboard, there are many different options available to customize or filter the data you see. This [video walkthrough](https://youtu.be/ZnMPaYaiOSc) (internal users only) shows how to change the way you view the data to get valuable insights.

### Filtering data

One of the most common things to do is filter the data on specific columns. As a part of our SUS database, we have created some global filters options for the most used columns: Quarter, Primary Stage, Secondary Stage, Theme, and Plan.

To use these filters, click on `FILTERS` near the top of the page. 

![Sisense Filter](/images/uxresearch/sus-filter.png)

This will show drop downs for all of our premade filters. Check each box for the filter you want to enable, and either wait for the page to refresh or manually refresh using the button at the top right of the page. You can use multiple filters at the same time.

For example, if you want to filter the data for only Q3 FY22 data, check the box marked `FY22Q3` in the QTR filter drop down.

![SUS Filter Example](/images/uxresearch/sus-filter-example.png)


### Discovering data

There are many ways you can explore the SUS data to find what you are looking for. The best method is to use one of the already existing charts that contains the data you are interested in. Click on the ☰ icon, and select `Edit Pivot`. Using the Pivot Settings, you can drag and drop any column to one of the boxes.

For example, if you want to find the average SUS score for each Gitlab Plan type:

1.  Click the ☰ icon and select `Edit Pivot`.
2.  Drag `PLAN` to the box labeled `Rows`. You will see a live view of your data in the background of the webpage.
3.  Drag `SUS_SCORE` to the box labeled `Values`.
4.  Click `SUS_SCORE`.
5.  In the left dropdown, make sure `Average` is selected.
6.  In the right dropdown, make sure `Number` is selected.
7.  Click the X icon.

If you want to create a visualization with the data, the best method is to click the ✎ icon in the table that contains the data you are looking for. On the right-hand side, there is a section labeled `SERIES SETTINGS`. The first dropdown contains options for multiple different types of visualizations.

_Don't be afraid to change the settings to get the visualization you want. You will not break anything!_

Lastly, if you are familiar with SQL, then you can click `NEW CHART` and search for "sus" in the search box to find the tables you want. You can write whatever query you want, and click `RUN SQL` to see the result.

If you need help with any of these steps, or trying to find useful information at all, please post a message in the [#ux_research](https://gitlab.slack.com/archives/CMEERUCE4) Slack channel!


### Downloading data

When you find actionable insights in the SUS Databse, you may want to share the data with another team member. This [video](https://youtu.be/UiPxIQcLIYA) (internal users only) walks through the different ways to download and share the data in Sisense.

The best way to download data in Sisense to select the ☰ icon in the table you want to download, and then select `Download Data`. If you want to download the entire dashboard, click the ☰ icon at the top-right of the page, and select `Download as PDF`. This will download everything you see on the page, including the text boxes and charts.

Another approach is to click the ✎ icon in the table you want to download. This will open the Edit page. Look for the `RUN SQL` button, click the dropdown icon, and then click `Download`. This will download the csv file for the data that corresponds to the SQL code, but it will not follow the filters you have made on the dashboard.

### Sharing data

While our SUS data does not contain SAFE material, always remember to follow the Gitlab [SAFE Framework](https://about.gitlab.com/handbook/legal/safe-framework/) when sharing or using data.
There are two ways to share data in Sisense. First, click the ☰ icon. Then, you can either `Share a Link` or `Post to Slack`. If you select share a link, Sisense will redirect you to a new page, and you can copy the link from your browser. If you select `Post to Slack`, then remember to set up the [Sisense Slack app](https://gitlab.slack.com/apps/A4C6CSAFM-sisense-for-cloud-data-teams?tab=more_info).
