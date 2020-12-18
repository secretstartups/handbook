---
layout: handbook-page-toc
title: Troubleshoot Errors While Making Purchases on CustomersDot
category: CustomersDot
description: Troubleshooting guide on errors on CustomersDot
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

This guide for troubleshooting for error on [CustomersDot](https://customers.gitlab.com/customers/sign_in).

### Error about an address or credit card

When purchasing a subscription via the CustomersDot if a user receives an error
about an address or credit card, check the address listed in the `My Account`
section of the CustomersDot. This is typically due to a bad address
(city/state/zip code). If the address is correct and the error persists, check
Sentry for a relevant error and file an issue in the
[CustomersDot tracker](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/) as necessary.

### Getting error message from Sentry

To find the error specifically related to a customer on sentry, try the following:

1. Get customer ID from [CustomersDot](https://customers.gitlab.com/customers/sign_in):
   - Log into https://customers.gitlab.com/admin
   - Go to `Customers` search page by clicking on `Customers` on the left panel
   - Search for customer using one of the following: email, domain, or First/Last name (in case customer registered with a different email)
   - Click on one of the info, pencil, or person icon in the result
   - Take the customer ID from the URL https://customers.gitlab.com/admin/customer/customerID/pagepath
1. Finding the errror message for the customer in Sentry:
   - Go to https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/
   - Use `user:customerID` (replace `customerID` with the actual customerID from CustomersDot)
   - Open sentry issue → Click on `EVENTS`
   - Use customer email to search for the relevant event

### Troubleshooting Email Delivery From CustomerDot

Sometimes a customer reports that they did not receive an email from the portal, such as a password reset request or new account confirmation.  GitLab uses Mailgun as a service to send outgoing mail. We can login to Mailgun to view the message logs, and when appropriate, remove suppressions.

The general workflow that Support uses for this process is documented in the [Support handbook page on confirmation emails](/handbook/support/workflows/confirmation_emails.html#check-mailgun), and that page has a full description on navigating the Mailgun dashboard and searching through the logs.

The process here is much the same, but since we are investigating mail from CustomerDot, in Step 4 of the general workflow ensure that `customers.gitlab.com` is selected as the domain to search under.

### Example of previous tickets:

1. Customer cannot purchase new subscription because of an expired subscription:
   - [ZenDesk 162279](https://gitlab.zendesk.com/agent/tickets/162279)
   - [Internal request issue 2566](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/2566)
   - [Sentry Event log](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/1181887/events/31651984/)
1. Customer cannot purchase because the `Address`, `City`, and `Postal code` have invalid information:
   - [ZenDesk 167403](https://gitlab.zendesk.com/agent/tickets/167403)
   - [Sentry Event log](https://sentry.gitlab.net/gitlab/customersgitlabcom/issues/1211792/events/32521404/)
