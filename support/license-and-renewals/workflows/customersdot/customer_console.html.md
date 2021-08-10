---
layout: handbook-page-toc
title: Customer Console
category: CustomersDot
description: Using the customer console for internal requests is only for special cases where the existing tools won't allow us to complete the task at hand.
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Using the customer console for internal requests is only for specials cases where the existing tools won't allow us to complete the task at hand.

Console access requires a completed [Access Request](https://gitlab.com/gitlab-com/access-requests/issues/new?issuable_template=Single%20Person%20Access%20Request) as outlined in the [Customers Console training](https://gitlab.com/gitlab-com/support/support-training/-/blob/master/.gitlab/issue_templates/Customers%20Console.md) and its completion.

The scope of what's outlined in this workflow is for frequently used functions which are pre-loaded via [console training wheels project](https://gitlab.com/gitlab-com/support/toolbox/console-training-wheels). Please [check the internal dotcom wiki](https://gitlab.com/gitlab-com/support/internal-requests/-/wikis/Console-related) for functions not included here.

## Using the support console

After logging into the CustomersDot server, enter the command:

```
$ support_console
```
This will open the console and automatically load the functions available to use.

Most functions rely on the namespace (i.e. GitLab.com Group name or username), always make sure to have it handy before starting any work from the console.

Consider creating a [Shell alias](/handbook/tools-and-tips/#shell-aliases) such as the below:

```
alias gcp-console="ssh -t <YOUR_USERNAME>@customers.gitlab.com 'support_console'"
```

## Scope

The console will be for tasks which cannot be completed from the tools we have available.

We need to see the console as a `transition` stage:

```mermaid
graph TD
  A[Console Tasks] --> B(Automate within GitLab)
  B --> C(Integrate into the product)

```
The more we use a function the more we should ask ourselves why we haven't automated that process or even better integrated that missing function into our product.

## Search methods

### view_namespace

> **Note**: This functionality is mostly covered by namespace search in UI and [customers #2163](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/2163).

Provides a unified view for the namespace including orders and customer account linked to the orders.

Function to see namespace information and linked orders/customer profile.
The function will find orders linked to the provided namespace and then customer profile linked to the orders:

```mermaid
graph TD
  C[Namespace] --> B(Order)
  B[Order] --> A(Customer)
```

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | The namespace to find information about |

#### Sample

```ruby
irb(main):002:0> view_namespace('example')

[+]Namespace information
id                                7744884
name                              example
path                              example
members_count_with_descendants    15
shared_runners_minutes_limit      50000
billable_members_count            14
plan                              gold
trial_ends_on                     2020-06-22
trial                             true

[+] There are 1 orders for this namespace
 id                                00000
 customer_id                       111111
 subscription_id
 subscription_name
 start_date                        2020-04-22
 end_date                          2020-06-22
 gl_namespace_id                   2222222
 gl_namespace_name                 example

[+] Customer linked to orders
 https://customers.gitlab.com/admin/customer/111111
 id                                111111
 company                           example Ltd
 first_name                        Jane
 last_name                         Doe
 email                             jdoe@examplecorp.net
 uid                               666666
 zuora_account_id
```

### Manual Lookup

> *Note*: Customer name, email, company, and group name searching is available in UI. Subscription name has been requested in [customer #1030](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1030).

If required, you can search for an order based on any existing order attribute. Use `find_by` if you believe there is only one, or `where` if you believe there may be multiple matching orders.

#### Example find_by

```ruby
irb(main):003:0> Order.find_by_gl_namespace_name "example"
#<Order:0x0000000000000
 id: 0000,
 customer_id: 00000,
 product_rate_plan_id: "2c92a00d76f0d5060176f2fb0a5029ff",
 subscription_id: nil,
 subscription_name: nil,
 start_date: Fri, 31 Aug 2019,
 end_date: Mon, 31 Aug 2020,
 quantity: 1,
 created_at: Mon, 20 May 2019 08:59:04 UTC +00:00,
 updated_at: Mon, 27 Jul 2020 14:16:12 UTC +00:00,
 gl_namespace_id: "0000000",
 gl_namespace_name: "example",
 amendment_type: nil,
 trial: true,
 last_extra_ci_minutes_sync_at: nil,
 zuora_account_id: nil,
 increased_billing_rate_notified_at: nil,
 reconciliation_accepted: false,
 billing_rate_adjusted_at: nil,
 billing_rate_last_action: nil>
```

#### Example where

```ruby
irb(main):005:0> pp Order.where(customer_id: 000000)
[#<Order:0x000000000bfd8990
  id: 00000,
  customer_id: 000000,
  product_rate_plan_id: "2c92a0ff76f0d5250176f2f8c86f305a",
  subscription_id: nil,
  subscription_name: nil,
  start_date: Tue, 12 Jun 2020,
  end_date: Mon, 12 Jun 2021,
  quantity: 1,
  created_at: Tue, 16 Jun 2020 14:37:24 UTC +00:00,
  updated_at: Wed, 19 Aug 2020 23:56:49 UTC +00:00,
  gl_namespace_id: "000000",
  gl_namespace_name: "example",
  amendment_type: nil,
  trial: true,
  last_extra_ci_minutes_sync_at: nil,
  zuora_account_id: nil,
  increased_billing_rate_notified_at: nil,
  reconciliation_accepted: false,
  billing_rate_adjusted_at: nil,
  billing_rate_last_action: nil>]
```

### Order history

> **Note**: Having a way to view this in the UI has been requested in [customer #3081](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/3081).

You can view the change history of an order using `versions`.

#### Example

```ruby
irb(main):005:0> pp Order.find(943369).versions
[#<PaperTrail::Version:0x00000000023248d8
  id: 943369,
  item_type: "Order",
  item_id: 159764,
  event: "create",
  whodunnit: nil,
  object: nil,
  created_at: Wed, 07 Apr 2021 00:19:21.297520000 UTC +00:00,
  transaction_id: 943369,
  object_changes:
   "---\n" +
   "id:\n" +
   "- \n" +
   "- 159764\n" +
   "customer_id:\n" +
   "- \n" +
   "- 34580\n" +
   "product_rate_plan_id:\n" +
   "- \n" +
   "- 2c92a0ff76f0d5250176f2f8c86f305a\n" +
   "start_date:\n" +
   "- \n" +
   "- 2021-04-07\n" +
   "end_date:\n" +
   "- \n" +
   "- 2021-05-07\n" +
   "quantity:\n" +
   "- \n" +
   "- 1\n" +
   "created_at:\n" +
   "- \n" +
   "- !ruby/object:ActiveSupport::TimeWithZone\n" +
   "  utc: &1 2021-04-07 00:19:21.297520292 Z\n" +
   "  zone: &2 !ruby/object:ActiveSupport::TimeZone\n" +
   "    name: Etc/UTC\n" +
   "  time: 2021-04-07 00:19:21.297520292 Z\n" +
   "updated_at:\n" +
   "- \n" +
   "- !ruby/object:ActiveSupport::TimeWithZone\n" +
   "  utc: *1\n" +
   "  zone: *2\n" +
   "  time: 2021-04-07 00:19:21.297520292 Z\n" +
   "gl_namespace_id:\n" +
   "- \n" +
   "- '8981798'\n" +
   "gl_namespace_name:\n" +
   "- \n" +
   "- to keep\n" +
   "trial:\n" +
   "- false\n" +
   "- true\n">]
```

### find_namespace

> **Note**: Finding an account based on group name is available in the UI. However, accounts with trials typically do not show up due to [customers #978](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/973).

Find a given GitLab.com namespace.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | The namespace to search for, it can be complete or partial|

#### Sample

```ruby
irb(main):421:0> find_namespace('test')
[!] Possible matches:
	[+] Name Test Example         | Full Path test
	[+] Name Other Example        | Full Path test1
	[+] Name My Test              | Full Path test2
=> " "
```

## Plan Methods

### change_trial

> *Note*: This can be deprecated when this is available in the UI which will require [showing expired trials (customers #1173)](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1173), [ability to extend (customers #1643)](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1643), and for [the Gitlab account to be tied to customers portal to show GitLab Groups after a trial is initiated (customers #973)](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/973).

This function will change the plan for a customer with an active or expired **trial** and output the namespace information after completing the change.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | The namespace to update |
| `:newplan` | *Yes* | The plan to assign to the namespace (free, bronze, silver, gold) |
| `:date` | **No** | Date to extend the plan. If not provided, the end date won't be modified |

#### Sample

```ruby
irb(main):001:0> change_trial('example','silver','2020-05-25')
{"id"=>0000000,
 "name"=>"example",
 "path"=>"example",
 "kind"=>"group",
 "full_path"=>"example",
 "parent_id"=>nil,
 "avatar_url"=>
  "https://gitlab.com/uploads/-/system/group/avatar/0000000/icon.png",
 "web_url"=>"https://gitlab.com/groups/example",
 "members_count_with_descendants"=>43,
 "shared_runners_minutes_limit"=>10000,
 "extra_shared_runners_minutes_limit"=>2000,
 "billable_members_count"=>44,
 "plan"=>"silver",
 "trial_ends_on"=>"2020-05-25",
 "trial"=>true}
```

### update_gitlab_plan

> *Note*: Changing the plan is available via GitLab.com admin, but not changing the date. Both should be possible via API. Feature request: [customers #2164](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/2164).

Change the plan of a namespace on GitLab.com **directly**, bypassing CustomersDot completely.
This includes potentially extending the expiry date.

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | The namespace to update using the path |
| `:plan` | *Yes* | The plan to assign to the namespace (free, bronze, silver, gold) |
| `:expire` | *No* | Optional parameter, if entered the existing subscription will be extended up to this date |

#### Sample

```ruby
irb(main):001:0> update_gitlab_plan("example","bronze","2020-10-22")
{"plan"=>
  {"code"=>"bronze",
   "name"=>"Bronze",
   "trial"=>false,
   "auto_renew"=>nil,
   "upgradable"=>false},
 "usage"=>
  {"seats_in_subscription"=>0,
   "seats_in_use"=>1,
   "max_seats_used"=>1,
   "seats_owed"=>0},
 "billing"=>
  {"subscription_start_date"=>"2020-08-21",
   "subscription_end_date"=>"2020-10-22",
   "trial_ends_on"=>nil}}
{"id"=>0000000,
 "name"=>"Example",
 "path"=>"example",
 "kind"=>"group",
 "full_path"=>"example",
 "parent_id"=>nil,
 "avatar_url"=>nil,
 "web_url"=>"https://gitlab.com/groups/example",
 "members_count_with_descendants"=>1,
 "shared_runners_minutes_limit"=>2000,
 "extra_shared_runners_minutes_limit"=>nil,
 "additional_purchased_storage_size"=>0,
 "additional_purchased_storage_ends_on"=>nil,
 "billable_members_count"=>1,
 "plan"=>"bronze",
 "trial_ends_on"=>nil,
 "trial"=>false}
```

### force_attr

If the order has the subscription number, but a numer of nil values (especially product plan), then use this function to have the system look up the values in Zuora and copy them over.

**Warning:** This only works if the plan is the product listed first. If there are multiple products, you may need to use the original function with `.last` or something else.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:subscription_name` | *Yes* | Subscription name in the order to update |

#### Sample

```ruby
irb(main):021:0> force_attr("A-S00000000")
=> {:success=>true}
```

### fix_expired_subscription

> *Note*: This should no longer be required as the main use cases were fixed in [customer #1446](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1446) and [customers #1174](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1174).

This function sets the subscription name and ID to `nil`. This was typically done because in the past, customers could not purchase a new subscription for a group if there was an expired one tied to it already. Similar to `unlink_sub`.

Note: Now that [customers#1446](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1446) is fixed and [customers#1174](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1174) should be fixed soon. This function shouldn't be required.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:subscription_name` | *Yes* | Subscription name in the order to update |

#### Sample

```ruby
irb(main):021:0> fix_expired_subscription("A-S00000000")
=> {:success=>true}
```

### force_reassociation

> *Note*: The ability to do this in the UI is [customers #2165](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/2165).

Force a .com group to be associated with a given subscription. This is typically done to associate a group without charging additional seats.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:subscription_name` | *Yes* | The subscription name to be re-associated|
| `:group_name` | *Yes* | The Gitlab namespace _`name`_ (not to be confused with its `path`)|

#### Sample

```ruby
irb(main):021:0> force_reassociation("A-S00000000", "example")
=> {:success=>true}
```

### unlink_sub

> *Note*: See [note in fix_expired_subscription](#fix_expired_subscription).

This function sets the group ID and name to `nil` to the order and downgrades the group to Free.
This is typically done if there are issues associating a different subscription but the existing subscription should show for user.
Similar to `fix_expired_subscription`.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:subscription_name` | *Yes* | Subscription name in the order to update |

#### Sample

```ruby
irb(main):021:0> unlink_sub("A-S00000000")
=> {:success=>true}
```

### unlink_customer

> *Note*: Ability to do this in UI is [customers #2166](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/2166).

Completely unlink a GitLab.com account from a CustomersDot account. **Note:** Use the customer ID (from customers portal, not GitLab.com).

**Warning**: Unlinking means the .com groups will no longer show. This is typically only used when an admin accidentally links their account to a customers.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:customer_id` | *Yes* |Customer ID to be unliked from it's GitLab account.|

#### Sample

```ruby
irb(main):021:0> unlink_customer(0000000)
=> {:success=>true}
```
### associate_full_user_count_with_group

> *Note*: Feature request is [customers #2167](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/2167).

When the subscription has multiple products listed, then the quantity (seats) is only pulled from the product plan line. Add-on seats are not automatically added. The function adds the seat count for all products listed for the subscription and copies it over to .com.

**Warning**: Do *not* use this if there is true-up. True-up should not be included in the current year's seat count, but the function will add it.

#### Parameters

This function requires an order object

| Name | Required | Details |
| ------ | ------ | ------ |
| `:order` | *Yes* | Order `object`]` to associate  the user count |

#### Sample

```ruby
irb(main):180:0> order = Order.find 0000
irb(main):021:0> associate_full_user_count_with_group(order)
=> {:success=>true}
```
### Remove CC validation from sales supported trials and consumption users

> *Note*: consumption users are user who bought minutes for CI/CD but are not enrolled in a payed subscription.

This function allows removal of the CC validation **only for sale supported trials and consumption users** to prevent having to enroll these users credit cards to use CI/CD.

**Warning**: Make sure you use this function *only* for the intended target. Otherwise you will lift of the restrictions to a wrong user.

#### Parameters

This function requires an order object

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | Namespace to update |

#### Sample

```ruby
irb(main):003:0> enable_ci_minutes("mmoraphotocr")


=> "{\"status\":\"success\",\"message\":\"mmoraphotocr members are now enabled to run CI minutes\"}"
irb(main):004:0>
```

## GitLab.com Group methods

These functions help fix various bug issues that have surfaced on GitLab.com. These functions do *not* change anything in the CustomersDot.

### Reset max seats

Occasionally, to ensure the correct number at renewal, the number of max seats need to be changed for a group.

#### Parameters

With only the namespace, it will display the seats information. Entering the max seats will change 

| Name | Required | Details |
|------|----------|---------|
| :namespace      | *Yes* | The namespace to update |
| :max_seats_used | No  | Max numbers of seats to use |

#### Sample

```ruby
irb(main):035:0> account_seats("gitlab-silver")
{"plan"=>
  {"code"=>"silver",
   "name"=>"Silver",
   "trial"=>false,
   "auto_renew"=>nil,
   "upgradable"=>false},
 "usage"=>
  {"seats_in_subscription"=>8,
   "seats_in_use"=>10,
   "max_seats_used"=>10,
   "seats_owed"=>2},
 "billing"=>
  {"subscription_start_date"=>"2020-01-01",
   "subscription_end_date"=>"2021-01-01",
   "trial_ends_on"=>nil}}
irb(main):089:0> account_seats("gitlab-silver",0)
{"plan"=>
  {"code"=>"silver",
   "name"=>"Silver",
   "trial"=>false,
   "auto_renew"=>nil,
   "upgradable"=>false},
 "usage"=>
  {"seats_in_subscription"=>8,
   "seats_in_use"=>10,
   "max_seats_used"=>10,
   "seats_owed"=>2},
 "billing"=>
  {"subscription_start_date"=>"2020-01-01",
   "subscription_end_date"=>"2021-01-01",
   "trial_ends_on"=>nil}}

[+] Resetting max_seats_used ...
{"plan"=>
  {"code"=>"silver",
   "name"=>"Silver",
   "trial"=>false,
   "auto_renew"=>nil,
   "upgradable"=>false},
 "usage"=>
  {"seats_in_subscription"=>8,
   "seats_in_use"=>10,
   "max_seats_used"=>0,
   "seats_owed"=>2},
 "billing"=>
  {"subscription_start_date"=>"2020-01-01",
   "subscription_end_date"=>"2021-01-01",
   "trial_ends_on"=>nil}}
***** seats_owed will be automatically recalculated at 12:00 UTC *****
```

### Billable Members

> *Note*: This should no longer be required as there is now an API endpoint and customers can see the list on their billing page.

Provides a list of billable members for a given namespace. This is using the [members API endpoint](https://docs.gitlab.com/ee/api/members.html#list-all-billable-members-of-a-group).

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:group_path` | *Yes* | Path of namespace |

#### Sample

```ruby
irb(main):021:0> send_eula("A-S00000000")
=> (sample output not copied here as it is very long)
```

### showGroups2FAStatus

Outputs the group id and name, which the user provided is a member of also the group setting related to 2FA Enforce as `true` or `false`.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:username` | *Yes* | The Gitlab username to query|

#### Sample

```ruby
irb(main):180:0>  showGroups2FAStatus 'some_user'
1111111 - One Group : 2FA Enforce [false]
2222222 - Other group : 2FA Enforce [false]
3333333 - Technology Group : 2FA Enforce [false]
4444444 - All Groups : 2FA Enforce [false]
5555555 - Design Group : 2FA Enforce [false]
6666666 - External Technology : 2FA Enforce [false]
7777777 - All-Reporter : 2FA Enforce [false]
```

### fix_dotcom_seats

> *Note*: Relevant bug issue [gitlab #260307](https://gitlab.com/gitlab-org/gitlab/-/issues/260307).

In any situation similar to [seat count is 0](https://gitlab.com/gitlab-org/gitlab/-/issues/220010), you can use this function to update the number of seats in GitLab.com to the quantity listed in the associated CustomersDot order.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | The Gitlab Namespace to fix|

#### Sample

```ruby
irb(main):180:0>  fix_dotcom_seats("some_namespace")
=> {:success=>true}
```

### update_group_mins

> *Note*: Possible through GitLab.com admin.

Update a group's shared runner minutes.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:id` | *Yes* | The namespace ID to update |
| `:mins` | *Yes* | CI Minutes to update |

#### Sample

```ruby
irb(main):180:0>  update_group_mins(1234,50000)
=> {:success=>true}
```

### update_extra_minutes

> *Note*: Additional minutes can also be changed via chatops. Feature request for editing via UI in [gitlab#325917](https://gitlab.com/gitlab-org/gitlab/-/issues/325917).

Update a group's shared runner minutes.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | The namespace to update |
| `:mins` | *Yes* | CI Minutes to update |

#### Sample

```ruby
irb(main):180:0>  update_group_mins("gitlab-gold",50000)
=> {:success=>true}
```

### update_extra_storage

> *Note*: Additional storage can also be changed via API. Feature request for editing via UI in [gitlab#325918](https://gitlab.com/gitlab-org/gitlab/-/issues/325918).

Update a group's additional storage.

#### Parameters

| Name | Required | Details |
| ------ | ------ | ------ |
| `:namespace` | *Yes* | The namespace to update |
| `:extra_storage` | *Yes* | Amount of additional storage in MiB |

#### Sample

```ruby
irb(main):180:0>  update_extra_storage("gitlab-gold",5000)
{"id"=>12345678,
 "name"=>"GitLab.com - Gold",
 "path"=>"gitlab-gold",
 "kind"=>"group",
 "full_path"=>"gitlab-gold",
 "parent_id"=>nil,
 "avatar_url"=>"/uploads/-/system/group/avatar/123456/gitlab-icon-rgb.png",
 "web_url"=>"https://gitlab.com/groups/gitlab-gold",
 "members_count_with_descendants"=>105,
 "shared_runners_minutes_limit"=>50000,
 "extra_shared_runners_minutes_limit"=>nil,
 "additional_purchased_storage_size"=>5000,
 "additional_purchased_storage_ends_on"=>"2022-03-02",
 "billable_members_count"=>105,
 "seats_in_use"=>105,
 "max_seats_used"=>103,
 "plan"=>"gold",
 "trial_ends_on"=>nil,
 "trial"=>false}
=> nil
```

## FAQ

1. How can I add a function?
  - Create a MR for `support_team.rb` in the [console-training-wheels](https://gitlab.com/gitlab-com/support/toolbox/console-training-wheels) project.
1. Can I use other code not available in `support_team.rb`?
  - Yes, when you're comfortable with ruby code and IRB, just make sure to merge the code in the library for everyone to use it.

### Manually changing attributes

When changing attributes on a specific order manually, please keep in mind that most attributes are tied to the purchase of a subscription.

For a purchase, these are the only attributes you should be editing:

- `gl_namespace_id`
- `gl_namespace_name`

For a trial (`trial` is set to `true`), because it's not tied to a subscription, additional attributes that can be updated:

- `start_date`
- `end_date`

#### Example

If you need to unlink a group from a subscription

```ruby
irb(main):180:0>  order = Order.find 0000
irb(main):180:0>  order.update_attributes!(gl_namespace_id: nil, gl_namespace_name: nil)
=> {:success=>true}
```
