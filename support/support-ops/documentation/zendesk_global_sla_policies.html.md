---
layout: handbook-page-toc
title: 'Zendesk Global SLA Policies'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global SLA policies'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

As per
[Zendesk](https://support.zendesk.com/hc/en-us/articles/204770038-Defining-and-using-SLA-policies):

> A Service Level Agreement, or SLA, is an agreed upon measure of the response
> and resolution times that your support team delivers to your customers.
> Providing support based on service levels ensures that you're delivering
> measured and predictable service. It also provides greater visibility when
> problems arise.

Keep in mind only 1 SLA policy can be in place for a ticket. As such, it will
use the top most SLA based on the list of our SLAs (see below). When multiple of 
paid plan tags appear on the same ticket, it will apply the SLA
policy that comes first (order wise). See
[Zendesk Global Organizations](zendesk_global_organizations.html) for more details.

**NOTE**: What appears here is all titled SLA, but many of these are internal
SLOs instead. They are titled SLA because that is what Zendesk calls the
setting.

## Changing SLA Policies

This requires an exact process, which is detailed via the
[SLA Change Process workflow](../workflows/sla_change_process.html)

## Current SLA Policies

### [Priority Support](https://gitlab.zendesk.com/api/v2/slas/policies/166808.json)

* Description: For Ultimate, Premium, Gold, Silver, and Priority Prospects
* Conditions
  * All
    * Tags contains at least one of the following
      * `premium` `ultimate` `gold` `silver` `priority_prospect`
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
  * Any
    * Form is SaaS
    * Form is SaaS Account
    * Form is Self-Managed
    * Form is Open Partner
    * Form is Select Partner
    * Form is Alliance Partners

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30min | 4hrs | 8hrs | 24hrs |
| Next reply time | 4hrs | 4hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [Emergency Support](https://gitlab.zendesk.com/api/v2/slas/policies/125528.json)

* Description: For emergencies
* Conditions
  * All
    * Form is Emergencies
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30min | 30min | 30min | 30min |
| Next reply time | 4hrs | 4hrs | 4hrs | 4hrs |
| Hours of operation | Calendar hours | Calendar hours | Calendar hours | Calendar hours |

### [Standard Support](https://gitlab.zendesk.com/api/v2/slas/policies/309627.json)

* Description: For Bronze and Starter
* Conditions
  * All
    * Tags contains at least one of the following:
      * `bronze` `starter`
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
  * Any
    * Form is SaaS
    * Form is SaaS Account
    * Form is Self-Managed
    * Form is Open Partner
    * Form is Select Partner
    * Form is Alliance Partners

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Next reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [Support Operations](https://gitlab.zendesk.com/api/v2/slas/policies/360000220039.json)

* Description: For Support Ops tickets
* Conditions
  * All
    * Form is Support Ops
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Next reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [Consumption Support](https://gitlab.zendesk.com/api/v2/slas/policies/360000198999.json)

* Description: For consumption only customers
* Conditions
  * All
    * Tags contains at leadt one of the following:
      * `consumption_only`
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
    * Form is not L&R
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 12hrs | 12hrs | 12hrs | 12hrs |
| Next reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [Support Managers](https://gitlab.zendesk.com/api/v2/slas/policies/360000221140.json)

* Description: For Support Manager tickets
* Conditions
  * All
    * Form is Manager Feedback
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Next reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [Security](https://gitlab.zendesk.com/api/v2/slas/policies/360000099179.json)

* Description: For Security tickets
* Conditions
  * All
    * Form is Security
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Next reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [Billing](https://gitlab.zendesk.com/api/v2/slas/policies/360000062674.json)

* Description: For Billing tickets
* Conditions
  * All
    * Form is Billing
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 4hrs | 16hrs | 24hrs | 36hrs |
| Next reply time | 48hrs | 48hrs | 48hrs | 48hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [Triage](https://gitlab.zendesk.com/api/v2/slas/policies/360000190739.json)

* Description: For tickets needing triaging
* Conditions
  * All
  * Any
    * Ticket Stage is Needs Org
    * Ticket Stage is Needs Triage
    * Tags contain at least one of the following:
      * `missing_sla_tag`

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30min | 30min | 30min | 30min |
| Next reply time | 4hrs | 4hrs | 4hrs | 4hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [L&R](https://gitlab.zendesk.com/api/v2/slas/policies/360000048854.json)

* Description: For L&R tickets
* Conditions
  * All
    * Form is L&R
    * Ticket Stage is not Needs Org
    * Ticket Stage is not Needs Triage
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 8hrs | 8hrs | 8hrs | 8hrs |
| Next reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### [JiHu](https://gitlab.zendesk.com/api/v2/slas/policies/360000195579.json)

* Description: For JiHu tickets
* Conditions
  * All
    * Form is JiHu
  * Any

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Next reply time | 24hrs | 24hrs | 24hrs | 24hrs |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

## Special Situations

There are special situations in which the SLA clock will not behave as we would
like. We have implemented custom solutions for these situations, as follows.

### End-user Internal Note

When an unauthorized end-user (an "end-user" in Zendesk is a non-agent)
replies to a ticket, Zendesk makes the reply an
internal note. While this is needed for preventing unauthorized communication on
a ticket, it also causes the SLA clock to work improperly until the
original requester replies. To fix this, we have a few mechanisms in place:

1. When the unauthorized end-user replies to a ticket, Zendesk makes it an
  internal note and opens the ticket. The SLA clock does not start.
1. The trigger
   [`Ticket::Internal Comment::Note when customer’s message is internal`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20010334&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360019008340)
   fires, doing the following:
   * Adds the tags `private_note_by_customer public_reply_needed_for_sla`
   * Adds a GitLab-controlled end-user as a CC on the ticket
     * The "GitLab-controlled end-user" is a phony user with a "@example.com"
       email address
   * Leaves an internal note detailing what has occurred (see below)
1. The automation
   [`Ticket::Autoresponder::Reply as end-user`](https://gitlab.com/search?utf8=%E2%9C%93&group_id=2573624&project_id=20012489&scope=&search_code=true&snippets=false&repository_ref=master&nav_source=navbar&search=id%3A+360073085279)
   fires within an hour, replying as the GitLab-controlled end-user (see
   below for message). The SLA clock starts as a result of the reply.

Internal note made via trigger:

> The below reply was marked as internal because the customer replied from an e-mail that is not included in CC or is not the original requestor of the ticket. Current workaround is to add the user to CC and reply. After that their replies will not be marked as internal anymore.
> 
> The requestor's email is: {{ticket.requester.email}}
> 
> The internal note was added by: {{current_user.email}}

Reply sent via automation:

> Greetings,
> 
> I am your friendly GitLab Support Robot. GitLab Support has received a message from a user ({{author}}) who is not authorized on this ticket. It has been added as an internal note.
> 
> As they are not authorized to reply on this ticket, the reply did not get posted properly. If you would like to authorize {{author}} to participate on this ticket, please let us know. Only with your approval will we add them as an authorized participant on the ticket, including putting them into the CC list.
