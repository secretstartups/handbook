---
layout: handbook-page-toc
title: Fulfillment Guide
description: "The Fulfillment Sub-department is responsible for the infrastructure between the systems which affect the user purchasing process."
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Key Fulfillment Documentation links

1. [Fulfillment Direction](/direction/fulfillment): Outlines the Fulfillment vision and what we are working on next. 
2. [docs.gitlab.com Subscription documentation](https://docs.gitlab.com/ee/subscriptions/): includes customer-facing documentation around GitLab subscriptions, including Customer Portal (customers.gitlab.com) information.
3. Fulfillment Guide (this page): documentation around CustomersDot Admin tools and process documentation that is not part of the docs.gitlab.com Subscription documentation above.
4. [Dev - Fulfillment Sub Department](/handbook/engineering/development/fulfillment/): R&D team, priorities, prioritization processes, and more.
5. [Internal Handbook - Fulfillment](https://internal-handbook.gitlab.io/handbook/product/fulfillment/): documentation that can't be in the public handbook. Minimize this to only [Not Public](/handbook/communication/confidentiality-levels/#not-public) information, such as revenue-based KPIs or sensitive project documentation.
6. [UX Scorecards for Fulfillment](https://gitlab.com/groups/gitlab-org/-/epics/2015): A good way to see Fulfillment workflows in action is to view our scorecards. This is when we take a critical look at our UX and see where we can improve.
7. [Licensing FAQ](/pricing/licensing-faq/)
8. [Cloud Licensing Overview](/pricing/licensing-faq/cloud-licensing/)
9. [Quote-to-Cash process](/handbook/business-technology/enterprise-applications/quote-to-cash/#quote-to-cash-introduction) - EntApps documentation including systems and process diagrams.
10. [Sales Order Processing - Deal Desk Docs](https://about.gitlab.com/handbook/sales/field-operations/order-processing/)

## Helpful data links

1. [Supersonics dashboard (Cloud Licensing, QSRs, Auto-renewal, operational data sync)](https://app.periscopedata.com/app/gitlab:safe-dashboard/919356/Supersonics-Executive-Dashboard) - **Limited Access**
1. [L&R Ticket Ratio](https://app.periscopedata.com/app/gitlab:safe-dashboard/919342/SM-SaaS-Subscription-to-L&R-Ticket-Ratio) **Limited Access**
1. [Version Upgrade Rate](https://app.periscopedata.com/app/gitlab/406972/Version-Upgrade-Rate) **Not Public**

## How to connect with us

If your question is not answered by the key links above or this guide: 

* For help with a license error, resending a license or other support requests, [create an internal issue for the support team](/handbook/support/internal-support).
* For general product questions, try the [#Questions](https://gitlab.slack.com/archives/C0AR2KW4B) Slack channel.
* Reach out to [#s_fulfillment](https://gitlab.slack.com/archives/CMJ8JR0RH) with non-customer specific purchasing or provisioning questions, or to escalate an outage in our purchasing workflow.

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

### User cap for groups on SaaS

We currently have a version of [User Caps for groups](https://docs.gitlab.com/ee/user/group/manage.html#user-cap-for-groups) built for SaaS, which is similar in behavior to the [self-managed User Caps feature](https://docs.gitlab.com/ee/user/admin_area/settings/sign_up_restrictions.html#user-cap). As of now, this feature is not ready for production use. GitLab team members can learn more about the feature in the [internal handbook](https://internal-handbook.gitlab.io/handbook/product/fulfillment/saas-user-caps/). 

### Billing & Subscription Management Features

List of features managed by the [billing and subscription management group](https://about.gitlab.com/direction/fulfillment/billing-and-subscription-management/) within the [Fulfillment section](https://about.gitlab.com/direction/fulfillment/).

#### Renew Subscription

The renew subscription feature allows customers to renew their SaaS or Self-managed subscriptions. This feature is available through the `Renew` button on the subscription card in the [Customers Portal](https://customers.gitlab.com/).

##### GitLab Docs for SaaS (public)

- [Preparing for renewal](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#prepare-for-renewal-by-reviewing-your-account)
- [Renewing a subscription](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#renew-or-change-a-gitlab-saas-subscription)
- [Community programs renewal workflow](https://about.gitlab.com/handbook/marketing/community-relations/community-programs/automated-community-programs/#renewal)

##### GitLab Docs for Self-managed (public)

- [Preparing for renewal](https://docs.gitlab.com/ee/subscriptions/self_managed/#prepare-for-renewal-by-reviewing-your-account)
- [Renewing a subscription](https://docs.gitlab.com/ee/subscriptions/self_managed/#renew-subscription-manually)
- [Community programs renewal workflow](https://about.gitlab.com/handbook/marketing/community-relations/community-programs/automated-community-programs/#renewal)

##### Developer docs

- [Walkthrough video](https://www.youtube.com/watch?v=OnjxaAUQb98)
- [Snapshot of steps](https://app.mural.co/t/gitlab2474/m/gitlab2474/1674849812502/a4f3c7b6a1026911837d1c78d903b4d6522ab21d?sender=d04730c1-f654-453a-ba0a-208f33c27b93)
- [Creating a subscription in Zuora to renew it in a local environment](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/zuora/zuora_tips_and_tricks.md#create-a-subscription)
- [Generating coupon codes for community programs renewals](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/community_programs/coupons.md#coupons)

##### Related terminology

- [QSR](https://docs.gitlab.com/ee/subscriptions/quarterly_reconciliation.html)
- [True-up](https://docs.gitlab.com/ee/subscriptions/quarterly_reconciliation.html)
- [Seat usage](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#how-seat-usage-is-determined)
- [Seats owed](https://docs.gitlab.com/ee/subscriptions/gitlab_com/index.html#seats-owed)


#### Auto-Renewals

##### GitLab Docs for SaaS

- [Automatic subscription renewal](https://docs.gitlab.com/ee/subscriptions/gitlab_com/#automatic-subscription-renewal)
- [Auto-renewals FAQ](https://about.gitlab.com/pricing/faq-improved-billing-and-subscription-management/#auto-renewals)

##### GitLab Docs for Self-managed

- [Automatic subscription renewal](https://docs.gitlab.com/ee/subscriptions/self_managed/#automatic-subscription-renewal)

##### Developer Documentation

- [Custom AutoRenew feature](https://gitlab.com/gitlab-org/customers-gitlab-com/-/blob/main/doc/flows/custom_auto_renew/index.md)
- [Experience Flowchart (password protected)](https://www.figma.com/file/4IAnGWRKIxIKqMLUDxWf1A/Autorenew-experience-flowchart?node-id=0%3A1&t=x31XThz7dVzhhIaK-0)

## CustomersDot Admin Panel

The target audience is the internal GitLab team, and covers the [admin panel](https://customers.gitlab.com/admin/) of the [Customers Portal](https://customers.gitlab.com). Customers or subscription managers should refer to the [Customers](https://docs.gitlab.com/ee/subscriptions/) section of GitLab's user documentation for help in using the portal, or the [licensing FAQ](https://about.gitlab.com/pricing/licensing-faq/) for questions on subscriptions such as how users are counted.

### Sales use of CustomersDot Admin

For members of our sales teams, you can learn more about how to use CustomerDot for common use cases in our [Field Operations - CustomersDot Access and Use](/handbook/sales/field-operations/customersdot-access-and-use/) page.

### Searching

When using the admin panel search, be aware that results will be based on searching only one field at a time. For example, entering a person's full name will likely provide no results because the system will not search first and last name at the same time, only one or the other.

We recommend searching by email address, partial email address (e.g. company domain), or company name. When searching by name, enter only first *or* last name.

After your initial search, you can further filter the search results.

In the search results, any account which has a subscription tied to it will have a "Subscription" badge next to their name.

### Customers

#### Search for a customer

1. Navigate to `Customers` in the admin panel.
1. Enter details of a customer to search for in the empty text box. (E.g. email address or domain of the customer).
1. Click on `Refresh` or hit `Enter` on your keyboard to initiate the search.
1. You can refine your current search by clicking on `Add filter`.
1. Select one or more additional filters that should be applied.
1. Click on `Refresh` again.

#### Update customer details

**Note:** The updated customer details are synced to the matching Zuora BillTo/SoldTo contact. 

1. Select the correct customer by clicking on the ✎ icon in the `Customers` section.
1. You can now update `First name`, `Last name`, and `Email`.
1. Click on `Save`.

Deactivate login for Customer

If you want to update the physical address of the customer or other details, you need to impersonate the customer.

1. In the  desired customer's detail view, click on `Impersonate`.
1. You are now get redirected to impersonate the user.
1. Follow the [user documentation on updating details](https://docs.gitlab.com/ee/subscriptions/#change-your-personal-details).

#### Deactivate login for a customer

1. Select the correct customer by clicking on the ✎ icon in the `Customers` section.
1. Untick `Login activated`
1. Click on `Save`.

The customer is now blocked from accessing their Customers Portal account.

**Note:** That does not affect the ability to access their GitLab.com account.

#### View history of customer account changes

1. In the desired customer's detail view, click on `History`.
1. You will see a list of all events and logs that happened to the customer record.

**Note:** If a user is `admin:xyz@gitlab.com` in a log line, that indicates a change on the customer's record that was done via the admin panel.

#### GitLab Groups

If a customer has a connected GitLab.com user account, then a list of namespaces will show with relevant information including current plan.

**Note:** This only works as long as the customer's `access_token` is valid.

The list of namespaces are:

- personal namespace
- top level group namespaces where user is `Owner`

### Billing Accounts

The billing account is the representation of a billing entity which is mostly connected to an organization. The billing account has data associated to Zuora, SFDC, important company information and all billing account memberships.

#### Search for a billing account

1. Navigate to `Billing accounts` in the admin panel.
1. Enter details of a billing account to search for in the empty text box. (E.g. name).
1. Click on `Refresh` or hit `Enter` on your keyboard to initiate the search.
1. You can refine your current search by clicking on `Add filter`.
1. Select one or more additional filters that should be applied.
1. Click on `Refresh` again.

#### View history of billing account changes

1. In the desired billing account's detail view, click on `History`.
1. You will see a list of all events and logs that happened to the billing account.

### Billing Acccount Memberships

The billing account membership defines the relation between a customer and a billing account. The customer will be able to see the subscription in their Customers Portal account if there is a billing account membership with an active subscription.

Currently a customer can only have one billing account membership.

#### Add a new billing account membership

Adding a new billing account membership between a customer and a billing account results in the customer becoming a [subscription management contact](https://about.gitlab.com/handbook/support/license-and-renewals/workflows/customersdot/associating_purchases.html#add-subscription-management-contact-workflow).

1. Navigate to the `Billing account memberships` section.
1. Select the `+ Add new` action.
1. Select the proper customer and CustomersDot billing account for the new subscription management request.
1. Click `Save`.

#### Delete the billing account membership of a customer

1. Navigate to the `Billing account memberships` section.
1. Open the desired billing account membership and select `x Delete` action.
1. Confirm the correct billing account membership was selected.
1. Select `Yes, I'm sure`.
1. See the `Billing account membership successfully deleted` success notification.

### Trials

#### Check, change, or extend trial expiry date

1. Find the customer who initiated the trial.
1. Click on the `GitLab Groups`.
1. If the trial is expired and needs to be extended, click on the `Renew Trial` button.
1. Change the trial date as necessary and click on `Update`. **Warning:** Do not change the date to a date prior to today's date in UTC timezone.

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

## Fulfillment debugging and FAQ

### License Activation issues

**License won't activate due to a true-up or seat overage mismatch**

1. For customers on 14.3+ we allow activating a license even if there's a 10% seat overage [issue #333851](https://gitlab.com/gitlab-org/gitlab/-/issues/333851). You can learn more about this [here](https://gitlab.com/gitlab-org/gitlab/-/blob/master/doc/user/admin_area/license.md#users-exceed-license-limit-upon-renewal) and see the associated [MR #67507](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/67507) and [MR #67508](https://gitlab.com/gitlab-org/gitlab/-/merge_requests/67508)
1. With Cloud Licensing, we won't block activation due to mismatch seats. If a customer applies a license with less seats than their currently active users, we will reconcile it in their following QSR or true-up event.

**What type of connection does the GitLab instance require to activate Cloud Licensing?**

The instance would need to have a 443 port connection to customers.gitlab.com in order to activate. This is also used for license synchronization as outlined in [our documentation here](https://docs.gitlab.com/ee/subscriptions/self_managed/#subscription-data-synchronization).

### Data collection

**Can customers opt out of telemetry or sharing license sync data?**

The data transmitted with Cloud License is covered in [this documentation](https://docs.gitlab.com/ee/subscriptions/self_managed/#license-sync). In short, it's aggregate user counts and some license metadata. This data is required for Cloud Licensing. It's intended to only include necessary data to support our needs for administering a license, supporting future renewals, supporting add-ons, and any seat reconciliations.

You can look at sample code that generates the counts by searching for `subscription` events in [metrics.gitlab.com](https://metrics.gitlab.com/).

**What is Operational vs Optional Data?**

Our [service usage data](/handbook/legal/privacy/services-usage-data/) primarily aggregate counts from your instance (e.g. counts of issues or MRs) and is sent to GitLab on a weekly (or slower) cadence.

1. Operational Data: This is the data that is tied to your subscription account/license. Our goal with this data is to capture aggregate counts to help the GitLab Customer Success and Sales teams help customers better adopt GitLab and get value out of their investment. Those counters can be viewed on metrics.gitlab.com by searching for "operational" and looking for the operational category. These operational events are agnostic of how you've activated your instance.
2. Optional Data: [Optional Data](/handbook/legal/privacy/services-usage-data/#optional-data) is a similar type of metric (aggregate counts) but a much larger set than the Operational metrics. This is configured/opted-out by you, in your instance, and has nothing to do with your subscription. If you choose to share that data our Product teams would appreciate the insights to understand where to invest R&D resources to continue to mature our platform. Otherwise, you can ignore for your renewal and follow the opt-out steps documented [here](https://docs.gitlab.com/ee/development/service_ping/index.html#disable-service-ping).

**Can a customer send subscription data ad-hoc, while keeping their GitLab instance airgapped/not connected to the internet?**

Please see [Offline Cloud Licensing](/pricing/licensing-faq/cloud-licensing/#offline-cloud-licensing) for more information.


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