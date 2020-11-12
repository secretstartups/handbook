---
layout: handbook-page-toc
title: "iACV in Practice"
description: "This page includes a deep-dive into the definition of iACV at GitLab and is a sub-page of the Sales Term Glossary Page"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

The below page includes a deep-dive into the definition of iACV at GitLab and is a sub-page of the [Sales Term Glossary Page](/handbook/sales/sales-term-glossary).

## Annual Contract Value (ACV)

Value of **all** bookings from new and existing customers that will result in recurring revenue over the next 12 months less any credits, lost renewals, downgrades or any other decrease to annual recurring revenue.
Excluded from ACV are bookings that are non-recurring such as professional services, training and non-recurring engineering fees (PCV).

### Incremental Annual Contract Value (IACV)

Value of new bookings from new and existing customers that will result in recurring revenue over the next 12 months less any credits, lost renewals, downgrades or any other decrease to annual recurring revenue.
Excluded from IACV are bookings that are non-recurring such as professional services, training and non-recurring engineering fees (PCV). Also equals ACV less renewals.
However, bookings related to true-up licenses, although non-recurring, are included in IACV because the source of the true-ups are additional users which will result in recurring revenue.
IACV may relate to future periods (within twelve months).

IACV can be calculated by adding First Order IACV + Connected New IACV + Growth IACV.

More explicitly Beginning ARR + IACV may not equal ending ARR due to the following reasons:
1. True Ups: true-ups are included in IACV but not in the change in ARR (Delta ARR)
1. Timing: the change in ARR only includes contracts that have started where as IACV is based on the close date so the difference in the close dates of the contracts driving the IACV to the subscription start date impacts the difference
3. Co-term: if contract value is less than 12 months the change in ARR will show the 12 month value and IACV will show the value of the contract.

End ARR - Beginning ARR (Delta ARR) = iACV - [True Ups] + [Coterm difference] +/- [Timing difference]

Additionally IACV can be used to calculate Total ARR when combined with the renewal base.

Total ARR = New IACV + Growth IACV (Gross) + Renewals (including Multiyear mid-contract ARR) + Churn - [True Ups] +/- [bookings timing] +/- [co-term adjustment]

The final IACV value comes from the Net_IACV field in the Salesforce opportunities table.

#### How Incremental ACV is Calculated

Incremental IACV can be calculated for **new and add on business** in the following ways:

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Incremental ACV** | **Explanation** |
| ------ | ------ | ------ | ------ | ------ |
| New Business | 12 months | $120,000 | $120,000 | New customer signs for less than or equal to 12 months is IACV. |
| New Business | 24 months |  $240,000 | $120,000 | New customer signs up for 24 months, so while Amount/TCV is $240,000, only the first 12 months counts towards IACV.  |
| Add On Business | 5 months | $40,000 | $40,000 | Existing customer signs for less than or equal to 12 months is IACV. |
| Add On Business | 16 months | $16,000 | $12,000 | Existing customer signs for more than 12 months, so while Amount/TCV is for the entire 16 months at $16,000, only the first 12 months counts towards IACV.   |


When calculating Incremental ACV against **renewal** opportunities, we consider the Renewal ACV (please see "[How Renewal ACV is Calculated](/handbook/sales/#renewals-acv)" for more details). In the following scenario, we will look at how IACV is calculated:

| **Type** | **Opportunity Term** | **ACV** | **Renewal ACV** | **Incremental ACV** | **Explanation** |
| ------ | ------ | ------ | ------ | ------ | ------ |
| New Business | 12 months | $120,000 | $0 | $120,000  | New customer signs for less than or equal to 12 months is IACV. |
| Add On Business | 5 months |  $50,000 | $0 | $50,000   | Customer add on at less than or equal to 12 months is IACV.  |
| Renewal | 12 months | $240,000 | $170,000 | $70,000  | The IACV from the new and add on business from the previous year total $170,000, while the ACV of the renewal opp is $240,000. The delta is IACV of $70,000.  |

Note that in the above scenario, while you are only paid for the first 5 months for the upsell, you are paid for the remaining 7 months on the renewal, meaning you are paid the entire 12 month upsell ($120,000 IACV) over two separate opportunities.

**Contractual Ramps:** this happens when a customer wants to increase the number of users over time on a **single** contract.
* A customer purchased 1,000 Starter seats at $48,000 for year 1 of a **multi-year** subscription.
* Year 2, they have agreed to purchase 2,000 seats at $96,000.
* Previously, we would take the average of the two years as the IACV, which would have been $72,000.
* Due to stricter requirements regarding revenue recognition, effective **July 1, 2019**, the calculation is no longer the average, but the actual year first year IACV. This ensures alignment between our bookings and revenue recognition.
* In this case, the IACV now would be $48,000.

**Contract Resets/Restarts:** this happens when a customer wants to restart their subscription in the middle of term.
* A customer purchased a subscription for $12,000 in January. In April, they decide to upgrade to a $24,000 annual package, but also restart their term to end 12 months from April, meaning the end date would now be March 31 and not December 31.
* We would cancel the remaining subscription as of April 1 through December 31. This will result in a credit of $9,000, which will be applied to the new subscription.
* By definition, the reset should be tagged as a Renewal, since we are extending the customer's subscription, albeit early. Any increase in subscription fees would result in IACV.

| **Type** | **Opportunity Term** | **Dates** | **ACV** | **Renewal ACV** | **Incremental ACV** | **Explanation** |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| New Business | 12 months | Jan 1 - Dec 31 | $12,000 | $0 | $12,000 | New customer signs for 12 month plan at $12,000 IACV |
| New Business | 9 months |  Apr 1 - Dec 31 | ($9,000) | $0 | ($9,000) | Credit opp: Customer wants to upgrade to $24,000, but also wants to reset their term starting Apr 1  |
| Renewal | 12 months | Apr 1 - Mar 30 | $24,000 |  $3,000 |  $21,000 | Contract reset is closed. Renewal ACV is only $3,000 ($12,000 - $9,000). |

**Consolidation of Subscriptions:** this happens when a customer wants to combine multiple subscriptions into one.
In this case, we would total all current Renewal ACV into a single renewal opportunity.
* A customer purchased a subscription for $12,000 in January for 12 months.
* In July, they purchase a second subscription, this time for $24,000 for 12 months.
* They want to co-term both subscriptions to end in December.


| **Type** | **Opportunity Term** | **Dates** | **ACV** | **Renewal ACV** | **Incremental ACV** | **Explanation** |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| New Business (Sub 1) | 12 months | Jan 1 - Dec 31 | $12,000 | $0 | $12,000 | New customer signs for 12 month plan at $12,000 IACV  |
| New Business (Sub 2) | 12 months | Jul 1 - Jun 30 | $12,000 | $0 | $12,000 | New customer signs for 12 month plan at $12,000 IACV  |
| New Business (Sub 2) | 6 months |  Jan 1 - Jun 30 | ($6,000) | $0 | ($6,000) | Credit opp: Customer will cancel this subscription for the remainder of term to coterminate their subscriptions  |
| Renewal (Sub 1 + Sub 2) | 12 months | Jan 1 - Dec 31 | $24,000 |  $18,000 |  $6,000 | Renewal consoildation will take the full 12 months for Sub 1 and the remaining credit for Sub 2 ($12,000 - $6,000). |

**Splitting Subscriptions:** this happens when a customer wants to split a single subscription into multiple subscriptions.
In this case, we would split the renewal ACV from the single renewal opp into multiple opportunities:
* A customer purchased a subscription for $12,000 in January for 12 months.
* In July, they purchase a second subscription, this time for $24,000 for 12 months.
* They want to co-term both subscriptions to end in December.


| **Type** | **Opportunity Term** | **Dates** | **ACV** | **Renewal ACV** | **Incremental ACV** | **Explanation** |
| ------ | ------ | ------ | ------ | ------ | ------ | ------ |
| New Business         | 12 months | Jan 1 - Dec 31 | $12,000 | $0 | $12,000 | New customer signs for 12 month plan at $12,000 IACV  |
| Renewal Business (Sub 1) | 12 months | Jan 1 - Dec 31 | $3,000 | $3,000 | $0 | Customer is taking 1/4 of users and creating new subscription. $3,000 is the renewal ACV from the original $12,000.  |
| Renewal Business (Sub 2) | 6 months |  Jan 1 - Jun Dec 31 | $9,000 | $9,000 | $0 | Customer is taking 3/4 of users and creating new subscription. $9,000 is the renewal ACV from the original $12,000.  |

In the above scenario, the total Renewal ACV of two new renewal opps should total the IACV of the original opportunity.

### New ACV / New Customers

Net IACV that come from New Customers divided by the number of net new closed deals in the current month.

### New ACV / New Customers by Sales Assisted

Net IACV that come from New Customers and sold by the field sales team and not fulfilled through the web portal divided by the number of net new closed deals in the current month.

### Renewal (ACV)

The value of previously closed Won ACV that is up for renewal.
Renewal ACV should not include ACV from Professional Services or True-Ups. For clarity this does not include multi-year deals during the mult-year contract term.

##### How Renewals ACV is Calculated

Renewals ACV can be calculated in the following ways:

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Incremental ACV** | **Explanation** |
| ------ | ------ | ------ | ------ | ------ |
| New Business | 12 months | $120,000 | $120,000 | New customer signs for less than or equal to 12 months is IACV. |
| Add On Business | 5 months | $40,000 | $40,000 | Existing customer signs for less than or equal to 12 months is IACV. |

In the above case, the Renewals ACV will be $160,000.
Any delta from this number will result in a positive or negative impact to IACV.

**True Ups:**  Remember that true-ups are NOT included in the Renewals ACV of a renewing customer, even though they are classified as IACV.
Let's look at the scenario below:

| **Type** | **Opportunity Term**  | **Amount/TCV** | **Incremental ACV** | **Explanation** |
| ------ | ------ | ------ | ------ | ------ |
| New Business | 12 months | $48,000 | $48,000 | New customer purchases 1,000 Starter Seats |
| First Renewal | 12 months | $96,000 | $48,000 | Customer renews the 1,000 Seats, but also has a true up for 500 users. They also need to purchase 500 seats for the following term, so the IACV is $48,000  |
| Second Renewal | 12 months | $48,000 | $0 | On the second renewal, there is no growth from the 1,500 users, and since we are not including true ups in the Renewal ACV, the IACV is $0 (and not -$48,000 if we included true ups)  |

### Gross Incremental Annual Contract Value (Gross IACV)

Value of new bookings from new and existing customers that will result in recurring revenue over the next 12 months. Gross IACV includes true-ups, refunds and CI Minutes.

### Net Incremental Annual Contract Value (Net IACV)

Value of new bookings from new and existing customers that will result in recurring revenue over the next 12 months LESS any credits, lost renewals, downgrades or any other decrease to annual recurring revenue

### Net Incremental Annual Contract Value - Growth (Net IACV - Growth)

Value of bookings from existing customers that will result in recurring revenue over the next 12 months LESS any credits, lost renewals, downgrades or any other decrease to annual recurring revenue

### Growth Incremental Annual Contract Value (Growth IACV)

Contract value from subscription orders sold into a specific Account that is not the first subscription order sold into that specific Account. Contract value that increases at the time of subscription renewal which can come from a combination of new seats + true-ups + upgrades/downgrades + change in discount.

### First Order Incremental Annual Contract Value (First Order IACV)
Contract value from the first subscription order sold into a Account Family.

### Connected New Incremental Annual Contract Value (Connected New IACV)
Contract value from the first new subscription order with an Account that is related to an existing customer Account Family (regardless of relative position in corporate hierarchy)

