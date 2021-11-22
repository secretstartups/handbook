---
layout: handbook-page-toc
title: Working with Support Ops
category: References
description: "Workflow for working with Support Operations"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Working with Support Ops


General speaking, working with Support Operations can be broken down into 8
categories:

* [Asking general questions](#asking-general-questions)
* [Request changes to your Calendly](#request-changes-to-your-calendly)
* [Propose a change](#propose-a-change)
* [Get something fixed](#get-something-fixed)
* [Make changes to Zendesk Global macros](#make-changes-to-zendesk-global-macros)
* [Make changes to Zendesk US Federal macros](#make-changes-to-zendesk-us-federal-macros)
* [Support Team page requests](#support-team-page-requests)
* [Everything else](#everything-else)

For a general overview, please see the [flowchart](#flowchart).

### Asking general questions

For general questions and assistance, reach out via the
[support_operations Slack channel](https://gitlab.slack.com/archives/C018ZGZAMPD).
From there, a member of the Support Operations team will respond and work with
you to help address the question. Should the discussion need more than a simple
answer, Support Operations will direct you to create an issue in the correct
issue tracker.

### Request changes to your Calendly

**Note**: Support Operations does not have the ability to change your personal Calendly
settings, only those used in team events.

When you need modifications made to your Calendly (such as being added to an
event, having the schedule used in an event changed, etc.), you will want to
create an issue in the
[calendly issue tracker](https://gitlab.com/gitlab-com/support/support-ops/calendly/-/issues/new).

From there, your manager will review the request and approve it. Once approved,
they will ping Support Operations.

Support Operations will then review the request and work the issue. Once
completed, Support Operations will then confirm the issue is completed and
close out the issue.

### Propose a change

To propose or request a change, you should first create an issue in the
[support-team-meta issue tracker](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/new)
so it can be discussed amongst the team. Keep in mind if the proposal is
impacting teams other than Support, you would want to include the other teams
in the discussion.

After creating the issue, you should then set a due date for it. This
will represent the day when the discussions are ended and a decision will be
reached between the approving manager(s) and the requester. If you need Support
Operations assistance in the discussion, make sure to ping the Support
Operations team using `@gitlab-com/support/support-ops`. 

Once a decision has been reached and agreed upon, the approving manager will
then ping the Support Operations team using `@gitlab-com/support/support-ops`.
From there, a Support Operations team member will review the issue and ask for
any clarification as needed.

After Support Operations has confirmed the request and gotten any needed
clarification, they will then create an issue in the correct tracker,
depending on the nature of the request.

Support Operations will then work from the new issue(s), performing testing and
the like. Make sure you are available to help with the testing and review the
results of said testing. Support Operations will ask and expect you to review
everything before moving onto next steps.

**Note**: Do not create the issues in the Support Operations issue tracker(s).
They require a support-team-meta issue for discussion and approval from a
manager to be actioned on. Without this having occurred, Support Operations is
likely to close out the issue and request the normal procedure be followed.

### Get something fixed

This is category is for anything in our current setups that needs to be fixed
(ie it is broken). These issues should not be for improvements or changes, but
simply to get something that is currently broken fixed as soon as possible. For
these, you would file an issue in the 
[support-ops-project issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new).
As these types of requests are highly important and solely to fix something
broken, they do not require a discussion issue or manager approval.

Once the issue is created, Support Operations will work the issue. They may
create new issues or move the original request as needed. As these tend to be
timely in nature, make sure you are available to work with Support Operations.

### Make changes to Zendesk Global macros

If you need changed made to a macro in Zendesk Global, you can file an issue in
the
[zendesk-macros issue tracker](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/issues/new).
Keep in mind that macro changes normally need a manager to review them. This
might occur in the issue itself or the merge request that is created later.

Once the issue is created, Support Operations will work the issue. They may
create new issues or move the original request as needed.

### Make changes to Zendesk US Federal macros

If you need changed made to a macro in Zendesk US Federal, you can file an
issue in the
[zendesk-us-federal issue tracker](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new)
using the
[zendesk-us-federal macros issue template](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new?issuable_template=Macros).
Keep in mind that macro changes normally need a manager to review them. This
might occur in the issue itself or the merge request that is created later.

Once the issue is created, Support Operations will work the issue. They may
create new issues or move the original request as needed.

### Support Team page requests

For changes to the support team page, you would file an issue in the
[support/team issue tracker](https://gitlab.com/gitlab-com/support/team/-/issues/new).

Once the issue is created, Support Operations will work the issue. They may
create new issues or move the original request as needed.

### Everything else

This is a catchall category for anything that didn't fit the previous ones. For
these types of requests, you would file an issue under the
[support-ops-project issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new).
From there, Support Operations will work the issue. They may create new issues
or move the original request as needed.

### Flowchart

```mermaid
graph TD;
  Start -- "Ask a general question" --> Slack;
  Start -- "Request changes to my Calendly" --> Calendly;
  Start -- "Propose a change" --> SupportTeamMeta;
  Start -- "Get something fixed/Other" --> SupportOpsProject;
  Start -- "Make changes to macros in ZD Global" --> ZendeskMacros;
  Start -- "Make changes to macros in ZD US Federal" --> ZendeskUsFederal;
  Start -- "Support Team page request" --> SupportTeam;
  Slack --> SlackResponds;
  Calendly --> CalendlyFillOutIssue;
  CalendlyFillOutIssue --> CalendlyPingManager;
  CalendlyPingManager --> CalendlyManagerFillOutIssue;
  CalendlyManagerFillOutIssue --> CalendlyManagerPingSupportOps;
  CalendlyManagerPingSupportOps --> CalendlySupportOpsWorksIssue;
  CalendlySupportOpsWorksIssue --> CalendlySupportOpsDone;
  SupportTeamMeta --> SupportTeamMetaDueDate;
  SupportTeamMetaDueDate --> SupportTeamMetaManagerApprove;
  SupportTeamMetaManagerApprove --> SupportTeamMetaManagerPingSupportOps;
  SupportTeamMetaManagerPingSupportOps --> SupportTeamMetaOpsReview;
  SupportTeamMetaOpsReview --> SupportTeamMetaOpsQuestions;
  SupportTeamMetaOpsQuestions -- "Yes" --> SupportTeamMetaOpsAsk;
  SupportTeamMetaOpsAsk --> SupportTeamMetaOpsRequesterClarifies;
  SupportTeamMetaOpsRequesterClarifies --> SupportTeamMetaOpsQuestions;
  SupportTeamMetaOpsQuestions -- "No" --> SupportTeamMetaOpsCreatesIssue;
  SupportTeamMetaOpsCreatesIssue --> OpsWorksIssue;
  SupportOpsProject --> OpsWorksIssue;
  ZendeskMacros --> OpsWorksIssue;
  ZendeskUsFederal --> OpsWorksIssue;
  SupportTeam --> OpsWorksIssue;
  Start{"What do you wish to do?"};
  Slack["Ask in the support_operations slack channel"];
  SlackResponds["Support Ops responds in Slack and assists"];
  Calendly["Create an issue in the support-ops/calendly project"];
  CalendlyFillOutIssue["Fill out the issue based on the templae"];
  CalendlyPingManager["Ping your manager in the issue for next steps"];
  CalendlyManagerFillOutIssue["Manager does their part of the issue"];
  CalendlyManagerPingSupportOps["Manager pings Support Ops"];
  CalendlySupportOpsWorksIssue["Support Ops works the issue"];
  CalendlySupportOpsDone["Support Ops confirms issue is completed and closes it"];
  SupportTeamMeta["Create a discussion issue in support-team-meta"];
  SupportTeamMetaDueDate["Set a due date for the end of discussion"];
  SupportTeamMetaManagerApprove["Have a manager review the issue and approve moving forward"];
  SupportTeamMetaManagerPingSupportOps["Manager pings Support Ops"];
  SupportTeamMetaOpsReview["Support Ops reviews issue"];
  SupportTeamMetaOpsQuestions{"Any clarifying questions needed?"};
  SupportTeamMetaOpsAsk["Support Ops asks requester to clarify"];
  SupportTeamMetaOpsRequesterClarifies["Requester clarifies"];
  SupportTeamMetaOpsCreatesIssue["Support Ops creates issue in correct tracker"];
  SupportOpsProject["Create an issue in the support-ops-project"];
  OpsWorksIssue["Support Ops works issue from there, making new ones as needed"];
  ZendeskMacros["Create an issue in the zendesk-macros project"];
  ZendeskUsFederal["Create an issue in the zendesk-us-federal project"];
  SupportTeam["Create an issue in the support/team project"];
```

### Helpful links

* [Support Ops team page](../support-ops/)
* [Support Ops documentation](../support-ops/documentation)
* [Support Ops workflows](../support-ops/workflows)
* [Support Ops training](../support-ops/training)
* [support_operations Slack channel](https://gitlab.slack.com/archives/C018ZGZAMPD)
* [calendly issue tracker](https://gitlab.com/gitlab-com/support/support-ops/calendly/-/issues/new)
* [support-team-meta issue tracker](https://gitlab.com/gitlab-com/support/support-team-meta/-/issues/new)
* [zendesk-macros issue tracker](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/issues/new)
* [zendesk-us-federal issue tracker](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new)
* [zendesk-us-federal macros issue template](https://gitlab.com/gitlab-com/support/support-ops/zendesk-us-federal/-/issues/new?issuable_template=Macros)
* [support/team issue tracker](https://gitlab.com/gitlab-com/support/team/-/issues/new)
* [support-ops-project issue tracker](https://gitlab.com/gitlab-com/support/support-ops/support-ops-project/-/issues/new)
