---
layout: handbook-page-toc
title: "License Usage Salesforce App"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## How to Use LicenseDot

1. Navigate to any customer account in Salesforce.
1. Click on the License Usage button at the top of the layout.
![License Usage Button On Account Layout](/handbook/sales/field-operations/sales-systems/license-usage-app/buttonss.png)
1. Review the current usage of Activated vs Entitled users on all Subscriptions related to the Account.
![License Usage Button On Account Layout](/handbook/sales/field-operations/sales-systems/license-usage-app/appss.png)
1. To get a summary of license usage across all your accounts click "See License Usage on all my Accounts"
1. To give feedback or ideas for the License Usage app click "Give Feedback / Report Bug" and comment on the issue.

## Frequently Asked Questions (FAQ)

**Question: Activated Users is great, but when will I be able to see SMAU and other activity metrics?**<br />
Answer: The Product and Data teams are working to get these metrics at the subscription level, and when they do we will add to this dash! [Follow the progress here](https://docs.google.com/document/d/17dw3qpX5PbvF_WwQXNEQuCPqGUcng1zy85R-2fIL1k8/edit#heading=h.t3mpohrk83kp).


**Question: I viewed one of my Accounts, and some of the Subscription Data says "Not Available", what went wrong?**<br />
Answer: Activated User data is not yet available for some subscriptions based on Namespace collisons or requires enhancement to Seatlink. Some subscriptions will never recieve their activated user count because of air gapped hosting. In either scenario please [post on the Feedback issue](https://gitlab.com/gitlab-com/sales-team/field-operations/systems/-/issues/912) if you think the customer's subscription data should be available.

**Question: I expected there to be more (or less) Subscriptions related to the Account then was is appearing, why is this?**<br />
Answer: Please confirm in the #Sales-Support slack room if you think viewing the app uncovered and issue with the customer's Subscriptions.

## Data Definitions

| Data Point              | Description                                  | Source              |
|-------------------------|----------------------------------------------|---------------------|
| Plan Name               | Subscription GitLab Tier                     | Zuora 360           |
| Hosting Type            | GitLab.com vs Self Managed                   | Data Team Dashboard |
| Licensed Users          | Quantity of licenses sold                    | Zuora 360           |
| Activated Users         | Quantity of users activated                  | Data Team Dashboard |
| Seat Price              | MAX of Seat Price                            | Zuora 360           |
| Overage Value           | If Over: (Activated - Licensed) x Seat Price | Calculated          |
| Subscription Start Date | Subscription Term Start                      | Zuora 360           |
| Subscription End Date   | Subscription Term End                        | Zuora 360           |

## How Does This Work?

First, product usage data is uploaded into Salesforce as a .csv file attachment to a License Usage Run record. When triggered, the Run calls classes which read the .csv and inserts License Usage records. Each of these License Usage records know which Zuora Subscription it relates to and through this, which Customer Subscription as well. Then, we run a process which collects information from Licese Usage and Zuora Subscription Product Charge records and stamps the related Customer Subscription. On each Account record page, a button has been added which brings you to another page. This page displays all Active Customer Subscriptions related to that Account that entitle the customer to licenses.

## Logic Locations

* [LicenseUsageRun.trigger](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/triggers/LicenseUsageRun.trigger)
    * Listens for the "Execute Run" checkbox to change values to begin the process of inserting new License Usage records.
* [LicenseUsageBatcher.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LicenseUsageBatcher.cls)
    * Called from `LicenseUsageRun.trigger`. Used to break up the insertion of License Usage records into batches.
* [LicenseUsageCollector.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LicenseUsageCollector.cls)
    * Converts the rows of the .csv file into License Usage records and returns them so they can be inserted.
* [CustomerSubscriptionInfoGatherer.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/CustomerSubscriptionInfoGatherer.cls)
    * Collects information from the most up-to-date License Usage records as well as Subscription Product Charges in batches. It stamps the info onto each related Customer Subscription. This class also does some basic data processing such as determining if there are multiple products and calculating total entitled seat count. This is done to make displaying this data simpler for `LicenseUsage.cls`.
* [LicenseUsage.cls](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/classes/LicenseUsage.cls)
    * The controller for `LicenseUsage.page`. Collects only the Customer Subscriptions related to the Account. Ensures the data will properly display the Seat Usage graph.
* [LicenseUsage.page](https://gitlab.com/gitlab-com/sales-team/field-operations/salesforce-src/-/blob/master/force-app/main/default/pages/LicenseUsage.page)
    * The page you are brought to by the button on the Account page. Displays all Customer Subscriptions with collected License Usage data.
