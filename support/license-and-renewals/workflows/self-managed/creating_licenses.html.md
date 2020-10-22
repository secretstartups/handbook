---
layout: markdown_page
title: Creating a license key
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

You will frequently need to generate a new license key due to either user error
or system error.

Self-managed licenses are managed in the [LicenseDot](https://license.gitlab.com).
In order to sign-in, you will need an account on `dev.gitlab.org`. If you don't
have one, open an [access request](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/issues/new?issuable_template=Individual_Bulk_Access_Request)
and refer that your role entitles you to access with
[this link](https://gitlab.com/gitlab-com/team-member-epics/access-requests/-/blob/master/.gitlab/issue_templates/role_baseline_access_request_tasks/department_customer_support/role_support_engineer.md).

To re-issue a license:

1. Log in to the [LicenseDot](https://license.gitlab.com).
1. Identify the license by searching by customer or company name.
1. Click the name on the license to view its details.
1. In the **Edit license** section, choose _Duplicate license_.
1. Modify the `Users count` and `Expires at` fields.
1. In the `Notes` field, describe why you're issuing this license and add a link
   to the Zendesk ticket or GitLab issue for the request if applicable.
1. Click **Create license**.

The license should be emailed out immediately, but you're also welcome to download it and pass it along to the customer directly.

When an existing license isn't available to duplicate, instead select,
`New license` and fill in all of the above mentioned fields, along with the
Zuora subscription ID and Zuora subscription name.
