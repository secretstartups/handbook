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

The Security team *should* create a [one-off email request](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/blob/master/.gitlab/issue_templates/Email-Request-mpm.md) in the Digital Marketing Program project. This template is built to auto label with the gold `MktgOps` label and the `MktgOps-Priorty::2 - Action Needed` label. 

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

Details TBA

### Standard Process, when an MPM is not available

1. Security team notifies that an emergency communication is needed
     - If no Issue, Marketing Ops **open** issue utlizing [Email Request template](https://gitlab.com/gitlab-com/marketing/digital-marketing-programs/issues/new?issuable_template=Email-Request-mpm) in the Digital Marketing Program project
     - Fill in as many blanks as you can & ping the Security team member to fill in the rest 
1. Security should provide a list via Google Sheet or explicitly state the email is being sent to opt-in list
     - List will determine what tool is used for sending:
          - **Targeted list provided** = Email sent via Mailchimp
          - **Opt-in Security List** = Email sent via Marketo
1. Security will provide email copy for alert including any dynamic fields.
     - In **Mailchimp**, there are some dynamic fields, if requested fields are new they can be created. 
     - In **Marketo**, the fields used need to exist already in Salesforce/Marketo
1. Marketing Operations create Mailchimp Campaign or Marketo Email Program
     - Naming convention is `ISODate_SecurityAlert`
1. Marketing Operations will create a **plain text** email in either Marketo or Mailchimp
1. Test email will be sent to the Security person requesting the email and `security@` 
1. Screen capture of the email should also be posted to the Issue. 
1. **Requestor** needs to sign off on email *IN THE ISSUE* before the email can be sent. 







