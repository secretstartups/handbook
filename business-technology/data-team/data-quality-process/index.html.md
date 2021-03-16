---
layout: handbook-page-toc
title: "Data Quality Process"
description: "The goal of the DQP is to ensure that changes in metrics are documented and communicated properly."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .toc-list-icons .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

---

## Data Quality Process

The goal of the DQP is to ensure that changes in metrics are documented and communicated properly. Data are dynamic and the methods use to perform analytics are constantly changing and improving. If a change is going to impact certain [operating metrics](/handbook/finance/operating-metrics/) we want to be sure we document what changed and why it changed. We also want to communicate it out as quickly and effectively as possible.

### Metrics

The following metrics require notifications per the DQP:

#### Tier 1

- Annual Recurring Revenue (ARR)
    - [Business Logic](/handbook/sales/sales-term-glossary/)
    - Current technical implementation in Sisense has the `mrr` column in the [`mrr_totals_levelled` table](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mrr_totals_levelled) multiplied by 12.
- Net and Gross Retention
    - [Business Logic](/handbook/customer-success/vision/#retention-and-reasons-for-churn)
    - Current technical implementation in Sisense utilizes the columns (`original_mrr`, `net_retention_mrr`, and `gross_retention_mrr`) from  [`retention_parent_account_` table](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.retention_parent_account_) to calculate the net and gross retention.
- Customer Counts
    - [Business Logic](/handbook/sales/sales-term-glossary/)
    - Current technical implementation in Sisense for
        - `Accounts and Parents` is the unique count of the `ultimate_parent_account_name` column from the [`mrr_totals_levelled` table](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mrr_totals_levelled).
        - `Subscription` is the unique count of the `subscription_name_slugify` column from the [`mrr_totals_levelled` table](https://dbt.gitlabdata.com/#!/model/model.gitlab_snowflake.mrr_totals_levelled).

### Process

When an upcoming change is identified, an issue will be opened in the Business Technology project using the [Data Quality Process issue template](https://gitlab.com/gitlab-com/business-technology/dqp-data-quality-process/dqp-project/issues/new?issuable_template=Data_Quality_Process).

All code changes happen in the two primary repos for the Data Team: [Analytics](https://gitlab.com/meltano/analytics/) and [Data Infrastructure](https://gitlab.com/gitlab-data/data-image/). The relevant issues there will be cross-linked to the issue in the Business Technology project.

The issue template will update and evolve over time, but at a minimum there will be a before and after of the metric documented, links to relevant issues and code changes, and documentation of why the change happened.

Tier 1 metrics require notification all the way to the board. CEO notification will happen once the change has been implemented and documented. Board notification will be done at the next board meeting unless the change is so severe as to warrant immediate notification via an investor update.

As more metrics are added to the DQP, lower severity tiers will be added.
