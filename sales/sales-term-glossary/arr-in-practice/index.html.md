---
layout: handbook-page-toc
title: "ARR in Practice"
description: "This page includes a deep-dive into the definition of ARR at GitLab and is a sub-page of the Sales Term Glossary Page"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The below page includes a deep-dive into the definition of ARR at GitLab and is a sub-page of the [Sales Term Glossary Page](/handbook/sales/sales-term-glossary).

## Annual Recurring Revenue (ARR)

GitLab defines ARR as the annual run-rate revenue of subscription agreements from all customers in a given month. GitLab calculates ARR by taking the monthly recurring revenue, or MRR, and multiplying it by 12. MRR for each month is calculated by aggregating, for all customers during that month, monthly revenue from committed contractual amounts of subscriptions. ARR and MRR should be viewed independently of revenue, and do not represent GitLab's GAAP revenue on a monthly or annualized basis, as they are operating metrics that can be impacted by contract start and end dates and renewal rates. ARR and MRR are not intended to be replacements or forecasts of revenue. ARR and MRR calculates subscription fees normalized to a monthly value, and does not include one-time or usage fees.

We snapshot ARR on business day 4. 

### Delta ARR

The change in annual recurring revenue (ARR) from one period to the next. 

Note: Delta ARR is not currently a metric that we can use for operational purposes including planning, compensation or as a KPI.  We are documenting assumptions to enable a transition to Delta ARR from iACV when our systems are processes are ready to support that move.

When looking at a time horizon of the next twelve months Delta ARR will equal IACV except:
1. True-ups and CI Minutes are included in IACV but not in delta ARR
1. Timing: Delta ARR only includes contracts that have started where as IACV is based on the close date so the difference in the close dates of the contracts driving the IACV to the subscription start date impacts the difference
1. Co-term: If contract value is less than 12 months Delta ARR will show the 12 month value and IACV will show the value of the contract.

Delta ARR = iACV - [True Ups and CI Minutes] + [Coterm difference] +/- [Timing differences]

### Booked Net ARR

The Booked Net ARR value of deals booked in a specific period. It is the bookings equivalent to Delta ARR.

When looking at a time horizon of the next twelve months Booked Net ARR will equal IACV except:
1. True-ups and CI Minutes are included in IACV but not in Booked Net ARR.
1. Co-term: If contract value is less than 12 months Booked Net ARR will show the 12 month value and IACV will show the value of the contract.

Booked Net ARR = iACV - [True Ups and CI Minutes] + [Coterm difference].

As Booked Net ARR is a bookings metric, the period it represents is based on the Close Date of the Opportunity.

Booked Net ARR is tracked in the `Booked Net ARR` field located on the Opportunity in Salesforce.

### Booked ARR

The Booked ARR value of a deal includes its renewal amount and its Booked Net ARR. It is the bookings equivlent of ARR. 

**Example:** A customer with a $100k ARR subscription renews at $130k the following year. 
- Booked ARR = $130k. 
- Booked Net ARR = $30k.

Booked ARR also includes multi-year bookings where the ARR renews even if the deal is not officially up for renewal.

Note: Booked Net ARR and Booked ARR are being developed along side ARR and Delta ARR and is not currently a metric that we can use for operational purposes including planning, compensation or as a KPI.  We are documenting assumptions to enable a transition to Booked Net ARR from iACV when our systems are processes are ready to support that move.

### ARR Analysis Framework

A measure of changes to ARR compared to the prior month, fiscal quarter, or year. While retention calculations measure changes compared to the same period in a previous year, we also need to measure changes over smaller time periods (month-to-month and quarter-to-quarter) to make real-time business decisions and evaluate the immediate impact of our programs and initiatives. While the net and gross retention metrics are externally reported, corporate metrics, the month-to-month and quarter-to-quarter ARR changes reporting is used for internal analysis. ARR changes are reported at the parent account level, with drill down capability to see account level detail.

Types of Delta ARR:
- new - ARR for the customer's first paying month/quarter
- expansion - ARR increased from previous month/quarter
- contraction - ARR decreased from previous month/quarter
- churn - ARR decreased all the way to zero for a customer who was paying in the previous month/quarter
- no impact - ARR remained the same from previous month/quarter

Reasons for Delta ARR:
- seat change - a change in the quantity of seats purchased
- price change - a change in discount
- tier change - an upward or downward change in the product purchased (i.e., from Silver up to Gold)

#### ARR Analysis Framework - Cost Accounting Methodology

The reasons for changes to Delta ARR can happen in combination, such as a change in tier and a change in quantity of seats at the same time. When this happens, the reporting will attribute a specific dollar value of contraction or expansion ARR to each reason. The attribution methodology gets more complex when there are two or three reasons for the ARR change. This analysis framework can also be used to calculate counts of customers that fall into each Delta ARR and Reasons for Delta ARR bucket.  

The analysis framework can also be used to calculate counts of customers that fall into each Type of Delta ARR and Reasons for Delta ARR bucket. The Types of Delta ARR are mutually exclusive where a customer will only be counted for one Type of Delta ARR. However, the Reasons for Delta ARR are NOT mutually exclusive and a customer can have more than one Reason for Delta ARR resulting in the customer being counted in more than one Reason for Delta ARR bucket. 

The current model only considers price changes when the tier stays the same. However, the next model iteration will consider price changes when the tier and price changes. This section will be updated at that time to reflect the additional insights realized off the next model iteration. 

Here are the combinations of reasons that ARR change can be attributed to:
- seat change
- price change
- tier change
- seat change and price change
- seat change and tier change
- seat change, tier change, and price change (will be modeled in the next iteration)

Here are examples of ARR changes when there are two reasons for the change:

![](/handbook/sales/images/arr_reasons_for_change.jpg)
