---

title: "Qualified"
description: "Qualified facilitates instant sales conversations with visitors on the GitLab marketing website"
---

## Overview

Qualified allows Sales Development Reps to have live conversations with visitors on the about.gitlab.com site. Reps can see which accounts are viewing the site, their propensity to buy and choose to engage in a conversation or wait for the visitor to reach out through the automated chat bot.

### SDR Use Case

SDRs (inbound reps) will be routed inbound chats of visitors who are not associated with an "Actively Working" account via round robin pools based on the visitor's geography. Reps will also receieve a notification if a site visitor clicks through from an Outreach sequence sent by the rep. Once a chat is routed the rep will qualify the lead and determine if a meeting needs to be booked for a discovery call. SDRs can create and update the Salesfoce lead record with information gathered during the chat. Reps can also send their calendar to the visitor to book a meeting directly from the Qualified platform. 

### BDR Use Case

BDRs (outbound reps) will be routed conversations from visitors associated with "Actively Working" accounts they are assigned to. BDRs will also have the ability to initiate a conversation with a site visitor from an "Actively Working" account. Reps will also receieve a notification if a site visitor clicks through from an Outreach sequence sent by the rep. Once a chat is routed the rep will qualify the lead and determine if a meeting needs to be booked for a discovery call. BDRs can create and update the Salesfoce lead record with information gathered during the chat. Reps can also send their calendar to the visitor to book a meeting directly from the Qualified platform. 

### Experiences

Experiences are what the site visitor sees when they are browsing the site. It appears as a chat box in the bottom right corner of the web page. Visitors can choose to engage with the experience to help then navigate the site, book a meeting with a sales development rep or choose "Just Browsing" and close the experience. 

We currently have experiences the following experiences built:
- Existing customers
- Outreach clickthroughs
- Pricing page
- Solutions pages
- Home page
- Default (catch-all)

### Routing

Routing rules are set up in Qualified to send a visitor to the most appropiate rep to handle the conversation.

- A visitor that arrives to the site from clicking a link in an Outreach sequence email will be routed to the sequencing rep. 
- A visitor that is existing in our CRM and being Actively Sequenced, they will be routed to the sequencing rep.
- A visitor that is identified as being associated to a US PubSec account will be routed to the BDR Assigned on that account. If no BDR Assigned is present on the account they will be round robined to the PubSec team. 
- A visitor that is identified to be associated with an Actively Working account will be routed to the BDR Assigned on that account. If the rep is not available, the visitor will be routed to the inbound SDR team based on Geo to further qualify the lead. Once routed to an SDR, ownership of the lead will be determined by our standard [Rules of Engagement](https://about.gitlab.com/handbook/marketing/sales-development/#rules-of-engagement-quick-guide).
- A visitor that is not being sequenced, not PubSec, and not part of an Actively Working account will be routed to the the appropriate Geo based SDR round robin pool.

If you feel you have been routed a conversation or visitor in error please post a link to the lead/conversation in the #mktgops Slack channel. 

### Signals

More information in Signals to come. The Salesforce app will be installed shortly.

### Integrations

Qualified is currently integrated with SalesForce, Outreach, and 6sense. Information on each integration is below.

#### Salesforce

The Qualified/Salesforce integration allows reps to create and update lead records from the Qualified platform and update contact records. Because Qualified is integrated with Salesforce reps can easily see information from the SFDC record directly in the Qualified platfrom while chatting. It also allows for the ability to map any field from the lead/contact record to Qualified to give reps pertinent information. 

#### Outreach

The Qualified/Outreach integration allows Qualified to be able to identify if a visitor arrives on the site from a clickthrough in an Outreach sequence. This provides the ability for a rep to initiate a conversation when the visitor arrives and provides a seamless experience for the prospect. 

#### 6sense

Qualified offers an integration with 6sense to help you pull in firmographic information about the website visitors from the start. Using 6sense’s reverse IP lookup, you can quickly see where the visitor is coming from, their company information, segments they belong to, and insights for their product lines.

#### Zoom

A seamless integration with Zoom is coming shortly. Until then, reps can either:
1. Input their personal meeting link in the section `Calendar -> Meeting details -> Enter your own meeting details` and their mmeting link will appear in the calendar invite.

OR

2. Manually open the calendar invite in Google calendar and click `Add video conferencing details` to add a unique Zoom link.

### Performance Measurement

The Rep Performance Dashboard helps you understand the metrics that mean the most to your success including:

- Visitor sessions routed to reps for pouncing (proactive engagement)
- Successful pounce conversations
- Visitor sessions where a visitor waited for a rep to join the chat
- When reps were available throughout the day
- Visitor sessions that waited for a chat and had a successful conversation with a rep
- Visitor sessions that waited for a chat and had no conversation
- Total rep availability 

### Resources

- [Qualified University](https://www.qualified.com/university)
- [Sales Rep Setup Guide](https://www.qualified.com/university-guides/sales-rep-setup-guide)
- [Best Practices for Sales Reps](https://www.qualified.com/university-categories/sales-reps)
- [Best Practices for Sales Managers](https://www.qualified.com/university-categories/sales-managers)

