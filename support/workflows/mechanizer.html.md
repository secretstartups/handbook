---
layout: handbook-page-toc
title: Mechanizer
category: References
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow details how to use the various automated forms that utilize the [Mechanizer](https://gitlab.com/gitlab-com/support/toolbox/mechanizer) for GitLab.com account related tasks.  The forms may be found in [hosted on Gitlab Pages here](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/) and team members should have access.

## Existing Automations

### Update Customer Trial

The [Update Customer Trial form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/update_trial.html) enables extending or modifying a trial on an existing account.  Please note that in order for this form to work, the customer **MUST** have an active trial and support should always check [Salesforce](https://gitlab.my.salesforce.com/) before proceeding.  If the prospect has not yet initiated a trial themselves, please have them do so via the [customers portal](https://customers.gitlab.com/trials/new?gl_com=true).  Support cannot create a trial for a customer.

The below fields are mandatory and must be supplied for each submission:

- **Your GitLab Username**: Your non-admin GitLab.com username without a preceding @ (ex. `username` and not `@username`).
- **Namespace**: The customer namespace as it appears in the URL.  For example, if the customer namespace is located at http://gitlab.com/gitlab-com then the namespace would be `gitlab-com`.
- **Plan**: The subscription plan you would like to change the customer's trial to.  If the `free` option is selected, the customer's trial will immediately be downgraded and the trial will terminate.

Optional fields:

- **End Date**: The date at which the trial period will be extended through. If the desired trial length will be longer than 30 days, the `Manager Approval` field must also be submitted.
- **Manager Approval**: The GitLab.com username (without a preceding @) of the sales manager who approved a trial extension of more than 30 days.

### Add CI Minutes

The [Add CI Minutes form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/extra_minutes.html) allows adding minutes to a customer namespace. The form has two required fields:

- **Namespace**: The customer namespace as it appears in the URL.
- **Extra minutes**: The number of minutes to add

### Force Associate

The [Force Associate form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/force_associate.html) assoicates a group with a subscription. It's fields are:

- **Your GitLab Username**: Your non-admin GitLab.com username without a preceding @ (ex. `username` and not `@username`).
- **Namespace**: The customer namespace as it appears in the URL.
- **Subscription ID**: The unique ID of the purchased subscription in Salesforce

### Update GitLab Subscription

The [Update Plan](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/update_gitlab_plan.html) form allows directly changing a customer subscription, rather than applying or updating a trial. It should only be used for permenant changes to the subscription.

- **Your GitLab Username**: Your non-admin GitLab.com username without a preceding @ (ex. `username` and not `@username`).
- **Namespace**: The customer namespace as it appears in the URL.  For example, if the customer namespace is located at http://gitlab.com/gitlab-com then the namespace would be `gitlab-com`.
- **Plan**: The subscription plan you would like to change the customer's trial to.  If the `free` option is selected, the customer's trial will immediately be downgraded and the trial will terminate.

Optional fields:

- **End Date**: The updated date the plan will end.
- **Manager Approval**: The GitLab.com username (without a preceding @) of the sales manager who approved a trial extension of more than 30 days.

### Clear Subscription
The [Clear Subscription](https://gitlab-com.gitlab.io/support/toolbox/forms_processor/LR/clear_subscription.html) form unlinks a grop from a subscription.

- **Your GitLab Username**: Your non-admin GitLab.com username without a preceding @ (ex. `username` and not `@username`).
- **Extra minutes**: The number of minutes to add
