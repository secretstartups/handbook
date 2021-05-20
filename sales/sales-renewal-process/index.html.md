---
layout: handbook-page-toc
title: "Sales Renewals Process Guide"
description: "Renewals Lifecycle Management Process Guide for GitLab Sales"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Renewals Policy

#### Finance Subscription Cancellation Policy: 
- Subscriptions will be considered fully cancelled 45 days after the subscription term end date, unless they are renewed.
- Customers returning 180 days after churn will be treated as New Business
- PAO reserves the right to dispute any suspect Sales behavior attempting to circumvent this policy.

#### Renewal Opportunity Policy:
- Renewal Opportunities will have a 45 day grace period after subscription term end date, after which it should be considered lost and moved to Closed Lost.
- If the customer later decides to renew (re-transact with GitLab) from days 45-180 beyond subscription term end date, work with Deal Desk team to [back out the Closed Lost renewal](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/#subscription-cancellation-policy) and book a new renewal transaction.

## Renewal Lifecycle Management
#### Opportunity Creation
Renewal opportunities will be automatically created upon initial creation (or renewal) of a subscription, and assigned to the current Account Owner.
  - Opportunities will be created at Stage “2-Scoping”
  - Opportunity Close Date = Subscription Term End Date
  - Amount = Subscription $CARR
  - Renewal ACV = $0 (initially)

#### Opportunity Management (SalesForce)
It is the opportunity owner’s responsibility to progress a renewal opportunity through the Salesforce stages, and accurately reflect the liklihood of the renewal closing & value throughout the subscription lifecycle. This includes moving to Closed Lost according to the Cancellation policy defined above, where applicable.

#### Renewal Opportunity Dates
Renewal opportunity `Close Date(s)` will be aligned to the respective subscription term end date.
- All Renewal opportunities should ideally be moved to “Closed Won” or “Closed Lost” by the term end date (sooner if the customer indicates).
- Any renewal opportunity closing beyond this term end date is considered a late renewal, and be subject to the Grace Period window outlined below.
- Late renewals hurt our ability to accurately forecast the business, and we should strive to avoid them.


## Closed-Lost Renewal Management

#### Renewal “Grace Period” Window:
In the event the customer's decision to renew/cancel drags out beyond the term end date, **Sales will have 45 days to close the opportunity or it will automatically be moved to the Closed Lost** stage with the appropriate Lost reason populated.
  - This will help ensure alignment with the Finance Cancellation Policy & ensure accurate renewal forecasting.
  - Accurate input of Lost Reason are also critical to understanding churn trends.
  - Customers will also begin to see downgraded product functionality starting at Day +14 after term end, and their  Zuora subscription will be cancelled on Day +31. 
  - See below for details around the late renewal automated closed lost process

#### Late Renewal Notification & Auto Close Process
To ensure proper adherence to the 45 day late renewals Bookings Policy, notifications of upcoming, late and auto closed renewals have been automatically set up to allow adequate time for the renewal owner to review. 

**Notification Timelines:** 
- **First notification:** 15 days prior to Quote Start Date
  - Warning that renewal will be expiring in 15 days and action needs to take place
  - Audience: opportunity owner, ISR, opportunity owner manager
- **Second notification:** Day of Quote Start Date
  - Warning that renewal expires on this day and action needs to take place
  - Audience: opportunity owner, ISR, opportunity owner manager
- **Third notification:** 30 days after Quote Start Date
  - Warning that renewal is 30 day lapsed and action needs to take place or we'll auto close (lose) in 15 days
  - Audience: opportunity owner, ISR, opportunity owner manager
- **Final notification:** 46 days after Quote Start Date
  - Opportunity has been auto moved to Closed Lost
  - Audience: opportunity owner, ISR, opportunity owner manager

**Tracking**
- Each notification is tracked as an activity in SFDC on the associated account
- Opportunities that get automatically closed will reflect the following information:
  - `Stage`: 8-Closed Lost
  - `Closed Lost/Unqualified Reason`: Other
  - `Closed Lost/Unqualified Details`: Auto closed late renewal

**Steps to Take if Renewal Infomation is Incorrect**

Prior to closure, if any questions or errors are discovered on the renewal opportunity, please chatter @sales-support on the renewal opportunity with details.  Sales Operations and/or Deal Desk will review and update the opportunity as necessary. 

**Steps to Request an Exception**

To request an excpetion to extend a renewal opportunity beyond 45 days after its Quote Start Date, please review the steps documented in the "**Exceptions**" section of our [FY22 Bookings Policy handbook page](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#late-renewals). 

**Steps to Take if a Customer Returns after 45 Days**

If a customer returns after 45 days and their renewal opportunity has been moved to Closed Lost (automatically or by a user), please refer to the [FY22 bookings policy handbook page](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#fy22-bookings-policy) for details on how to open a new Renewal or New Business opportunity accordingly.

#### Duplicate Opportunities
Duplicate opportunity records should always be set to stage `10-Duplicate`. They should never be set to Closed Lost, as this distorts our renewal forecasting and churn metrics. It also has negative implications to anyone on a NET comp plan (ASM/RD/VPs).

#### Deal Desk Close Review Process
All Closed Lost opportunities will be reviewed by Deal Desk for accuracy, as part of their standard close process. This includes deduping renewal opportunities from the web portal, and ensuring Sales hasn’t errantly Closed Lost a duplicate record.

## Returning Customers

In the event a cancelled customer returns to Gitlab, we will use the following guidelines for booking it as a Renewal vs New Business:
1. Within 180 days of subscription term end date, book the return transaction as a Renewal (work with deal desk to back out the prior Closed Lost transaction)
1. After 180 days of subscription term end date, book the return transaction as New Business.
