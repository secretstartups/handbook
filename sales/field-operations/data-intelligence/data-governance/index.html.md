---
layout: handbook-page-toc
title: Data Governance
---

## <i class="far fa-folder-open" id="biz-tech-icons"></i> Data Intelligence and Governance Defined

**Data Governance**

At GitLab, maintaining data governance includes data definitions, policies, processes and procedures for our data. Compliance, transparency, quality are all drivers for data governance, and continue to be the focus of our team. 

**Data Stewardship**

Data stewardship formalizes the accountability for managing the day-to-day procedures. As we implement a flexible data governance structure and aligning with [GitLab's mission](https://about.gitlab.com/company/mission/#mission) that everyone can contribute.

**Data Governance Roadmap**

The Data Intelligence team launched in September 2022. The team is following industry best practices in terms of governance design. Our roadmap has three stages: 

* 1) Onboarding & Assessment
* 2) Design Flexible Governance Framework
* 3) Implement Framework and Enablement Program for Teams

Enablement will be a critical piece of our data governance program with multiple opportunities for training on these topics. 

**Privacy & GDPR - General Data Protection Regulation**

More information can be found on the [GDPR website.](https://gdpr-info.eu/)

The Data Intelligence team follows the legal framework as defined in GDPR for the European Union customers as well as ensuring PII is properly governed.

## <i class="far fa-folder-open" id="biz-tech-icons"></i> Data Intelligence Governance Policies

### Account Creation Policy
The Account Creation Policy can be found in the [Internal Handbook.](https://internal.gitlab.com/handbook/sales/data-intelligence/governance/_governance/)

**Data Enrichment**
Data enrichment within our Salesforce.com instance is primairly done through ZoomInfo. Data enrichment is a process whereby our customer and prospect data is enriched with information from a third-party database. 

More information on ZoomInfo can be found on the [Marketing Operations Page](https://about.gitlab.com/handbook/marketing/marketing-operations/zoominfo/)

Sources today include:

1. ZoomInfo or another data enrichment provider*
2. Verbal/Written confirmation from the customer of the employee count
3. Company Website and/or SEC filing
4. (in last resort) LinkedIn - not as accurate as it is based on people who have put on their LinkedIn that they work at a certain company and this is not something that is verified.

- Not accepted: Wikipedia

Note: We also have access to additional data enrichment vendors through OpenPrise, if needed, but credits are limited so this is not standard practice.

**ZoomInfo Licensing Policy & Procedures**

#### About ZoomInfo

ZoomInfo (ZI) is sales intelligence software that provides a database of business and professional contact information.

#### Administration
ZoomInfo management is shared between the Data Intellgience team who manages and provisions licenses to the sales team members, and the Marketing Operations team who manages and provisions licenses to the marketing team members. 

Marketing Operations (MOps) provisions ZI licenses for marketing team (BDAs/SDRs/BDRs), and Data Intelligence provisions for field sales roles (AEs, SAEs, ASMs, ISRs). 

In ZI we use the following group roles to make this determination: 

- BDA/BDR/SDR/BDR Manager/ SDR Manager/ XDR Manager falls under Marketing
- AEs/SAEs/ASMs/ISRs and their associated managers fall under Sales.

As such, the Marketing Operations team has a page dedicated to ZoomInfo which contains helpful information, including enablement. See the link [here.](/handbook/marketing/marketing-operations/zoominfo/)

#### Access & Help
Members of the sales organization should receive access to ZoomInfo as part of their onbaording access request. If the team member did not receive access or if access had been removed and you would like it back you will need to create an access request.

Specifically, you can create an [individual access request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/). Please tag your manager for approval, and Brianna Vandre

If you are experiencing issues with ZoomInfo, your first point of contact is ZoomInfo. You can reach them via email at: helpmenow@zoominfo.com.

You can also reach out to the Data Intelligence team via Slack at # dataintelligencehelp.

#### Inactive License Review
ZoomInfo license usage will be reviewed on a regular basis to ensure alignment with our policy. Our current policy is that if a ZoomInfo license is not used for a period of 30 days or more, it is flagged for review. If a person has a license but does not log in for over 6 months, but the user says they still need a license, the user license will still be deactivated, unless we receive their manager's approval. Before any user is deactivated, the Data Intelligence team will reach out to the user, and confirm if they still need access to the platform. If they do not need access, then the user is removed from ZoomInfo. 

Please note that even if user access is removed, they are still able to see the ZoomInfo field data in Salesforce.

**Detailed Process** 
1. Log into ZoomInfo, Admin Portal, Users, Export to CSV
2. Import into Google Sheet pivot table, review users who have not accessed in the last 30 days
3. Reach out to users 
4. Deactivate users that no longer need access
5. Keep track of split of Marketing and Sales licenses. If we run short on Sales licenses, we can borrow some from marketing with the following message. 
6. Create an issue in the Data Intelligence project to track

If the license is borrowed from the marketing team, it can be revoked at any time. Please inform the user:
 “Greetings! We currently do not have Zoominfo licenses available for field sales. We have assigned you a temporary ZoomInfo license borrowed from the marketing team so you can have access to the platform. Due to limited licenses being available, your license may be revoked if the marketing team needs the license back for one of their team members. If such an instance does arise, you will be notified before the license is revoked and we will work to get you procured a Sales Operations license. Thank you for your understanding.”

**Controls**
1. Check to ensure all users have a @gitlab.com email address
2. Check to ensure role aligns with current role internally (with internal mobility, users may need to be assigned a new role)
