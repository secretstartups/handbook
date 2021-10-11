---
layout: handbook-page-toc
title: "Customer Use Case Adoption"
description: "How we measure a customer's adoption for general GitLab and different use cases"
---

To drive use case enablement and expansion with customers, we need to define exactly what it means to adopt a use case at GitLab. These health measures will appear in the **Product Usage** scorecard section in Gainsight. For more, see the [Gainsight Scorecard Attributes and Calculations](/handbook/customer-success/tam/health-score-triage/#gainsight-scorecard-attributes-and-calculations).
 

## License Utilization

See [Health Score Triage](/handbook/customer-success/tam/health-score-triage/#license-usage-health-table) for specifics.

## Use Case Adoption

| Use Case (Stage)   | Purpose / Adoption Level | Description                                                  |
| ------------------ | ------------------------ | ------------------------------------------------------------ |
| SCM (Create)       | Basic Adoption           | Is my customer using the basic toolset? Most customers should adopt these features pretty quickly into their GitLab journey |
| CI (Verify)        | Product Stickiness       | As part of their continued adoption and customer journey, we want to help our customers adopt CI, as well as helping their central DevOps teams to better understand their organization's adoption of CI. Use these metrics to help determine progress towards adoption |
| DevSecOps (Secure) | Enablement & Expansion   | For customers using our security features or who are trialing and wanting to [shift left](https://about.gitlab.com/blog/2020/06/23/efficient-devsecops-nine-tips-shift-left/), use these metrics to help identify adoption and track growth |
| CD (Release) | Enablement & Expansion   | How much has my customer adopted GitLab for deployments? The next path along the customer journey is the [CD use case](https://about.gitlab.com/handbook/marketing/strategic-marketing/usecase-gtm/cd/) |


### Source Code Management (SCM)

SCM is considered one of the initial land use cases. To that end, we want to ensure the customer is using it appropriately.
Adoption timeline: 1 months after license purchase

|                       | **Red** | **Yellow** | **Green** |
| --------------------- | ------- | ---------- | --------  |
| Merge Requests / Licenses Sold | <20%    | 20-25%     | \>=25%    |

This looks to all users who ran merge requests in the last 28 days / Licenses Sold.

### Continuous Integration (CI)

CI is considered both an initial purchase reason or, in the case of SCM, an expansionary use case (one after the initial purchase intent has been solved). 
Adoption timeline: 1 months after license purchase

|                    | **Red** | **Yellow** | **Green** |
| ------------------ | ------- | ---------- | --------  |
| SMAU Verify / Licenses Sold | <20%    | 20-25%     | \>=25%    |

This looks to all users who ran ci_pipelines in the last 28 days / Licenses Sold.

### DevSecOps

For customers on Ultimate, we want to measure their effectiveness and usage with Ultimate-level functionality. 
Adoption timeline: 1 months after license purchase

|                             | **Product Tier**   | **Red**  | **Yellow** | **Green** |
| --------------------------- | ------------------ | -------- | ---------- | --------  |
| SMAU Secure / Licenses Sold  | Ultimate | <15%     | 15-20%  | \>=20%     |

This looks to all users who ran any Secure scan in the last 28 days / Licenses Sold.

### Continuous Delivery (CD)

CD is considered an expansionary use case (one after the initial purchase intent has been solved). 
Adoption timeline: 1 months after license purchase

|                    | **Red** | **Yellow** | **Green** |
| ------------------ | ------- | ---------- | --------  |
| SMAU Release / Licenses Sold | <5%    | 5-10%     | \>=10%    |

This looks to all users who ran deployments in the last 28 days / Licenses Sold.
