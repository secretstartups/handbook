---
layout: handbook-page-toc
title: "Email Management"
description: "Email database management is a core responsibility for MktgOps. Ensuring GitLab is following email best practices, in compliance with Global spam laws and overall health of active database are all priorities."
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

## Overview

Email database management is a core responsibility for MktgOps. Ensuring GitLab is following email best practices, in compliance with Global spam laws and overall health of active database are all priorities.

Email creation and email nurture programs are managed by the Campaigns Team. To learn more about GitLab email communication or request an email, please see the [Emails/Nurture Handbook](/handbook/marketing/demand-generation/campaigns/emails-nurture/) in the demand generation section of the handbook.


### Email Communication Policy

Please [visit the legal page](/handbook/legal/marketing-collaboration/#marketing-rules-and-consent-language) to view all of the Marketing Rules and Consent Language.

The Mural below shows the opt-in and opt-out/unsubscribe workflows for all forms, list imports and individual subscriptions.

<div style="width: 600px;" class="embed-thumb"> 
<div style="position: relative; height: 0;overflow: hidden; height: 400px; max-width: 800px; min-width: 320px; border-width: 1px; border-style: solid; border-color: #d8d8d8;"> 
<div style="position: absolute;top: 0;left: 0;z-index: 10; width: 600px; height: 100%;background: url(https://murally.blob.core.windows.net/thumbnails/gitlab2474/murals/gitlab5736.1594675938009-5f0cd2e2ffb2423070a97d96-46527d35-3c6d-4dc0-b290-83d58595374c.png?v=5788e460-d3d3-40d7-942d-0a76151f9569) no-repeat center center; background-size: cover;"> 
<div style="position: absolute;top: 0;left: 0;z-index: 20;width: 100%; height: 100%;background-color: white;-webkit-filter: opacity(.4);">
</div> 
<a href="https://app.mural.co/t/gitlab2474/m/gitlab5736/1594675938009/095286e912a2f8de19edd53e68a5e4e51d071db0" target="_blank" rel="noopener noreferrer" style="transform: translate(-50%, -50%);top: 50%;left: 50%; position: absolute; z-index: 30; border: none; display: block; height: 50px; background: transparent;"> <img src="https://app.mural.co/static/images/btn-enter-mural.svg" alt="Opt-in/Out Workflows" width="233" height="50"> </a> 
</div> 
</div>
</div>

At GitLab, we strive to communicate with people in a way that is beneficial to them. We always include the unsubscribe link in our communications, and we respect the unsubscribe list. In addition to the unsubscribe button at the bottom of all of our emails, we have available our [Email Subscription Center](/company/preference-center/), where people can control their email communication preferences.

### Send Frequency

We have a Marketo enforced limit on how many emails a single address can recieve per day and week. The limits are 1/day and 3/week. Once a person has hit that limit, they are supressed from email groups until they fall back under the threshold, **unless** the email is marked as `operational`. However, emails marked as `operational` will still be sent.

The email limits are not set in campaign templates, however, if your email is set to send to more than 20,000 people, you must include a filter for `Not Sent Email in last 2 Days`.

Certain emails can bypass unsubscribe and invalid emails by being marked as `operational`. Examples include critical system alerts, account updates (policy updates, etc.), event reminders with necessary link to attend event, and auto-responders for post event recording and slides emails. Please folloow this decision tree for auto-responder emails to help determine whether or not your email fits the operational standards. If they do not, you must include the proper email compliance filters in order to send the email, and also uncheck the operational check box on the email.

Emails that contain mostly marketing or promotional content like newsletters, event invites and sales emails are not considered `operational`. Only Mops and certain MCMs have access to this feature in Marketo. If you have any questions on whether or not your email is operational, contact MOps. **When in doubt, ask!** [This Mural](https://app.mural.co/t/gitlab2474/m/gitlab2474/1609875791482/41f0f728c4353fce6b50338f7ca7cc032acf1f11) contains examples to help you make your decision.



### Types of Email

**Breaking Change Emails**
These are transactional emails, almost always to our user base, that provide very selective needed information. This is an `operational` email that overrides the unsubscribe and would not need to comply with marketing email opt-out. Usage example: GitLab Hosted billing change, Release update 9.0.0 changes, GitLab Page change and Old CI Runner clients.

It is very important to have Engineering and/or Product team (whoever is requesting this type of email) help us narrow these announcements to the people that actually should be warned or notified, so we are communicating to a very specific focused list. The email platform the send will come from will be determined by a few different factors, but mainly list size. If you need to request an email like this, use this the `incident_communications` [template](https://gitlab.com/gitlab-com/marketing/marketing-operations/-/issues/new#incident_communications) and reference [this section](/handbook/marketing/marketing-operations/#pagerduty-and-emergency-comms).

**Newsletter**
Sent bi-monthly (every 2 weeks), the newsletter is a collaboration between the Content Team and the Campaigns Team. [Learn more here!](/handbook/marketing/demand-generation/campaigns/emails-nurture/#newsletter) Users can [subscribe to the newsletter](/company/contact/) on the website.

**Security Releases**
Sent on an as needed basis containing important information about any security patches, identified vulnerabilities, etc. related to the GitLab platform. These emails are purely text based and again are transactional in nature.  Users can [subscribe to security notices](/company/contact/#security-notices) on the GitLab Contact us page.

**Webcasts**
Invitation and/or notification emails sent about future webcasts.

**Live Events**
Invitation emails to attend a live event, meet-up, or in-person training. These emails are sent to a geo-locational subset of the overall segment. This type of email is also used when we are attending a conference and want to make people aware of any booth or event we may be holding and/or sponsoring.
