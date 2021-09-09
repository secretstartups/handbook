---
layout: handbook-page-toc
title: Looking up customer account details
description: "How to look up customer account details within Zendesk, Salesforce, and customers.gitlab.com"
category: Handling tickets
subcategory: Customer Info
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Looking up customer account details

While working on tickets, you may need to look up customer information. Common
use cases include [associating tickets with the appropriate organization](/handbook/support/workflows/associating_needs_org_tickets_with_orgs.html),
checking a customer's subscription plan and looking up the customer's technical
account manager.

In general, you should look for customer details in this order:

1. [GitLab User Lookup app in Zendesk](#gitlab-user-lookup-app-in-zendesk)
1. Within [Salesforce](#within-salesforce)
1. Within [customers.gitlab.com](#within-customersgitlabcom)
1. Within [license.gitlab.com](#within-licensegitlabcom)

For an overview and runthrough of manual searching of SFDC, customers.gitlab.com, and license.gitlab.com, watch Amanda Rueda's
[How to use Salesforce from a support perspective](https://drive.google.com/drive/u/0/search?q=Amanda%27s%20Salesforce%20Class%20parent:1JDdcj2ESdCc_ReG0-n7RyAIxbIFkcQ1K)
video.

### GitLab User Lookup app in Zendesk

From the Zendesk [GitLab User Lookup application](../support-ops/documentation/zendesk_global_apps.html#gitlab-user-lookup) you have access to the requester details in SFDC and GitLab.com.


### Within Salesforce

If you are trying to find the ticket requester's organization, you'll have to look it
up directly in Salesforce.

To access Salesforce, use the Salesforce tech support account credentials in
the 1Password Support vault. Notes:

- If prompted for a one-time password, this is available in 1Password under the text field 'one-time password'.
- If prompted to provide a verification code sent by email, the email account
  credentials are available in 1Password.

#### Finding the customer's organization

1. Search for the customer's domain (e.g. `customer.com`) or full email address
   (e.g. `flastname@customer.com`) in the search bar at the top of the
   Salesforce UI.

   ![Search bar, in repose](/images/handbook/support/zendesk_needs_org-sfdc-search.png)

2. Look for results in the **Accounts** section. You should also be able to see
   if they have a support level if they have one.

   ![Account Name and Support Level in Salesforce search results](/handbook/support/workflows/assets/salesforce-search-results-accounts.png)

3. Click the **Account Name** to view the customer's organization page.

**Note:** in some cases you will need to search by e-mail and by domain. For example,
if the e-mail has previously been associated with a trial account it will still be visible
in SFDC but this might not be the same account that is used by the organization.

#### Finding the customer's GitLab subscription information

In the customer's organization page, look for the **GitLab Subscription Information**
section. The most relevant pieces of information to support in this section are:

- **Support Level**: Whether they are on starter or premium tier support
- **GitLab Plan (TEST)**: Which subscription plan they are on
- **Number of Licenses**: The number of license seats which the customer is paying for
- **CARR**: The total annual recurring revenue this customer brings

You can also confirm if the organization is a paying customer by look for the
`Type` field under the **Account Detail** section. It should say `Customer`.

#### Finding the customer's account owner

In the customer's organization page, look for the **Account Detail** section.
There should be an `Account Owner` field. This is the person responsible for
the customer account.

Alternatively, look for the list of links just above the **Account Detail**
section. Note: You may have to wait awhile as the list only loads after the
rest of the page is loaded.

![List of links above account details](/handbook/support/workflows/assets/salesforce-account-detail-links.png)

Hover over the "Account Team" link to see a list of people who have handled the
customer account.

![List of account team members](/handbook/support/workflows/assets/salesforce-account-team-list.png)

#### Finding the customer's renewal opportunity owner

In the customer's organization page, look for the **Opportunities** table. Look
for a row with a `Close Date` in the future and a stage that is not `Closed Won`
or `10-Duplicate`. This should generally be the first row.

![List of account opportunities](/handbook/support/workflows/assets/salesforce-account-team-list.png)

The person responsible for the customer's license renewal is listed under
`Owner Full Name`.

## Within customers.gitlab.com

1. Log in to [customers.gitlab.com](https://customers.gitlab.com/admin) admin area
   (sign in with Okta).

2. In the **Customers** section, search for a domain or full email address.

   ![Search box in customers.gitlab.com customers section](/handbook/support/workflows/assets/customers-gitlab-com-search.png)

3. In the search results, click on the `i` icon to view the customer's details.

   ![Search results in customers.gitlab.com customers section](/handbook/support/workflows/assets/customers-gitlab-com-search-results.png)

4. You can *impersonate* an account to find out if they have a current
   subscription through the customer's detail page or by clicking on the `home`
   icon in the search results.

**Note:** be extra careful when searching using the customer's domain: there can be generic domains
that you are not aware of, and there can be large customers with multiple organizations using the same
domain. Therefore, search by e-mail is more reliable.

## Within license.gitlab.com

All self-managed licenses including trial ones should be available in [LicenseDot](http://license.gitlab.com) portal.
You should be able to access it with your dev.gitlab.org account.

## When the license ID is provided

If a customer provides you with their license ID, you may need to check for it
both in [CustomersDot](https://customers.gitlab.com/admin) and [LicenseDot](http://license.gitlab.com).

You can do so by appending the ID to the following URLs:

- https://customers.gitlab.com/admin/license/

  *e.g.* `https://customers.gitlab.com/admin/license/<LICENSE_ID>`
- https://license.gitlab.com/licenses/

  *e.g.* `https://license.gitlab.com/licenses/<LICENSE_ID>`

### When full license file is provided

Sometimes a customer may include the full license file to prove their support
entitlement. There are two methods to decode a license. One method is to use a
script and the other is to use the Rails console on a self-managed instance.

#### License Decoder

The easiest method is to use the [License Decoder](https://gitlab.com/gitlab-com/support/toolbox/license-decoder) ruby script.
It outputs nice clean information including links to subscription information
and a direct link to the LicenseDot page.

Follow the [instructions](https://gitlab.com/gitlab-com/support/toolbox/license-decoder#gitlab-license-decoder) in the project
for installation and usage instructions.


#### From the Rails console

You can determine the license ID (and thus organization) by
extracting the ID.

First, trim the carriage returns and/or new lines:

```
tr -d '\r\n' < file_name.gitlab-license
```

Then, from the Rails console on your own self-managed instance:

```
license = ::License.new(data: "<paste entire license key without the carriage returns>")
"https://license.gitlab.com/licenses/".concat(license.license_id.to_s)
```

This will return nice URL that will take you the relevant license in LicenseDot.

```
=> "https://license.gitlab.com/licenses/<license_id>"
```
