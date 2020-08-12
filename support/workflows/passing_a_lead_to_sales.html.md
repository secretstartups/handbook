---
layout: handbook-page-toc
title: Passing a Lead to Sales
category: License and subscription
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

##### Overview

Use this workflow to pass a Zendesk ticket to a sales person for a quote. [Sales territories](/handbook/sales/territories/) are segmented by region and size. 

Noting size is defined by:
1. Large (2000+ total employees)
1. MidMarket (100-1,999 total employees)
1. Small business (0-99 total employees).

---
##### Workflow


1. NEW BUSINESS - a user does not currently subscribe to a GitLab subscription and wants a quote from sales.
     - Identify if the company is in SFDC; look up the email domain in SFDC global search. Note the `Type` field in the SFDC account record (Customer vs. Prospect). If prospect account is found, and `Account Owner` contains a sales rep, pass the ticket to the Account Owner listed using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680).
    - If the account is in SFDC, but there is no Account Owner listed, use the `Sales Segment` (Large, MM, Small) and Billing Address to determine which salesperson the request should be passed using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680) based on [Sales territories](/handbook/sales/territories/).
    - If the account is not in SFDC, respond to ticket with the [New Sales Quote ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360026025019).
    - Common reasons to escalate to new business sales:
        - prospect needs to pay via a form of payment besides credit card and the deal size is more than $1,000 USD
        - prospect has a PO (purchase order)
        - prospect requires a quote prior to purchasing
1. RENEWALS - a current customer wants a renewal quote.
    - Identify if the company is in SFDC; look up the email domain in SFDC global search. Note the `Type` field in the SFDC account record (Customer vs. Prospect). Note the Account Owner and the Opportunity Owner of the upcoming renewal opportunity. Pass the request to the opportunity owner.
    - If the opportunity and account owner is listed as "SFDC Admin", check the `Sales Segment` field as this is likely Small Business. If so, use the [Sales territories](/handbook/sales/territories/) reference to identify who it should be referred to using the [Pass to Sales ZD macro](https://gitlab.zendesk.com/agent/admin/macros/360025924680).
    - Common reasons to escalate to renewal sales: 
        - complaint with request of credit (ex. GitLab.com performance has been terrible, they want credit)
        - any paper quote request for orders more than $1,000 annually (has a PO, can't pay via credit card, need an invoice prior to payment)
        - downgrading product tiers
        - transitioning from one product to another (GitLab.com <-> Self-Managed)
        - downgrading the number of users
        - renewal cancellation/refund other than SMB
1. Follow-up workflow for tickets which have been escalated to sales: daily, review the tickets which have been escalated to sales, requesting status and closing as possible. 
_(pro tip: create a personal ticket view where "Escalated to Sales" = checked, to pull these out into their own queue)_ 
    - Ping in Slack ([#sales](https://gitlab.slack.com/archives/C02NE5PQM) for new business, [#account-management](https://gitlab.slack.com/archives/C44SXGG8M) for renewals) if ticket is urgent or the copy to the sales person was not answered. 
    - Copy the manager on the 2nd ping in Slack. 
    - Find sales managers on the [GitLab org page](https://about.gitlab.com/company/team/org-chart/). 
