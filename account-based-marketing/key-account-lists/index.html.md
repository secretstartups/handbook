---
layout: handbook-page-toc
title: First Order Key Account List
description: First Order Key Account List Handbook
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# <i class="fab fa-gitlab fa-fw" style="color:rgb(252,109,38); font-size:.85em" aria-hidden="true"></i> First Order Key Account List

## Overview
{: #overview .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
The First Order Key Account List consists of Enterprise and Mid-Market **New First Order Logo** accounts that are identified by Sales as key accounts to land in FY23. With a set number of key accounts per rep, we will have a smaller, focused list to drive integrated ABM tactics against in FY23.

Accounts fall into two tiers: Tier 1 ("white glove") has a highly integrated and high-touch approach, leveraging data and anecdotal insight from Marketing, SDR, and Sales to drive strategy. Tier 2 ("scaled ABM") groups accounts based on intent, vertical, and other factors to drive a cohesive message to the key accounts.

This list was updated in FY23 Q1 - **[See epic here for reference >>](https://gitlab.com/groups/gitlab-com/marketing/-/epics/2604)** If you have any questions, please feel free to direct them to `@jgragnola` in the [#abmteam slack channel](https://gitlab.slack.com/archives/CFBT2HSEB).

## First Order Key Account List FY23
{: #fo-key-accounts .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

You can reference the ABM Key Account List using te `ABM Tier` field in Salesforce as the single source of truth (SSoT). Please read the sections below to understand Tier 1 vs. Tier 2.

* [SSoT Salesforce List](https://gitlab.my.salesforce.com/00O8X000008QgVD)
* [SSoT Demandbase List]()

The list will be determined by Sales Reps and Sales Leadership:
* [Tier 1 (1:1 ABM strategy aka "white glove")](/handbook/marketing/account-based-marketing/key-account-lists/#fo-key-accounts-tier-1)
* [Tier 2 (1:many ABM strategy aka "scaled ABM")](/handbook/marketing/account-based-marketing/key-account-lists/#fo-key-accounts-tier-2)

### Why two tiers?
{: #fo-key-accounts-tiers}
<!-- DO NOT CHANGE THIS ANCHOR -->
For Tier 1 "white glove" accounts, we will have a very integrated approach to strategizing ABM and campaign approach, integrating ABM, SDR, Sales, Campaigns, and Field Marketing. By first sharing data from the different teams, including intent data from Demandbase, campaign performance data from Campaigns, and historical context from Sales and SDRs, we will build a plan for engaging and progressing the account to SAO in an integrated manner.

For Tier 2 "scaled" accounts, we will develop intent-based Demandbase campaigns, and integrate the approach across all marketing channels, leveraging the global campaigns built by Marketing Campaigns, the Digital assets created by the Digital Marketing Team, and progression events and tactics managed by the Field Marketing Team. We will closely monitor progression of the key accounts to engage and become Marketing Qualifeid Accounts for SDRs and Sales.

### Tier 1
{: #fo-key-accounts-tier-1}
<!-- DO NOT CHANGE THIS ANCHOR -->

**What is Tier 1?** Tier 1 includes our highest value target accounts. . For these accounts, we will customize an integrated account marketing plan across ABM, SDR, Sales, Campaigns, and Field Marketing leveraging data and intel from all groups to define the approach.

**Required Characteristics:**
* Account Type: New First Order Logo
* Sales Segment: Enterprise
* To be confirmed

**How are these selected?** Sales Leadership (ASM) nominates with Regional VP review and approval

**Number of Accounts:** 28 - [discussion issue](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/940)
* *Total # defined by: a set number of accounts per region*
* **Enterprise: 25**
    * AMER: 12
    * EMEA: 8
    * APAC: 5
* **PubSec: 3**

**How to view these in SFDC:** `Key Account Tier = Tier 1`

*This tier will cascade through the account hierarchy, added to the accounts by a Sales Systems dataload.*

### Tier 2
{: #fo-key-accounts-tier-2}
<!-- DO NOT CHANGE THIS ANCHOR -->
**Required Characteristics:**
* Account Type: New First Order Logo
* Sales Segments: Enterprise and Mid-Market
* To be confirmed

**How are these selected?** Sales Rep designated with Sales Leadership review and approval (ASM and VP)

**Number of Accounts:** TBD - [issue](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/940)
* *Total # defined by: set number of accounts per rep*
* **Enterprise: 25**
    * AMER: 12
    * EMEA: 8
    * APAC: 5
* **PubSec: 3**
* **Mid-Market: 2250** [WIP issue for reference](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/949)

**How to view these in SFDC:** `Key Account Tier = Tier 2`

*This tier will cascade through the account hierarchy, added to the accounts by a Sales Systems dataload.*


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

<!--
## Data sources
{: #data-sources .gitlab-purple}

We use a variety of data sources to determine if an account matches one of our ideal customer profile data points. The table below shows the order of operation of where we look for this data.

| Attribute | Data Sources (in order of priority) |
| ------ | ------ |
| Number of developers | Aberdeen number of developers -> user/SAL input in Salesforce -> No. of employees as a proxy |
| Technology stack | Gainsight input -> Aberdeen technology stack -> user/SAL input in Salesforce -> Zoominfo tech stack  |
| Cloud provider | Aberdeen technology stack -> user/SAL input in Salesforce -> Zoominfo tech stack |
| Prospect | Total CARR for all accounts within the hierarchy equals zero |

### Account Sources
{: #account-sources }
All accounts in Salesforce that are part of the `ICP Total Addressable Market` will also have the `New Logo Target Account` field completed.

* **Existing** An account that already existed in our circumstances
* **Core** Newly identified core user
* **Lookalike** Account identified based on attributes that match our exisitng customer base


### Aberdeen Data
{: #aberdeen-data }

As part of the development of our ideal customer profile, we purchased data from [Aberdeen](https://www.aberdeen.com/?gclid=Cj0KCQiAqdP9BRDVARIsAGSZ8AlzfX6vYnVNh7YX2IKrc6uNhqjfGY6sQywcyZalJScxTyexilB0pa4aAvFdEALw_wcB) to help us determine our ICP total addressable market. The data included number of developers, specific technologies installed, and cloud provider.  The data is rolls up to the `Ultimate Parent` as we are looking for both the best entry point for an account and the overall environment.

| Data point | Salesforce field | Description & how to use the data |
| ------ | ------ | ------ |
| Number of developers | `Aberdeen Ultimate Parent Developer Count`  | This number is the total number of current developer contacts that Aberdeen has in their database for all sites of a company.  Because it is impossible to have a database of ALL contacts at a company, we look to this data point to verify if an account has over 500 developers IF the account has a number >500 in this field but we don't exclude an account from our TAM if thecount is lower than 500 due to the nature of the data point, rather, we go to our next best data point to verify. |
| Competitive technology | `Aberdeen Ultimate Parent Technology Stack` | This field identifies if a company has a certain technology in their technology stack that is part of our ideal customer profile |
| Cloud provider | `Aberdeen Ultimate Parent Cloud Provider` | Tells us if an account has AWS, GCP, or both as their cloud provider. |
-->
