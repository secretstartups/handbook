---
title: Onboarding an ASE Account
description: Workflow to onboard an account that is new to the ASE service
---

## Overview

As soon as a customer account signs a new contract that includes the Assigned
Support Engineer (ASE) service, the Support Team begins the customer onboarding
process. Through this process we intend to create and deliver a smooth and
professional experience to the customer as we begin our partnership with them.
This involves coordinating with the customer and the account team, as well as
informing the rest of Support about the account's new status.

## Customer Communication

[Introduce yourself as the customer's ASE](introductory-meeting.html).

Consider whether ongoing cadence calls would help the customer relationship
and/or help achieve their goals. There is no defined process for this so
manage these as needed during the ASE contract.

## Internal Communication

### Auto-assign the customer's tickets

File a request using the
[Support Super Form](https://support-super-form-gitlab-com-support-support-op-651f22e90ce6d7.gitlab.io/)
to set the ASE (note only Support Directors can do this). The request will make
you a tracking issue, but it is completely automated.

- The `What is this request concerning?` option should be
  `Modifications to a Zendesk Global Organization` and the
  `What kind of modification are you looking to make?` should be
  `Set an Assigned Support Engineer for an organization`

### Org Note mentioning the ASE and how to treat the ticket

A customer having an ASE can be a confusing prospect for others in and out of
GitLab Support. How would they know that a specific customer has an ASE?
How should they handle this customer's tickets when the ASE is not
working, or busy? What if the customer creates an emergency ticket?

This is why an organization note in the ticket will prove useful. It will
answer the above questions and guide all interested parties (Support Engineers,
Customer Success Managers, Account Executives, etc.) to the correct workflows for
what to do.

A good organization note will answer the following questions:

- Who is the Assigned Support Engineer (ASE) for this customer?
- Which region is the ASE located in?
- How to handle tickets that come in outside of the ASE's working hours?
- What should a Support Engineer do with this customer's tickets when the ASE is not available?
- What to do with tickets that predate the introduction of this ASE?
- What to do in case the customer submits an emergency ticket?

This information will come from the contract and from the discussion with the
customer in the [introductory meeting](#customer-communication).

Create a merge request for the org note
[in the Organizations project](https://gitlab.com/gitlab-com/support/zendesk-global/organizations)
and assign it to your manager for review.

Here's an example:

```yaml
notes: |
  This organization has an Assigned Support Engineer (ASE). Please [review the workflow to use](/handbook/support/workflows/assigned-support-engineer/working-on-ase-tickets/).

  Jill is the AMER ASE for Company-A so at this time, all new non-emergency tickets will be assigned to her. Pre-existing tickets will keep their existing assignee and Jill will shadow.

  If Jill is unavailable, please respond while leaving Jill as the assignee and cc yourself.

  The on-call engineer will continue to handle emergency tickets, which will not get assigned to Jill. However, inform her when an emergency comes in so she can assist if available.
```
