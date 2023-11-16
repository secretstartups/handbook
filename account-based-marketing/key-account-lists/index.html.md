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
The First Order Key Account List consists of Enterprise and Mid-Market **New First Order Logo** accounts that are identified by Sales as key accounts to land in FY23. With a set number of key accounts per rep, we will have a smaller, focused list to drive integrated ABM tactics against in FY23. Sales and Marketing leadership have stated that accounts with less than $5k CARR for the full account hierarchy may also be eligible to be a part of the ABM Key Account List. 

Accounts fall into two tiers: Tier 1 ("white glove") has a highly integrated and high-touch approach, leveraging data and anecdotal insight from Marketing, SDR, and Sales to drive strategy. Tier 2 ("scaled ABM") groups accounts based on intent, vertical, and other factors to drive a cohesive message to the key accounts.

This list was last updated in FY23 Q4 - **[See issue here for reference >>](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/1089)** If you have any questions, please feel free to direct them to `@jgragnola` in the [#abmteam slack channel](https://gitlab.slack.com/archives/CFBT2HSEB).

## First Order Key Account List FY23-2HFY24
{: #fo-key-accounts .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

You can reference the ABM Key Account List using te `ABM Tier` field on the account object in Salesforce as the single source of truth (SSoT). Please read the sections below to understand Tier 1 vs. Tier 2.

* [SSoT Salesforce List](https://gitlab.my.salesforce.com/00O8X000008QgVD)
* [SSoT Demandbase List](https://web.demandbase.com/o/d/a/l/261406/l/)

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
* Total # of Tier 1 accounts: 6 globally (The ABM is determining the max # of Tier 1 accounts we can have at a given time)

**How are these selected?** Sales Leadership (ASM) nominates with Regional VP review and approval

**Number of Accounts:** Currently 6 Ultimate Paretn Accounts + their children accounts (totalling 22 global accounts). [Discussion issue](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/1136) about total number we can have at a given time.
* *Total # defined by: bandwidth
* **Enterprise:6**
    * AMER: 2
    * EMEA: 1
    * APAC: 1
* **PubSec: 2**

**How to view these in SFDC:** `ABM Tier = Tier 1`

*This tier will cascade through the account hierarchy, added to the accounts by a Sales Systems dataload.*

### Tier 2
{: #fo-key-accounts-tier-2}
<!-- DO NOT CHANGE THIS ANCHOR -->
**Required Characteristics:**
* Account Type: New First Order Logo
* Sales Segments: Enterprise and Mid-Market

**How are these selected?** As we move towards a more data driven and scaled account selection approach for Tier 2 accounts, we are leveraging the below data points to qualify an account to be Tier 2
    * FO Available = TRUE or CARR (acct family) <=5000
    * LAM Dev count:  >500 for Large, >250 for MM, >300 for PubSec (baseline for this round of the list refresh)

**Number of Accounts:**  - 6,255 Ultimate Paretn Accounts + their children accounts (totalling 10,915 global accounts) [issue](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/1089)
* *Total # defined by: Our FY24 Tier 2 approach will consist of cohort campaigns. Given this, we needed significantly more accounts in the Tier 2 list as it is too expensive to run campaigns to very small lists in addition to our Tier 1 campaigns.
* **Enterprise: 25**
    * AMER: 2,299
    * EMEA: 1,973
    * APAC: 1,181
* **PubSec: 792**
* **Mid-Market: 2250** [WIP issue for reference](https://gitlab.com/gitlab-com/marketing/account-based-strategy/account-based-marketing/-/issues/949)

**How to view these in SFDC:** `ABM Tier = Tier 2`

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
