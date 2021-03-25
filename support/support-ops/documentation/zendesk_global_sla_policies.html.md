---
layout: handbook-page-toc
title: 'SLA Policies'
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
use the top most SLA based on the list of our SLAs (see below).

**NOTE**: What appears here is all titled SLA, but many of these are internal
SLOs instead. They are titled SLA because that is what Zendesk calls the
setting.

## Changing SLA Policies

This requires an exact process, which is detailed via the
[SLA Change Process workflow](../workflows/sla_change_process.html)

## Current SLA Policies

### Emergency SLA

* Conditions:
  * Matches ALL of:
    * `Received at` is `<redacted>`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30m | 30m | 30m| 30m |
| Next reply time | 4h | 4h | 4h | 4h |
| Hours of operation | Calendar hours | Calendar hours | Calendar hours | Calendar hours |

### Silver & gold SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `gold silver`
    * `Tags` contain none of `ar_form lnr_form proserv_form security_form prospect`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30m | 4h | 8h| 24h |
| Next reply time | 4h | 4h | 8h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Premium & Ultimate SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `premium ultimate`
    * `Tags` contain none of `ar_form lnr_form proserv_form security_form prospect`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 30m | 4h | 8h| 24h |
| Next reply time | 4h | 4h | 8h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Bronze SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `bronze`
    * `Tags` contain none of `upgrades_and_renewals security accounts_receivable`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Accounts Receivable SLA

* Conditions:
  * Matches ALL of:
    * `Form` is `Accounts Receivable / Refunds`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 4h | 16h | 24h| 36h |
| Next reply time | 4h | 16h | 24h | 36h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Starter SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `basic starter`
    * `Tags` contain none of `upgrades_and_renewals security accounts_receivable`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Upgrades & Renewals SLA

* Conditions:
  * Matches ALL of:
    * `Form` is `License Renewals and Upgrades`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 8h | 8h | 8h| 8h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Prospects SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `priority_prospect`
    * `Tags` contains none of `ar_form lnr_form security_form proserv_form prospect`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Security SLA

* Conditions:
  * Matches ALL of:
    * `Form` is `Security Issue`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Professional Services SLA

* Conditions:
  * Matches ALL of:
    * `Form` is `Support for GitLab Professional Services`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 72h | 72h | 72h| 72h |
| Next reply time | 72h | 72h | 72h | 72h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Missing SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `missing_sla_tag`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### Consumption SLA

* Conditions:
  * Matches ALL of:
    * `Tags` contains at least one of `consumption_ci_minutes consumption_storage consumption_other consumption`
    * `Tags` contains none of of `basic starter premium ultimate bronze silver gold priority_prospect consumption_paid`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 12h | 12h | 12h| 12h |
| Next reply time | 24h | 24h | 24h | 24h |
| Hours of operation | Business hours | Business hours | Business hours | Business hours |

### JiHu SLA

* Conditions:
  * Matches ALL of:
    * `Form` is `JiHu`
* Targets:

| Target | Urgent | High | Normal | Low |
|--------|:------:|:----:|:------:|:---:|
| First reply time | 24h | 24h | 24h| 24h |
| Next reply time | 24h | 24h | 24h | 24h |
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
