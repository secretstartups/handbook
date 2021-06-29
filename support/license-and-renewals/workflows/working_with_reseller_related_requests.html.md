---
layout: handbook-page-toc
title: Working with reseller related requests
category: General
description: This is a guide on how to handle requests involving Reseller.
---

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

When a customer purchases through a reseller we follow a different workflow to WebDirect or Sales purchases. Note the following for a customer purchase through a reseller:

1. The customer will have _NO_ access to Customers Portal
1. Additions or modifications to the existing subscription made through a reseller must go through the reseller, unless specifically allowed by the reseller

### Identifying whether a customer purchased through reseller

Check if a subscription was purchased through reseller by locating the `Invoice Owner` in the customer account on Zuora.

1. [Searching for the customer account in Zuora](https://drive.google.com/file/d/1c7ChL7iCp9nYByBttX_RvWTrOxkVcDAn/view?t=2m09s)
1. Click on the relevant subscription in the `Subscription Number` column
1. The reseller should be listed in the `Invoice Owner` field in the subscription page

Note:  Sometimes you can also see Partners section in the end-user's SFDC account.

### Handling the ticket

 Tickets from customers who purchased through resellers are often seen in the following scenarios:

- Cannot sign into to Customers Portal or Resetting password for Customers Portal is not working
- License cannot upload because there's true-up

To move the ticket forward gather any license or subscription information relevant to the ticket, and then follow the [working with sales workflow](./working_with_sales.html) and pass to Sales team.
