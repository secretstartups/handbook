---
layout: handbook-page-toc
title: 'Generating GitLab Team Member Licenses'
category: 'General'
description: 'Details on generating GitLab licenses for GitLab team members'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview



## Process

1. The GitLab team member files an access request (AR) using the
   [GitLab Team Member License request template](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=GitLab_Team_Member_License_request).
1. GitLab team member's manager reviews and labels AR as approved.
1. GitLab team member's manager pings Support Ops.
1. Support Operations reviews the AR to ensure it meets the acceptable
   parameters.
   1. If it does not, review the reason it goes outside the acceptable
      parameters. If this is valid, proceed. If not, communicate via the issue
      that the reason is not sufficient.
1. Support Operations logs into the [license app](https://license.gitlab.com)
   and generates the license using the parameters in the AR.
1. Support Operations updates the AR and closes it out.

## Flowchart

```mermaid
graph TD;
  A-->B;
  B-->C;
  C-->D;
  D-->E;
  E--Yes-->F;
  F-->G;
  E--No-->I;
  G--Yes-->I;
  G--No-->H;
  I-->J;
  A(GitLab team member opens an AR issue)
  B(Manager reviews and approved AR)
  C(Manager pings Support Ops)
  D(Support Ops reviews the AR)
  E(Does the request go outside acceptable parameters?)
  F(Support Ops reviews the reason)
  G(Is the reason acceptable?)
  H(Support Ops communicates why it is not acceptable and denies the request)
  I(Support Ops creates the license)
  J(Support Ops updates and closes the AR)
```

### Acceptable parameters

* The expiration date is 1 year from license creation date
* The company name is `GitLab - Team Member License`
* The user count is 5

Anything deviating from the above will require a reason and approve from a
Support Operations Manager.

### Creating a license

1. Login to the [license app](https://license.gitlab.com).
1. Click the green `New license` button on the right hand side.
1. Fill out the fields using the below table:
   | Field | Value | Exceptions possible? |
   |---|---|:-:|
   | Name | GitLab team member's full name | No |
   | Company | `GitLab - Team Member License` | No |
   | Email | GitLab team member's company email | No |
   | Zuora subscription ID | leave this blank | No |
   | Zuora subscription name | leave this blank | No |
   | Users count | 5 | Yes, with support ops managers approval |
   | Previous users count | 0 or value from the AR | No |
   | Trueup count | 0 or value from the AR | No |
   | Plan code | value from the AR | No |
   | Trial | leave unchecked | No |
   | Start date | today's date | No |
   | End date | 1 year from today | Yes, with support ops managers approval |
   | Notes | the AR link | No |
1. Click the blue `Create License` button (this will email the license to the
   GitLab team member).
