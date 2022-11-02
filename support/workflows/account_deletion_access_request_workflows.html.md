---
layout: handbook-page-toc
title: Account Deletion & Data Access Requests - Workflows
category: GitLab.com
subcategory: Legal
description: "How to perform the processing of Account Deletion and Data Access requests"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Overview

This document contains instructions on how to process each type of Account Deletion or Data Access request. It is split into two stages; **Submission Handling** and **Request Processing**, to be followed in that order. Each request will go through the same flow from opening to completion that is outlined in the chart below. **All requests must be fulfilled within 30 days.**

```mermaid
graph TD
    A(Valid Request Received)-->B
    B(Perform Account Verification)-->E
    E(User Passed Account Verification Process?)-->|Yes|I
    E-->|No|H
    H(Apply Account Verification Failed Label)
    I(Create Delete Meta Issue)
```

# **Stage 1:** Submission Handling

We are only able to process Account Deletion and Data Access requests if they are submitted through the official [Personal Data Request form](https://support.gitlab.io/account-deletion/). If a request is received via any other method, we will close it and direct the user to open a request through the form.

When a user submits a request through the form, an issue is automatically created in the [Personal Account Requests Service Desk](https://gitlab.com/gitlab-com/gdpr-request/-/issues/service_desk), *even for invalid requests*. Comments made in the issue will be emailed to the user. You will communicate with the user through the issue on the progress of their request.

The purpose of this stage is to instruct you on how to close out invalid requests.

## Zendesk Submissions

When a request is received through Zendesk as a support ticket, do one the following:

- If the ticket is regarding an **Account Deletion** request, apply the [Support::SaaS::Account Deletion Instructions - GitLab.com](https://gitlab.com/search?search=360027176693&nav_source=navbar&project_id=17008590&group_id=15990755&search_code=true&repository_ref=master) macro, and mark the ticket as solved.

- If the ticket is regarding a **Data Access** request, apply the [General::Personal Data Access Request Instructions](https://gitlab.com/search?search=6147154241180&nav_source=navbar&project_id=17008590&group_id=15990755&search_code=true&repository_ref=master) macro, and mark the ticket as solved.

- If the ticket is regarding a combination of both, use a variation of both macros above, and mark the ticket as solved.

## Direct Email Submissions

If a request to the [Personal Account Requests Service Desk](https://gitlab.com/gitlab-com/gdpr-request/-/issues/service_desk) is submitted directly via email, add the `account-deletion::invalid` label, add a comment to the issue with the snippet below, then close the issue.

<details>
  <summary markdown="span">Request Closed - Request Submitted Directly</summary>

  <p>Greetings,</p>

  <p>It looks like you've emailed this request in to us directly. In order for us to best assist you please re-submit this request via our [Personal Data Request form](https://support.gitlab.io/account-deletion/). Doing so will allow us to process your request more quickly and efficiently. This request will now be closed. We eagerly await your resubmission. Thank you!</p>

  <p>Regards,</p>
</details>

**NOTE:** Requests sent in through the official form will include a copy of the form entries in the initial description of the issue.

## Spam Submissions

If the request submitted is spam, apply the label `Invalid Request::Spam`, then close the issue.

## Duplicate Form Submissions

If a user has submitted multiple requests via the form, apply the `/duplicate` quick action to the duplicate issues, and respond with the following before closing the duplicates:

<details>
 <summary markdown="span">Request Closed - Duplicate </summary>

 <p>Greetings,</p>

 <p>It looks like you have submitted multiple requests for the same purpose. </p>

 <p>I'm closing this issue in favour of #123, and we will continue processing your request on the other issue.</p>

 <p>Regards,</p>
</details>

# **Stage 2:** Request Processing

Find the appropriate workflow below to process requests submitted to our [Personal Account Requests Service Desk](https://gitlab.com/gitlab-com/gdpr-request/-/issues/service_desk), based on their request type.

- [Deletion Requests](#deletion-requests)
- [Data Access Requests](#data-access-requests)
- [General Questions](#general-questions)

As a reminder, before processing a request you should make sure that you have already [Streamlined Your Workflow](https://about.gitlab.com/handbook/support/workflows/personal_data_access_account_deletion.html#streamlining-your-workflow) to make requests easier to process.

## **Deletion Requests**

The following are the types of requests that a user can file. Click the link for each to jump to the associated workflow for processing that request.

- [GitLab.com Account Deletion](#gitlabcom-account-deletion-and-full-deletion) (delete the GitLab.com account only)
- [Portal Account Deletion](#portal-account-deletion) (delete data in customers.gitlab.com only)
- [Full Deletion](#gitlabcom-account-deletion-and-full-deletion) (delete everything across all systems)
- [Marketing or Sales Account Deletion](#marketing-or-sales-account-deletion) (delete marketing and sales-related data only)

Currently, only **GitLab.com Account Deletion** or **Full Deletion** requests are auto-checked upon form submission.

### **GitLab.com Account Deletion and Full Deletion**

This workflow applies to both **GitLab.com Account Deletion** and **Full Deletion** requests. When a request is submitted for either of these types, the following form entries are verified using built-in automated checks:

- Username (must exist)
- Email address (must exist)
- Username and email must match for the same account
- Account is not part of a paid namespace
- User checked the box confirming their intent to delete (deletion requests only)

After submission, the automated checks will either fail or succeed.

```plain
You Should Know:

If any of the automated checks fail, the user will receive an auto-generated response detailing the reason we are unable to process their request. The issue created will be marked as invalid with "Invalid Request Received" noted in the title. These issues are scheduled to automatically close, and the label "account-deletion::invalid" will be applied. No action is required.
```

#### **Step 1:** Await Challenges

If all of the automated checks succeed, the user will receive a set of [Verification Challenge questions](https://gitlab.com/gitlab-com/support/internal-requests/-/wikis/Account-Verification-Challenges) in an auto-generated response. Users have a total of **14 days** to respond to the challenge questions.

At this stage, do the following:

1. If the account in question is a `FREE` account, add the `account-deletion::personal` label to the issue. If the account is tied to a paid namespace with a signed contract in Salesforce (a corporate request), add the `account-deletion::corporate` label to the issue.
1. Add the `Awaiting::Challenge Answers` label and wait for the user to reply with the answers to the questions. If they do not reply within **14** days, proceed to [No Response](#no-response). If they do reply within 14 days, proceed to [**Step 2:** Evaluate](#step-2-evaluate).

##### No Response

If the user fails to respond after 14 days, apply the `Account Verification Failed` and `Deletion Request:: Denied` labels to the issue, and close it using the following snippet:

<details>
  <summary markdown="span">Request Closed - No Response</summary>

  <p>Greetings,</p>

  <p>We have not heard back from you with responses to our verification challenge questions, which are required in order to verify your identity before we process your request. We will now close this request. If you still wish to proceed please feel free to submit a new request via our [Personal Data Request Form](https://support.gitlab.io/account-deletion/).</p>

  <p>Regards,</p>
</details>

#### **Step 2:** Evaluate

Evaluate the answers to the challenge questions that the user has provided using the [Account Verification](https://about.gitlab.com/handbook/support/workflows/account_verification.html#evaluating-challenge-answers) workflow with a data classification of `RED` along with the [Risk Factor Worksheet](https://docs.google.com/spreadsheets/d/1RyPghnls0NbrWQK7-qtlVW9_jj8mQAygX83n96Asxlo/edit) (GitLab internal) for data and privacy requests to confirm if the verification passes or fails.

- If the verification passes, proceed to [**Step 3:** Create Meta Issue](#step-3-create-meta-issue).

- If the verification fails and the user **is not** the sole owner of the groups and projects in their account, proceed to [Verification Failed](#verification-failed).

- If the verification fails and the user **is** the sole owner of the groups and projects on their account, proceed to [Verification Failed (Sole Owner Exception)](#verification-failed---sole-owner-exception).

##### Verification Failed

If the user fails the challenge questions, apply the `Account Verification Failed` and `Deletion Request:: Denied` labels, and respond with the following snippet before closing the issue:

<details>
  <summary markdown="span">Request Closed - Verification Failed</summary>

  <p>Greetings,</p>

  <p>Unfortunately, the answers to our verification challenges have failed. As a result, we are unable to process your account deletion request. This issue will be closed.</p>

  <p>Regards,</p>
</details>

##### Verification Failed - Sole Owner Exception

If the user fails the challenge questions, but they are the sole owner of groups and projects, we can consider approval for an exception by working through the following:

1. Validate that the user is the **only** owner / member of projects and groups.
1. Check that the user has not logged in for at least 1 year.
1. Check that the projects and groups owned by the user have not been updated in at least 1 year.
1. Reach out to the [#privacy-team_help](https://gitlab.slack.com/archives/C04357HVCJD) Slack channel to engage a Support Manager and Privacy for review and approval (approver will add `Deletion Request::Exception Approved` to the issue if approved).
1. Proceed with the deletion process.

**Note:** If a situation requires further review, and falls outside of the above criteria for a sole owner, please reach out to the [#privacy-team_help](https://gitlab.slack.com/archives/C04357HVCJD) Slack channel to discuss approving an exception with a Support Manager and the Privacy team.

If the user has logged in and/or updated their project and groups within the last year, respond with the following before closing the issue:

<details>
  <summary markdown="span">Request Closed - Verification Failed</summary>

  <p>Greetings,</p>

  <p>Unfortunately, the answers to our verification challenges have failed, and your account appears to have had recent activity within the last year. As a result, we are unable to process your account deletion request at this time. This issue will be closed, however you may try your request again at a later date.</p>

  <p>Regards,</p>
</details>

#### **Step 3:** Create Meta Issue

Proceed with processing the request by doing the following:

1. Let the customer know they have been verified and that you are initiating the deletion process by leaving a comment on the issue with the following snippet. Take care to replace `TYPE_OF_REQUEST` with the appropriate type of request.

<details>
  <summary markdown="span">Verification Succeeded - Deletion Process Started</summary>

  <p>Greetings,</p>

  <p>Thank you for stepping through the process with us and verifying your account ownership. We have now started the process to fulfill your TYPE_OF_REQUEST request. Please note that it takes up to 30 days for the request to be processed as it's handled by different teams.</p>

  <p>I will let you know once the deletion process is complete.</p>

  <p>Regards,</p>
</details>

1. Create a new **confidential** issue in the [Personal Account Requests Service Desk](https://gitlab.com/gitlab-com/gdpr-request/-/issues/new) using one of the following templates, depending on the request type, and populate the issue title with the email address of the original request: 

   - [Deletion Meta Issue - Full](https://gitlab.com/gitlab-com/gdpr-request/issues/new?issuable_template=Deletion%20Meta%20Issue%20-%20Full) for **Full Deletion** requests.
  
   - [Deletion Meta Issue - GitLab-com](https://gitlab.com/gitlab-com/gdpr-request/issues/new?issuable_template=Deletion%20Meta%20Issue%20-%20GitLab-com) for **GitLab.com Account Deletion** requests.

1. Follow the instructions in the top of the template, then complete each step in the issue that begins with `Support Engineer:` in order.

### **Portal Account Deletion**

Use this workflow for requests to delete user data from the Portal (customers.gitlab.com).

1. In the [Personal Account Requests Service Desk](https://gitlab.com/gitlab-com/gdpr-request/-/issues/new), create a new confidential issue using the [Deletion Meta Issue - Customers Portal](https://gitlab.com/gitlab-com/gdpr-request/-/issues/new?issuable_template=Deletion%20Meta%20Issue%20-%20Customers%20Portal) template, populating the title with the email address of the original request.
1. **Follow the instructions in the top of the template**, then complete each step in the issue that begins with `Support Engineer:` in order.

### **Marketing or Sales Account Deletion**

Use this workflow for requests to delete user data from Sales or Marketing systems.

1. In the [Personal Account Requests Service Desk](https://gitlab.com/gitlab-com/gdpr-request/-/issues/new), create a new confidential issue using the [Deletion Meta Issue - Marketing](https://gitlab.com/gitlab-com/gdpr-request/-/issues/new?issuable_template=Deletion%20Meta%20Issue%20-%20Marketing) template, populating the title with the email address of the original request.
1. **Follow the instructions in the top of the template**, then complete each step in the issue that begins with `Support Engineer:` in order.

## **Data Access Requests**

Users can request the following to obtain information about their data. Use this workflow for requests to access full details about what data we have on the user.

- Data Access Request (provide all data from all systems GitLab have related to the user)
- General Questions (any other inquiries related to the users data)

Use the following workflows based on the type of request submitted.

1. In the [Personal Account Requests Service Desk](https://gitlab.com/gitlab-com/gdpr-request/-/issues/new), create a new confidential issue using the [personal_data_access_request](https://gitlab.com/gitlab-com/gdpr-request/-/issues/new?issuable_template=personal_data_access_request) template, populating the title with the email address of the original request.
1. **Follow the instructions in the top of the template**, then complete each step in the issue that begins with `Support Engineer:` in order.

## **General Questions**

Use this workflow for general question submissions.

1. If the question is something Support can answer, respond to the user's inquiry.
1. If needed, engage a Support Manager or the Privacy team for guidance and messaging. You can visit the [#privacy-team_help](https://gitlab.slack.com/archives/C04357HVCJD) Slack channel to ask for help.
1. Close the issue once the users question(s) have been answered.
