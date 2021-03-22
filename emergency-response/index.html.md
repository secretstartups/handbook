---
layout: handbook-page-toc
title: "Marketing - Emergency Response"
description: "GitLab's response process for marketing emergencies"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Marketing Emergency Response

At times GitLab needs to communicate a "breaking" change or details related to a high-priority emergency patch. These emails are transactional in nature and are highly targeted to the impacted audience. 

When Marketing Ops is pinged for assistance in emergency communication situation it is either to support the Marketing Program Managers (MPMs) or because the MPMs are not reachable as its off-hours. 

The Security team *should* create an [incident communication request](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new#incident_communications) in the Digital Marketing Program project. This template is built to auto label and assign to the correct people. In addition to filling out the issue, please contact us via: `@mktg-ops` in Slack. For urgent issues, like a security incident, and no timely response in slack, page the on-call Marketing Ops via entering `/pd` trigger command in any Slack channel and select `Marketing Ops Ext. Comms - Emergency`.

In the template the Security team should include details including CTA, email body, send date and **provide link to Google sheet containing list**. 

## Roles and Responsibilities
### Requestor is responsible for: 
* **Alerting email team as soon as possible that there may be a send (even if it does not move forward)**
* Providing FINAL email, landing page, form copy, autoresponder copy, etc.
    * NOTE: The addition of each item will increase scope and potentially delay announcement
* Requesting target list from Data Team (creating the issue)
* Creating [email request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/blob/master/.gitlab/issue_templates/incident_communications.md)
* Providing approval list and who signs off on the email
* Approving test email 
* Providing any edits to the test email
* Providing send time and date 
* Approving all other materials and workflows (landing pages, forms, completion actions)

### Email team are responsible for: 
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

### 1. **Requesting team notifies that an emergency communication is needed**
- Immediately slack #mktgops and include the incident issue and the incident slack channel. If there is not a prompt response, follow on-call procedures.
### 2. **Issue Creation**
 - Request issue utlizing [Incident Communications template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new#incident_communications) in the Marketing Operations project.
- Fill in as many blanks as you can with as much information as you have available - the issue template will walk you through what is needed. Feel free to add any additional context that may be helpful. If you do not have all the information, that is OK, as we know it is an ongoing development. 
- Add Due Date (or best guess)
- Include googlesheet of copy document, even if it is blank.
- Include approx size of the list - this will determine what email platform we will use and helps immensely in our planning. Over estimate when you are unsure.
- Include any custom fields you need created for `mail-merge` in the email. Include field max lengths needed, or best guess. Mktops will determine if they can use an existing field or not.
### 3. **Issue in Process**
- Marketing team will work closely with you to develop a communication plan and cadence. Please continue to addinformation as you receive it and over communicate with us via slack/issue/carrier pigeon!
- List size and complexity will determine what [email platform](/handbook/marketing/emergency-response/#email-platform-to-use) we will need to use. 
### 4. **Email Ready to Deploy**
- Email team will send a sample to the requestor and stakeholders for their review - preferably, there is a quick Zoom sync to double check send size, variable fields, email copy and time of send.
- Requestor must approve in the issue before the email will be sent.
### 5. **Email Launched** 
- The email team will provide stats minutes after launch, and at a cadence determined by the announcement team as necessary. 
      - Note: Full email stats are matured at 48 hours.
- Inbox monitoring will be done by the requestor team, unless otherwise stated.

## Lists 

1. For most emergency communications the Security team should be providing a list as a Google Sheet in the issue request. 
     - The Data team is able to pull a list from user table if necessary. Please create an issue with the Data team.
1. If a generic emergency communication the opt-in email list contained in Marketo can be used. 
1. Seldomly, lists need to be created in Salesforce or Marketo using parameters found within the marketing database.  
     - Marketo & Salesforce **do not** contain all records within the user table and vice versa

## Email Platform to Use
The email platform determines many different factors for us.
- [Marketo](/handbook/marketing/marketing-operations/marketo/): Quickest deployment, but most costly. Will not be used for communications over 20k
- [MailJet](/handbook/marketing/marketing-operations/mailjet/): Preferable platform for deployment, but it is not onboarded as of 2021-03-01
- MailGun: If list send is greater than 50k we will use this. This involves engineering and will add 1 day minimum to send
- [MailChimp](/handbook/marketing/marketing-operations/marketo/#mailchimp-sends): Only if other platforms are not an option

## Other Considerations
- List loads greater than 20k take time. Millions may take hours.
- Each platform has their own limits as to size of CSV that can be uploaded.
- Lists greater than 100k may be subject to verification, so that we do not risk our sending reputation. Marketing Ops has budget set aside for these, but it will add possible days to the timeline to announce. 

## Pager Duty

You can page the on-call Marketing Ops via entering `/pd` trigger command in any Slack channel and select `Marketing Ops Ext. Comms - Emergency`.
