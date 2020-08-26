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

To request a meeting with a customer, open an issue in the [TAM project](https://gitlab.com/gitlab-com/customer-success/tam) and use the "Product Engagement" [issue](https://gitlab.com/gitlab-com/customer-success/tam/-/issues/new?issue) template, filling out the appropriate fields. If you have a specific customer in mind that you'd like feedback from, please share the customer name in the issue and tag the TAM assigned if you know who it is.

The TAM team gets notified via Slack whenever a new issue is opened, and they will respond in the issue with specific customers and when they are available. If you don't receive a response within a week (allowing the TAM to review with their customers), feel free to ping the [`@timtams`](https://gitlab.com/timtams) group in the issue.

## TAMs interacting with Product

Following the process described here will ensure that customer interest in features is shared with Product properly.

On top of these processes, we've also documented guidelines for when [a customer expressed interest in a feature](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature).

### GitLab Issues and Sisense

The Product team maintains a [Sisense dashboard](https://app.periscopedata.com/app/gitlab/480786/User-Requested-Issues) to aggregate issues and customer interest in those issues. Information is automatically gathered from [GitLab issues](https://gitlab.com/gitlab-org/gitlab/issues) by scanning for SalesForce customer account links.

If your customer has a feature request, refer to the [example of how to express the customer's interest](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature) in an issue. Use the **Feature Proposal** template.

To indicate a customer's interest in an issue, add the link to their Salesforce account as a comment on the issue. The Sisense page automation will detect this, and use the customer's Salesforce data such as Total Account Value and seat licenses to add them to the page. This also maintains a customer's privacy on public issues, since Salesforce links are only accessible to GitLab employees with proper credentials.

**Note:** make sure that you are using a customer **account link** and _not_ an **opportunity link**. The Sisense dashboard will only use account links to tabulate interest.

Product uses the [RICE framework](/handbook/product/product-management/process/#prioritization) to determine prioritization of features and issues. Adding customer interest to issues helps increase the RICE score and the visibility of the issue.

#### Calls with Product

In preparation of a call, make sure to [prepare both the customer and Product](/handbook/product/how-to-engage/#examples-a-customer-has-a-feature-request) in advance.

### Customer Collaboration Project

Customers that are assigned a Technical Account Manager typically have a [collaboration project](/handbook/customer-success/tam/engagement/) on GitLab.com, which is used to share information, document customer details, and track issues in a place that both the GitLab team and the customer's team can access.

Generally, TAMs maintain a main issue that lists out all feature requests the customer is interested in with links to the public GitLab issue.

If there is a lot of discussion with the customer about a specific feature request that, a recommended practice would be to create an issue on the customer collaborative project about it and list that issue as a related issue on the main GitLab issue. This is another signal on the issue itself of the interest in the issue, and also allows discussion with the customer about their needs and concerns specifically.

### Critical Priority Requests

If a customer is unable to continue using GitLab without a specific feature, the TAM should begin the [triaging the account](/handbook/customer-success/tam/health-score-triage/). This should be very rare, but if it does occur set up regular check-ins with the Product and Engineering teams to assess the status of the feature, expectations, and potential secondary plans. Please also refer to the details of a [critical customer merge request](https://docs.gitlab.com/ee/development/code_review.html#customer-critical-merge-requests).

**Note:** you should still take the steps shown above to indicate customer interest, so that it's noted publicly. This is just an additional step to accelerate Product looking at and addressing the issue.

### High Priority Requests

If a customer has [identified an issue that is high priority](/handbook/product/product-management/process/#issues-important-to-customers), such as a work-stoppage bug or a feature required for the customer to meet a deadline, reach out to the Product Manager responsible for the part of GitLab the issue addresses and discuss it with them directly.

**Note:** you should still take the steps shown above to indicate customer interest, so that it's noted publicly. This is just an additional step to accelerate Product looking at and addressing the issue.

### Medium/Low Priority Requests

Follow the above steps by logging the customer's interest in the GitLab issue (or creating one if one does not exist already) with their Salesforce link and as much detail as possible about their use case for this feature.

#### Bugs

TAMs can refer to the following steps if a medium priority Bug has become stale on the Product Management [triage board](https://gitlab.com/groups/gitlab-org/-/boards/1075672?&label_name%5B%5D=bug&label_name%5B%5D=customer). Another potentially helpful view is the [triage report label](https://gitlab.com/gitlab-org/gitlab/-/issues?scope=all&utf8=%E2%9C%93&state=opened&search=triage+report).

1. Review the request for necessary information, ensuring the Salesforce link, steps to reproduce, workarounds, etc. are all included
1. Follow up with the Product Manager in the issue for an update
1. Follow up with the Product Manager in Slack for an update, linking the issue

### Report a Bug

If your customer would like to report a bug, refer to the [example of how to express the customer's interest](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature) in an issue. Use the **Bug** template.
