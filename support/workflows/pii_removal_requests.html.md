---
layout: handbook-page-toc
title: PII Removal Requests
category: GitLab.com
subcategory: Legal
description: General guide to resolve personally identifiable information removal requests
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Personally Identifiable Information removal requests

## Overview

(PII) is any data that could potentially identify a specific individual. Any information that can be used to distinguish one person from another. PII can be sensitive or non-sensitive. Non-sensitive PII is information from public records, phone books, corporate directories and websites without resulting in harm to the individual. Sensitive PII is information which, when disclosed, could result in harm to the individual whose privacy has been breached. This can be information publicly accessible via a GitLab.com

Keywords:  PII, Name, Social Security Number, Date and Place of birth, Mother's Maiden Name, Biometric Record, Résumé, Education Information etc.

PII requests have a 48 hour SLA

# Workflow

## First 24 hours

1. Vet the request.
1. Verify that the reported links to the content is present in the request?
1. Is the content still live?
1. If the content is no longer available. Notify the requester and close the request. (cc abuse-reports@gitlab.com)
1. If the content is still live, forward the request to Abuse for further review.
1. The Abuse Team will comment on the ticket advising on the next steps or steps taken.

It is important for the Abuse team to review the request before forwarding it to the reported account.  The Abuse Team will create a new ticket and forward the initial notice using the  `PII::Notice to content 'Owner'::First Touch` macro.  Including the reference ticket in Internal Notes.

## Next 24 hours

1. Vet that the fist notice has been sent and that the content is still live.
1. If the content is still live with no response from the requester, proceed to reply using the `PII::Notice to content 'Owner'::Second Touch` macro.
1. If the Abuse team has not followed up on the original request reach out via slack to @rostander / @wvandenberg
1. Add an internal note of the actions taken on the ticket and pend for a further 24 hours.

## Taking action

1. If the content is still up and the user has not responded to the notice, pull up the projects in question and make them private, then block the user.
1. Send a follow-up notice to the user informing them that action has been taken, using the macro `PII::Notice to content 'Owner'::(take down)` macro.
1. In the original ticket, reply to the requester that the content has been removed.
1. Add an internal note of the actions taken on the content and resolve the ticket.

## User disputes a takedown notice

### Should the user dispute the takedown request, follow the below steps:
{:.no_toc}

1. If the user disputes the notice; vet that the content is still live.
1. If the content is still live, tag Legal in the response to advise on next steps.
1. Add an internal note and pend for 24 hours.
1. After the 24 hours, review the note from Legal and take the steps set out from Legal.
1. If the original requester responds disputing the forwarded response from Legal, reach out to the Legal for further guidance on the next steps to be taken.
1. Close the ticket once the report has been fully resolved.
