---
layout: handbook-page-toc
title: Mechanizer
category: GitLab.com
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

This workflow details how to use the various automated forms that utilize the [Mechanizer](https://gitlab.com/gitlab-com/support/toolbox/mechanizer) for GitLab.com account related tasks.  The forms may be found in [this gDrive folder](https://drive.google.com/drive/folders/1Ux_UKUbX7Y3rLu8L8OM_YVImnEkKF4vW) and you may need to be granted access before you can access them.

### Trial Plan Change or Extension for GitLab.com

This form can be found [here](https://docs.google.com/forms/d/1CTmzp2FoxBJNGZudF-kdP-OZeHcV2hvV45Q4Aoi7LQQ/) and facilitates changing the plan on an active trial as well as extending it.  Please note that in order for this form to work, the customer **MUST** have an active trial and support should always check [Salesforce](https://gitlab.my.salesforce.com/) before proceeding.  If the prospect has not yet initiated a trial themselves, please have them do so via the [customers portal](https://customers.gitlab.com/trials/new?gl_com=true).  Support cannot create a trial for a customer.

The below fields are mandatory and must be supplied for each submission:

- **Your GitLab Username**: Your GitLab.com username without a preceding @ (ex. `username` and not `@username`).  Of note, this is your regular GitLab account and not your admin (username+admin) account.
- **Namespace**: The customer namespace as it appears in the URL.  For example, if the customer namespace is located at http://gitlab.com/gitlab-com then the namespace would be `gitlab-com`.
- **Plan**: The subscription plan you would like to change the customer's trial to.  If the `free` option is selected, the customer's trial will immediately be downgraded and the trial will terminate.

Optional fields:

- **End Date**: The date at which the trial period will be extend through. If the desired trial length will be longer than 30 days, the `Manager Approval` field must also be submitted.  You do not need to fill out the issue [linked in this section](https://gitlab.com/gitlab-com/support/internal-requests/-/issues/new?issuable_template=GitLab.com%20Trial%20Extension).
- **Manager Approval**: The GitLab.com username (without a preceding @) of the sales manager who approved a trial extension of more than 30 days.
