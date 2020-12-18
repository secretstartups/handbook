---
layout: handbook-page-toc
title: Confirmation Emails
category: GitLab.com
description: "Workflow for cases when a customer reports they are not receiving their confirmation email"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

### Overview

This workflow covers cases when a user says they are not receiving their confirmation email.

### Check GitLab Admin

1. In the GitLab.com Admin Area, [search for the user](https://gitlab.com/admin/users) by username or email address to confirm the account has been created. Alternatively, search in your browser [using the API](https://gitlab.com/api/v4/users?search=email@email.test).
    - No account? Use the Zendesk macro `GitLab.com::Account does not exist` or if you believe it's applicable use `General::Verify self-managed or .com`.

1. Check the email address against what the user has reported.
    - Did they make a typo when registering? See [Fix Email Address](#fix-email-address).
    - Otherwise see [Check Mailgun](#check-mailgun).

#### Fix Email Address

If the user made a typo:

1. Make sure the account in question is a new account.
1. When viewing the user in the admin area, click `Edit`.
1. Fix the email address to the correct one and save your changes.

### Check Mailgun

On the first attempt, if our email system could not get through (usually server says it's non-existent or similar), then our mail server will put a suppression on sending further emails.

1. Log in to [Mailgun](https://app.mailgun.com/app/dashboard) using the `supporteam` credentials in the Support Team vault in 1Password.
1. Click on `Sending` along the left-hand side navigation bar.
1. Click on `Logs`.
1. Ensure that `mg.gitlab.com` is set as the domain above the activity graph.
1. Enter the email address to be checked into the search bar search and then scan the results to see if mail is being delivered to that address.
    - If email is delayed, respond to the user and ask them to wait.
    - If email is bouncing due to a suppression (evidenced by the message `Not delivering to previously bounced address` in the log) proceed to [Removing a Suppression in Mailgun](#removing-a-suppression-in-mailgun) or [Removing a Suppression in Zendesk](#removing-a-suppression-in-zendesk)

#### Removing a Suppression in Mailgun

1. Click on `Suppressions` along the left-hand side navigation bar.
1. Wait a moment for results to load before searching.
1. Ensure that `mg.gitlab.com` is set as the domain at the top of the page.
1. Enter the email address to be checked into the `Search for recipients` search bar and perform a search.
1. Click the `Delete` button next to an entry and then confirm your selection to remove the suppression.

#### Removing a Suppression in Zendesk

1. Click the `Apps` button located in the top right of the Zendesk interface.
1. Scroll down to the `Email Suppressions` app located below the tag locker app.
1. Search for the email address using the search field.
1. If a suppression is found you may optionally click the `copy` button to save the log from Mailgun to your clipboard that you can then paste into an internal comment on the ticket.
1. Click the `Remove the suppression?` button.

Once the suppression is removed you can then use the quick links menu that is displayed to either resend a new confirmation email, send a password reset email, or perform another search.

### Resend Confirmation Email

### Primary email

Once the problem has been fixed, you can send the user a [new confirmation email](https://gitlab.com/users/confirmation/new) if it's the primary email address.

Let the user know you've sent a new confirmation email and ask them to check their inbox and spam folders.

Note: If a user changes their primary email, the form will also not work and they have to follow the process below for secondary email.

### Secondary email

Instruct the user to sign in and trigger a new confirmation email through their profile: [https://gitlab.com/profile/emails](https://gitlab.com/profile/emails)

### Wacky state

If the user is unconfirmed, but their primary email address does not match the unconfirmed email address ([see this internal example](https://gitlab.com/gitlab-org/gitlab/-/issues/239098#note_399726260)), then two options:

1.  Impersonate the user and click on the "Resend confirmation email" under Email on their Settings > Profile page.
2.  File a [console escalation internal request](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/new?issuable_template=GitLab.com%20Console%20Escalation) to set the `unconfirmed_email` to `nil`.
