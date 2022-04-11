---
layout: handbook-page-toc
title: Demandbase
description: Demandbase Handbook
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview
{: #overview .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

Demandbase is a targeting and personalization platform that we use to reach our different audiences based on intent data and our ideal customer profiles. We primarily use Demandbase as a targeting and personalization platform to target online ads to companies that fit our ICP and tiered account criteria. Demandbase has a wealth of intent and propensity to buy data that is married with account engagement indicators to create a wholistic intent mapping for each account. We can compile the intent data by building audiences, groups of target accounts with the most potential to purchase based on our buyer criteria, which we can then leverage for use throughout the funnel in advertising and SDR/sales follow-up. Demandbase also delivers ongoing signals around behaviors and intent to keep our list up to date. This information helps both marketing and sales focus our efforts on the right accounts.

**[Demandbase One Engagement Platform and Add-On Solution Overview](https://support.demandbase.com/hc/en-us/articles/360051362791-Demandbase-One-Solutions-Overview#h_01EN6561V0XRYQSCXZTKRBTR52)**

Who has access to Demandbase? This is outlined in the MOps

### Demandbase Product Modules
{: #demandbase-product-offerings}
<!-- DO NOT CHANGE THIS ANCHOR -->
Below are the Demandbase product modules we have access to.
- :white_check_mark:  [Demandbased Engagement Platform](https://support.demandbase.com/hc/en-us/articles/360051362791-Demandbase-One-Solutions-Overview#h_01EN6561V0XRYQSCXZTKRBTR52): Leverages leading AI-driven data and applications along with strong integrations with CRM and MAS to create one comprehensive platform that provides proprietary, first and third-party data (including Demandbase Intent), account scoring and prioritization, account-based measurement, orchestration, and delivery of account-based insights personalized for individual sales reps.
- :white_check_mark:  [Demandbase Advertising Cloud](https://support.demandbase.com/hc/en-us/articles/360051362791-Demandbase-One-Solutions-Overview#h_01EN65696QVZR2NZQWS2Q9ECY2): Enables us to serve ads to the buying committee within target accounts to increase web engagement and account penetration, to drive more pipeline and revenue.
- :white_check_mark:  [Demandbase Personalization](https://support.demandbase.com/hc/en-us/articles/360051362791-Demandbase-One-Solutions-Overview#h_01EN656FAFETVPVHHKX5JC0EHM): Allows us to segment your account and people lists for different criteria, like intent, and provide a unique website experience for that list.

### Glossary of Demandbase Terms
{: #glossary}
<!-- DO NOT CHANGE THIS ANCHOR -->
Bookmark the [Demandbase Glossary](https://support.demandbase.com/hc/en-us/articles/360050126672-Demandbase-One-Glossary)!

### Demandbase Training and Resources
{: #demandbase-training-resources}
<!-- DO NOT CHANGE THIS ANCHOR -->

* [Demandbase training portal](https://training.demandbase.com/)
   - For **Demandbase certification**, go to the training portal > `Enroll in Certifications` > `Demandbase Solutions Certificate`
* [Getting started with Demandbase self-service targeting](https://support.demandbase.com/hc/en-us/sections/360009465252-Getting-Started-with-Self-Serve-Targeting)

### Access to Demandbase
{: #demandbase-access}
<!-- DO NOT CHANGE THIS ANCHOR -->
The following teams have role-based access to Demandbase:
- Account Based Marketing
- Marketing Campaigns
- Digital Marketing
- Field Marketing
- Sales Development

### Public Sector data in Demandbase
{: #demandbase-pubsec-data}
<!-- DO NOT CHANGE THIS ANCHOR -->
Access to account and engagement data in Demandbase is dependent on your approval for access to PubLic Sector data in SFDC.  This is managed through your assigned view in Demandbase, which is controlled by a script that looks for that level of access based on the `Pub Sec Owner?` field (API: Pub_Sec_Owner__c) in SFDC. The script looks for any `view` in Demandbase that has `Public Sector` in the title.

## Journey stages
{: #journey-stages .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
We use Demandbase account journey stages to track account progression toward Closed Won in our marketing funnel based on engagement (both anonymous and known) of people at the account. The account journey stages take into consideration all lead, contact, and anonymous person activity, and roll-up that data to the Salesforce account level.

| Stage No. | Stage Name | Description |
| ----- | ----------- | ----------- |
| 01 | Non-Qualified Accounts | Accounts with a qualification score below 70 and no engagement minutes (in last 3 months) |
| 02 | Demographic Qualified Account | Accounts with a qualification Score 70+ and engagement minutes (in last 3 mo) >=1 |
| 03 | Keyword Intent | Intent Strength = High or Med; Activity Date = Last 30 Days |
| 04 | Anonymously Engaged | Accounts with >= 20 engagement minutes and and <= 1 person engaged |
| 05 | Engaged with People | Accounts with >=20 minutes of engagement and >= 2 person engaged |
| 06 | Marketing Qualified Account | Accounts with >100 marketing engagement minutes and >3 engaged people and Pipeline Predict >= 70 |
| 07 | Opportunity - Stage 0 | Accounts with latest open opp in stage 0 |
| 08 | SAO - Stage 1 (Pipeline) | Accounts with latest open opp in stage 1 |
| 09 | Opportunity Stage 2-3 (Pipeline) | Account with open opp in stage 2-3 |
| 10 | Opportunity Stage 4-7 (Pipeline) | Account with open opp in stage 4-7 |
| 11 | Customer (Customer) | Existing Closed Won Opportunity |
| 12 | Former Customer | Accounts who are no longer customers |
| 13 | Disqualified | Any account that is not a potential customer |

## Demandbase Lists
{: #demandbase-lists .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
A `List` (called `audiences` in Demandbase Classic) is a collection of accounts, people, or opportunities based on a list of qualifications, similar to a report in Salesforce. 

There are several ways to build a list in Demandbase (in order of recommended):

1. Assigned account lists: these lists are pre-built for users in DB based on their assigned account in Salesforce. The following groups have accounts lists:
    - Field Marketing Managers
    - SDR
    - Sales
1. Dynamic list using `selectors`
1. Salesforce report (must be an account report, not opportunity or campaign, etc)
1. Static list of accounts through a CSV upload. We do not recommend using this method as it is a single point in time upload and not easily modified.

### Account Lists
{: #account-lists}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Naming Convention
{: #account-list-naming-convention}
<!-- DO NOT CHANGE THIS ANCHOR -->
Account lists follow a naming convention. The name of an audience should tell you who the DRI is (team) and what the list is for. Audience names are editable, so if you are unsure, please name using the following criteria and reach out in the [ABM slack](https://gitlab.slack.com/archives/CFBT2HSEB) if you have questions.

**Example: (FM) 20200901_SecurityWorkshop**

1. Team DRI for the list should be identified by the following:

- (MASTER) Any report that is an SSOT across all departments
- (ABM) Account Based Marketing
- (FM) Field Marketing
- (SDR) Sales Development
  - (SDR) EMEA-C
- (DG) Demand Generation
- All others- please ping the ABM team in the [#abmteam slack channel](https://gitlab.slack.com/archives/CFBT2HSEB) so we can add a naming convention for you

1. Name of the list- what does this list contain?

- Campaign tag if it is an audience specific to a campaign
- Intent based etc
- Segment- if an audience is a segment of a larger audience. example: if you wanted to create a segment of this audience: `(FM) 20200901_SecurityWorkshop` it would be named `(FM) Segment-20200901_SecurityWorkshop`

**[Watch this how-to video for list creation](https://youtu.be/BVccN6ly2ys)**

You can build a list of accounts, people, or opportunities in platform using 'selectors' which are fields from SFDC, Marketo, and Demandbase. For example, you could build a list of accounts that are in a certain region who are showing competitive intent OR build a list of people FROM those accounts. It is best to visualize creating a list in Demandbase the same way you would build an SFDC report, just with access to data from multiple platforms.

#### Templates for Account Lists
{: #account-list-templates}
<!-- DO NOT CHANGE THIS ANCHOR -->
Similar to how we identify the owner of a list in Demandbase, we have template lists built out that anyone can leverage. These are identified by `[TEMPLATE]` before the list name in the platform.

**How to use a template:**
1. Find the use case template you would like to use (please reach out in Slack if you think it exists but cannot find it)
1. Clone the list
1. Rename the list based on the naming convention [here](/handbook/marketing/account-based-marketing/demandbase/#account-list-naming-convention)
1. Modify as needed

**How to build a template:**
1. Name your list `[TEMPLATE] use case`
1. Choose all selectors for the list
1. In the description of the list, write out the instructions of which selectors should be modified in order to leverage the template.

#### Building a Custom List
{: #list-creation}
<!-- DO NOT CHANGE THIS ANCHOR -->

1. What type of list do you need? (3 options below)
   - Account, Person, or Opportunity
1. What filters do you need applied? (examples below)
   - Accounts within a certain region or industry
   - Certain personas
   - Open opportunities
   - People that have a certain level of engagement with GitLab
1. How big of a list do you anticipate?
   - Am I looking for ALL accounts that match my set filters? Or am I looking for a certain number of accounts that are the "best match"

#### Best Practices for Building Lists
{: #list-creation-best-practices}
<!-- DO NOT CHANGE THIS ANCHOR -->

- By default, `Selectors` will use `AND` filters for your criteria to find all people, accounts, or opportunities that meet that criteria.
- Gitlab prioritizes SFDC data over Marketo in order to avoid duplicating information.
   - Anything with the SFDC logo next to it will apply this data filter and look for the criteria in this order: SFDC -> Marketo -> Demandbase
- A Demandbase logo next to the filter will ONLY be Demandbase data
   - This will be data we do not have outside of the platform.
   - Example: intent and keyword search
- We have certain `selectors` in the platform marked as `favorites` to identify often used and generally trusted sources of data.
- We have many fields turned off in Demandbase to avoid confusion and ensure we are looking at an SSOT field as much as possible.
   - If you need a field and don't see it in the platform, please open an issue in the [Demandbase project](https://gitlab.com/gitlab-com/marketing/account-based-strategy/demandbase/-/issues/new).

#### SSOT `Selectors` in Demandbase
{: #ssot-selectors}
<!-- DO NOT CHANGE THIS ANCHOR -->

We have a set of `selectors` (fields) in Demandbase that are SSOT for building lists. These are :star: favorited in the platform to easily identify them.

Keep in mind, `special` selectors and are not able to be favorited. These include `member of` selectors and `relationship` selectors as these are not mapped to a data field in SFDC, Marketo or Demandbase.

## Account Scoring in Demandbase
{: #account-scoring .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
Demandbase One has two different scoring models. `Qualification Score` quantifies the likelihood of an account ever becoming a customer, and `Pipeline Predict` quantifies the likelihood of an account becoming an opportunity in the next 30 days. Currently, the model looks at all closed won in the past 12 months but it is on the Demandbase roadmap to create multiple scoring models, allowing us to create segment account scoring.

### How scoring criteria is matched to an account
{: #account-scoring-criteria-matching}
<!-- DO NOT CHANGE THIS ANCHOR -->
Demandbase has a 1:1 account match between Demandbase:SFDC so you will often see multiple accounts listed with the same name. This is because there are multiple child accounts associated with a single domain.

For scoring purposes, any KNOWN person's engagement (leads and contacts) will be assigned to the account that they are associated with in SFDC.

UKNOWN person data (intent, keyword search etc by folks who have not filled out a form or identified themselves to GitLab) will be assigned to the account in SFDC with the most contacts. Often, this will not be the parent account so it is important to take that into consideration when looking at intent data for specific accounts.

### Data for Accounts with a Hierarchy in SFDC
{: #data-hierarchy-accounts}
<!-- DO NOT CHANGE THIS ANCHOR -->
**How can I see all data for a company if we have multiple accounts in SFDC and Demandbase?**

**Option 1: Account List by Company Name**

Create an `account list` with filter for `Company Name` = [company name as appears in SFDC]

**Option 2: Account List by SFDC Account ID**

Create an `account list` with filter for `SFDC account ID` = [all account IDs in the company hierarchy]

## Qualification Score
{: #qualification-score .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
Our _Qualification Score_ is built based on our past won deals and how closely a prospect matches that criteria. _Qualification Score_ scores all accounts in the platform between 0-100% and does not change often.

## Pipeline Predict
{: #pipeline-predict .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
Pipeline predict measures an accounts propensity to buy in the next 30 days eg accounts that are likely to become an open opportunity. This score changes often because it is based on both an account's qualification score and their buying signals (intent, interactions with sales, etc). The score ranges from 0 – 100%.

#### Account Scoring Criteria
{: #account-scoring-criteria}
<!-- DO NOT CHANGE THIS ANCHOR -->
| Category | Description |  |
| -------- | ----------- |
| Qualification score | matches our ICP |  |
| Website visitors | how many people are visiting our website from the company |  |
| DB Intent | onsite and offsite search from the company |  |
| Inbox data | interactions with Sales |  |
| CRM data (Salesforce) | meetings, demos, IQM |  |
| MAS data (Marketo) | interactions with our marketing campaigns |  |
| Advertising activity | engagement with our Demandbase campaigns |  |

## Engagement Minutes
{: #engagement-minutes .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
_Engagement Minutes_ track the amount of time an account spends with GitLab. This allows us to aggregate all of the interactions an account, and all leads and contacts associated with that account, have with us. Being able to combine all of these interactions allows us to better predict who is likely to become a customer.

| Engagement Type | Description |  |
| --------------- | ----------- |
| Website visits | both known and anonymous website visitors |  |
| Marketing Automation (Marketo) | Email opens, event attendance, content downloads, etc. |  |
| Salesforce | Activities, tasks, and campaign membership |  |
| Email/Calendar | human interactions including email and meetings with Sales |  |

## Weighting
{: #weighting}
<!-- DO NOT CHANGE THIS ANCHOR -->
A person will receive an increase in engagement scoring based on their title.

| Title | Weighting |  |
| ----- | --------- |
| Manager | 100% |  |
| Director | 125% |  |
| VP | 125% |  |
| CXO | 150% |  |
| All others | 100% |  |


## Demandbase Advertising
{: #demandbase-advertising .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Demandbase Issue Templates
{: #issue-templates}
<!-- DO NOT CHANGE THIS ANCHOR -->
If you would like to target named accounts with paid display ads, create an issue with the appropriate Demandbase Campaign Request template:

- [Campaign Request issue template for Field Marketing](https://gitlab.com/gitlab-com/marketing/account-based-strategy/demandbase/-/blob/master/issue_templates/Demandbase_Campaign_Request.md)
- [Campaign request issue for DemandGen](https://gitlab.com/gitlab-com/marketing/demand-generation/digital-marketing/-/blob/master/.gitlab/issue_templates/Demandbase_Campaign_Request.md)
- [General Campaign Request issue template (for all other teams)](https://gitlab.com/gitlab-com/marketing/account-based-strategy/demandbase/-/blob/master/issue_templates/Demandbase_Campaign_Request.md)

### Demandbase Campaign Metrics
{: #demandbase-metrics}
<!-- DO NOT CHANGE THIS ANCHOR -->
- **Spend:** the total dollar amount of ad spend.
- **Impressions:** the total number of ad impressions (views).
- **Lifted:** provides a perspective of engagement with your website prior to your ad campaign launch compared to the engagement while campaigns run. Specifically, Lifted is the percentage of targeted accounts that see more page views of your website compared to the 30-day period prior to the start of the campaigns.
- **New Accounts On Site:** Number of targeted accounts that had a first-time visit to your website compared to the 30-day baseline prior to the launch of campaigns. *Note: if you are targeting accounts that have shown engagement or been on site, this will likey be 0. 
- **Targeted:** Total number of accounts targeted in the campaign.
- **Reached:** Number of accounts that received at least one ad impression from the selected campaigns.
- **Visited:** Number of accounts that visited your website during the campaign.
- **Clicked:** Number of accounts that clicked an ad delivered by the campaign.
- **Interacted:** Number of accounts that met a threshold for significant website activity within the past 30 days. This could be defined as a number of sessions or number of page views. Hover your pointer over Interacted to view how your Admin defined this metric.
- **CTR:** Click-through rate. -> Formula: Clicks divided by Impressions
- **CPM:** Average cost per one thousand impressions
- **CPC:** Cost per click. -> Formula: Cost divided by Clicks

#### Campaign benchmarks (based on a 3 month campaign)
{: #demandbase-benchmarks}
<!-- DO NOT CHANGE THIS ANCHOR -->
- **Reach:** 85-90% 
- **Visited:** 30-35% 
- **Lift:** 25% 
- **CTR:** 0.02-0.04% 

Since Demandbase is an ABM-oriented DSP, it self-optimizes for on-site engagement rather than traditional display metrics like CTR. We can check engagement metrics after two weeks, once the campaign has stabilized from initial launch, similar to learning phases in paid social.

Budget pacing is spread out based on campaign duration, but can rise or dip based on inventory. It will ultimately hit the budget with no overages in the end.

### Display Ad Specs
{: #display-ad-specs}
<!-- DO NOT CHANGE THIS ANCHOR -->

- 728x90
- 300x250
- 160x600
- 300x600
- 970x250
- 320x50
- 300x50

### Display Ad Copy
{: #display-ad-copy}
<!-- DO NOT CHANGE THIS ANCHOR -->
- **Top of funnel:** Use a broad value proposition to increase awareness and education, assert your brand value and why prospects should care.
- **Middle of funnel:** Include a tailored value proposition, provide practical how-to content, best practices, and tips and tricks.
- **Bottom of funnel:** Reinforce the value proposition, go into further detail about your offerings with case studies, ROI calculators, and product and solution content.
- **All stages:** Keep it simple and have a clear CTA.

#### Demandbase Campaign Best Practices
{: #demandbase-campaign-best-practices}
<!-- DO NOT CHANGE THIS ANCHOR -->

Below are best practices for run time, budget, and audiences.

##### Campaign Run Time
{: #best-practices-run-time}
<!-- DO NOT CHANGE THIS ANCHOR -->
- Event promotion: 1 month minimum
- Target account penetration: 2-3 months minimum
- Longer advertising campaigns that span the full funnel can help build awareness and create more engagement. The result is a higher number of accounts that go into the pipeline with a higher average booking value.

##### Budget
{: #best-practices-budget}
<!-- DO NOT CHANGE THIS ANCHOR -->
Demandbase has an [advertising calculator](https://www.demandbase.com/resources/advertising-calculator/) you can use to estimate budget based on your goals for the campaign.

##### Audiences
{: #best-practices-audiences}
<!-- DO NOT CHANGE THIS ANCHOR -->
You can segment by stage in the buyer’s journey, company size, industry, etc. The core message for each of these groups is different, therefore they shouldn’t receive the same ad creative. Segment audiences into High, Medium, and Low intent based on intent data results.

| Objective | Budget | Creative/Copy | KPI |
| ------ | ------ | ------ | ------ |
| Top-of-funnel & new market entry | $15–$35 | Broad value proposition | Accounts reached, visited & funnel stage progression|
| Generation, Acceleration, Improve close rates, Improve average contract value (ACV) | $35–$75 | Tailored value proposition & CTA | Engaged accounts & opportunity generation|
| Customer expansion & retention | $15-$25 | product messsaging & case studies | new opportunities, new/increased engagement |

### Demandbase Campaigns for Field Marketing Promotions
{: #demandbase-campaigns-field-marketing}
<!-- DO NOT CHANGE THIS ANCHOR -->
Our Field Marketing team uses Demandbase to heat up (either continuing to build brand awareness or starting to build that essential awareness) accounts on our Large & MM focus list and to drive specific registrations to our programs.

To use Demandbase solely for event promotion can increase brand lift for accounts, but it won't match the volume of registrations paid social can generate. Due to registration inefficiencies by using Demandbase only for promotions, we recommend using Demandbase to support & enhance account lead gen tactics (paid social, email, etc) with brand awareness, and gather account activity data to measure account penetration. We recommend either running Demandbase in conjunction with lead gen tactics, or running standalone ongoing Demandbase campaigns to warm up audiences before targeting the same audience with lead gen ads for events. Both recommendations allow us to continuously gather data in order to form smarter campaigns down the line.

We suggest using ABM Analytics & Account Stage reporting to show account engagement & influence. Although brand lift can be difficult to measure, you can see how accounts advanced through the funnel during Demandbase Display campaigns. For Field Marketers, ongoing training can help this team utilize Demandbase in order to parse account data & help with regional strategy.

## Analytics
{: #demandbase-analytics .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Demandbase ABM Analytics
{: #abm-analytics}
<!-- DO NOT CHANGE THIS ANCHOR -->
[ABM Analytics](https://support.demandbase.com/hc/en-us/articles/360005054311-ABM-Analytics-Overview) is a native analytics tool within the Demandbase platform. It gives you insight into how your target accounts are performing across your full marketing funnel from engagement to conversion to closed won.

**Helpful Resources:**
- [Working with the ABM Analytics Dashboard](https://support.demandbase.com/hc/en-us/articles/360005054311-ABM-Analytics-Overview#h_5966557921550945944419)
- [Steps for using ABM Analytics](https://support.demandbase.com/hc/en-us/articles/360005054311-ABM-Analytics-Overview#h_578082746371550945977821)

### Opportunity Reports Manager
{: #opporutnity-reports-manager}
<!-- DO NOT CHANGE THIS ANCHOR -->
The [Opportunity Reports Manager](https://support.demandbase.com/hc/en-us/articles/360036023532-Working-with-Opportunity-Reports-Manager) allows you to customize which opportunities are used in your reports and analytics within ABM Analytics. To date, you can only filter/segment by opportunity stage/type/status.

Our Demandbase instance already has a report for each opportunity stage. This lets you select an audience (list of accounts) and filter it by opportunity stage.

**How to filter using the Opportunity Reports feature:**
1. Create an audience or leverage one of the audiences already in our DB instance that has all of the accounts you want to see.
1. In DB, navigate to the 'ABM Analytics' tab.
1. Select the audience you want to see the data for from the 'primary audience' dropdown.
1. To narrow the audience by opp stage, check the box 'Filter results by Opportunity Report' and select the opp stage from the dropdown.

### ABM Metrics
{: #abm-metrics}
<!-- DO NOT CHANGE THIS ANCHOR -->
- **Lifted Accounts**: Percentage of the target accounts that have more engagement (page views) during the campaign(s) compared to the baseline period of 30-days prior to the start of the campaign(s). Baseline page view counts are normalized for campaign length in calculating this metric.
- **Page Views:** Total page views on your website during the campaign(s)
- **% increase in Page Views:** Percent change in page views during the campaign(s), compared to baseline period of the 30 days preceding the start of the campaign. *Note: Baseline page view counts are normalized for campaign length in calculating this metric.
- **Account Performance by Stage:**
    - **Total Accounts:** The total number of accounts being targeted
    - **Reach:** he total number of accounts that have been served at least one impression
    - **Visited:** The total number of accounts that have been on site during the campaign(s)
    - **Clicked:** The total number of accounts from which clicks have been generated during the campaign(s)
    - **Engaged:** The total number of targeted accounts that have had three or more unique sessions within a 30-day period.
    - **Converted:** TBD
    - **Opportunity:** The total number of accounts with at least one new CRM opportunity created during the campaign(s)
    - **Won:** The total number of accounts with at least one CRM opportunity that has progressed to Closed/Won during the campaign(s)

### Demandbase Site Analytics
{: #site-analytics}
<!-- DO NOT CHANGE THIS ANCHOR -->
Demandbase Site Analytics gives you website analytics with an account-based lens so you can better evaluate website performance and personalize marketing efforts to them.

#### Ways you can use Demandbase Site Analytics
{: #site-analytics-use-cases}
<!-- DO NOT CHANGE THIS ANCHOR -->
- Create and target specific audiences with relevant content
- Gain insights on which site content and web pages are most valued by visitors from your target accounts
- Use UTM and URL parameters to track channel and campaign performance over time
- Build campaigns around specific levels of website activity
- Drive registration for upcoming events: discover who has visited your event pages, but has not registered for an event.
   - [4 min video](https://www.youtube.com/watch?v=4JaoI2MlJ_s) on how GitLab Field Marketers should be using Site Analytics to help drive registrations. 
   - Note: this video is private to GitLab team members only, as we are showing real data in our SFDC instance.

#### How to use Site Analytics
{: #site-analytics-how-to}
<!-- DO NOT CHANGE THIS ANCHOR -->
Steps for using Site Analytics as well as building an audience from Site Analytics can be found [here](https://support.demandbase.com/hc/en-us/articles/360039832352-Working-with-Site-Analytics#h_8ef9f39f-0bca-4f8e-babe-01225c1abee1)

## Demandbase Integrations
{: #demandbase-integrations .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Salesforce
{: #demandbase-salesforce}
<!-- DO NOT CHANGE THIS ANCHOR -->

To be added

## Demandbase & Marketo
{: #demandbase-marketo}
<!-- DO NOT CHANGE THIS ANCHOR -->
There is an integration between DemandBase and Marketo that allows marketers to push people lists from DemandBase to Marketo for targeting. For instructions on how to do this, go to the [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs#pushing-demandbase-lists-to-marketo).

## Running campaigns in Demandbase
{: #demandbase-campaign-process}
<!-- DO NOT CHANGE THIS ANCHOR -->
The ABM team is responsible for executing and managing any campaign in Demandbase. As part of the campaign request process, you need to have a media order signed for the campaign budget. See [Finance and Account Processes]() based on your role.


### DemandGen & Corporate Marketing
{: #campaigns-use-cases}
<!-- DO NOT CHANGE THIS ANCHOR -->
In order to run a Demandbase campaign, a [finance issue](https://gitlab.com/gitlab-com/Finance-Division/procurement-team/procurement/-/issues/new) for the media order needs to be opened. It is the responsibility of the campaign owner to open the finance issue and tag the Demandbase team in order to get this process started. The DB team will then request the media order contract and add it to the finance issue for the campaign owner to get approvals and signature per our usual [procurement approvals process](https://about.gitlab.com/handbook/finance/authorization-matrix/).

## Field Marketing Use Cases within DB1
{: #field-marketing-use-cases .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
### Workshops
{: #field-markting-workshops}
<!-- DO NOT CHANGE THIS ANCHOR -->

#### Tactic Overview/Timeline for Execution:
{: #account-scoring-criteria-matching}
<!-- DO NOT CHANGE THIS ANCHOR -->
Workshops have been the bedrock for the transition to the virtual world for Field Marketing. Since the pivot away from in-person events, our Field Marketing has run workshops with excellent results and with most “selling out” minutes after being released to our general customer base. What we haven’t always been able to do, however, is selectively target prospects/customers who are showing a strong interest in the specific keywords/web searches surrounding the workshop target.

Because the workshops and the ads run for them need a decent runway, the account lists from DB should be pulled ideally 60 days prior to the workshop date. Depending on what the focus of the workshop is, coordination with the Campaigns Team is highly recommended to utilize the MQL’s they may already have for a specific campaign that aligns to the Workshop. Note:this coordination can also be done by pulling in records with a person score of 100+.

### DB1 Templates for Account List & Persons List
{: #glossary}
<!-- DO NOT CHANGE THIS ANCHOR -->
#### Account List

Step 1: Build an account list based on the targets for the Workshop.

**Selectors:**

- GTM Strategy = Enter whichever list(s) you wish to use
- Sales Segment = Enter the segment(s) you wish to target
- Region = Enter the region(s) you wish to target
- Region/Sub Region = If you want to drill down into sub region, you may also use this selector
- Trending Intent = (Insert keyword(s)) & engagement in the last 3 months
- Accounts with Any Activity = Member of SFDC Campaign _Paste SFDC Campaign here_ and Campaign Type _Exists_
- Journey Stage = Marketing Qualified Account, Engaged, Customer

Template Example: [Super East DevOps Virtual Automation Workshop Account List](https://web.demandbase.com/o/d/a/l/260444/s)

#### Person List
{: #glossary}
<!-- DO NOT CHANGE THIS ANCHOR -->
Step 2: Build the Persons List using the just created account list as your overall and the selectors that are appropriate for the workshop. Those results would then be added to the campaign as “No Action” and enter the Marketo flow.

**Selectors:**

- Member of List = Enter the Account list(s) you just created
- Billing Country contains United States
- Email Opt-Out = False
- Title Does Not Contain = Student, Finance, Human Resources
- People with Any Activity = Activity Date in the last month
- Account Rank Contains Rank 1, Rank 1.5, Rank 2, Rank 3

Template Example: [Super East DevOps Virtual Automation Workshop Persons List](https://web.demandbase.com/o/d/p/l/260445/s)

##### How many people to invite to a workshop? 
Based on past converstion rates of No. of people we've invited to our workshops vs. No. of people who have regsitered, we need to invite ~6,400 people to our workshops to hit our [350 person capacity.](/handbook/marketing/field-marketing/field-marketing-owned-virtual-events/#workshop-registration-caps-and-closing-registration) 

In the US Public Sector, that number increases to 8,800 people. 

Conversion details can be found by searching `workshop_data_invite_FY22`. Note, this information is only available to GitLab team members. Feel free to modify this report if you'd like to understand how many to invite based on different capacities other than the 350 number. 

#### Campaign recap report

Today within SFDC we can only see what GTM Segment our contacts belong to. With the addition of DB1 to our tool stack, we can see which GTM Strategy both leads and contacts belong to. It is recommended that you build a [Campaign Performance report](https://web.demandbase.com/o/al/4/r/f/13/rd/1005/pm) to understand which GTM Strategy each attendee belongs to.

#### Cross Functional Collaboration

##### SDR

FMMs should be filling out the [SDR request template](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=ISR_SDR_FMTemplate) to seek activation from the SDR team. SDR’s should be using the “Sales Nomination” process to add people to the campaign. Since Demandbase pulls from SFDC there is no point in re-running the list to add those people since they are being added based on Sales recommendation. SDR's also now have access to DB so they'll be able to update lists specifically to add prospects based on their accounts.

##### Other VIP teams

In order to make a Workshop functional there are a number of teams that have to collaborate. They are (but not limited to):

- SA’s & SA Leadership - Workshop Creation and Validation
- TAM’s & TAM Leadership - Staffing
- Digital Marketing - Ad Asset Creation & Ad Purchase
- Demo Environment Team (Jeff and James)
- PMM’s (If Necessary)
- DemandBase
- FMC - Scheduling
- SAL - Host
- FMM - Overall Organization

Each organization mentioned above has its own SLA’s that are factored into the workback document that's detailed out in the [workshop section of our handbook](/handbook/marketing/field-marketing/field-marketing-owned-virtual-events/).

## Direct Mail

### Tactic Overview / Timeline for Execution

Direct Mail campaigns are executed primarily between Field Marketing and SDRs. Before deciding to run a direct mail campaign, it is highly recommended that you evaluate your Demandbase data for trends / patterns to determine if you are going to execute a targeted campaign. Example: your data is showing you that your competition is Jenkins so you run a Jenkins direct mail campaign. Or your data is showing you that your accounts are searching for security so you run a security direct mail campaign.

Once you’ve decided to move forward with a direct mail campaign, you will need to create an [Account List](/handbook/marketing/account-based-marketing/demandbase/#account-lists) in Demandbase. You will use it to understand which accounts are interested/potential targets and/or who to advertise your event/tactic towards. You will need this list in order to drill down into a Persons List. Create the Account List 60 days prior to the campaign launch date. Templates for selectors can be found below. Why is your account list important? This data will show you which accounts you need to target and this will also be the list you refer to for ad promotions.

Next you build a Persons List in Demandbase. This will allow you to dive deeper into your account lists on an individual level and/or search for individuals to build a targeted list. You can reference your Account List to assist in building your Persons List. Allow for 60 days prior to the campaign launch date. Templates for selectors can be found below. Why is your persons list important? This data will show you which individuals from your account list are of interest; deeper understanding as to who you should be targeting. This will also be the list you refer to for email invitations.

How do I get the individuals from my persons list into Marketo for email invitations / sends? _Training Material Coming Soon (including DB1 to_[Marketo integration video](https://about.gitlab.com/handbook/marketing/marketing-operations/campaigns-and-programs/#pushing-demandbase-lists-to-marketo)_).*

Once you've completed your Demandbase account list/ persons list and filled out the FM issue, you will need to notify your SDR manager(s) of the campaign by filling out a SDR Request Issue for a SDR DRI to work with you to not only build out the Outreach sequence template but to ensure that the flow of the campaign is user friendly for the SDR team. Allow for 45 days from SDR Manager(s).

### DB1 Templates for Account List & Persons List

#### Account List

Selectors:

- GTM Strategy = Enter whichever list(s) you wish to use
- Sales Segment = Enter the segment(s) you wish to target
- Region = Enter the region(s) you wish to target
- _(Optional)_ Region/Sub Region = If you want to drill down into sub region, you may also use this selector
- Trending Intent = (Insert keyword(s)) & engagement in the last 3 months
- Accounts with Any Activity = Member of SFDC Campaign _Paste SFDC Campaign here_ and Campaign Type _Exists_

[Template](https://web.demandbase.com/o/d/a/l/260441/l) - Template is a cloned version of the [Security Direct Mailer Campaign Account List](https://web.demandbase.com/o/d/a/l/260315/l/). View the Details panel for more information (issue, SFDC Campaign, etc).

#### Persons List

Selectors:

- In Member Of = Select the account list you wish to drill down into on an individual / person level
- Billing Country = (Contains) United States, US
- Title Does Not Contain (instead of =) then list out the titles you are not interested in. Examples include: ~HR, ~student, student, help desk, professor, finance
- Compliance Segment Value not equal to NULL or empty, Default, Do Not Email
- People with Any Activity: Drills down to activity date of which you'll have a drop down menu of how you'd like to segment the list. Example: People with Any Activity --> Activity Date In the Past 1 Month
- Account Rank = List out the account ranks you wish to work with. You can select multiple ranks if you'd like

[Template](https://web.demandbase.com/o/d/p/l/260442/s) - Template is a cloned version of the Security Direct Mailer Campaign Persons List. View the Details panel for more information (issue, SFDC Campaign, etc).

#### Campaign recap report

Today within SFDC we can only see what GTM Segment our contacts belong to. With the addition of DB1 to our tool stack, we can see which GTM Strategy both leads and contacts belong to. It is recommended that you build a [Campaign Performance report](https://web.demandbase.com/o/al/4/r/f/13/rd/1005/pm) to understand which GTM Strategy each attendee belongs to.

### Cross Functional Collaboration

There are a number of teams working together to make a direct mail campaign a success:

- FMM - (DRI) Overall Organization/Orchestration
- FMC - Scheduling/smart sheets (access codes)
- SDR Leadership - Strategy / assigns SDR DRI
- SDR’s - Outreach execution
- SAL’s (Optional) - Option to add in additional leads/contacts into the campaign in addition to DB1 list / insight from SAL’s knowledge of accounts
- ABM - If assistance is needed in DB1, ping #demandbase-one channel

## GitLab Connect

### Tactic Overview/Timeline for Execution:

GitLab Connects are (virtual) half day regional events with both customers and prospects in attendance sharing stories & lessons learned about GitLab. This is an event where customer speakers will lead the discussion. FMM will strategize with the regional sales team to create the most optimal target audience for the event.

There is a 60 day SLA for Connects. This 60 day period will set the FMM to properly create strategic target lists and prepare ads for each event. Field Marketing will evaluate Demandbase data to determine which accounts and people should be targeted for the event. Understanding interest, patterns of behavior and trends of both account centric and expand accounts. FMM will then create an account list and a people list in Demandbase.

How to create an account list: Thinking about the region you are targeting, choose the appropriate selectors to provide the most strategic account pull for your event.

### DB1 Templates for Account List & Persons List

#### Account List

**Selectors:**

- GTM Strategy = Enter whichever list(s) you wish to use
- Sales Segment = Enter the segment(s) you wish to target
- Region = Enter the region(s) you wish to target
- Account Owner = Regions are attached to individual SALs, choose the SALs for the target regions
- Accounts with Any Activity = Member of SFDC Campaign _Paste SFDC Campaign here_ and Campaign Type _Exists_
- Journey Stage = Aware, Marketing Qualified Account, Engaged, Customer, SAO
- Trending Intent = Your Connect may have a high focus to specific content ie. security. If so(Insert keyword(s)) & engagement in the last 3 months

DB1 Templates for Account List Example - [(FM)LATAM Regional Gitlab Connect](https://web.demandbase.com/o/d/a/l/260339/s)

#### Persons List

Next you will need to build a Persons List:

How to build the Persons List: Use the account list you just created, then add specific selectors to your intended audience. Once your list has been created and submitted to Marketo for send you will be able to identify them in Salesforce.

**Selectors:**

- Member of List = Enter the Account list(s) you just created
- Compliance Segment Value not equal to NULL or empty, Default, Do Not Email
- Title Does Not Contain = Student, Finance, Human Resources, Self, Owner
- Account Rank Contains Rank 1, Rank 1.5, Rank 2, Rank 3

Example: [(FM)People List - LATAM Regional GitLab Connect](https://web.demandbase.com/o/d/p/l/260340/s)

#### Campaign recap report

Today within SFDC we can only see what GTM Segment our contacts belong to. With the addition of DB1 to our tool stack, we can see which GTM Strategy both leads and contacts belong to. It is recommended that you build a [Campaign Performance report](https://web.demandbase.com/o/al/4/r/f/13/rd/1005/pm) to understand which GTM Strategy each attendee belongs to.

#### Steps for Cross Functional Collaboration

FMMs should be filling out the [SDR request template](https://gitlab.com/gitlab-com/marketing/field-marketing/-/issues/new?issuable_template=ISR_SDR_FMTemplate) to seek activation from the SDR team.

SDR’s should be using the “Sales Nomination” process to add people to the campaign. These nominations should be a collaboration with the SDRs and their SALs.

Collaboration is everything. Be sure you are leveraging the other GitLab support teams for a GitLab Connect. Remember that each team has their own SLA for workload.

- SALs & ASMs - Should be part of the process from beginning to end. They should host their accounts for the events
- Customer Success - Customer Speaker Outreach and Presentation Review
- Digital Marketing - Ad Asset Creation & Ad Purchase
- PMM’s (If Necessary)
- FMC - Scheduling
- FMM - Additional support if needed
- SDRs- Outreach and Follow Up

### How to push a Person list to Marketo

[Details are listed in the Mktg Ops Handbook page](https://about.gitlab.com/handbook/marketing/marketing-operations/campaigns-and-programs/#pushing-demandbase-lists-to-marketo).
