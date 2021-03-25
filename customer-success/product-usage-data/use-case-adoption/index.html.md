---
layout: handbook-page-toc
title: "Customer Product Adoption"
description: "How we measure a customer's adoption for general GitLab and different use cases"
---

To drive use case enablement and expansion with customers, we need to define exactly what it means to adopt a use case at GitLab. These health measures will appear in the **Product Usage** scorecard section in Gainsight.

## General Usage

|                             | **Red** | **Yellow** | **Green* |
| --------------------------- | ------- | ---------- | -------- |
| UMAU / Activated Seat Count | <30%    | 30-60%     | \>=60%   |
| UMAU / Licenses Sold        | <30%    | 30-50%     | \>=50%   |


## Source Code Management (SCM)

SCM is considered one of the initial land use cases. To that end, we want to ensure the customer is using it appropriately.

|                       | **Red** | **Yellow** | **Green* |
| --------------------- | ------- | ---------- | -------- |
| SMAU Create / UMAU    | <50%    | 50-75%     | \>=75%   |
| Merge Requests / UMAU | <40%    | 40-60%     | \>=60%   |



## Continuous Integration (CI)

CI is considered both an initial purchase reason or, in the case of SCM, an expansionary use case (one after the initial purchase intent has been solved).

|                    | **Red** | **Yellow** | **Green* |
| ------------------ | ------- | ---------- | -------- |
| SMAU Verify / UMAU | <40%    | 40-60%     | \>=60%   |


## DevSecOps

For customers on Ultimate, we want to measure their effectiveness and usage with Ultimate-level functionality.

|                             |                         | **Red** | **Yellow** | **Green** |
| --------------------------- | ----------------------- | ------- | ---------- | --------  |
| SMAU Secure / UMAU          | Ultimate (product tier) | <10%    | 10-40%     | \>40%     |
| SAST *OR* DAST Jobs (users) | Ultimate (product tier) | <5      | 5-7        | \>8       |
| SMAU Protect/UMAU           | Ultimate (product tier) | <2%     | 3-6%       | \>7%      |

