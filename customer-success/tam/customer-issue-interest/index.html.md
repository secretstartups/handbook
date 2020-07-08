---
layout: handbook-page-toc
title: "Capturing Customer Interest in GitLab Issues"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

---

One of the responsibilities of Technical Account Managers is indicating demand for features from customers to the Product team. Following the process described here will ensure that customer interest in features is shared with Product properly.

On top of these processes, we've also documented guidelines for when [a customer expressed interest in a feature](/handbook/product/how-to-engage/#a-customer-expressed-interest-in-a-feature).

## GitLab Issues and Sisense

The Product team maintains a [Sisense dashboard](https://app.periscopedata.com/app/gitlab/480786/User-Requested-Issues) to aggregate issues and customer interest in those issues. Information is automatically gathered from [GitLab issues](https://gitlab.com/gitlab-org/gitlab/issues) by scanning for SalesForce customer account links.

To indicate a customer's interest in an issue, add the link to their SalesForce account as a comment on the issue. The Sisense page automation will detect this, and use the customer's SalesForce data such as Total Account Value and seat licenses to add them to the page. This also maintains a customer's privacy on public issues, since SalesForce links are only accessible to GitLab employees with proper credentials.

**Note:** make sure that you are using a customer **account link** and _not_ an **opportunity link**. The Sisense dashboard will only use account links to tabulate interest.

Product uses the [RICE framework](/handbook/product/product-processes/#how-we-prioritize-work) to determine prioritization of features and issues. Adding customer interest to issues helps increase the RICE score and the visibility of the issue.

## Customer Collaboration Project

Customers that are assigned a Technical Account Manager should have a collaborative project on GitLab.com, which is used to share information, document customer details, and track issues in a place that both the GitLab team and the customer's team can access.

A recommended practice when tracking an issue that a customer is interested in is to create an issue on the customer collaborative project about it, and then list that issue as a related issue on the main GitLab issue. This is another signal on the issue itself of the interest in the issue, and also allows discussion with the customer about their needs and concerns specifically.

## High Priority Requests

If a customer has [identified an issue that is high priority](/handbook/product/product-processes/#issues-important-to-customers), such as a work-stoppage bug or a feature required for the customer to meet a deadline, reach out to the Product Manager responsible for the part of GitLab the issue addresses and discuss it with them directly.

**Note:** you should still take the steps shown above to indicate customer interest, so that it's noted publicly. This is just an additional step to accelerate Product looking at and addressing the issue.
