---
layout: handbook-page-toc
title: Fulfillment Guide
description: "The Fulfillment Sub-department is responsible for the infrastructure between the systems which affect the user purchasing process."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

You can learn more about Fulfillment, what we do, our priorities and our roadmap by reading the [Fulfillment Direction](/direction/fulfillment).

This page is for product and process documentation. 

## Key Links

1. [Fulfillment Direction](/direction/fulfillment): Outlines the Fulfillment vision and what we are working on next. 
2. Fulfillment Guide (this page): documentation around CustomersDot Admin tools and process documentation that is not part of the [core product documentation](https://docs.gitlab.com/).
3. [Dev - Fulfillment Sub Department](/handbook/engineering/development/fulfillment/): R&D team, priorities, prioritization processes, and more.
4. [Internal Handbook - Fulfillment](https://internal-handbook.gitlab.io/handbook/product/fulfillment/): documentation that can't be in the public handbook. Minimize this to only [Not Public](/handbook/communication/confidentiality-levels/#not-public) information, such as revenue-based KPIs or sensitive project documentation.


## Fulfillment Feature Availability

Not all Fulfillment features are available at the time for all types of customers, please refer to the availability matrix below.

### Cloud Licensing, Auto-Renewal, Quarterly Subscription Reconciliation, and Operational Data availability

| Customer Type | Cloud Licensing (Y/N) | Auto-Renewals (Y/N) | Quarterly Subscription Reconciliation (Y/N) | Operational Data (Y/N) |
| ------------- | --------------------- | ------------------- | ------------------------------------------- | ----------------------- |
| Customers with credit card on file | Yes | Yes | Yes | Yes |
| Customers paying with invoice | Yes | Yes | Yes | Yes |
| Customers requiring a PO | Yes | No | No | Yes |
| Customers with an MSA | Yes | No | No | No |
| Customers with multi-year deals | Yes | No | No | Yes |
| Customers purchasing through a GitLab Reseller or other Channel/Alliance Partner | Yes | No | No | Yes |
| Public Sector Customers | Yes | No | No | Yes |
| Customers with offline/airgapped environments | Yes<br>_([Offline cloud license](https://about.gitlab.com/pricing/licensing-faq/cloud-licensing/#offline-cloud-licenses) released in GitLab 15.0)_ | No | No | No |
| GitLab for Education, Open Source and Startups Customers | No | No | No | No |
| Free Tier Users | No | No | No | No |

## Customer subscription lifecycle

This section shows how customers interact with GitLab Fulfillment systems during their trial and purchase journey.

### User Experiences

A good way to see Fulfillment workflows in action is to view [UX Scorecards for Fulfillment](https://gitlab.com/groups/gitlab-org/-/epics/2015). This is when we take a critical look at our UX and see where we can improve.


## CustomersDot Admin Panel

The target audience is the internal GitLab team, and covers the [admin panel](https://customers.gitlab.com/admin/) of the [CustomersDot](https://customers.gitlab.com). Customers or subscription managers should refer to the [Customers](https://docs.gitlab.com/ee/subscriptions/index.html) section of GitLab's user documentation for help in using the portal, or the [licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/) for questions on subscriptions such as how users are counted.

### Sales Use of CustomersDot Admin

For members of our sales teams, you can learn more about how to use CustomerDot for common use cases in our [Field Operations - CustomersDot Access and Use](/handbook/sales/field-operations/customersdot-access-and-use/) page.

### Searching

When using the admin panel search, be aware that results will be based on searching only one field at a time. For example, entering a person's full name will likely provide no results because the system will not search first and last name at the same time, only one or the other.

We recommend searching by email address, partial email address (e.g. company domain), or company name. When searching by name, enter only first *or* last name.

After your initial search, you can further filter the search results.

In the search results, any account which has a subscription tied to it will have a "Subscription" badge next to their name.

### Account

#### Edit Account Details

To edit an account's details, such as name.

1. Impersonate the user.
1. Follow the [user documentation on updating details](https://docs.gitlab.com/ee/subscriptions/#change-your-personal-details).

#### Edit SFDC or Zuora account

1. Find existing customer and click on `Edit`.
1. Edit the SFDC or Zuora ID as needed.
1. Save.

### View history of account changes

1. Find existing customer.
1. Click on `History`.

#### GitLab Groups

If an account has a connected GitLab.com user account, then a list of namespaces will show with relevant information including current plan.

The list of namespaces are:

- personal namespace
- top level group namespaces where user is `Owner`

### Trials

#### Check, change, or extend trial expiry date

> **Note:** Until [customers #973](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/973) and [customers #1643](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1643) are resolved, this is unlikely to be available.

1. Find the customer who initiated the trial.
1. Click on the `GitLab Groups`.
1. If the trial is expired and needs to be extended, click on the `Renew Trial` button.
1. Change the trial date as necessary and click on `Update`. **Warning:** Do not change the date to a date prior to today's date in UTC timezone.

## How to connect with us

* For help with a license error, resending a license or other support requests, [create an internal issue for the support team](/handbook/support/internal-support).
* For general product questions, try the [#Questions](https://gitlab.slack.com/archives/C0AR2KW4B) Slack channel.
* Reach out to [#s_fulfillment](https://gitlab.slack.com/archives/CMJ8JR0RH) with non-customer specific purchasing or provisioning questions, or to escalate an outage in our purchasing workflow.

## Action plan for Fulfillment-impacting bugs

If a bug is discovered that impacts Fulfillment, including provisioning, purchasing, billing, subscription data, etc., please do the following: 

**Reporting the issue**

1. Open a new [Fulfillment Meta bug intake issue](https://gitlab.com/gitlab-org/fulfillment-meta/-/issues/new) (select the bug_intake template) outlining what is known about the bug. 
   1. Tag [Fulfillment Product Management](https://about.gitlab.com/handbook/engineering/development/fulfillment/#fulfillment-product-management) by mentioning the `@fulfillment-group/leadership/fulfillment-pm` group.
   1. Assign the issue to `ofernandez2` for review and action. 
1. Post the link to the issue on Slack in #s_fulfillment and in #business-fulfillment-sync for broad awareness and review. 

**Notifying appropriate DRIs**

The following individuals should be looped into the issue, depending on the impact of the bug: 
1. For billing and revenue-impacting issues: `Sarah McCauley - Director, Billing & AR`
1. To determine impacted subscriptions and/or automation of Zuora solutions: `Jessica Salcido - Finance Systems Administrator`
1. For bookings impact, and/or to assess and coordinate Salesforce solution needs: `Jesse Rabbits - Sr. Manager, Deal Desk` 
1. If customer outreach is needed, PM should work with: `Lyle Kozloff - Director of Support, Global Readiness`
1. For product monetization decisions needed: `Justin Farris - Sr. Dir, Product Monetization`


## Fulfillment Roadmap Prioritization 

### Principles
 
Across our stable counterparts, we follow four key principles to keep us focused on delivering the right results. These principles are not absolute, the intent is for them to guide our decision-making.
 
**Make conducting business with GitLab seamless**
 
When customers choose to purchase GitLab they've already decided to unlock additional value by accessing the features or services enabled by a transaction. We strive to make the transaction experiences fade into the background, helping customers unlock this additional value as easily as possible. This creates a better customer experience and results in accelerated growth for GitLab.

This means that in every initiative we question the need for complexity. We strive to build functionality that is easy to understand and use, and make sure it works flawlessly for customers of all types. As much as we can, we won't require a customer to speak to a sales representative and will allow them to choose whether to transact via online self-service tools. 
 
**Build a strong foundation so GitLab can scale**
 
Fulfillment systems are the foundational layer for many commerce activities within GitLab. Our systems provision licenses for customers, are the source of data for multiple KPIs and data models, and interact directly with [Zuora](/handbook/business-technology/enterprise-applications/guides/zuora/) and Salesforce. These systems need to be reliable, scale with demand, and allow other teams to collaborate. 

We regularly invest in our foundations and will continue to pause new feature development in favor of foundations whenever we feel that our foundational systems aren't robust enough. We established a Fulfillment Platform group in FY23 for focused efforts in this area. 
 
**Use data to make decisions and measure impact**
 
We have many sensing mechanisms at our disposal: feedback routed via our GTM teams, meetings with business counterparts, customer feedback from user research, and improvement suggestions raised by GitLab team members and members of the wider community in our issue tracker. 
 
We're also improving how we use data as a sensing mechanism to set direction and prioritization. Understanding our funnel is paramount in building a seamless commerce experience for our customers. Fulfillment teams in collaboration with Growth are instrumenting each point in our transaction funnels so we can use data to inform our strategy and direction.
 
**Iterate, especially when the impact of a change is sizeable**
 
Iteration is one of the most challenging values to follow, especially within Fulfillment. Oftentimes our work needs to be bundled and aligned closely with external announcements or communications. Even so, we strive to break work down as much as possible and decouple functionality releases from broader announcements. Doing this expedites delivering value to our customers and the business.

**Minimize and remove business logic from the GitLab application code**

In the past, we have embedded significant business logic into the GitLab instance code directly. For example, we have logic in our licensing system that checks at the instance level whether the customer license should be activated based on licenses paid for, etc. This causes significant issues as we evolve our business policies, which we can't then reflect in past GitLab versions that we support. 

We will minimize such logic and remove it from the application code whenever possible, seeking alternative solutions. 

### Prioritization Process

Our roadmap is prioritized and scheduled following our [Project management process](/handbook/engineering/development/fulfillment/#project-management-process). We aim to update this roadmap every month as a part of our milestone [planning process](/handbook/engineering/development/fulfillment/#planning). 
 
To request work to be added to the Fulfillment roadmap, please follow our [intake request process](/handbook/engineering/development/fulfillment/#intake-request). Changes in priorities of this roadmap follow our [prioritization process](/handbook/engineering/development/fulfillment/#prioritization).
 
The source of truth for all Fulfillment projects is our **[in-product Fulfillment Roadmap](https://gitlab.com/groups/gitlab-org/-/roadmap?state=all&sort=end_date_asc&layout=QUARTERS&timeframe_range_type=THREE_YEARS&label_name%5B%5D=Fulfillment+Roadmap&progress=COUNT&show_progress=true&show_milestones=false&milestones_type=GROUP)**.
       
By nature of our [direction](/direction/fulfillment/), Fulfillment works mostly on highly cross-functional projects where either or both of the following are true:
1. Many cross-team dependencies: project execution relies on collaboration with other teams, with significant coordination of time and resources required.
1. Downstream impacts: projects may change how other teams operate (e.g., Field Operations, Enterprise Apps, Billing) and may also impact the success of their efforts (e.g., achieving sales efficiency targets, accomplishing e-commerce conversion goals)
 
To focus on the most impactful work, Fulfillment’s prioritization process seeks to:
1. Prioritize the highest ROI initiatives as measured by long-term impact on GitLab, Inc’s value. (Note: “cost to build” is a key consideration in the I of the ROI calculation)
1. Provide future visibility into priorities to adequately plan cross-team and cross-functional resource needs.
1. Minimize waste and churn due to re-prioritization mid-execution.
 
#### Prioritization Criteria

A project will be prioritized in the Fulfillment roadmap based on the considerations below.
1. Revenue impact potential
   1. Value of unlocking new sales channels
   1. Sales efficiency improvements and reduction in time spent by a field team member to close a deal, this includes eliminating sales team involvement on most transactions
   1. Conversion improvements
   1. Risks and compliance issues (negative revenue potential)
1. Operational cost reduction
   1. Reduction in support costs
   1. Seamless transactions with GitLab, efficiency gains, and improved customer satisfaction.
1. Foundations to unlock opportunities
   1. Value of new or improved data to inform future opportunities
   1. System robustness to support 10x customers
   1. Value of the foundational work to unlock other opportunities
   1. Number of GitLab team members able to contribute towards e-commerce improvements
   1. Work that will help us scale (support more customers, improve operations, simplify business processes, etc.)
1. Confidence level around the impact and solution
   1. Low for initiatives that haven’t been properly scoped or researched. PM/UX/Eng and cross-functional partners will increase the confidence by scoping the initiative.
1. Ease of implementation
   1. Consider the time and resources required to complete the initiative.
   1. Consider a solution that is long-term sustainable, and corresponds to the revenue/cost impact estimated.
   1. For efforts that are not well understood, we will start by assuming a larger effort to account for unknowns. As we do some scoping, we can refine the cost/complexity.
 
All initiatives, regardless of who requests them, will be evaluated based on this same criteria.
 
Some initiatives will have a direct impact on these criteria, but others will have an indirect impact. We will consider indirect impact as part of the prioritization.

When scoping new solutions we will prefer those that best allow GitLab to scale and accelerate future work. These solutions often require more upfront foundational work, which we will include in the initial scope. In cases when we decide to accelerate a solution by skipping on some foundational work, we will add this foundational work as a separate line item to the roadmap.
 
**A note on Customer Satisfaction**: to understand the impact of efforts aimed at improving customer satisfaction, we should estimate the indirect impact of improving CSAT on revenue and cost. For example, by reducing the number of steps or improving the steps required to purchase we will see an increase in conversion rate and thus revenue.
 
#### Scheduling new work

Prioritization based on the established criteria will drive the order in which work is scheduled to be completed. The product team will review overall prioritization regularly. Before changing priorities, will consider:
1. Efficiency and morale impact of disrupting ongoing efforts
1. Impact of changes to existing customer and partner commitments
1. Feedback from cross-functional partners
 
To minimize impact and give more predictability to partner teams, we will minimize changes to initiatives that we’ve already agreed with cross-functional partners to do within the ongoing quarter.
 
Anyone can request new items to be added to the roadmap via an [intake request](/handbook/engineering/development/fulfillment/#intake-request).
 
#### Quarterly cross-functional review

One of our prioritization goals is to maximize overall team output across Fulfillment and cross-functional partners. We want to give transparency to all GitLab team members about the work that Fulfillment and its partner teams plan to deliver.
 
To enable this, we will do a roadmap review with our [stable counterparts](/handbook/engineering/development/fulfillment/#stable-counterparts) before the beginning of a new fiscal quarter. As part of this review, we gather feedback on roadmap priorities, update the roadmap based on the feedback, and agree with partners on the scope and delivery milestones for the upcoming 3-6 months.
 
During these quarterly reviews we will aim to commit up to 70% of Fulfillment’s engineering capacity for the upcoming quarter, and no more than 30% of capacity for the quarter after. This is meant to provide enough visibility into upcoming activities for cross-functional partners to plan for them while leaving room for reprioritization and changes as needed.
 
#### Communicating roadmap changes

Any proposed changes to the roadmap will be first communicated to cross-functional partners async in a relevant Slack channel with the relevant context and rationale, and ask for feedback. As needed, a synchronous meeting will be scheduled to discuss. All feedback will be considered by the product team and a final decision will be made and communicated once made.
 
## User cap for groups on SaaS

We currently have a version of [User Caps for groups](https://docs.gitlab.com/ee/user/group/manage.html#user-cap-for-groups) built for SaaS, which is similar in behavior to the [self-managed User Caps feature](https://docs.gitlab.com/ee/user/admin_area/settings/sign_up_restrictions.html#user-cap). As of now, this feature is not ready for production use. GitLab team members can learn more about the feature in the [internal handbook](https://internal-handbook.gitlab.io/handbook/product/fulfillment/saas-user-caps/). 
