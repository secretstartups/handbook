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

The following process will remove the restrictions for using CI minutes for groups that meet one of the following criteria:

1. Groups on a **free** plan who have purchased CI minutes
1. Groups who are part of a sales assisted trial

## Steps

### Using Mechanizer

Use the form named [enable Ci Minutes](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/enable_ci_minutes.html). 
Choose if the group is a consumption group and enter the namespace information.

### Using customerDot Console

From the customerDot Console run the following function:

#### For sales assisted Trials

```ruby
irb(main) enable_ci_minutes_trial('namespace')

=> "{\"status\":\"success\",\"message\":\"namespace members are now enabled to run CI minutes\"}"
```

#### For consumption groups

```ruby
irb(main) enable_ci_minutes_trial('namespace', true)

=> "{\"status\":\"success\",\"message\":\"namespace members are now enabled to run CI minutes\"}"
```

**Important**

1. This will change the trial to a real subscription within the existing trial time window.
1. The grace period will apply to this namespace after the trial ends.
1. Consumption groups will be changed to `bronze` and reverted automatically.
