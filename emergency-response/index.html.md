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

### Lists 

1. Most emergency communications the Security team should be providing a list as a Google Sheet in the issue request. 
1. If no list is provided, need to ask for the parameters for filters. 
     - Engineering Support would be able to pull a list from user table if necessary
1. If a generic emergency communication the opt-in email list contained in Marketo can be used. 
1. Seldomly, lists need to be created in Salesforce or Marketo using parameters found within the marketing database.  
     - Marketo & Salesforce **do not** contain all records within the user table and vice versa

### Sending Emails 

1. Most emergency communications will be sent to a very targeted list via **Mailchimp**.
1. Occasionally emails are sent to the explict opt-in Security list via **Marketo**. 
     - If sending via **Marketo**, the email should be marked as *Operational* which can only be done by an Ops team member

### Pager Duty

You can page the on-call Marketing Ops via entering `/pd` trigger command in any Slack channel and select `Marketing Ops Ext. Comms - Emergency`.

### Standard Process

1. Requesting team notifies that an emergency communication is needed
     - Req issue utlizing [Email Request template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new#incident_communications) in the Marketing Operations project
     - Fill in as many blanks as you can with as much information as you have avialable
1. Requestor should provide a list via Google Sheet or explicitly state the email is being sent to opt-in list
     - List size will determine what tool is used for sending:
          - **Large Targeted list provided** = Email sent via Mailchimp (soon to be MailJet)
          - **Opt-in Security List** = Email sent via Marketo
1. Requestor will provide email copy for alert including any dynamic fields if necessary.
     - In **Mailchimp**, there are some dynamic fields, if requested fields are new they can be created. 
     - In **Marketo**, there are many fields existing already, if requested fields are new they can be created.  
1. Marketing Operations create Mailchimp Campaign or Marketo Email Program
     - Naming convention is `ISODate_SecurityAlert`
1. Marketing Operations will create an email in Marketo or Mailchimp
1. Test email will be sent to the Security person requesting the email and `security@` 
1. Screen capture of the email should also be posted to the Issue. 
1. **Requestor** needs to sign off on email *IN THE ISSUE* before the email can be sent. 







