---
layout: handbook-page-toc
title: "ARR in Practice"
description: "This page includes a deep-dive into the definition of ARR at GitLab and is a sub-page of the Sales Term Glossary Page"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The below page includes a deep-dive into the definition of ARR at GitLab and is a sub-page of the [Sales Term Glossary Page](/handbook/sales/sales-term-glossary/).

## Annual Recurring Revenue (ARR)

GitLab defines ARR as the annual run-rate revenue of subscription agreements from all customers in a given month. GitLab calculates ARR by taking the monthly recurring revenue, or MRR, and multiplying it by 12. MRR for each month is calculated by aggregating, for all customers during that month, monthly revenue from committed contractual amounts of subscriptions. ARR and MRR should be viewed independently of revenue, and do not represent GitLab's GAAP revenue on a monthly or annualized basis, as they are operating metrics that can be impacted by contract start and end dates and renewal rates. ARR and MRR are not intended to be replacements or forecasts of revenue. ARR and MRR calculates subscription fees normalized to a monthly value, and does not include one-time or usage fees.

We snapshot ARR on business day 4. 

### Delta ARR

The change in annual recurring revenue (ARR) from one period to another based on Subscription start and end dates. 

When looking at a time horizon of the next twelve months Delta ARR will equal IACV except:
1. True-ups and CI Minutes are included in IACV but not in delta ARR
1. Timing: Delta ARR only includes contracts that have started where as IACV is based on the close date so the difference in the close dates of the contracts driving the IACV to the subscription start date impacts the difference
1. Co-term: If contract value is less than 12 months Delta ARR will show the 12 month value and IACV will show the value of the contract.

Delta ARR = iACV - [True Ups and CI Minutes] + [Coterm difference] +/- [Timing differences]

### Net ARR

The Net ARR value of deals booked in a specific period based on SFDC Opportunity Close Date. It is the bookings equivalent to Delta ARR.

When looking at a time horizon of the next twelve months Net ARR will equal IACV except:
1. True-ups and CI Minutes are included in IACV but not in Net ARR.
1. Co-term: If contract value is less than 12 months Net ARR will show the 12 month value and IACV will show the value of the contract.

Net ARR = iACV - [True Ups and CI Minutes] + [Coterm difference].

### ARR Basis

The ARR Basis of a renewal opportunity is the ARR of the subscription it is renewing.

ARR Basis is automatically recalculated after every subscription change.

### Booked ARR

The Booked ARR value of a deal which includes renewal ARR Basis plus it's Net ARR. It is the bookings equivalent of ARR. 

**Example:** A customer with a $100k ARR subscription ($100k ARR Basis) renews at $130k the following year. 
- Booked ARR = $130k. 
- Net ARR = $30k.

Booked ARR also includes multi-year bookings where the ARR renews even if the deal is not officially up for renewal.

## Annual Recurring Revenue (ARR) and Salesforce

### ARR Opportunity Fields

For more information on which opportunity fields are used in the calculation of ARR, see [Salesforce Booking Metrics Field Data Dictionary](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/sfdc-booking-metric-fields/#arr-fields).

**ARR Opportunity Field Display**

New Business/Add-On layout:

![New Business/Add-On ARR Fields](/images/handbook/sales/NewBusinessAddOnARRFields.png "New Business and Add-On ARR Fields")

Renewal layout:

![Renewal ARR Fields](/images/handbook/sales/RenewalARRFields.png "Renewal ARR Fields")

### How Net ARR is Calculated For Standard Deals

Note: Each row in the tables below represents a unique deal. 

#### Calculating Net ARR for **New Business** Opportunities:

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 12 months | $120,000 | $120,000 |
| New Business | 24 months |  $240,000 | $120,000 |
| New Business | 36 months |  $360,000 | $120,000 |

Net ARR vs. Net iACV Comparison

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** | **Net iACV** |
| ------ | ------ | ------ | ------ | ------ |
| New Business | 12 months | $120,000 | $120,000 | $120,000 |
| New Business | 24 months |  $240,000 | $120,000 | $120,000 |
| New Business | 36 months |  $360,000 | $120,000 | $120,000 |

#### Calculating Net ARR for **Add-On** Opportunities:

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| Add-On Business | 6 months | $60,000 | $120,000 |
| Add-On Business | 12 months | $60,000 | $60,000 |
| Add-On Business | 18 months | $60,000 | $40,000 |

Net ARR vs. Net iACV Comparison

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** | **Net iACV** |
| ------ | ------ | ------ | ------ | ------ |
| Add-On Business | 6 months | $60,000 | $120,000 | $60,000 |
| Add-On Business | 12 months | $60,000 | $60,000 | $60,000 |
| Add-On Business | 18 months | $60,000 | $40,000 | $40,000 |

#### Calculating Net ARR for **Renewal** Opportunities:

| **Type** | **Opportunity Term**  | **Amount/TCV** | **ARR Basis** | **True-Up** |  **Net ARR** |
| ------ | ------ | ------ | ------ | ------ | ------ |
| Renewal | 12 months | $120,000 | $120,000 | $0 | $0 |
| Renewal | 12 months | $140,000 | $120,000 | $20,000 | $0 |
| Renewal | 12 months | $120,000 | $100,000 | $0 | $20,000 |
| Renewal | 24 months | $240,000 | $120,000 | $0 | $0 |
| Renewal | 24 months | $260,000 | $120,000 | $20,000 | $0 |
| Renewal | 24 months | $240,000 | $100,000 | $0 | $20,000 |

Net ARR vs. Net iACV Comparison

| **Type** | **Opportunity Term**  | **Amount/TCV** | **ARR Basis** | **True-Up** |  **Net ARR** | **Renewal ACV** | **Net iACV** |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| Renewal | 12 months | $120,000 | $120,000 | $0 | $0 | $120,000 | $0 |
| Renewal | 12 months | $140,000 | $120,000 | $20,000 | $0 | $120,000 | $20,000 |
| Renewal | 12 months | $120,000 | $100,000 | $0 | $20,000 | $100,000 | $20,000 |
| Renewal | 24 months | $240,000 | $120,000 | $0 | $0 | $120,000 | $0 |
| Renewal | 24 months | $260,000 | $120,000 | $20,000 | $0 | $120,000 | $20,000 |
| Renewal | 24 months | $240,000 | $100,000 | $0 | $20,000 | $100,000 | $20,000 |

Note: In FY22, future renewal opportunities are created automatically upon closure of any new business or renewal opportunity. On these future renewal opportunities, ARR Basis is calculated and stamped automatically at opportunity creation. In addition, ARR basis updates automatically when mid-term growth transactions occur, enabling real time data and accurate renewal forecasting.

### How Net ARR is Calculated for Non-Standard Deals

#### Calculating Net ARR for **Subscription Merges**:

In the event that, upon renewal, multiple subscriptions are consolidated into one renewal, the **ARR Basis** on the active renewal opportunity will be updated by Deal Desk to reflect the combined ARR Basis of both existing subscriptions. The inactive renewal opportunity will be close as Duplicate.

#### Calculating Net ARR for **Ramp Deals**:

A **Ramp Deal** is defined as ["a single deal with multiple individual ramp periods."](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#opportunity-category)

In FY22, Ramp Deals will be limited to 12 month ramp periods. This means that only multi-year deals can be ramped. Each ramp period will have its own opportunity in Salesforce. All ramp deals will be stamped with the "Ramp Deal" [Opportunity Category](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#opportunity-category) value.

- **New Business Ramp Deal Example:** A customer purchases a three-year ramped new subscription, where the Year 1 value = $100,000, the Year 2 value = $200,000, and the Year 3 value = $300,000.

**Opportunity 1 - Year 1:**

Ramp Period: 2021-01-01 to 2021-12-31 | Close Date: No more than 15 days prior to 2021-01-01

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 36 months | $600,000 | $100,000 |

**Opportunity 2 - Year 2:**

Ramp Period: 2022-01-01 to 2022-12-31 | Close Date: 2022-01-01

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 12 months | $0 | $100,000 |

**Opportunity 3 - Year 3:**

Ramp Period: 2023-01-01 to 2023-12-31 | Close Date: 2023-01-01

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 12 months | $0 | $100,000 |

- **Renewal Ramp Deal Example:** A customer purchases a three-year ramped renewal subscription, where the ARR Basis is $100,000, Year 1 value = $100,000, the Year 2 value = $200,000, and the Year 3 value = $300,000.

**Opportunity 1 - Year 1:**

Ramp Period: 2021-01-01 to 2021-12-31 | Close Date: No more than 15 days prior to 2021-01-01

| **Type** | **Opportunity Term**  | **Amount/TCV** | **ARR Basis** |  **Net ARR** |
| ------ | ------ | ------ | ------ | ------ |
| Renewal | 12 months | $600,000 | $100,000 | $0 |

**Opportunity 2 - Year 2:**

Ramp Period: 2022-01-01 to 2022-12-31 | Close Date: 2022-01-01

| **Type** | **Opportunity Term**  | **Amount/TCV** | **ARR Basis** |  **Net ARR** |
| ------ | ------ | ------ | ------ | ------ |
| Renewal | 12 months | $0 | $100,000 | $100,000 |

**Opportunity 3 - Year 3:**

Ramp Period: 2023-01-01 to 2023-12-31 | Close Date: 2023-01-01

| **Type** | **Opportunity Term**  | **Amount/TCV** | **ARR Basis** |  **Net ARR** |
| ------ | ------ | ------ | ------ | ------ |
| Renewal | 12 months | $0 | $200,000 | $100,000 |

For more information about **quoting Ramp Deals**, visit the [Deal Desk Handbook.](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#how-to-create-a-ramp-deal)

#### Calculating Net ARR for **Contract Resets**:

A **Contract Reset** is defined as ["a new subscription that replaces an existing subscription, where the existing subscription is canceled prior to its end date.](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#opportunity-category)

A Contract Reset consists of two opportunities. The first opportunity is for the new subscription - even so, this opportunity is always tagged as a Renewal Opportunity. This opportunity will be stamped with the "Contract Reset" [Opportunity Category](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#opportunity-category) value. The second opportunity is a cancellation of the existing subscription, which produces a credit to the customer. This opportunity will be stamped with the "Credit" [Opportunity Category](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#opportunity-category) value.

- **Contract Reset Example:** A customer with an existing $50,000 subscription cancels that subscription 6 months into the subscription term, and transacts a new 12 month $100,000 subscription.

**Existing Closed Won Opportunity (New Business)**

Subscription Term: 2021-01-01 to 2021-12-31

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 12 months | $50,000 | $50,000 |

**Credit Opportunity (New Business)**

Subscription Term: 2021-07-01 to 2021-12-31

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 6 months | -$25,000 | -$50,000 |

**Contract Reset Opportunity (Renewal)**

Subscription Term: 2021-07-01 to 2022-06-30

| **Type** | **Opportunity Term**  | **Amount/TCV** | **ARR Basis** | **Net ARR** |
| ------ | ------ | ------ | ------ | ------ |
| Renewal | 12 months | $100,000 | $0 | $100,000 |

In this scenario, the Credit Opportunity and Contract Reset Opportunity are closed on the same date. Between the two opportunities, combined Net ARR is $50,000.

For more information about **quoting Contract Resets**, visit the [Deal Desk Handbook.](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#contract-reset)

- **Add-On vs. Contract Reset**: Compare the above example with a 6 month add-on/upgrade

**Existing Closed Won Opportunity (New Business)**

Subscription Term: 2021-01-01 to 2021-12-31

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 12 months | $50,000 | $50,000 |

**6-Month Add-On/Upgrade Opportunity**

Amendment Term: 2021-07-01 to 2021-12-32

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| Add-On Business | 6 months | $50,000 | $50,000 |

In this scenario, the Net ARR for a 6 month add/on upgrade is $50,000. Because Net ARR is annualized, the value of a 6  month add-on/upgrade is equivalent to that of a contract reset scenario for an equivalent upgrade.

#### Calculating Net ARR for Annual Payment Deals:

An Annual Payment Deal is defined as a multi-year deal that is paid annually. These deals will be captured on a single opportunity, if flat. If ramped, these deals will be captured on multiple opportunities, per the above Ramp Deal section. All annual payment opportunities will be stamped with the "Annual Payments" [Payment Schedule](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#payment-schedule) value.

- **New Business Annual Payments Deal Example:** A customer purchases a three-year new subscription with annual payments, where the total TCV of the deal is $300,000.

**Opportunity:**

Subscription Term: 2021-01-01 to 2023-12-31

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Net ARR** |
| ------ | ------ | ------ | ------ |
| New Business | 36 months | $300,000 | $100,000 |

Note: **Annual Payments** require additional approvals. See "Deferred Payments" in the [Deal Approval Matrix](https://docs.google.com/document/d/1-CH-uH_zr0qaVaV1QbmVZ1rF669DsaUeq9w-q1QiKPE/edit?ts=5d6ea430#heading=h.5r6g2e2czzmp).

### ARR Technical Documentation

For the technical documentation for the implementation of Net ARR, ARR Basis, and Booked ARR in Salesforce [please use this page.](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/gtm-technical-documentation/sfdc-booking-metric-fields/)

### ARR Analysis Framework

A measure of changes to ARR compared to the prior month. While retention calculations measure changes compared to the same period in a previous year, we also need to measure changes over smaller time periods (month-to-month and quarter-to-quarter) to make real-time business decisions and evaluate the immediate impact of our programs and initiatives. While the net and gross retention metrics are externally reported, corporate metrics, the month-to-month and quarter-to-quarter ARR changes reporting is used for internal analysis. ARR changes are reported at the parent account level by default, with drill down capability to the subscription-product grain for certain types of analysis. ARR changes are reported at the monthly level by default, and months are aggregated up for quarterly reporting.

Types of Delta ARR:
- new - ARR for the customer's first paying month/quarter
- expansion - ARR increased from previous month/quarter
- contraction - ARR decreased from previous month/quarter
- churn - ARR decreased all the way to zero for a customer who was paying in the previous month/quarter
- no impact - ARR remained the same from previous month/quarter

Reasons for Delta ARR:
- seat change - a change in the quantity of seats purchased
- price change - a change in discount
- tier change - an upward or downward change in the product purchased (i.e., from Premium up to Ultimate)

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
