---
layout: handbook-page-toc
title: Zendesk Views
---

# Zendesk Views

In Zendesk, Views are a way to organize your tickets by grouping them into lists
based on certain criteria.

## View Types

Currently, Zendesk has 3 view types:

* Default: [Pre-defined views](https://support.zendesk.com/hc/en-us/articles/212623648#topic_gnx_2tm_vt)
  created by Zendesk
* Shared: Views created by the Zendesk Administrator(s) (ie. Support Ops)
* Personal: Views created by you and usable only by you

## Limitations

Currently, Zendesk views have some limitations:

* Only 12 visable views (Default and Shared) will be displayed.
* Views cannot use criteria that is not "defined", meaning it must be selectable
  data (text fields will not work, as an example).
* You can only display up to 8 personal views.

## Note about Zendesk Views

Views are managed via Zendesk currently and are not version controlled.

## GitLab Views for the Main Instance

### [My Assigned Tickets](https://gitlab.zendesk.com/agent/admin/views/360062369834)

This view is a Zendesk Default view, meaning it is one pre-defined by Zendesk.
The intention of this view is to show all the tickets that are new, open,
pending, and on-hold assigned to the current user.

#### My Assigned Tickets Breakdown

* ID: 360062369834
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Solved`
    * `Assignee` is `current_user`
* Columns
  * Next SLA breach
  * Priority
  * Subject
  * Requester
  * Organization
  * Request date
  * Latest update
* Grouped by `Status`, ascending
* Ordered by `Next SLA breach`, descending

### [Needs Org & Triage](https://gitlab.zendesk.com/agent/admin/views/360038101960)

This is a shared view (made by us). The purpose of this view is to show tickets
that are not associated with an organization or need to be triaged (no plan).

#### Needs Org & Triage Breakdown

* ID: 360038101960
* Conditions:
  * Meets ALL of:
    * `Tags` contain do not contain `prospect`, `trial`, or `free_customer`
    * `Status` is less than `Pending`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Organization` is blank
* Columns:
  * Next SLA breach
  * Priority
  * Subject
  * Requester
  * Request date
  * Latest update
  * Assignee
* Grouped by `Ticket form`, descending
* Ordered by `Latest update by requester`, ascending

### .com Needs Assignee: REGION+All Regions

This is a shared view (made by us) using the Group View capabilities (views
that only display for certain groups). The purpose of this view is to show
SaaS tickets for paying users, but only to a specific group (based on region),
that are unassigned.

More specifically, the views for this are:

* [.com Needs Assignee: EMEA+All Regions](https://gitlab.zendesk.com/agent/admin/views/360038102160)
* [.com Needs Assignee: AMER+All Regions](https://gitlab.zendesk.com/agent/admin/views/360038122359)
* [.com Needs Assignee: APAC+All Regions](https://gitlab.zendesk.com/agent/admin/views/360038122399)

### .com Needs Assignee: REGION+All Regions Breakdown

* IDs:
  * EMEA: 360038102160
  * AMER: 360038122359
  * APAC: 360038122399
* Only accessable by:
  * EMEA: Those in the `Support EMEA` group
  * AMER: Those in the `Support AMER` group
  * APAC: Those in the `Support APAC` group
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Tags` do not contain `bronze`, `silver`, or `gold`
    * `Assignee` is blank
  * Meets ANY of:
    * `Preferred Region for Support` is:
      * EMEA: `Europe, Middle East, Africa`
      * AMER: `Americas, USA`
      * APAC: `Asia Pacific`
    * `Preferred Region for Support` is `All Regions`
    * `Preferred Region for Support` is `Not present`
* Columns:
  * Next SLA breach
  * Priority
  * Subject
  * Organization
  * Preferred Region for Support
  * Request date
  * Latest update
* Ordered by `Next SLA breach`, ascending

### [.com with SLA](https://gitlab.zendesk.com/agent/admin/views/360038122959)

This is a shared view (made by us). The purpose of this view is to show SaaS
tickets for paying users.

#### .com with SLA Breakdown

* ID: 360038122959
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Tags` contain `bronze`, `silver`, or `gold`
    * `Organization` is not blank
* Columns:
  * Next SLA breach
  * Priority
  * Subject
  * Organization
  * Request date
  * Latest update
  * Assignee
* Ordered by `Next SLA breach`, ascending

### SM Needs Assignee: REGION+All Regions

This is a shared view (made by us) using the Group View capabilities (views
that only display for certain groups). The purpose of this view is to show
Self-Managed tickets for paying users, but only to a specific group (based on
region), that are unassigned.

More specifically, the views for this are:

* [SM Needs Assignee: EMEA+All Regions](https://gitlab.zendesk.com/agent/admin/views/360038102260)
* [SM Needs Assignee: AMER+All Regions](https://gitlab.zendesk.com/agent/admin/views/360038123559)
* [SM Needs Assignee: APAC+All Regions](https://gitlab.zendesk.com/agent/admin/views/360038102880)

### SM Needs Assignee: REGION+All Regions Breakdown

* IDs:
  * EMEA: 360038102260
  * AMER: 360038123559
  * APAC: 360038102880
* Only accessable by:
  * EMEA: Those in the `Support EMEA` group
  * AMER: Those in the `Support AMER` group
  * APAC: Those in the `Support APAC` group
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Tags` do not contain `starter`, `basic`, `premium`, or `ultimate`
    * `Assignee` is blank
  * Meets ANY of:
    * `Preferred Region for Support` is:
      * EMEA: `Europe, Middle East, Africa`
      * AMER: `Americas, USA`
      * APAC: `Asia Pacific`
    * `Preferred Region for Support` is `All Regions`
    * `Preferred Region for Support` is `Not present`
* Columns:
  * Next SLA breach
  * Priority
  * Subject
  * Organization
  * Preferred Region for Support
  * Request date
  * Latest update
* Ordered by `Next SLA breach`, ascending

### [SM with SLA](https://gitlab.zendesk.com/agent/admin/views/360038124139)

This is a shared view (made by us). The purpose of this view is to show
Self-Managed tickets for paying users.

#### SM with SLA Breakdown

* ID: 360038124139
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Tags` do not contain `starter`, `basic`, `premium`, or `ultimate`
    * `Organization` is not blank
* Columns:
  * Next SLA breach
  * Priority
  * Subject
  * Organization
  * Request date
  * Latest update
  * Assignee
* Ordered by `Next SLA breach`, ascending

### [Prospects](https://gitlab.zendesk.com/agent/admin/views/360038124199)

This is a shared view (made by us). The purpose of this view is to show
Prospects (ie Sales Assisted Trials).

#### Prospects Breakdown

* ID: 360038124199
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Tags` contain `prospect`
* Columns:
  * Next SLA breach
  * Priority
  * Subject
  * Requester
  * Latest update
  * Assignee
* Grouped by `Ticket form`, descending
* Ordered by `Next SLA breach`, ascending

### [Free/Self-Provisioned Trial Support](https://gitlab.zendesk.com/agent/admin/views/360038103100)

This is a shared view (made by us). The purpose of this view is to show free
users and self-provisioned trial users.

#### Free/Self-Provisioned Trial Support Breakdown

* ID: 360038103100
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Tags` contain `free_customer`, `trial`, `expired`, `community`, `hold`,
      or `custom`
* Columns:
  * Priority
  * Subject
  * Requester
  * Latest update
  * Assignee
* Grouped by `Ticket form`, descending
* Ordered by `Next SLA breach`, ascending

### [License & Renewals](https://gitlab.zendesk.com/agent/admin/views/360038103700)

This is a shared view (made by us). The purpose of this view is to show tickets
relating to licensing and renewals.

#### License & Renewals Breakdown

* ID: 360038103700
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
  * Meets ANY of:
    * `Form` is `License Renewals and Upgrades`
* Columns:
  * Next SLA breach
  * Subject
  * Requester
  * Organization
  * Request date
  * Latest update
  * Assignee
* Ordered by `Next SLA breach`, ascending

### [First Response Hawk](https://gitlab.zendesk.com/agent/admin/views/360038124359)

This is a shared view (made by us). The purpose of this view is to show new
tickets for paying users.

#### First Response Hawk Breakdown

* ID: 360038124359
* Conditions:
  * Meets ALL of:
    * `Status` is  `New`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security issue`
    * `Form` is not `Support for GitLab Professional Services`
    * `Tags` contain `bronze`, `silver`, `gold`, `starter`, `basic`, `premium`,
      or `ultimate`
* Columns:
  * Next SLA breach
  * Priority
  * Subject
  * Organization
  * Latest update
  * Assignee
* Groups by `Ticket form`, descending
* Ordered by `Next SLA breach`, ascending

### [Accounts Receivables & Refunds](https://gitlab.zendesk.com/agent/admin/views/360038103780)

This is a shared view (made by us). The purpose of this view is to show tickets
relating to Billing matters.

#### Accounts Receivables & Refunds Breakdown

* ID: 360038103780
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
  * Meets ANY of:
    * `Form` is `Accounts Receivable / Refunds`
* Columns:
  * Next SLA breach
  * Subject
  * Requester
  * Organization
  * Request date
  * Latest update
  * Assignee
* Ordered by `Next SLA breach`, ascending

### [Security](https://gitlab.zendesk.com/agent/admin/views/360038124479)

This is a shared view (made by us). The purpose of this view is to show tickets
relating to Security matters.

#### Security Breakdown

* ID: 360038124479
* Conditions:
  * Meets ALL of:
    * `Status` is less than `Pending`
  * Meets ANY of:
    * `Form` is `Security Issue`
* Columns:
  * Next SLA breach
  * Subject
  * Requester
  * Organization
  * Request date
  * Latest update
  * Assignee
* Ordered by `Request date`, ascending