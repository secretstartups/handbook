---
layout: handbook-page-toc
title: "Usage Ping FAQ"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

----

## What is Usage Ping

- GitLab sends a weekly payload containing usage data to GitLab Inc. The usage ping uses high-level data to help our product, support, and sales teams. It does not send any project names, usernames, or any other specific data. The information from the usage ping is not anonymous, it is linked to the hostname of the instance. Sending usage ping is optional, and any instance can disable analytics.
- The usage data is primarily composed of row counts for different tables in the instance’s database. By comparing these counts month over month (or week over week), we can get a rough sense for how an instance is using the different features within the product.
- Usage ping is important to GitLab as we use it to calculate our Stage Monthly Active Users (SMAU) which helps us measure the success of our stages and features.
- Once usage ping is enabled, GitLab will gather data from the other instances and will be able to show usage statistics of your instance to your users.

## Why Should We Enable Usage Ping?

- The main purpose of Usage Ping is to build a better GitLab. Data about how GitLab is used is collected to better  understand feature/stage adoption and usage, which helps us understand how GitLab is adding value and helps our team better understand the reasons why people use GitLab and with this knowledge we are able to make better product decisions.

- As a benefit of having the usage ping active, GitLab lets you analyze the users’ activities over time of your GitLab installation.
- As a benefit of having the usage ping active, GitLab provides you with The DevOps Score, which gives you an overview of your entire instance’s adoption of Concurrent DevOps from planning to monitoring.
- You will get better, more proactive support. (assuming that our TAMs and support organization used the data to deliver more value)
- You will get insight and advice into how to get the most value out of their investment in GitLab. Wouldn't you want to know that a bunch of features/values are not being adopted in their organization?
- You get a report that illustrates how they compare against other similar organizations (anonymized), with specific advice and recommendations on how to improve their DevOps processes.

## How to use Usage Ping

The usage ping is opt-out. If you want to deactivate this feature, go to the Settings page of your administration panel and uncheck the Usage ping checkbox.

You can view the payload at "/admin/application_settings/metrics_and_profiling" in the Usage Statistics section and press the "View Payload" button.

- [Deactivate the Usage Ping](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#usage-ping)

## Commonly Asked Questions and Concerns

### 1. It's a corporate security policy that we don't send data to vendors

Based on what we understood from the concerns expressed, GitLab would like to understand more about the security controls and regulatory requirements that you have to meet. We've seen several risk-mitigating solutions where similar concerns regarding "outbound data transfers", and data leaving a secured boundary. Are there specific team members from security/compliance/privacy organizations that might provide additional insights? We understand your concerns and would be happy to have a call with our security team, product team along with your security team to talk through any issues we may help resolve. Before our call can you provide what compliance requirements that your company has to meet?

### 2. Is there a way we can share this data manually so that we can review it before it goes out?

Yes, you are able to extract this information manually and review prior to sending to GitLab.  Here are the steps:

- Login to your gitlab instance as administrator
- Navigate to the admin section of the Interface by clicking the "wrench" at the top navigation ribbon of the homepage
- At the left navigation panel, hover over the "Settings" --> and click on "Metrics and Profiling"
- When the Metrics and Profiling page populates, scroll down to the "Usage Statistics" segment of the page and click on the "Expand" button at the right-hand side.
- Click on "Preview payload" button
- A JSON formatted output of the data that is sent from GitLab instances to gitlab.com when allowed will be displayed in a pop-up.
- Copy and paste this information into a text file, encrypt and send to GitLab or upload over SSH/HTTPS to the customer collaboration for your organization that's securely hosted on gitlab.com

### 3. Can we use this data the same way you do? (aka how do we visualize this data over time, not just one ping payload at a time?

At this time, it will be a manual process to save each ping and analyze the metrics over time. We are starting to explore the possibilities of allowing the payload to be saved and analyzed more easily.

### 4. I'm unclear what the benefits are to me, the customer.  What's in it for me?

The main purpose of Usage Ping is to build a better GitLab. Data about how GitLab is used is collected to better  understand feature/stage adoption and usage, which helps us understand how GitLab is adding value and helps our team better understand the reasons why people use GitLab and with this knowledge we are able to make better product decisions. We would like to discuss what usage data would be valuable to you and your user community.

### 5. How much data is being shared?

The usage ping uses high-level data to help our product, support, and sales teams. It does not send any project names, usernames, or any other specific data.

### 6. How do we ensure that you don't change what's in the payload to include things we don't want to share? How do we re-verify this with each new release in a way that doesn't take a lot of time or effort?

Our documentation shows all usage statistics and content that is sent back to GitLab and we will make sure if there are any changes to this list you will be updated.  When we change / update product analytics you can view the exact JSON payload in the administration panel. To view the payload: Navigate to the Admin Area > Settings > Metrics and profiling. Expand the Usage statistics section. Click the Preview payload button.

### 7. Our security team will have to sign off first

There is no personal or private data in the payload. It simply aggregates counters to help us all understand how the product is being used and not used. Where value is being had. You can inspect the data yourselves and have your security team sign-off on it. They can continue to monitor (via ELK stack) that GitLab is not breaking security policy with new releases. Please review and let us know your specific security concerns. We invite you to ship this data to an internal ELK stack, and sanitize it before sending to your GitLab Technical Account Manager. If we can get your security team to review and approve, we can fully automate this process so you don't have to go to the trouble.We understand your concerns and would be happy to have a call with our security team, product team along with your security team to talk through any issues we may help resolve.

### 8. I don't know who sets this policy, but I know I'm not supposed to have anything phone home

We understand and would like to understand more about your security requirements.  We have some questions that would be helpful to get answers to in order to meet those requirements:

- What compliance requirements do you have to meet?
- Which controls specifically prohibit vendor devices from phoning home?
- Does your signing authority ever sign risk acceptance for your:
  - SSP (site security plan)
  - ASP (application security plan)
  - SSP (system security plan)

### 9. We have network isolation and there is no way for usage to get out of their network

We respect your organizations' network security policies and restrictions and understand there are situations where it is not feasible or technically possible to submit usage ping over the Internet. If Usage Ping is blocked by a firewall, load balancer, or proxy, you might consider [modifying](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#network-configuration) your network configuration to un-block the Usage ping payload from being sent to GitLab.

Also,If you see value in sharing Usage Ping data, but it's not technically possible for you to do so directly, would you be interested in a method by which the Usage ping payload could be manually generated and submitted in a way that is in compliance with your network security policy?

## Benefits

[DevOps Score](https://docs.gitlab.com/ee/user/admin_area/analytics/dev_ops_score.html)

[User Cohorts](https://docs.gitlab.com/ee/user/admin_area/analytics/user_cohorts.html)

## Important Documentation links

[Admin Settings for Usage Ping](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#usage-ping)

[Usage Statistics Collected](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#usage-statistics-collected)

[Network Configuration](https://docs.gitlab.com/ee/user/admin_area/settings/usage_statistics.html#network-configuration)

## GitLab.com accounts

There is no usage ping generated for individual name spaces in Gitlab.com. Some usage data is still being collected, and you can use Sisense (formerly Periscope) to view a report for individual customers. The dashboards available so far are WIP and may change location and content as they are refined. You can adjust the filters to properly identify the account you want to review.

[WIP---SaaS Activity](https://app.periscopedata.com/app/gitlab/684495/WIP---SaaS-Activity)
