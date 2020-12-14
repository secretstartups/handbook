---
layout: markdown_page
title: Troubleshooting EULAs
category: CustomersDot
description: THE EULA PROCESS HAS BEEN DECOMMISIONED AS OF 13 OCTOBER 2020
---

### On this page
{:.no_toc}

- TOC
{:toc}

## NOTE: THE EULA PROCESS HAS BEEN DECOMMISIONED AS OF 13 OCTOBER 2020, MORE INFO CAN BE FOUND IN THE [EPIC](https://gitlab.com/groups/gitlab-org/-/epics/4225).

New workflow:

1. Check the dates of the closed won opportunity in Salesforce. If the opportunity closed on or after 13 October 2020, the system should have provisioned the product without a EULA. 
1. If the opportunity closed before 13 October 2020, a EULA may be required to provision the product, please follow the old workflow below.

----

### How does a customer accept a EULA?

There are 2 ways to accept a EULA:
1. Select [the link in the email that was sent to them](https://gitlab.com/gitlab-org/customers-gitlab-com/blob/3248ac5978678b6920d7cb755be288e312fda8aa/app/views/customer_mailer/accept_terms_request.html.haml#L1).
1. Log into the [CustomersDot](https://customers.gitlab.com/customers/sign_in) and select the `Review terms and conditions` button on the relevant subscription card. *Note that reseller customers don't have access to the CustomersDot to accept via this option.*

### Request: The EULA was sent to the wrong person and the recipient needs to change

*In most cases, the EULA is sent to the `Sold to Contact` listed on a quote object. If the EULA is sent to someone who is not listed there, it is likely that there is a previous contact listed in Zuora and the information has not been updated yet.*

1. To change the EULA recipient, browse to https://customers.gitlab.com/admin/eula_request and search for the domain.
1. Once you have found the relevant EULA, select the pencil icon on the right. Edit the email address to the appropriate email and select the `Save button`.
1. Once saved, select the double arrow icon to **resend EULA**. Note that if you change the email, but do not resend then the new recipient will not receive the EULA.
   - If the resend fails with a 500 error, please see the [Troubleshoot: When we try to resend the EULA, it fails](#troubleshoot-when-we-try-to-resend-the-eula-it-fails) section of this page.

**Please note: The EULA should never be sent to a GitLab team member or a reseller. This is an end-user agreement that should always be accepted by an end-user.**

### Troubleshoot: The EULA was not sent

You have searched for the domain in the CustomersDot: https://customers.gitlab.com/admin/eula_request and seen that no EULA was sent.

1. Use [this spreadsheet](https://docs.google.com/spreadsheets/d/1jLGVpI_sqWxlt5SlD7oqRHxZ_rxstMmFzZMkpouTzlg/edit#gid=839505067) to make sure this purchase should have had a EULA. If the spreadsheet indicates that no EULA should have been sent, then we know that a EULA is not required and the customer should have access to the product they purchased. Please note this with the requestor and ask how they would like to proceed.
1. If yes, check whether the opportunity was marked for a EULA to be sent in Salesforce:
    1. In salesforce, go to the opportunity > click on the quote object (when you hover over the `quotes` heading, select the one that has the `Primary` box checked)
    1. Once on the quote, search for `Click through EULA required?` and make sure it is set to `Yes`. If this is set to `No`, it is the reason why the EULA was never sent. Please note this with the requestor and follow steps to send the EULA manually if confirmed by the requestor.

### Troubleshoot: When we try to resend the EULA, it fails

If you have checked that a EULA should be sent for this subscription, open an issue or leave a comment with instructions for an escalation so that the EULA is sent manually.

If an issue already exists for this EULA problem, create a comment with the below pasted and completed:

> **SE Assistance Needed? YES**
>
> - **CustomersDot link**:
> - **Customer ID**: `XXXX`
> - **Subscription**:
> - **Access Token (if generated)**:
>
> Please manually generate the EULA from the console.
>
> Snippet from Ruben:
>
> ```
> z_subscription = Z::Subscription.find_by_name(<subscription_name>)
> # In case we have the Subscription ID we can use:
> # z_subscription = Z::Subscription.find(<subscription_id>)
> customer = Customer.find_by!(zuora_account_id: z_subscription.account_id)
> subscription = Subscription.new(customer, z_subscription)
> token = SecureRandom.hex
> eula_request = customer.eula_requests.create!(token: token, subscription: subscription)
> CustomerMailer.accept_terms_request(eula_request).deliver
> ```

If an issue does not yet exist, please create an issue on the [internal requests](https://gitlab.com/gitlab-com/support/internal-requests/-/issues) tracker and select the `EULA` template. Once selected, fill out the SE assistance needed? section and label with `Console Escalation::Customers`. Mark due date for tomorrow and leave unassigned. An SE will confirm once the EULA has been manually sent and then you can confirm that the task is complete with the requestor.
