---
layout: markdown_page
title: Handling GitLab Dedicated License Requests
description: "How to handle GitLab Dedicated License Requests"
category: GitLab Self-Managed licenses
---

{:.no_toc}

----

## Workflow for handling GitLab Dedicated Licensing

Currently, GitLab Dedicated license provisioning needs to be handled manually whilst we await the implementation of the EPIC [GitLab Dedicated Automated Provisioning](https://gitlab.com/groups/gitlab-org/-/epics/8799) 

In the interim the following steps are required in order to generate the license file and ensure that the request is tracked correctly.

1. Deal Desk manually creates the opportunity quote and adds the GitLab Dedicated SKUs.
2. The quote is synced to Zuora, where the subscription is created.
3. The GitLab Dedicated team reach out to Support via an [internal request form](https://gitlab-com.gitlab.io/support/internal-requests-form/) providing the SFDC opportunity link and requesting a license file is manually created.
4. L&R Support verifies that the SFDC opportunity is `closed-won` and manually creates the license file.
   - The L&R support engineer adds an internal note containing a link to the license in CustomerDot so that that it can be tracked with the Accounting team for revenue recognition.
   - The L&R engineer sends the license file to the "sold-to" account owner and CC's the GitLab Dedicated team member who raised the ticket. 
6. The GitLab Dedicated team notifies revenue recognition & AR for confirmation of provisioning.


If you have any questions then please reach out to:

GitLab Dedicated Team Product Manager: Andrew Thomas | athomas@gitlab.com
Support Engineering Manager: John Lyttle | jlyttle@gitlab.com  
