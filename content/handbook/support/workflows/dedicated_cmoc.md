---
title: How to Perform GitLab Dedicated CMOC Duties
category: On-call
description: "Describes the role and responsibilities for the GitLab Dedicated CMOC rotation in Support Engineering"
---

## Introduction

The GDCMOC is strictly limited to communications and contact outreach via Zendesk. There is no expectation from the GitLab Dedicated CMOC to be performing troubleshooting responsibilities. It is primiarily an async based approach, communicating with team members in slack or GitLab issues, and then relaying the information to the customer in Zendesk to keep them up to date. GDCMOCs do not need to dedicate all their focus to keeping an eye on the relevant threads/issues, but they should regularly check communication threads for updates they can communicate to customers.

The GitLab Dedicated CMOC (GDCMOC) rotation currently uses the GitLab.com CMOC rotation to determine who is oncall. This means that when you go oncall as a GitLab.com CMOC, you will also be the GDCMOC. This may change at a later date if it's determined we need to split this out to its' own rotation.

## Engaging the GDCMOC

See [this MR](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/team/-/merge_requests/647) for now. This section will be updated to point to the runbook directly once it has been merged into the Dedicated teams' runbooks.

## Acknowledging a GitLab Dedicated Contact Request

If a urgent contact request is needed, you will be paged via PagerDuty. Start by marking the page as **acknowledged**. This can be done through the mobile app, web interface or PagerDuty App in the #spt_pod_dedicated Slack channel.

The description in the page should contain details about an issue, or a slack thread you should be following. Follow any communication threads, and let the Dedicated Incident team know you are available to assist. You should be provided with the details of the request. If you're unsure, check [the GitLab Dedicated incidents issue tracker](https://gitlab.com/gitlab-com/gl-infra/gitlab-dedicated/incident-management/-/issues/?label_name%5B%5D=Incident%3A%3AActive) or ask in the `#g_dedicated-team` slack channel.

Once a response has been sent to the customer, you should mark the PagerDuty page as **resolved**.

## Creating a new ticket

Follow these steps to create a new ticket to start communications with a customer.

- Find the `Switchboard (production)` tile in Okta and login to Switchboard.
- You should see the `Tenants` page when logged in. Find the relevant tenant and click `Manage`.
- Expand the `Cloud Account Config` section, and look for the `Primary Region`. This should tell us which region the customer is based in. See the [AWS docs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions) if you're unsure of the AWS region code. Make a note of the region.
- Search for the `Customer Communications` section, and expand it. You should see values for `Operational email addresses` and `Customer TAM`. You will need these values when creating the ticket.
- Follow the instructions [here](/handbook/support/workflows/sending_notices/#manually-create-a-zendesk-ticket) to create a new Zendesk ticket.
  - For the **subject** of the title, use the following template: `GitLab Dedicated Notice: <description>`
  - For the ticket **requestor**, use the first operational email address listed.
  - **CC** the other operational email addresses and the Customer TAM.
  - Set the **Preferred Region for Support** to the region similar to where the tenants' `Primary Region` is located in.
- Once the first response has been submitted, change the Zendesk Form over to `GitLab Dedicated`.

## Keep the customer informed

- Follow any issues or slack threads for any updates to the incident. If there's anything worth sharing with the customer (such as "we found a possible lead" or "We are currently digging into the sidekiq logs"), do so in the ticket. If you're unsure of anything, ask the GitLab Dedicated Engineer OnCall or Incident Manager for clarification.
- Work with the customer to set expectations about the frequency of updates, especially if you are the GDCMOC within the same region as the customer. They will likely want expect more updates during their regional business hours.
- Keep in mind the [information that we **should not** share with the customer](handbook/support/workflows/dedicated/#sharing-internal-logs-data--graphs)

## Guidelines

- You do not need to focus all of your attention on looking for any updates. As a guideline, check the issues, slack threads, and customer ticket for any updates every 30 minutes if you are the GDCMOC in the same region as the customer.
- Consider sending the customer a summary so far if it's been a multiple hours since the last substantial update. For example: "To summarise so far, we initially looked into A and B, now we're investigating C" or "We found something in the logs to indicate the problem may be with X. I will share further details if the SRE team finds anything substantial."

## Handover

Follow the [End of Shift Handover Procedure](/handbook/support/workflows/cmoc_workflows/#end-of-shift-handover-procedure) from the CMOC workflows. Make the ingress GDCMOC aware of any issues, slack threads or tickets they should CC themselves on.

