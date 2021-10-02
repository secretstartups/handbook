---
layout: handbook-page-toc
title: Cadence Calls
---
## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

View the [TAM Handbook homepage](/handbook/customer-success/tam/) for additional TAM-related handbook pages.

- - -

## Overview

One of the primary tools TAMs have to become a trusted advisor and assess and improve account [health](/handbook/customer-success/tam/health-score-triage/) is the customer cadence call. This is an opportunity for the TAM and the customer team to sync on business outcomes, priorities, progress on initiatives, and concerns, and it is a great opportunity to bring in other GitLab team members that the TAM feels should be included (for example, [Product](/handbook/customer-success/tam/product/) to review feature requests and the roadmap).

Cadence calls are an important aspect of TAM engagement to continue to understand customer's evolving needs, ensure GitLab is delivering value and outcomes, unblock barriers, address issues, collect feedback, nurture relationships, and ensure the customer continues to have positive experiences.

## Frequency

- **Enterprise**: Cadence calls should be weekly during onboarding and at least once per month otherwise, considering specific customer needs and stage in customer lifecycle.
- **Commercial**: Cadence calls should be weekly during onboarding and at least once per quarter otherwise, considering specific customer needs and stage in customer lifecycle.

Cadence calls should be [captured in Gainsight](/handbook/customer-success/tam/gainsight/timeline/#how-to-log-activities-in-timeline), which [drives the Engagement scorecard metric](/handbook/customer-success/tam/health-score-triage/#gainsight-scorecard-attributes-and-calculations).

## Lifecycle of a cadence call

An effective cadence call involves more than just the call itself. There are several stages that occur before, during, and after the call.

### Preparation for the call

Leading up to a cadence call, the TAM should prepare a meeting agenda. This is the foundation of an effective call, and should be collaborated on by all attendees. The agenda should be made available to everyone at least a few days in advance of the call.

Recommended details to include in the agenda include:

- Attendees, both from GitLab and from the customer
- Advance materials or read-only items
- Discussion topics, such as:
  - Intros & housekeeping (new team members, exciting news, etc.)
  - Follow-ups on previously discussed items
  - [Strategic and business outcomes](/handbook/customer-success/tam/success-plans/questions-techniques/)
  - Pain points and blockers
  - Updates on long-term initiatives
  - Items where the customer is looking for assistance from the TAM to get resolution (feature requests, support tickets, etc.)
  - [Suggested discussion topics](#cadence-call-topics)
  - Gaps in or outdated Gainsight information (watch an [8 minute video](https://youtu.be/yk95b6u26So) for recommendations!)
  - Any other items; give room for the customer to bring up unplanned topics

 - Platform
   - Check for the current version, ongoing/planned deployments of any changes like GEO, HA, Storage, cluster changes) - Let the customer give you an overview of how the GitLab system looks like now or will look like once deployed. Ask if the customer needs support for any topic in the next few days. 
    - Raise the importance of GitLab Security patches and use it as an additional argument to enable usage/service ping reports of GitLab. 
    - Learn about the customer's preferred product areas by asking what they are mainly using in terms of tools, integrations, IDEs, languages, etc. Once a new release is out, you will know what you can highlight from the release. Later in future calls: discuss latest releases and availability/status of features requested by the customer.
 - Support
   - Explain support handling, including emergency tickets (e.g., do not CC the email, always add in TO, add logs, set correct priority) if there was a recent escalation/emergency. Later on, continue to discuss open/pending ZD tickets 
 - Recap & Next Steps 
    - Recap what was aligned on in the call.
    - List agreed action items. If needed, add deadlines.
    - Confirm availability dates/times for next call to secure the communication channel (keep this in each call as closing topic).

The collaboration project template includes a [meeting agenda issue template](https://gitlab.com/gitlab-com/account-management/templates/customer-collaboration-project-template/-/blob/master/.gitlab/issue_templates/Meeting%20Agenda.md) that is structured to follow this format.

The topics and the naming of the cadence call (when you send an invite to the customer) are also an important part of the TAM engagement. The following names for the cadence call have been used with success and are recommended - ordered by popularity:

- "Gitlab / <CUSTOMER_NAME> TAM Call" 
- "Gitlab - Bi-weekly Collaboration" (Adopt, depending on the frequency)
- "GitLab - TAM Call"

By developing an agenda and doing advance preparation for the meeting, the TAM (and the rest of the [account team](/handbook/customer-success/account-team/)) will be ready with relevant questions and information for the customer.

### Conducting the call

If the TAM has sufficiently prepared, the call itself should be a comfortable and valuable experience for everyone involved. The TAM should be prepared to conduct the meeting according to the agenda and cover all of the listed discussion points. This is our chance to help the customer make forward progress on their objectives by sharing our expertise and answering their questions!

The TAM should drive the call proactively so the customer sees a value in it. Try to ask questions to get into discussions and let the customer talk most of the time. When putting together the call agenda, ensure that you are covering topics that help you with your customer strategy, but also ask yourself "if I were the customer, would I find this relevant?"

In addition to the [GitLab external communication guidelines](/handbook/communication/#external-communication), here are a few tips for having a strong cadence call:

- **Be engaged.** [It's acceptable at GitLab to multitask or divert your attention during meetings](/handbook/communication/#paying-attention-in-meetings), but during a cadence call this isn't a good idea. The TAM is leading this call, and it's important to follow what is being discussed and keep the conversation moving to make the most of the alloted time. The TAM should be guiding the discussion, and [taking notes](#cadence-call-notes) (or have already asked another member of the [account team](/handbook/customer-success/account-team/) to take notes).
- **Be flexible.** Having an agenda is crucial to a well run cadence call, but it's euqally important to be ready to go off-script. If the customer has something urgent that they need to discuss, or the conversation goes on a tangent that may yield good information, don't try to force it back to the prepared agenda. Address the customer concerns, embrace new information with relevant questions, and anything on the agenda that isn't critical can be tabled for the next cadence call. This relates to [being "audible-ready"](/handbook/sales/command-of-the-message/#overview) in customer conversations.
- **Be responsive.** No matter how much the TAM and [account team](/handbook/customer-success/account-team/) prepare for the call, the customer can still throw a curveball. If they ask for information nobody on the call knows, be honest and acknowledge that, but make a plan to get that information and [follow up](#after-the-call). If you think you can answer the question, make an effort but still assure the customer you will verify what the best answer is. Do your best in the moment, and [follow up on everything else in a timely manner](#after-the-call).

Before you end the call, take a few minutes to summarize the highlights of what was discussed, and review the action items and who is responsible for each of them. It's also worth reminding everyone of when the _next_ cadence call is.

### After the call

**If there are no action items or follow-ups that come from a cadence call, the call was not effective.** At minimum, the TAM should send a follow-up email to the participants covering the same summary information that was discussed at the end of the call, and make sure everyone knows what the action items from the call are.

After every cadence call, the TAM (and the rest of the [account team](/handbook/customer-success/account-team/) as applicable) should review and update:

- [Meeting notes](#cadence-call-notes)
- [Gainsight timeline entry](/handbook/customer-success/tam/gainsight/timeline/#how-to-log-activities-in-timeline)
- The customer [success plan](/handbook/customer-success/tam/success-plans/)
- Feature requests discussed
- Support ticket assistance requested

If any questions from the customer were taken as follow-up action items, they should be completed and sent to the customer in a timely manner (ideally the same day, or the following day at the latest). If it will take longer to get the right information to the customer (e.g. you need to set up a meeting with a Product Manager, or there is no documentation for the particular question), the TAM should send a timely update about this to the customer, and keep them posted regularly until the question is answered and the matter resolved.

It's a good idea to start creating the agenda for the _next_ cadence call at this point, while the call that just ended is fresh in mind.

## Cadence Call Notes

In addition to Timeline notes in Gainsight, call notes should be [saved in Google Drive](https://drive.google.com/drive/folders/0B-ytP5bMib9Ta25aSi13Q25GY1U), following this format: `/Sales/Customers & Prospects/A/Acme/Acme - Meeting Notes`. [See an example meeting notes here](https://docs.google.com/document/d/1dAcHBqoRTY6qqSw27VQstCCnk5Fxc2oIsbpKs014h3g).

Meanwhile, when TAMs are logging calls in Gainsight, they need to ensure to copy & paste the link to the Google Doc with a simple summary of the meeting, so that it is reflected in the Gainsight [Timeline](/handbook/customer-success/tam/gainsight/timeline/) but not duplicating their efforts.

The rationale for saving call notes in this manner is as follows:

- The naming convention ""`Customer` - Meeting Notes" allows for fast searching using [Google Cloud Search for Work](https://cloudsearch.google.com/)
- Call notes frequently contain sensitive information and are for the internal sales team and management to review and should be kept in a place everyone who might need access can find them.
- A folder structure allows non-Customer Success executives and support staff to easily locate the notes in the case of an escalation.
- Call notes are tightly linked to the [health score](/handbook/customer-success/tam/health-score-triage/) and should be available for reference in the same location as the health scorecard in Gainsight.
- Access to Gainsight is limited to TAMs, so other members of the Sales and Customer Success organizations will look for notes in Google Drive.

At the end of each customer call any changes to customer health should be reflected in the customer's Gainsight account. You have a few ways to update the TAM Sentiment and Product Sentiment for an account's health score, described in [Determining TAM Sentiment and Product Risk](/handbook/customer-success/tam/health-score-triage/#determining-tam-sentiment-and-product-risk), the easiest of which is updating it directly when logging the call.

### Best Practices for Note-Taking

- Write down your _agenda_ (including questions you want to ask). This way you can quickly add your notes for the specific context.
- If you're comfortable in writing in [Markdown format](/handbook/markdown-guide/), use it to quickly structure your notes in real time.
- Allow yourself time directly after the call to clean up your notes. Avoid scheduling back-to-back meetings.
- Practice slowing down call conversations. Stopping the dialog for a few seconds to say “let me write that down” tells the customer what they said is important to you.
- Ask your SAL/AE/SA to take notes with you. After the meeting combine and add detail.
- Use [Chorus](/handbook/business-ops/tech-stack/#chorus) to record your calls so there's less pressure for you to take note of everything.
- Sometimes it makes sense for somebody on the [account team](/handbook/customer-success/account-team/) to go back through the call in Chorus to transcribe it.
- Write notes in whatever is easiest and always copy them to your best source of truth. If you can write them in the source of truth in the first place, you’ll be more efficient and consistent.

## Cadence Call Topics

The below non-exhaustive list is simply suggestions for cadence calls, and other topics may be more important, so use the suggestions at your discretion.

There are two sections, [General Suggestions](/handbook/customer-success/tam/cadence-calls/#general-suggestions) is for topics that are good at any time, and [Ephemeral Suggestions](/handbook/customer-success/tam/cadence-calls/#ephemeral-suggestions) is for topics that are ephemeral, such as release-specific topics or requests from Product Managers.

### General Suggestions

These are suggestions that can be used at any time on customer calls.

- Questions about their [success plan objectives](/handbook/customer-success/tam/success-plans/questions-techniques/) and review of progress
- Periodically (a couple times per year) ask about new goals or objectives they have coming up
- Review upcoming features and releases
- Review their current version, planned upgrades, and if they need [Live Upgrade Assistance](/support/scheduling-live-upgrade-assistance.html#how-do-i-schedule-live-upgrade-assistance)
- Questions relating to [Stage Adoption](/handbook/customer-success/tam/stage-adoption/)
- Discovery questions about their usage, best practices, typical workflows, etc.
- Discuss if there are any areas for user enablement or training
- Questions about how they are leveraging other tools or integrations
- Discuss if their users have any feedback
- Discuss their backup/recovery plans and if they have recently tested restoring from a backup
- Discuss if they have signups enabled
- Mention upcoming GitLab [workshops/events](https://about.gitlab.com/events/) in their region (or even ones in other regions)

### Ephemeral Suggestions

For more timely discussion topics, please refer to the [TAM Hot Sheet](https://gitlab.com/gitlab-com/customer-success/tam/-/wikis/TAM-Hot-Sheet) (GitLab internal link).
