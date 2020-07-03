---
layout: handbook-page-toc
title: Zendesk Triggers
---

# Zendesk Triggers

Triggers are business rules you define to run immediately after tickets are
created or updated. They rely on a system of conditions and actions. They will
not run once a ticket is closed.

## Note about Triggers

Triggers are managed via Zendesk and are version controled (to a degree).

## Current Active Triggers

### [Bronze/Silver/Gold Support Level -> Gitlab.com Form](https://gitlab.zendesk.com/agent/admin/triggers/360015448834)

* Actions:
  * Change `Form` to `GitLab.com`
  * Change `Priority` to `Normal`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Channel` is `Email`
    * `Received at` is `support@gitlab.com`
  * Meets ANY of:
    * `GitLab Plan` is `Bronze`
    * `GitLab Plan` is `Silver`
    * `GitLab Plan` is `Gold`

### [Standard/Premium/Ultimate Support Level -> Self managed Form](https://gitlab.zendesk.com/agent/admin/triggers/360062117853)

* Actions:
  * `Form` is `Self-Managed`
  * Change `Priority` to `Normal`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Channel` is `Email`
    * `Received at` is `support@gitlab.com`
  * Meets ANY of:
    * `GitLab Plan` is `Basic`
    * `GitLab Plan` is `Premium`
    * `GitLab Plan` is `Starter`
    * `GitLab Plan` is `Ultimate`

### [Priority to High based on Customer Priority](https://gitlab.zendesk.com/agent/admin/triggers/360068246953)

* Actions:
  * Change `Priority` to `High`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Customer Priority` is `High`

### [Priority to Normal based on Customer Priority](https://gitlab.zendesk.com/agent/admin/triggers/360068247053)

* Actions:
  * Change `Priority` to `Normal`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
  * Meets ANY of:
    * `Customer Priority` is `Medium`
    * `Customer Priority` is blank

### [Priority to Low based on Customer Priority](https://gitlab.zendesk.com/agent/admin/triggers/360068247153)

* Actions:
  * Change `Priority` to `Low`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Customer Priority` is `Low`

### [Emergency ticket actions](https://gitlab.zendesk.com/agent/admin/triggers/74548737)

* Actions:
  * Notify Pagerduty target:
    > A new Emergency ticket has been triggered: {{ticket.title}} by {{ticket.requester.email}}. Go to ticket: {{ticket.link}}
    >
    > {{ticket.title}}
    >
    > {{ticket.description}}
  * `Add tags` `pd_integration emergency`
  * Change `Priority` to `Urgent`
  * Email requester:
    * Subject:
    * Body:
      > Hi {{ticket.requester.first_name}},
      >
      > Oh no! We're sorry to hear you're experiencing an emergency situation with GitLab. We received your request and an on-call engineer has been paged.
      >
      > You can reply to this email at any time to add new information to the ticket.
      >
      > Best regards,
      > The GitLab team
      >
      > Did you know? You can keep track of all of your tickets and their current status using our support web interface! Visit https://support.gitlab.com and sign in. You can also go directly to details about this ticket at {{ticket.link}}. We recommend using the support web interface for a superior experience managing your tickets. Email comments can be difficult to follow.
      >
      > Don't know your support account password? By emailing us, an account was pre-created for you but you will need to reset your password first. Request a new password at https://gitlab.zendesk.com/auth/v2/login/password_reset. Follow the instructions in the password reset email to gain access to your support account. Now you will be able to see all of your tickets!
  * `Form` is `Self-Managed`
* Conditions:
  * Meets ALL of:
    * `Received at` is `<redacted>`
    * `Ticket` is `Created`

### [New Security Ticket -  Notify slack, autorespond and Assign to Security Team](https://gitlab.zendesk.com/agent/admin/triggers/75873598)

* Actions:
  * Set `Assignee` to `Security Team`
  * `Add tags` `security`
  * Change `Priority` to `High`
  * Change `Form` to `Security Issue`
  * Notify Slack - Security target:
    ```json
    {
      "text": "New security ticket",
      "attachments": [
        {
          "title": "{{ticket.title}}",
          "title_link": "{{ticket.link}}",
          "text": "{{ticket.description}}",
          "color": "#7CD197"
        }
      ]
    }
    ```
  * Make public comment:
    > Thank you for contacting the Security Team.
    >
    > We have received your report which will be reviewed by a member of the security team within one business day. If you would like to provide any additional information, please reply directly to this email leaving the subject line intact.
    >
    > This mailbox only accepts Security reports, including Abuse and Compliance; unrelated reports might result in your report being closed without correspondence.
    >
    > If you are reporting a vulnerability for responsible disclosure, we have a public bug bounty program at https://hackerone.com/gitlab where our team will review your report.
    > 
    > If you have a support related request including 2FA/blocked account requests, please consider reaching out to support@gitlab.com for a faster response.
    >
    > DMCA requests can be emailed to dmca@gitlab.com
    >
    > Best regards,
    > GitLab Security
  * `Add tags` `autoresponder_security`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Subject text` does not include `2FA`
    * `Subject text` does not contain the string `multi factor authentication`
    * `Subject text` does not contain the string `Remove 2fa`
    * `Subject text` does not contain the string `two factor`
    * `Subject text` does not contain the string `two-factor`
    * `Subject text` does not include `2f`
    * `Subject text` does not include `MFA`
    * `Subject text` does not include `Factor Authentication`
    * `Tags` do not include `autoresponder_security`
    * `Current user` is not `(agent)`
  * Meets ANY of:
    * `Received at` is `security@gitlab.com`
    * `Form` is `Security Issue`

### [Move 2FA tickets to Gitlab.com (SAAS) Account Related Form queue (security@gitlab.com)](https://gitlab.zendesk.com/agent/admin/triggers/360093823454)

* Actions:
  * Change `Form` to `Gitlab.com (SAAS) Account Related Form`
  * Change `GitLab.com Account Problem Type` to `Two-Factor Authentication (Account Recovery)`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Received at` is `security@gitlab.com`
  * Meets ANY of:
    * `Subject text` includes `2FA`
    * `Subject text` contains the string `multi factor authentication`
    * `Subject text` contains the string `Remove 2fa`
    * `Subject text` contains the string `two factor`
    * `Subject text` contains the string `two-factor`
    * `Subject text` contains the string `2f`
    * `Subject text` contains the string `MFA`
    * `Subject text` contains the string `Factor Authentication`

### [Move 2FA tickets to Gitlab.com (SAAS) Account Related Form queue (Security Form)](https://gitlab.zendesk.com/agent/admin/triggers/360013521819)

* Actions:
  * Change `Form` to `Gitlab.com (SAAS) Account Related Form`
  * Change `GitLab.com Account Problem Type` to `Two-Factor Authentication (Account Recovery)`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Form` is `Security Issue`
  * Meets ANY of:
    * `Subject text` includes `2FA`
    * `Subject text` is `multi factor authentication`
    * `Subject text` is `Remove 2fa`
    * `Subject text` is `two factor`
    * `Subject text` is `two-factor`
    * `Subject text` is `2f`
    * `Subject text` is `MFA`
    * `Subject text` is `Factor Authentication`

### [Transferred Security Ticket - Assign to Security Team and autorespond](https://gitlab.zendesk.com/agent/admin/triggers/360062368454)

* Actions:
  * Change `Priority` to `High`
  * Set `Assignee` to `Security Team`
  * `Add tags` `security`
  * Notify Slack - Security target:
    ```json
    {
      "text": "New security ticket",
      "attachments": [
        {
          "title": "{{ticket.title}}",
          "title_link": "{{ticket.link}}",
          "text": "{{ticket.description}}",
          "color": "#7CD197"
        }
      ]
    }
    ```
  * Make public comment:
    > Thank you for contacting the Security Team.
    > 
    > We have received your report which will be reviewed by a member of the security team within one business day. If you would like to provide any additional information, please reply directly to this email leaving the subject line intact.
    > 
    > This mailbox only accepts Security reports, including Abuse and Compliance; unrelated reports might result in your report being closed without correspondence.
    > 
    > If you are reporting a vulnerability for responsible disclosure, we have a public bug bounty program at https://hackerone.com/gitlab where our team will review your report.
    > 
    > If you have a support related request including 2FA/blocked account requests, please consider reaching out to support@gitlab.com for a faster response.
    > 
    > DMCA requests can be emailed to dmca@gitlab.com
    > 
    > Best regards,
    > GitLab Security
  * `Add tags` `autoresponder_security`
* Conditions:
  * Meets ALL of:
    * `Form` is changed to `Security Issue`
    * `Ticket` is `Updated`
    * `Tags` do not contain `autoresponder_security`

### [Autoresponder New Tickets (created by customer - email)](https://gitlab.zendesk.com/agent/admin/triggers/144640067)

* Actions:
  * Email requester:
    * Subject: Your GitLab support request '{{ticket.title}}' has been received
    * Body:
      > Hi {{ticket.requester.first_name}},
      > 
      > Thank you for contacting GitLab Support. Please take a moment to read this email to help best manage your request:
      > 
      > 1. You may find helpful information in our documentation at https://docs.gitlab.com. Please search there to see if your issue is already documented.
      > 
      > 2. Our support desk is closed at weekends except for customer emergencies. You can expect a reply within the time specified in our SLA policies for the plan your are on: https://about.gitlab.com/support/ If you have a Priority support plan you will have received details on how to raise an emergency. 
      > 
      > 3. You can reply to this email at any time to add new information to the ticket.  If you opened this ticket by sending us an email: You can also create tickets via our web form at https://support.gitlab.com/hc/en-us/requests/new. The form is tailored to the product you're using and helps ensure our support team has all the details necessary to understand your problem. Opening a ticket using a web form is preferred.
      > 
      > 4. Please attach log files and console output rather than pasting inline. This makes it easier to see the content of the ticket by keeping long output text in separate files.
      > 
      > Best regards,
      > The GitLab Support team
      > 
      > Did you know? You can keep track of all of your tickets and their current status using our support web interface! Visit https://support.gitlab.com and sign in. You can also go directly to details about this ticket at {{ticket.link}}. We recommend using the support web interface for a superior experience managing your tickets. Email comments can be difficult to follow.
      > 
      > Don't know your support account password? By emailing us, an account was pre-created for you but you will need to reset your password first. Request a new password at https://gitlab.zendesk.com/auth/v2/login/password_reset. Follow the instructions in the password reset email to gain access to your support account. Now you will be able to see all of your tickets!
  * `Add tags` `autoresponder_new_tickets`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Organization` is not `GitLab`
    * `Subject text` does not contain the string `Data Removal Request`
    * `Comment text` does not contain the string `Article 17 GDPR`
    * `Current user` is not `(agent)`
    * `Tags` do not contain `autoresponder_new_tickets emergency`
    * `Subject text` does not contain the string `Remove 2fa`
    * `Subject text` does not contain the string `2fa `
    * `Subject text` does not contain the string `Remove two factor`
    * `Subject text` does not contain the string `2 factor`
    * `Subject text` does not contain the string `Factor Authentication`
    * `Subject text` does not contain the string `Multi Factor Authentication`
    * `Subject text` does not contain the string `MFA`
  * Meets ANY of:
    * `Received at` is `renewals@gitlab.com`
    * `Received at` is `subscribers@gitlab.com`
    * `Received at` is `subscribers@gitlab.zendesk.com`
    * `Received at` is `support@githost.io`
    * `Received at` is `support@gitlab.com`
    * `Received at` is `support@gitlab.zendesk.com`
    * `Received at` is `trials@gitlab.zendesk.com`

### [Autoresponder New Tickets (created by customer - form) ](https://gitlab.zendesk.com/agent/admin/triggers/360023419260)

* Actions:
  * Email requester
    * Subject: Your GitLab support request '{{ticket.title}}' has been received
    * Body:
      > Hi {{ticket.requester.first_name}},
      > 
      > Thank you for contacting GitLab Support. Please take a moment to read this email to help best manage your request:
      > 
      > 1. You may find helpful information in our documentation at https://docs.gitlab.com. Please search there to see if your issue is already documented.
      > 
      > 2. Our support desk is closed at weekends except for customer emergencies. You can expect a reply within the time specified in our SLA policies for the plan your are on: https://about.gitlab.com/support/ If you have a Priority support plan you will have received details on how to raise an emergency. 
      > 
      > 3. You can reply to this email at any time to add new information to the ticket.  If you opened this ticket by sending us an email: You can also create tickets via our web form at https://support.gitlab.com/hc/en-us/requests/new. The form is tailored to the product you're using and helps ensure our support team has all the details necessary to understand your problem. Opening a ticket using a web form is preferred.
      > 
      > 4. Please attach log files and console output rather than pasting inline. This makes it easier to see the content of the ticket by keeping long output text in separate files.
      > 
      > Best regards,
      > The GitLab Support team
      > 
      > Did you know? You can keep track of all of your tickets and their current status using our support web interface! Visit https://support.gitlab.com and sign in. You can also go directly to details about this ticket at {{ticket.link}}. We recommend using the support web interface for a superior experience managing your tickets. Email comments can be difficult to follow.
      > 
      > Don't know your support account password? By emailing us, an account was pre-created for you but you will need to reset your password first. Request a new password at https://gitlab.zendesk.com/auth/v2/login/password_reset. Follow the instructions in the password reset email to gain access to your support account. Now you will be able to see all of your tickets!
  * `Add tags` `autoresponder_new_tickets`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Organization` is not `GitLab`
    * `ticket_form_id` is_not `360000515493`
    * `GitLab.com Problem Type` is not `Did not receive confirmation email`
    * `GitLab.com Problem Type` is not `Two-Factor Authentication (Account Recovery)`
    * `Subject text` does not contain the string `Data Removal Request`
    * `Comment text` does not contain the string `Article 17 GDPR`
    * `Current user` is not `(agent)`
    * `Tags` do not contain `autoresponder_new_tickets`
  * Meets ANY of:
    * `Channel` is `Web form`

### [Autoresponder New Tickets (created by agent)](https://gitlab.zendesk.com/agent/admin/triggers/360012930780)

* Actions:
  * Email requester:
    * Subject: A ticket has been created for you by the GitLab Support team
    * Body:
      > The GitLab Support team has created a ticket for you.
      >
      > Ticket Title: "{{ticket.title}}"
      >
      > {{ticket.description}}
      >
      > You can reply to this email, or keep track of all of your tickets and their current status using our support web interface! Visit https://support.gitlab.com and sign in. You can also go directly to details about this ticket at {{ticket.link}}. We recommend using the support web interface for a superior experience managing your tickets. Email comments can be difficult to follow.
      >
      > Don't know your support account password? An account was pre-created for you when we created this ticket but you will need to reset your password first. Request a new password at https://gitlab.zendesk.com/auth/v2/login/password_reset. Follow the instructions in the password reset email to gain access to your support account. Now you will be able to see all of your tickets!
  * `Add tags` `ticket_created_agent`
  * `Add tags` `autoresponder_new_tickets`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Current user` is `(agent)`
    * `Privacy` is `Ticket has public comments`
    * `Tags` do not contain `autoresponder_new_tickets`

### [Autoresponder Gitlab.com (SAAS) Account Related Form 2FA Recovery](https://gitlab.zendesk.com/agent/admin/triggers/159199407)

* Actions:
  * Change `Status` is `Pending`
  * Make public comment:
    > Hi {{ticket.requester.first_name}},
    >
    > Thank you for submitting a support request for help with a GitLab.com issue. This is an auto-response based on the text of your request. It sounds like you are unable to sign in to your account because you lost your two-factor authentication device (Google Authenticator, Duo Security, etc).
    >
    > Below, we've listed some steps you can take to recover your account. If none of these steps work, however, please reply to this email for further assistance.
    >
    > If you previously added an SSH public key to your profile, you can generate new recovery codes via SSH. Follow the steps below to recover your account.
    >
    > More information on 2FA account recovery options can be found in: https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#recovery-options
    >
    > 1.  In a console/terminal, run `ssh git@gitlab.com 2fa_recovery_codes`. 
    > 2.  Answer 'yes' when asked whether you wish to generate new recovery codes.
    > 3.  Copy one of the recovery codes.
    > 4.  Sign in to [https://gitlab.com](https://gitlab.com/) using your normal username and password. When asked for a two-factor authentication code, paste the recovery code you copied previously.
    > 5.  After successfully authenticating, go to **Profile -> Account**.
    > 6.  Disable two-factor authentication.
    > 7.  Re-enable two-factor authentication with a new device (Google Authenticator, Duo Security, etc.). 
    >
    > Note: As of August 2018, GitLab is no longer accepting government issued ID as proof of account ownership.
    >
    > If that does not help, or you do not have SSH set up, please respond to all of the applicable challenges in order to verify account ownership so that two-factor authentication can be disabled:
    >
    > - User can confirm the name of 1 or more private groups
    > - User can confirm one or more of the last IP addresses logged into the account (Tip: Google `what's my ip` when you're on the network where you usually log into your GitLab account)
    > - User can confirm the name of 1 or more private projects  (specify `namespace/project`)
    > - User can confirm the date/time of last commits on a private project (specify `namespace/project`)
    > - User can verify the content of the last commit message on a private repository (specify `namespace/project`)
    > 
    > Account recovery information: https://about.gitlab.com/support/#account-recovery
    >
    > Best regards,
    > The GitLab Team
  * Change `GitLab.com Account Problem Type` to `Two-Factor Authentication (Account Recovery)`
  * `Add tags` `autoresponder_2fa`
* Conditions:
  * Meets ALL of:
    * `Form` is `Gitlab.com (SAAS) Account Related Form`
    * `Tags` do not contain `autoresponder_2fa`
    * `Ticket` is `Created`
  * Meets ANY of:
    * `GitLab.com Account Problem Type` is `Two-Factor Authentication (Account Recovery)`
    * `Subject text` contains the string `Remove 2fa`
    * `Subject text` contains the word `2fa `
    * `Subject text` contains the string `Remove two factor`
    * `Subject text` contains the string `2 factor`
    * `Subject text` contains the string `Factor Authentication`
    * `Subject text` contains the string `Multi Factor Authentication`
    * `Subject text` contains the word `MFA`

### *INACTIVE* [Autoresponder GitLab.com 2FA Recovery  - Free users](https://gitlab.zendesk.com/agent/admin/triggers/360020490219)

* Actions:
  * Change `Status` is `Pending`
  * Make public comment:
    > Hi {{ticket.requester.first_name}},
    > 
    > Thank you for submitting a support request for help with a GitLab.com issue. This is an auto-response based on the text of your request. It sounds like you are unable to sign in to your account because you lost your two-factor authentication device (Google Authenticator, Duo Security, etc).
    > 
    > Below, we've listed some steps you can take to recover your account. If none of these steps work, however, please reply to this email for further assistance.
    > 
    > If you previously added an SSH public key to your profile, you can generate new recovery codes via SSH. Follow the steps below to recover your account.
    > 
    > More information on 2FA account recovery options can be found in: https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#recovery-options
    > 
    > 1.  In a console/terminal, run `ssh git@gitlab.com 2fa_recovery_codes`. 
    > 2.  Answer 'yes' when asked whether you wish to generate new recovery codes.
    > 3.  Copy one of the recovery codes.
    > 4.  Sign in to [https://gitlab.com](https://gitlab.com/) using your normal username and password. When asked for a two-factor authentication code, paste the recovery code you copied previously.
    > 5.  After successfully authenticating, go to **Profile -> Account**.
    > 6.  Disable two-factor authentication.
    > 7.  Re-enable two-factor authentication with a new device (Google Authenticator, Duo Security, etc.). 
    > 
    > Note: As of August 2018, GitLab is no longer accepting government issued ID as proof of account ownership.
    > 
    > If that does not help, or you do not have SSH set up, please respond to all of the applicable challenges in order to verify account ownership so that two-factor authentication can be disabled:
    > 
    > - User can confirm the name of 1 or more private groups
    > - User can confirm one or more of the last IP addresses logged into the account (Tip: Google `what's my ip` when you're on the network where you usually log into your GitLab account)
    > - User can confirm the name of 1 or more private projects  (specify `namespace/project`)
    > - User can confirm the date/time of last commits on a private project (specify `namespace/project`)
    > - User can verify the content of the last commit message on a private repository (specify `namespace/project`)
    > 
    > Account recovery information: https://about.gitlab.com/support/#account-recovery
    > 
    > Best regards,
    > The GitLab Team
  * Change `Free - Problem Type` to `Two-Factor Authentication (Account Recovery)`
  * `Add tags` `autoresponder_2fa`
* Conditions:
  * Meets ALL of:
    * `Form` is `GitLab.com`
    * `Tags` do not contain `autoresponder_2fa`
    * `Ticket` is `Created`
    * `Tell us about your GitLab subscription` is `Free user`
  * Meets ANY of:
    * `Free - Problem Type` is `Two-Factor Authentication (Account Recovery)`
    * `Subject text` contains the string `Remove 2fa`
    * `Subject text` contains the word `2fa `
    * `Subject text` contains the string `Remove two factor`
    * `Subject text` contains the string `2 factor`
    * `Subject text` contains the string `Factor Authentication`
    * `Subject text` contains the string `Multi Factor Authentication`
    * `Subject text` contains the word `MFA`

### [Autoresponder Gitlab.com (SAAS) Account Related Form 2FA Recovery (change form)](https://gitlab.zendesk.com/agent/admin/triggers/360020055600)

* Actions:
  * Change `Status` is `Pending`
  * Make public comment:
    > Hi {{ticket.requester.first_name}},
    > 
    > Thank you for submitting a support request for help with a GitLab.com issue. This is an auto-response based on the text of your request. It sounds like you are unable to sign in to your account because you lost your two-factor authentication device (Google Authenticator, Duo Security, etc).
    > 
    > Below, we've listed some steps you can take to recover your account. If none of these steps work, however, please reply to this email for further assistance.
    > 
    > If you previously added an SSH public key to your profile, you can generate new recovery codes via SSH. Follow the steps below to recover your account.
    > 
    > More information on 2FA account recovery options can be found in: https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#recovery-options
    > 
    > 1.  In a console/terminal, run `ssh git@gitlab.com 2fa_recovery_codes`. 
    > 2.  Answer 'yes' when asked whether you wish to generate new recovery codes.
    > 3.  Copy one of the recovery codes.
    > 4.  Sign in to [https://gitlab.com](https://gitlab.com/) using your normal username and password. When asked for a two-factor authentication code, paste the recovery code you copied previously.
    > 5.  After successfully authenticating, go to **Profile -> Account**.
    > 6.  Disable two-factor authentication.
    > 7.  Re-enable two-factor authentication with a new device (Google Authenticator, Duo Security, etc.). 
    > 
    > Note: As of August 2018, GitLab is no longer accepting government issued ID as proof of account ownership.
    > 
    > If that does not help, or you do not have SSH set up, please respond to all of the applicable challenges in order to verify account ownership so that two-factor authentication can be disabled:
    > 
    > - User can confirm the name of 1 or more private groups
    > - User can confirm one or more of the last IP addresses logged into the account (Tip: Google `what's my ip` when you're on the network where you usually log into your GitLab account)
    > - User can confirm the name of 1 or more private projects  (specify `namespace/project`)
    > - User can confirm the date/time of last commits on a private project (specify `namespace/project`)
    > - User can verify the content of the last commit message on a private repository (specify `namespace/project`)
    > 
    > Account recovery information: https://about.gitlab.com/support/#account-recovery
    > 
    > Best regards,
    > The GitLab Team
  * Change `GitLab.com Account Problem Type` to `Two-Factor Authentication (Account Recovery)`
  * `Add tags` `autoresponder_2fa`
* Conditions:
  * Meets ALL of:
    * `Form` is `Gitlab.com (SAAS) Account Related Form`
    * `Tags` do not contain `autoresponder_2fa`
    * `Status` is `New`
    * `Agent replies` is `0`
    * `Ticket` is `Updated`
    * `GitLab.com Account Problem Type` is `Two-Factor Authentication (Account Recovery)`

### *INACTIVE* [Autoresponder GitLab.com 2FA Recovery (change form) - Free users](https://gitlab.zendesk.com/agent/admin/triggers/360020490159)

* Actions:
  * Change `Status` is `Pending`
  * Make public comment:
    > Hi {{ticket.requester.first_name}},
    > 
    > Thank you for submitting a support request for help with a GitLab.com issue. This is an auto-response based on the text of your request. It sounds like you are unable to sign in to your account because you lost your two-factor authentication device (Google Authenticator, Duo Security, etc).
    > 
    > Below, we've listed some steps you can take to recover your account. If none of these steps work, however, please reply to this email for further assistance.
    > 
    > If you previously added an SSH public key to your profile, you can generate new recovery codes via SSH. Follow the steps below to recover your account.
    > 
    > More information on 2FA account recovery options can be found in: https://docs.gitlab.com/ee/user/profile/account/two_factor_authentication.html#recovery-options
    > 
    > 1.  In a console/terminal, run `ssh git@gitlab.com 2fa_recovery_codes`. 
    > 2.  Answer 'yes' when asked whether you wish to generate new recovery codes.
    > 3.  Copy one of the recovery codes.
    > 4.  Sign in to [https://gitlab.com](https://gitlab.com/) using your normal username and password. When asked for a two-factor authentication code, paste the recovery code you copied previously.
    > 5.  After successfully authenticating, go to **Profile -> Account**.
    > 6.  Disable two-factor authentication.
    > 7.  Re-enable two-factor authentication with a new device (Google Authenticator, Duo Security, etc.). 
    > 
    > Note: As of August 2018, GitLab is no longer accepting government issued ID as proof of account ownership.
    > 
    > If that does not help, or you do not have SSH set up, please respond to all of the applicable challenges in order to verify account ownership so that two-factor authentication can be disabled:
    > 
    > - User can confirm the name of 1 or more private groups
    > - User can confirm one or more of the last IP addresses logged into the account (Tip: Google `what's my ip` when you're on the network where you usually log into your GitLab account)
    > - User can confirm the name of 1 or more private projects  (specify `namespace/project`)
    > - User can confirm the date/time of last commits on a private project (specify `namespace/project`)
    > - User can verify the content of the last commit message on a private repository (specify `namespace/project`)
    > 
    > Account recovery information: https://about.gitlab.com/support/#account-recovery
    > 
    > Best regards,
    > The GitLab Team
  * Change `Free - Problem Type` to `Two-Factor Authentication (Account Recovery)`
  * `Add tags` `autoresponder_2fa`
* Conditions:
  * Meets ALL of:
    * `Form` is `GitLab.com`
    * `Tags` do not contain `autoresponder_2fa`
    * `Status` is `New`
    * `Agent replies` is `0`
    * `Ticket` is `Updated`
    * `Free - Problem Type` is `Two-Factor Authentication (Account Recovery)`

### [Autoresponder GitLab.com GDPR Deletion](https://gitlab.zendesk.com/agent/admin/triggers/360036736913)

* Actions:
  * Change `Status` is `Pending`
  * Change `Form` to `GitLab.com`
  * `Add tags` `gdpr-delete`
  * Make public comment:
    > Hi,
    > 
    > Thank you for submitting the support request for help with a GitLab.com issue. This is an auto-response based on the text of your request. We understand that you want to completely remove your GitLab.com account. If you're looking for help with something else, please reply to this email and we'll be happy to help.
    > 
    > Due to the complexity of servicing these requests, we're asking our users to please email gdpr-request@gitlab.com.
    > 
    > Please ensure that you:
    > - send the email from the address associated with your GitLab.com account
    > - include the GitLab username you'd like removed
    > 
    > Please note that:
    > - in many circumstances, we will not be able to provide a full export of associated repositories
    > - any groups that you're a sole owner in will be deleted, along with any projects contained therein
    > 
    > Once you've submitted your request, we'll have the various teams remove your associated data and send you final confirmation when deletion is complete.
    > 
    > Please also note, that if you have accepted the updated ToS we will **not** take action on this request and redirect you to https://gitlab.com/profile/account.
    > 
    > From there, you can delete your account and associated data yourself.
    > 
    > Thanks for your understanding.
  * `Add tags` `autoresponder_gdpr`
* Conditions:
  * Meets ALL of:
    * `Status` is `New`
    * `Tags` do not contain `autoresponder_gdpr`
  * Meets ANY of:
    * `Subject text` contains the string `Data Removal Request`
    * `Comment text` is `Article 17 GDPR`

### [Private comments](https://gitlab.zendesk.com/agent/admin/triggers/360015531940)

* Actions:
  * Make private comment:
    > Salesforce link: https://gitlab.my.salesforce.com/{{ticket.organization.custom_fields.salesforce_id}}
    > Support Level: {{ticket.organization.custom_fields.support_level.title}}
    > Account type: {{ticket.organization.custom_fields.account_type.title}}
    > Sales Segmentation: {{ticket.organization.custom_fields.sales_segmentation}}
    > 
    > Account Owner: {{ticket.organization.custom_fields.account_owner}}
    > Technical Account Manager: {{ticket.organization.custom_fields.technical_account_manager}}
    > Manual Support Upgrade: {{ticket.organization.custom_fields.manual_support_upgrade}}
  * `Add tags` `private_comment`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
  * Meets ANY of:
    * `Salesforce ID` is present
    * `Organization` is not blank

### [Received at githost.io or githost ticket form, tag and set priority](https://gitlab.zendesk.com/agent/admin/triggers/62126807)

* Actions:
  * `Add tags` `githost.io`
  * Change `Priority` to `Normal`
  * Change `Channel (Recevied at email)` to `support@githost.io`
  * Change `Form` to `GitLab Hosted (GitHost.io)`
  * Make private comment:
    > Please note this is ticket was created using the GitHost.io form or email. Please double check if they are actually a GitHost.io customer!
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
  * Meets ANY of:
    * `Received at` is `support@githost.io`
    * `Form` is `GitLab Hosted (GitHost.io)`

### [Received at Web Form](https://gitlab.zendesk.com/agent/admin/triggers/88318668)

* Actions:
  * `Add tags` `web_form`
  * Change `Channel (Received at email)` to `Web Form`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
  * Meets ANY of:
    * `Channel` is `Web form`
    * `Channel` is `Closed Ticket`

### [Slack Support Live Feed (With Organization names) (Self-managed Tickets)](https://gitlab.zendesk.com/agent/admin/triggers/360001152888)

* Actions:
  * Notify #zd-self-managed-feed:
    ```json
    {
        "attachments": [
            {
                "fallback": "",
                "color": "#4AACD8",
                "pretext": "{{ticket.status}} ticket updated by {{current_user.name}}: <{{ticket.link}}|Ticket #{{ticket.id}}>",
                "title": "{{ticket.title}}",
    			      "author_name": "{{ticket.organization.name}}",
                "title_link": "{{ticket.link}}",
                "text": "{{ticket.latest_comment}}",
                "fields": [
                    {
                        "short": true
                    }
                ],
                "footer": "ZenDesk",
                "footer_icon": "https://slack-imgs.com/?c=1&o1=wi32.he32.si&url=https%3A%2F%2Fa.slack-edge.com%2F436da%2Fimg%2Funfurl_icons%2Fzendesk.png"
            }
        ]
    }
    ```
* Conditions:
  * Meets ALL of:
    * `Comment` is `Present (public or private)`
    * `Form` is not `Gitlab.com (SAAS) Account Related Form`
    * `Form` is not `GitLab.com`
    * `Form` is not `GitLab Hosted (GitHost.io)`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security Issue`
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Ticket` is `Updated`
    * `Form` is `Self-Managed`
    * `Form` is `GitLab Community Edition (CE)`

### [Slack Services Live Feed (GitLab.com Tickets)](https://gitlab.zendesk.com/agent/admin/triggers/360021544734)

* Actions:
  * Notify #zd-gitlab-com-feed:
    ```json
    {
        "attachments": [
            {
                "fallback": "",
                "color": "#4AACD8",
                "pretext": "{{ticket.status}} ticket updated by {{current_user.name}}: <{{ticket.link}}|Ticket #{{ticket.id}}>",
                "title": "{{ticket.title}}",
    			      "author_name": "{{ticket.organization.name}}",
                "title_link": "{{ticket.link}}",
                "text": "{{ticket.latest_comment}}",
                "fields": [
                    {
                        "short": true
                    }
                ],
                "footer": "ZenDesk",
                "footer_icon": "https://slack-imgs.com/?c=1&o1=wi32.he32.si&url=https%3A%2F%2Fa.slack-edge.com%2F436da%2Fimg%2Funfurl_icons%2Fzendesk.png"
            }
        ]
    }
    ```
* Conditions:
  * Meets ALL of:
    * `Comment` is `Present (public or private)`
    * `Form` is not `Self-Managed`
    * `Form` is not `GitLab Community Edition (CE)`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is `GitLab.com`
    * `Form` is `Gitlab.com (SAAS) Account Related Form`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security Issue`
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Ticket` is `Updated`

### [GitHost Specific Customers - Add private note for agents and tag githost.io](https://gitlab.zendesk.com/agent/admin/triggers/360014082574)

* Actions:
  * Make private comment:
    > This is a GitHost customer. You can find more information regarding GitHost customers and their migration dates on these issue: 
    >
    > https://gitlab.com/gitlab-com/support/support-team-meta/issues/1636
  * `Add tags` `githost.io`
  * Notify target `githost tickets ping slack self-managed`:
    ```json
    {
      "attachments": [
        {
          "fallback": "New githost customer ticket created  cc <@U8NNPKA0J>",
          "pretext": "New githost customer ticket created  cc <@U8NNPKA0J>",
          "color": "#D00000",
          "fields": [
            {
              "title": "Subject: {{ticket.title}}",
              "value": "{{ticket.url}}",
              "short": false
            }
          ]
        }
      ]
    }
    ```
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
  * Meets ANY of:
    * `Organization` is `<redacted>`
    * `Organization` is `<redacted>`

### [Add "Needs Organization" Tag](https://gitlab.zendesk.com/agent/admin/triggers/360001567348)

* Actions:
  * `Add tags` `needs-org`
* Conditions:
  * Meets ALL of:
    * `Organization` is blank
    * `Ticket` is `Created`

### [Received at contact@gitlab.com and set priority](https://gitlab.zendesk.com/agent/admin/triggers/150713927)

* Actions:
  * `Add tags` `contact`
  * Change `Priority` to `Low`
  * Change `Channel (Received at email)` to `contact@gitlab.com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `contact@gitlab.com`
    * `Ticket` is `Created`

### [Received at mail-list@gitlab.com - Close ticket](https://gitlab.zendesk.com/agent/admin/triggers/75551137)

* Actions:
  * Change `Status` to `Closed`
  * `Add tags` `mail_list_close`
* Conditions:
  * Meets ALL of:
    * `Received at` is `mail-list@gitlab.com`

### [Notify assignee of assignment](https://gitlab.zendesk.com/agent/admin/triggers/39696283)

* Actions:
  * Email assignee:
    * Subject: [{{ticket.account}}] Assignment: {{ticket.title}}
    * Body:
    > You have been assigned to this ticket (#{{ticket.id}}).
    >
    > {{ticket.comments_formatted}}
* Conditions:
  * Meets ALL of:
    * `Assignee` is `Changed`
    * `Assignee` is not `(current user)`

### [Notify assignee of comment update](https://gitlab.zendesk.com/agent/admin/triggers/39696273)

* Actions:
  * Email assignee:
    * Subject: [{{ticket.account}}] Re: {{ticket.title}}
    * Body:
      > This ticket (#{{ticket.id}}) has been updated.
      >
      > {{ticket.comments_formatted}}
* Conditions:
  * Meets ALL of:
    * `Comment` is `Present (public or private)`
    * `Assignee` is not `(current user)`
    * `Assignee` is not `(requester)`
    * `Assignee` is `Not changed`
    * `Tags` do not contain `twitter_mention`
    * `Status` not changed from `Solved`

### [Notify requester of comment update](https://gitlab.zendesk.com/agent/admin/triggers/39696253)

* Actions:
  * Email requester:
    * Subject: [{{ticket.account}}] Re: {{ticket.title}}
    * Body:
      > Your request ({{ticket.id}}) has been updated. To add additional comments, reply to this email.
      > 
      > Please note that any attachments you might see will require logging into the Support Portal to access/download them
      > 
      > {{ticket.comments_formatted}}
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Comment` is `Present, and requester can see the comment`
    * `Requester` is not `(current user)`

### [Notify assignee of reopened ticket](https://gitlab.zendesk.com/agent/admin/triggers/39696293)

* Actions:
  * Email assignee:
    * Subject: [{{ticket.account}}] Re: {{ticket.title}}
    * Body:
      > This ticket (#{{ticket.id}}) has been reopened.
      >
      > {{ticket.comments_formatted}}
* Conditions:
  * Meets ALL of:
    * `Assignee` is not `(current user)`
    * `Status` is changed from `Solved`
    * `Status` is not `Closed`
  * Meets ANY of:
    * `Tags` do not contain `twitter_mention`

### [Notify assignee when rating is submitted](https://gitlab.zendesk.com/agent/admin/triggers/69773317)

* Actions:
  * Email assignee:
    * Subject: New rating submitted
    * Body:
      > {{ticket.title}}
      >
      > {{ticket.link}}
      >
      > {{satisfaction.current_comment}}
* Conditions:
  * Meets ALL of:
    * `Status` is `Solved`
  * Meets ANY of:
    * `Satisfaction` is `Bad with comment`
    * `Satisfaction` is `Bad`
    * `Satisfaction` is `Good with comment`

### [Move Digital Ocean support tickets to GitHost view](https://gitlab.zendesk.com/agent/admin/triggers/360000819728)

* Actions:
  * Change `Form` to `GitLab Hosted (GitHost.io)`
  * `Add tags` `githost.io`
* Conditions:
  * Meets ALL of:
    * `Organization` is `Digital Ocean Support`

### [::Removal::Tags:: slah-2hr-breach-notification](https://gitlab.zendesk.com/agent/admin/triggers/360036432274)

* Actions:
  * `Remove tags` `slah-2hr-breach-notification`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `slah-2hr-breach-notification`
    * `Form` is not `License Renewals and Upgrades`
    * `Form` is not `Accounts Receivable / Refunds`
    * `Form` is not `Security Issue`
    * `Ticket` is `Updated`
    * `Current user` is `(agent)`
    * `Comment` is `Public`
    * `Status` is greater than `Open`

### [Remove needs-org tag once customer has an org](https://gitlab.zendesk.com/agent/admin/triggers/360017109414)

* Actions:
  * `Remove tags` `needs-org`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `needs-org`
    * `Ticket` is `Updated`
    * `Organization` is not blank

### [Automatically assign on-hold ticket to an agent who put it to the on-hold status](https://gitlab.zendesk.com/agent/admin/triggers/360033242313)

* Actions:
  * Change `Assignee` to `(current user)`
* Conditions:
  * Meets ALL of:
    * `Status` is changed to `On-hold`
    * `Assignee` is blank
    * `Current user` is not `5100224317`

### [Automatically reopen on-hold tickets without assignee](https://gitlab.zendesk.com/agent/admin/triggers/360028981853)

* Actions:
  * Change `Status` to `Open`
  * Make private comment:
    > This ticket was put 'On-hold' without an assignee. Please take this ticket or assign it to someone else if the ticket needs to be put 'On-hold'. 
* Conditions:
  * Meets ALL of:
    * `Status` is changed to `On-hold`
    * `Assignee` is blank

### [Tag Upgrades and Renewals new tickets](https://gitlab.zendesk.com/agent/admin/triggers/360036387794)

* Actions:
  * `Add tags` `upgrades_and_renewals`
  * Change `Form` to `License Renewals and Upgrades
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
  * Meets ANY of:
    * `Form` is `License Renewals and Upgrades`
    * `Received at` is `renewals@gitlab.com`

### [Tag Upgrades and Renewals](https://gitlab.zendesk.com/agent/admin/triggers/360062118813)

* Actions:
  * `Add tags` `upgrades_and_renewals`
* Conditions:
  * Meets ALL of:
    * `Form` is changed to `License Renewals and Upgrades`

### [Tag Refund Requests -> accounts_receivable](https://gitlab.zendesk.com/agent/admin/triggers/360044282693)

* Actions:
  * `Add tags` `accounts_receivable`
* Conditions:
  * Meets ALL of:
    * `Form` is `Accounts Receivable / Refunds`

### [Slack notify spt-slab for self-managed and Premium tickets](https://gitlab.zendesk.com/agent/admin/triggers/360066779873)

* Actions:
  * Notify slack #spt-slab:
    ```json
    {
      "attachments": [
        {
          "fallback": "New premium ticket created",
          "pretext": "New premium ticket created",
          "color": "#D00000",
          "fields": [
            {
              "title": "Subject: {{ticket.title}}",
              "value": "{{ticket.url}}",
              "short": false
            }
          ]
        }
      ]
    }
    ```
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Tags` contains at least one of the following `premium ultimate`

### [Remove pending_three_days tag when the ticket is reopened](https://gitlab.zendesk.com/agent/admin/triggers/360075703614)

* Actions:
  * `Remove tags` `pending_three_days pending_2fa`
* Conditions:
  * Meets ALL of:
    * `Status` is `Open`
    * `Tags` contains at least one of the following `pending_three_days pending_2fa`
    * `Ticket` is `Updated`
    * `Current user` is `(end-user)`
    * `Status` changed from `Pending`

### [<redacted> organisation - Premium and Silver Support](https://gitlab.zendesk.com/agent/admin/triggers/360076156093)

* Actions:
  * `Remove tags` `premium`
  * `Add tags` `silver`
* Conditions:
  * Meets ALL of:
    * `Organization` is `<redacted>`
    * `Ticket` is `Created`
    * `Form` is `GitLab.com`
    * `Tags` contains at least one of the following `premium`

### [Assign ticket to last replying agent when ticket is set to Open or On-Hold](https://gitlab.zendesk.com/agent/admin/triggers/360080206253)

* Actions:
  * Change `Assignee` to `(current user)`
  * `Add tags` `auto_assign_open_ticket`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Comment` is `Public`
    * `Current user` is `(agent)`
    * `Assignee` is blank
  * Meets ANY of:
    * `Status` is `Open`
    * `Status` is `On-hold`
    * `Status` changed to `Open`
    * `Status` is changed to `On-hold`

### [Remove ticket_assignee_follow_up tag when ticket is replied to by customer](https://gitlab.zendesk.com/agent/admin/triggers/360080207373)

* Actions:
  * `Remove tags` `ticket_assignee_follow_up`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Tags` contains at least one of the following `ticket_assignee_follow_up`
    * `Current user` is `(end-user)`
  * Meets ANY of:
    * `Status` changed to `Open`

### [Create GitLab feedback issue when Zendesk survey is submitted with comments](https://gitlab.zendesk.com/agent/admin/triggers/360088483733)

* Actions:
  * Notify target - Create Gitlab issue when Zendesk survey is submitted with comments:
    ```json
    {% assign form = {{ticket.ticket_form}} %}

    {% if form contains 'Refund' %}
       {% assign form = 'form::Accounts Receivable' %}
     {% elsif form contains 'License' %}
       {% assign form = 'form::Upgrades & Renewals' %}
     {% elsif form contains 'GitLab.com' %}
       {% assign form = 'form::GitLab.com' %}
     {% elsif form contains 'Self' %}
       {% assign form = 'form::Self-managed' %}
     {% elsif form contains 'Security' %}
       {% assign form = 'form::Security' %}
     {% elsif form contains 'Hosted' %}
       {% assign form = 'form::GitHost' %}
      {% elsif form contains 'Community' %}
       {% assign form = 'form::GitLab Community Edition' %}
     {% else %}
     {% assign form = 'form::Other' %}
    {% endif %}

    {% assign plan = {{ticket.ticket_field_option_title_360004394559}} %}

    {% if plan contains 'Premium' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Starter' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Ultimate' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Gold' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Bronze' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Silver' %}
       {% assign plan = 'subscription::Customer' %}
     {% else %}
     {% assign plan = 'subscription::Free User' %}
    {% endif %}

    {% assign rating = {{satisfaction.current_rating}} %}
    {% if rating contains 'Good' %}
    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Good,{{form}},{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Good\" ~\"{{form}}\""
    }
    {% else %}
    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Bad,{{form}},{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Bad\" ~\"{{form}}\""
    }
    {% endif %}
    ```
  * `Add tags` `feedback_exported`
* Conditions:
  * Meets ALL of:
    * `Tags` do not contain `feedback_exported`
    * `Satisfaction` is `No reason provided`
  * Meets ANY of:
    * `Satisfaction` is `Bad with comment`
    * `Satisfaction` is `Good with comment`

### [Create GitLab feedback issue when Zendesk survey is submitted with "product" reason](https://gitlab.zendesk.com/agent/admin/triggers/360097202574)

* Actions:
  * Notify target - Create Gitlab issue when Zendesk survey is submitted with comments:
    ```json
    {% assign form = {{ticket.ticket_form}} %}

    {% if form contains 'Refund' %}
       {% assign form = 'form::Accounts Receivable' %}
     {% elsif form contains 'License' %}
       {% assign form = 'form::Upgrades & Renewals' %}
     {% elsif form contains 'GitLab.com' %}
       {% assign form = 'form::GitLab.com' %}
     {% elsif form contains 'Self' %}
       {% assign form = 'form::Self-managed' %}
     {% elsif form contains 'Security' %}
       {% assign form = 'form::Security' %}
     {% elsif form contains 'Hosted' %}
       {% assign form = 'form::GitHost' %}
      {% elsif form contains 'Community' %}
       {% assign form = 'form::GitLab Community Edition' %}
     {% else %}
     {% assign form = 'form::Other' %}
    {% endif %}

    {% assign plan = {{ticket.ticket_field_option_title_360004394559}} %}

    {% if plan contains 'Premium' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Starter' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Ultimate' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Gold' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Bronze' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Silver' %}
       {% assign plan = 'subscription::Customer' %}
     {% else %}
     {% assign plan = 'subscription::Free User' %}
    {% endif %}


    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Bad,{{form}},feedback::product-issue,reason::GitLab doesn't meet my needs,{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Bad\" ~\"{{form}}\" ~\"reason::GitLab doesn't meet my needs\""
    }
    ```
  * `Add tags` `feedback_exported`
* Conditions:
  * Meets ALL of:
    * `Tags` do not contain `feedback_exported`
    * `Satisfaction Reason` is `GitLab doesn't meet my needs`

### [Create GitLab feedback issue when Zendesk survey is submitted with "other" reason](https://gitlab.zendesk.com/agent/admin/triggers/360097002973)

* Actions:
  * Notify target - Create Gitlab issue when Zendesk survey is submitted with comments:
    ```json
    {% assign form = {{ticket.ticket_form}} %}

    {% if form contains 'Refund' %}
       {% assign form = 'form::Accounts Receivable' %}
     {% elsif form contains 'License' %}
       {% assign form = 'form::Upgrades & Renewals' %}
     {% elsif form contains 'GitLab.com' %}
       {% assign form = 'form::GitLab.com' %}
     {% elsif form contains 'Self' %}
       {% assign form = 'form::Self-managed' %}
     {% elsif form contains 'Security' %}
       {% assign form = 'form::Security' %}
     {% elsif form contains 'Hosted' %}
       {% assign form = 'form::GitHost' %}
      {% elsif form contains 'Community' %}
       {% assign form = 'form::GitLab Community Edition' %}
     {% else %}
     {% assign form = 'form::Other' %}
    {% endif %}

    {% assign plan = {{ticket.ticket_field_option_title_360004394559}} %}

    {% if plan contains 'Premium' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Starter' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Ultimate' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Gold' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Bronze' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Silver' %}
       {% assign plan = 'subscription::Customer' %}
     {% else %}
     {% assign plan = 'subscription::Free User' %}
    {% endif %}

    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Bad,{{form}},reason::Some other reason,{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Bad\" ~\"{{form}}\" ~\"reason::Some other reason\""
    }
    ```
  * `Add tags` `feedback_exported`
* Conditions:
  * Meets ALL of:
    * `Tags` do not contain `feedback_exported`
    * `Satisfaction Reason` is `Some other reason`

### [Create GitLab feedback issue when Zendesk survey is submitted with "not helpful" reason](https://gitlab.zendesk.com/agent/admin/triggers/360097003533)

* Actions:
  * Notify target - Create Gitlab issue when Zendesk survey is submitted with comments:
    ```json
    {% assign form = {{ticket.ticket_form}} %}

    {% if form contains 'Refund' %}
       {% assign form = 'form::Accounts Receivable' %}
     {% elsif form contains 'License' %}
       {% assign form = 'form::Upgrades & Renewals' %}
     {% elsif form contains 'GitLab.com' %}
       {% assign form = 'form::GitLab.com' %}
     {% elsif form contains 'Self' %}
       {% assign form = 'form::Self-managed' %}
     {% elsif form contains 'Security' %}
       {% assign form = 'form::Security' %}
     {% elsif form contains 'Hosted' %}
       {% assign form = 'form::GitHost' %}
      {% elsif form contains 'Community' %}
       {% assign form = 'form::GitLab Community Edition' %}
     {% else %}
     {% assign form = 'form::Other' %}
    {% endif %}

    {% assign plan = {{ticket.ticket_field_option_title_360004394559}} %}

    {% if plan contains 'Premium' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Starter' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Ultimate' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Gold' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Bronze' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Silver' %}
       {% assign plan = 'subscription::Customer' %}
     {% else %}
     {% assign plan = 'subscription::Free User' %}
    {% endif %}

    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Bad,{{form}},reason::The answer wasn't helpful,{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Bad\" ~\"{{form}}\" ~\"reason::The answer wasn't helpful\""
    }
    ```
  * `Add tags` `feedback_exported`
* Conditions:
  * Meets ALL of:
    * `Tags` do not contain `feedback_exported`
    * `Satisfaction Reason` is `The answer wasn't helpful`

### [Create GitLab feedback issue when Zendesk survey is submitted with "not resolved" reason](https://gitlab.zendesk.com/agent/admin/triggers/360097003633)

* Actions:
  * Notify target - Create Gitlab issue when Zendesk survey is submitted with comments:
    ```json
    {% assign form = {{ticket.ticket_form}} %}

    {% if form contains 'Refund' %}
       {% assign form = 'form::Accounts Receivable' %}
     {% elsif form contains 'License' %}
       {% assign form = 'form::Upgrades & Renewals' %}
     {% elsif form contains 'GitLab.com' %}
       {% assign form = 'form::GitLab.com' %}
     {% elsif form contains 'Self' %}
       {% assign form = 'form::Self-managed' %}
     {% elsif form contains 'Security' %}
       {% assign form = 'form::Security' %}
     {% elsif form contains 'Hosted' %}
       {% assign form = 'form::GitHost' %}
      {% elsif form contains 'Community' %}
       {% assign form = 'form::GitLab Community Edition' %}
     {% else %}
     {% assign form = 'form::Other' %}
    {% endif %}

    {% assign plan = {{ticket.ticket_field_option_title_360004394559}} %}

    {% if plan contains 'Premium' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Starter' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Ultimate' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Gold' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Bronze' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Silver' %}
       {% assign plan = 'subscription::Customer' %}
     {% else %}
     {% assign plan = 'subscription::Free User' %}
    {% endif %}

    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Bad,{{form}},reason::The issue was not resolved,{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Bad\" ~\"{{form}}\" ~\"reason::The issue was not resolved\""
    }
    ```
  * `Add tags` `feedback_exported`
* Conditions:
  * Meets ALL of:
    * `Tags` do not contain `feedback_exported`
    * `Satisfaction Reason` is `The issue was not resolved`

### [Create GitLab feedback issue when Zendesk survey is submitted with "timely manner" reason](https://gitlab.zendesk.com/agent/admin/triggers/360097003733)

* Actions:
  * Notify target - Create Gitlab issue when Zendesk survey is submitted with comments:
    ```json
    {% assign form = {{ticket.ticket_form}} %}

    {% if form contains 'Refund' %}
       {% assign form = 'form::Accounts Receivable' %}
     {% elsif form contains 'License' %}
       {% assign form = 'form::Upgrades & Renewals' %}
     {% elsif form contains 'GitLab.com' %}
       {% assign form = 'form::GitLab.com' %}
     {% elsif form contains 'Self' %}
       {% assign form = 'form::Self-managed' %}
     {% elsif form contains 'Security' %}
       {% assign form = 'form::Security' %}
     {% elsif form contains 'Hosted' %}
       {% assign form = 'form::GitHost' %}
      {% elsif form contains 'Community' %}
       {% assign form = 'form::GitLab Community Edition' %}
     {% else %}
     {% assign form = 'form::Other' %}
    {% endif %}

    {% assign plan = {{ticket.ticket_field_option_title_360004394559}} %}

    {% if plan contains 'Premium' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Starter' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Ultimate' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Gold' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Bronze' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Silver' %}
       {% assign plan = 'subscription::Customer' %}
     {% else %}
     {% assign plan = 'subscription::Free User' %}
    {% endif %}

    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Bad,{{form}},feedback::process,reason::The answer wasn't delivered in a timely manner,{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Bad\" ~\"{{form}}\" ~\"reason::The answer wasn't delivered in a timely manner\""
    }
    ```
  * `Add tags` `feedback_exported`
* Conditions:
  * Meets ALL of:
    * `Tags` do not contain `feedback_exported`
    * `Satisfaction Reason` is `The answer wasn't delivered in a timely manner`

### [Add ARR to new tickets](https://gitlab.zendesk.com/agent/admin/triggers/360090285754)

* Actions:
  * Notify target - Update ticket info:
    ```json
    {
      "ticket": {
        "custom_fields": [
          {
            "id": 360020288373,
            "value": "{{ticket.requester.organization.custom_fields.aar}}"
          }
        ]
      }
    }
    ```
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`

### [Remove Support Level tag if Account is expired](https://gitlab.zendesk.com/agent/admin/triggers/360091993233)

* Actions:
  * `Remove tags` `gold silver basic premium bronze`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `expired`
    * `Status` is less than `Closed`

### [Send emails to Fabian Zimmer when ticket keyword matches](https://gitlab.zendesk.com/agent/admin/triggers/360097740814)

* Actions:
  * Notify target - Send emails to Fabian Zimmer of tickets with keywords:
    > Hey Fabian, 
    > 
    > Ticket {{ticket.id}} contains one of your watched keywords. Follow the link below to go to the ticket:
    > 
    > {{ticket.url}}
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
  * Meets ANY of:
    * `Subject text` contains the string `Geo`
    * `Subject text` contains the string `Primary node`
    * `Subject text` contains the string `Secondary node`
    * `Subject text` contains the string `FDW`
    * `Comment text` is `FDW`
    * `Comment text` is `Secondary node`
    * `Comment text` is `Primary node`
    * `Comment text` is `Geo`

### [CC Shaun and Yolanda - New <redacted> tickets](https://gitlab.zendesk.com/agent/admin/triggers/360013161360)

* Actions:
  * `Add CC` `Yolanda Feldstein`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Organization` is `<redacted>`

### [Customer replied to 2fa auto-responder](https://gitlab.zendesk.com/agent/admin/triggers/360015370160)

* Actions:
  * `Add tags` `customer_reply_2fa_autoresponse`
  * `Remove tags` `suppress_pending_three_days`
* Conditions:
  * Meets ALL of:
    * `Status` changed from `Pending`
    * `Comment` is `Public`
    * `Current user` is `(end-user)`
    * `Tags` contains at least one of the following `autoresponder_2fa`
    * `Status` is `Open`

### [Assign Security tickets to Security team](https://gitlab.zendesk.com/agent/admin/triggers/360015592240)

* Actions:
  * Set `Assignee` to `Security Team`
* Conditions:
  * Meets ALL of:
    * `Form` is `Security Issue`
    * `Status` is `Solved`
    * `Assignee` is blank

### [Assign Abuse Report tickets to Security team](https://gitlab.zendesk.com/agent/admin/triggers/360015599319)

* Actions:
  * Set `Assignee` to `Security Team`
  * Change `Form` to `Security Issue`
* Conditions:
  * Meets ALL of:
    * `Subject text` contains the string `Abuse report`
  * Meets ANY of:
    * `Ticket` is `Created`

### [Tag when docs link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016330060)

* Actions:
  * `Add tags` `linked-to-docs`
* Conditions:
  * Meets ALL of:
    * `Comment text` is `docs.gitlab.com`
    * `Ticket` is `Updated`
    * `Current user` is `(agent)`

### [Tag when MR link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016435479)

* Actions:
  * `Add tags` `linked-to-mr`
* Conditions:
  * Meets ALL of:
    * `Comment text` is `/merge_requests/`
    * `Ticket` is `Updated`
    * `Current user` is `(agent)`

### [Tag when issue link in description](https://gitlab.zendesk.com/agent/admin/triggers/360016434919)

* Actions:
  * `Add tags` `linked-to-issue`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Current user` is `(agent)`
  * Meets ANY of:
    * `Comment text` is `https://gitlab.com/gitlab-org/`
    * `Comment text` is `https://gitlab.com/gitlab-com/`

### [Received at support@gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360016552319)

* Actions:
  * Change `Channel (Received at email)` to `support_gitlab_com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `support@gitlab.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at <redacted>](https://gitlab.zendesk.com/agent/admin/triggers/360016445060)

* Actions:
  * Change `Channel (Received at email)` to `emergency_gitlab_com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `<redacted?`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at mail-list@gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360016552339)

* Actions:
  * Change `Channel (Received at email)` to `mail-list_gitlab_com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `mail-list@gitlab.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at renewals@gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360016552359)

* Actions:
  * Change `Channel (Received at email)` to `renewals_gitlab_com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `renewals@gitlab.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at subscribers@gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360016552399)

* Actions:
  * Change `Channel (Received at email)` to `subscribers_gitlab_com`
  * `Add tags` `subscribers`
* Conditions:
  * Meets ALL of:
    * `Received at` is `subscribers@gitlab.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at security@gitlab.com](https://gitlab.zendesk.com/agent/admin/triggers/360016445080)

* Actions:
  * Change `Channel (Received at email)` to `security_gitlab_com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `security@gitlab.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at trials@gitlab.zendesk.com ](https://gitlab.zendesk.com/agent/admin/triggers/360016445100)

* Actions:
  * Change `Channel (Received at email)` to `trial_gitlab_zendesk_com`
  * `Add tags` `trial`
* Conditions:
  * Meets ALL of:
    * `Received at` is `trials@gitlab.zendesk.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Add prospect tag to sales assisted trials (SM)](https://gitlab.zendesk.com/agent/admin/triggers/360020284620)

* Actions:
  * `Add tags` `prospect`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Form` is `Self-Managed`
    * `Tell us about your GitLab subscription (SM)` is `Sales Assisted Trial`

### [Received at support@gitlab.zendesk.com](https://gitlab.zendesk.com/agent/admin/triggers/360017576860)

* Actions:
  * Change `Channel (Received at email)` to `support_gitlab_zendesk_com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `support@gitlab.zendesk.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at subscribers@gitlab.zendesk.com](https://gitlab.zendesk.com/agent/admin/triggers/44487963)

* Actions:
  * `Add tags` `subscribers`
  * Change `Channel (Received at email)` to `subscribers_gitlab.zendesk.com`
* Conditions:
  * Meets ALL of:
    * `Received at` is `subscribers@gitlab.zendesk.com`
    * `Ticket` is `Created`
    * `Channel (Received at email` is blank

### [Received at created by agent](https://gitlab.zendesk.com/agent/admin/triggers/360017718359)

* Actions:
  * Change `Channel (Received at email)` to `created_by_agent`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Current user` is `(agent)`
    * `Privacy` is `Ticket has public comments`
    * `Tags` do not contain `created_by_agent`

### [GitLab Plan - Premium](https://gitlab.zendesk.com/agent/admin/triggers/360017159720)

* Actions:
  * Change `GitLab Plan` to `Premium`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `premium`
    * `Organization` is not blank
    * `Tags` do not contain `silver gold basic bronze`
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Ticket` is `Updated`

### [GitLab Plan - Starter](https://gitlab.zendesk.com/agent/admin/triggers/360017309259)

* Actions:
  * Change `GitLab Plan` to `Starter`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `basic`
    * `Organization` is not blank
    * `Tags` do not contain `premium gold silver bronze`
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Ticket` is `Updated`

### [GitLab Plan - Gold](https://gitlab.zendesk.com/agent/admin/triggers/360017311899)

* Actions:
  * Change `GitLab Plan` to `Gold`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `gold`
    * `Organization` is not blank
    * `Tags` do not contain `premium silver bronze basic`
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Ticket` is `Updated`

### [GitLab Plan - Silver](https://gitlab.zendesk.com/agent/admin/triggers/360017311919)

* Actions:
  * Change `GitLab Plan` to `Silver`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `silver`
    * `Organization` is not blank
    * `Tags` do not contain `premium bronze basic gold`
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Ticket` is `Updated`

### [GitLab Plan - Bronze](https://gitlab.zendesk.com/agent/admin/triggers/360017160980)

* Actions:
  * Change `GitLab Plan` to `Bronze`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `bronze`
    * `Organization` is not blank
    * `Tags` do not contain `premium basic gold silver`
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Ticket` is `Updated`

### [Set all regions Schedule for relevant tickets on update](https://gitlab.zendesk.com/agent/admin/triggers/360027278900)

* Actions:
  * `Set schedule` to `Business hours`
* Conditions:
  * Meets ALL of:
    * `Schedule` is not `Business Hours`
    * `Tags` contains at least one of the following `bronze basic upgrades_and_renewals accounts_receivable githost.io all-regions prospect all_regions starter`

### [Set all regions Schedule for relevant tickets on update B](https://gitlab.zendesk.com/agent/admin/triggers/360027279300)

* Actions:
  * `Set schedule` to `Business hours`
* Conditions:
  * Meets ALL of:
    * `Schedule` is not `Business Hours`
    * `Priority` is `Low`

### [Set EMEA Schedule for relevant new tickets](https://gitlab.zendesk.com/agent/admin/triggers/360014064819)

* Actions:
  * `Set schedule` to `EMEA`
* Conditions:
  * Meets ALL of:
    * `Preferred Region for Support` is `Europe, Middle East, Africa`
    * `Priority` is not `Low`
    * `Tags` do not contain `bronze basic starter upgrades_and_renewals accounts_receivable githost.io security prospect`

### [Set APAC Schedule for relevant new tickets](https://gitlab.zendesk.com/agent/admin/triggers/360014043600)

* Actions:
  * `Set schedule` to `APAC`
* Conditions:
  * Meets ALL of:
    * `Preferred Region for Support` is `Asia Pacific`
    * `Priority` is not `Low`
    * `Tags` do not contain `bronze basic starter accounts_receivable upgrades_and_renewals githost.io security prospect`

### [Set AMER Schedule for relevant new tickets](https://gitlab.zendesk.com/agent/admin/triggers/360014043640)

* Actions:
  * `Set schedule` to `AMER`
* Conditions:
  * Meets ALL of:
    * `Preferred Region for Support` is `Americas, USA`
    * `Priority` is not `Low`
    * `Tags` do not contain `bronze starter basic upgrades_and_renewals accounts_receivable githost.io security prospect`

### [Make a summary reminder](https://gitlab.zendesk.com/agent/admin/triggers/360017377460)

* Actions:
  * Make private comment:
    > Hey there,
    >
    > It looks like this is a long running ticket. It might be beneficial to send out a summary reply to the user to ensure we are all on the same page!
  * `Add tags` `agent_reminder_10`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Tags` do not contain `agent_reminder_10`
    * `Current user` is `(end-user)`
    * `Agent replies` is greater than `10`
    * `Agent replies` is less than `15`
  * Meets ANY of:
### [Make a summary reminder (20 replies)](https://gitlab.zendesk.com/agent/admin/triggers/360017377480)

* Actions:
  * Make private comment:
    > Hey there,
    >
    > It looks like this is a long running ticket. It might be beneficial to send out a summary reply to the user to ensure we are all on the same page!
  * `Add tags` `agent_reminder_20`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Current user` is `(end-user)`
    * `Tags` do not contain `agent_reminder_20`
    * `Agent replies` is greater than `20`
    * `Agent replies` is less than `25`

### [Make a summary reminder (30 replies) ](https://gitlab.zendesk.com/agent/admin/triggers/360017377500)

* Actions:
  * Make private comment:
    > Hey there,
    >
    > It looks like this is a long running ticket (30 agent replies, wow). It might be beneficial to send out a summary reply to the user to ensure we are all on the same page!
  * `Add tags` `agent_reminder_30`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Current user` is `(end-user)`
    * `Tags` do not contain `agent_reminder_30`
    * `Agent replies` is greater than `30`
    * `Agent replies` is less than `35`

### [Make sure GitLab.com Form Tickets get tagged](https://gitlab.zendesk.com/agent/admin/triggers/360017879959)

* Actions:
  * `Add tags` `gitlab_com_form`
* Conditions:
  * Meets ALL of:
    * `Form` is `GitLab.com`
    * `Tags` do not contain `gitlab_com_form`
    * `Status` is less than `Closed`

### [Make sure no tickets are assigned to GitLab Support   ](https://gitlab.zendesk.com/agent/admin/triggers/360017743040)

* Actions:
  * Change `Assignee` to blank
* Conditions:
  * Meets ALL of:
    * `Assignee` is `5100224317`
    * `Status` is less than `Solved`

### [Remove follow up tag when tickets are set to Pending or Solved](https://gitlab.zendesk.com/agent/admin/triggers/360018166139)

* Actions:
  * `Remove tags` `ticket_assignee_follow_up`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Tags` contains at least one of the following `ticket_assignee_follow_up`
  * Meets ANY of:
    * `Status` is changed to `Pending`
    * `Status` is changed to `Solved`
    * `Status` is `Pending`
    * `Status` is `Solved`

### [Remove customer success slack notification tag](https://gitlab.zendesk.com/agent/admin/triggers/360018176619)

* Actions:
  * `Remove tags` `customer_success_slack_message`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Current user` is `(agent)`
    * `Tags` contains at least one of the following `customer_success_slack_message`
    * `Comment` is `Public`

### [Document this - Create issue in main issue tracker via GCP](https://gitlab.zendesk.com/agent/admin/triggers/360033444299)

* Actions:
  * Notify target - Create Gitlab doc issue via GCP (MAIN TRACKER):
    ```json
    {
    	"ticket_id": "{{ticket.id}}",
    	"ticket_url": "{{ticket.url}}",
    	"latest_comment": "{{ticket.latest_comment}}",
    	"current_user_id": "{{current_user.custom_fields.gitlab_user_id}}",
    	"current_user_name": "{{current_user.name}}"
    }
    ```
  * `Add tags` `needs-docs`
* Conditions:
  * Meets ALL of:
    * `Document this` is `Checked`
    * `Current user` is `(agent)`
    * `Comment` is `private`
    * `Ticket` is `Updated`
    * `Comment text` contains `Docs: `
    * `Comment text` contains `////`

### [Add internal note when customer's message is internal](https://gitlab.zendesk.com/agent/admin/triggers/360019008340)

* Actions:
  * Make private comment:
    > The below reply was marked as internal because the customer replied from an e-mail that is not included in CC or is not the original requestor of the ticket. Current workaround is to add the user to CC and reply. After that their replies will not be marked as internal anymore.
    > 
    > The requestor's email is: {{ticket.requester.email}}
    > 
    > The internal note was added by: {{current_user.email}}
  * `Add tags` `private_note_by_customer`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Current user` is `(end-user)`
    * `Comment` is `Private`
    * `Status` is `Open`

### [Unbabel for user](https://gitlab.zendesk.com/agent/admin/triggers/360019945159)

* Actions:
  * Notify target - unbabel-translate-for-user:
    > When an agent uses #unbabel with an internal comment after enabling translation for the ticket, this trigger informs Unbabel that a translation from the agent's language to the user's language has been requested. When the translation is complete, Unbabel uses the Zendesk API to post the reply as a public comment in the user's native language.
    > 
    > ***IMPORTANT***
    > Do not change the name of this trigger!
* Conditions:
  * Meets ALL of:
    * `Comment` is `Private`
    * `Tags` contains at least one of the following `unbabeled`

### [Unbabel for agent](https://gitlab.zendesk.com/agent/admin/triggers/360019737200)

* Actions:
  * Notify target - unbabel-translate-for-agent:
    > When the user responds to a ticket that has translation turned on, Unbabel will do an automatic machine translation and post the translation as an internal comment for the agent to read.
    > 
    > ***IMPORTANT***
    > Do not change the name of this trigger!
* Conditions:
  * Meets ALL of:
    * `Comment` is `Public`
    * `Tags` contains at least one of the following `unbabeled`

### [Set "Tell us more about yourself" - Gold](https://gitlab.zendesk.com/agent/admin/triggers/360020492739)

* Actions:
  * Change `Tell us about your GitLab subscription` to `Gold Customer`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `gold`
    * `Tags` do not contain `silver bronze premium basic prospect free_customer`
    * `Tell us about your GitLab subscription` is ``
    * `Form` is `GitLab.com`

### [Set "Tell us more about yourself" - Premium](https://gitlab.zendesk.com/agent/admin/triggers/360020288200)

* Actions:
  * Change `Tell us about your GitLab subscription (SM)` to `Premium Customer`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `premium`
    * `Tags` do not contain `silver bronze basic prospect free_customer gold`
    * `Tell us about your GitLab subscription (SM)` is blank
    * `Form` is `Self-Managed`

### [Set "Tell us more about yourself" - Reseller](https://gitlab.zendesk.com/agent/admin/triggers/360020288280)

* Actions:
  * Change `Tell us about your GitLab subscription (SM)` to `Reseller`
* Conditions:
  * Meets ALL of:
    * `Tell us about your GitLab subscription (SM)` is blank
    * `Form` is `Self-Managed`
    * `Account Type` is `Reseller`

### [Set "Tell us more about yourself" - Starter](https://gitlab.zendesk.com/agent/admin/triggers/360020288220)

* Actions:
  * Change `Tell us about your GitLab subscription (SM)` to `Starter Customer`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `basic`
    * `Tags` do not contain `silver bronze prospect free_customer gold premium`
    * `Tell us about your GitLab subscription (SM)` is blank
    * `Form` is `Self-Managed`

### [Set "Tell us more about yourself" - Bronze](https://gitlab.zendesk.com/agent/admin/triggers/360020492759)

* Actions:
  * Change `Tell us about your GitLab subscription` to `Bronze Customer`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `bronze`
    * `Tags` do not contain `silver premium basic prospect free_customer gold`
    * `Tell us about your GitLab subscription` is blank
    * `Form` is `GitLab.com`

### [Set "Tell us more about yourself" - Silver](https://gitlab.zendesk.com/agent/admin/triggers/360020285900)

* Actions:
  * Change `Tell us about your GitLab subscription` to `Silver Customer`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `silver`
    * `Tags` do not contain `bronze premium basic prospect free_customer gold`
    * `Tell us about your GitLab subscription` is blank
    * `Form` is `GitLab.com`

### [Set "Tell us more about yourself" - Free](https://gitlab.zendesk.com/agent/admin/triggers/360020492779)

* Actions:
  * Change `Tell us about your GitLab subscription` to `Free Customer`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `free_customer`
    * `Tags` do not contain `bronze premium basic prospect gold silver`
    * `Tell us about your GitLab subscription` is blank


### [Set "Tell us more about yourself" - Prospect](https://gitlab.zendesk.com/agent/admin/triggers/360020285940)

* Actions:
  * Change `Tell us about your GitLab subscription` to `Sales Assisted Trial`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `prospect com_sales_assisted_trial`
    * `Tags` do not contain `bronze premium basic prospect gold silver`
    * `Tell us about your GitLab subscription` is blank
    * `Form` is `GitLab.com`

### [Set "Tell us more about yourself" - Prospect SM](https://gitlab.zendesk.com/agent/admin/triggers/360020496759)

* Actions:
  * Change `Tell us about your GitLab subscription (SM)` to `Sales Assisted Trial`
* Conditions:
  * Meets ALL of:
    * `Tags` contains at least one of the following `prospect sm_sales_assisted_trial`
    * `Tags` do not contain `bronze premium basic prospect gold silver`
    * `Tell us about your GitLab subscription (SM)` is blank
    * `Form` is `Self-Managed`

### [Last reply by agent](https://gitlab.zendesk.com/agent/admin/triggers/360022961439)

* Actions:
  * `Add tags` `last_reply_by_agent`
* Conditions:
  * Meets ALL of:
    * `Current user` is `(agent)`
    * `Comment` is `Public`
    * `Tags` do not contain `last_reply_by_agent`

### [Last reply by customer](https://gitlab.zendesk.com/agent/admin/triggers/360022837620)

* Actions:
  * `Remove tags` `last_reply_by_agent`
* Conditions:
  * Meets ALL of:
    * `Current user` is not `(agent)`
    * `Comment` is `Present (public or private)`

### [(Salesforce Integration) Sync tickets to Salesforce (<redacted>)](https://gitlab.zendesk.com/agent/admin/triggers/360028138599)

* Actions:
  * Notify target - (Salesforce Integration) Sync tickets to Salesforce (<redacted>):
    ```json
    { "ticket_id": {{ticket.id}}, "salesforce_org_id": "<redacted>" }
    ```
* Conditions:
  * Meets ANY of:
    * `Ticket` is `Created`
    * `Status` is changed to `Solved`

### [(Salesforce Integration) Sync tickets to Salesforce (<redacted>)](https://gitlab.zendesk.com/agent/admin/triggers/360028131580)

* Actions:
  * Notify target - (Salesforce Integration) Sync tickets to Salesforce (<redacted>):
    ```json
    { "ticket_id": {{ticket.id}}, "salesforce_org_id": "<redacted>" }
    ```
* Conditions:

  * Meets ANY of:
    * `Status` is changed to `Closed`
    * `Tags` contains at least one of the following `closed_by_merge`

### [Open Ticket from Changed to Pending after Internal Note by Agent](https://gitlab.zendesk.com/agent/admin/triggers/360028699699)

* Actions:
  * Change `Status` to `Open`
* Conditions:
  * Meets ALL of:
    * `Status` is changed to `Pending`
    * `Comment` is `Private`
    * `Current user` is `(agent)`

### [Tag when handbook link in description](https://gitlab.zendesk.com/agent/admin/triggers/360034065299)

* Actions:
  * `Add tags` `linked-to-hb`
* Conditions:
  * Meets ALL of:
    * `Comment text` is `about.gitlab.com`
    * `Ticket` is `Updated`
    * `Current user` is `(agent)`

### [Add prospect tag to sales assisted trials (.com)](https://gitlab.zendesk.com/agent/admin/triggers/360034896299)

* Actions:
  * `Add tags` `prospect`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Updated`
    * `Form` is `GitLab.com`
    * `Tell us about your GitLab subscription` is `Sales Assisted Trial`

### [Professional Services Issue Types > Professional Services Form](https://gitlab.zendesk.com/agent/admin/triggers/360037395259)

* Actions:
  * Change `Form` to `Support for GitLab Professional Services`
  * Change `Priority` to `Normal`
* Conditions:
  * Meets ALL of:
    * `Ticket` is `Created`
    * `Channel` is `Email`
    * `Received at` is `proserv-education@gitlab.com`
  * Meets ANY of:
    * `Professional Services Issues Type` is `Education Services`
    * `Professional Services Issues Type` is `Other Professional Services`

### [Create GitLab feedback issue when Zendesk survey is submitted with "No reason provided"](https://gitlab.zendesk.com/agent/admin/triggers/360041667219)

* Actions:
  * Notify target - Create GitLab issue when Zendesk survey is submitted with comments:
    ```json
    {% assign form = {{ticket.ticket_form}} %}

    {% if form contains 'Refund' %}
       {% assign form = 'form::Accounts Receivable' %}
     {% elsif form contains 'License' %}
       {% assign form = 'form::Upgrades & Renewals' %}
     {% elsif form contains 'GitLab.com' %}
       {% assign form = 'form::GitLab.com' %}
     {% elsif form contains 'Self' %}
       {% assign form = 'form::Self-managed' %}
     {% elsif form contains 'Security' %}
       {% assign form = 'form::Security' %}
     {% elsif form contains 'Hosted' %}
       {% assign form = 'form::GitHost' %}
      {% elsif form contains 'Community' %}
       {% assign form = 'form::GitLab Community Edition' %}
     {% else %}
     {% assign form = 'form::Other' %}
    {% endif %}

    {% assign plan = {{ticket.ticket_field_option_title_360004394559}} %}

    {% if plan contains 'Premium' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Starter' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Ultimate' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Gold' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Bronze' %}
       {% assign plan = 'subscription::Customer' %}
     {% elsif plan contains 'Silver' %}
       {% assign plan = 'subscription::Customer' %}
     {% else %}
     {% assign plan = 'subscription::Free User' %}
    {% endif %}

    {
    	"title": "{{ticket.title}}",
    	"labels": "satisfaction::Bad,{{form}},reason::No reason provided,{{plan}}",
    	"description": "{{satisfaction.current_comment}}\n\n**Ticket:** [#{{ticket.id}}](https://{{ticket.url}})\n\n\n~\"satisfaction::Bad\" ~\"{{form}}\" ~\"reason::No reason provided\""
    }
    ```
  * `Add tags` `feedback_exported`
* Conditions:
  * Meets ALL of:
    * `Tags` do not contain `feedback_exported`
    * `Satisfaction` is `No reason provided`
    * `Satisfaction` is `Bad`
