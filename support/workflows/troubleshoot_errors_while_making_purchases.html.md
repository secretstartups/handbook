---
layout: handbook-page-toc
title: Troubleshoot Errors While Making Purchases on Customers Portal
category: License and subscription
--

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

This guide for troubleshooting for error on [customers portal](https://customers.gitlab.com/customers/sign_in). 

### Getting error message from Sentry

To find the error specifically related to a customer on sentry, try the following:

1. Get customer ID from [customers portal](https://customers.gitlab.com/customers/sign_in):
   - Log into https://customers.gitlab.com/admin
   - Go to `Customers` search page by clicking on `Customers` on the left panel
   - Search for customer using one of the following: email, domain, or First/Last name (in case customer registered with a different email)
   - Click on one of the info, pencil, or person icon in the result
   - Take the customer ID from the URL https://customers.gitlab.com/admin/customer/customerID/pagepath
1. Finding the errror message for the customer in Sentry:
   - Go to https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/
   - Use `user:customerID` (replace `customerID` with the actual customerID from customer portal)
   - Open sentry issue → Click on `EVENTS`
   - Use customer email to search for the relevant event

### Example of previous tickets:

1. Customer cannot purchase new subscription because of an expired subscription:
   - [ZenDesk 162279](https://gitlab.zendesk.com/agent/tickets/162279)
   - [Internal request issue 2566](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/2566)
   - [Sentry Event log](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/1181887/events/31651984/)
1. Customer cannot purchase because the `Address`, `City`, and `Postal code` have invalid information:
   - [ZenDesk 167403](https://gitlab.zendesk.com/agent/tickets/167403)
   - [Sentry Event log](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/1211792/events/32521404/)
