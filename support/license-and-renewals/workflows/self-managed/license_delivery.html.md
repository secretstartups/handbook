---
layout: markdown_page
title: Delivery of license files
description: "License generation and delivery"
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

## Overview

The support team is responsible for generating licenses when the automated systems are unable to do so or an error is made. This is done via [CustomerDot](https://customers.gitlab.com/admin) and the `Licenses` section.

Generating a license may originate from an [internal request](/handbook/support/license-and-renewals/workflows/working_internal_requests.html) or may be a required action to help move a support ticket forward.


In both cases the license will be emailed to the customer directly after creation. Unless the circumstances require, we should not send the licenses to any GitLab employee. Exceptions may include air-gapped installs or other situations where the customer cannot receive the license via the email. 

Note that a license should always be generated with the end-user email address. A license should not be generated with reseller or GitLab team member details if the license is for a customer.

### Where does a license get sent to?

There is often confusion about the email address that the license will be delivered to and how to ensure the correct email address receives the license.

The license will send to the sold-to contact (in Zuora) with the initial sale. All subsequent licenses will go to the contact in the CustomersDot customer record associated with the subscription. So if the customer changed the email in CustomerDot, subsequent licenses will go to that email address.

In the event of two CustomerDot accounts associated with the same subscription, the system will try to find the customer record in CustomerDot based on two fields from the Zuora Account: sold to contact email and zuora account id. For the person who's CustomerDot email address matches the Sold to contact email address, the license will be sent to them. A [Zuora Sold to contact change](/handbook/support/license-and-renewals/workflows/billing_contact_change_payments.html#zuora-contact-change), together with updating the CustomersDot email address to match, will ensure a new contact gets future licenses delivered to them.

If neither CustomerDot email addresses match the Sold to contact email address, the account ID is used in the lookup. It’s important to note that when querying by Zuora Account ID we aren't specifying an order to the SQL query, hence we don’t have any guarantee about the order in which the record will be returned (i.e the license could be sent to either email address).

[Code reference](https://gitlab.com/gitlab-org/customers-gitlab-com/blob/b1ecd3a495843330e5ca5da0456775d817dd5139/app/services/find_or_create_customer_service.rb#L34-35) and [issue thread for more detail](https://gitlab.com/gitlab-org/customers-gitlab-com/-/issues/1044#note_543314532).

### Check whether the license has been delivered

Email delivery is logged for 30 days in MailGun. If the license was generated more than 30 days ago, we will not know whether the license was delivered or not. To see email license delivery log:

1. Follow the instruction in [checking mailgun](/handbook/support/workflows/confirmation_emails.html#checking-mailgun)
1. Use `customers.gitlab.com` as `Domain` in **Step 4** in the check mailgun instruction
1. Update the date range to cover the license generation date
