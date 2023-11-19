---

title: "Email and Zendesk Macros"
description: "This page holds the email templates used to interact with people who are interested in our community programs."
---







# Overview
This page holds the email templates used to interact with people who are intereted in our community programs ([GitLab for Education](/solutions/education/), [GitLab for Open Source](/solutions/open-source/), [GitLab for Startups](/solutions/startups/).

Since we interact with program members and applicants mainly via Zendesk, we have created Zendesk macros for most emails we need to send.

The macros below are organized into the various stages of our [community programs application workflow](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/#application-workflow).

### Using Gmail as an alternative to Zendesk

We use Zendesk to interface with our community in most cases.

However, in some cases, like when you need to loop in a Sales representative, you may need to send an email from your Gmail inbox instead. That's why this page mainly holds Zendesk macros, but also includes email templates at the end.

When sending from your Gmail account, be sure to send these emails from the education@gitlab.com / opensource@gitlab.com / startups@gitlab.com email alias. To configure your inbox, [follow these instructions](https://about.gitlab.com/handbook/marketing/developer-relations/workflows-tools/e-mail/#setting-up-aliases) or take a look at [the official GMail documentation](https://support.google.com/mail/answer/22370?hl=en).

If you end up using Gmail on a regular basis, consider adding the relevant templates to your Gmail inbox by [enabling templates and creating a template](https://support.google.com/a/users/answer/9308990?hl=en).

### Community program workflows and common tasks
Since this page is part of the community program application workflow, the following pages hold more context on when to use each of the macros and email templates:

 * [Community program workflows](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/) - this page holds the application workflow for the community programs.
 * [Common tasks](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/common-tasks/) - this page holds common requests, tasks, and errors related to the community applicaiton workflow.


# Zendesk Macros and Email Templates

A [Zendesk macro](https://about.gitlab.com/handbook/marketing/developer-relations/workflows-tools/zendesk/#zendesk-macros) is essentially an email template that allows you to send messages that are often used.

Below are Zendesk macros that are regularly used when communicating with community program participants. We have mapped them out to match the various phases of the [community program workflows](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/#application-workflow).

Not everyone at GitLab can access the [Community Zendesk instance](https://gitlab-community.zendesk.com/), so this page is meant to document all of the Zendesk macros we use. This provides transparency around our messaging, and it also allows others to integrate with our workflows.

Below, you'll find macros that are program specific. Macros which span multiple programs are designated as "Common Requests."

## Zendesk Macros - the basics
### How to send a Zendesk Macro
1. Choose an appropriate macro from the `Apply Macro` dropdown at the bottom of the page.
1. Add the name of the contact to the salutation `Hi {NAME}` if it hasn't been added automatically. The contact's name is generally found in the Zendesk ticket or in the Salesforce record.
1. Read through the macro. Fill in or change any details needed.
1. Add your name to the close if it hasn't been automatically populated. e.g. `Best Regards, {YOUR NAME}`.
1. Check tags to make sure you're including the correct ones, and send!

### How to edit or add a new Zendesk Macro
If you'll need to send a message more than once, consider creating a Zendesk macro to save time. When creating or editing a new macro, make sure to document it on this page.

[Here's how to edit or create Zendesk Macros](https://about.gitlab.com/handbook/marketing/developer-relations/workflows-tools/zendesk/#zendesk-macros).

### Handling Zendesk Ticket Status

Use the following guidelines when processing tickets for all programs.

| Ticket Details | Ticket Status and Actions Needed |
| ----- | ----- |
| License issue or legal case that needs follow up | `open` ticket |
| Need follow up from another individual or program manager | `open` ticket + tag a teammate in the ticket and post in the #community-programs Slack channel for support |
| Waiting on the customer to respond to a ticket | `pending` ticket |
| No response is needed or expected | `solved` ticket |
| Adding notes to the ticket to address later | `new` ticket + leave internal notes |

# Common Requests - Zendesk Macros

The following Zendesk macros are meant to help you interface with people interested in one of our community programs. We've designated them as common requests because they can be used for multiple programs.

For more context on when to send them, please reference the [Community program workflow page](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/).

## Pre-Qualification Phase

### Common Requests:: Application form not visible

| Metadata | Description |
| ------ | ------ |
| Description | Send to users who cannot see the application form  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: troubleshooting` Add tag for oss, edu, or startups |

Hi {{ticket.requester.first_name}},

Thanks for your interest in GitLab for {Education/Open Source/Startups}. The application form is likely not visible in your browser because it is being blocked by a content or privacy blocker.

In order to view the form, navigate to your browser's security and privacy settings, and turn off blocking for the GitLab for {Education/Open Source/Startups} site. Please also check that you have accepted personalization cookies.

Please let us know if you have any further questions. We look forward to your application!

Best regards,

{{current_user.first_name}}

## Qualification Phase

### Common Requests:: Pandemic response

| Metadata | Description |
| ------ | ------ |
| Description | Add this into an email if you need to respond about qualification options due to the pandemic |
| Available for | All Agents |
| Actions | -- |

Unfortunately, the pandemic has affected a lot of organizations, and we understand the strain that puts on resources. We're unable to enroll everyone into our free community programs, but we'll work with you to find the best path forward. Thank you for your patience during this process!

### Common Requests:: Handing off to sales team - Send via Gmail

| Metadata | Description |
| ------ | ------ |
| Description | SEND VIA GMAIL so you can cc a Sales rep. Send when you need to hand the relationship over to Sales because they don't qualify |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: troubleshooting` `sales-handoff` Add tag for oss, edu, or startups |

Hi {{ticket.requester.first_name}},

Thanks for your reply. I have shared your contact information with our sales representative in your region, {NAME}. {NAME} is copied here and will be following up to schedule a call with you.

{EDU: I am happy to continue to work with you and your institution on any further needs you have regarding the [GitLab Education Program](https://about.gitlab.com/solutions/education/). Please do not hesitate to reach back out to us at education@gitlab.com}

{OSS: I am happy to continue to work with you and your institution on any further needs you have regarding the [GitLab Open Source Program](https://about.gitlab.com/solutions/open-source/join/). Please do not hesitate to reach back out to us at opensource@gitlab.com}

{Startups: Please let me know if you have any other questions regarding our [Startups Program](https://about.gitlab.com/solutions/startups/). Please do not hesitate to reach back out to us at startups@gitlab.com}

Best regards,

{{current_user.first_name}}


## Booking Phase


### Common Requests:: Outdated Order Form

| Metadata | Description |
| ------ | ------ |
| Description | Send this to a customer if you're having trouble processing their application due to a quote signed with an outdated order form |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Status: Pending` `Comment Mode: Public` `Assignee: Current User` `Add tags: license` Add tag for oss, edu, or startups |

Hello {{ticket.requester.first_name}},

We have made some recent changes in our technical workflow within the application process. Thus, any quote signed before 4/2/2021 will need to be updated with our new order form and re-signed to complete the final steps of the application process.

We apologize for this inconvenience and we appreciate your understanding.

I've emailed a new quote for you to sign via **DocuSign**.

Please let me know when you have signed the revised quote!

Thanks,

{{current_user.first_name}}



### Common Requests:: Error with processing application - Salesforce error

| Metadata | Description |
| ------ | ------ |
| Description | Send this to a customer if you're having trouble processing their application and experience delays  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: troubleshooting` Add tag for oss, edu, or startups |

Hello {{ticket.requester.first_name}},

Thanks for providing the additional information! It looks like you still qualify for the GitLab for [Open Source/Education/Startups] program and we'll go ahead and process your [application / renewal request].

Unfortunately, I ran into an error while trying to [process your application/begin the renewal process], so I've escalated the issue internally. If we have any other questions for you, we'll let you know.

In the meantime, thank you for your patience! We'll continue to process your [application/renewal] as soon as possible.

Best,

{{current_user.first_name}}

### Common Requests:: Send Quote via Email

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase: Send this when customer is having trouble with eSeritif and the quote needs to be sent manually |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Status: Pending` `Comment Mode: Public` `Assignee: Current User` `Add tags: license` Add tag for oss, edu, or startups |

Hello {{ticket.requester.first_name}},

We’re excited to inform you that your application for the GitLab {EDU/OSS/YC} program has been approved and processed.

Please sign the attached quote and return it via this email address. After you sign, you’ll receive further instructions on how to either access the Customer Portal to download your license key (for self-managed), or further instructions on how to authenticate your groups (for SaaS).

Did you know that your license includes access to our world-class Community Forum? Sign up today and enjoy the power and knowledge of the wider GitLab community. Visit forum.gitlab.com to get started!

Best regards,

{{current_user.first_name}}

**BEFORE SENDING - make sure the quote pdf has been attached. Then remove this line.**



### Common Requests:: Request modification to our terms

| Metadata | Description |
| ------ | ------ |
| Description | Send this to a customer if they're requesting modification to our terms |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: troubleshooting` Add tag for oss, edu, or startups |

Hello {{ticket.requester.first_name}},

Thanks for your interest in our GitLab for {Education/Open Source/Startups} program.

At this time, we are generally not able to accommodate modifications to our end user license agreement. Slight modifications may be accepted, but will need to be reviewed and approved by our legal team. We cannot guarantee approval or turn around time. {For EDU: Additionally, we cannot accept addendums provided by the applying institution}.

In order to submit modifications, please reply to this email and attach a document with the specific requested changes.

Please let us know if you have any further questions. We appreciate your patience.

Best,

{{current_user.first_name}}

### Common Requests:: License Update

| Metadata | Description |
| ------ | ------ |
| Description | Add this to tickets with PDFs of the signed quote once you've uploaded to Salesforce and submitted for final approval |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: license` `Comment mode: Private` `Assignee: Current Useer` `Status: Solved` Add tag for oss, edu, or startups |

Processed

## Provisioning Phase

### Common Requests:: Authenticating SaaS

| Metadata | Description |
| ------ | ------ |
| Description | Send if they did not receive instructions for activating SaaS  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Set tags: troubleshooting, license` `Comment mode: Public` `Status: Pending` Add tag for oss, edu, or startups |

Hi {{ticket.requester.first_name}},

Thank you for your inquiry.

Please try the following steps to troubleshoot. If that doesn't work, then please submit a support ticket by following the instructions here: https://about.gitlab.com/support/#issues-with-billing-purchasing-subscriptions-or-licenses. Our Support team is best suited to help with license issues once our team has granted them.

[Link your accounts](https://docs.gitlab.com/ee/subscriptions/customers_portal.html#change-the-linked-account)
 * Log in to the [Customers Portal](https://customers.gitlab.com/customers/sign_in).
 * In a separate browser tab, go to GitLab.com and ensure you are not logged in.
 * On the Customers Portal page, click **My account > Account details**.
 * Under **Your GitLab.com account**, click **Change linked account**.
 * Log in to the GitLab.com account you want to link to the Customers Portal account.

[Associate the subscription to the namespace](https://docs.gitlab.com/ee/subscriptions/#change-the-associated-namespace)
 * Log in to the [Customers Portal](https://customers.gitlab.com/customers/sign_in).
 * Navigate to the **Manage Purchases** page.
 * Click **Change linked namespace**.
 * Select the desired group from the **This subscription is for** dropdown.
 * Click **Proceed to checkout**.

Please let us know if you have any other questions.

Best,

{{current_user.first_name}}

### Common Requests:: Self-managed license download instructions

| Metadata | Description |
| ------ | ------ |
| Description | Instructions for how to access their self-managed license  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Set tags: troubleshooting, license` `Comment mode: Public` `Assignee: Current User` `Status: Pending` Add tag for oss, edu, or startups |

Hi {{ticket.requester.first_name}},

Thank you for your inquiry. In order to activate your self-managed subscription, you'll need to access the license file we sent you.

To do so, please do the following:

1. Sign in to the GitLab [Customer Portal](https://customers.gitlab.com/customers/sign_in) using the account name and email you provided during initial application or renewal. Reset the password if necessary.
1. Navigate to _Manage Purchases_ and the license will be available for your download.

Please let us know if you have any other questions!

Best,

{{current_user.first_name}}

## Multiple Phases or Other

### Common Requests:: Internal Support Ticket Filed

| Metadata | Description |
| ------ | ------ |
| Description | Send this if you need to file an internal support ticket to escalate an issue  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: troubleshooting` Add tag for oss, edu, or startups |

Hello {{ticket.requester.first_name}},

Thanks for reaching out! I have internally escalated the issue you've reported and will let you know when we have a status update or if we have any questions for you.

Please feel free to write back to check in on the status if you do not hear back in about 3 business days.

Thank you!

Best,

{{current_user.first_name}}


### Common Requests:: Delayed Response

| Metadata | Description |
| ------ | ------ |
| Description | Use when we are experiencing a high volume of requests  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, oss` `Comment mode: Public` `Status: Pending`|

Hi {{ticket.requester.first_name}},

Thank you for your patience with our delayed response time.

We are currently experiencing a high volume of requests and it is taking longer than usual for us to respond.

If future requests are urgent, please include "URGENT" in the subject line of your email and we will do our best to prioritize your request.

Best,

{{current_user.first_name}}


### Common Requests:: Redirect Technical Support Question to Forum - Support

| Metadata | Description |
| ------ | ------ |
| Description | Send to users who ask for help troubleshooting or who have technical questions  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Status: Solved` `Add tags: troubleshooting` Add tag for oss, edu, or startups |

Hi {{ticket.requester.first_name}},

Thanks for reaching out! Unfortunately, we can only help with GitLab for [Open Source/Education/Startups] program-related questions here.

For help with troubleshooting and technical questions, we encourage you to post on the [GitLab Forum](https://forum.gitlab.com/). We have support engineers, product managers, and other GitLab team members who regularly monitor the forum and help users.

I'll close this issue as `solved` for now, but please feel free to respond if you have any specific questions about the GitLab for [Open Source/Education/Startups] program.

Best,

{{current_user.first_name}}

# Education program - Zendesk Macros

The following Zendesk macros are meant to help interface with people interested in our [GitLab for Education program](/solutions/education/). For more context on when to send them, please reference the [Community program workflow page](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/).

## Pre-Qualificaiton Phase

### EDU:: Basic info on EDU program

| Metadata | Description |
| ------ | ------ |
| Description | Pre-Qualification Phase: Providing basic information and links regarding the Education program.  |
| Available for | All Agents |
| Actions | `Add:Comment/Description`  `Assignee: Current User` `Status: Pending` `Add tags: license` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

Thanks for your interest in our Education Program at GitLab!

If you would like to learn more about our program please visit our [Education Program Website](https://about.gitlab.com/solutions/education/) and our [handbook](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/). If you wish to apply, please fill out our [application form](https://about.gitlab.com/solutions/education/join/#application). Specific program requirements can be found [here](https://about.gitlab.com/solutions/education/join/).

We encourage you to apply to our program by filling out the application form. Once you apply, one of our team members will reach out to you directly! Please note that it may take up to 10 business days for us to review your application.

If you have any additional questions please feel free to contact us at education@gitlab.com.

We look forward to hearing from you!

Best regards,

{{current_user.first_name}}

## Qualification Phase

### EDU::EDU Rejecting Students

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send this email to reject a student applicant  |
| Available for | All Agents |
| Actions | `Add:Comment/Description`  `Assignee: Current User` `Status: Solved` `Add tags: license, edu/oss-rejection` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

Thanks for your interest in GitLab and for applying to our Education Program!

We are so excited that you would like to learn about GitLab. Unfortunately, we are unable to accept your application because you do not meet our [program requirements](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/#students).

Your application indicates that you are currently a student. Our GitLab Education Program only offers a centralized license to the University via a campus faculty or staff member. Please encourage a University representative to apply [here](https://about.gitlab.com/solutions/education/).

In the meantime, please check out our [free subscription](https://about.gitlab.com/pricing/#gitlab-com) for GitLab.com or a [free download](https://about.gitlab.com/pricing/#self-managed) of our core self-managed offering. You can also apply for a [30-day trial](https://gitlab.com/-/trials/new) if you’d like to try out some more advanced features.

We encourage you to check out all of our content at [GitLab Learning Tracks](https://about.gitlab.com/learn/) to get started on your GitLab Journey.

Best regards,

{{current_user.first_name}}


### EDU::EDU Requesting Email Domain

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send this email if the applicant applies with an email address that does not use their institiution email domain |
| Available for | All Agents |
| Actions | `Add:Comment/Description`  `Assignee: Current User` `Status: Solved` `Add tags: license` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

Thank you for your interest in GitLab and applying to our Education Program!

In order to qualify for our Education Program, the applicant must use an official email address from the same domain as the institution applying. Please submit the application again using the same email domain as the institution.

Best regards,

{{current_user.first_name}}


### EDU::EDU Requesting Non-Profit Verification

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send this email to collect non-profit status information|
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, edu` `Comment mode: Public` `Status: Pending`|

Hello {{ticket.requester.first_name}},

Thank you for your interest in GitLab and applying to our Education Program!

In order to qualify for our Education Program, we need to verify that the Educational Institution you are applying on behalf of is a non-profit entity. Applications from for-profit educational entities do not qualify.  [Please see our handbook](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/) for more details on GitLab for Education Program requirements.

Please respond to this email with proof that the Educational Institution you are applying on behalf of is a non-profit entity. Acceptable proof can consist of a webpage on your institution's domain or an official document.

Best regards,

{YOUR NAME}


### EDU::EDU General Rejection

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send this email to reject an applicant based on status or use case.  |
| Available for | All Agents |
| Actions | `Add:Comment/Description`  `Assignee: Current User` `Status: Solved` `Add tags: license, edu/oss-rejection` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

Thank you for the additional details regarding your institution and proposed use of GitLab. Unfortunately, your application does not qualify for our GitLab for Education Program. Please see our [program requirements](https://about.gitlab.com/solutions/education/join/) and [our handbook](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/) for more details on the program requirements including the types of educational institutions that qualify and acceptable use cases. Please feel free to email us directly with questions.

We are happy to connect you with a sales representative within your region to discuss licensing options.

Would you like us to connect you with our sales team?

Thanks again,

{{current_user.first_name}}


### EDU::Collecting EDU qualification info

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Requesting qualification information on use case.  |
| Available for | All Agents |
| Actions | `Add:Comment/Description`  `Assignee: Current User` `Status: Pending` `Add tags: license` `Comment mode: Public`|

*Note: you can remove any sections that they have already provided.*

Hello {{ticket.requester.first_name}},

Thanks for your interest in GitLab and applying to the GitLab for Education Program!

In order to qualify for a free Educational Program License, we need to verify that your use case meets the requirements of our [GitLab for Education Program requirements](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/#gitlab-for-education-program-requirements). Once we receive verification of the use case, we will send a  zero dollar quote with the End User License Agreement attached.

**In order to proceed, please reply to this email with the following:**
* A description of how the license will be used at your educational institution
    * Professional infrastructure operations and information technology operations do not fall within the stated terms of the Education Program.
    * See [our FAQ section](https://about.gitlab.com/solutions/education/join/#faqs) for additional details
* Proof that the educational institution you are applying on behalf of is a non-profit entity
    * Acceptable proof can consist of a webpage on your institution's domain or an official document
* Any adjustments needed to the primary contact information
    * Only signatures by faculty or staff with proper signing authority on behalf of the institution will be accepted
    * If you wish the license information (CustomersDot login and license key) to be sent to someone other than the primary contact, please provide their information here
* Any adjustments to the number of seats that are needed
    * The number of seats is the number of different users that will be using the subscription for the next year

Once we receive the above information, we will process your request and return a quote for signature. Please allow a minimum of 10 business days for return.
You can email us back at education@gitlab.com with any questions.

Best regards,

{{current_user.first_name}}


### EDU::EDU Second email asking for participants data

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Requesting qualification information on the use case for the second time  |
| Available for | All Agents |
| Actions | `Add:Comment/Description`  `Assignee: Current User` `Status: Pending` `Add tags: license` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

Thanks for your reply. In order to process your application we need more details on how the license will be used at your educational institution. Please see our [GitLab for Education Program requirements](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/#-gitlab-for-education-program-requirements).

In order to proceed:
* Please reply to this email and **describes specifically how the license will be used at your educational institution**.
* Please include any adjustments needed to the number of seats or primary contact information.

Once we receive the above information, we will process your request and return a renewal quote for signature. Please allow a minimum of 10 business days for return.

Please email us at education@gitlab.com with any questions.

Best regards,

{{current_user.first_name}}


## Booking Phase

### EDU::EDU E-signature request via DocuSign - Salesforce

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase: Send this email via DocuSign when you send the quote in Salesforce |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, edu` `Comment mode: Public` `Status: Solved`|

Hi {{ticket.requester.first_name}},

Your GitLab for Education {application/renewal request} has been approved!

Please e-sign this quote and the terms and as the next step.

Feel free to email education@gitlab.com if you have any questions.

Thank you,
{{current_user.first_name}}

### EDU:: EDU new application approval Zendesk notification

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase: Send this email via DocuSign when you send the quote in Salesforce |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, edu` `Comment mode: Public` `Status: Solved`|

Hello {{ticket.requester.first_name}},

Thank you for applying to the GitLab for Education program!

Your application has been approved and I've emailed a quote for you to sign via **DocuSign**.

Once we receive  your signed quote it will be submitted for final approval.

Please feel free to email education@gitlab.com if you have any additional questions or need support with the quote. Be sure to check your spam folder for the quote if you do not receive it shortly.

Best regards,

{{current_user.first_name}}

### EDU::EDU welcome

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase: Send this welcome email after the signed quote has been submitted for approval  |
| Available for | All Agents |
| Actions | `Add:Comment/Description`  `Assignee: Current User` `Status: Solved` `Add tags: license` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

We submitted your signed quote for final approval and you will be receiving an email with instructions for accessing the license within 1-day.

In the meantime, welcome to the GitLab for Education Program! We are thrilled to welcome you aboard.

Here are a few steps to get started:
- Please visit our [Education Category on the GitLab Forum](https://forum.gitlab.com/c/gitlab-for-education/37) and [introduce yourself](https://forum.gitlab.com/t/introduction-christina-hupy/39296). The GitLab forum is a great place to connect with fellow program members + Q&A! We have over 15k members who help to provide the answers you need to get up and running with GitLab!
- Visit our new site [about.gitlab.com/learn](https://about.gitlab.com/learn/)to get started learning GitLab.
- Be sure to follow us on Twitter at [@gitlab](https://twitter.com/gitlab) to stay up to date on all the exciting happenings here at GitLab.

We want to learn more about all the exciting things you do with GitLab!
- Interested in highlighting your success with GitLab? [Join other schools](https://about.gitlab.com/customers/) and participate in a Case Study with us.
- Do you have students doing cool things with GitLab? Invite them to submit to our [Student Spotlight Program](https://about.gitlab.com/blog/2020/06/17/gitlab-for-education-student-spotlights/)! There's a chance to earn swag and join us on a Twitch Stream to talk about their project!
- Did you know we have a [virtual meetup program](https://about.gitlab.com/community/meetups/)?  Meetups are a great opportunity for students to learn more about DevOps and connect with a global network or DevOps professionals (11k members from 26 countries!).

Please reach out to us directly at education@gitlab.com for questions regarding your subscription renewal. For technical Q&A please visit the [Education category on the GitLab Forum]( https://forum.gitlab.com/c/gitlab-for-education/37).

We look forward to hearing from you soon!

All the best,

{{current_user.first_name}}

## Renewal Phase

### EDU::EDU Requesting Renewal Information

| Metadata | Description |
| ------ | ------ |
| Description | Renewal Phase: Requesting additional information needed to renew Education license|
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, edu` `Comment mode: Public` `Status: Pending`|

Hello {{ticket.requester.first_name}},

Thank you for being a valued GitLab Education Program member!

{We noticed that your Education License is set to expire soon. We hope you choose to renew and would like to assist you in the process.}

In order to renew, please reply directly to this email with the following information:
 - The number of seats desired for the education license renewal.
 - Describe your use case for the education license. See the [GitLab for Education Program requirements](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/#gitlab-for-education-program-requirements). Professional IT and infrastructure operations do not fall within the stated terms of the Education Program.
 - Will the current account owner on the license stay the same? If not, please see the steps below for adding a new account owner.

Steps for adding a new account owner:
 - The new account owner must create an account in the GitLab [CustomersDot](https://customers.gitlab.com/customers/sign_in).
 - For GitLab.com (SaaS), the new account owner must link their GitLab CustomersDot Account with their GitLab Account by clicking the "Link my GitLab Account button" in the CustomersDot.
 - Provide us the contact information for the new account owner including name, email address, and full billing address.

Once we receive the above information, we will process your request and return a renewal quote for signature. Please allow a minimum of 10 business days for return.

Please email us at education@gitlab.com with any questions.

Best regards,

{{current_user.first_name}}

### EDU:: EDU Renewal quote sent - Zendesk notification

| Metadata | Description |
| ------ | ------ |
| Description | Renewal Phase - Booking: Send to applicants once you send the renewal quote to sign via DocuSign|
| Available for | All Agents |
| Actions | `Add:Comment/Description` |

Hello {{ticket.requester.first_name}},

Good news! Your renewal request has been approved and I've emailed a zero dollar quote for you to sign via **DocuSign**.

Once we receive  your signed quote it will be submitted for final approval.

Please let us know if you have any additional questions or need support with the quote. Be sure to check your spam folder for the quote if you do not receive it shortly.

Best regards,

{{current_user.first_name}}


### Support's Renewal Template (via `General::EDU Renewal Response` Zendesk Macro)

Hello {Name}

Thank you for reaching out to GitLab support.

In order to renew your GitLab for Education license, please email education@gitlab.com with the following information:

- The number of seats desired for the education license.
- Describe your use case for the education license. See the [GitLab for Education Program requirements](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/#education-program-requirements). Professional IT and infrastructure operations do not fall within the stated terms of the Education Program.
- Will the current account owner on the license stay the same? If not, please see the steps below for adding a new account owner.

Steps for adding a new account owner:
- The new account owner must create an account in the GitLab [Customer Portal](https://customers.gitlab.com/sign_in).
- Then the new account owner must link their GitLab Customer Portal Account with their GitLab Account by clicking the Link my

GitLab Account button in the Customer Portal.
- Provide us the contact information for the new account owner including name, email address, and full billing address.

I'll close this request but if you have any questions or issues simply reply back and it will reopen the ticket.

Best regards,

{{current_user.first_name}}


### EDU::EDU Renewal Thank You

| Metadata | Description |
| ------ | ------ |
| Description | Renewal Phase: Send to program members who have completed the renewal process after the signed quote is returned and submitted for approval|
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, edu` `Comment mode: Public` `Status: Pending`|

Hello {{ticket.requester.first_name}},

Thank you for renewing your GitLab for Education Program Subscription!

We've been adding to the Education Program and are excited to share some updates with you!

Here are a few of the highlights:
- First, we’d love to meet you! Please visit our [Education Category on the GitLab Forum](https://forum.gitlab.com/c/gitlab-for-education/37) and [introduce yourself](https://forum.gitlab.com/t/introduction-christina-hupy/39296). The GitLab forum is a great place to connect with fellow program members + Q&A! We have over 15k members who help to provide the answers you need to get up and running with GitLab!
- Check our [blog posts](https://about.gitlab.com/blog/2020/03/06/bring-gitlab-to-classroom-nearyou/) to learn more about the program and the various resources we offer.
- Visit our new site [about.gitlab.com/learn](https://about.gitlab.com/learn/)to get started learning GitLab.
- Be sure to follow us on Twitter at [@gitlab](https://twitter.com/gitlab) to stay up to date on all the exciting happenings here at GitLab.

We want to learn more about all the exciting things you do with GitLab!
- Interested in highlighting your success with GitLab? Participate in a Case Study with us. [Check out some examples](https://about.gitlab.com/customers/)! Reply to this email if you are interested and we'll get you started.
- Do you have students doing cool things with GitLab? Invite them to submit to our [Student Spotlight Program](https://about.gitlab.com/blog/2020/06/17/gitlab-for-education-student-spotlights/)! They get GitLab swag and their project will be featured on the [GitLab Unfiltered YouTube Channel](https://www.youtube.com/channel/UCMtZ0sc1HHNtGGWZFDRTh5A?view_as=subscriber).
- Did you know we have a [virtual meetup program](https://about.gitlab.com/community/meetups/)? We can help you host a virtual meetup for your campus! If you aren't ready to host your own, please encourage your students to join one of our [regularly hosted meetups](https://www.meetup.com/pro/gitlab) from around the globe. Meetups are a great opportunity for students to learn more about DevOps and connect with a global network or DevOps professionals (11k members from 26 countries!).

Stay tuned for more exciting to come!

Please reach out to us directly at education@gitlab.com for questions regarding your subscription renewal. For technical Q&A please visit the [Education category on the GitLab Forum]( https://forum.gitlab.com/c/gitlab-for-education/37).

We look forward to hearing from you soon!

All the best,

{{current_user.first_name}}

## Multiple Phases or Other
### EDU::EDU Announcement

| Metadata | Description |
| ------ | ------ |
| Description | Booking and Renewals Phase: Add this to the end of emails if there are any special EDU program announcements we're making. [Link to issue with announcements](https://gitlab.com/gitlab-com/marketing/community-relations/community-programs/education-program/general/-/issues/77)  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` |

Did you know that your Education License includes access to our world-class Community Forum? Sign up today and enjoy the power and knowledge of the wider GitLab community. Visit forum.gitlab.com to get started!

# Open Source program - Zendesk Macros

The following Zendesk macros are meant to help interface with people interested in our [GitLab for Open Source program](/solutions/open-source/). For more context on when to send them, please reference the [Community program workflow page](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/).

## Pre-Qualification Phase

### OSS:: OSS Basic Program Information

| Metadata | Description |
| ------ | ------ |
| Description | Pre-Qualification Phase: Send this email to provide basic information to program inquiries |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Status: Pending` `Add tags: OSS` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

If you would like to learn more about the program, please visit our [Open Source Program Website](https://about.gitlab.com/solutions/open-source/).

We encourage you to apply to our program by filling out the [application form](https://about.gitlab.com/solutions/open-source/join/). Once you apply, one of our team members will reach out to you directly.

### OSS:: OSS new app need more info

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send to new OSS applicants that have not sent all of the information needed.  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Status: Pending` |

Best regards,

{{current_user.first_name}}


## Qualification Phase

### OSS:: OSS new app need more info

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send to new OSS applicants that have not sent all of the information needed.  |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Status: Pending` |

Hi {{ticket.requester.first_name}},

We have received your application for the GitLab for Open Source program.

In order to process your application and decide whether your project qualifies for the program, we need more information.

Please send the following:
 * Link to your GitLab profile page (e.g. gitlab.com/username)
 * Link to your project or group's namespace so that we can verify that it is publicly visible and accessible (e.g. gitlab.com/project)
 * Link to a license file within your project or group with an [OSI approved](https://opensource.org/licenses) license

We recognize that people applying to this program may not have everything set up on GitLab yet, but we require some minimum set up to occur so that we can verify that the project meets our program's requirements.

If you have any questions, please let us know.

Thank you,

{{current_user.first_name}}

### OSS:: OSI-approved license

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Ask them to add OSI-approved licenses to their project |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: troubleshooting` `Status: Pending` |

Hi {{ticket.requester.first_name}},

Thank you for applying to the GitLab for Open Source program!

I see that you have linked to an OSI-approved license in your application, but you'll need to apply it to each project in your group before we're able to proceed. It should be added to the LICENSE file so that it shows up in the overview section of the project. This allows contributors to see it at a glance.

It's best to copy and paste the entire license into the file in its original form. Here is an example of a project you can refer to: https://gitlab.com/BuildGrid.

Unfortunately, it'll default to "All rights reserved" if there's no license file mentioned, so you'll need to ensure that you add the correct license to each project within your group.

Please let us know once you've updated the license file for all of your projects and we'll happily proceed considering your application.

Best regards,

{{current_user.first_name}}

### OSS:: Clarifying "not-seeking-profit" req and Qualification Examples

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send this if you need to clarify our non-profit requirement or provide qualification examples |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: OSS` |

Hello {{ticket.requester.first_name}},

Thank you for reaching out.

Can you please clarify your use case? Our goal is to support open source projects that do not have a dedicated income (donations are ok). If someone is developing an open source project and charging for services around that or charging for higher tiers that include the core open source project, we classify them as a company, and we're unable to provide our top tiers for free to them at this time.

I'm including more information below on some qualification criteria that helps guide our decision for granting free licenses. Please let me know if you have any questions. If you no longer qualify, we can help connect you with a sales representative so that they can help you find a solution for your use case.

Best,

{{current_user.first_name}}

----
**Examples of OSS projects that usually qualify:**
_Receives Donations_ -- The software is being developed by a community that gathers donations for covering costs.

_Has an open governance model_ -- Projects with open governance models are likely to be accepted. For more information about open governance models, see this [open source governance model article](https://www.redhat.com/en/blog/understanding-open-source-governance-models). The only model in there that would NOT qualify is the corporate governance model.

**Examples that usually do not qualify:**
_Open Core_ -- The software is being primarily developed by a company that uses the software for its core or base product. The company charges for use of the software at higher tiers.

_Charging for Services_ -- The software itself is not being sold but the open source project is being primarily developed by a company that charges for services around that open source project.

### OSS:: Qualification error, OSS federal exception rejection, and sales intro

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase - Send this VIA GMAIL so you can cc a Sales Rep if you initially approved the OSS application but can no longer move forward with it bc customer doesn't actually qualify |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: federal-exception, rejection` `Status: Solved`|

Hi {{ticket.requester.first_name}},

I apologize for the confusion, but as your case was being reviewed, someone caught something that I didn't catch: we have a Federal exception to our program, which means you do not qualify for the Open Source Program after all.

We periodically reassess our program offerings, so if you'd like to stay up-to-date with the latest community-related announcements, like this topic, we encourage you to "watch" the Newsletter subcategory on our forum: https://forum.gitlab.com/c/community/newsletter/5

I am happy to be able to connect you with a sales representative to discuss licensing options that will work best for your specific use case. I have CCed [ADD SALES REP NAME HERE] on this email communication. They will likely reach out in order to discuss how best to get you what you need.

I will go ahead and mark this ticket as 'solved' for now, but if you need anything at all, or if you have questions, simply reply to this thread and we will be here to help.

Best,

{{current_user.first_name}}


## Booking Phase

### OSS:: OSS e-signature request via DocuSign - Salesforce

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase (new and renewals) - Send this to users via DocuSign on Salesforce when their application is approved |
| Available for | All Agents |
| Actions | `Add:Comment/Description` |

### OSS::OSS E-signature request via DocuSign - Salesforce

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase: Send this email via DocuSign when you send the quote in Salesforce |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, edu` `Comment mode: Public` `Status: Solved`|

Hi {{ticket.requester.first_name}},

Your GitLab for Open Source {application/renewal request} has been approved!

Please e-sign this quote and the terms and as the next step.

Feel free to email opensource@gitlab.com if you have any questions.

Thank you,
{{current_user.first_name}}

### OSS:: OSS new application approval - Zendesk notification

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase: Send this email via zendesk when the application has been approved and you have already sent the quote via DocuSign on Salesforce |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, oss` `Comment mode: Public` `Status: Pending`|

Hello {{ticket.requester.first_name}},

Thank you for applying to the GitLab for Open Source program!

Your application has been approved and I've emailed a quote for you to sign via **DocuSign**.

Once we receive  your signed quote it will be submitted for final approval.

Please feel free to email opensource@gitlab.com if you have any additional questions or need support with the quote. Be sure to check your spam folder for the quote if you do not receive it shortly.

Best regards,

{{current_user.first_name}}

### OSS:: OSS Welcome (new applicants)

| Metadata | Description |
| ------ | ------ |
| Description | Booking Phase: Send this once you have submitted their signed quote for a new subscription for approval |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Status: Solved`|

Hello {{ticket.requester.first_name}},

We've submitted your signed quote for final approval and you should receive instructions on how to activate your license soon.

In the meantime, welcome to the GitLab for Open Source Program! We are thrilled to welcome you aboard.

**Please reach out to us directly at opensource@gitlab.com to process your renewal next year**, or for any questions regarding the GitLab for Open Source program. For technical Q&A please visit the [GitLab Forum](https://forum.gitlab.com/).

We look forward to hearing from you soon!

All the best,

{{current_user.first_name}}

**Here are a few steps to get started:**

First, we’d love to meet you! Please visit the [GitLab Forum](https://forum.gitlab.com/) and introduce yourself by navigating to the `Community` Category, clicking `+New Topic`, and using the introduction tag. Here is an [example with a template](https://forum.gitlab.com/t/christina-hupy-senior-education-program-manager/39911) to follow!

The GitLab forum is a great place to connect with fellow community members + Q&A. Our team regularly interacts with the community and answers questions there, and we have over 15k members who can also help you get up and running with GitLab!

**Some other tips:**

- Visit our new about.gitlab.com/learn portal to get started learning GitLab.

- Be sure to follow us on Twitter at @gitlab to stay up to date on all the exciting happenings here at GitLab.

- Join one of our [virtual meetups](https://about.gitlab.com/community/meetups/) to get to know other community members in your area.

- If you love using GitLab, we encourage you to [write a review](https://www.g2.com/products/gitlab/reviews?utm_campaign=widget_embed&amp;utm_medium=riblets&amp;utm_source=read_more) of your experience since this helps us keep the program alive. Don't forget to mention that you're part of the GitLab for Open Source program!

**Stay tuned for more exciting things to come!**


## Renewal Phase

### OSS:: OSS Renewal Reminder and Request for Info

| Metadata | Description |
| ------ | ------ |
| Description | Renewal Phase (Qualification): Send this email to collect renewal information for the OSS program |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add:Comment/Description` `Assignee: Current User` `Set tags: license, oss` `Comment mode: Public` `Status: Pending`|

Hello {{ticket.requester.first_name}},

Thank you for being a valued GitLab Open Source Program participant!

We noticed that your Open Source License is set to expire soon. We hope you choose to renew and would like to assist you in the process. Our program requirements may change from time to time, and we'll need to make sure that you continue to meet them. If you do not, we'll work with you to make transitions as smooth as possible.

If you do not renew your membership for any reason, [your account will be downgraded](https://about.gitlab.com/pricing/licensing-faq/#what-happens-when-my-subscription-is-about-to-expire-or-has-expired).

**In order to renew, please reply directly to this email with the following:**

**To help us find your account:**
 * Name of your organization or project
 * Email associated with this account

**To help us make sure you still qualify:**
 * Link to your publicly visible GitLab instance
 * Link to one of your OSI-compliant licenses
 * Written acceptance of this statement (Include this sentence in your request): `I confirm that my organization does not seek to make a profit from this OSS project`

**To help us plan for the next year:**
 * Number of seats you're renewing. If needed, you can request additional seats
 * Any change of ownership to the account. If it needs to change, please send the new account holder's Name, email, and contact mailing address

If you have any questions, or if you no longer qualify for our GitLab for Open Source program for any reason, please reach out to us at opensource@gitlab.com.

Best regards,

{{current_user.first_name}}

### OSS:: OSS Renewal quote sent - Zendesk notification

| Metadata | Description |
| ------ | ------ |
| Description | Renewal Phase - Booking: Send to applicants once you send the renewal quote to sign via DocuSign |
| Available for | All Agents |
| Actions | `Add:Comment/Description` |

Hello {{ticket.requester.first_name}},

Good news! Your renewal request has been approved and I've emailed a zero dollar quote for you to sign via **DocuSign**.

Once we receive  your signed quote it will be submitted for final approval.

Please let us know if you have any additional questions or need support with the quote. Be sure to check your spam folder for the quote if you do not receive it shortly.

Best regards,

{{current_user.first_name}}

### OSS:: OSS Welcome (Renewals)

| Metadata | Description |
| ------ | ------ |
| Description | Renewal Phase - Booking: Send this when you have submitted the signed OSS renewal quote for final approval |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Status: Solved` |

Hi {{ticket.requester.first_name}},

We just submitted your signed quote for final approval and your renewal should be finalized soon. If you experience any problems, please let us know.

I'm including some information for you below about getting more plugged into the GitLab community. Thanks again for being part of the GitLab for Open Source program!

Best,

{{current_user.first_name}}

**In case you didn't already know about the forum:**

First, we’d love to meet you! Please visit the [GitLab Forum](https://forum.gitlab.com/) and introduce yourself by navigating to the `Community` Category, clicking `+New Topic`, and using the introduction tag. Here is an [example with a template](https://forum.gitlab.com/t/christina-hupy-senior-education-program-manager/39911) to follow!

The GitLab forum is a great place to connect with fellow community members + Q&A. Our team regularly interacts with the community and answers questions there, and we have over 15k members who can also help you get up and running with GitLab!

**Some other tips:**

- Visit our new about.gitlab.com/learn portal to get started learning GitLab.

- Be sure to follow us on Twitter at @gitlab to stay up to date on all the exciting happenings here at GitLab.

- Join one of our [virtual meetups](https://about.gitlab.com/community/meetups/) to get to know other community members in your area.

- If you love using GitLab, we encourage you to [write a review](https://www.g2.com/products/gitlab/reviews?utm_campaign=widget_embed&amp;utm_medium=riblets&amp;utm_source=read_more) of your experience since this helps us keep the program alive. Don't forget to mention that you're part of the GitLab for Open Source program!

**Stay tuned for more exciting things to come!**


## Multiple Phases or Other

### OSS:: OSS Announcement

| Metadata | Description |
| ------ | ------ |
| Description | Booking and Renewals Phase: Add this to the end of emails if there are any special OSS program announcements we're making |
| Available for | All Agents |
| Actions | `Add:Comment/Description` |

We also invite you to participate in our upcoming user conference, GitLab Commit (Aug 26th)! It’s an all-day virtual conference so that you can join no matter your time zone. We hope to see you there!

### OSS:: OSS Rejection

| Metadata | Description |
| ------ | ------ |
| Description | Qualification and Renewals Phase - Send this email to reject applicants if they do not qualify for the OSS program |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags: license, oss, rejection, edu/oss-rejection` `Comment mode: Public` `Status: Pending`|

Hello {{ticket.requester.first_name}},

Thank you for being patient while we reviewed your case.

Unfortunately, we are unable to accept you into our program at this time.

The goal of the GitLab for Open Source program is to support open source organizations that are:

 * not making a profit or building a business around the open source code they create
 * have made all of their repositories / projects public; and
 * are using all OSI-approved licenses

[POSSIBLE ADDITION: We periodically reassess our program offerings and are hoping to launch a non-profit program in the near future that you may qualify for.]

We periodically reassess our program offerings. If you'd like to stay-up-to-date with the latests community-related announcements like this, we encourage you to "watch" the ["Newsletter" subcategory on our forum](https://forum.gitlab.com/c/community/newsletter/5).

We are happy to connect you with a sales representative to discuss licensing options that will work best for your specific use case. Would you like us to connect you with our sales team?

Best regards,

{{current_user.first_name}}

## Linux Foundation Member Projects

### OSS:: Linux Foundation (request to legal)

| Metadata | Description |
| ------ | ------ |
| Description | Send this to the legal team to request a modification of the OSS order form |
| Available for | All Agents |
| Actions | `Add:Comment/Description` |

Hi legal team,

This organization is part of the Linux Foundation and should be bound by the same negotiated terms of service. We need your help modifying the order form to refer to the negotiated terms. Here is a link to the issue with more context about these negotiated terms: https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/464


Here are the needed documents and references:

 * Link to negotiated terms of service for Linux Foundation: https://gitlab.my.salesforce.com/00P4M0000112hHX
 * Link to quote that requires modification: [ADD LINK TO PDF QUOTE ON SFDC]

Thank you!

# Startups program - Zendesk Macros

## Pre-Qualification

### Startups:: Providing basic program information

| Metadata | Description |
| ------ | ------ |
| Description | Send this to users if they inquire about the GitLab for Startups program |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: Startups` |

Hi {{ticket.requester.first_name}},

Thanks for your interest in our Startups Program at GitLab!

If you would like to learn more please visit our [Startups Program Website](https://about.gitlab.com/solutions/startups/), and the [FAQ section](https://about.gitlab.com/solutions/startups/#FAQ).

We encourage you to apply to our program by filling out the [application form](https://about.gitlab.com/solutions/startups/). Once you apply, one of our team members will reach out to you directly!

If you have any additional questions please feel free to contact us at startups@gitlab.com.

We look forward to hearing from you!

Best,

{{current_user.first_name}}

## Qualification

### Startups:: YCombinator Batch Not Shown

| Metadata | Description |
| ------ | ------ |
| Description | Send this to new applicants who can't select their batch from the application form |
| Available for | All Agents |
| Actions | `Add:Comment/Description` |

Hi {{ticket.requester.first_name}},

Thanks for reaching out. Our page is a bit outdated and we'll be fixing it soon.

In the meantime, please go ahead and apply using another batch date via https://about.gitlab.com/solutions/startups/. Once you've done that please let me know and also please send a screenshot of your bookface page showing that you're a YCombinator startup.

Once that's done, I'll be happy to help process your application.

Thanks, and please let me know if you have any questions.

Best,

{{current_user.first_name}}

### Startups:: Qualification for program

| Metadata | Description |
| ------ | ------ |
| Description | Send this to ask for proof that they qualify |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: startups` |

Hello {{ticket.requester.first_name}},

Thank you for your interest in the GitLab for Startups program!

Currently, only members of the current or two most recent YCombinator batches can apply.

If you are a member of the current batch and haven't yet presented on Demo Day, please send us a screenshot of your Bookface homepage or some other kind of proof.

If you do not currently qualify for our Startups program, please let us know if you'd like us to connect you to a Sales representative who can help you find the best solution for your use case.

Best regards,

{{current_user.first_name}}

### Startups:: Need info about product and seats

| Metadata | Description |
| ------ | ------ |
| Description | Send if they did not request a certain product or number of seats |
| Available for | All Agents |
| Actions | `Add:Comment/Description`|

Hi {{ticket.requester.first_name}},

Thanks for applying to our Startups Program at GitLab! In order to process your application, we need more information about your request.

Can you please let us know which product you're interested in (SaaS on GitLab.com, of self-managed), and how many seats you'd like?

Once we have that information, I'll issue a zero dollar quote for you to sign and once we receive that and it's approved, we'll issue your license.

If you have any questions, please let us know!

Best,

{{current_user.first_name}}

### Startups:: Startup Rejection

| Metadata | Description |
| ------ | ------ |
| Description | General Rejection for Unqualified Startup Applicaion |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Status: Solved` `Assignee: Current User` |

Hello {{ticket.requester.first_name}},

Thanks for reaching out. Unfortunately, we are unable to accept you into our GitLab for Startups program at this time.

We may be expanding the program in the future, but for now, we are strictly accepting only Y Combinator startups. You can follow along [this epic](https://gitlab.com/groups/gitlab-com/marketing/community-relations/-/epics/41) if you'd like to keep up-to-date with our expansion plans. If you'd like you can add your use case to the [relevant issue](https://gitlab.com/gitlab-com/marketing/community-relations/gitlab-for-startups/-/issues/7).

We are happy to connect you with a sales representative to discuss licensing options that will work best for your specific use case. Would you like us to connect you?

Best Regards,

{{current_user.first_name}}

## Booking

### Startups:: Startups Welcome

| Metadata | Description |
| ------ | ------ |
| Description | Relates to the GitLab for Startups program. Send this when you Submit for Approval on Salesforce |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Add tags: startups, new-application` `Status: Solved` `Assignee: Current User` `Comment mode: Public`|

Hello {{ticket.requester.first_name}},

We've submitted your signed quote for final approval and you should receive instructions on how to activate your license soon.

In the meantime, welcome to the GitLab for Startups Program! We are thrilled to welcome you aboard.

If you need help with anything, please reach out to us directly at startups@gitlab.com for questions regarding the GitLab for Startups program. For technical Q&A please visit the [GitLab Forum](https://forum.gitlab.com/).

For example, if you need to update the number of seats during your 12 month program membership, we can do that free of charge. If you wish to purchase a support package, we can help with that too.

When your 12 month Startups program membership nears an end, we'll send instructions for how to transition to a paid account, or you can write to us at startups@gitlab.com and request that we connect you to a sales representative who can help you find the right option for your specific use case moving forward.

We look forward to hearing from you soon!

All the best,

{{current_user.first_name}}


**Welcome to the GitLab for Startups program!**

**Here are a few steps to get started:**

First, we’d love to meet you! Please visit the [GitLab Forum](https://forum.gitlab.com/) and introduce yourself by navigating to the `Community` Category, clicking `+New Topic`, and using the introduction tag. Here is an [example with a template](https://forum.gitlab.com/t/christina-hupy-senior-education-program-manager/39911) to follow!

The GitLab forum is a great place to connect with fellow community members + Q&A. Our team regularly interacts with the community and answers questions there, and we have over 15k members who can also help you get up and running with GitLab!

**Some other tips:**

- Visit our new about.gitlab.com/learn portal to get started learning GitLab.

- Follow us on Twitter at @gitlab to stay up to date on all the exciting happenings here at GitLab.

- Join one of our [virtual meetups](https://about.gitlab.com/community/meetups/) to get to know other community members in your area.

- If you love using GitLab, we encourage you to [write a review](https://www.g2.com/products/gitlab/reviews?utm_campaign=widget_embed&amp;utm_medium=riblets&amp;utm_source=read_more) of your experience since this helps us keep the program alive. Don't forget to mention that you're part of the GitLab for Open Source program!

**Stay tuned for more exciting things to come!**

Please reach out to us directly at startups@gitlab.com for any questions. For technical Q&A please visit the GitLab Forum.

We look forward to getting to know you better, welcome again to the GitLab Startups community!



# Non-profits Program (not active yet)
We are currently exploring the creation of a non-profit program ([see handbook page](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/) with more info). In the meantime, these responses help us respond to inquiries about the program's status.


### Email Response to request from Sales
Hello {NAME},

Thanks for reaching out. This certainly does look like an interesting non-profit. Unfortunately, they do not qualify for any of our existing programs.

We currently do not have a formal non-profit program. Non-profit subscriptions are rarely granted as of now, and generally, the ones that are granted have a champion or approval from the E-group or Sales leadership. If you are able to obtain such support, we are able to help issue the license.

[Here](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/education-program/) is our handbook link.  Please let me know if you have any questions. At this time, I would recommend that they follow the issue in that handbook page and stay tuned. We hope to have more progress on this in the coming months.

We are happy to send our [template non-profit](https://about.gitlab.com/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros/) response if you'd like.

Best Regards,

{YOUR NAME}

### NP::Rejecting Non-profits

| Metadata | Description |
| ------ | ------ |
| Description | Qualification Phase: Send this to non-profit organizations or companies who apply for an EDU license |
| Available for | All Agents |
| Actions | `Add:Comment/Description` `Assignee: Current User` `Set tags:`non-profit `Comment mode: Public` `Status: Solved`|

Hi {{ticket.requester.first_name}},,

Thanks for your interest in GitLab and for sharing your amazing efforts with us! Unfortunately, at this time, the work you explained, does not qualify for one of our existing free programs([GitLab for Open Source](https://about.gitlab.com/solutions/open-source/), [GitLab for Education](https://about.gitlab.com/solutions/education/), and  [GitLab for Startups](https://about.gitlab.com/solutions/startups/)).

We would absolutely love to support non-profit organizations, and are actively working towards doing so in the future! I hope you understand that we see the value in the work that you do, but our bandwidth is currently full with our existing programs. Please stay tuned on our [non-profit issue](https://gitlab.com/gitlab-com/marketing/community-relations/community-programs/education-program/general/-/issues/17) and please feel free to add feedback for us.

In the meantime, please consider [signing up](https://about.gitlab.com/pricing/) for one of our free-tiers (SaaS or Self-Managed). That way we still get to work together.

Best regards,

{{current_user.first_name}}
