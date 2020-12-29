---
layout: handbook-page-toc
title: Changing License Delivery Confirmation Email
category: General
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}


### Overview

When the customer is purchasing through reseller, there will be 2 different contacts for `Sold to` and the `Bill to` field on SFDC and Zuora.

The license will be sent to the `Sold to` contact while the delivery confirmation email is sent to the `Bill to` contact.

#### Moving the ticket forward

Since the change needs to be done on Zuora side and support team do not have the ability to edit information on Zuora, we can ask `Billing team` to update the information:

1. Let the customer know we're handling this internally
1. Use the ZenDesk `Account Receivable` marcros, copy yourself on the ticket, and submit the ticket as `Open`
1. Update customer and close the ticket once there's an update from the `Billing team`

Example case: https://gitlab.zendesk.com/agent/tickets/161769 (internal)
