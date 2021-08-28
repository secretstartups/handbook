---
layout: handbook-page-toc
title: 'Routing'
category: 'Zendesk Global'
description: 'An overview of the Zendesk Global routing'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Ticket routing is arguably one of the most important components of how Zendesk
works. From Zendesk's
[own documentation](https://support.zendesk.com/hc/en-us/articles/360047781134-Routing-options-for-incoming-tickets-):

> One of the best ways to increase agent efficiency and streamline your support
> tasks is to use Zendesk routing options to manage your ticket workflows.
> Routing options provide a power set of tools to make sure your tickets get to
> the right agent as quickly as possible.

With it being so important, understanding the ins and outs of how tickets route
from creation to being worked is vital to truly understanding how GitLab uses
Zendesk as a whole.

## Stages

As this can get complex, Support Ops breaks down the routing into stages. These
stages are not meant to say one flows into the next into the next. Instead, they
help to break down the complexity into more digestable chunks. Some of these can
happen at the same time, while others depend on previous stages to complete
before they can run.

## Creation Stage

This is where tickets all start. This is what happens immeditaly once tickets
are created.

```mermaid
graph TD;
  Start-->HowCreated;
  HowCreated-->|"Email"| Email;
  Email-->|"No"| InvalidEmail;
  Email-->|"Yes"| ValidEmail;
  InvalidEmail--> CloseTicket;
  HowCreated-->|"Webform"| Webform;
  Webform--> OpenPartner;
  OpenPartner-->|"Yes"| ChangeRequester;
  ChangeRequester--> NewTicketReply;
  OpenPartner-->|"No"| NewTicketReply;
  ValidEmail--> Emergency;
  Emergency-->|"Yes"| EmergencyTicket;
  EmergencyTicket--> Pagerduty;
  Pagerduty--> SkipStages;
  Emergency-->|"No"| UserInfo;
  NewTicketReply-->UserInfo;
  UserInfo--> End;
  Start[Ticket is created];
  HowCreated{"How was it created?"};
  Webform["Set channel to Webform"];
  Email{"Is it a valid email source?"};
  InvalidEmail["Reject ticket via autoresponder"];
  CloseTicket["Ticket is closed out, stopping all future processing"];
  ValidEmail["Set form and channel based on source"];
  Emergency{"Is it an emergency ticket?"};
  EmergencyTicket["Set form, priority, severity for emergencies"]
  Pagerduty["Trigger Pagerduty for emergency ticket"];
  SkipStages["Set Ticket Stage to FRT, skipping several stages"];
  click InvalidEmail "https://gitlab.zendesk.com/agent/admin/triggers/360076070520" _blank;
  OpenPartner{"Is it using the Open Partner form?"};
  ChangeRequester["Change the requester"];
  click ChangeRequester "https://gitlab.zendesk.com/agent/admin/triggers/360056818739" _blank;
  NewTicketReply["Send confirmation email for new ticket"];
  click NewTicketReply "https://gitlab.zendesk.com/agent/admin/triggers/360023419260" _blank;
  UserInfo["Post internal note with user details"];
  click UserInfo "https://gitlab.zendesk.com/agent/admin/triggers/360073389999" _blank;
  End["End of stage"];
```

## Needs Org Stage

This stage focuses around associating an end-user to an organization.

```mermaid
graph TD;
  Start-->|"No"| Zapier;
  Zapier--> DidItWork;
  DidItWork-->|"No"| DoesItMatter;
  DoesItMatter-->|"Yes"| Partner;
  Partner-->|"Select"| CloseSelect;
  Partner-->|"Alliance"| CloseAlliance;
  Partner-->|"Neither"| AskEntitlement;
  AskEntitlement--> UserReplies;
  UserReplies--> CanAssociate;
  CanAssociate-->|"No"| AgentReplies;
  CanAssociate-->|"Yes"| AgentAssociates;
  AgentReplies--> UserReplies;
  Start-->|"Yes"| End;
  DidItWork-->|"Yes"| End;
  DoesItMatter-->|"No"| End;
  AgentAssociates--> End;
  Start{"Is the user associated to an organization?"};
  Zapier["Attempt auto-association via Zapier"];
  click Zapier "https://gitlab.zendesk.com/agent/admin/triggers/360065733559" _blank;
  DidItWork{"Did the user get associated via Zapier"};
  DoesItMatter{"Is the form a support form (SaaS/SaaS Account/SM/Partner/L&R)?"};
  Partner{"Is the form Select or Alliance Partner?"};
  CloseSelect["Close out ticket via trigger"];
  click CloseSelect "https://gitlab.zendesk.com/agent/admin/triggers/360076309439" _blank;
  CloseAlliance["Close out ticket via trigger"];
  click CloseAlliance "https://gitlab.zendesk.com/agent/admin/triggers/360076004060" _blank;
  AskEntitlement["Ask for support entitlement"];
  click AskEntitlement "https://gitlab.zendesk.com/agent/admin/triggers/360053535679" _blank;
  UserReplies["The end-user replies"];
  CanAssociate{"Can we associate now?"}
  AgentReplies["Agent asks for more info"];
  AgentAssociates["Agent associates user to an org"];
  End["Stage is set to Needs Triage"];
```

In this diagram, the zapier process goes as follows:

* Trigger sends information to Zapier
* Zapier searches SFDC for the contact

* If found, zapier sends back info to the ticket to update the user and add the
  tag `zapier_test_success`.
* If not found, zapier sends back info to the ticket to add the tag
  `zapier_test_failed`.

## Triage Stage

This stage is currently a placeholder. The plan is to have this stage cover
missing metadata, however for the time being, this stage is skipped.

```mermaid
graph TD;
  Start["Stage is skipped"];
  click Start "https://gitlab.zendesk.com/agent/admin/triggers/360076288879" _blank;
```

## Categorization Stage

This stage covers setting the Area of Focus on tickets.

```mermaid
graph LR;
  Start-->Form;
  Form-->|"L&R"| License;
  Form-->|"CMOC"| CMOC;
  Form-->|"SaaS Account"| SaaSAccount
  Form-->|"Other"| Free;
  Free-->|"Yes"| Free1;
  Free-->|"No"| ProblemType;
  ProblemType-->|"Auth"| Authentication;
  ProblemType-->|"CI/CD/Runners"| CICD;
  ProblemType-->|"Secure"| Secure;
  ProblemType-->|"Performance (SaaS)"| Management;
  ProblemType-->|"Import/Export"| Management;
  ProblemType-->|"Project management"| Features;
  ProblemType-->|"Installation help"| Instance;
  ProblemType-->|"Upgrades/migrations"| Instance;
  ProblemType-->|"Performance (SM)"| Instance;
  ProblemType-->|"Monitoring"| Instance;
  ProblemType-->|"Other"| End;
  License--> End;
  CMOC--> End
  SaaSAccount--> End;
  Free1--> End;
  Authentication--> End;
  CICD--> End;
  Secure--> End;
  Management--> End;
  Features--> End;
  Instance--> End;
  Start["Set Area of Focus to Other"];
  Form{"What form is this?"};
  License["Set Area of Focus to L&R"];
  CMOC["Set Area of Focus to GitLab Incidents"];
  SaaSAccount["Set Area of Focus to SaaS Account"];
  Free{"Is this a free user support ticket?"};
  Free1["Set Area of Focus to Free user"];
  ProblemType{"What is the problem type?"};
  Authentication["Set Area of Focus to Authentication/Authorization"];
  CICD["Set Area of Focus to CI/CD"];
  Secure["Set Area of Focus to Secure"];
  Management["Set Area of Focus to Project/Group Management"];
  Features["Set Area of Focus to GitLab Features"];
  Instance["Set Area of Focus to Instance Management"];
  End["Move to Routing stage"];
```

## Routing Stage

This stage handles the big routing steps, namely priority and schedule. These
two fields will determine the initial SLA on a ticket. A big not here is this
stage is not _linear_. The steps for priority are listed first, but that
doesn't mean a hinderance there would block the schedule steps. The flowchart
refers purely to their position in Zendesk.

```mermaid
graph TD;
  Start-->Form;
  Form-->|"Yes"| Stage;
  Form-->|"No"| NonSupport;
  Stage-->|"Needs Org"| NeedsOrg;
  Stage-->|"Needs Triage"| NeedsTriage;
  Stage-->|"FRT"| Plan;
  Stage-->|"NRT"| NRT;
  Plan-->|"Ultimate"| Priority;
  Plan-->|"Premium"| Priority;
  Plan-->|"Starter/Bronze"| Starter;
  Plan-->|"Consumption"| Priority;
  Priority-->|"High"| PreferredRegion;
  Priority-->|"Medium"| PreferredRegion;
  Priority-->|"Low"| Low;
  PreferredRegion-->|"All Regions"| AllRegions;
  PreferredRegion-->|"AMER"| AMER;
  PreferredRegion-->|"APAC"| APAC;
  PreferredRegion-->|"EMEA"| EMEA;

  Start["Set schedule to Business Hours by default"]
  Form{"Is this SaaS, SaaS Account,<br>Self-managed, or a Partner form?"}
  Stage{"What is the ticket stage value?"}
  Plan{"What is the support level?"}
  Priority{"What is the ticket priority?"}
  PreferredRegion{"What is the preferred region of support?"}
  AMER["Set schedule to AMER"]
  APAC["Set schedule to APAC"]
  EMEA["Set schedule to EMEA"]
  NRT["Set schedule to Business Hours"]
  NeedsOrg["Set schedule to Business Hours"]
  NeedsTriage["Set schedule to Business Hours"]
  Starter["Set schedule to Business Hours"]
  Low["Set schedule to Business Hours"]
  AllRegions["Set schedule to Business Hours"]
  NonSupport["Set schedule to Business Hours"]
  click Start "https://gitlab.zendesk.com/agent/admin/triggers/1900000930334" _blank;
  click NonSupport "https://gitlab.zendesk.com/agent/admin/triggers/1900000930374" _blank;
  click NeedsOrg "https://gitlab.zendesk.com/agent/admin/triggers/360079161439" _blank;
  click NeedsTriage "https://gitlab.zendesk.com/agent/admin/triggers/360078881760" _blank;
  click NRT "https://gitlab.zendesk.com/agent/admin/triggers/1900000930474" _blank;
  click Starter "https://gitlab.zendesk.com/agent/admin/triggers/360078881880" _blank;
  click Low "https://gitlab.zendesk.com/agent/admin/triggers/360078881900" _blank;
  click AllRegions "https://gitlab.zendesk.com/agent/admin/triggers/1900000930434" _blank;
  click AMER "https://gitlab.zendesk.com/agent/admin/triggers/360078881840" _blank;
  click APAC "https://gitlab.zendesk.com/agent/admin/triggers/1900000930394" _blank;
  click EMEA "https://gitlab.zendesk.com/agent/admin/triggers/1900000930414" _blank;
```

## Remaining stages

There are a few stages remaining, but they have more to do with the lifespan of
a ticket than its actual routing. For more information, see the
[Triggers](zendesk_global_triggers.html).
