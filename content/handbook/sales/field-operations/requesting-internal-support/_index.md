---
title: Requesting Internal Support in Salesforce
---

## How to Get Help

Workflow for internal GitLab users on how to get help when working on an opportunity or account in Salesforce.

### Contents of this page

- Overview
- Teams Impacted
- Workflow
- Navigating Cases
- How to report bugs or request fixes
- Reports & Dashboards

#### Overview

**Background**: Historically, GitLab used Chatter to handle internal requests in Salesforce. Users could send a Chatter message to user groups (ie. @sales-support, @billing, @renewalops, @partneroperations) for support. This process led to the creation of thousands of cases each quarter; but there were inefficiencies in the system.

**Challenges**: The previous Chatter-based workflow faced several challenges:

- **Lack of visibility** into the status of requests.
- **Multiple teams** used the same Chatter handle, leading to confusion.
- **Duplicate cases** were often created.
- Requests were not prioritized, meaning some requests got lost or delayed.
- **Insufficient information** provided at submission, requiring back-and-forth communication.

**What the new workflow provides**:

- **Visibility**: Requesters can see the status of their case through details, email updates, and Salesforce notifications.
- **Guided Workflow**: A defined list of teams and request types that help the requester direct their request to the right team with the correct information.
- **Differentiated prioritization**: Urgent requests are flagged for quicker attention.
- **Complete information**: Requesters must enter all required details, reducing the need for follow-ups.

#### Requesting Internal Support

The following teams are available to handle internal support requests:

- Billing
- Deal Desk
- Ecosystem Operations
- Renewal Operations
- Sales Operations
- Sales Development & Marketing

**Who can request support?** Any Salesforce user with edit access to an account or opportunity can submit a request for internal support.

**Requesting Internal Support from Other Departments** - Please note that the following teams manage their requests through a separate workflow. Follow the instructions below for each department:

- [Sales Commissions](https://internal.gitlab.com/handbook/sales/sales-commission/#who-to-contact-for-commission-questions)
  - Through Salesforce Chatter: @sales-comp
  - Through email: sales-comp@gitlab.com
- [Legal](/handbook/legal/customer-negotiations/#how-to-reach-the-legal-commercial-team)
  - Legal cases can be created from an Opportunity in Salesforce by selecting the “Legal Request” button at the top of the page
  - @Legal for reviewing locked accounts due to trade compliance controls
- [Request CS Support](/handbook/customer-success/csm/segment/cse/cse-operating-rhythm/#cse-engagement-request-process)
  - On an opportunity, navigate to the drop down menu and choose “CS Support” to request one of the following:
    - CSE Help (Not Escalations)
    - At-Risk Account Help (CSM red accounts & CSM/CSE escalations)
- [GitLab Customer Support](/handbook/support/internal-support/)
- Enterprise Applications
  - [Enterprise Applications - CRM Team](/handbook/business-technology/enterprise-applications/entapps-crm/#steps-to-getting-help-from-sales-systems)
  - [Enterprise Applications - PMO](/handbook/business-technology/enterprise-applications/pmo/#i-classfas-fa-headset-idbiz-tech-iconsi-how-to-connect-with-us)
- [Revenue](https://internal.gitlab.com/handbook/finance/accounting/finance-ops/revenue-accounting/#communicating-with-revenue-accounting)
  - Chatter @revenue
- [HelpLab](https://helplab.gitlab.systems/esc) (in your Okta)

#### Salesforce Workflow

Here is how you can submit a request for internal support:

1. **Navigate to the account or opportunity** where you need assistance.
2. Click on the "**Request Support**" button.
3. **Choose the team** from the dropdown list that you're requesting support from and select Next.
4. Select the **Request Type** from the available options and fill out the required information (fields with a red asterisk). Upload any relevant documentation if applicable.
5. Once you've filled out the form, click "**Submit**" to create your case.
6. After submission, you will receive a notification confirming that your case has been created, along with a link to your case number.

**Note**: Before submitting, you can click the **'Previous'** button in the workflow to go back and modify your selections.

#### Navigating an Internal Case

Once you’ve submitted your request, here’s how to navigate to the case in Salesforce:

**Find Your Submitted Cases:**

1. Navigate to the Case tab in your toolbar
2. The default list is “Recently Viewed” cases which will not show all of your submitted cases
3. Use the Gear Icon and choose NEW to create a New list
4. Name your list and choose “Only I can see this view”
5. Update your filters
   - Filter by Owner = All Cases
   - Created by = (your alias)
   - Your alias can be found on your SFDC profile
6. You can now select “Choose what fields to display” to view all cases you have created in one place

**Case Page Layouts:**

- The layout is structured using Salesforce’s standard object format:
  - **Details** (on the left side) – key information about the case.
  - **Feed and Related Lists** (on the right side) – additional context and updates.
  - **Buttons and Actions** (in the upper right corner) – important actions such as case updates or closing the case.
    - Some buttons may be in dropdown menus depending on the layout.

**Notable Fields on a Case:**

- **Owner**:
  - Initially, this field reflects the case queue owner.
  - Once assigned, it shows the name of the person handling the case.
- **Status**:
  - New: Case is created but not yet reviewed.
  - Pending Response: Waiting for more information or action.
  - Work in Progress: A team member has taken ownership and is reviewing the case.
  - On Hold: Requires more information before progressing.
  - Closed: The case has been resolved or actioned.
- **Request Type**:
  - Displays the type of request the user submitted (e.g., Legal support, Billing inquiry, etc.).
- **Description**:
  - A detailed explanation of the request or issue.
- **Feed**:
  - This is where additional information or updates on the case can be provided.
  - **Note**: You can only send messages through the Chatter feed to individual users, not to entire groups.

#### How to Report Bugs or Request Fixes

**To Be Added:**

- This section will cover the process for reporting bugs or requesting fixes through HelpLabs. Stay tuned for future updates!

#### Reports & Dashboards

**To Be Added:**

- Details on how to generate and use reports and dashboards related to your cases or support requests will be included here. Look for upcoming updates!

This new workflow aims to streamline the support request process, improving efficiency and communication across teams. If you have any questions or need further assistance, refer to the internal resources or reach out to the appropriate team.
