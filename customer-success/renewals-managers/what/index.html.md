---
layout: handbook-page-toc
title: Renewals Managers - What we do
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the Renewals Manager handbook pages [How We Do It](https://about.gitlab.com/handbook/customer-success/renewals-managers/how) or [Home](https://about.gitlab.com/handbook/customer-success/renewals-managers/home) for additional content on how renewals managers execute their tasks. 


---

# FY24 Renewals Opportunity Management

In FY24, the Global Renewals team will manage more customer-facing transactions than any other team at GitLab. As such, the Renewals team manages Renewal Opportunities with the utmost level of rigor and data quality to ensure a high degree of organization, effective collaboration with account teams, and successful Renewal outcomes.

The Renewals team primarily uses these key fields on Renewal Opportunities:

## Opportunity Info
- `Close Date` - The date on which this Opportunity is expected to close (if still open), or the date on which it closed.
- `Subscription Renewal Date` - the Renewal Date of the active Subscription
- `Customer Subscription link` - hyperlink to the Subscription information
- `Type` - indicates whether the Opportunity is New Business, Add-on, or Renewal
- `Order Type` - Indicates whether this Opportunity counts as new, growth, contraction, or churn.
- `Auto Renew Status` - indicates if the Subscription is set to automatically renew or not

## Deal Management
- `Stage` [link](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/#opportunity-stages)- indicates where in the Renewal/Sales cycle the deal is
- `Next Steps` - field to record critical information and actions that have occurred during the deal lifecycle and what and when the next step is to progress the deal forward
- `Next Steps History` - the record of previous Next Steps

## Forecasting
- `Renewal Forecast Health` [link](https://internal-handbook.gitlab.io/handbook/sales/sales-forecasting/#forecast-category-and-renewal-forecast-health-fields) - Red, Yellow, Green health rating based on the Net ARR field
- `Renewal Risk Category` - used to categorize the magnitude of risk on a Renewal and if the risk is Actionable
- `ARR Basis` - the revenue that is Available to Renew (ATR)
- `Amount` - the forecasted revenue for the deal
- `Renewal Swing ARR` - the revenue the Account team believes can be saved on an at-risk Renewal if we take action
- `Net ARR` - the delta between the ARR Basis and the Amount. Positive NetARR reflects Growth while negative NetARR reflects Churn or Contraction.
- `ARR Basis (for Clari)` - Used for calculating Renewal Rate. This is the revenue that is Available to Renew (ATR)
- `Won ARR Basis (for Clari)` - Used for calculating Renewal Rate. This is the forecasted renewal revenue for the deal. This field caps out at 100% of the ARR Basis (for Clari) field to reflect no more than a 100% renewal.

## Ownership
- `Opportunity Owner` - the DRI for the outcome of the Opportunity
- `Renewals Manager` - the Renewals Manager supporting this Opportunity
- `Renewals Ownership` - this field determines ROE and ownership for the Renewal between the RM and the AE
- `Carahsoft Renewals Manager` - indicates the Carahsoft Renewals Manager supporting this deal

## Analytics
- `Closed Won Reason` - the reason the deal was Closed Won
- `Closed Lost Reason` - the reason the deal was Closed Lost
- `Downgrade Reason` - the reason why the Customer renewed but reduced ARR
- `Closed Won Details` - free-form field for additional information and insight as to why we won the deal
- `Closed Lost Details` - free-form field for additional information and insight as to why we lost the deal
- `Downgrade Details` - free-form field for additional information and insight as to why the customer reduced.

# Renewals Forecast Methodology
In FY24 The Global Renewals team is responsible for providing the business with a Churn forecast on a regular basis for the Enterprise-Growth (ENTG) Segment. 

Providing an accurate, data driven Churn forecast is essential for GitLab’s continued growth as it enables the business to:
- Identify and manage Churn and Contraction risk effectively
- Drive revenue predictability in support of strategic decision making
- Analyze and take strategic action on trends within GitLab’s book of business to mitigate risk

## Approach
In partnership with AEs, the Renewals team will generate a “bottom-up” Churn forecast whereby every ENTG Renewal Opportunity will contain a forecasted revenue range to predict the outcome or potential outcomes of the Renewal. With every Renewal Opportunity forecasting a “worst case” and a “best case” scenario Renewals Managers will be able to provide a forecast range for their worst case renewal rate and their best case renewal rate for a given time period, territory etc. As risk is identified, categorized, and forecasted, Renewals Managers will alert relevant parties (CSM, AE) using appropriate channels. 

## How We Forecast Churn and Contraction
The key revenue fields for setting the Renewal forecast are:

- `ARR Basis (for Clari)`
- `Amount`
- `Won ARR Basis (for Clari)`
- `Renewal Swing ARR`

The `ARR Basis (for Clari)` field is the amount of revenue that is up Available to Renew (ATR). The `Won ARR Basis (for Clari)` is the field we use to indicate how much of the ATR we believe will be renewed on a given Subscription. This field is populated based on the revenue input in the `Amount` field.

By comparing the `Won ARR Basis (for Clari)` field to the `ARR Basis (for Clari)` `field we can determine a forecasted renewal rate with the following formula:

`(Won ARR Basis (for Clari)` / `ARR Basis (for Clari)`) * 100 = Worst Case Renewal Rate`

For example, if we have a renewal with $100k in the `ARR Basis (for Clari)` field, that means we have a Subscription with $100k of ARR to renew. Based on their analysis, a Renewals Manager predicts that, as a worst-case scenario, we will renew $75k out of the $100k, and the Customer will Contract by $25k. The Renewals Manager will input $75k in the `Amount` field (which populates the `Won ARR Basis (for Clari)` field with $75k). Based on the above formula, we arrive at a 75% Renewal Rate for this deal as a worst-case scenario.

`($75,000/$100,000)*100 = 75%`

The next step is to determine our potential best-case scenario. We achieve this by using the `Renewal Swing ARR` field and adding that value to the `Won ARR Basis (for Clari)` field value. The formula looks like this:

`(`Won ARR Basis (for Clari)` +` Renewal Swing ARR` / `ARR Basis (for Clari)`) * 100 = Best Case Renewal Rate`

Building on the above example, the Renewals Manager determines that if we take action, we could save the $25k of revenue that is at risk. To reflect this in the forecast, the Renewals Manager updates the `Renewal Swing ARR` field with $25k so that our best-case Renewal Rate looks like this:

`($75,000 + $25,000/$100,000)*100 = 100%`

What the Renewals Manager is saying with this forecast is that the worst-case scenario is a 75% Renewal Rate, and the best-case scenario is a 100% Renewal Rate.

In summary, the Renewals Manager is forecasting that they believe there is a risk the Customer reduces their Subscription from $100k to $75k ($25k Contraction), but if we take action, they could get the Customer to renew all $100k of their Subscription (no Contraction).

Note that if there is no risk on a given Renewal, the worst-case scenario and best-case scenario will be the same (a 100% renewal), and populating the `Renewal Swing ARR*`* field is not necessary.

# Account team collaboration
Renewals Managers work closely with Customer Success Managers/Engineers and Account Executives. After a customer purchases a subscription with GitLab - they can expect to be engaged by these persona in the following ways:

- **Account Executive**: Manages the overarching customer relationship with GitLab on the account level. Primary focus is on how to grow the customers relationship with GitLab. Account Executives are sales people. 
- **Customer Success Manager/Engineer**: Dependent upon our segmentation, a CSM or CSE could be assigned to an account or territory. Their primary focus is adoption, outcomes and advocacy. CSM/Es are not sales people - they are specialists in Customer Success.
- **Renewals Manager**: Manages a customers existing renewable business. Primary focus is on retention, with a secondary focus on growth. Renewals managers are a hybrid role - managing the renewal "sale" and the renewal process. They sit at the intersection of customer success and sales. 

