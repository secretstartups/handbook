---
layout: handbook-page-toc
title: "Learn How to Use Chorus.ai"
---

## On this page
{:.no_toc .hidden-md .hidden-lg}

- TOC
{:toc .hidden-md .hidden-lg}

Confused about how to use Chorus? Check out the instructions and links below for more information on how to get the most out of this important sales tool.

## What is Chorus?
[Chorus](https://www.chorus.ai/) is a call and demo recording software for customer-facing team members. This tool tracks keywords, provides analytics, and transcribes calls into both Salesforce and Outreach. Chorus is used to onboard new team members, provide ongoing training and development for existing team members, provide non-sales employees with access to sales calls, and allow customer-facing team members to recall certain points of a call or demo.

## Logging into Chorus
Log into Chorus by clicking on the Chorus SSO tile in your [Okta dashboard](https://gitlab.okta.com/app/UserHome). If you are not able to login, please post in the #chorus-users Slack channel for further assistance.

## Chorus Training & Enablement
- Please familiarize yourself with [GitLab's SAFE Framework](https://about.gitlab.com/handbook/legal/safe-framework/) before utilizing Chorus.
- All ROW team members are required to complete the [Chorus GDPR Training](https://gitlab.edcast.com/insights/chorus-ai-compliance) in order to be granted Recorder access. SalesOps will provide team members with the link to the EdCast Chorus training once their [Baseline Role-Based Entitlement](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/baseline-entitlements/) is submitted by their manager.
  - Once the team member has completed training, they will notify SalesOps to have their license updated to a Recorder license in Chorus.
  - SalesOps will verify course completion via an [EdCast report](https://edcast-536.domo.com/page/1681897168/kpis/details/58622395).

### Chorus Scheduler
To comply with GDPR and similar privacy laws, all team members with a Recorder license in Chorus are required to use a feature called Chorus Scheduler when organizing meetings with customers. Chorus Scheduler creates a Go-Link, which routes attendees to a designated landing page for location-based compliance capture so that a meeting host can obtain explicit consent from the participants to record meetings. If meeting hosts do not use Chorus Scheduler for customer meetings, Chorus will not record the meeting. For step-by-step instructions on using Chorus Scheduler, please watch [this 3-minute demo](https://drive.google.com/file/d/1toKxvu2DKqxF9Oo_8eogTZgPRUSAyIIp/view?usp=sharing) and refer to the [Call Compliance with Chorus Schedulers deck](https://drive.google.com/file/d/1U7VCxuQk1MtLTZ88XLdQt7y1_VBMYe8d/view?usp=sharing) for additional information.

- If you are required by a customer to use a different conference platform than Zoom or Google Meet, please follow the instructions on the Static Link Flow slide of the [Call Compliance with Chorus Schedulers deck](https://drive.google.com/file/d/1U7VCxuQk1MtLTZ88XLdQt7y1_VBMYe8d/view?usp=sharing).
- For situations where you are a participant in a meeting and are seeking to record, you may download the [Chorus App for Zoom](https://docs.chorus.ai/hc/en-us/articles/1260803823989-The-Chorus-App-for-Zoom-Meetings). This app allows you to add Chorus to a live call to record the meeting and take notes without leaving Zoom. In order to comply with local privacy laws, you will need to verbally obtain consent from your customer to record before doing so. If the customer does not consent to recording, you may not record the meeting.
    - For troubleshooting regarding the Chorus App for Zoom, please follow the steps below.
        1. Open Zoom SSO via [Okta](https://gitlab.okta.com/app/UserHome?iss=https%3A%2F%2Fgitlab.okta.com)
        2. Click on Settings then Zoom Apps
        3. Make sure “Zoom Apps Quick Launch Button” is turned on
        4. Open a Zoom meeting on your desktop app
        5. You should now be able to see Chorus App and utilize the tool

## Security & Privacy Controls

The data retention policy for recorded calls in Chorus is 90 days as of March 1, 2022.
- Any action that would result in bypassing the 90 day data retention policy will need to be approved by GitLab's Legal team, including, but not limited to:
    - Preserving snippets of recordings in EdCast indefinitely
    - Downloading recordings
    - Retaining playlists past the 90 day data retention period
- In order to request Legal approval to retain a playlist, or any other action that would bypass the 90 day data retention policy, the GitLab team member will need to submit an issue in the [Legal and Compliance project](https://gitlab.com/gitlab-com/legal-and-compliance/-/issues/new#) using the Chorus Approval template.
   - **When requesting approval, please note the following:**
       - A request to retain a recording must be received by Legal *no later than 15-days prior to the end of the 90-day retention window*. For example, the request to retain a recording created on May 1st that will automatically be deleted 90-days later on July 30th must be received by Legal no later than July 15th. Please note that any request submitted within 14-days of the end of the retention window may not be reviewed in time or approved.
       - Snippets saved to any playlists will be preserved
       - Snippets saved on the call itself will be deleted according to the retention policy
- Any time a Chorus link is shared, a password should be required or the link should be set to expire. Each user must complete this action individually.
- As a best practice, if you need to include a Chorus recording or any type of customer information in an issue, please first mark the issue as `Confidential`.
  - For additional details, please see [this issue](https://gitlab.com/gitlab-com/gl-security/security-operations/sirt/operations/-/issues/1560#note_702890753).
- [Chorus Compliance Resources](https://docs.chorus.ai/hc/en-us/sections/360001251353-Compliance)

## What is a Chorus Tracker and How do I Create One?

Trackers can be keywords or phrases that you are interested in highlighting across sales conversations. These can be used to track competitor mentions or client feedback, for example.

Managers can submit an issue in the [Sales Operations project](https://gitlab.com/gitlab-com/sales-team/field-operations/sales-operations/-/issues/new?issue%5Bmilestone_id%5D=#) using the Chorus Tracker Request template to have a Chorus Tracker created. Individual contributors who would like a Chorus Tracker created can sync with their manager and have them submit the request.

## Swim Lanes
### Recorder Access
- US SALs and AEs
- US TAMs and SAs
- US SDRs and BDRs
- ROW SALs, AEs, TAMs, and SAs upon completion of [Chorus GDPR Training](https://gitlab.edcast.com/insights/card-c6492843-12f5-4353-9aab-fa82cf58d9cd)
- ROW SDRs and BDRs upon completion of [Chorus GDPR Training](https://gitlab.edcast.com/insights/card-c6492843-12f5-4353-9aab-fa82cf58d9cd)

### Listener Access
- All Public Sector team members
- All GitLab team members in non-customer facing roles including, but not limited to, those in Operations roles and all Managers regardless of their org
- GitLab team members may request Listener access through an [Access Request](https://about.gitlab.com/handbook/business-technology/team-member-enablement/onboarding-access-requests/access-requests/#how-do-i-choose-which-template-to-use) which may be granted on a case by case basis

## Why is My Meeting "Livestreamed"?

![live-on-zoom](https://about.gitlab.com/handbook/sales/field-operations/sales-operations/go-to-market/chorus/live-on-zoom.png)

- The banner "Live on Zoom with Chorus.ai" is controlled and set by Zoom, therefore neither Chorus nor GitLab can make changes to the text.
    - This banner means that your meeting is being actively recorded by Chorus.ai and will be stored within the Chorus.ai platform for a period of 90 days, in accordance with GitLab's data retention policy for Chorus.ai.
    - To stop recording your meeting at any point, click on the dropdown next to "Live on Zoom with Chorus.ai" and choose "Stop Live Stream". Then click on the square stop symbol to completely stop recording.

## Recording with Breakout Rooms

- Chorus will not capture the breakout rooms, only the main Zoom meeting will be captured.
- Please note: By default Chorus has rules around silence on a call. If participants are put into breakout rooms for longer than 5 minutes in the middle of the call, Chorus will drop out of the call due to silence thinking the meeting is over.

## Chorus.ai Basics

- Update Email Communication Preferences in your [Chorus Personal Settings](https://chorus.ai/settings/personal-settings)
- [Getting Started with Chorus](https://docs.chorus.ai/hc/en-us/sections/115002365608-Getting-Started-with-Chorus)
- [Chorus Basics for SDRs and Reps](https://docs.chorus.ai/hc/en-us/sections/360003251593-Chorus-Basics-for-SDRs-BDRs-and-Reps)
- [Chorus Basics for Managers & Sales Enablement](https://docs.chorus.ai/hc/en-us/sections/115002370787-Chorus-Basics-for-Managers-Sales-Enablement)
- [What’s the maximum length of a Chorus recorded meeting?](https://docs.chorus.ai/hc/en-us/articles/360045702734-What-s-the-maximum-length-of-a-Chorus-recorded-meeting-)

## Chorus.ai Resources

- [How to Remove Chorus From a Meeting](https://www.loom.com/share/a6513ac235ae4eb9acaaeb167d7583ce)
- [Livestream & Recording Notifications](https://drive.google.com/file/d/135LWz_6u6vgJPVriIoEa3qOYOa4YkM_b/view)
  - How to explain why Chorus is there and why it is recording
- [Security & Compliance](https://www.chorus.ai/trust)
  - Share this with customers as needed
- [Chorus FAQs](https://docs.chorus.ai/hc/en-us/sections/115002365588-FAQs)
- [Chorus YouTube Channel](https://www.youtube.com/c/Chorus_ai/videos)

## Chorus.ai Advanced Usage

- [Chorus Release Notes](https://view.highspot.com/viewer/61faa9016e6856ecc10ce41d)
- [Chorus Integrations](https://docs.chorus.ai/hc/en-us/sections/115002215568-Integrations)

For additional assistance regarding Chorus, please reach out in the #chorus-users Slack channel.
