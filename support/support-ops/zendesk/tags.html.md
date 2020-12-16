---
layout: handbook-page-toc
title: Zendesk Tags
description: Tags are words, or combinations of words, you can use to add more context to tickets and topics. Tags can be applied to tickets, users, and organizations.
---

# Zendesk Tags

From Zendesk:

> Tags are words, or combinations of words, you can use to add more context to
> tickets and topics. You can apply tags to tickets, users, and organizations.

As there are many, many tags, and new ones get added frequently, we will not
list them all out here. We will instead list out the most common ones and a bit
of detail to show how they are used. Following tags are used in Zendesk views and organizations.

| Tag | Use |
|-----|-----|
| bronze, silver, gold | Used for SLAs and views, SaaS focused |
| priority_prospect | Used for SLAs and views, prospect focused |
| basic*, starter*, premium, ultimate | Used for SLAs and views, SM focused |
| prospect, free_customer, trial, expired, community, hold , former_customer| Used for SLAs and views, Free focused |
| asia_pacific , americas__usa , europe__middle_east__africa , all_regions | Used for region specific views |
| missing_sla_tag | Used for SLAs and views, purpose is for tickets missing other SLA tags |

*Note: Basic and Starter are two different names of same plan.

Tags are also applied in our triggers and automations to make workflow easier. For example,
tag "`autoresponder_new_tickets`" is used in following triggers:
- Autoresponder New Tickets (created by customer - email)
- Autoresponder New Tickets (created by agent)
- Autoresponder New Tickets (created by customer - form)

Some most common used tags (list updates periodically) in our triggers and automations are:

 Tag | Use |
|-----|-----|
| autoresponder_new_tickets | Used for autoresponding on new tickets |
| needs-org | Used for needs-org view where no organization is associated with customer |
| pending_seven_days | Used in automation for 2fa tickets to automatically mark tickets as solved if pending for seven days |
| csat-survey-sent | Used in automation to request customer feedback aka CSAT |
| autoresponder_2fa | Used for autoresponding on 2FA related tickets |
| autosolve_ticket | Used in automation to confirm once the ticket is solved automatically. For e.g. pending_seven_days |
| security | Used for triggers like new Security ticket to Notify slack, autorespond and Assign to Security Team or Transferred Security Ticket |
| asia_pacific , americas__usa , europe__middle_east__africa , all_region | Used in triggers to set regional schedule for relevant tickets on update and also used in regional views|
| slah-2hr-breach-notification | Used in automation to notify on slack whenever a ticket is near breach and used both in SaaS and SM |
| agent_reminder_30 | Used as trigger to remind agent to make a summary of tickets after every 30 replies |
| linked-to-docs , linked-to-issue , linked-to-mr  | Used in trigger whenever agent uses a link to docs and/or issue and/or Merge request |

In case, if you have a question about any tag, feel free to let the support-ops team know.

Note: As Zendesk admin, it is important to know that "Set Tag" in Triggers/Automations' action, will remove all existing tags. It is not advisable to use "Set Tag" in any scenario. 
