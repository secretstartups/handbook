---
layout: handbook-page-toc
title: "TAM Quarterly Business Review"
description: "Instructions for TAM Managers on presenting their QBR decks."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

----

The TAM Manager is responsible for developing and delivering a [Quarterly Business Review](https://about.gitlab.com/handbook/sales/qbrs/) for their team each quarter.

The Quarterly Business Review is a tool to evaluate, report on, learn from the actions and performance of the team over the quarter, and share asks and priorities for the next quarter. TAM QBRs [follow the same schedule as Sales QBRs](https://about.gitlab.com/handbook/sales/qbrs/#qbr-schedules), and should be [presented during Sales QBR sessions](#presenting-a-tam-qbr) for the TAM Manager's region.

## Preparing a TAM QBR

Each quarter, a TAM QBR presentation template is developed to assist managers in developing their QBR with emphasis on the details that Customer Success and the TAM organization is focused on. Use this template as a starting point, and add additional details that are relevant to your team's story.

### Calculating team metrics

There are several key metrics that TAM Managers track, which are reported as part of QBRs. Use the guidelines for each of the metrics listed below to calculate your team's performance.

**NOTE:** All linked reports are in Salesforce or Gainsight, and are only available internally to GitLab employees.

#### IACV attainment

[Net Incremental Account Contract Value - Growth (Net IACV - Growth)](/handbook/sales/#net-incremental-annual-contract-value---growth-net-iacv---growth) is the metric used for TAM account growth. Your team's quota and attainment calculation uses this figure.

In the QBR presentation you may see this referenced as "IACV attainment" or "Net IACV attainment" which, while those are in fact their own metrics, in this context all refer to Net IACV - Growth.

Net IACV - Growth attainment is represented as a percentage, showing what your team attained against your team's target. To calculate your team's quarterly attainment, follow these steps:

1. Open your quota spreadsheet for the current fiscal year, and locate your target for the given quarter. We will refer to this value as `Target`.
1. Open the [TAM FY21 Attainment by Month - ORDER TYPE](https://gitlab.my.salesforce.com/00O4M000004aDtY) report.
1. In the Time Frame box at the top, set Range to the fiscal quarter (FQ) for which you need attainment data.
1. Locate your team in the table, and find the `Grand Total` value on the `Sum of Net IACV` line. We will refer to this value as `Attained`.
1. Run the following calculation: `(Attained / Target) * 100`.

The result is your team's Net IACV - Growth attainment as a percentage of your team's quarterly target.

#### Renewal rate

Renewal rate indicates our performance on keeping the customers that we have, and growing them.

Gross renewal is the total renewal for **all** accounts in the region for the specified time period, regardless of TAM alignment. In other words, it covers accounts that have a TAM and accounts that do not have a TAM. Gross renewal is driven by [Renewal ACV](/handbook/sales/sales-term-glossary/acv-in-practice).

Net renewal represents growth as part of renewal. It is driven by [Incremental ACV](/handbook/sales/sales-term-glossary/acv-in-practice).

**NOTE**: Renewal Rates and Retention Rates are _two different things_. Example:

- Renewal Rate: (renewed dollars / renewable dollars for that time period)
  - In Salesforce: `Sum of Won Renewal ACV` / (`Sum of Won Renewal ACV` + `Sum of Lost Renewal ACV` + `Sum of Downgrade IACV`)
  - Why it matters: this metric **excludes** any accounts that were _not_ up for renewal in the time period
- Retention Rate: measures how much a group of customers are paying us today who started 12 months ago (e.g., Jan 1 customers paid $100 and on Dec 31 they dropped to $90, our retention rate would be 90%)
  - Calculation: the Customer Success Vision page [describes the formulas for gross and net retention/renewal](/handbook/customer-success/vision/#retention-gross--net-dollar-weighted), and the [target gross and net retention rates](/handbook/customer-success/vision/#retention-and-reasons-for-churn).
  - Why it matters: this is a different formula that measures retained ARR, regardless of customer renewal timing

To calculate the Gross Renewal Rate for your region, use the following steps:

1. Open the [WW Renewal Forecast](https://gitlab.my.salesforce.com/00O4M000004aARC) report.
1. In the Time Frame box at the top, set Range to the fiscal quarter (FQ) for which you need renewal data.
1. Locate your team in the table, and then select the relevant line in the Grand Total column as follows:
  - Won Renewed ACV amount: `Sum of Won Renewal ACV`
  - Lost Renewal ACV amount: `Sum of Lost Renewal ACV`
  - Downgrade amount: `Sum of Downgrade IACV`
1. Run the following calculation: `Sum of Won Renewal ACV / (Sum of Won Renewal ACV + Sum of Lost Renewal ACV + Sum of Downgrade IACV) * 100`.
  - NOTE: for `Lost Renewal ACV` and `Downgrade IACV` these will need to be positive and increase the denominator rather than subtract from it. Example of a renewing $100, lost renewal of $5, and downgrade of $5: `(100 / (100 + 5 + 5) = 90%)`

The result is your team's renewal rate as a percentage. Gross retention cannot exceed 100%, so if you have a value above 100, double-check your math.

Note: when calculating Gross Renewal Rate for the current quarter, the above calculation **excludes** any open opportunities as those have not been closed out yet. We exclude outstanding renewals because they're unresolved; they may be bumped to the subsequent period, they may become closed won, or lost. Including open opps in the denominator would artificially lower percentage rate and would only become accurate toward the end of the quarter — it could not be used mid-quarter.

#### Renewal forecast

In addition to reporting on what already happened, TAM QBRs also look at what's coming in the new quarter. Part of that is forecasting renewals.

There are two key metrics for forecasting renewal:

1. **ACV up for renewal**: This is everything that is due to renew in the quarter. The the steps below, we will refer to this value as `Available`.
1. **ACV forecast Most Likely**: This is all of the renewals for the quarter that are projected with at least 50% likelihood of closing. In the steps below, we will refer to this value as `Most Likely`.

Forecast renewal rate is what's most likely to renew as a percentage of what's up for renewal. To calculate this, use the following steps:

1. Open the [WW Renewal Forecast - Region](https://gitlab.my.salesforce.com/00O4M000004aARC) report.
1. In the Time Frame box at the top, set Range to the fiscal quarter (FQ) for which you need renewal data.
1. Locate your team in the table, and using the `Sum of Renewal ACV` line, find the `Grand Total`. This is everything up for renewal. We will refer to this value as `Available`.
1. Using the same `Sum of Renewal ACV` line from the previous step, calculate the following: `Best Case + Commit + Closed`. We will refer to the value from this calculation as `Most Likely`.
1. Run the following calculation: `(Most Likely / Available) * 100`.

The result is your team's forecast Most Likely renewal rate, as a percentage.

## Presenting a TAM QBR

The schedule of TAM QBR presentations may vary each quarter, but typically QBRs are presented by each manager to the rest of the TAM leadership in a dedicated session, and then each TAM Manager presents their QBR during their region's Sales QBR sessions.

When presenting your QBR during Sales QBR sessions, you may have a very limited amount of time for your presentation. Have a plan to present your QBR with a focus on the highlights, and consider assembling an abbreviated version of your presentation.
