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

### Access to Demandbase
{: #demandbase-access}
<!-- DO NOT CHANGE THIS ANCHOR -->
The following teams have role-based access to Demandbase:
- Account Based Marketing
- Marketing Campaigns
- Digital Marketing
- Field Marketing
- Sales & Business Development

### Demandbase Product Modules
{: #demandbase-product-offerings}
<!-- DO NOT CHANGE THIS ANCHOR -->
Below are the Demandbase product modules we have access to.
- [Demandbased Engagement Platform](https://support.demandbase.com/hc/en-us/articles/360051362791-Demandbase-One-Solutions-Overview#h_01EN6561V0XRYQSCXZTKRBTR52): Leverages leading AI-driven data and applications along with strong integrations with CRM and MAS to create one comprehensive platform that provides proprietary, first and third-party data (including Demandbase Intent), account scoring and prioritization, account-based measurement, orchestration, and delivery of account-based insights personalized for individual sales reps.
- [Demandbase Advertising Cloud](https://support.demandbase.com/hc/en-us/articles/360051362791-Demandbase-One-Solutions-Overview#h_01EN65696QVZR2NZQWS2Q9ECY2): Enables us to serve ads to the buying committee within target accounts to increase web engagement and account penetration, to drive more pipeline and revenue.
- [Demandbase Personalization](https://support.demandbase.com/hc/en-us/articles/360051362791-Demandbase-One-Solutions-Overview#h_01EN656FAFETVPVHHKX5JC0EHM): Allows us to segment your account and people lists for different criteria, like intent, and provide a unique website experience for that list.

### Glossary of Demandbase Terms
{: #glossary}
<!-- DO NOT CHANGE THIS ANCHOR -->
Bookmark the [Demandbase Glossary](https://support.demandbase.com/hc/en-us/articles/360050126672-Demandbase-One-Glossary)!

### Demandbase Training and Resources
{: #demandbase-training-resources}
<!-- DO NOT CHANGE THIS ANCHOR -->

* [Demandbase training portal](https://academy.demandbase.com/)
   - This is only available for those with access to Demandbase. You can use your Demanbase login to access training academy. 
* [Getting started with Demandbase self-service targeting](https://academy.demandbase.com/page/certifications)

## Journey stages
{: #journey-stages .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
We use Demandbase account journey stages to track account progression toward Closed Won in our marketing funnel based on engagement (both anonymous and known) of people at the account. The account journey stages take into consideration all lead, contact, and anonymous person activity, and roll-up that data to the Salesforce account level.

| Stage No. | Stage Name | Description |
| ----- | ----------- | ----------- |
| 01 | Non-Qualified Accounts | Accounts without any engagement |
| 02 | Demographic Qualified Account | Accounts with a qualification Score 70+ |
| 03 | Keyword Intent | Intent Strength = High or Med; Activity Date = Last 30 Days |
| 04 | Anonymously Engaged | Accounts with >= 20 total engagement minutes (excluding intent as engagement) (last 3 months) AND <= 1 person engaged (all time) |
| 05 | Engaged with People | Accounts with >=20 marketing engagement minutes (excluding intent as engagement) (last 3 months) AND >= 2 person engaged (all time) |
| 06 | Marketing Qualified Account | Accounts with >100 marketing engagement minutes (last 3 months) AND >3 engaged people  |
| 07 | Opportunity - Stage 0 | Accounts with latest open opp in stage 0 |
| 08 | SAO - Stage 1 (Pipeline) | Accounts with latest open opp in stage 1 |
| 09 | Opportunity Stage 2-3 (Pipeline) | Account with open opp in stage 2-3 |
| 10 | Opportunity Stage 4-7 (Pipeline) | Account with open opp in stage 4-7 |
| 11 | Customer (Customer) | Account type = Customer |
| 12 | Former Customer | Account type = Former Customer |
| 13 | Disqualified | Account Type = Authorized Reseller, Partner, Unofficial Reseller, Reseller, Prospective Partner |

## Intent Strength Scoring
{: #intent-scoring .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
Accounts will be given an intent ranking for a keyword or set of keywords in the form of HIGH, MEDIUM, LOW. This tells us that account’s intent strength for the keyword or set of keywords (and ultimately a score for how likely they are to be a good fit for GitLab). Demandbase looks into how many people associated with a company are searching for a keyword or keyword set and then gives it a ranking based on the number of people researching compared to the size of the company. For example,  if a company has 10 employees and 4 people are researching a given topic, that would be considered HIGH. However, if a company has 200 employees, that would be considered MEDIUM. 

### Keyword Sets
Keywords are words or phrases that we expect interested accounts our our ideal customers (ICP) to research. For example, at GitLab, we would include keywords such as "DevOps, continuous integration, CI/CD, software development, etc" 

## Account Scoring in Demandbase
{: #account-scoring .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
Demandbase One has two different scoring models. `Qualification Score` quantifies the likelihood of an account ever becoming a customer, and `Pipeline Predict` quantifies the likelihood of an account becoming an opportunity in the next 30 days. Currently, the model looks at all closed won in the past 12 months but it is on the Demandbase roadmap to create multiple scoring models, allowing us to create segment account scoring.

## Qualification Score
{: #qualification-score .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
Our _Qualification Score_ is built based on our past won deals and how closely a prospect matches that criteria. _Qualification Score_ scores all accounts in the platform between 0-100% and does not change often.

## Pipeline Predict
{: #pipeline-predict .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
Pipeline predict measures an accounts propensity to buy in the next 30 days eg accounts that are likely to become an open opportunity. This score changes often because it is based on both an account's qualification score and their buying signals (intent, interactions with sales, etc). The score ranges from 0 – 100%.

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

Create an `account list` with filter for `Account Name` = [add all account names as appears in SFDC seperated by commas]
     - Note: you can use "Switch to text view" to quickly copy and paste account names direct from SFDC if the search mechanism in the DB selector is taking a long time. 

**Option 2: Account List by SFDC Account ID**

Create an `account list` with filter for `SFDC account ID` = [all account IDs in the company hierarchy seperated by commas]

### Public Sector data in Demandbase
{: #demandbase-pubsec-data}
<!-- DO NOT CHANGE THIS ANCHOR -->
Access to account and engagement data in Demandbase is dependent on your approval for access to PubLic Sector data in SFDC.  This is managed through your assigned view in Demandbase, which is controlled by a script that looks for that level of access based on the `Pub Sec Owner?` field (API: Pub_Sec_Owner__c) in SFDC. The script looks for any `view` in Demandbase that has `Public Sector` in the title.

#### Account Scoring Criteria
{: #account-scoring-criteria}
<!-- DO NOT CHANGE THIS ANCHOR -->
| Category | Description |  
| -------- | ----------- |
| Qualification score | matches our ICP |  
| Website visitors | how many people are visiting our website from the company |  
| DB Intent | onsite and offsite search from the company |  
| Inbox data | interactions with Sales |  
| CRM data (Salesforce) | meetings, demos, IQM |  
| MAS data (Marketo) | interactions with our marketing campaigns |  
| Advertising activity | engagement with our Demandbase campaigns |  

## Engagement Minutes
{: #engagement-minutes .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
_Engagement Minutes_ track the amount of time an account spends with GitLab. This allows us to aggregate all of the interactions an account, and all leads and contacts associated with that account, have with us. Being able to combine all of these interactions allows us to better predict who is likely to become a customer. One engagement minute does not equate to an actual minute of time, it is better to think about this as a point system. Similar to lead scoring, each action a prospect at an account takes is given a score or point. For example, a person starting a trial will be given 50 points vs a person who fills out a form for a gated peice of content would get 5 points. All engagement minutes (points) are aggregated to the account level, giving the account an overall engagement minute score.  

As ABM is only focused on mid-market and large/enterprise accounts, we consider an account engaged if they have at least 20 points and at least 2 engaged people. A person is considered engaged if they have any engagement minute activity over the last 90 Days. 

| Engagement Type | Description |  
| --------------- | ----------- |
| Website visits | both known and anonymous website visitors |  
| Marketing Automation (Marketo) | Email opens, event attendance, content downloads, etc. |  
| Salesforce | Activities, tasks, and campaign membership |  
| Email/Calendar | human interactions including email and meetings with Sales |  

## Weighting
{: #weighting}
<!-- DO NOT CHANGE THIS ANCHOR -->
A person will receive an increase in engagement scoring based on their title.

| Title | Weighting |  
| ----- | --------- |
| Manager | 100% |  
| Director | 125% |  
| VP | 125% |  
| CXO | 150% |  
| All others | 100% |  

### Demandbase Site Analytics
{: #site-analytics}
<!-- DO NOT CHANGE THIS ANCHOR -->
Demandbase Site Analytics gives you website analytics for people and accounts so you can better evaluate website performance and personalize marketing efforts to them.

#### Ways you can use Demandbase Site Analytics
{: #site-analytics-use-cases}
<!-- DO NOT CHANGE THIS ANCHOR -->
- Create and target specific audiences with relevant content
- Gain insights on which site content and web pages are most valued by visitors from your target accounts
- Use UTM and URL parameters to track channel and campaign performance over time
- Build campaigns around specific levels of website activity
- Drive registration for upcoming events: discover who has visited your event pages, but has not registered for an event.

#### How to use Site Analytics
{: #site-analytics-how-to}
<!-- DO NOT CHANGE THIS ANCHOR -->
Steps for using Site Analytics as well as building an audience from Site Analytics can be found [here](https://support.demandbase.com/hc/en-us/articles/360052300711-Manage-Site-Analytics#:~:text=Site%20Analytics%20in%20Demandbase%20One,personalize%20marketing%20efforts%20to%20them.)

## Demandbase Lists
{: #demandbase-lists .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->
A `List` is a collection of accounts, people, or opportunities based on filters of your choosing (called selectors), similar to Salesforce report. 

### Naming Convention
{: #account-list-naming-convention}
<!-- DO NOT CHANGE THIS ANCHOR -->
Account lists follow a naming convention. The name of an audience should tell you who the DRI is (team) and what the list is for. Audience names are editable, so if you are unsure, please name using the following criteria and reach out in the [ABM slack](https://gitlab.slack.com/archives/CFBT2HSEB) if you have questions.

- Name of the list- what does this list contain? **Example: (FM) 20200901_SecurityWorkshop**

### How to build a List in Demandbase

#### Training Video
- **[Watch this how-to video for list creation:](https://youtu.be/BVccN6ly2ys)** you must be logged in to the GitLab unfiltered account.

##### Selector Types
Selectors let you define who or what should qualify for reports, journey stages, lists, filters, audiences, and automations.

You will notice two small icons next to the selectors when you go to add one to a list. The first icon will show you the Salesforce object this feild is coming from (account, person, or opp). The second icon will let you know the field source (Salesforce, Marketo, Demandbase or merged). For example, you will see the blue Salesforce logo if it is a field pulling directly from Salesforce and you will see an arrow if it is merged field. A merged field indicates the information is pulling in from multiple sources. You can hover over the merge arrow icon to see exactly which sources the data is pulling in from. Demandbase prioritizes merged field data in the following order: Salesforce then Demandbase

**Field Object Icon**
![picture-of-demandbase-object-example](/handbook/marketing/account-based-marketing/demandbase/ObjectType.png)

**Merged Source Icon**
![picture-of-demandbase-object-example](/handbook/marketing/account-based-marketing/demandbase/MergedSources.png)

#### Building a Custom List
{: #list-creation}
<!-- DO NOT CHANGE THIS ANCHOR -->
You can find a guide for Field Marketing Lists [below](handbook/marketing/account-based-marketing/demandbase/#field-marketing-use-cases) as well.

1. Click the database icon in the left-hand navigation menu
1. Select the list type you need under the database menu (Account Lists, Person Lists, Opportunity Lists)
1. Click +Create New in the right-hand corner
1. Name your list using the following naming convention: `(Team abbreviation) What the list is for` Example: (FM) 20200901_SecurityWorkshop
1. Select list type. Most commonly used is Dynamic list. This ensures that the list will update as it meets your criteria.
1. Change list visability to public to ensure others can see it if you need troubleshooting assistance
1. Click create. From there, you will be taken to the selector tab. Navigate from the basic tab to the advanced tab. 
1. Click the + sign in the center to add your first selector or search at the right hand side and drag the selector into the center. You will build out your list the same way you would build a Salesforce report. 

**IMPORTANT: IF YOU ARE BUILDING A PERSON LIST TO BE PUSHED TO MARKETO - PLEASE ALSO FOLLOW THESE INSTRUCTIONS [HERE](/handbook/marketing/marketing-operations/campaigns-and-programs#pushing-demandbase-lists-to-marketo).**

#### Common Selectors to Use
Any information or fields in Salesforce will be available in Demandbase. If you are wanting to use a Salesforce filed in your Demandbase list but don't see it in the platform, please ping in the #abmteam slack channel.

##### General
- Engagement minutes (3mo), Engagement minutes (1mo), Engagement minutes (7 days) (pulls from Demandbase) - you can use this field to filter accounts that have higher or lower engagement. Reminder that an engagement minute score is an aggregated score at the account level based on how often and with what aligned prospects are engaging. We typically use this to make our list more targeted by using `Engagement minutes (3mo) >= 10` *Make sure you use the greater or equal to OR less than or equal to symbol. If you use just equal to, you limit the accounts that fit this critera drastically as the scoring varies.
- Member of List - you can use this field to pull in an account or person list into another account or person list. For example, if you have a list of accounts and then also want a list of people associated with the account list, you could create a person list and then add the field `Member of list` = NAMEOFACCOUNTLIST
- 

##### Lead/Contact
- Lead or Contact? - This field will let you narrow your list down to just leads, just contacts, both AND will let you exclude (or add) anonymous visitors (most often you want to use this field to remove anonymous visitors from your list as we can't target them)
- Matched Account Name (merged source, arrow icon) - Will pull in leads or contacts that are aligned to an account
- Email (merged source, arrow icon) - You can use this in combination with the `matched account name` field. Email contains @companyemaildomain. You could then edit the filter logic to say Matched account name = Company Name OR email contains @companyemaildomain
- Title (pulls from SFDC) - if you only want specific titles you can use this field, just remember that this data is only as accurate as the data on the lead/contact in Salesforce

##### Account
- Account Type (pulls from SFDC)
- Journey Stage (pulls from Demandbase) - Details what journey stage the account is in. More information about journey stages can be found above [here](/about.gitlab.com/handbook/marketing/account-based-marketing/demandbase/#journey-stages).)
- Account Demographics: Sales Segment (pulls from SFDC) - Gives you the option to only see accounts in a specific sales segment
- Account Owner (Text) (pulls from SFDC) - let's you filter accounts by a specific account owner
- Account name (merged source, arrow icon) - Add a specific account name or list of account names (make sure to seperate by commas if you paste them in via text mode)
- Account ID OR Account ID (18) (pulls from SFDC) - helpful if you don't want to use the specific account name
- First order available (pulls from SFDC) - shows if the account is FOA
- ABM Tier (pulls from SFDC) - tells you if an account is part of ABM and if so, what tier
- Is pipeline qualified (pulls from Demandbase) - will show only accounts that are in pipleine opp stages. (Opporuntiy stages 0-7)

#### Best Practices for Building Lists
{: #list-creation-best-practices}
<!-- DO NOT CHANGE THIS ANCHOR -->

- By default, `Selectors` will use `AND` filters for your criteria to find all people, accounts, or opportunities that meet that criteria. You can edit this in the selector tab of your list. At the top, click the toggle for `edit logic`
- Gitlab prioritizes SFDC data over Marketo in order to avoid duplicating information.
   - Anything with the SFDC logo next to it will apply this data filter and look for the criteria in this order: SFDC -> Marketo -> Demandbase
- A Demandbase logo next to the filter will ONLY be Demandbase data
   - This will be data we do not have outside of the platform.
   - Example: intent and keyword search
- We have certain `selectors` in the platform marked as `favorites` to identify often used and generally trusted sources of data. These will be stared. 
- We have many fields turned off in Demandbase to avoid confusion and ensure we are looking at an SSOT field as much as possible.
   - If you need a field and don't see it in the platform, please ping us in the slack channel #demandbase-one

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

#### Demandbase Campaign Best Practices
{: #demandbase-campaign-best-practices}
<!-- DO NOT CHANGE THIS ANCHOR -->

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

You can also budget based on the funnel stage of your account list. 

| Objective | Budget | Creative/Copy | KPI |
| ------ | ------ | ------ | ------ |
| Top-of-funnel & new market entry | $15–$35 per account | Broad value proposition | Accounts reached, visited & funnel stage progression|
| Generation, Acceleration, Improve close rates, Improve average contract value (ACV) | $35–$75 per account | Tailored value proposition & CTA | Engaged accounts & opportunity generation|
| Customer expansion & retention | $15-$25 per account | product messsaging & case studies | new opportunities, new/increased engagement |

### Display Ad Specs
{: #display-ad-specs}
<!-- DO NOT CHANGE THIS ANCHOR -->
The sizes needed for your ads if you want to launch via Demandbase. 
- 728x90
- 300x250
- 160x600
- 300x600
- 970x250
- 320x50
- 300x50

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
- **Interacted:** 25-30%

Since Demandbase is an ABM-oriented DSP, it self-optimizes for on-site engagement rather than traditional display metrics like CTR. We can check engagement metrics after two weeks, once the campaign has stabilized from initial launch, similar to learning phases in paid social.

Budget pacing is spread out based on campaign duration, but can rise or dip based on inventory. It will ultimately hit the budget with no overages in the end.

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


## Demandbase Integrations
{: #demandbase-integrations .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

### Salesforce
{: #demandbase-salesforce}
<!-- DO NOT CHANGE THIS ANCHOR -->

Demandbase is a direct reflection of Salesforce. Any lead, contact, or opportunity in Salesforce will be in Demandbase. Demandbase does not create or have any different leads/contacts than Salesforce aside from the ability to see what actions anonymous visitors are taking if they are associated with an account. As they are anonymous, we have no information for them other than their activity so we cannot target them etc. 

## Demandbase & Marketo
{: #demandbase-marketo}
<!-- DO NOT CHANGE THIS ANCHOR -->
There is an integration between DemandBase and Marketo that allows marketers to push people lists from DemandBase to Marketo for targeting. For instructions on how to do this, go to the [campaigns and programs page](/handbook/marketing/marketing-operations/campaigns-and-programs#pushing-demandbase-lists-to-marketo).

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

Once you’ve decided to move forward with a direct mail campaign, you will need to create an [Account List](/handbook/marketing/account-based-marketing/demandbase/#demandbase-lists) in Demandbase. You will use it to understand which accounts are interested/potential targets and/or who to advertise your event/tactic towards. You will need this list in order to drill down into a Persons List. Create the Account List 60 days prior to the campaign launch date. Templates for selectors can be found below. Why is your account list important? This data will show you which accounts you need to target and this will also be the list you refer to for ad promotions.

Next you build a Persons List in Demandbase. This will allow you to dive deeper into your account lists on an individual level and/or search for individuals to build a targeted list. You can reference your Account List to assist in building your Persons List. Allow for 60 days prior to the campaign launch date. Templates for selectors can be found below. Why is your persons list important? This data will show you which individuals from your account list are of interest; deeper understanding as to who you should be targeting. This will also be the list you refer to for email invitations.

How do I get the individuals from my persons list into Marketo for email invitations / sends? _Training Material Coming Soon (including DB1 to_[Marketo integration video](https://about.gitlab.com/handbook/marketing/marketing-operations/campaigns-and-programs/#pushing-demandbase-lists-to-marketo)_).*

Once you've completed your Demandbase account list/ persons list and filled out the FM issue, you will need to notify your SDR manager(s) of the campaign by filling out a SDR Request Issue for a SDR DRI to work with you to not only build out the Outreach sequence template but to ensure that the flow of the campaign is user friendly for the SDR team. Allow for 45 days from SDR Manager(s).

### DB1 Templates for Account List & Persons List

#### Account List

Selectors:

- GTM Strategy = Enter whichever list(s) you wish to use
- Account Demographics: Sales Segment = Enter the segment(s) you wish to target
- Account Demographics: Geo = Enter the region(s) you wish to target
- _(Optional)_ Account Demographics: Region = Enter the sub-region(s) you wish to target
- Trending Intent = (Insert keyword(s)) & engagement in the last 3 months
- Accounts with Any Activity = Member of SFDC Campaign _Paste SFDC Campaign here_ and Campaign Type _Exists_

#### Persons List

Selectors:

- In Member Of = Select the account list you wish to drill down into on an individual / person level
- Billing Country = (Contains) United States, US
- Title Does Not Contain (instead of =) then list out the titles you are not interested in. Examples include: ~HR, ~student, student, help desk, professor, finance
- Compliance Segment Value not equal to NULL or empty, Default, Do Not Email
- People with Any Activity: Drills down to activity date of which you'll have a drop down menu of how you'd like to segment the list. Example: People with Any Activity --> Activity Date In the Past 1 Month
- Account Rank = List out the account ranks you wish to work with. You can select multiple ranks if you'd like
- If you will be pushing this list to Marketo, you will also need the fields listed [here](/handbook/marketing/marketing-operations/campaigns-and-programs#pushing-demandbase-lists-to-marketo).

[Template](https://web.demandbase.com/o/d/p/l/260442/s) - Template is a cloned version of the Security Direct Mailer Campaign Persons List. View the Details panel for more information (issue, SFDC Campaign, etc).

#### Campaign recap report

Today within SFDC we can only see what GTM Segment our contacts belong to. With the addition of DB1 to our tool stack, we can see which GTM Strategy both leads and contacts belong to. It is recommended that you build a Campaign Performance report to understand which GTM Strategy each attendee belongs to. Example [here](https://web.demandbase.com/o/al/4/r/f/13/rd/1005/s).
