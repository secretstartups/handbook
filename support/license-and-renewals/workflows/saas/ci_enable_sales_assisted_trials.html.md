---
layout: markdown_page
title: Enable Sales Asisted trials to run CI Minutes
description: "How to enable sales assisted trials to run CI Minutes"
category: GitLab.com subscriptions & purchases
---

{:.no_toc}

----
# Enable CI minutes for sales assisted trials.

## Summary

This process will make it easier for sales assisted trials to test all of the plan features including CI minutes.

### Requeriments

1. The group need to be on an **active** trial for this process to work.

## Steps

### Using customerDot Console

From the customerDot Console run the following function:

```ruby
irb(main) enable_ci_minutes_trial('namespace')

=> {:status=>"success", :message=>"namespace members are now enabled to run CI minutes"}
```

**Important**

1. This will change the trial to a real subscription within the existing trial time window.
1. The grace period will apply to this namespace after the trial ends.
1. This process does not applies to groups which only made CI minutes purchases.
