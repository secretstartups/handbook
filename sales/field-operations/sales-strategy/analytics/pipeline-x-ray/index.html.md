---
layout: handbook-page-toc
title: "Sales Strategy - Pipeline X-Ray Report"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Pipeline X-Ray dashboard

### Goal

The X-Ray dashboard provides a forward looking perspective of the current and quarters available pipeline. 

### Metrics

1. Targets  (Net ARR & deal count)
1. Closed Deals (Net ARR & deal count)
1. Pacing (Booked / Target)
1. Created & Closed 
1. Open Pipe by Stage 1+, 3+, 4+
1. Coverage by Stage 1+, 3+, 4+
1. Pipeline Generation within Quarter (Net ARR & deal count)
1. Historical (between last 4 to 2 quarters) average of coverage metrics

Most of this metrics are available for current quarter, next quarter and next quarter + 1

### Business Cuts

1. User Segment (aligns with VP level)
1. User Region (aligns with RD / ASM level)
1. Order Type (group into Growth / New)
1. Sales Qualified Source

### Historical coverages

To calculate the coverage metrics we use the [sfdc_opportunity_snapshot_history_xf]() table which contains a copy of the opportunity object by day. 

From current day perspective, we calculate the coverage metric for previous quarters in the same normalised day of the quarter. Coverage is calculated at the specific cut level (e.g. Segment / Region) as `Open Pipe Stage X+ / Remainder to Target`.

**Remainder to Target** is calculated as  `Target - Booked Net ARR`.

### Nuances / Considerations
- Coverage to Remainder to Target is only calculated if the remainder is > 10k USD
- For historical coverages we calculate it as `Open Pipeline with Stage X+ at day Y / Total Booked at end of Quarter`
- *Historical Coverages* are the inverse of *Historical Win rates* `Win Rate = 1 / Coverage`

### Data models

A set of data models were created to simplify reporting effort on Sisense / gSheet, looking at the SQL code is the best way to be sure that the metrics are presenting what it is expected from them.

Here is a table of the created models with links to their respective DBT model documentation.

| Maintainer | Model Name | Description |
| ----- | ----- | ----- |
| [@nfiguera](https://gitlab.com/nfiguera) | pipeline_metrics_per_day | a |





