---
layout: handbook-page-toc
title: 6sense
description: 6sense Overview
twitter_image: /images/tweets/handbook-marketing.png
twitter_site: '@gitlab'
twitter_creator: '@gitlab'
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# <i class="fab fa-gitlab fa-fw" style="color:rgb(252,109,38); font-size:.85em" aria-hidden="true"></i> 

This page is under construction while we work to migrate from Demandbase to 6sense. Please feel free to improve this page by opening an MR! 
{: .alert .alert-warning}


## Overview

[6sense](https://6sense.com/) is a an [Account Based Marketing](https://about.gitlab.com/handbook/marketing/account-based-marketing/) platform that uses a predictive model to identify the right customers at the ideal time.  

## Implementation

We are currently implementing 6sense. Follow along in [this epic](https://gitlab.com/groups/gitlab-com/marketing/-/epics/3963)

## Integrations

6sense is integrated with Salesforce, Marketo, Outreach, and Qualified. In addition, user management is managed through Okta.

## Support

- [6sense knowledge base](https://support.6sense.com/) (6sense user account required)
- `#mktgops` on Slack
- [6sense customer support](https://revcity.6sense.com/entry/connect/jsconnect)

## Access

The following teams have role-based access to 6sense:
- Account Based Marketing
- Marketing Campaigns
- Digital Marketing
- Field Marketing
- Sales & Business Development

6sense is access is managed through Okta. To request access, open an [access request](https://about.gitlab.com/handbook/business-technology/end-user-services/onboarding-access-requests/access-requests/). After receiving manager approval, tag the provisioner listed in the [tech stack](https://gitlab.com/gitlab-com/www-gitlab-com/-/blob/master/data/tech_stack.yml). When requesting access, please specify a role from the list below along with justification as to why this role is needed.

### 6sense User Roles

- Operation User: This role has full access to 6sense insight features, orchestration, alerts, administrator reports, and settings related to integration and sales enablement. It also has view access to campaigns and some other settings.
- Marketing User: This role has full access to 6sense insight features, campaign features, alerts, administrator reports, and view access to some settings. Additionally, it has edit access to the Ad Inventory Exclusion list.
- View Only User (default): This role has view access to all features and settings that Marketing User has access to.
- Insights User: This role has full access to 6sense insights for segments and accounts.
- Sales User: This role has full access to 6sense insights for segments and accounts.

## Training

Training schedule TBD. Schedule of trainings and recordings of trainings will be posted here.

## Best Practices 

### Folder Naming Convention
{: .no_toc}
In order to keep segments and the general platform organized, please use the following folder naming convention:
- `Team Name - FY## Q# - Name of Campaign/Account List`

For example: 
- `ABM - FY24 Q2 - Tier 1 Accounts`
- `XDR - FY24 Q3 - Campaign Name`

### Tags
{: .no_toc}
Tags should be used to help organize lists by topic. For example, you may want to use a tag for a large campaign, segment (SMB, MM, etc.), tier, etc.  

### Sales Dev Naming Convention
{: .no_toc}
Sales Dev users should name any lists with the same naming convention that is used in Outreach. The naming convention guidance can be found on the [Outreach Handbook Page](https://about.gitlab.com/handbook/marketing/marketing-operations/outreach/#sequences).

## Useful Terms
**Reach Activities:**
Sales and Marketing activities performed by your team that engage with the account. This may include activities such as contacting people from the account or adding them to campaigns.

**Engagement Activities:**
Activities performed by people from the account that indicate interest in your company or product offerings. This may include activities such as email and ad clicks, form-fills, or web research related to your product.

**Engaged Contacts**
Generally means that the Account has been participating in MAP / CRM activities such as (email clicks, form fills, CRM Campaign Members which are tied to engagement ie: positive response, attended webinar, etc). So it’s based on taxonomy and then their engagement score is calculated based on how much a contacts/leads from the Account have been participating in those activities. 

**6 Qualified Accounts (6QA)**
Qualified by 6sense, a 6QA is an account that is primed for sales engagement.

Due to increases in intent, profile fit and engagement, a 6QA occurs when an account moves from an earlier buying stage (Target, Awareness or Consideration) to a later buying stage (Decision or Purchase), making them qualified for sales activity. It is marketing’s goal to drive accounts to either inbound or 6QA.

**6sense Account Buying Stage Definitions**
- **Target** - The buyer may not realize a problem exists, but may fit within the seller’s TAM.
- **Awareness** - The buyer realizes they have a problem. The buyer is doing educational research to more clearly understand, frame, and identify their problem.
- **Consideration** - The buyer defines their problem and researches options to solve it. The buyer is researching all of the available options to solve the defined problem.
- **Decision** - The buyer chooses a solution. The buyer is narrowing a list of potential vendors to ultimately make a purchase decision.
- **Purchase** - The buyer commits to a specific solution and justifies the reasons for the purchase.

If you are looking for the definition of term not listed above, please visit the [6sense glossary](https://6sense.com/glossary/).

