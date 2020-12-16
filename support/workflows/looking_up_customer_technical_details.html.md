---
layout: handbook-page-toc
title: Looking up customer technical details
description: "How to look up customer technical details within Zendesk and the Architecture integration, or the Account Management Group"
category: Handling tickets
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

While troubleshooting customer issues in tickets, you may find yourself needing
additional context -- a `gitlab.rb` file, an architectural diagram, or anything
which will help you move forward with your investigation.

There are a few places where you can find this information.

### Within Zendesk

#### Browse previous tickets

You can browse other tickets submitted by people from the customer's organization
for relevant context! Often forgotten in the heat of the moment.

Just click on the organization name at the top of the ticket to view all other
tickets associated with that organization.

Alternatively, you can do a search for `organization:<$ORG_NAME> search query`,
which may get you the information you want. Try `"gitlab.rb"` or `gitlabsos`
for your search!

In both cases, you can click on `Requested` or `Updated` to sort by most recent
so that you'll be sure to have fresher information.

#### Architecture diagram and customer success project

The Architecture Diagrams app automatically checks for the presence of the
relevant diagram if the customer has a Customer Success project URL entered in
Salesforce.

To access the app:

1. Click on "Apps" in the top right of the Zendesk UI

   ![Zendesk Apps button](/handbook/support/workflows/assets/zendesk-apps-button.png)

2. Look for the Architecture Diagrams app and expand it if closed

   ![Zendesk Apps button](/handbook/support/workflows/assets/zendesk-apps-arch-diagram.png)

### Within GitLab.com

One other place to check for customer technical details is the 
[Account Management group](https://gitlab.com/gitlab-com/account-management) on
GitLab.com. Just search by customer name and in the parent group and you should
find the customer project. Most, but not all, premium and ultimate customers 
should have one present.