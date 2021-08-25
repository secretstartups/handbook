---
layout: handbook-page-toc
title: Confirmation Emails
category: GitLab.com
subcategory: Accounts
description: "Workflow for cases when a customer reports they are not receiving their confirmation email"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

This workflow covers cases when a user says they are not receiving their confirmation email.

The activation token in a confirmation email will only be valid for 24 hours. Thereafter, the user will need a new confirmation email.

### Triage the ticket with the correct problem type

Make sure that the ticket is correctly triaged with the `Did not receive confirmation email` problem type, so that
the [SaaS Account Ticket Helper](https://about.gitlab.com/handbook/support/support-ops/documentation/zendesk_global_apps.html#saas-account-ticket-helper) can activate.

If the user has already correctly chosen the problem type, the automation will activate when an agent opens the ticket for the first time.

### Check GitLab User Lookup App

1. Click the `Apps` button located in the top right of the Zendesk interface.
1. Scroll down to the `GitLab User Lookup` app.
1. Check if the app found any account associated with the username/email provided by the user.
    - No account? Use the Zendesk macro [`Support::SaaS::Account does not exist`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+91699288) or if you believe it's applicable use [`General::Verify self-managed or .com`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=17008590&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360024300939).
1. If the app returns a result for the username lookup, but no result for the email lookup, go to their provided Admin Link and check what email
   address the user has on their account. Continue on to Step 2 under [Check GitLab Admin](#check-gitlab-admin)

### Check GitLab Admin

1. In the GitLab.com Admin Area, [search for the user](https://gitlab.com/admin/users) by username or email address to confirm the account has been created. Alternatively, search in your browser [using the API](https://gitlab.com/api/v4/users?search=email@email.test) (or through chatop).
1. Check the email address against what the user has reported.
    - Did they make a typo when registering? See [Fix Email Address](#fix-email-address).
    - Otherwise see [Removing a Suppression in Zendesk](#removing-a-suppression-in-zendesk).

#### Fix Email Address

If the user made a typo:

1. Make sure the account in question has no activity by checking the following fields are blank/nil:
    - Confirmed At
    - Last Login
    - Last Active At
1. Edit the email address so that it is the correct one using one of the following methods:
    - Admin: when viewing the user in admin, click on `Edit`, then `Save` when done.
    - Chatops
        - View User: `/chatops run user find <user or email>`
        - Edit Email: `/chatops run user update_email <username or current email> <new_eamil@example.com>`
1. Ensure that it now shows the new email.
1. Add an [admin note](https://about.gitlab.com/handbook/support/workflows/admin_note.html) to the account.

### Removing a Suppression in Zendesk

1. Click the `Apps` button located in the top right of the Zendesk interface.
1. Scroll down to the `SaaS Account Ticket Helper` app located below the tag locker app.
1. Click the button for `Email Suppressions`.
1. Search for the email address using the search field.
1. If a suppression is found you may optionally click the `copy` button to save the log from Mailgun to your clipboard that you can then paste into an internal comment on the ticket.
1. Click the `Remove the suppression?` button.

Once the suppression is removed you can then use the quick links menu that is displayed to either resend a new confirmation email, send a password reset email, or perform another search.

### Check Mailgun

On the first attempt, if our email system could not get through (usually server says it's non-existent or similar), then our mail server will put a suppression on sending further emails.

This is useful to check if emails have been delivered successfully from our end, which could mean that the error is with the users' email provider.

1. Log in to [Mailgun](https://app.mailgun.com/app/dashboard) using the `supporteam` credentials in the Support Team vault in 1Password.
1. Click on `Sending` along the left-hand side navigation bar.
1. Click on `Logs`.
1. Ensure that `mg.gitlab.com` is set as the domain above the activity graph.
1. Enter the email address to be checked into the search bar, search, and then scan the results to see if mail is being delivered to that address.
    - If email is delayed, respond to the user and ask them to wait.
    - If email is bouncing due to a suppression (evidenced by the message `Not delivering to previously bounced address` in the log) proceed to [Removing a Suppression in Zendesk](#removing-a-suppression-in-zendesk) or [Removing a Suppression in Mailgun](#removing-a-suppression-in-mailgun).
    - If email is marked as `Delivered` and the response code under `delivery-status` is `"code": 250`, this indicates that the user's mail server acknowledged the receipt, and the email delivery was successful. 

#### Removing a Suppression in Mailgun

If the `SaaS Account Ticket Helper` doesn't work for any reason, we can remove suppressions in Mailgun directly:

1. Click on `Suppressions` along the left-hand side navigation bar.
1. Wait a moment for results to load before searching.
1. Ensure that `mg.gitlab.com` is set as the domain at the top of the page.
1. Enter the email address to be checked into the `Search for recipients` search bar and perform a search.
1. Click the `Delete` button next to an entry and then confirm your selection to remove the suppression.


#### Identifying Multiple Suppressions on a Single Domain

Mailgun does not allow us to check for multiple suppressions on the same domain within it's `Suppressions` section, but we can use another method to find them without asking the customer for a list of email addresses that they suspect are being suppressed. To do so:

1. Log in to [Mailgun](https://app.mailgun.com/app/dashboard) using the `supporteam` credentials in the Support Team vault in 1Password.
1. Click on `Sending` along the left-hand side navigation bar.
1. Click on `Logs`.
1. Ensure that `mg.gitlab.com` is set as the domain above the activity graph.
1. In the search bar enter the customer's domain using `*` as a wildcard for the username.
1. Add a filter for `Event is Permanent Fail`.
1. Scan the results, any email address listed with a `Delivery Status Message` of  `Not delivering to previously bounced address` has been suppressed at one point in time.
1. Navigate to the `Suppressions` tab and enter in an email address from your previous search to confirm whether or not it's currently suppressed.

### Resend Confirmation Email

### Primary email

Once the problem has been fixed, if the email is the primary email on the account, you can send the user a [new confirmation email](https://gitlab.com/users/confirmation/new).

Let the user know you've sent a new confirmation email and ask them to check their inbox and spam folders.

Note: If a user changes their primary email, the form will also not work and they have to follow the process below for secondary email.

### Secondary email

Instruct the user to sign in and trigger a new confirmation email through their profile: [https://gitlab.com/-/profile/emails](https://gitlab.com/-/profile/emails)

### Wacky state

If the user is unconfirmed, but their primary email address does not match the unconfirmed email address ([see this internal example](https://gitlab.com/gitlab-org/gitlab/-/issues/239098#note_399726260)), then two options:

1.  Impersonate the user and click on the "Resend confirmation email" under Email on their Settings > Profile page.
2.  File a [console escalation internal request](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/new?issuable_template=GitLab.com%20Console%20Escalation) to set the `unconfirmed_email` to `nil`.
