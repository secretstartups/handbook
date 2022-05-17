---
layout: handbook-page-toc
title: "Trade Compliance"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

{::options parse_block_html="true" /}

## General Information

1. What is Trade Compliance (Export/Import Control)?
    - It's US law - find details here: [GitLab Code of Business Conduct and Ethics](https://ir.gitlab.com/static-files/7d8c7eb3-cb17-4d68-a607-1b7a1fa1c95d)
    - Related terms include "embargoed countries", "denied parties", "Export Administration Regulations"
1. How do we comply?
    - We block embargoed countries by IP address from accessing the CustomersDot at the URL `customers.gitlab.com` which is for purchases.
    - We use a compliance tool called Visual Compliance which flags for review accounts that are created in Salesforce whether by a person or by a system that appear to be in violation every 15 minutes.
    - We don't include the embargoed countries in our checkout portal picklist for the field `Country`.
    - We train Sales how to comply with the law.
    - Before the portal completes a transaction, the Portal API checks company or customer name, state, and country.
    - Upon creation of an opportunity, an account will be checked against the Visual Compliance database.
    - Contacts associated with an orders in Salesforce will be checked against the Visual Compliance database.
1. How often does Legal review the flagged accounts in SFDC?
    - Three times per day.

## More Details on How

### Salesforce

#### Effect on accounts

- [Detailed Documentation](/handbook/sales/field-operations/order-processing/)
- High level: Salesforce is integrated with a software application which scans SFDC every fifteen minutes looking for Accounts that match a deny list and mark it for review which a legal team member reviews.
    They will either clear the account or lock it.

#### Effect on opportunities

- [Detailed Documentation](/handbook/sales/field-operations/gtm-resources/)
- High level: Opportunities are screen on creation by Visual Compliance.
- Contacts are screened by Visual Compliance once a contact is loaded into an order as the `Bill-to` or `Sold-to` contact on the quote.

### Customer

#### Effect on customer facing web pages

- [gitlab.com](https://gitlab.com/) is already blocked to embargoed countries by Google.
- Embargoed countries will not appear in the list of countries in any embedded web forms on the website for buying or trialing the product with the exception of Ukraine which has an extra step to check a box that the person does not live in the Crimea Region and they must add their city. This would be checked against Visual Compliance if the person became a Bill-to or Sold-to contact in an order.
- Embargoed countries are not in the list of countries in the checkout process for the portal `customers.gitlab.com` or in the trial forms.
- Embargoed countries may be in the list of in-product forms.
- We do not block at the domain level for `about.gitlab.com` or for `gitlab.com` as we offer GitLab completely free via Omnibus.
- IP Addresses from the embargoed country list are [blocked from accessing the portal using Geo location data to nginx](https://gitlab.com/gitlab-com/gl-infra/infrastructure/issues/7439) and [will see message](https://gitlab.com/gitlab-org/customers-gitlab-com/issues/600)
    > In light of the recent discussions around blocking of US-sanctioned countries, we wanted to remind our customers that GitLab is unable to conduct business with individuals or companies located in US embargoed countries, including Crimea, Cuba, Iran, North Korea, Sudan and Syria.
    > This is required under US Export Regulations, as well as, our status as a federal contractor.
    > For more information, please visit our [GitLab Code of Business Conduct and Ethics](https://ir.gitlab.com/static-files/7d8c7eb3-cb17-4d68-a607-1b7a1fa1c95d)
    >
    > If you feel you have reached this page in error, please contact [GitLab Support](https://support.gitlab.com/hc/en-us)

### Marketo

- Marketo marks lead and contact field `ECCN=true` if matching the IP address of an embargoed country.
- Workflow exists that if a record is created with one of these countries they are auto-disqualified.

### Payment Processing

- Before processing a payment, [the portal calls Visual Compliance, checking company or customer name, state, and country, to make sure the transaction can clear](https://gitlab.com/gitlab-org/customers-gitlab-com/merge_requests/377) against the Visual Compliance database.
    If it doesn't, the person sees an error message and is directed to Support.

## Future State Considerations

- Currently, contacts in embargoed countries cannot access the CustomersDot.
    Block generation of license keys for any contact with an embargoed country.
    This could be a potential future state scenario if we link all contacts to accounts.
    If the contact were to contact sales or marketing and need to fix an issue with their account and they've been added as a billing contact, they should not be able to receive a license key.

## Broadening access to GitLab

- As discussed elsewhere on this page, GitLab is subject to US Export Regulations which prohibit the company from conducting business with individuals or companies located in embargoed countries, including Crimea, Cuba, Iran, North Korea, Sudan and Syria. GitLab is continually reevaluating the regulatory landscape to broaden access to GitLab in a complaint manner to further our mission that everyone can contribute.

## Links

- Internal only [Legal's Matrix](https://docs.google.com/spreadsheets/d/1MW7Djn4CsxKLk643eh2PI0yMIf4FjG15gMZftNMLe0Q/edit#gid=500140507)
- Internal only [Legal's Epic: Export Summary and Milestone Tracking](https://gitlab.com/groups/gitlab-com/-/epics/121)
- Fulfillment's Epic [Block embargoed countries from accessing the portal at all](https://gitlab.com/gitlab-org/customers-gitlab-com/issues/600)
- MarketingOps Issue [Block embargoed countries (was Research tightening ECCN leads)](https://gitlab.com/gitlab-com/marketing/marketing-operations/issues/794)