---
layout: handbook-page-toc
title: "Marketing - Emergency Response"
description: "GitLab's email response process for marketing emergencies"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Marketing emergency response

At times GitLab needs to communicate a "breaking" change or details related to a high-priority emergency patch. These emails are transactional and are highly targeted to the impacted audience.

<!-- Note to Amy: should we put a timeframe on what we consider an emergency? -->

**Not an emergency?** For important planned customer communications, please use [the customer update/announcement process](/handbook/marketing/emergency-response/#customer-comms-email), to enable teams to work together and plan without the urgency of an emergency request.

**As soon as an emergency communication is recognized, the Requesting team MUST:**
1. Create an **[incident communication request](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=incident_communications)** 
1. Review the S1 coverage matrix below and assign the issue and tag the coverage owner closest available per their timezone hin the  #mktgops Slack channel.
1. If there is not a timely response in Slack, please review the coverage owners' Slack profile and send them a quick call or text. If no timely response, tag @mktg-ops within the  #mktgops Slack channel or use escalation path below.
1. In the template the requesting team will include details including CTA, email body, send date and **provide link to Google sheet containing list**. 
1. If security, make sure to follow [instructions](/handbook/engineering/security/security-operations/sirt/security-incident-communication-plan.html#roles-and-responsibilities-in-a-security-incident)

### Coverage Matrix

Please review the coverage owner closest available per their timezone when deciding who to reach out to. 

| MOPs Team Coverage                          | PT / ET Time Available                 | Coverage Owner: Monday - Friday | Backup: Monday - Friday | Coverage Owner GEO Time |
|---------------------------------------------|-------------------------------|---------------------------|-------------------------|-------------------|
| UTC (Emea Working)                          | 11pm - 3am PT / 2am - 6am ET  | Mihai Conteanu            | Gillian Murphy          | 9am - 1pm EET     |
| UTC (EMEA Working)                          | 3am - 7am PT / 6am - 10am ET  | Gillian Murphy            | Mihai Conteanu          | 11am - 3pm UK     |
| UTC (Amer-Morning)                          | 7am - 11am PT / 10am - 2pm ET | Jameson Burton            | Nikki Silverberg        | 10am - 2pm ET     |
| UTC (Amer-Afternoon)                        | 11am - 3pm PT / 2pm - 6pm ET  | Nikki Silverberg           | Jenny Tiemann        | 11am - 3pm PT     |
| UTC (Amer-Evening)                          | 3pm - 6pm PT / 6pm - 9pm ET   | Jenny Tiemann              | Amy Waller        | 3pm - 6pm PT      |


**Typical Team Timezones:**
* Amy: PST Pacific Standard Time UTC:-8:00 
* David: PST Pacific Standard Time UTC:-8:00
* Jenny: PST Pacific Standard Time UTC:-8:00
* Nikki: MST Mountain Time UTC:-7:00
* Jameson: EST Eastern Standard Time UTC: -5:00
* Gillian: GMT Greenwich Mean Time UTC: +1:00
* Mihai: EET Eastern European Time UTC: +2:00

[Timezone Converter](https://dateful.com/time-zone-converter)

**Escalation Path:**
* Manager (Amy Waller)
* Manager (Beth Peterson)
* Director (David Brown)
* If still no response, #marketing-campaigns team can help

For Marketing Operations - When OOO/PTO please add this to the backup team members calendar for awareness.

## Roles and responsibilities

### Requestor responsibilities

* **Alerting email team as soon as possible that there may be a send (even if it does not move forward)**
* Providing FINAL email, landing page, form copy, autoresponder copy, etc.
     * NOTE: The addition of each item will increase scope and potentially delay announcement
* [Requesting target list (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/new) from Data Team
* Creating epic and corresponding issues
      * Creating Epic - [Template here](/handbook/marketing/emergency-response/#customer-comms-epic-issues)
      * Creating [Email request issue](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=incident_communications)
      * Creating [Form request issue (if necessary)](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=form_request)
      * Creating [Landing Page request issue (if necessary)](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=marketo_landing_page_request)
* Providing approval list and who signs off on the email
    * Legal, Customer Service VP and VP of the function who is initiating the communication (i.e., Security, Engineering, Infrastructure) are required to sign off
* [Notifying affected field teams](https://about.gitlab.com/handbook/engineering/security/security-operations/sirt/security-incident-communication-plan.html#communicating-internally) (Customer Success, TAM, SAL/AE, SA, Professional Services)
   * Also make sure to notify #sales and #customer-success before email is set to go out
* Approving test email 
* Providing any edits to the test email
* Providing send time and date 
* Approving all other materials and workflows (landing pages, forms, completion actions)


### Email team responsibilities

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

## Standard process
This is the process to follow when there is an announcement that is an emergency that will need to be sent by the marketing ops team. The marketing ops team will determine what platform will be used based on the information that is provided to them such as timing, list size and severity.

1. **Requesting team notifies that an emergency communication is needed**
- Immediately slack #mktgops and include the incident issue and the incident slack channel. If there is not a prompt response, follow on-call procedures.

2. **Issue Creation**
 - Request issue utlizing [Incident Communications template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new?issuable_template=incident_communications) in the Marketing Operations project.
- Fill in as many blanks as you can with as much information as you have available - the issue template will walk you through what is needed. Feel free to add any additional context that may be helpful. If you do not have all the information, that is OK, as we know it is an ongoing development. 
- Add Due Date (or best guess)
- Include googlesheet of copy document, even if it is blank. Use [this template](https://docs.google.com/document/d/1J_prQ8rXRqEcPWxKd1YH4ANGP5UjMPoAfnjpY8ty0XE/edit)
- Include approx size of the list - this will determine what email platform we will use and helps immensely in our planning. Over estimate when you are unsure.
- If you are requesting a list, create an [issue](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/new?issuable_template=list-request) with the Marketing Strategy team and relate it to the issue you just created. 
- Include any custom fields you need created for `mail-merge` in the email. Include field max lengths needed, or best guess. Mktops will determine if they can use an existing field or not.
- Note if the links should not be trackable.

3. **Issue in Process**
- Marketing team will work closely with you to develop a communication plan and cadence. Please continue to addinformation as you receive it and over communicate with us via slack/issue.
- List size and complexity will determine what [email platform](/handbook/marketing/emergency-response/#email-platform-to-use) we will need to use. 

4. **Approvals**

The following approvers are needed for the copy and list size:
 - Vice President of Customer Success
 - Vice President of the function who is initiating the communication (i.e., Security, Engineering, Infrastructure)
 - Legal (copy only)
 - Marketing Operations Manager
 - Appropriate field teams driven by the scope of customers receiving the communication (SAL/AE, SA, TAM, Professional Services)
 - Support, if there is any call to action in the communication to contact support


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
     - The Marketing Strategy and Perfomance team is able to pull a list from user table if necessary. Please [create an issue](https://gitlab.com/gitlab-com/marketing/marketing-strategy-performance/-/issues/new?issuable_template=list-request) with them.
1. General security alerts already have a distro list built in marketo.
1. Seldomly, lists need to be created in Salesforce or Marketo using parameters found within the marketing database.  
     - Marketo & Salesforce **do not** contain all records within the user table

### List considerations

- List loads greater than 20k take time. Millions may take hours/days.
- Each platform has their own limits as to size of CSV that can be uploaded.
- Lists greater than 100k may be subject to verification, so that we do not risk our sending reputation. Marketing Ops has budget set aside for these, but it will add possible days to the timeline to send. 

## Other considerations and questions for requestors

- Send / Reply-to email
     - Should there be an auto-responder?
     - Will someone be monitoring the email address?
     - If unmonitored, does the email mention that?
- Form + Landing Page
     - Confirmation email copy
     - Who from GitLab receives the alert?


## Email platform to use
Marketing Operations will decide what the best email platform to send from will be. The decision is based on many factors, including the ones below.
- [Marketo](/handbook/marketing/marketing-operations/marketo/): Quickest deployment, but most costly. Can be used for large sends if being sent to customers, but free users should be send via MailJet or Mailgun if the list is over 20k.
- [MailJet](/handbook/marketing/marketing-operations/mailjet/): Platform for large deployment, marketing can set up and send without engineering help.
- MailGun: Large lists that need verification. This involves engineering and will add 1 day minimum to send

# Marketing Operations Set-Up
- Clone from [incident template](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/EBP9730A1)
    - Ensure that processing requests `Do not Route` executable campaign
    - Mark `Person source` for new leads as `GitLab DataMart`
    - `Person Status` should be set to `Raw` if Empty
    - Processing campaign can be set up as a trigger or batch depending on list size
- Set up reports if not using the email program defaults
- Follow remaining steps in the incident issue template

## Mops steps and checklist for large sends
For sends over 100k sending from Marketo, there are several steps to follow to decrease processing time - especially when leads being uploaded are mostly net-new
1. Check list over to remove any sanctioned countries and/or GitLab email addresses
1. Identify common processing campaigns to update with list suppression filters. These trigger off of `person created` which will significantly delay processing time and hold up all other Marketo campaign processes (outside of this program)
     1. [Generic Email Trigger](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC6830A1)
     1. [OP-Generic Email Address Scoring](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC3441A1ZN)
     1. [OptOuts after 9.10 - Trigger](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#SC17036A1ZN)
     1. [01-Compiling Last Event Notes](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#SC22700A1ZN)
     1. [Add to nurture](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC21890A1ZN19)
     1. [Nurture movement](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC21912A1)
     1. [Spam catcher](https://engage-ab.marketo.com/?munchkinId=194-VVC-221#/classic/SC2929A1)
1. Set up priority send controller campaign to improve speed of send
1. If send list is over 250,000, you must update the [smart campaign limits](/handbook/marketing/marketing-operations/marketo/#campaign-limits).
1. Ensure email is marked operational, otherwise you may need to update [email communication limits](/handbook/marketing/marketing-operations/email-management/#send-frequency)
1. After send, discuss with legal to delete unneccessary records out of Marketo.

### Common Troubleshooting
1. Email won't send
   - Check smart campaign limits, is the send over the limit amount?
   - If email isn't marked operational, you may have to update email comm limits, or mark the email as operational (if this is the case, make sure to double check your filters)
1. Email needs to send out faster than 15 minutes
   - Set up smart campaign to send the email vs using the email program default settings


## Customer update / Announcement emails
{: #customer-comms-email .gitlab-purple}
<!-- DO NOT CHANGE THIS ANCHOR -->

This section should be used for all customer communications to communicate product or security issues and risk. At minimum, these communications need to be approved in sequence by the head of the department that is leading the communication (e.g., Product, Engineering, Security), Vice President of Customer Success, Legal, or appropriate designates (if they are out on PTO or unavailable).

### Recommended format for customer emails
The following is the recommended format for ad hoc customer emails though tailor it if the communication objective or content requires this. This does not include marketing (e.g., email campaigns, blogs, etc.) or standard product or security notifications (e.g., release blogs, release notifications, etc.). Emails should be clear, crisp, and direct, providing links for details (e.g., details on the issue or risk, procedural details to action). To [maximize reading comprehension](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1709943), remove all extraneous words and language to maximize the probability the email will be read and acted upon. 

The email should answer the following questions in the following order:
1.  Why are you (customer) getting this email? This can be either specific (i.e., we know) or general (i.e., you may be or need to be aware). This be the first sentence in the email. 
1.  What is the issue/change/problem/etc.? What are the risk and impact? How do you know if you're impacted or potentially impacted by the issue? Is it resolved or still being worked on? 
1.  What is your call to action? What should you do?
1.  Where should you go if you need support? If applicable, where do you provide feedback (e.g., forum, issue, other)? If additional updates will be provided, when and how will that information be shared? 


#### Sample email 

Two examples are provided:
1.  (GitLab internal only as it references a 3rd party software provided) an [example of a security email](https://docs.google.com/document/d/10TEgeGWzmlHpOaiiAYuUzNkevYsWGNmLkNbqWt1KXlo/edit#bookmark=id.aa65snh7vyl6) 
1.  An example of a product risk communication (see below) 

```
Subject: Important update information for customers using {GitLab Feature}

Hello {Customer name},

If you use {GitLab Feature}, or plan to migrate to it, this information may be relevant to you.

We recently identified {cases} where {GitLab Feature} can cause a {specific issue} that requires GitLab Support intervention to resolve.

We recommend the following actions to identify and resolve this issue:

- If you use {GitLab Feature}, please review the [scenarios] and avoid them.
- If you have not migrated to {GitLab Feature}, please know that we [provided additional support] to all affected releases.

We're working to reduce the conditions that can cause {specific issue} and will update the [{cases}] when we do so. If you are using {GitLab Feature} and require additional guidance, please contact your support representative or your TAM.

Kind regards,
{Sender}
```


## Epic code and issues
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
* [ ] [Request target list issue (internal link)](https://gitlab.com/gitlab-data/analytics/-/issues/new) (Data Download Request template) - requestor open, Data Team DRI
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
