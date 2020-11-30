---
layout: markdown_page
title: Growth Resources 
---

## On this page

{:.no_toc}

- TOC
{:toc}

## Overview

This page is home to various growth related information and resources, aiming to make it easier for our GitLab team members to contribute to Growth at GitLab. 


## Finding Customer Seat Counts 

Seat expansion is at the heart of our revenue growth. This has a strong impact on IACV and both Net and Gross Retention. There are various ways to determine the seat counts for a subscription: 


#### Gitlab.com 

The best way to view Seat Counts for a Gitlab.com customer is to access the Customers Portal admin section.

1. Go to [https://customers.gitlab.com/admins/sign_in](https://customers.gitlab.com/admins/sign_in)
1. Sign in with Okta 
    1. If you don't have access, open an Access Request 
1. Once logged in, go to the [Customers](https://customers.gitlab.com/admin/customer) option in the left-hand menu 
1. In the `Filter` text field, enter in the company name or email address associated with the subscription 
1. Once the results are loaded, select the "i" icon from the right-hand section 
1. On the `Details` page that loads, go to `GitLab Groups` 
1. Here is where you should see the Namespace and corresponding subscription with seat counts 
    1. Seats in Subscription is what was paid for 
    1. Seats Currently in Use is what is active 

Alternatively, you can see this information on [this Sisense report](https://app.periscopedata.com/app/gitlab/505939/Renewals-Dashboard?widget=8483799&udv=919439) 

It's important to note that ultimately the Customer Portal admin will have the most accurate and up-to-date view of this information. 

## Communicating Number of Seats Owed / Helping Customers Find Information - GitLab.com 
Sometimes customers can get confused as to what they owe because they have both a personal subscription and a group subscription. To make it easy for them to find the correct group billing information, you can send them a link with a URL in this format: 

`https://gitlab.com/groups/[group-path-name]/-/billings`

To find the `group-path-name`, go to the `GitLab Groups` page in the Customers Portal admin (see instructions above) and copy the value under the `Path` column. 


#### Self-managed 

###### License Usage App
The best way to understand seat utilization for self-managed customers is by using the [License Usage Salesforce App](https://about.gitlab.com/handbook/sales/field-operations/sales-systems/license-usage-app/) 

###### Version App
An alternative to License Usage Salesfore App is the [Version App](version.gitlab.com) you'll need developer access to this application to log in. Once logged in navigate to the Hosts tab. There you will be able to filter by license tier and see active user counts, historical max user counts among other important infomation as well like, last usage ping, version etc. 

## Growth Issue Templates
We use a perdefined set of [issue templates](https://gitlab.com/gitlab-org/growth/team-tasks/-/tree/master/.gitlab/issue_templates) to stay organized. These are kept safe and sound in the [Growth Project under team tasks](https://gitlab.com/gitlab-org/growth/team-tasks). 

#### Template list:
1. [Growth experiment](https://gitlab.com/gitlab-org/growth/team-tasks/-/issues/new?issuable_template=Growth%20experiment)
1. [experiment_tracking_template.md](https://gitlab.com/gitlab-org/growth/team-tasks/-/blob/master/.gitlab/issue_templates/experiment_tracking_template.md)
1. [growth_team_planning_template.md](https://gitlab.com/gitlab-org/growth/team-tasks/-/blob/master/.gitlab/issue_templates/growth_team_planning_template.md)
