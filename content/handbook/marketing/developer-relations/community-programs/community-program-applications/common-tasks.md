---

title: "Common Tasks"
description: "This page lists some of the most common tasks, requests from applicants, and errors from our community program application workflow."
---







# Overview
This page lists some of the most common tasks, requests from applicants, and errors from our [community program application workflow](/handbook/marketing/developer-relations/community-programs/community-program-applications/).

Current community programs include: [GitLab for Education](/solutions/education/), [GitLab for Open Source](/solutions/open-source/), and [GitLab for Startups](/solutions/startups/).

## Phase 1. Qualification

### Qualified Applicant Passed from Sales to the Program Managers

Sales will pass along qualified program applicants in a few ways. Some will ping the team in the `#community-programs` or [#developer-relations](https://app.slack.com/client/T02592416/C0R04UMT9) slack channels. Others might reassign or ping program managers directly on Salesforce leads.

If a qualified applicant is referred to us:
1. Review the associated lead in Salesforce to confirm they are eligible.
1. Follow up with the lead via email and ask that they complete an application form for their appropriate program
1. When the application is received, follow regular processing steps for the program.

## Phase 2. Booking

### Adding a new contact to an account
A member may ask to change the account owner or have someone else sign the quote besides the person who applied. If the contact is not already in SFDC as a contact associated with an account, you will need to add them before you can use the contact as a *Bill To* or *Sold To contact*.  

1. Locate the account in SFDC
1. Click on *Contacts*
1. Click on *New Contact*
1. Set the *Record Type of new record* to `Standard` then click *Continue*
1. Enter in *First Name*, *Last Name* and *email address*
1. Set the  *Initial Source* to `Education, OSS or Other`
1. Check the address of the contact. The address should populate from the account address. Change it if needed. Be sure the address has a zip code otherwise you will not be able to build a quote
1. Click Save.

### Switch licenses from one type to another

If a member ask us to switch from self-managed to GitLab.com or vice-versa during the Subscription Term, please create an add-on opportunity and follow the [amendment rules](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#amend-subscription-quote) per B.

### Adding Support

If a member may ask to add on support after a license has already been issued, please create the add-on opportunity and follow the [amendment rules](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/deal-desk/#amend-subscription-quote) per 2B.

### Adding more seats to an existing subscription

1. Navigate to the original (Closed Won) **Opportunity** and click *New Add On Opportunity*
   - Update the *Opportunity name* - `CompanyName-Add [Quantity] [Product] EDU` (e.g. Oxford University- Add 25 Ultimate EDU)
   - Update: *Initial Source* to EDU/OSS, *Close date* to Today and *Stage* to '0-Pending Acceptance'
   - Update: *Sold to* and *Bill to* Contact to the Primary Contact
1. Select newly created **Opportunity** and create a new **Quote**:
   - Update: *Select Billing Account* to *existing billing account* and *Choose Quote Type* to *amend existing subscription for this billing account* and click *Next*
   - Click *Next* again (you can change signer if needed)
   - Update the total seat number to reflect the total seats after the desired increase. For example, if the account has 20 seats and would like to add 40 seats, enter 60 on the quote. This will generate a quote for 40 additional seats.
   - Click 'Submit' and follow the process for generating a PDF and sending the quote.

Once the quote is signed and the opportunity is submitted for approval, the LicenseApp will provision a new key for the increased number of users.

### End user license agreement or terms modification requests

- An institution may request slight modifications to our terms. To request a modification of our terms on behalf of an institution:
    - Send the [requesting term modification template email](/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros/#common-requests-request-modification-to-our-terms) indicating that the institution should provide the specific changes in a document to us via email.
    - Submit these changes to our legal team [review of customer edits process](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#request-for-gitlab-review-of-customer-edits-to-gitlab-template-or-review-of-customer-agreement-template).
- We maybe able to renew a license with modified terms if legal approved them in previously years. If the terms were previously approved, follow the same process to submit the prior terms for review. Note: Our terms may have changed so we need to check with legal even if they approved the modifications in the prior year.
- We cannot accept a quote returned from an institution with a addendum or their own agreement. Send the requesting term modification template email and add a note indicating that we are not able to accept terms provided by individual institutions.

### Refund process

- Send an email to ar@gitlab.com with a link to the appropriate **Opportunity** and ask them to provide a refund request (they will create a refund opportunity)
- Communicate to the member that they should see that payment reflect back to their records within 5-7 business days
- Proceed with new quotes/opportunities only when the refund process is done

### Processing tax exemption certificates

1. Attach these documents in the notes and attachments section of the opportunity
1. Enter the tax certificate ID in the Zuora quote. This should automatically remove the tax from the quote
1. CC sales-support for them to approve

### VAT ID clarification

VAT ID is not required for $0.00 transactions and additionally, many Education institutions are VAT exempt.

### Payment options for support

Once the quote is approved and the license has been delivered, the billing department will send an invoice where users can choose to pay via credit card, wire transfer or PO.

### Adding Credit Card details

- The member cannot pay directly by credit card. Rather, they need to add their credit card details on [customers.gitlab.com](https://customers.gitlab.com/).
- To do so, they need to follow these instructions:
  - Log into your account at [GitLab Subscription Manager](https://customers.gitlab.com/customers/sign_in)
  - Click on *Payment Methods* at the top of the page
  - Click on *Add new payment method*
  - Select *Credit Card* as the type
  - Enter the details and submit
  - Please send an e-mail to ar@gitlab.com once the credit card has been added and we will process the payment.

## Phase 3 and 4: Provisioning and Compliance

### Applicant indicates they have not received a license
An applicant may email education@gitlab.com and indicate that they signed the quote but have not yet received the license/subscription or instructions on how to access it.
1. Locate the opportunity in SFDC.
1. Check the *Approval History* section to verify that the *Overall Status* of the opportunity is *Approved*.
1. Check the *Quote status* to be sure it has been sent to *Z-billing*. If the quote was sent to Z-billing, the license (Ultimate) or subscription (Gold) should be available in the CustomersDot.
1. In order to check the status of the license, log into the [Admin CustomersDot](https://customers.gitlab.com/admin) with Okta. If you do not have access, open an [AR request](/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/).
    - Click on *Customers* from the *Navigation* panel.
    - Search for the customer's name and/or institution and locate the customer from the results. Note that the CustomersDot account is in the name of the *Sold to* contact on the quote.
    - Click on the home icon in the results list for that customer.
    - The *Manage purchases* page will open.
    - For Ultimate, the license should appear with links to *Copy the license to clipboard*. If the license does appear with the correct renewal date, then send the [Check the CustomersDot for Ultimate license template](/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros/#common-requests-self-managed-license-download-instructions) to the customer. Note: Before sending the email check the *Sold to* contact from the *Quote* in SFDC. The CustomersDot account is in the name of the *Sold to* contact. The person requesting where to receive the license may be the *Bill to* contact (and they don't have access to the portal). Adjust the template accordingly.
    - For Gold, the Gold Plan subscription should be listed with a proper expiration date. If there is an option to *Link my GitLab.com account*, send the applicant the [Authenticating SaaS template](/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros/#common-requests-authenticating-saas).
    - If the subscription is incorrectly associated with a different account in the CustomersDot, send the documentation on [Change account owner information](https://docs.gitlab.com/ee/subscriptions/customers_portal.html#change-account-owner-information) .
1. If the license is expired or instead of a license the option to purchase plans appears, this means that the license key was not properly issued and posted to the applicants' account after it was sent to Z-billing. In this case, you'll need to create a licensing support issue and escalate the issue if it is urgent by following the steps in [Requesting Assistance from GitLab Support for License Issues](/handbook/marketing/developer-relations/community-programs/community-program-applications/common-tasks/).

### Associating CustomersDot subscriptions with new accounts
For an overview of the process, see [Associating CustomersDot Accounts](https://youtu.be/yuainNUzxuc).

A member may request that a license subscription be associated with a new account in the [CustomersDot](https://customers.gitlab.com/). The *Sold To* person on the **original** opportunity and associated quote is generally the account owner that the license is granted to in the CustomersDot unless an additional request was made. In order to change the account to which the license is associated with in the CustomersDot:
1. The new person must first create an account in the [CustomersDot by registering](https://customers.gitlab.com/customers/sign_in).
1. For GitLab.com (Gold/hosted), they must link their GitLab account to their CustomersDot account. Once they signed into the CustomersDot, if their account is not already linked, they will be prompted to link their account with a *Link my GitLab Account button*.
1. Once the new account is created and linked, log into the [CustomersDot Admin panel](https://customers.gitlab.com/admin/) with okta and follow these steps to associate the license:
   - Click Customer on the left panel.
   - Search for the current account owner's profile using their full name, find the name in the list and click the edit option to open the page in a new tab.
   - Repeat the previous step for the new account owner.
   - Copy the Zuora and SFDC ID numbers from the current account owner's profile to the new account owner's profile. Click Save on the new account owner's profile.
   - If you need to remove the subscription from the current account owner's profile, remove the Zuora and SFDC ID numbers from their page and click Save.
   - Email the new account owner to verify that they can see the option to either activate their group for Gold or download the license key for Ultimate.
   - Notes: Changing the Sold To or Bill To contact information will not automatically send the subscription to the new contact in the CustomersDot. [See additional details in the support handbook](/handbook/support/license-and-renewals/workflows/customersdot/associating_purchases.html).

### Assigning New License to Correct Account Owner

In some instances, institution administration will be required to sign for a license, but have no intention of being the GitLab account owner. This often occurs when the administration needs to provide official signature, but the individual professor or department head plans to own the account.

In this case, the contact who will be the license manager should be the **Sold To** contact on the quote. The *Sold To** contact will need to create a CustomersDot account to obtain the license. The contact who signs the quote, generally an institution administrator with authority to sign, will be the **Bill To** contact.


## Phase 5: Renewals

### Resolving users over license issue

If users used more seats during the previous year than they paid for, this error will appear:
- `During the year before this license started, this GitLab installation had X active users, exceeding this licenses limit of Y by Z users. Please upload a license for at least X users or contact sales at renewals@gitlab.com`
To resolve this issue, follow these steps:
  1. Go to the [LicenseApp](https://license.gitlab.com/licenses/) and find the particular license that needs to be changed
  1. Click on *Duplicate license*
  1. *Users count* - the number of seats they requested
  1. *Trueup count* - the maximum number of users during the previous year
  1. Click on *Create license* and the updated license will automatically be sent to the account contact

### Applicant Asks for an Extended License during Renewals

Sometimes, applicants reach out for a renewal very close to the deadline and request an extension of their license while the renewal is organized.

If the Program Manager determines that an extension is appropriate:
1. First ask that the member apply for a trial of Gold or Ultimate to extend their access for 1 month as the renewal is settled.
2. If for some reason they've already used their free trial, please follow these steps for [working with trial extensions](/handbook/support/license-and-renewals/workflows/self-managed/trials.html).

## Other program specific tasks

### Reviewing Applicants to the Student Spotlights Program

1. Applicant submits the[ ]Google form](https://docs.google.com/forms/d/1jpevzEoR7Mih7rnuHfnT65El1a-KTQMXc-b2LSJq9-0/edit) by the due date.
1. The Education Program Manager will review and approve applicants from the [Google Form responses sheet](https://docs.google.com/spreadsheets/d/1eYiwV9lfgK_SOz760_3zmFwhkDzjVmx6iLZN5NEwMJw?usp=forms_web_b#gid=837712298).
1. Program Manager will send email to approved applicants with [Calendly link to schedule an interview time](https://calendly.com/gitlab-edu/gitlab-student-spotlight-interview) and [interview questions](#interview-questions).
1. The Education Program Manager will host recorded interviews via Zoom.
1. Program Manager will send follow up email to participants thanking them for their participation, linking to their featured project on GitLab Unfiltered/GitLab.com, and including a [GitLab Community Swag giveaway link](/handbook/marketing/developer-relations/contributor-success/community-appreciation/).

#### Interview questions

1. Introduce yourself: Share your name, what institution you are from, your role (educator, student, researcher), and what department you represent/use GitLab in, and how long you've been a participant in the GitLab for Education program.
1. How do you use GitLab? Introduce your project or how you use GitLab to teach DevOps; What are you researching?; What problem are you aiming to solve?; What content are you creating or teaching?; Who is involved in your project?; How long has this project been in existence?
1. Why GitLab: What tools within GitLab have you found most helpful/effective for your project/teaching?
1. Future Growth: What are you still working on/learning?; What direction do you see your project growing towards?; What GitLab tools are you still exploring or hope to implement in your work?
1. Suggestions for other teams like yours: Why should people use GitLab for projects related to teaching and learning?
1. Anything else?

### Linux Foundation applications

We are working on [simpliyfing the process to help Linux Foundation projects](https://gitlab.com/gitlab-com/marketing/community-relations/opensource-program/general/-/issues/216) join the GitLab for Open Source program. In the meantime, they will need to go through a modified process.

#### LF Project Qualification
The Linux Foundation has been given a list of coupon codes and a [set of instructions](https://docs.google.com/document/d/1TZMo65pRbtRODz7rUzT3_F2Sr-oKMfkwUbi7DvVdBBg/edit) for how to grant coupon codes to member projects and help them skip the SheerID verification process.

When their coupon codes run out, GitLab will need to issue more coupon codes for the Linux Foundation by [following these instructions]](/handbook/marketing/developer-relations/community-programs/automated-community-programs/#coupon-codes).

#### LF Project Booking

1. **Add Correct Contacts on Salesforce:** All LF member projects will go through the standard agreement signing process, unless otherwise indicated by the LF team. Make sure to add the needed [LF contacts](https://docs.google.com/spreadsheets/d/1UFaRATA8I2mmcZ-77KBXMoNZCmut5TalZytIzWCh1HQ/edit#gid=328962098) (See `Contacts for OSS Program` table) to the Salesforce Account. This table also indicates which contact will be the `Sold To`,  `Bill To`, and `Signer` contacts later on.

1. **Generate quote as PDF:** Generate the quote as you normally would but make sure that you have added the correct `Sold To`, `Bill To`, and `Signer` contacts (see previous step). Create a PDF.

1. **Submit a legal request:** You'll need to make sure that the quote references the negotiated terms we have with the Linux Foundation instead of our normal terms. To do this, you'll need to make a legal request. To do so press the `Legal Request` button on the Opportunity SFDC page. Go to Zendesk and grab the text from the `OSS:: Linux Foundation (request to legal)` macro and copy it into the body of the message. Copy the link to the PDF quote you generated (it will be attached to the opportunity in the `Google Docs, Notes, & Attachments` section of the Opportunity), and paste it in the appropriate section in the Legal Request message, near the end of the Zendesk template text.

Add the following Fields:
 * `Type of Legal Request`: Request for GitLab Agreement Template
 *  `Type of Contract`: Order Form
 * `Contract Source`: GitLab Contract Template

Once finished, save the legal request to submit. Add a comment at the top asking `@Sales-Support` to help add the word version of the quote for legal.

4. **Send quote via DocuSign to Signer:** Once you have the modified quote from Legal, it's time to send it for signature. Start the DocuSign sending process by following the [DocuSign handbook page](https://about.gitlab.com/handbook/sales/field-operations/order-processing/#how-to-send-an-order-form-to-the-customer-for-signature-via-docusign) and make sure to add the correct `Sold To`, `Bill To`, and `Signer` contacts as well as the appropriate Zendesk Macro email template. Save and send. Notify the customer and proceed to follow the rest of the normal application processing process.

#### LF Project Renewals
You'll need to submit a legal request as in the steps above to modify the renewal order form. Make sure you enter all of the correct `Sold To`, `Bill To`, and `Signer` contacts.

Double check to make sure you send for signature to the correct Signer contact. Again, follow the steps above to make sure you add the correct fields when sending through DocuSign.

## Common errors

### Quote Errors
- Error:`Insert failed. First exception on row 0; first error: INSUFFICIENT_ACCESS_ON_CROSS_REFERENCE_ENTITY, insufficient access rights on cross-reference id...`can be encountered while trying to send generated quote through DocuSign.
  1. Check to see if you are the owner of the related Opportunity and Account objects. If not, change the owner to yourself.
- Error: `Please obtain the necessary approvals before generating document(s)` can be encountered while generating .pdf or Word file of the quote.
  1. Update *Submitter Comments* field on the quote object.
  1. Click on *Submit for Approval* on the quote object.
- Error:`The Zuora GetTax Call to Avalara returned the following errors(s): Address not geocoded. (Address cannot be geocoded). An exact street name match could not be found.......` can be encountered after choosing the product on the quote and clicking submit.
  1. Scroll down on the Quote view and click on the name of *Sold to Contact* to view the account details. On the account view, scroll down to the *Address information* section. Inspect the address to determine if the applicant included an actual street number and name. Commonly, applicants will list enter  *Mailing Street: Department of Computer Science*. This type of address cannot be geocoded and will prevent the quote from being issued. There may be other issues such as a typo.
  1. Email the applicant from the Zendesk with the [`Requesting valid address' template](/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros).
  1. When the applicant replies, the ticket will appear in Zendesk. Follow the steps to [update an account address](/handbook/marketing/developer-relations/community-programs/community-program-applications/common-tasks/#editing-an-address) and proceed with the [Step 3: Send the quote to the applicant.](/handbook/marketing/developer-relations/community-programs/community-program-applications/#step-4-send-the-quote-to-the-applicant)
     - Note: The address needs to be updated for both the *Account* and the *Opportunity* for the quote to generate properly.

### Application Form Error
- Error: An applicant may inform us that they are not able to view the application form in their browser. Most likely, the web browser is blocking the content of the form through a content or privacy blocker because the form is generated from Marketo. This happens most often in Firefox. Send the applicant the [application form not visible email template](/handbook/marketing/developer-relations/community-programs/community-program-applications/email-and-zendesk-macros/).

### Flagged for Compliance Review Error

In some cases, new opportunities need to be reviewed by our Legal team before we can process. If you try to create a quote on an opportunity that needs review, you will see an error indicating the opportunity has been flagged. If this happens:

1. Leave the related ticket open in Zendesk and add an internal note says "Pending Compliance Review"
1. Check back on the ticket in 24-48 hours. If the error is removed, process the opportunity. If the error remains, chatter @sales-support for assistance.

### Requesting Assistance from GitLab Support for License Issues

If you are not able to resolve a license request or problem with the above workflows, please proceed through the following steps:

 * If the license request is not urgent, please open an issue as explained in the [Regarding Licensing Support](/handbook/support/internal-support/#regarding-licensing) table on the [Working with GitLab Support handbook page](/handbook/support/internal-support/). The issue will be automatically shared in the `#support-licensing-subscription` Slack channel.

 * If the problem is urgent, or if it needs to be internally escalated, please see the details for [support escalation](/handbook/support/internal-support/support-ticket-attention-requests.html) and fill out the [support escalation form](https://gitlab-com.gitlab.io/support/toolbox/forms_processor//support_escalation/) accordingly. Add a link to any related issue you've already opened in the `Reason for Request` field. When you submit the form, an issue is created in the [support escalation issue tracker](https://gitlab.com/gitlab-com/support/escalations/-/issues) and a thread is started in the `#support_escalations` Slack channel.

Once you've completed either of the steps above, make sure to add a link to the related Support issue in the Zendesk ticket you have open with the program member. Write an `Internal Note` and submit the ticket as `Open` so that you can keep an eye on it. You may need to follow up with the Support team to make sure that the issue gets resolved.

## Common tasks in SFDC

### Editing an address
1. Navigate to the *Account* view in SFDC. Scroll down to the *Address Information*, *Billing Address*.
    - Note: The *Billing Address* can also be accessed from the *Contact* view.
1. Click the edit button to edit the address. Click *OK* to save the changes.
    - Note: The address should update for the *Account*, *Contact* and *Opportunity*.

### Reassign an SFDC object
1. Click *Change* next to the object owner field and select the appropriate owner.

### Merging duplicated accounts
1. Make sure the domain and account names are the same.
1. Chatter @Sales-Support one of the accounts and request that the accounts be merged.

### Viewing a signed quote
1. Once signed the document will be automatically attached to the *Opportunity* in the `Google Docs, Notes, and Attachments` section.

### Naming conventions
 [Naming conventions](https://about.gitlab.com/handbook/sales/field-operations/gtm-resources/)
  - Lead status: *Accepted* - Program Manager reached out to the lead/contact
  - Lead status: *Qualifying* - Program Manager is in 2-way conversation with lead/contact
  - Lead status: *Unqualified* - Applicant is not qualified for that program

### Check Approval History
1. From the *Opportunity* click *Approval History*.
1. Each step in the process will appear under *Action*.
1. If the opportunity was approved the *Overall Status* will indicated *Approved*.
1. If the opportunity appears to be stalled in the process, chatter the person the opportunity is assigned to.

### Chatter Notifications
Chatter is the main method of communication between users and groups in SFDC. Chatter can occur at *Account* or *Opportunity* level. Chatter notifications for individuals can be found on the individual's home tab in SFDC.
- Sales team members (operations and account owners) will chatter Program Managers or individuals when an action is required on a record.
- When an individual is chattered the message will appear both at the top of the object from which the chatter initiated, i.e. *Account* or *Opportunity* and it will appear in the *Chatter* tab of SFDC.
- In order to chatter someone directly you can type *@{NAME}* in the chatter window and select the name of the person or group you wish to chatter.
- For most questions related to the EDU-OSS workflow, chatter *@Sales-Support*

### Closing Expired Renewals in Salesforce

The sales team might tag the Program Manager in expired opportunities that were never processed. This could be the result of an applicant deciding they no longer need a GitLab license, or a group not reaching out to renew their license. While it's not a priority, it's important these expired opportunities be processed in Salesforce.

1. The sales team will chatter the Program Manager on expired opportunities.
2. On the opportunity page, click `Edit`
3. Update the `Close Date` to today's date.
4. Change the `Stage` to `8- Closed Lost`
5. Update the `Closed Lost/Unqualified Detailed` section to `other` and add details that say "Educational Institution did not reach out to renew" or "Educational Institution did not move forward with license"
6. Save the opportunity details.
7. Close the case in the Case Queue.

### Editing and Resending a Quote due to Zipcode Error

If an error is made on a quote, for example, a missing zipcode or incorrect billing contact, you'll need to update and resend the quote via Salesforce and DocuSign.

1. Navigate to the relevant opportunity
2. Click on the 'Contacts' section and choose the contact that serves as the Sold To/Bill To contact. Update the address on the billing contact's page. Click 'Save'
3. Return to the opportunity, scroll down to the 'Quotes' section and click the link to the relevant quote in the 'Quote Name' column
4. Click 'Generate PDF Doc' and proceed with standard process for sending a quote through DocuSign.

### Editing and Resending a Quote due to a Sold To / Bill To Contact Error
1. Navigate to the relevant opportunity
2. Scroll down to the 'Quotes' section and click the link to the relevant quote in the 'Quote Name' column
3. Click the 'Edit Quote Details button'
4. Update the Sold To/Bill To information by searching and selecting the correct contacts.
5. After making the edits, click 'Save'
6. Click 'Generate PDF Doc' and proceed with standard process for sending a quote through DocuSign.
