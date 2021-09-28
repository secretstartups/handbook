---
layout: handbook-page-toc
title: 'Customer Ticket Generator'
category: 'GitLab'
description: 'Details on the Customer Ticket Generator'
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

The steps in completing these are:

1. [Review the request](#review-the-request)
1. [Review the script](#review-the-script)
1. [Run the script](#run-the-script)
1. [Close out the request](#close-out-the-request)

## Review the request

The first stage is to review the request in the
[issue tracker](https://gitlab.com/gitlab-com/support/support-ops/customer-ticket-generator/-/issues).
Make sure it contains all the needed information and has a person you can
contact for updates on the request itself.

If you see it is a failed request, no action is needed.

If you notice the requester to contact (first line of the issue description) was
not able to determine who to contact, do your best to locate the requester and
ping them in a comment.

If all looks good, do the following:

* add a due date to the issue. This is normally the same day as you work the
  request, but it might be a future date if needed.
* add the label "SupportOps::Doing"
* assign the request to yourself and unassign all other Support Ops team members

From here, you are clear to move onto the next step.

## Review the script

Next, you'll want to review the script that was generated. You especially want
to double check:

* the `subject` function contents (towards the top of the script)
* the `description` function contents (towards the top of the script)
* the `ticket_object` function contents (towards the middle of the script)
* the `users` array (towards the bottom of the script)

If it all looks good, you can move onto the next step.

## Run the script

**Note**: If you do not feel comfortable running the script, you can generate
the tickets manually. The script is there to make it easier to accomplish the
request. When in doubt, reach out for assistance or make the tickets manually
using the details from the request.

Here you would want to run the script. Copy the script onto your computer and
execute it. Keep in mind, it will depend on your computer's setup, so reading
[Recommended Setup](../training/recommended_setup.html) is a good idea.

Once the script has completed, copy the output and move onto next step.

## Close out the request

Here you will want to do the following:

* Paste the output from the [previous step](#run-the-script) into the issue
  * If you made the tickets manually, indicate you did so and copy the ticket
    links from doing this as the output
* Add whatever time was spent completing the task
* add the label "SupportOps::Completed"
* Close out the issue
