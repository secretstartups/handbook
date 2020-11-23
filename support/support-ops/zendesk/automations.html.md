---
layout: handbook-page-toc
title: Zendesk Automations
description: Zendesk automations are similar to triggers but they execute when a time event occur after a ticket property was set or updated rather than immediately.  
---

# Zendesk Automations

Automations are similar to triggers because both define conditions and actions
that modify ticket properties and optionally send email notifications to
customers and agents. Where they differ is that automations execute when a time
event occurs after a ticket property was set or updated, rather than immediately
after a ticket is created or updated.

All automations run once every hour on all **non-closed tickets**. They execute,
or fire, on all tickets where conditions are met. This does not mean they fire
at the top/bottom of the hour though. They fire sometime _during_ the hour. They
should all fire during the same time period though.

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Note about Zendesk Automations

These are currently managed via Zendesk but are not version controlled.

## Current Active Automations

### [2FA autoresponder follow up](https://gitlab.zendesk.com/agent/admin/automations/360015370180)

* Actions:
  * Make a public comment:
    > Hey there,
    >
    > We wanted to follow up to see if you were able to generate new recovery codes via SSH. If you are still unable to access your account, simply reply to this email or go to https://support.gitlab.com/hc/requests/{{ticket.id}} and leave us a comment so we can further assist you.
    >
    > If we don't hear back from you, we'll automatically solve this ticket in 5 days.
    >
    > Best regards,
    > The GitLab Team
  * Add the tags `first_follow_up` and `suppress_pending_three_days`
  * `Status` is changed to `pending`
* Conditions:
  * Meets ALL of:
    * `Status` is `Pending`
    * `PENDING` greater than `48`
    * `current_tags` includes `autoresponder_2fa `
    * `current_tags` does not include `suppress_follow_up`, `first_follow_up`,
      `customer_reply_2fa_autoresponse`, `pending_three_days`, or
      `pending_seven_days`

### [Dormant Username Check - 2 Weeks](https://gitlab.zendesk.com/agent/admin/automations/94693587)

* Actions:
  * `Status` is changed to `Open`
  * Notify the ticket assignee with an email:
    * Subject: Dormant Username Check - {{ticket.requester.email}}
    * Body:
      > Hi,
      >
      > It's been 2 weeks since the owner of this dormant username check was contacted. The user hasn't responded yet. Please update the corresponding request.
      > 
      > {{ticket.link}}
      > 
      > Here's the ticket description:
      > {{ticket.description}}
  * Remove the tag `username_check`
* Conditions:
  * Meets ALL of:
    * `Tags` contain `username_check`
    * `Status` is `On-hold`
    * `Ticket: Hours since assingee update` is (calendar) greater than `335`
    * `Ticket: Hours since requester update` is (calendar) greater than `335`

### [Reopen on-hold tickets after 4 days](https://gitlab.zendesk.com/agent/admin/automations/360028978393)

* Actions:
  * Change `Status` to `open`
* Conditions:
  * Meets ALL of:
    * `Status` is `On-hold`
    * `Ticket: Hours since on-hold` is (calendar) greater than `96`

### [Dot-Com 2hrs until breach notification ( Gold / Silver )](https://gitlab.zendesk.com/agent/admin/automations/360036429614)

* Actions:
  * Update `Tag` to include `slah-2hr-breach-notification`
  * Notify the Slack Webhook:
    ```json
    {
    "channel":"C4XFU81LG",
    "username":"Gold/Silver Ticket Notice",
    "attachments":[
    {
    "color":"#FAB617",
    "author_name": "Ticket #{{ticket.id}} - {{ticket.title}}",
    "author_link": "https://gitlab.zendesk.com/agent/tickets/{{ticket.id}}"
    }
    ]
    }
    ```
* Conditions:
  * Meets ALL of:
    * `Ticket: Hours until next SLA breach` is (calendar) less than `2`
    * `Tags` includes `gold` or `silver`
    * `Status` is not `Pending`
    * `Tags` do not include `slah-2hr-breach-notification`
    * `Ticket: Form` is not `License Renewals and Upgrades`
    * `Ticket: Form` is not `Accounts Receivable / Refunds`
    * `Ticket: Form` is not `Security Issue`
    * `Status` is not `Solved`

### [Send message to #support-customer-success - Last SLA breach](https://gitlab.zendesk.com/agent/admin/automations/360018010320)

* Actions:
  * Notify #zd-customer-success-feed:
    ```json
    {
        "username": "TAMs and SALs - Breached ticket notification",
        "attachments": [
            {
                "color": "#FC6D27",
                "author_name": "Ticket #{{ticket.id}}",
    			"author_link": "https://gitlab.zendesk.com/agent/tickets/{{ticket.id}}",
                "text": "A ticket from {{ticket.organization.name}} breached over 24 hours ago!",
                "fields": [
                    {
                        "title": "Priority",
                        "value": "{{ticket.priority}}",
                        "short": false
                    },
    				{
    					"title": "Technical Account Manager",
                        "value": "{{ticket.organization.custom_fields.technical_account_manager}}",
                        "short": false
    				},
    				{
    					"title": "Account Owner",
                        "value": "{{ticket.organization.custom_fields.account_owner}}",
                        "short": false
    				}
                ]
            }
        ]
    }
    ```
  * Update `Tag` to include `customer_success_slack_message`
* Conditions:
  * Meets ALL of:
    * `Organization` is not blank
    * `Tags` do not include `customer_success_slack_message`
    * `Ticket: Hour since last SLA breach` is (business) greater than `24`
    * `Organization: GitLab Plan` is not `Custom`
    * `Organization: GitLab Plan` is not `Bronze`
    * `Organization: GitLab Plan` is not `Silver`
    * `Organization: GitLab Plan` is not `Gold`
    * `Organization: GitLab Plan` is not `Hold`
    * `Organization: GitLab Plan` is not `Community`
  * Meets ANY of:
    * `Organization: Technical Account Manager` is not blank
    * `Organization: Account Owner` is not blank

### [Send message to #support-customer-success](https://gitlab.zendesk.com/agent/admin/automations/360018176639)

* Actions:
  * Notify #zd-customer-success-feed
    ```json
    {
        "username": "TAMs and SALs - Open ticket with no update",
        "attachments": [
            {
                "color": "#FC6D27",
                "author_name": "Ticket #{{ticket.id}}",
    			"author_link": "https://gitlab.zendesk.com/agent/tickets/{{ticket.id}}",
                "text": "A ticket from {{ticket.organization.name}} has been open for more than 24 hours!",
                "fields": [
                    {
                        "title": "Priority",
                        "value": "{{ticket.priority}}",
                        "short": false
                    },
    				{
    					"title": "Technical Account Manager",
                        "value": "{{ticket.organization.custom_fields.technical_account_manager}}",
                        "short": false
    				},
    				{
    					"title": "Account Owner",
                        "value": "{{ticket.organization.custom_fields.account_owner}}",
                        "short": false
    				}
                ]
            }
        ]
    }
    ```
  * Update `Tag` to include `customer_success_slack_message`
* Conditions:
  * Meets ALL of:
    * `Organization` is not blank
    * `Tags` do not include `customer_success_slack_message`
    * `Ticket: Hours since open` is (business) greater than `24`
    * Change `Status` to `open`
    * `Organization: GitLab Plan` is not `Custom`
    * `Organization: GitLab Plan` is not `Bronze`
    * `Organization: GitLab Plan` is not `Silver`
    * `Organization: GitLab Plan` is not `Gold`
    * `Organization: GitLab Plan` is not `Hold`
    * `Organization: GitLab Plan` is not `Community`
    * `Ticket: Hours since last assignee update` is (calendar) greater than `48`
  * Meets ANY of:
    * `Organization: Technical Account Manager` is not blank
    * `Organization: Account Owner` is not blank

### [Re-open on-hold DMCA requests for requestor follow-up](https://gitlab.zendesk.com/agent/admin/automations/360036581334)

* Actions:
  * Change `Status` to `open`
  * Remove `vetted_dmca_request` from `Tags` 
* Conditions:
  * Meets ALL of:
    * `Ticket: Hours since on-hold` is (calendar) `24`
  * Meets ANY of:
    * `Tags` includes `vetted_dmca_request` and `dmca_request`

### [email abuse-reports@gitlab.com on vetted dmca requests - gitlab-com/www-gitlab-com/merge_requests/14682](https://gitlab.zendesk.com/agent/admin/automations/360055880793)

* Actions:
  * Email abuse-reports@gitlab.com
    > {{ticket.title}} - {{ticket.url}}
    > {{ticket.description}}
    > 
    > {{ticket.comments_formatted}}
  * Remove `email-abuse-reports` from `Tags`
  * `Ticket: Assignee` changed to `Security Team`
  * Update `Tag` to include `emailed-abuse-reports`
* Conditions:
  * Meets ALL of:
    * `Tags` includes `email-abuse-reports`
    * `Status` less_than `solved`

### [Remind agent of Assigned On-Hold ticket](https://gitlab.zendesk.com/agent/admin/automations/360080402734)

* Actions:
  * Email ticket assignee:
    * Subject: Ticket {{ticket.id}} needs your attention
    * Body:
      > Hello {{ticket.assignee.first_name}},
      > 
      > It seems you added a public reply to this ticket and left it On-Hold. Do you have a follow up for the end-user? View the ticket in Zendesk: {{ticket.url}}
  * Update `Tag` to include `ticket_assignee_follow_up`
* Conditions:
  * Meets ALL of:
    * Change `Status` to `On-hold`
    * `Tags` includes `auto_assign_open_ticket`
    * `Tags` do not include `ticket_assignee_follow_up`
    * `Ticket: Hours since on-hold` is (calendar) greater than `48`

### [Remind agent of Assigned Open ticket](https://gitlab.zendesk.com/agent/admin/automations/360080726273)

* Actions:
  * Email ticket assignee:
    * Subject: Ticket {{ticket.id}} needs your attention
    * Body:
    > Hello {{ticket.assignee.first_name}},
    >
    > A ticket you have assigned to you has re-opened. You would want to review the ticket in question to see if it requires an update. You can view the ticket in Zendesk via {{ticket.url}}
    >
    > Thank you,
  * Update `Tag` to include `ticket_assignee_follow_up`
* Conditions:
  * Meets ALL of:
    * Change `Status` to `open`
    * `Tags` does not include `ticket_assignee_follow_up`
    * `Ticket: Hours since open` (calendar) greater_than `48`
    * `Ticket: Assignee` is not blank

### [Solve tickets that have been pending for 7 days without a follow up](https://gitlab.zendesk.com/agent/admin/automations/223598668)

* Actions:
  * Change `Status` to `solved`
  * Update `Tag` to include `pending_seven_days` and `autosolve_ticket`
* Conditions:
  * Meets ALL of:
    * `Ticket: Hours since pending` is (calendar) greater than `168`
    * `Tags` includes `pending_three_days` and `first_follow_up`
    * `Tags` do not include `pending_backlog` or `username_check`
    * Change `Status` to `Pending`

### [Pending notification 3 days](https://gitlab.zendesk.com/agent/admin/automations/39696353)

* Actions:
  * Email requester:
    * Subject: [{{ticket.account}}] Pending request: {{ticket.title}}
    * Body:
      > Hi there,
      >
      > This is an email to remind you that your request (#{{ticket.id}}) has been responded to by our team. If we don't hear back from you, we'll automatically solve it in 4 days.
      >
      > {{ticket.comments_formatted}}
  * Update `Tag` to include `pending_three_days `
* Conditions:
  * Meets ALL of:
    * `Ticket: hours since Pending` is (calendar) greater than `72`
    * `Tags` not_includes `pending_backlog`, `pending_three_days`, or `suppress_pending_three_days`
    * Change `Status` to `Pending`


### [Close ticket 4 days after status is set to solved](https://gitlab.zendesk.com/agent/admin/automations/39696333)

* Actions:
  * Change `Status` to `closed`
* Conditions:
  * Meets ALL of:
    * Change `Status` to `solved`
    * `Ticket: Hours since solved` is (calendar) greater than `96`
    * `Tags` do not include `non_response_pending`

### [Request customer satisfaction rating (System Automation)](https://gitlab.zendesk.com/agent/admin/automations/46784293)

* Actions:
  * Email requester:
    * Subject:
    * Body:
      > Hello {{ticket.requester.name}},
      >
      > We'd love to hear what you think of our customer service. Please take a moment to answer one simple question by clicking either link below:
      >
      > {{satisfaction.rating_section}}
      >
      > Here's a reminder of what your ticket was about:
      >
      > {{ticket.comments_formatted}}
  * Change `Ticket: Satisfaction` to `offered to requester`
  * Update `Tag` to include `csat-survey-sent`
* Conditions:
  * Meets ALL of:
    * `Status` is less than`closed`
    * `Ticket: Hours since solved` is (calendar) `24`
    * `Ticket: Satisfaction` is `Unoffered`
    * `Ticket: Organization` is not `GitLab`
    * `Tags` do not include `pending_old` or `spam_ticket`

### [Self-Managed 2hour until breach notification (Premium/Ultimate)](https://gitlab.zendesk.com/agent/admin/automations/360031321440)

* Actions:
  * Notify slack webhook:
    ```json
    {
    "channel":"C4Y5DRKLK",
    "username":"[SLAH] under 2hrs until breach (Premium/Ultimate)",
    "attachments":[
    {
    "color":"#78A300",
    "text":"Ticket #{{ticket.id}} -{{ticket.title}}\nhttps://gitlab.zendesk.com/agent/tickets/{{ticket.id}}"
    }
    ]
    }
    ```
  * Update `Tag` to include `slah-2hr-breach-notification`
* Conditions:
  * Meets ALL of:
    * `Ticket: Hours until next SLA breach` is (calendar) less than `2`
    * `Tags` includes `premium` or `ultimate`
    * `Status` is not `Pending`
    * `Ticket: Form` is not `GitLab.com`
    * `Ticket: Form` is not `License Renewals and Upgrades`
    * `Ticket: Form` is not `GitLab.com`
    * `Ticket: Form` is not `Security Issue`
    * `Tags` do not include `slah-2hr-breach-notification`

### [Self-Managed 2hour until breach notification (Starter)](https://gitlab.zendesk.com/agent/admin/automations/360031297659)

* Actions:
  * Notify slack webhook
    ```json
    {
    "channel":"C4Y5DRKLK",
    "username":"[SLAH] under 2hrs until breach (Starter)",
    "attachments":[
    {
    "color":"#78A300",
    "text":"Ticket #{{ticket.id}} -{{ticket.title}}\nhttps://gitlab.zendesk.com/agent/tickets/{{ticket.id}}"
    }
    ]
    }
    ```
  * Update `Tag` to include `slah-2hr-breach-notification`
* Conditions:
  * Meets ALL of:
    * `Ticket: Hour until next SLA breach` is (calendar) `2`
    * `Tags` includes `basic` or `starter`
    * `Status` is not `Pending`
    * `Ticket: Form` is not `GitLab.com`
    * `Ticket: Form` is not `License Renewals and Upgrades`
    * `Ticket: Form` is not `Accounts Receivable / Refunds`
    * `Ticket: Form` is not `Security Issue`
    * `Tags` do not include `slah-2hr-breach-notification`

### [Dot-Com 2hour until breach notification (Bronze)](https://gitlab.zendesk.com/agent/admin/automations/360032494839)

* Actions:
  * Update `Tag` to include `slah-2hr-breach-notification`
  * Notify slack webhook:
    ```json
    {
    "channel":"C4XFU81LG",
    "username":"Bronze Ticket Notice",
    "attachments":[
    {
    "color":"#FAB617",
    "author_name": "Ticket #{{ticket.id}} - {{ticket.title}}",
    "author_link": "https://gitlab.zendesk.com/agent/tickets/{{ticket.id}}"
    }
    ]
    }
    ```
* Conditions:
  * Meets ALL of:
    * `Ticket: Hours until next SLA breach` is (calendar) less than `2`
    * `Tags` includes `bronze`
    * `Status` is not `Pending`
    * `Tags` do not include `slah-2hr-breach-notification`
    * `Ticket: Form` is not `License Renewals and Upgrades`
    * `Ticket: Form` is not `Accounts Receivable / Refunds`
    * `Ticket: Form` is not `Security Issue`
    * `Status` is not `solved`
