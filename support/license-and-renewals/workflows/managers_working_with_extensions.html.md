---
layout: handbook-page-toc
title: Plan/License Escalations Workflow
category: Managers Workflows
description: How to manage plan/license escalations
---

{:.no_toc}

----

### How to manage plan/license related escalations

Any escalation during your [manager on-call shift](https://about.gitlab.com/handbook/support/workflows/support_manager-on-call.html) can be evaluated using the following diagram.

### Edge cases

An edge case is any situation in which the process has been followed and the
system does not produce the expected results. Examples:

  - A customer is trying to [link their purchase to their account](https://docs.gitlab.com/ee/subscriptions/), but after following the process, the system produces an error.
  - The web page or system needed to complete the process is down.
  - The owner is not available.

```mermaid
graph TD
    A{LR Escalation}--> C[Plan/License requests]
    C-->T[Is this request for a trial?]
    T-->|No|G[Is the customer in the grace period?]
    T-->|Yes|SA[Is this a sales asisted trial]
    SA-->|Yes|G
    SA-->|No|No
    G-->|Yes|H[Is the grace period expiring in more than 24h?]
    G-->|No| Exp[Is the plan/lic expiring in more than 24h?]
    H-->|Yes|No[No need for escalation]
    H-->|No|Pass[Ok to escalate]
    Exp-->|Yes| No
    Exp-->|No|Pass
    No-->X[Manager to collect data for feedback and label escalation issue]
    A-->WP[Wrong product sold]
    A-->FR[Force Reassociate]
    FR--->FR1[Use the docs to deflect]
    FR1-->|Edge case|Pass
    WP-->|After sales intervention|Pass
```

