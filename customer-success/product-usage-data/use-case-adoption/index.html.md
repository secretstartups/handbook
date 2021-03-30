---
layout: handbook-page-toc
title: "Customer Product Adoption"
description: "How we measure a customer's adoption for general GitLab and different use cases"
---

To drive use case enablement and expansion with customers, we need to define exactly what it means to adopt a use case at GitLab. These health measures will appear in the **Product Usage** scorecard section in Gainsight. For more, see the [Product Usage Data handbook page](/product-usage-data/using-product-usage-data-in-gainsight/).


## User Engagement

In addition to license utilization, we need to measure the depth of user engagement and adoption at a high level. For customers after their initial 6 month purchase:

|                             | **Red** | **Yellow** | **Green** |
| --------------------------- | ------- | ---------- | --------  |
| UMAU / Activated Seat Count | <30%    |      |   |
| UMAU / Licenses Sold        | <30%    |      |   |
| UMAU / Activated Seat Count <br> UMAU / Licenses Sold |     | >=30% AND <br> <50%    |    |
| UMAU / Activated Seat Count <br> UMAU / Licenses Sold |     | <60% AND <br> >=30%    | >=60% AND <br> >=50%   |


## Source Code Management (SCM)

SCM is considered one of the initial land use cases. To that end, we want to ensure the customer is using it appropriately. For customers after their initial 1 month purchase:

|                       | **Red** | **Yellow** | **Green** |
| --------------------- | ------- | ---------- | --------  |
| SMAU Create / UMAU    | <50%    |      |     |
| Merge Requests / UMAU | <40%    |      |     |
| SMAU Create / UMAU <BR> Merge Requests / UMAU |     | >=50% AND <BR> <60%     |    |
| SMAU Create / UMAU <BR> Merge Requests / UMAU |     | <75% AND <BR> >=40%     | \>=75% AND <BR> \>=60%    |


## Continuous Integration (CI)

CI is considered both an initial purchase reason or, in the case of SCM, an expansionary use case (one after the initial purchase intent has been solved). For customers after their initial 1 month purchase:

|                    | **Red** | **Yellow** | **Green** |
| ------------------ | ------- | ---------- | --------  |
| SMAU Verify / UMAU | <40%    | 40-60%     | \>=60%    |


## DevSecOps

For customers on Ultimate, we want to measure their effectiveness and usage with Ultimate-level functionality. For customers after their initial 1 month purchase:

|                             |                         | **Red** | **Yellow** | **Green** |
| --------------------------- | ----------------------- | ------- | ---------- | --------  |
| SMAU Secure / UMAU          | Ultimate (product tier) | <10%    |      |      |
| SMAU Protect/UMAU           | Ultimate (product tier) | <2%     |        |      |
| SMAU Secure / UMAU <BR> SMAU Protect/UMAU           | Ultimate (product tier) |     | >=10% AND <BR> <6%        |       |
| SMAU Secure / UMAU <BR> SMAU Protect/UMAU           | Ultimate (product tier) |     | <40% AND <BR> >2%        | \>=40% AND <BR> \>=7%      |


