---
layout: handbook-page-toc
title: Working with Security
category: Security
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Occasionally, users will reach out to `security@gitlab.com`, following the [Responsible Disclosure Policy](/security/disclosure/), with questions that may be better addressed by Support (e.g., help resizing a repository in response to a mass notification).

Other times, users will reach out to Support to report a security issue.

______________

## General Guidelines

Support tickets identified as needing [transfer to security](#identifying-issues-for-transfer-to-security) should be treated with the
same caution as any other suspicious email:

- Don't access any links included, especially if the sender intended to obfuscate links by using something like `hxxp://` or `hxxps://` or 'evil(.).com`.
- If there is any doubt, ask in `#security`, ask your manager or transfer the ticket.
- It's *better* to send along a ticket that Security evaluates and sends back than to mishandle an important report. Be biased to passing things to Security.

### Identifying Issues for Transfer to Security

- blocked accounts. Do not transfer, see [relevant workflow](reinstating-blocked-accounts.html) instead.
- Reports of phishing or malicious content, regardless of hosting source. Keywords:
  - malware/malicious
  - phish
  - campaign
- Sender claims to be a security related employee at a non-associated company.
- DMCA Takedown requests
- Security questionnaires or other requests for documentation.

### Identifying Issues for Transfer to Support

 * User is having problems with 2-factor or other authentication on their account.
 * A vulnerability report that has been triaged by the security team as `working as intended`,
 * Requires actions taken by Support to resolve.

## Workflows

### AppSec and Vulnerability Reports

The primary channel we currently receive vulnerability reports is through our
[HackerOne Bug Bounty](/handbook/engineering/security/application-security/runbooks/hackerone-process.html), but we still
make `security@gitlab.com` available for reporting as well. Triaging and
responding to these tickets in a timely manner is a responsibility of the
[Field Security team](/handbook/engineering/security/#external-contact-information)
and they will reach out to AppSec when needed.

If any team member has *any* concern about a report and an Application Security
engineer is not available, [page the security on call](/handbook/engineering/security/#engaging-the-security-on-call).

### Request for Information on Security Update or Patch

Sometimes, a customer will request details on a security update that was released. e.g. "Should I worry about this? What's this patch about?"

Following the [Responsible Disclosure Policy](/security/disclosure/), a confidential issue will be created and tracked internally.
The contents of the confidential issue should not be shared.

* You can use the "Field Security -> Request for security vulnerability details" macro and close as "Solved."

#### General Guidelines

1. Always use your Light Agent account when making internal comments. All members
  of the Security Team should have followed [the Light Agent request process](/handbook/support/internal-support/#viewing-support-tickets)
  as part of their onboarding. When it's necessary to reply or change the
  status of the ticket use the shared account in 1Password.
1. Always cross-link any relevant ZenDesk, HackerOne, and GitLab issues, in
  internal comments where appropriate and available. ZenDesk links in GitLab issues
  should be noted as "GitLab internal only": `Reported via ZenDesk (GitLab internal only): https://gitlab.zendesk.com/.../xxxxx`
1. When responding directly via email, you must include the requester's email
  address as a recipient, since emails replies to ZenDesk from Light Agent
  accounts will only be processes as internal notes and not sent to the requester.
  1. If you email directly, you are responsible for setting the ticket to
    "Solved" or "Pending", or finding someone with permission to do so.
1. ZenDesk tickets should be responded to in under 1 business day to ensure that
  any tickets not handled by the Security are [identified](#identifying-issues-for-transfer-to-support) and reassigned,
  so the AppSec Engineer on rotation should review the queue once a day for new
  tickets.

#### Triage Workflow

Triage vulnerability reports in a similar manner to our [HackerOne proccess](/handbook/engineering/security/application-security/runbooks/hackerone-process.html).

* If the report would be Not Applicable, reply with the reason why and close as "Solved."
* If the report would be Informative or would be an ~feature, you may ask the requester to
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
    * [page the security on call](/handbook/engineering/security/#engaging-the-security-on-call)
    * Manually create an issue for report following the [creating a security issue instructions](/handbook/engineering/security/#creating-new-security-issues)
  * Otherwise, reply to the reporter to see if they wish to either:
    * Report via HackerOne (if they qualify)
    * Create a confidential issue themselves
    * Have a team member create the issue and reply with their preference for acknowledgement.
    * To ensure timely handling of the report, let the reporter know that if no response
      within 3 business days, a GitLab team member will create the issue.

### Transfer from Security to Support

In the case that something ended up in the Security inbox and was forwarded on via email:

1. Open the ticket in ZenDesk.
1. Depending on the content of the forward, you can usually change the requestor to the user. Sometimes, it's preferable to create a new ticket. In either case, proceed as if it's a regular ticket from a user.
1. Often, these tickets will lack the name and email address of the user. You can usually find the original email by searching in the **#security-alert-manual** channel (everything emailed to security [at] is also shared there). Should that search turn up short, feel free to reach out to the individual who forwarded the ticket for this information.

### Transfer from Support to Security

In the case that a security issue was reported through a Zendesk support ticket:

1. Change the *Form* to **Security Issue**.

### Escalate ZenDesk ticket to Security

In the case that a security issue was reported through a support ticket:

1. Update the assignee in ZenDesk to Security

1. Link to the issue reporting the vulnerability

### If the customer has already created an issue

In the case that the customer has already filed an issue for the vulnerability:

1. Mark the issue is `confidential`

1. Add `security`, `customer`, and `bug` or `feature proposal` labels

1. Assign [Severity and Priority Labels](/handbook/engineering/security/#severity-and-priority-labels-on-security-issues)

### If the customer has not yet created an issue

See [Creating New Security Issues](/handbook/engineering/security/#creating-new-security-issues)
