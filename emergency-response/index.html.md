---
layout: handbook-page-toc
title: "Marketing - Emergency Response"
description: "GitLab's email response process for marketing emergencies"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Marketing Emergency Response

At times GitLab needs to communicate a "breaking" change or details related to a high-priority emergency patch. These emails are transactional and are highly targeted to the impacted audience.

<!-- Note to Amy: should we put a timeframe on what we consider an emergency? -->

**Not an emergency?** For important planned customer communications, please use [the customer update/announcement process](/handbook/marketing/emergency-response/#customer-comms-email), to enable teams to work together and plan without the urgency of an emergency request.

**As soon as an emergency communication is recognized, the Requesting team MUST:**
1. Create an **[incident communication request](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=incident_communications)** (built to auto label and assign to the correct people)
1. Notify in the #mktgops Slack channel
1. If there is not a timely response in Slack, page the on-call Marketing Ops via entering `/pd` trigger command in any Slack channel and select `Marketing Ops Ext. Comms - Emergency`.
1. In the template the requesting team will include details including CTA, email body, send date and **provide link to Google sheet containing list**. 

## Roles and Responsibilities
### Requestor is responsible for: 
* **Alerting email team as soon as possible that there may be a send (even if it does not move forward)**
* Providing FINAL email, landing page, form copy, autoresponder copy, etc.
    * NOTE: The addition of each item will increase scope and potentially delay announcement
* [Requesting target list](https://gitlab.com/gitlab-data/analytics/-/issues/new) from Data Team
* Creating epic and corresponding issues
      * Creating Epic - [Template here](/handbook/marketing/emergency-response/#customer-comms-epic-issues)
      * Creating [Email request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=incident_communications)
      * Creating [Form request issue (if necessary)](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=form_request)
      * Creating [Landing Page request issue (if necessary)](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=marketo_landing_page_request)
* Providing approval list and who signs off on the email
    * Legal, Customer Service VP and VP of the function who is initiating the communication (i.e., Security, Engineering, Infrastructure) are required to sign off
* Notifying affected field teams (Customer Success, TAM, SAL/AE, SA, Professional Services)
   * Also make sure to notify #sales and #customer-success before email is set to go out
* Approving test email 
* Providing any edits to the test email
* Providing send time and date 
* Approving all other materials and workflows (landing pages, forms, completion actions)


### Email team is responsible for: 
* Providing a timeline based on the request
* Creating epic and some issues (all except for the target list or email request issues)
* Building the email program and actual emails in Marketo (or sending platform of choice)
* Uploading target list to Marketo (or sending platform of choice)
* Sending test emails to requestors to approve
* Making one round of changes to the emails
* Creating form and Marketo landing page (if needed) - about.gitlab.com content or landing pages need to be requested and are created by the corp marketing team
* Building workflows for form completion actions
* Deploying emails
* Providing email performance report, email link click reports, and form/landing page reports
* Creating SFDC campaign if needed (if needed)
* Coordinating SDR routing needs with Marketing Ops


## Standard Process
This is the process to follow when there is an announcement that is an emergency that will need to be sent by the marketing ops and campaigns team. The marketing teams will determine what platform will be used based on the information that is provided to them such as timing, list size and severity.

1. **Requesting team notifies that an emergency communication is needed**
- Immediately slack #mktgops and include the incident issue and the incident slack channel. If there is not a prompt response, follow on-call procedures.

2. **Issue Creation**
 - Request issue utlizing [Incident Communications template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=incident_communications) in the Marketing Operations project.
- Fill in as many blanks as you can with as much information as you have available - the issue template will walk you through what is needed. Feel free to add any additional context that may be helpful. If you do not have all the information, that is OK, as we know it is an ongoing development. 
- Add Due Date (or best guess)
- Include googlesheet of copy document, even if it is blank.
- Include approx size of the list - this will determine what email platform we will use and helps immensely in our planning. Over estimate when you are unsure.
- If you are requesting a list, create an [issue](https://gitlab.com/gitlab-data/analytics/-/issues/new) with the data team and relate it to the issue you just created. 
- Include any custom fields you need created for `mail-merge` in the email. Include field max lengths needed, or best guess. Mktops will determine if they can use an existing field or not.
- Note if the links should not be trackable. (For Security alert types only)

3. **Issue in Process**
- Marketing team will work closely with you to develop a communication plan and cadence. Please continue to addinformation as you receive it and over communicate with us via slack/issue/carrier pigeon!
- List size and complexity will determine what [email platform](/handbook/marketing/emergency-response/#email-platform-to-use) we will need to use. 

4. **Approvals**

The following approvers are needed for the copy and list size:
 - Vice President of Customer Success
 - Vice President of the function who is initiating the communication (i.e., Security, Engineering, Infrastructure)
 - Legal (copy only)
 - Marketing Operations Manager
 - Appropriate field teams driven by the scope of customers receiving the communication (SAL/AE, SA, TAM, Professional Services)


5. **Email Ready to Deploy**
- Email team will send a sample to the requestor and approvers for their review - preferably, there is a quick Zoom sync to double check send size, variable fields, email copy and time of send.
- Requestor and approvers must approve in the issue before the email will be sent.
- Requestor sends alert to #sales and #customer-success on slack

6. **Email Launched** 
- The email team will provide stats minutes after launch, and at a cadence determined by the announcement team as necessary. 
      - Note: Full email stats are matured at 48 hours.
- Inbox monitoring will be done by the requesting team, unless otherwise stated.

## Lists 

1. For most emergency communications the requesting team should be providing a list as a Google Sheet in the issue request. 
     - The Data team is able to pull a list from user table if necessary. Please [create an issue](https://gitlab.com/gitlab-data/analytics/-/issues/new) with the Data team.
1. If a generic emergency communication the opt-in email list contained in Marketo can be used. 
1. Seldomly, lists need to be created in Salesforce or Marketo using parameters found within the marketing database.  
     - Marketo & Salesforce **do not** contain all records within the user table and vice versa

### List Considerations

- List loads greater than 20k take time. Millions may take hours/days.
- Each platform has their own limits as to size of CSV that can be uploaded.
- Lists greater than 100k may be subject to verification, so that we do not risk our sending reputation. Marketing Ops has budget set aside for these, but it will add possible days to the timeline to send. 

## Other Considerations and Questions for Requestors

- Send / Reply-to email
     - Should there be an auto-responder?
     - Will someone be monitoring the email address?
     - If unmonitored, does the email mention that?
- Form + Landing Page
     - Confirmation email copy
     - Who from GitLab receives the alert?


## Email Platform to Use
The email platform determines many different factors for us.
- [Marketo](/handbook/marketing/marketing-operations/marketo/): Quickest deployment, but most costly. Will not be used for communications over 20k
- [MailJet](/handbook/marketing/marketing-operations/mailjet/): Preferable platform for deployment, but it is not onboarded as of 2021-03-01
- MailGun: If list send is greater than 50k we will use this. This involves engineering and will add 1 day minimum to send
- [MailChimp](/handbook/marketing/marketing-operations/marketo/#mailchimp-sends): Only if other platforms are not an option


## Customer Update / Announcement Emails
{: #customer-comms-email .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

This section should be used for non-emergency, planned customer communications. As much as possible, we will work across all teams at GitLab to understand upcoming needs to communicate via email to customers. All emergency customer communications need to be approved by the Vice President of Customer Success and Legal or designates (if they are out on PTO or unavailable).

### Recommended Format for Customer Emails
The following is a recommended format for customer emails though this is a general template and may not suite all situations. Consider it a guideline versus the rule. 

1.  Why are you (customer) getting this email? 
1.  What is the issue/change/problem/etc? If it’s an issue, what is the impact? Is it resolved or still being worked? How do you know if you're impacted by the issue?
1.  What is your call to action? How do you do it? Where do you provide feedback? Where can you get more information?
1.  Close. If follow-up, project next communication/step.

### Epic Code & Issues
{: #customer-comms-epic-issues .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

The requestor (Security, TAM, etc.) will follow the process below to create the epic, which will have quick links to the appropriate issues to open.

* Create epic here and input code below: [https://gitlab.com/groups/gitlab-com/-/epics/new](https://gitlab.com/groups/gitlab-com/-/epics/new)

```
### :exclamation: Action items for requestor to complete
*Note: this will automatically be a confidential epic.*
* [ ] Once created, associate this epic to parent epic (if exists)
* [ ] Create issues in section at bottom
* [ ] Ensure all issues are associated to this epic

### :star: Purpose
<!-- Requestor, please describe the purpose of the email communication in this section for context by all teams involved -->

### :link: Key links
* [Copy Document]() `to be added by requestor ` ([use this template](https://docs.google.com/document/d/1hv0XF7j6SibLgHgGFxxlrbPrufxbcXHrO8ZRG04nFjU/edit#))
* [Target List]() `to be added by requestor when final`
* [Email Program]() `to be added by MOps` [shortcut](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/MF4267A1)
* **Determine email platform:**
   - [ ] If list less than 20k, most likely deploy with Marketo
   - [ ] If list 20-30k, most likely deploy with MailJet
   - [ ] If list greater than 50k, most likely deploy with MailGun

### :books: Issues for requestor to create (shortcuts below)
* [ ] [Request target list issue](https://gitlab.com/gitlab-data/analytics/-/issues/new) (Data Download Request template) - requestor open, Data Team DRI
* [ ] [Email request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=incident_communications) - requestor open, MOps DRI
  - the email issue is blocked until requestor provides final copy
* [ ] If landing page required: [Landing Page request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=marketo_landing_page_request) (optional, will increase scope and delay timeline) - requestor open, MOps DRI
* [ ] If form required: [Form request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=form_request)

### :point_up: Reminders on action items & timeline
* Requestor is responsible for providing FINAL copy, including review by all reviewers, by date indicated in timeline
* Requestor is responsible for providing list of who must review and approve email
* Requestor is responsible for approving test email and providing send time and date

/confidential
/label ~"MktgOps-Urgency::P1" ~"MktgOps-Priority::High Priority" ~"Customer Success" ~TAM 
/cc @amy.waller
```
