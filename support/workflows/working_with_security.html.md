---
layout: handbook-page-toc
title: Working with Security
category: GitLab.com
subcategory: Security
description: Documenting the various types of Security related tickets and the escalation process to notify Security. 
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Previously, GitLab utilized the email address security@gitlab.com to report and inquire about security concerns. However, as GitLab and our Security Department has grown and expanded, we were unable to provide the high level of service our customers deserve utilizing that singular queue. Users who reach out to `security@gitlab.com` will now receive an auto-reply providing them with specific instructions for reporting the various types of security concerns. If the auto-responder does not answer their questions or a security-related ticket is submitted to Support you can utilize the macro [`Security::All Security Questions`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/blob/master/macros/active/Security/All%20Security%20Questions.yaml) to provide the user with detailed instructions.   

## Workflows

Please _do not_ transfer to security and refer to the relevant workflow for the following:

* [Reinstate Blocked Accounts](/handbook/support/workflows/reinstating-blocked-accounts.html)
* [Abuse Report Review Request](/handbook/support/workflows/Abuse_Report_Review_Request.html)
* [Log Requests](/handbook/support/workflows/log_requests.html)
* [Reporting a New Security Incident](https://about.gitlab.com/handbook/engineering/security/security-operations/sirt/engaging-security-on-call.html)

You can also utilize the [`Security::All Security Questions`](https://gitlab.com/gitlab-com/support/support-ops/zendesk-macros/-/blob/master/macros/active/Security/All%20Security%20Questions.yaml) macro for more details on the language. If the workflows above and the Macro do not resolve the customer's concern, please post a link to the ticket in the [#sec-fieldsecurity](https://gitlab.slack.com/archives/CV5A53V70) Slack Channel. 

### Triage Workflow

Triage vulnerability reports in a similar manner to our [HackerOne process](/handbook/engineering/security/security-engineering-and-research/application-security/runbooks/hackerone-process.html).

* If the report would be Not Applicable, reply with the reason why and close as "Solved."
* If the report would be Informative or would be an ~"type::feature", you may ask the requester to
  file an issue themselves. You can start with the "General -> Ask to create an issue"
  macro.
* If the issue is known, provide a link to the issue. If it is confidential,
    let the reporter know that it will be made non-confidential 30-days after
    a patch is released.
* When closing tickets, include a link to HackerOne program:
  `Please refer to our public bug bounty program policy at https://hackerone.com/gitlab for more information.`
* If the issue appears to be a duplicate of a recent HackerOne report:
  * Add link to the ZD issue as an internal note in the HackerOne report and
      add a link to the HackerOne report as in internal note in the ZD issue,
      along with any comments.
  * If it is clear the report is the same, for example the
      text is identical, or references the HackerOne report with the report number or
      link, respond with ```This report will be triaged in the order it was
      received on the HackerOne platform. That will be used as our single
      channel of communication for this report.``` and close the ticket as
      resolved.
  * Otherwise, respond with a standard message of the report being a known issue
    that is being worked on.
* If the report is a new, valid issue:
  * If the severity may be an ~severity::1 or otherwise needs immediate investigation:
    * [Engage the Security Engineer on-call](/handbook/engineering/security/security-operations/sirt/engaging-security-on-call.html)
    * Manually create an issue for report following the [creating a security issue instructions](/handbook/engineering/security/#creating-new-security-issues)
  * Otherwise, reply to the reporter to see if they wish to either:
    * Report via HackerOne (if they qualify)
    * Create a confidential issue themselves
    * Have a team member create the issue and reply with their preference for acknowledgement.
    * To ensure timely handling of the report, let the reporter know that if no response
      within 3 business days, a GitLab team member will create the issue.

### Request for Information on Security Update or Patch

Sometimes, a customer will request details on a security update that was released. e.g. "Should I worry about this? What's this patch about?"

Following the [Responsible Disclosure Policy](/security/disclosure/), a confidential issue will be created and tracked internally.
The contents of the confidential issue should not be shared.

## General Guidelines for Security Staff

1.  All members of the Security Team should have followed [the Light Agent request process](/handbook/support/internal-support/#viewing-support-tickets)
  as part of their onboarding and should use these accounts to make internal comments. When it's necessary to reply or change the
  status of the ticket use the shared account in 1Password.
1. Always cross-link any relevant ZenDesk, HackerOne, and GitLab issues, in
  internal comments where appropriate and available. ZenDesk links in GitLab issues
  should be noted as "GitLab internal only": `Reported via ZenDesk (GitLab internal only): https://gitlab.zendesk.com/.../xxxxx`
1. When responding directly via email, you must include the requester's email
  address as a recipient, since emails replies to ZenDesk from Light Agent
  accounts will only be processed as internal notes and not sent to the requester.
  1. If you email directly, you are responsible for setting the ticket to
    "Solved" or "Pending", or finding someone with permission to do so.

### If the customer has already created an issue

In the case that the customer has already filed an issue for the vulnerability:

1. Mark the issue is `confidential`

1. Add `security`, `customer`, and `bug` or `feature proposal` labels

1. Assign [Severity and Priority Labels](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)

### If the customer has not yet created an issue

See [Creating New Security Issues](/handbook/engineering/security/#creating-new-security-issues)
