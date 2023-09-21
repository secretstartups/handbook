---
layout: handbook-page-toc
title: "Sales Development Tools"
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

# Sales Development Tools

This page is to act as your guide to the many tools and best practices that the Sales Development Organization uitlizes.

## Salesforce

[Salesforce](https://www.salesforce.com/) is our CRM of record. It integrates with all of the other applications in our business tech stack. Salesforce stores prospect, customer, and partner information. This includes contact information, products purchased, bookings, support tickets, and invoices, among other information.

### Salesforce Training Resources

* GitLab Edcast: [Salesforce Intro Class](https://gitlab.edcast.com/journey/weeks)
* GitLab Edcast: [Advanced Training: Working Leads](https://gitlab.edcast.com/journey/week)
* Best Practices: [IQMs and Opportunities](https://gitlab.edcast.com/journey/week-note)

### Lead and Contact Views

#### SDR Lead Views

* **S1 View** - [MQL’s](https://about.gitlab.com/handbook/marketing/marketing-operations/marketo/#mql-and-lead-scoring) and Hot leads that require quick follow up (i.e event)s, and Drift conversation leads for tenured SDRs
* **S2 View** - Only leads that are active in a HT touch sequence and have a phone number
* **S3 View** - Qualifying leads. These are leads that you are actively qualifying in a back and forth conversation either by email or through phone calls.  Each lead needs to either be active in a follow-up sequence, have an active task, or have a future meeting scheduled which can be seen in a future “last activity” date.

#### BDR Lead Views

* **B1 View** - [MQL’s](https://about.gitlab.com/handbook/marketing/marketing-operations/marketo/#mql-and-lead-scoring) and Hot leads that require quick follow up 
* **B2 View** - Leads associated with “Actively Working” accounts where you are the BDR Assigned
* **B3 View** - Needs to be sequenced. They’re leads you chose to move into your name but they have not yet been sequenced
* **B4 View** - Active HT sequenced leads that have a phone number - to help with call downs
* **B5 View** - Qualifying leads. These are leads that you are actively qualifying in a back and forth conversation either by email or through phone calls. Each lead needs to either be active in a follow up sequence, have an active task or have a future meeting scheduled which can be seen in a future “last activity” date


#### BDR Contact Views

**Contact ownership is based on the BDR Assigned and Account owner fields. If you are the BDR Assigned on the account, you will be the owner of all contacts associated with that account. If there is no BDR Assigned, the account owner will be the owner of the contacts.**

* **B1 View** - Includes MQL’s, Hot contacts that require quick follow up 
* **B2 View** - Contacts related to Actively working accounts that you can choose to sequence - *give 48 hrs
* **B3 View** - Active HT sequenced leads that have a phone number - to help with call downs
* **B4 View** - Qualifying leads. Contacts that you are actively qualifying in a back and forth conversation either on email or through phone calls. Each contact in this status needs to either be active in a follow up sequence, have an active task or have a future meeting scheduled which can be seen in a future “last activity” date.

## Outreach

[Outreach.io](https://www.outreach.io/) is a tool used to automate emails in the form of sequences. Users can track open rates, click-through rates, response rates for various templates, and update sequences based on these metrics. Outreach.io also helps to track sales activities such as calls. All emails/calls/tasks that are made through Outreach.io are automatically logged in Salesforce with a corresponding disposition. See below for a list of current call dispositions, what they mean, and scenarios on when to use each of them.

### Outreach Training Resources

* [Intro Slide Deck](https://docs.google.com/presentation/d/1IpTVE4-Nkblfuiu6f1OUnFbi8IpjRPK7UDSx4eSfQCg/edit#slide=id.g5a343b482a_2_10) and [Training Video](https://gitlab.edcast.com/journey/weeks/cards/7257647)
    * password should be in onboarding issue or ask your manager
* GitLab Edcast: [Advanced Outreach Training](https://gitlab.edcast.com/journey/weeks)
* Best Practices: [Our Outreach Handbook Page](https://about.gitlab.com/handbook/marketing/marketing-operations/outreach/)

### Outreach Sequences

 A user created series of touchpoints (calls, emails, LinkedIn) in order to communicate with a prospect and automate the user's workflow

* **Primary Sequence:** a sequence created by SDR leadership that should be used by all reps to follow up with inbound leads
* High touch and low touch sequences: a high touch sequence should be used for higher-quality leads. High touch sequences require you to add in more personalization and have more touch points across a longer period of time, including phone calls and LinkedIn Connect requests. Low touch sequences are typically automated and run for a shorter period of time. We define higher quality leads based on the volume of inbound you have to manage as well as whether the lead has has 1-2 of the following for MM/Large accounts:
    * Valid company email domain or company name
    * Phone number
    * Title related to our buying/influencer personas
    * 6Sense intent
    * Set up for company/team use checkbox equals true
    * Account has X # of Developers (MM/Large nuances)
    * LinkedIn profile
        * SMB lead may need to have 2-3 of the above1-2 of the above
        * Different teams may have nuances so please check in with your manager for their feedback.

### Outreach Collections

Ways to organize similar sequences and snippets

* **Common Collections**
    * [FY24 Global Inbound High Touch Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2269%22%5D%7D%5D&sortBy=recent&sortDirection=desc)
    * [FY24 Global Inbound Low Touch Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2271%22%5D%7D%5D&sortBy=recent&sortDirection=desc)
    * [FY24 Inbound Languages Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2270%22%5D%7D%5D&sortBy=recent&sortDirection=desc) 
    * [Events Collection](https://app1a.outreach.io/sequences?queryFilters=%5B%7B%22attribute%22%3A%22collection%22%2C%22operator%22%3A%22is%22%2C%22value%22%3A%5B%2266%22%5D%7D%5D&sortBy=recent&sortDirection=desc)

### Outreach Tags

A method of distinguishing sequences and snippets from others. Use tags to help narrow down which sequences you should be using in a particular situation

#### Common Tag Examples:

* **Primary-** a sequence created by SDR leadership that should be used by all reps to follow up with inbound leads
* **High Touch/Low Touch-** Distinguish if the sequence is high or low touch
* **Region-** Can be used to show which region the sequence 
* **GTM-** The message trying to be delivered. Ex. Security, CI/CD ect. 
* **Inbound/Outbound-** Whether the sequence is meant for inbound or outbound prospecting 
* **Language-** What language the sequence is written in

### Outreach Snippets

Content created for BDRS and SDRs to use to create hyper-personalized sequences, one-off emails, or to use for reaching out to prospects via LinkedIn.

* **Common Snippet Examples**
     - [Objection Snippets](https://app1a.outreach.io/snippets?direction=asc&order=owner&tags%5B%5D=objection)
     - [Support Snippets](https://app1a.outreach.io/snippets?direction=asc&order=owner&tags%5B%5D=Support)

### Outreach Sequence Creation Process

#### Prior to Building a New Sequence

Please review the BDR or SDR process and conceptualize what iteration does a new sequence bring to our existing library, from the moment you have clarified your intent please [follow the steps here](https://about.gitlab.com/handbook/marketing/sales-development/#new-outreach-sequenceworkflow-creation) to request a new sequence, we'll work with you to develop the best possible iteration we can. 

#### Building a New Sequence, Prior to Setting it Live
As you begin building your new sequence, make sure you are following the proper guidelines:

* **Naming Convention** - all sequences should use the approved naming convention: 
    -   **Year** (FY24) 
    -   **Team** (IB) 
    -   **Region** (Worldwide - WW, AMER, APAC, EMEA, LATAM)
    -   **Segment** (SMB SDR, LARGE MM SDR) 
    -   **Target/Reason for Sequence** (Trial, Contact Request, Event, etc)
    -   **Touch Level** (High Touch - HT, Low Touch - LT)
    -   **Language** (English - EN, Spanish - SP, Portuguese - POR, French - FR, German - GER, Dutch - DUT, Russian - RUS, Korean - KOR, Japanese - JP)

**Example** - FY24 IB WW SMB SDR Free to Paid HT EN

* **Sequence Settings**:
    - **Sequence Type** - Steps by day interval
	- **Delivery Schedule** - Weekday Business Hours
	- **Interval Type** - Schedule Days
	- **Tags** - always add “SDR” or "BDR" and “Inbound” or "Outbound" along with any other applicable tags such as the Region, Team, and Touch Level
	- **Collections** - choose the appropriate collection based on team and purpose
	- **Shared with Org?** - Others can see it and use it
	- **When the primary prospect replies** - Finish sequence
	- **When non-primary prospects reply** - Finish sequence
	- **Prospect Throttling** - Enabled
	- **Max active prospects per user** - 1000
	- **Auto-activate prospects** - Yes - activate based on throttles
	- **Max adds per user every 24 hours** - 100
	- **Sequence Ruleset**: 
        - **Default** - Does not make tasks on your behalf. Prospects can be added to these sequences more than once, if not already active. prospects are not able to be added to other exclusive sequences, but can be added to a non-exclusive sequence. Updates prospects to appropriate stages. Resumes out of office prospects after 5 days.
        - **Campaign** - Follows the same rules as the default settings except out of office are resumed 1 day after.
        - **Create Call Task** - Follows same rules as the default except it will create call tasks on opened emails. Minimum email opens needed: 2
        - **Event** - Prospects can only be added to this sequence once. They are not exclusive to this sequence. Out of office are resumed 1 day after.
        - **Follow Up Sequences** - This ruleset is specifically designed for prospects who are already in qualifying stage as once you add them, their lead status will stay in qualifying rather than going back to accepted.
        - **Saas Trial** - for following up with trial leads

* **Email Settings**:
    - **Click Tracking** on all emails
    - **Open Tracking** on all emails
    - Appropriate variable template syntax

* **Email Messaging**:
    - For each email step in your sequence, send yourself a test email to ensure formatting is appropriate and all variables are set correctly.

Once you have set your sequence up with the proper name, structure, settings and email messaging, return to the issue and tag your manager for approval. **If your manager rejects your sequence, you will need to make the necessary changes to gain their approval. If they have responded with their approval, you are cleared to move forward with setting your sequence live.**

#### Setting a Sequence Live
Go into the sequence settings and toggle the bar in the upper left from gray (paused) to green (active). You are now ready to use your sequence.

#### _For Managers_

#### Approving the Build of a New Sequence
* When deciding whether to approve or deny the creation of a new sequence, use your best judgment to decide whether this sequence really needs to be built, or if what the rep is looking for can be accomplished with an A/B test or by utilizing one of the existing ops-approved sequences. Is the sequence/step that is being replaced actually underperforming?
* If creation of the new sequence meets with your approval, go to the issue and add your approval. If you don’t approve, leave a comment explaining why the sequence has been denied.

#### Approving the Activation of a New Sequence
When deciding whether to approve or deny the activation of a new sequence, make sure the sequence follows all proper guidelines, including:
* Naming Convention
* Structure
* Sequence Settings
* Email Settings
    - Click/Open Tracking
    - Variable template syntax
* Sequence messaging is appropriate and acceptable

If all of these conditions are met, go back to the issue and add your approval. If the rep needs to revise anything before they can set it live, leave a comment explaining what they still need to do before they can begin using their sequence.

Managers then need to add a tag of “manager approved” on the sequence in Outreach


#### Post Sequence Live
30 day check - is the sequence meeting performance benchmarks?



## ZoomInfo

[Zoominfo](https://www.zoominfo.com/) provides our Sales Development Representatives and Account Executives with access to hundreds of thousands of prospects and their contact information, company information, tech stack, revenue, and other relevant data. Individual records or bulk exports can be imported into Salesforce using extensive search criteria such as job function, title, industry, location, tech stack, employee count, and company revenue. More information can be found on the Marketing Operations [Zoominfo handbook page.](https://about.gitlab.com/handbook/marketing/marketing-operations/zoominfo/)

### ZoomInfo Training Resources 

* ZoomInfo University: [40 Minute Introduction Video](https://university.zoominfo.com/learn/course/101-introduction-to-zoominfo-on-demand/training-session/101-introduction-to-zoominfo)
* GitLab Edcast: [ZoomInfo Introduction Training](https://gitlab.edcast.com/journey/week)  
* GitLab Edcast: [ZoomInfo Advanced Training](https://gitlab.edcast.com/journey/week-note) 
* ZI 101 Video: [Quick Saved Searches](https://www.youtube.com/watch?v=OpTgvoOQ1jM)
* ZI 101 Video: [Leveraging List Match](https://www.youtube.com/watch?v=vl1kpsNa874)
* ZI 101 Video: [Tagging Prospects in LinkedIn](https://www.youtube.com/watch?v=GQWTZWbMgg8) 
* GitLab Handbook: [Zoominfo handbook page](https://about.gitlab.com/handbook/marketing/marketing-operations/zoominfo/)

## LinkedIn Sales Navigator

[LinkedIn Sales Navigator](https://www.linkedin.com/sales/login) is a prospecting tool & extended reach into LinkedIn Connections.

### LinkedIn Training Resources

* LinkedIn Intro: [70 Minute Navigator Tutorial](https://www.linkedin.com/learning/learn-linkedin-sales-navigator-3/welcome-to-sales-navigator)
* GitLab Edcast: [LinkedIn Navigator Training](https://gitlab.edcast.com/journey/week-note)
* GitLab Video: [Peer Tips](https://drive.google.com/file/d/1xzz8cEiSFqZ7bOw-dpqoNlHjSDwrIFE4/view)
* GitLab Video: [LinkedIn Personalization](https://www.youtube.com/watch?v=7vEVB-WgDPA)
* GitLab Video: [Loading Accounts from Salesforce into LinkedIn](https://www.youtube.com/watch?v=_D8walmmOAU) 

## 6Sense

6Sense is a targeting and personalization platform that we use to reach our different audiences based on intent data and our ideal customer profiles. [6Sense Handbook Page](https://about.gitlab.com/handbook/marketing/marketing-operations/6sense/)

### 6Sense Training Resources

* [General 6Sense Resources](https://6sense.com/resource-library/)
* [6Sense for BDRs Video](https://6sense.com/resources/videos/inside-sales-persona-demo)
* [6Sense Account Identification Guide](https://6sense.com/platform/account-matching/the-guide-to-account-identification/)
* [6Sense Persona Identification Guide](https://6sense.com/guides/how-to-identify-and-influence-the-entire-buying-team/)

## Chorus

Call and demo recording software. [Chorus](https://www.chorus.ai/) tracks keywords, provides analytics, and transcribes calls into both Salesforce and Outreach. Chorus will be used to onboard new team members, provide ongoing training and development for existing team members, provide non-sales employees with access to sales calls, and allow sales reps to recall certain points of a call or demo. At this time, US Sales, US Customer Success, US SDRs will be considered recorders. Non-US Commercial and Non-US SDRs can request recorder access once they have completed the GDPR training course. Non-US recorders will also need access to the EMEZ Zoom Group. Everyone else can access the tool as a listener if they wish.

### Chorus Training Resources

* Chorus: [Tips for Getting Start](https://docs.chorus.ai/hc/en-us/articles/115009183547-Tips-on-Getting-Started-with-Chorus)
* GitLab Edcast: [Chorus Overview](https://gitlab.edcast.com/journey/week)
* GitLab Edcast: [Sample Chorus IQM Calls](https://gitlab.edcast.com/insights/sample-chorus)

## Drift

[Drift](https://www.drift.com/) is a conversational marketing platform (live chat tool). We use the chat platform Drift to engage site visitors. Additional information on best practices can be found on the [Drift Handbook Page.](https://about.gitlab.com/handbook/marketing/marketing-operations/drift/#best-practices)

**Important Note:** Drift Chat is a tool for the Inbound SDR Teams to engage with website visitors. BDRs will not have access to this tool. It is still important for BDRs to understand they will see leads with Drift mentioned in their Salesforce initial source and activity history fields. 

