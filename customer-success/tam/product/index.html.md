---
layout: handbook-page-toc
title: "TAM and Product Interaction"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

----

One of the responsibilities of Technical Account Managers is collaborating with the Product team to prioritize feature and help build the roadmap by indicating demand for features from customers and relaying customers' use cases and experiences.

## Product interacting with TAMs

If you are a Product Manager, Product Designer, UX Researcher, or UX Research Coordinator and are seeking feedback from customers, you should consult with the TAM organization, as TAMs have direct access and regular communication with customers across all regions, tiers, use cases, and industries.

To request a meeting with a customer, open an issue in the [TAM project](https://gitlab.com/gitlab-com/customer-success/tam) and use the [Product Engagement](https://gitlab.com/gitlab-com/customer-success/tam/-/issues/new?issuable_template=Product%20Engagement) issue template, filling out the appropriate fields. If you have a specific customer in mind that you'd like feedback from, please share the customer name in the issue and tag the TAM assigned if you know who it is.

The TAM team gets notified via Slack whenever a new issue is opened, and they will respond in the issue with specific customers and when they are available. If you don't receive a response within a week (allowing the TAM to review with their customers), feel free to ping the [`@timtams`](https://gitlab.com/timtams) group in the issue.

## TAMs interacting with Product

Following the process described here will ensure that customer interest in features is shared with Product properly.

On top of these processes, we've also documented guidelines for when [a customer expressed interest in a feature](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature).

### GitLab Issues

If your customer has a feature request that doesn't already exist, refer to the [example of how to express the customer's interest](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature) in an issue. Open an issue in the [gitlab-org issue tracker](https://gitlab.com/gitlab-org/gitlab/-/issues) and choose the **[Feature Proposal](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Feature%20Proposal%20-%20lean)** template, following the instructions and providing as much information as possible. Once you've created the issue,  make sure to add the appropriate labels for the [product stage and/or group](https://about.gitlab.com/handbook/product/categories/) (e.g `~"devops::plan"`) if known and add a comment tagging the appropriate Product Manager asking for review with the customer's Salesforce account link included.

If your customer would like to report a bug, refer to the [example of how to express the customer's interest](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature) in an issue and use the **[Bug](https://gitlab.com/gitlab-org/gitlab/-/issues/new?issuable_template=Bug)** template, following the instructions and the same steps as above.

To indicate a customer's interest in an existing issue, add the link to their Salesforce account as a comment on the issue and include the guidelines for when [a customer expressed interest in a feature](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature) and tag the appropriate Product Manager. 

Make sure that you are using a customer **account link** and _not_ an **opportunity link**. The Sisense dashboard will only use account links to tabulate interest.

Product uses the [RICE framework](/handbook/product/product-management/process/#prioritization) to determine prioritization of features and issues. Adding customer interest to issues helps increase the RICE score and the visibility of the issue.

#### Sisense

The Product team maintains a [Sisense dashboard](https://app.periscopedata.com/app/gitlab:safe-intermediate-dashboard/970771/User-Request-Issue-Prioritization---Product) to aggregate issues and customer interest in those issues. Information is automatically gathered from [GitLab issues](https://gitlab.com/gitlab-org/gitlab/issues) by scanning for Salesforce customer account links. A separate dashboard [Customer Requested Issues (TAM)](https://app.periscopedata.com/app/gitlab:safe-intermediate-dashboard/970772/User-Request-Issue-Prioritization---TAM-Customer-View) is maintained for Sales, CS and TAMs to make the dashboard easily filterable by the Account Owner or TAM for example.

The Sisense page automation will detect when Salesforce links are added and use the customer's Salesforce data, such as Total Account Value and seat licenses, to add them to the page. This also maintains a customer's privacy on public issues, since Salesforce links are only accessible to GitLab employees with proper credentials.

#### Calls with Product

In preparation of a call, make sure to [prepare both the customer and Product](/handbook/product/how-to-engage/#examples-a-customer-has-a-feature-request) in advance.

### Customer Collaboration Project

Customers that are assigned a Technical Account Manager typically have a [collaboration project](/handbook/customer-success/tam/engagement/) on GitLab.com, which is used to share information, document customer details, and track issues in a place that both the GitLab team and the customer's team can access.

Generally, TAMs maintain a main issue that lists out all feature requests the customer is interested in with links to the public GitLab issue.

When a customer expresses interest in a feature, the TAM should capture that in two places:

- As a [comment or issue in the main GitLab project](#gitlab-issues)
- With an entry in the main feature tracking issue of the customer's collaboration project

The feature tracking issue should be maintained regularly by updating priority (elaborated on below) and milestones as the single source of truth on customer product needs. It can also be used for reviewing metrics of previously delivered feature requests.

If there is a lot of discussion with the customer about a specific feature request, create an issue on the customer collaboration project about it and list that issue as a related issue on the main GitLab issue. This is another signal on the main product issue of customer interest, and also allows discussion with the customer and internal GitLab team members about their needs and concerns.

### Priority of Feature Requests

#### High Priority Requests

If a customer has [identified an issue that is high priority](/handbook/product/product-management/process/#issues-important-to-customers), such as a work-stoppage bug or a feature required for the customer to meet a deadline, follow the expected steps for logging and tracking customer feature requests above by adding the customer's interest in a GitLab issue and including it in the collaboration project issue. In addition, reach out to the Product Manager responsible for the part of GitLab the issue addresses and discuss it with them directly. A general idea of high priority is that the customer needs a particular feature as soon as possible.

#### Medium Priority Requests

Follow the [steps for logging and tracking customer feature requests](#gitlab-issues). An example of medium priority is that the customer needs the feature within the next 6-12 months.

#### Low Priority Requests

Follow the [steps for logging and tracking customer feature requests](#gitlab-issues). An example of low priority is that the customer does not need the feature within the next year and that the feature would be a nice-to-have.

#### Critical Priority Requests

**This should be rare, and used sparingly and agreed upon by Product and Engineering.**

If a customer is unable to continue using GitLab without a specific feature, the TAM should begin the [triaging the account](/handbook/customer-success/tam/health-score-triage/). This should be rare, but if it does occur set up regular check-ins with the Product and Engineering teams to assess the status of the feature, expectations, and potential secondary plans. Please also refer to the details of a [critical customer merge request](https://docs.gitlab.com/ee/development/code_review.html#customer-critical-merge-requests).

**Note:** you should still take the steps shown above to indicate customer interest, so that it's noted publicly. This is just an additional step to accelerate Product looking at and addressing the issue.

#### Bugs

TAMs can refer to the following steps if a medium priority Bug has become stale on the Product Management [triage board](https://gitlab.com/groups/gitlab-org/-/boards/1075672?&label_name[]=type::bug&label_name%5B%5D=customer). Another potentially helpful view is the [triage report label](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&search=triage+report).

Follow the same [steps as for logging and tracking bugs as with feature requests](#gitlab-issues), but be sure that steps to reproduce and workarounds are included whenever possible.

### Escalating Product Issues 

If you have followed the [process of commenting on issues](#gitlab-issues) and have not gotten traction, confirm that [all of the necessary information is included in the issue](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature), including the Salesforce link, use case, etc. Follow up with the Product Manager again in the issue and in the product stage Slack channel (linking to the issue) to get additional attention and team member involvement.

### Product CAB Feedback

#### TAM Feedback Process 

The Product [Customer Advisory Board](/handbook/marketing/strategic-marketing/customer-reference-program/CAB/) is an important part in making sure our Product team regularly receives feedback from customers, as well as an opportunity for customers to interact with each other. If a TAM has a customer on the CAB, it's worthwhile to stay up to date on what's being discussed in CAB meetings, and the Product team has asked the TAMs to review recordings and/or notes and document any feedback customers may have provided during these meetings. The process is as follows:

1. The Customer Reference Manager (CRM) creates a “CAB TAM Follow up” [issue](https://gitlab.com/gitlab-com/marketing/strategic-marketing/customer-reference-content/customer-advisory-board/-/issues/new?issue%5Bmilestone_id%5D=) in the CAB project and shares relevant links 
1. The CRM tags the TAMs of any customer who has attended in the issue to review the CAB recordings, notes, and transcripts, which are linked in the issue
1. The TAM reviews their customer's feedback and either creates a new issue or comments on an existing issue for the feature request, following [normal feature request procedure](#gitlab-issues)
1. For all feature requests that a customer expresses interest in during the CAB, the TAM adds two labels: `~CAB Takeaway` and `~CAB Takeaway Qx FY20xx`
1. The TAM returns to the issue the CRM created and checks off their name for completion
1. The CRM schedules an annual meeting with the TAM and Product teams to review the `~CAB Takeaway` label board 

For more information, join the `cab-shared` and `cab-shared-internal` Slack channels, and review the [proposal slide deck](https://docs.google.com/presentation/d/1LPJazgskhQJnqjBYzRlu5dGDVmUbnvfpzfYrPXqXkRY/edit#slide=id.gf25b6c3b0c_2_0) for managing customer feedback from the Product CAB. To nominate a customer to be a CAB member, please view [the CAB handbook page](https://about.gitlab.com/handbook/marketing/strategic-marketing/customer-reference-program/CAB/#cab-nomination-process).

#### Product Management and Product Monetization Feedback Process

The CAB meetings also produce broader feedback items related to product strategy beyond a specific feature request or bug prioritization request. The process for this is as follows: 

1. The notetakers in each session identify product strategy items  
1. These items are added to issues and labeled with `CAB Takeaway` and `~CAB Takeaway Qx FY20xx`
1. The notetakers assign the issues to the relevant product managers and leaders 
1. These issues will follow a [normal feature request procedure](#gitlab-issues) if they are feature requests 
1. Product Managers may need to connect with these users they can follow up with TAMs of these accounts to get them scheduled. 

For more information or if you have any questions, join the `cab-shared-internal` Slack channel. 
