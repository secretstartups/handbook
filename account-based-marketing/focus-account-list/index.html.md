---
layout: handbook-page-toc
title: Focus Account List
description: Focus Account List Handbook
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# <i class="fab fa-gitlab fa-fw" style="color:rgb(252,109,38); font-size:.85em" aria-hidden="true"></i> Focus Account List

## Overview
{: #overview .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
The Focus Account List (FAL) consists of key accounts in Enterprise and Mid-Market that align to our Ideal Customer Profile and will be a focus for ABM tactics (whether 1:1 "white glove" approach, or 1:many scaled tactics through Demandbase and other digital channels).

In Q4 FY22, the Account Based Marketing team will [evaluate and update the FAL process for FY23](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2475) in collaboration with Marketing, Sales, and Customer Success. Any changes will be communicated across the teams for full transparency. Stay tuned!

If you have any questions, please feel free to direct them to `@jgragnola` in the [#abmteam slack channel](https://gitlab.slack.com/archives/CFBT2HSEB).

### Large Focus Accounts (FY22)
{: #fal-enterprise }
<!-- DO NOT CHANGE THIS ANCHOR -->

1. ICP accounts- any account that matches our ICP
1. `first order available` accounts that have shown engagement.  This is all `first order` accounts that are `engaged w no people` and below in our marketing journey funnel.  Journey stages are outlined here for reference.
1. `new logo target account` accounts that are identified in SFDC.  These accounts are a subset of our `first order` total addressable market that are eligible for the `new logo` additional compensation for the Sales Organization.
1. Sales nominated- sales flags priority accounts in SFDC using the `account rank` field. Instructions to do this for your accounts is in SFDC are [here](/handbook/sales/field-operations/gtm-resources/).  **the exception to this rule is Public Sector because of how these account hierarchies are set up.  For PubSec, we include ranked accounts but do not apply the `first order available` requirement for these accounts.

### Mid Market Focus Accounts (FY22)
{: #fal-midmarket }
<!-- DO NOT CHANGE THIS ANCHOR -->
1. `first order` logos that are `engaged w no people` and below in our marketing journey funnel. Journey stages are outlined here for reference.

## In Salesforce, how can I tell if an account is in the Focus Account List?
{: #sfdc .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### GTM Strategy Field
{: #gtm-strategy-field }
<!-- DO NOT CHANGE THIS ANCHOR -->
The below are the categorizations for FY22. As the Account Based Marketing [evaluates and updates the FAL process for FY23](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2475) in collaboration with Marketing, Sales, and Customer Success, this this section will be updated, and changes will be communicated across the teams for full transparency. If you have any questions, please feel free to direct them to `@jgragnola` in the [#abmteam slack channel](https://gitlab.slack.com/archives/CFBT2HSEB).

1. **ABM**: accounts being targeted with a higher-touch `1:1` or `1:few` ABM campaign.
1. **ACCOUNT CENTRIC**: accounts being targeted with a `1:many` ABM campaign.
1. **TOTAL ADDRESSABLE MARKET**: `first order available` accounts not being targeted with ABM tactics.
1. **VOLUME**: All other accounts (**not** `first order available` and not being targeted with ABM tactics)

## Terminology & Definitions
{: #terminology .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### New First Order Logo
{: #new-first-order }
<!-- DO NOT CHANGE THIS ANCHOR -->
To qualify as a `New First Order Logo` account, there cannot be a customer anywhere within the account's hierarchy (including subsidiaries). If a child account in the Salesforce hierarchy is a paid customer, no associated accounts are considered `New First Order`.

### Connected New (aka Net New Logo)
{: #connected-new }
<!-- DO NOT CHANGE THIS ANCHOR -->
A `Connected New` account (sometimes called "Net New Logo") occurs when a new subscripton oder is started for an account associated to an existing customer. For example, if a related subsidiary begins a first new subscription order, but another account in the hierarchy is already a paid customer, it is considered `Connected New` (and not `New First Order`). ARR related to this new customer is considered `Connected New`.

The Salesforce field `Order Type` on the opportunity object automatically captures `New - First Order`, `Connected New`, and `Growth`. **Marketing is currently focused on `New - First Order`.**

### FY22 Focus Account List Development & Updates
{: #fal-development }
<!-- DO NOT CHANGE THIS ANCHOR -->
In FY22, the process of modifications to the FAL took place in the last 2 weeks of each quarter. The process for FY22 is below. 

As the Account Based Marketing [evaluates and updates the FAL process for FY23](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2475) in collaboration with Marketing, Sales, and Customer Success, this this section will be updated, and changes will be communicated across the teams for full transparency. If you have any questions, please feel free to direct them to `@jgragnola` in the [#abmteam slack channel](https://gitlab.slack.com/archives/CFBT2HSEB). 

**T-minus two weeks from end of quarter**

1. ABM nominations are made by sales

**Last day of quarter**

1. Closed won logos will be filtered out and the lists will be refilled based on next up ideal customer profile accounts. 
1. Accounts not showing an increase or are showing a decrease in engagement will be removed from the Focus list
1. Any additional accounts identified by sales as not a good prospect due to lack of budget, etc

**First business day of new quarter**

1. Salesforce is updated with all changes to the focus acccount list and shared with the organization

## Data sources
{: #data-sources .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
We use a variety of data sources to determine if an account matches one of our ideal customer profile data points. The table below shows the order of operation of where we look for this data.

| Attribute | Data Sources (in order of priority) |
| ------ | ------ |
| Number of developers | Aberdeen number of developers --> user/SAL input in Salesforce --> No. of employees as a proxy |
| Technology stack | Gainsight input --> Aberdeen technology stack --> user/SAL input in Salesforce --> Zoominfo tech stack  |
| Cloud provider | Aberdeen technology stack --> user/SAL input in Salesforce --> Zoominfo tech stack |
| Prospect | Total CARR for all accounts within the hierarchy equals zero |

### Account Sources
{: #account-sources }
<!-- DO NOT CHANGE THIS ANCHOR -->
All accounts in Salesforce that are part of the `ICP Total Addressable Market` will also have the `New Logo Target Account` field completed.

* **Existing** An account that already existed in our circumstances
* **Core** Newly identified core user
* **Lookalike** Account identified based on attributes that match our exisitng customer base

### Aberdeen Data
{: #aberdeen-data }
<!-- DO NOT CHANGE THIS ANCHOR -->
As part of the development of our ideal customer profile, we purchased data from [Aberdeen](https://www.aberdeen.com/?gclid=Cj0KCQiAqdP9BRDVARIsAGSZ8AlzfX6vYnVNh7YX2IKrc6uNhqjfGY6sQywcyZalJScxTyexilB0pa4aAvFdEALw_wcB) to help us determine our ICP total addressable market. The data included number of developers, specific technologies installed, and cloud provider.  The data is rolls up to the `Ultimate Parent` as we are looking for both the best entry point for an account and the overall environment.

| Data point | Salesforce field | Description & how to use the data |
| ------ | ------ | ------ |
| Number of developers | `Aberdeen Ultimate Parent Developer Count`  | This number is the total number of current developer contacts that Aberdeen has in their database for all sites of a company.  Because it is impossible to have a database of ALL contacts at a company, we look to this data point to verify if an account has over 500 developers IF the account has a number >500 in this field but we don't exclude an account from our TAM if thecount is lower than 500 due to the nature of the data point, rather, we go to our next best data point to verify. |
| Competitive technology | `Aberdeen Ultimate Parent Technology Stack` | This field identifies if a company has a certain technology in their technology stack that is part of our ideal customer profile |
| Cloud provider | `Aberdeen Ultimate Parent Cloud Provider` | Tells us if an account has AWS, GCP, or both as their cloud provider. |

### Frequently Asked Questions
{: #faq }
<!-- DO NOT CHANGE THIS ANCHOR -->

**What does the Demandbase intent score mean?**
[Demandbase handbook page](/handbook/marketing/revenue-marketing/account-based-strategy/demandbase/)
You can read all about Demandbase and how they score accounts (both numerically and by H/M/L) in the handbook page dedicated to Demandbase.

**As we run our campaigns against this list and learn more about which accounts are engaging/not, is there a process to take this learning into account for removing/adding accounts to the list?**
The Focus Account List is a dynamic audience. When an account is closed won/disqualified, it will be dropped from the list and refilled 1x a quarter ahead of sales QBR's. (Note from `@jgragnola` that we need to determine if/how this is triggering - [Epic for integrations and data flow documentation](Build stronger integration of data and automation for Demandbase and tech stack))

**For accounts outside the list that are engaging, how can we share that information so they can get added to the list?**
We are using Demandbase to track all accounts that fit our ideal customer profile.  We can see an increase in engagement in the platform and will be adding to the list quarterly.

**At a high level, how does the intent data get collected?**
[Handbook page](/handbook/marketing/revenue-marketing/account-based-strategy/demandbase/#intent-fields--definitions) 

**Where can I see the Focus Account List?**
In Salesforce, the `GTM Strategy` field will include `Account Centric` or `ABM` (Note from `@jgragnola`: this will be simplified in FY23, but they are currently maintained as separate lists). From there, you can filter by segment to see the respective lists, or by account owner, etc. to filter further.

**How do I surface an account for review to be added to the `Focus Account List`?**
IN Q4 FY22, the Account Based Marketing team is working with marketing, sales, and customer success to evaluate and update our Focus Account List processes ([epic here](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2475).)

In order to focus on [Q4 FY22 top priorities](https://gitlab.com/groups/gitlab-com/-/epics/1654), with the number one priority being to drive pipeline out of the already engaged FAL, we will not be doing manual additions to the FAL in Q4. If you have any questions, please feel free to direct them to `@jgragnola` in the [#abmteam slack channel](https://gitlab.slack.com/archives/CFBT2HSEB).

